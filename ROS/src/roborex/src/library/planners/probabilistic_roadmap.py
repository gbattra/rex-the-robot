# Greg Attra
# 04/05/2021


import numpy as np
import copy

from collections import defaultdict
from scipy import spatial
from library.engines.forward_kinematics_engine import ForwardKinematicsEngine
from library.engines.inverse_kinematics_engine import InverseKinematicsEngine
from roborex.srv import ForwardKinematics, ForwardKinematicsRequest, ForwardKinematicsResponse
from roborex.msg import ArmPose


class PrmNode():
    
    def __init__(self, id, joint_config, wrist_pos, eff_pos):
        self.id = id
        self.joint_config = joint_config
        self.wrist_pos = wrist_pos
        self.eff_pos = eff_pos


class ProbabilisticRoadmap():

    def __init__(self):
        self.built = False
        self.sample_tree = None
        self.eff_pose_tree = None
        self.edges = []
        self.graph = {}
        self.fk_engine = ForwardKinematicsEngine()
        self.ik_engine = InverseKinematicsEngine()

    
    def plan(self, arm_pose, target):
        traj = [copy.deepcopy(arm_pose)]
        start = self.sample_tree.query([
            arm_pose.base_joint.angle,
            arm_pose.shoulder_joint.angle,
            arm_pose.elbow_joint.angle,
            arm_pose.wrist_joint.angle
            # arm_pose.eff_joint.angle
        ])[1]

        goal = self.eff_pose_tree.query(target)[1]

        if start == goal:
            return traj

        explored = []
        queue = [[start]]
        shortest_path = []
        while queue:
            path = queue.pop(0)
            node = path[-1]

            if node not in explored:
                explored.append(node)

                neighbors = self.graph[node]
                for neighbor in neighbors:
                    new_path = list(path)
                    new_path.append(neighbor)
                    queue.append(new_path)

                    if neighbor == goal:
                        shortest_path = new_path
                        break

        for joints_index in shortest_path:
            traj.append(self.joints_to_arm_pose(joints_index, arm_pose))

        return traj


    def joints_to_arm_pose(self, joints_index, arm_pose):
        joints = self.sample_tree.data[joints_index]
        pose = copy.deepcopy(arm_pose)
        pose.base_joint.angle = joints[0]
        pose.shoulder_joint.angle = joints[1]
        pose.elbow_joint.angle = joints[2]
        return pose

    # credit: https://www.geeksforgeeks.org/building-an-undirected-graph-and-finding-shortest-path-using-dictionaries-in-python/
    def build_graph(self, n_samples, n_neighbors, arm_pose):
        lower_limits, upper_limits = self.get_joint_limits(arm_pose)
        self.sample_tree = self.generate_samples(lower_limits, upper_limits, n_samples)
        self.eff_pose_tree = self.compute_pose_trees(self.sample_tree, arm_pose)
        self.edges = self.build_edges(n_neighbors)
        self.graph = self.connect_graph(self.edges)
        self.built = True


    def connect_graph(self, edges):
        graph = defaultdict(list)
        for edge in edges:
            a, b = edge[0], edge[1]
            graph[a].append(b)
            graph[b].append(a)

        return graph


    def build_edges(self, n_neighbors):
        edges = []
        for s, sample in enumerate(self.sample_tree.data):
            neighbors = self.sample_tree.query([sample], n_neighbors + 1)
            for n in neighbors[1][0][1:]:
                edge = [s, n]
                edges.append(edge)

        return edges

    
    def compute_pose_trees(self, samples, arm_pose):
        eff_poses = []
        for i, sample in enumerate(samples.data):
            eff_pose = self.get_eff_pos(sample, arm_pose)
            eff_poses.append(np.array([
                eff_pose.position.x,
                eff_pose.position.y,
                eff_pose.position.z]))

        eff_pose_tree = spatial.KDTree(eff_poses)

        return eff_pose_tree


    def get_wrist_pos(self, joints, arm_pose):
        pose = copy.deepcopy(arm_pose)
        pose.base_joint.angle = joints[0]
        pose.shoulder_joint.angle = joints[1]
        pose.elbow_joint.angle = joints[2]
        pose.wrist_joint.angle = joints[3]
        
        req = ForwardKinematicsRequest()
        req.joints = [
            pose.base_joint,
            pose.shoulder_joint,
            pose.elbow_joint,
            pose.wrist_joint,
            pose.eff_joint
        ]
        
        return self.fk_engine.get_pose(req)

    
    def get_eff_pos(self, joints, arm_pose):
        pose = copy.deepcopy(arm_pose)
        pose.base_joint.angle = joints[0]
        pose.shoulder_joint.angle = joints[1]
        pose.elbow_joint.angle = joints[2]
        pose.wrist_joint.angle = joints[3]
        
        req = ForwardKinematicsRequest()
        req.joints = [
            pose.base_joint,
            pose.shoulder_joint,
            pose.elbow_joint,
            pose.wrist_joint,
            pose.eff_joint,
            pose.gripper_offset_joint
        ]

        return self.fk_engine.get_pose(req)


    def get_joint_limits(self, arm_pose):
        lower_limits = np.array([
            arm_pose.base_joint.lower_bound,
            arm_pose.shoulder_joint.lower_bound,
            arm_pose.elbow_joint.lower_bound,
            arm_pose.wrist_joint.lower_bound,
            # arm_pose.eff_joint.lower_bound
        ])
        upper_limits = np.array([
            arm_pose.base_joint.upper_bound,
            arm_pose.shoulder_joint.upper_bound,
            arm_pose.elbow_joint.upper_bound,
            arm_pose.wrist_joint.upper_bound,
            # arm_pose.eff_joint.upper_bound
        ])

        return lower_limits, upper_limits


    def generate_samples(self, lower_limits, upper_limits, n_samples):
        samples = np.random.uniform(
            lower_limits,
            upper_limits,
            (n_samples, len(lower_limits)))

        return spatial.KDTree(samples)


