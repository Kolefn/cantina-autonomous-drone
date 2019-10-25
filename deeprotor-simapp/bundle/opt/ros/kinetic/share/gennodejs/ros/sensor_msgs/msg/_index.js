
"use strict";

let CameraInfo = require('./CameraInfo.js');
let ChannelFloat32 = require('./ChannelFloat32.js');
let MagneticField = require('./MagneticField.js');
let JoyFeedback = require('./JoyFeedback.js');
let LaserEcho = require('./LaserEcho.js');
let RegionOfInterest = require('./RegionOfInterest.js');
let MultiEchoLaserScan = require('./MultiEchoLaserScan.js');
let LaserScan = require('./LaserScan.js');
let PointCloud = require('./PointCloud.js');
let Joy = require('./Joy.js');
let RelativeHumidity = require('./RelativeHumidity.js');
let JoyFeedbackArray = require('./JoyFeedbackArray.js');
let Illuminance = require('./Illuminance.js');
let Temperature = require('./Temperature.js');
let MultiDOFJointState = require('./MultiDOFJointState.js');
let JointState = require('./JointState.js');
let PointField = require('./PointField.js');
let NavSatFix = require('./NavSatFix.js');
let CompressedImage = require('./CompressedImage.js');
let BatteryState = require('./BatteryState.js');
let Range = require('./Range.js');
let NavSatStatus = require('./NavSatStatus.js');
let TimeReference = require('./TimeReference.js');
let PointCloud2 = require('./PointCloud2.js');
let Imu = require('./Imu.js');
let Image = require('./Image.js');
let FluidPressure = require('./FluidPressure.js');

module.exports = {
  CameraInfo: CameraInfo,
  ChannelFloat32: ChannelFloat32,
  MagneticField: MagneticField,
  JoyFeedback: JoyFeedback,
  LaserEcho: LaserEcho,
  RegionOfInterest: RegionOfInterest,
  MultiEchoLaserScan: MultiEchoLaserScan,
  LaserScan: LaserScan,
  PointCloud: PointCloud,
  Joy: Joy,
  RelativeHumidity: RelativeHumidity,
  JoyFeedbackArray: JoyFeedbackArray,
  Illuminance: Illuminance,
  Temperature: Temperature,
  MultiDOFJointState: MultiDOFJointState,
  JointState: JointState,
  PointField: PointField,
  NavSatFix: NavSatFix,
  CompressedImage: CompressedImage,
  BatteryState: BatteryState,
  Range: Range,
  NavSatStatus: NavSatStatus,
  TimeReference: TimeReference,
  PointCloud2: PointCloud2,
  Imu: Imu,
  Image: Image,
  FluidPressure: FluidPressure,
};
