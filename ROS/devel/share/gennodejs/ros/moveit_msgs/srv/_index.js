
"use strict";

let GetRobotStateFromWarehouse = require('./GetRobotStateFromWarehouse.js')
let ChangeControlDimensions = require('./ChangeControlDimensions.js')
let SaveMap = require('./SaveMap.js')
let DeleteRobotStateFromWarehouse = require('./DeleteRobotStateFromWarehouse.js')
let GetPositionFK = require('./GetPositionFK.js')
let GetPlanningScene = require('./GetPlanningScene.js')
let ApplyPlanningScene = require('./ApplyPlanningScene.js')
let ListRobotStatesInWarehouse = require('./ListRobotStatesInWarehouse.js')
let ExecuteKnownTrajectory = require('./ExecuteKnownTrajectory.js')
let ChangeDriftDimensions = require('./ChangeDriftDimensions.js')
let QueryPlannerInterfaces = require('./QueryPlannerInterfaces.js')
let GetMotionPlan = require('./GetMotionPlan.js')
let GetMotionSequence = require('./GetMotionSequence.js')
let LoadMap = require('./LoadMap.js')
let GetCartesianPath = require('./GetCartesianPath.js')
let UpdatePointcloudOctomap = require('./UpdatePointcloudOctomap.js')
let GetPositionIK = require('./GetPositionIK.js')
let RenameRobotStateInWarehouse = require('./RenameRobotStateInWarehouse.js')
let GetPlannerParams = require('./GetPlannerParams.js')
let GraspPlanning = require('./GraspPlanning.js')
let SetPlannerParams = require('./SetPlannerParams.js')
let CheckIfRobotStateExistsInWarehouse = require('./CheckIfRobotStateExistsInWarehouse.js')
let SaveRobotStateToWarehouse = require('./SaveRobotStateToWarehouse.js')
let GetStateValidity = require('./GetStateValidity.js')

module.exports = {
  GetRobotStateFromWarehouse: GetRobotStateFromWarehouse,
  ChangeControlDimensions: ChangeControlDimensions,
  SaveMap: SaveMap,
  DeleteRobotStateFromWarehouse: DeleteRobotStateFromWarehouse,
  GetPositionFK: GetPositionFK,
  GetPlanningScene: GetPlanningScene,
  ApplyPlanningScene: ApplyPlanningScene,
  ListRobotStatesInWarehouse: ListRobotStatesInWarehouse,
  ExecuteKnownTrajectory: ExecuteKnownTrajectory,
  ChangeDriftDimensions: ChangeDriftDimensions,
  QueryPlannerInterfaces: QueryPlannerInterfaces,
  GetMotionPlan: GetMotionPlan,
  GetMotionSequence: GetMotionSequence,
  LoadMap: LoadMap,
  GetCartesianPath: GetCartesianPath,
  UpdatePointcloudOctomap: UpdatePointcloudOctomap,
  GetPositionIK: GetPositionIK,
  RenameRobotStateInWarehouse: RenameRobotStateInWarehouse,
  GetPlannerParams: GetPlannerParams,
  GraspPlanning: GraspPlanning,
  SetPlannerParams: SetPlannerParams,
  CheckIfRobotStateExistsInWarehouse: CheckIfRobotStateExistsInWarehouse,
  SaveRobotStateToWarehouse: SaveRobotStateToWarehouse,
  GetStateValidity: GetStateValidity,
};
