
"use strict";

let FileWrite = require('./FileWrite.js')
let CommandTOL = require('./CommandTOL.js')
let FileOpen = require('./FileOpen.js')
let StreamRate = require('./StreamRate.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let WaypointPush = require('./WaypointPush.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let CommandLong = require('./CommandLong.js')
let CommandInt = require('./CommandInt.js')
let CommandHome = require('./CommandHome.js')
let ParamPush = require('./ParamPush.js')
let LogRequestData = require('./LogRequestData.js')
let FileRename = require('./FileRename.js')
let FileList = require('./FileList.js')
let WaypointPull = require('./WaypointPull.js')
let FileMakeDir = require('./FileMakeDir.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let SetMode = require('./SetMode.js')
let LogRequestList = require('./LogRequestList.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let FileRemove = require('./FileRemove.js')
let FileClose = require('./FileClose.js')
let ParamPull = require('./ParamPull.js')
let ParamSet = require('./ParamSet.js')
let WaypointClear = require('./WaypointClear.js')
let FileTruncate = require('./FileTruncate.js')
let FileRead = require('./FileRead.js')
let ParamGet = require('./ParamGet.js')
let CommandBool = require('./CommandBool.js')
let SetMavFrame = require('./SetMavFrame.js')
let FileChecksum = require('./FileChecksum.js')

module.exports = {
  FileWrite: FileWrite,
  CommandTOL: CommandTOL,
  FileOpen: FileOpen,
  StreamRate: StreamRate,
  LogRequestEnd: LogRequestEnd,
  WaypointPush: WaypointPush,
  WaypointSetCurrent: WaypointSetCurrent,
  CommandLong: CommandLong,
  CommandInt: CommandInt,
  CommandHome: CommandHome,
  ParamPush: ParamPush,
  LogRequestData: LogRequestData,
  FileRename: FileRename,
  FileList: FileList,
  WaypointPull: WaypointPull,
  FileMakeDir: FileMakeDir,
  FileRemoveDir: FileRemoveDir,
  SetMode: SetMode,
  LogRequestList: LogRequestList,
  CommandTriggerControl: CommandTriggerControl,
  FileRemove: FileRemove,
  FileClose: FileClose,
  ParamPull: ParamPull,
  ParamSet: ParamSet,
  WaypointClear: WaypointClear,
  FileTruncate: FileTruncate,
  FileRead: FileRead,
  ParamGet: ParamGet,
  CommandBool: CommandBool,
  SetMavFrame: SetMavFrame,
  FileChecksum: FileChecksum,
};
