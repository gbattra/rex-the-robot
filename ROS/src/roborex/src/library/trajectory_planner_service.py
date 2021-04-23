# Greg Attra
# 03/29/2021

import rospy

from library.probabilistic_roadmap import ProbabilisticRoadmap
from library.grasp_trajectory_planner import GraspTrajectoryPlanner
from library.release_trajectory_planner import ReleaseTrajectoryPlanner
from roborex.srv import TrajectoryPlanner, TrajectoryPlannerRequest, TrajectoryPlannerResponse


class TrajectoryPlannerService():

    def __init__(self):
        self.grasp_planner = GraspTrajectoryPlanner()
        self.release_planner = ReleaseTrajectoryPlanner()
        self.serivice = rospy.Service("trajectory_planner", TrajectoryPlanner, self.callback)

    
    def callback(self, req):
        trajectories = []
        if (req.grasp_trajectory):
            trajectories = self.grasp_planner.plan_trajectory(req.arm_pose, req.target)
        if (req.release_trajectory):
            trajectories = self.release_planner.plan_trajectory(req.arm_pose, req.target)

        res = TrajectoryPlannerResponse()
        res.trajectories = trajectories
        return res
