# Greg Attra
# 03/29/2021

import rospy

from library.probabilistic_roadmap import ProbabilisticRoadmap
from library.grasp_trajectory_planner import GraspTrajectoryPlanner
from roborex.srv import TrajectoryPlanner, TrajectoryPlannerRequest, TrajectoryPlannerResponse


class TrajectoryPlannerService():

    def __init__(self):
        self.prm = ProbabilisticRoadmap()
        self.grasp_planner = GraspTrajectoryPlanner()
        self.serivice = rospy.Service("trajectory_planner", TrajectoryPlanner, self.callback)

    
    def callback(self, req):
        if not self.prm.built:
            self.prm.build_graph(2000, 5, req.arm_pose)
        
        # trajectories = self.prm.plan(req.arm_pose, req.target)
        trajectories = self.grasp_planner.plan_trajectory(req.arm_pose, req.target, req.eff_offset, req.gripper_offset)
        res = TrajectoryPlannerResponse()
        res.trajectories = trajectories
        return res
