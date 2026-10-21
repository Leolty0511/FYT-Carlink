.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final TRANSACTION_activityDestroyed:I = 0x35

.field static final TRANSACTION_activityIdle:I = 0xc

.field static final TRANSACTION_activityPaused:I = 0xd

.field static final TRANSACTION_activityRelaunched:I = 0xfa

.field static final TRANSACTION_activityResumed:I = 0x1f

.field static final TRANSACTION_activitySlept:I = 0x75

.field static final TRANSACTION_activityStopped:I = 0xe

.field static final TRANSACTION_addAppTask:I = 0xc7

.field static final TRANSACTION_addInstrumentationResults:I = 0x23

.field static final TRANSACTION_addPackageDependency:I = 0x59

.field static final TRANSACTION_appNotRespondingViaProvider:I = 0xb0

.field static final TRANSACTION_attachApplication:I = 0xb

.field static final TRANSACTION_backgroundWhitelistUid:I = 0x122

.field static final TRANSACTION_backupAgentCreated:I = 0x55

.field static final TRANSACTION_bindBackupAgent:I = 0x54

.field static final TRANSACTION_bindService:I = 0x1c

.field static final TRANSACTION_bootAnimationComplete:I = 0xcb

.field static final TRANSACTION_broadcastIntent:I = 0x8

.field static final TRANSACTION_cancelIntentSender:I = 0x37

.field static final TRANSACTION_cancelTaskThumbnailTransition:I = 0x11b

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x11a

.field static final TRANSACTION_checkGrantUriPermission:I = 0x71

.field static final TRANSACTION_checkPermission:I = 0x2c

.field static final TRANSACTION_checkPermissionWithToken:I = 0xcf

.field static final TRANSACTION_checkUriPermission:I = 0x2d

.field static final TRANSACTION_clearApplicationUserData:I = 0x47

.field static final TRANSACTION_clearGrantedUriPermissions:I = 0xff

.field static final TRANSACTION_clearPendingBackup:I = 0x9a

.field static final TRANSACTION_closeSystemDialogs:I = 0x5b

.field static final TRANSACTION_convertFromTranslucent:I = 0xa7

.field static final TRANSACTION_convertToTranslucent:I = 0xa8

.field static final TRANSACTION_crashApplication:I = 0x6c

.field static final TRANSACTION_createStackOnDisplay:I = 0xd2

.field static final TRANSACTION_dismissKeyguard:I = 0x118

.field static final TRANSACTION_dumpHeap:I = 0x72

.field static final TRANSACTION_dumpHeapFinished:I = 0xd9

.field static final TRANSACTION_enterPictureInPictureMode:I = 0xf7

.field static final TRANSACTION_enterSafeMode:I = 0x3b

.field static final TRANSACTION_exitFreeformMode:I = 0xec

.field static final TRANSACTION_finishActivity:I = 0x5

.field static final TRANSACTION_finishActivityAffinity:I = 0x8e

.field static final TRANSACTION_finishHeavyWeightApp:I = 0x67

.field static final TRANSACTION_finishInstrumentation:I = 0x24

.field static final TRANSACTION_finishReceiver:I = 0xa

.field static final TRANSACTION_finishSubActivity:I = 0x18

.field static final TRANSACTION_finishVoiceTask:I = 0xc1

.field static final TRANSACTION_forceStopPackage:I = 0x48

.field static final TRANSACTION_getActivityClassForToken:I = 0x28

.field static final TRANSACTION_getActivityDisplayId:I = 0xb2

.field static final TRANSACTION_getActivityOptions:I = 0xbd

.field static final TRANSACTION_getActivityStackId:I = 0xeb

.field static final TRANSACTION_getAllStackInfos:I = 0xa4

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0xc8

.field static final TRANSACTION_getAppTasks:I = 0xbe

.field static final TRANSACTION_getAssistContextExtras:I = 0x9c

.field static final TRANSACTION_getCallingActivity:I = 0x10

.field static final TRANSACTION_getCallingPackage:I = 0xf

.field static final TRANSACTION_getConfiguration:I = 0x25

.field static final TRANSACTION_getContentProvider:I = 0x15

.field static final TRANSACTION_getContentProviderExternal:I = 0x86

.field static final TRANSACTION_getCurrentUser:I = 0x8a

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x4e

.field static final TRANSACTION_getFocusedStackId:I = 0xd3

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x76

.field static final TRANSACTION_getGrantedUriPermissions:I = 0xfe

.field static final TRANSACTION_getIntentForIntentSender:I = 0x9b

.field static final TRANSACTION_getIntentSender:I = 0x36

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x121

.field static final TRANSACTION_getLaunchedFromPackage:I = 0x9e

.field static final TRANSACTION_getLaunchedFromUid:I = 0x8f

.field static final TRANSACTION_getLockTaskModeState:I = 0xd7

.field static final TRANSACTION_getMaxNumPictureInPictureActions:I = 0xf9

.field static final TRANSACTION_getMemoryInfo:I = 0x45

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x108

.field static final TRANSACTION_getMyMemoryState:I = 0x88

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x7a

.field static final TRANSACTION_getPackageForIntentSender:I = 0x38

.field static final TRANSACTION_getPackageForToken:I = 0x29

.field static final TRANSACTION_getPackageProcessState:I = 0xde

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x78

.field static final TRANSACTION_getPersistedUriPermissions:I = 0xaf

.field static final TRANSACTION_getProcessLimit:I = 0x2b

.field static final TRANSACTION_getProcessMemoryInfo:I = 0x5c

.field static final TRANSACTION_getProcessPss:I = 0x83

.field static final TRANSACTION_getProcessesInErrorState:I = 0x46

.field static final TRANSACTION_getProviderMimeType:I = 0x6d

.field static final TRANSACTION_getRecentTasks:I = 0x33

.field static final TRANSACTION_getRequestedOrientation:I = 0x40

.field static final TRANSACTION_getRunningAppProcesses:I = 0x4d

.field static final TRANSACTION_getRunningExternalApplications:I = 0x66

.field static final TRANSACTION_getRunningServiceControlPanel:I = 0x19

.field static final TRANSACTION_getRunningUserIds:I = 0x96

.field static final TRANSACTION_getServices:I = 0x4a

.field static final TRANSACTION_getStackInfo:I = 0xa6

.field static final TRANSACTION_getTagForIntentSender:I = 0xb4

.field static final TRANSACTION_getTaskBounds:I = 0xb1

.field static final TRANSACTION_getTaskDescription:I = 0x4c

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0xcc

.field static final TRANSACTION_getTaskForActivity:I = 0x14

.field static final TRANSACTION_getTaskSnapshot:I = 0x11c

.field static final TRANSACTION_getTaskThumbnail:I = 0x4b

.field static final TRANSACTION_getTasks:I = 0x11

.field static final TRANSACTION_getUidForIntentSender:I = 0x57

.field static final TRANSACTION_getUidProcessState:I = 0xe2

.field static final TRANSACTION_getUriPermissionOwnerForActivity:I = 0xfb

.field static final TRANSACTION_grantUriPermission:I = 0x2e

.field static final TRANSACTION_grantUriPermissionFromOwner:I = 0x6f

.field static final TRANSACTION_handleApplicationCrash:I = 0x2

.field static final TRANSACTION_handleApplicationStrictModeViolation:I = 0x68

.field static final TRANSACTION_handleApplicationWtf:I = 0x60

.field static final TRANSACTION_handleIncomingUser:I = 0x58

.field static final TRANSACTION_hang:I = 0xa1

.field static final TRANSACTION_inputDispatchingTimedOut:I = 0x99

.field static final TRANSACTION_isAppForeground:I = 0x100

.field static final TRANSACTION_isAppStartModeDisabled:I = 0xf2

.field static final TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0xe5

.field static final TRANSACTION_isImmersive:I = 0x69

.field static final TRANSACTION_isInLockTaskMode:I = 0xb9

.field static final TRANSACTION_isInMultiWindowMode:I = 0xf4

.field static final TRANSACTION_isInPictureInPictureMode:I = 0xf5

.field static final TRANSACTION_isIntentSenderAnActivity:I = 0x91

.field static final TRANSACTION_isIntentSenderTargetedToPackage:I = 0x81

.field static final TRANSACTION_isRootVoiceInteraction:I = 0xe7

.field static final TRANSACTION_isTopActivityImmersive:I = 0x6b

.field static final TRANSACTION_isTopOfTask:I = 0xc2

.field static final TRANSACTION_isUserAMonkey:I = 0x62

.field static final TRANSACTION_isUserRunning:I = 0x74

.field static final TRANSACTION_isVrModePackageEnabled:I = 0x10a

.field static final TRANSACTION_keyguardGoingAway:I = 0xe1

.field static final TRANSACTION_killAllBackgroundProcesses:I = 0x85

.field static final TRANSACTION_killApplication:I = 0x5a

.field static final TRANSACTION_killApplicationProcess:I = 0x5d

.field static final TRANSACTION_killBackgroundProcesses:I = 0x61

.field static final TRANSACTION_killPackageDependents:I = 0xf6

.field static final TRANSACTION_killPids:I = 0x49

.field static final TRANSACTION_killProcessesBelowForeground:I = 0x89

.field static final TRANSACTION_killStopFrontApp:I = 0x129

.field static final TRANSACTION_killUid:I = 0x9f

.field static final TRANSACTION_launchAssistIntent:I = 0xcd

.field static final TRANSACTION_makePackageIdle:I = 0x107

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x44

.field static final TRANSACTION_moveStackToDisplay:I = 0x116

.field static final TRANSACTION_moveTaskBackwards:I = 0x13

.field static final TRANSACTION_moveTaskToDockedStack:I = 0xee

.field static final TRANSACTION_moveTaskToFront:I = 0x12

.field static final TRANSACTION_moveTaskToStack:I = 0xa2

.field static final TRANSACTION_moveTasksToFullscreenStack:I = 0xf0

.field static final TRANSACTION_moveTopActivityToPinnedStack:I = 0xf1

.field static final TRANSACTION_navigateUpTo:I = 0x8c

.field static final TRANSACTION_newUriPermissionOwner:I = 0x6e

.field static final TRANSACTION_noteAlarmFinish:I = 0xdd

.field static final TRANSACTION_noteAlarmStart:I = 0xdc

.field static final TRANSACTION_noteWakeupAlarm:I = 0x3d

.field static final TRANSACTION_notifyActivityDrawn:I = 0xa9

.field static final TRANSACTION_notifyCleartextNetwork:I = 0xd1

.field static final TRANSACTION_notifyEnterAnimationComplete:I = 0xc5

.field static final TRANSACTION_notifyLaunchTaskBehindComplete:I = 0xc3

.field static final TRANSACTION_notifyLockedProfile:I = 0x10c

.field static final TRANSACTION_notifyPinnedStackAnimationEnded:I = 0x105

.field static final TRANSACTION_notifyPinnedStackAnimationStarted:I = 0x104

.field static final TRANSACTION_openContentUri:I = 0x1

.field static final TRANSACTION_overridePendingTransition:I = 0x5f

.field static final TRANSACTION_peekService:I = 0x4f

.field static final TRANSACTION_performIdleMaintenance:I = 0xac

.field static final TRANSACTION_positionTaskInStack:I = 0xea

.field static final TRANSACTION_profileControl:I = 0x50

.field static final TRANSACTION_publishContentProviders:I = 0x16

.field static final TRANSACTION_publishService:I = 0x1e

.field static final TRANSACTION_refContentProvider:I = 0x17

.field static final TRANSACTION_registerIntentSenderCancelListener:I = 0x39

.field static final TRANSACTION_registerProcessObserver:I = 0x7f

.field static final TRANSACTION_registerReceiver:I = 0x6

.field static final TRANSACTION_registerTaskStackListener:I = 0xd0

.field static final TRANSACTION_registerUidObserver:I = 0xe3

.field static final TRANSACTION_registerUserSwitchObserver:I = 0x94

.field static final TRANSACTION_releaseActivityInstance:I = 0xc9

.field static final TRANSACTION_releasePersistableUriPermission:I = 0xae

.field static final TRANSACTION_releaseSomeActivities:I = 0xca

.field static final TRANSACTION_removeContentProvider:I = 0x3e

.field static final TRANSACTION_removeContentProviderExternal:I = 0x87

.field static final TRANSACTION_removeStack:I = 0x106

.field static final TRANSACTION_removeTask:I = 0x7e

.field static final TRANSACTION_reportActivityFullyDrawn:I = 0xaa

.field static final TRANSACTION_reportAssistContextExtras:I = 0x9d

.field static final TRANSACTION_reportSizeConfigurations:I = 0xed

.field static final TRANSACTION_requestActivityRelaunch:I = 0x113

.field static final TRANSACTION_requestAssistContextExtras:I = 0xd5

.field static final TRANSACTION_requestAutofillData:I = 0x117

.field static final TRANSACTION_requestBugReport:I = 0x97

.field static final TRANSACTION_requestTelephonyBugReport:I = 0x98

.field static final TRANSACTION_resizeDockedStack:I = 0xfc

.field static final TRANSACTION_resizePinnedStack:I = 0x109

.field static final TRANSACTION_resizeStack:I = 0xa3

.field static final TRANSACTION_resizeTask:I = 0xd6

.field static final TRANSACTION_restart:I = 0xab

.field static final TRANSACTION_restartUserInBackground:I = 0x119

.field static final TRANSACTION_resumeAppSwitches:I = 0x53

.field static final TRANSACTION_revokeUriPermission:I = 0x2f

.field static final TRANSACTION_revokeUriPermissionFromOwner:I = 0x70

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x11d

.field static final TRANSACTION_sendIdleJobTrigger:I = 0x10e

.field static final TRANSACTION_sendIntentSender:I = 0x10f

.field static final TRANSACTION_serviceDoneExecuting:I = 0x34

.field static final TRANSACTION_setActivityController:I = 0x30

.field static final TRANSACTION_setAlwaysFinish:I = 0x21

.field static final TRANSACTION_setDebugApp:I = 0x20

.field static final TRANSACTION_setDisablePreviewScreenshots:I = 0x120

.field static final TRANSACTION_setDumpHeapDebugLimit:I = 0xd8

.field static final TRANSACTION_setFocusedStack:I = 0xa5

.field static final TRANSACTION_setFocusedTask:I = 0x7d

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x77

.field static final TRANSACTION_setHasTopUi:I = 0x112

.field static final TRANSACTION_setImmersive:I = 0x6a

.field static final TRANSACTION_setLockScreenShown:I = 0x8d

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x7b

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x79

.field static final TRANSACTION_setPersistentVrThread:I = 0x11e

.field static final TRANSACTION_setPictureInPictureParams:I = 0xf8

.field static final TRANSACTION_setProcessImportant:I = 0x42

.field static final TRANSACTION_setProcessLimit:I = 0x2a

.field static final TRANSACTION_setProcessMemoryTrimLevel:I = 0xb3

.field static final TRANSACTION_setProcessProtectArea:I = 0x125

.field static final TRANSACTION_setProcessProtectStatusByPid:I = 0x126

.field static final TRANSACTION_setProcessProtectStatusByProcName:I = 0x127

.field static final TRANSACTION_setRenderThread:I = 0x111

.field static final TRANSACTION_setRequestedOrientation:I = 0x3f

.field static final TRANSACTION_setServiceForeground:I = 0x43

.field static final TRANSACTION_setShowWhenLocked:I = 0x123

.field static final TRANSACTION_setTaskDescription:I = 0xba

.field static final TRANSACTION_setTaskResizeable:I = 0xd4

.field static final TRANSACTION_setTurnScreenOn:I = 0x124

.field static final TRANSACTION_setUserIsMonkey:I = 0xa0

.field static final TRANSACTION_setVoiceKeepAwake:I = 0xda

.field static final TRANSACTION_setVrMode:I = 0xfd

.field static final TRANSACTION_setVrThread:I = 0x110

.field static final TRANSACTION_shouldUpRecreateTask:I = 0x8b

.field static final TRANSACTION_showAssistFromActivity:I = 0xe6

.field static final TRANSACTION_showBootMessage:I = 0x84

.field static final TRANSACTION_showLockTaskEscapeMessage:I = 0xdf

.field static final TRANSACTION_showWaitingForDebugger:I = 0x31

.field static final TRANSACTION_shutdown:I = 0x51

.field static final TRANSACTION_signalPersistentProcesses:I = 0x32

.field static final TRANSACTION_startActivities:I = 0x73

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_startActivityAndWait:I = 0x63

.field static final TRANSACTION_startActivityAsCaller:I = 0xc6

.field static final TRANSACTION_startActivityAsUser:I = 0x92

.field static final TRANSACTION_startActivityFromRecents:I = 0xc4

.field static final TRANSACTION_startActivityIntentSender:I = 0x5e

.field static final TRANSACTION_startActivityWithConfig:I = 0x65

.field static final TRANSACTION_startAssistantActivity:I = 0xbc

.field static final TRANSACTION_startBinderTracking:I = 0xe8

.field static final TRANSACTION_startConfirmDeviceCredentialIntent:I = 0x10d

.field static final TRANSACTION_startHomePre:I = 0x128

.field static final TRANSACTION_startInPlaceAnimationOnFrontMostApplication:I = 0xce

.field static final TRANSACTION_startInstrumentation:I = 0x22

.field static final TRANSACTION_startLocalVoiceInteraction:I = 0x101

.field static final TRANSACTION_startLockTaskModeById:I = 0xb6

.field static final TRANSACTION_startLockTaskModeByToken:I = 0xb7

.field static final TRANSACTION_startNextMatchingActivity:I = 0x3c

.field static final TRANSACTION_startService:I = 0x1a

.field static final TRANSACTION_startSystemLockTaskMode:I = 0xbf

.field static final TRANSACTION_startUserInBackground:I = 0xb5

.field static final TRANSACTION_startVoiceActivity:I = 0xbb

.field static final TRANSACTION_stopAppSwitches:I = 0x52

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0xe9

.field static final TRANSACTION_stopLocalVoiceInteraction:I = 0x102

.field static final TRANSACTION_stopLockTaskMode:I = 0xb8

.field static final TRANSACTION_stopService:I = 0x1b

.field static final TRANSACTION_stopServiceToken:I = 0x27

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0xc0

.field static final TRANSACTION_stopUser:I = 0x93

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x103

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0xef

.field static final TRANSACTION_swapDockedAndFullscreenStack:I = 0x10b

.field static final TRANSACTION_switchUser:I = 0x7c

.field static final TRANSACTION_takePersistableUriPermission:I = 0xad

.field static final TRANSACTION_unbindBackupAgent:I = 0x56

.field static final TRANSACTION_unbindFinished:I = 0x41

.field static final TRANSACTION_unbindService:I = 0x1d

.field static final TRANSACTION_unbroadcastIntent:I = 0x9

.field static final TRANSACTION_unhandledBack:I = 0x4

.field static final TRANSACTION_unlockUser:I = 0xf3

.field static final TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3a

.field static final TRANSACTION_unregisterProcessObserver:I = 0x80

.field static final TRANSACTION_unregisterReceiver:I = 0x7

.field static final TRANSACTION_unregisterTaskStackListener:I = 0x115

.field static final TRANSACTION_unregisterUidObserver:I = 0xe4

.field static final TRANSACTION_unregisterUserSwitchObserver:I = 0x95

.field static final TRANSACTION_unstableProviderDied:I = 0x90

.field static final TRANSACTION_updateConfiguration:I = 0x26

.field static final TRANSACTION_updateDeviceOwner:I = 0xe0

.field static final TRANSACTION_updateDisplayOverrideConfiguration:I = 0x114

.field static final TRANSACTION_updateLockTaskPackages:I = 0xdb

.field static final TRANSACTION_updatePersistentConfiguration:I = 0x82

.field static final TRANSACTION_waitForNetworkStateUpdate:I = 0x11f

.field static final TRANSACTION_willActivityBeVisible:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.app.IActivityManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.app.IActivityManager"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/IActivityManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/app/IActivityManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/app/IActivityManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v15, p3

    .line 8
    .line 9
    const v2, 0x5f4e5446

    .line 10
    .line 11
    .line 12
    const-string v3, "android.app.IActivityManager"

    .line 13
    .line 14
    const/4 v13, 0x1

    .line 15
    if-eq v0, v2, :cond_bc

    .line 16
    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object v13, v14

    .line 23
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->killStopFrontApp(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    return v13

    .line 42
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->startHomePre()V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    .line 50
    .line 51
    return v13

    .line 52
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->setProcessProtectStatusByProcName(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    .line 68
    .line 69
    return v13

    .line 70
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->setProcessProtectStatusByPid(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    return v13

    .line 88
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->setProcessProtectArea(Ljava/lang/String;III)V

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    .line 112
    .line 113
    return v13

    .line 114
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    .line 127
    move v12, v13

    .line 128
    :cond_0
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    .line 133
    .line 134
    return v13

    .line 135
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    move v12, v13

    .line 149
    :cond_1
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    .line 154
    .line 155
    return v13

    .line 156
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->backgroundWhitelistUid(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    .line 168
    .line 169
    return v13

    .line 170
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getLastResumedActivityUserId()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    .line 182
    .line 183
    return v13

    .line 184
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_2

    .line 196
    .line 197
    move v12, v13

    .line 198
    :cond_2
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    .line 203
    .line 204
    return v13

    .line 205
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    .line 217
    .line 218
    return v13

    .line 219
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->setPersistentVrThread(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    .line 231
    .line 232
    return v13

    .line 233
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    .line 249
    .line 250
    return v13

    .line 251
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_3

    .line 263
    .line 264
    move v1, v13

    .line 265
    goto :goto_0

    .line 266
    :cond_3
    move v1, v12

    .line 267
    :goto_0
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    .line 273
    .line 274
    if-eqz v0, :cond_4

    .line 275
    .line 276
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v15, v13}, Landroid/app/ActivityManager$TaskSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_4
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    .line 285
    .line 286
    :goto_1
    return v13

    .line 287
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->cancelTaskThumbnailTransition(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    .line 299
    .line 300
    return v13

    .line 301
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->cancelTaskWindowTransition(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    .line 313
    .line 314
    return v13

    .line 315
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->restartUserInBackground(I)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    .line 331
    .line 332
    return v13

    .line 333
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    .line 353
    .line 354
    return v13

    .line 355
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_5

    .line 371
    .line 372
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 373
    .line 374
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    move-object v11, v2

    .line 379
    check-cast v11, Landroid/os/Bundle;

    .line 380
    .line 381
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    invoke-interface {v14, v0, v11, v2, v1}, Landroid/app/IActivityManager;->requestAutofillData(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    .line 398
    .line 399
    return v13

    .line 400
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->moveStackToDisplay(II)V

    .line 412
    .line 413
    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    .line 416
    .line 417
    return v13

    .line 418
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    .line 434
    .line 435
    return v13

    .line 436
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_6

    .line 444
    .line 445
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 446
    .line 447
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    move-object v11, v0

    .line 452
    check-cast v11, Landroid/content/res/Configuration;

    .line 453
    .line 454
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    invoke-interface {v14, v11, v0}, Landroid/app/IActivityManager;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    .line 467
    .line 468
    return v13

    .line 469
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->requestActivityRelaunch(Landroid/os/IBinder;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    .line 481
    .line 482
    return v13

    .line 483
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_7

    .line 491
    .line 492
    move v12, v13

    .line 493
    :cond_7
    invoke-interface {v14, v12}, Landroid/app/IActivityManager;->setHasTopUi(Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    .line 498
    .line 499
    return v13

    .line 500
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->setRenderThread(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    .line 512
    .line 513
    return v13

    .line 514
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->setVrThread(I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    .line 526
    .line 527
    return v13

    .line 528
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-eqz v0, :cond_8

    .line 552
    .line 553
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 554
    .line 555
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    check-cast v0, Landroid/content/Intent;

    .line 560
    .line 561
    move-object v5, v0

    .line 562
    goto :goto_2

    .line 563
    :cond_8
    move-object v5, v11

    .line 564
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v8

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-eqz v0, :cond_9

    .line 585
    .line 586
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 587
    .line 588
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    check-cast v0, Landroid/os/Bundle;

    .line 593
    .line 594
    move-object v11, v0

    .line 595
    :cond_9
    move-object/from16 v0, p0

    .line 596
    .line 597
    move-object v1, v2

    .line 598
    move-object v2, v3

    .line 599
    move v3, v4

    .line 600
    move-object v4, v5

    .line 601
    move-object v5, v6

    .line 602
    move-object v6, v7

    .line 603
    move-object v7, v8

    .line 604
    move-object v8, v11

    .line 605
    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    .line 614
    .line 615
    return v13

    .line 616
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    .line 620
    .line 621
    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    .line 624
    .line 625
    return v13

    .line 626
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-eqz v0, :cond_a

    .line 634
    .line 635
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 636
    .line 637
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    check-cast v0, Landroid/content/Intent;

    .line 642
    .line 643
    goto :goto_3

    .line 644
    :cond_a
    move-object v0, v11

    .line 645
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    if-eqz v2, :cond_b

    .line 650
    .line 651
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 652
    .line 653
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    move-object v11, v1

    .line 658
    check-cast v11, Landroid/os/Bundle;

    .line 659
    .line 660
    :cond_b
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    .line 665
    .line 666
    return v13

    .line 667
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->notifyLockedProfile(I)V

    .line 675
    .line 676
    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    .line 679
    .line 680
    return v13

    .line 681
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->swapDockedAndFullscreenStack()V

    .line 685
    .line 686
    .line 687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    .line 689
    .line 690
    return v13

    .line 691
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    if-eqz v0, :cond_c

    .line 699
    .line 700
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 701
    .line 702
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    move-object v11, v0

    .line 707
    check-cast v11, Landroid/content/ComponentName;

    .line 708
    .line 709
    :cond_c
    invoke-interface {v14, v11}, Landroid/app/IActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    .line 718
    .line 719
    return v13

    .line 720
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    if-eqz v0, :cond_d

    .line 728
    .line 729
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 730
    .line 731
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    check-cast v0, Landroid/graphics/Rect;

    .line 736
    .line 737
    goto :goto_4

    .line 738
    :cond_d
    move-object v0, v11

    .line 739
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    if-eqz v2, :cond_e

    .line 744
    .line 745
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 746
    .line 747
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    move-object v11, v1

    .line 752
    check-cast v11, Landroid/graphics/Rect;

    .line 753
    .line 754
    :cond_e
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    .line 759
    .line 760
    return v13

    .line 761
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    .line 765
    .line 766
    .line 767
    move-result v0

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    .line 773
    .line 774
    return v13

    .line 775
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 783
    .line 784
    .line 785
    move-result v1

    .line 786
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    .line 787
    .line 788
    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    .line 791
    .line 792
    return v13

    .line 793
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->removeStack(I)V

    .line 801
    .line 802
    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    .line 805
    .line 806
    return v13

    .line 807
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationEnded()V

    .line 811
    .line 812
    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    .line 815
    .line 816
    return v13

    .line 817
    :pswitch_25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationStarted()V

    .line 821
    .line 822
    .line 823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    .line 825
    .line 826
    return v13

    .line 827
    :pswitch_26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->supportsLocalVoiceInteraction()Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    .line 839
    .line 840
    return v13

    .line 841
    :pswitch_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 849
    .line 850
    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    .line 853
    .line 854
    return v13

    .line 855
    :pswitch_28
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 863
    .line 864
    .line 865
    move-result v2

    .line 866
    if-eqz v2, :cond_f

    .line 867
    .line 868
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 869
    .line 870
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    move-object v11, v1

    .line 875
    check-cast v11, Landroid/os/Bundle;

    .line 876
    .line 877
    :cond_f
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 878
    .line 879
    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    .line 882
    .line 883
    return v13

    .line 884
    :pswitch_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 888
    .line 889
    .line 890
    move-result v0

    .line 891
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    .line 900
    .line 901
    return v13

    .line 902
    :pswitch_2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    .line 918
    .line 919
    return v13

    .line 920
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    .line 937
    .line 938
    if-eqz v0, :cond_10

    .line 939
    .line 940
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v0, v15, v13}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 944
    .line 945
    .line 946
    goto :goto_5

    .line 947
    :cond_10
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    .line 949
    .line 950
    :goto_5
    return v13

    .line 951
    :pswitch_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 959
    .line 960
    .line 961
    move-result v2

    .line 962
    if-eqz v2, :cond_11

    .line 963
    .line 964
    move v12, v13

    .line 965
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 966
    .line 967
    .line 968
    move-result v2

    .line 969
    if-eqz v2, :cond_12

    .line 970
    .line 971
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 972
    .line 973
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    move-object v11, v1

    .line 978
    check-cast v11, Landroid/content/ComponentName;

    .line 979
    .line 980
    :cond_12
    invoke-interface {v14, v0, v12, v11}, Landroid/app/IActivityManager;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    .line 981
    .line 982
    .line 983
    move-result v0

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    .line 986
    .line 987
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    .line 989
    .line 990
    return v13

    .line 991
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    if-eqz v0, :cond_13

    .line 999
    .line 1000
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1001
    .line 1002
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    check-cast v0, Landroid/graphics/Rect;

    .line 1007
    .line 1008
    move-object v2, v0

    .line 1009
    goto :goto_6

    .line 1010
    :cond_13
    move-object v2, v11

    .line 1011
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-eqz v0, :cond_14

    .line 1016
    .line 1017
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1018
    .line 1019
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    check-cast v0, Landroid/graphics/Rect;

    .line 1024
    .line 1025
    move-object v3, v0

    .line 1026
    goto :goto_7

    .line 1027
    :cond_14
    move-object v3, v11

    .line 1028
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1029
    .line 1030
    .line 1031
    move-result v0

    .line 1032
    if-eqz v0, :cond_15

    .line 1033
    .line 1034
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1035
    .line 1036
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    check-cast v0, Landroid/graphics/Rect;

    .line 1041
    .line 1042
    move-object v4, v0

    .line 1043
    goto :goto_8

    .line 1044
    :cond_15
    move-object v4, v11

    .line 1045
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1046
    .line 1047
    .line 1048
    move-result v0

    .line 1049
    if-eqz v0, :cond_16

    .line 1050
    .line 1051
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1052
    .line 1053
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    check-cast v0, Landroid/graphics/Rect;

    .line 1058
    .line 1059
    move-object v5, v0

    .line 1060
    goto :goto_9

    .line 1061
    :cond_16
    move-object v5, v11

    .line 1062
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1063
    .line 1064
    .line 1065
    move-result v0

    .line 1066
    if-eqz v0, :cond_17

    .line 1067
    .line 1068
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1069
    .line 1070
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    check-cast v0, Landroid/graphics/Rect;

    .line 1075
    .line 1076
    move-object v11, v0

    .line 1077
    :cond_17
    move-object/from16 v0, p0

    .line 1078
    .line 1079
    move-object v1, v2

    .line 1080
    move-object v2, v3

    .line 1081
    move-object v3, v4

    .line 1082
    move-object v4, v5

    .line 1083
    move-object v5, v11

    .line 1084
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    .line 1089
    .line 1090
    return v13

    .line 1091
    :pswitch_2e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1106
    .line 1107
    .line 1108
    return v13

    .line 1109
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    .line 1121
    .line 1122
    return v13

    .line 1123
    :pswitch_30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    .line 1131
    .line 1132
    .line 1133
    move-result v0

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    .line 1139
    .line 1140
    return v13

    .line 1141
    :pswitch_31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1149
    .line 1150
    .line 1151
    move-result v2

    .line 1152
    if-eqz v2, :cond_18

    .line 1153
    .line 1154
    sget-object v2, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1155
    .line 1156
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v1

    .line 1160
    move-object v11, v1

    .line 1161
    check-cast v11, Landroid/app/PictureInPictureParams;

    .line 1162
    .line 1163
    :cond_18
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    .line 1168
    .line 1169
    return v13

    .line 1170
    :pswitch_32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1178
    .line 1179
    .line 1180
    move-result v2

    .line 1181
    if-eqz v2, :cond_19

    .line 1182
    .line 1183
    sget-object v2, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1184
    .line 1185
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1

    .line 1189
    move-object v11, v1

    .line 1190
    check-cast v11, Landroid/app/PictureInPictureParams;

    .line 1191
    .line 1192
    :cond_19
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v0

    .line 1196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    .line 1201
    .line 1202
    return v13

    .line 1203
    :pswitch_33
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v0

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1211
    .line 1212
    .line 1213
    move-result v1

    .line 1214
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    .line 1219
    .line 1220
    return v13

    .line 1221
    :pswitch_34
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    .line 1237
    .line 1238
    return v13

    .line 1239
    :pswitch_35
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    .line 1255
    .line 1256
    return v13

    .line 1257
    :pswitch_36
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1261
    .line 1262
    .line 1263
    move-result v0

    .line 1264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1265
    .line 1266
    .line 1267
    move-result-object v2

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1269
    .line 1270
    .line 1271
    move-result-object v3

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v1

    .line 1276
    invoke-static {v1}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v1

    .line 1280
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    .line 1289
    .line 1290
    return v13

    .line 1291
    :pswitch_37
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v1

    .line 1302
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    .line 1303
    .line 1304
    .line 1305
    move-result v0

    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    .line 1311
    .line 1312
    return v13

    .line 1313
    :pswitch_38
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1317
    .line 1318
    .line 1319
    move-result v0

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1321
    .line 1322
    .line 1323
    move-result v2

    .line 1324
    if-eqz v2, :cond_1a

    .line 1325
    .line 1326
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1327
    .line 1328
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    move-object v11, v1

    .line 1333
    check-cast v11, Landroid/graphics/Rect;

    .line 1334
    .line 1335
    :cond_1a
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    .line 1336
    .line 1337
    .line 1338
    move-result v0

    .line 1339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    .line 1344
    .line 1345
    return v13

    .line 1346
    :pswitch_39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1350
    .line 1351
    .line 1352
    move-result v0

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1354
    .line 1355
    .line 1356
    move-result v1

    .line 1357
    if-eqz v1, :cond_1b

    .line 1358
    .line 1359
    move v12, v13

    .line 1360
    :cond_1b
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    .line 1365
    .line 1366
    return v13

    .line 1367
    :pswitch_3a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_1c

    .line 1375
    .line 1376
    move v12, v13

    .line 1377
    :cond_1c
    invoke-interface {v14, v12}, Landroid/app/IActivityManager;->suppressResizeConfigChanges(Z)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    .line 1382
    .line 1383
    return v13

    .line 1384
    :pswitch_3b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1388
    .line 1389
    .line 1390
    move-result v2

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1392
    .line 1393
    .line 1394
    move-result v3

    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1396
    .line 1397
    .line 1398
    move-result v0

    .line 1399
    if-eqz v0, :cond_1d

    .line 1400
    .line 1401
    move v4, v13

    .line 1402
    goto :goto_a

    .line 1403
    :cond_1d
    move v4, v12

    .line 1404
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1405
    .line 1406
    .line 1407
    move-result v0

    .line 1408
    if-eqz v0, :cond_1e

    .line 1409
    .line 1410
    move v12, v13

    .line 1411
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1412
    .line 1413
    .line 1414
    move-result v0

    .line 1415
    if-eqz v0, :cond_1f

    .line 1416
    .line 1417
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1418
    .line 1419
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    check-cast v0, Landroid/graphics/Rect;

    .line 1424
    .line 1425
    move-object v5, v0

    .line 1426
    goto :goto_b

    .line 1427
    :cond_1f
    move-object v5, v11

    .line 1428
    :goto_b
    move-object/from16 v0, p0

    .line 1429
    .line 1430
    move v1, v2

    .line 1431
    move v2, v3

    .line 1432
    move v3, v4

    .line 1433
    move v4, v12

    .line 1434
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z

    .line 1435
    .line 1436
    .line 1437
    move-result v0

    .line 1438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    .line 1443
    .line 1444
    return v13

    .line 1445
    :pswitch_3c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v0

    .line 1452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1453
    .line 1454
    .line 1455
    move-result-object v2

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1461
    .line 1462
    .line 1463
    move-result-object v1

    .line 1464
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    .line 1469
    .line 1470
    return v13

    .line 1471
    :pswitch_3d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v0

    .line 1478
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    .line 1483
    .line 1484
    return v13

    .line 1485
    :pswitch_3e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v0

    .line 1492
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getActivityStackId(Landroid/os/IBinder;)I

    .line 1493
    .line 1494
    .line 1495
    move-result v0

    .line 1496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    .line 1501
    .line 1502
    return v13

    .line 1503
    :pswitch_3f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1507
    .line 1508
    .line 1509
    move-result v0

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1511
    .line 1512
    .line 1513
    move-result v2

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1515
    .line 1516
    .line 1517
    move-result v1

    .line 1518
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->positionTaskInStack(III)V

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    .line 1523
    .line 1524
    return v13

    .line 1525
    :pswitch_40
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1529
    .line 1530
    .line 1531
    move-result v0

    .line 1532
    if-eqz v0, :cond_20

    .line 1533
    .line 1534
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1535
    .line 1536
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v0

    .line 1540
    move-object v11, v0

    .line 1541
    check-cast v11, Landroid/os/ParcelFileDescriptor;

    .line 1542
    .line 1543
    :cond_20
    invoke-interface {v14, v11}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    .line 1544
    .line 1545
    .line 1546
    move-result v0

    .line 1547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    .line 1552
    .line 1553
    return v13

    .line 1554
    :pswitch_41
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    .line 1558
    .line 1559
    .line 1560
    move-result v0

    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    .line 1566
    .line 1567
    return v13

    .line 1568
    :pswitch_42
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v0

    .line 1575
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    .line 1576
    .line 1577
    .line 1578
    move-result v0

    .line 1579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    .line 1584
    .line 1585
    return v13

    .line 1586
    :pswitch_43
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1594
    .line 1595
    .line 1596
    move-result v2

    .line 1597
    if-eqz v2, :cond_21

    .line 1598
    .line 1599
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1600
    .line 1601
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v1

    .line 1605
    move-object v11, v1

    .line 1606
    check-cast v11, Landroid/os/Bundle;

    .line 1607
    .line 1608
    :cond_21
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 1609
    .line 1610
    .line 1611
    move-result v0

    .line 1612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    .line 1617
    .line 1618
    return v13

    .line 1619
    :pswitch_44
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    .line 1621
    .line 1622
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->isAssistDataAllowedOnCurrentActivity()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v0

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    .line 1631
    .line 1632
    return v13

    .line 1633
    :pswitch_45
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v0

    .line 1640
    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v0

    .line 1644
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    .line 1649
    .line 1650
    return v13

    .line 1651
    :pswitch_46
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1652
    .line 1653
    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v0

    .line 1658
    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v0

    .line 1662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1663
    .line 1664
    .line 1665
    move-result v2

    .line 1666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1667
    .line 1668
    .line 1669
    move-result v3

    .line 1670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v1

    .line 1674
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1675
    .line 1676
    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1678
    .line 1679
    .line 1680
    return v13

    .line 1681
    :pswitch_47
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1685
    .line 1686
    .line 1687
    move-result v0

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v1

    .line 1692
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    .line 1693
    .line 1694
    .line 1695
    move-result v0

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    .line 1698
    .line 1699
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    .line 1701
    .line 1702
    return v13

    .line 1703
    :pswitch_48
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    .line 1705
    .line 1706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1707
    .line 1708
    .line 1709
    move-result v0

    .line 1710
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->keyguardGoingAway(I)V

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    .line 1715
    .line 1716
    return v13

    .line 1717
    :pswitch_49
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    .line 1719
    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v0

    .line 1724
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->updateDeviceOwner(Ljava/lang/String;)V

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    .line 1729
    .line 1730
    return v13

    .line 1731
    :pswitch_4a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 1739
    .line 1740
    .line 1741
    return v13

    .line 1742
    :pswitch_4b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v0

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v1

    .line 1753
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    .line 1755
    .line 1756
    move-result v0

    .line 1757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    .line 1762
    .line 1763
    return v13

    .line 1764
    :pswitch_4c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v0

    .line 1771
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v0

    .line 1775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1776
    .line 1777
    .line 1778
    move-result v2

    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v1

    .line 1783
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1784
    .line 1785
    .line 1786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1787
    .line 1788
    .line 1789
    return v13

    .line 1790
    :pswitch_4d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v0

    .line 1797
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v0

    .line 1801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1802
    .line 1803
    .line 1804
    move-result v2

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v1

    .line 1809
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    .line 1814
    .line 1815
    return v13

    .line 1816
    :pswitch_4e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1820
    .line 1821
    .line 1822
    move-result v0

    .line 1823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v1

    .line 1827
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    .line 1832
    .line 1833
    return v13

    .line 1834
    :pswitch_4f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v0

    .line 1841
    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v0

    .line 1845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1846
    .line 1847
    .line 1848
    move-result v1

    .line 1849
    if-eqz v1, :cond_22

    .line 1850
    .line 1851
    move v12, v13

    .line 1852
    :cond_22
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 1853
    .line 1854
    .line 1855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1856
    .line 1857
    .line 1858
    return v13

    .line 1859
    :pswitch_50
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v0

    .line 1866
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V

    .line 1867
    .line 1868
    .line 1869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1870
    .line 1871
    .line 1872
    return v13

    .line 1873
    :pswitch_51
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v2

    .line 1880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1881
    .line 1882
    .line 1883
    move-result v3

    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1885
    .line 1886
    .line 1887
    move-result-wide v4

    .line 1888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v6

    .line 1892
    move-object/from16 v0, p0

    .line 1893
    .line 1894
    move-object v1, v2

    .line 1895
    move v2, v3

    .line 1896
    move-wide v3, v4

    .line 1897
    move-object v5, v6

    .line 1898
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1902
    .line 1903
    .line 1904
    return v13

    .line 1905
    :pswitch_52
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    .line 1907
    .line 1908
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getLockTaskModeState()I

    .line 1909
    .line 1910
    .line 1911
    move-result v0

    .line 1912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1913
    .line 1914
    .line 1915
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    .line 1917
    .line 1918
    return v13

    .line 1919
    :pswitch_53
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1923
    .line 1924
    .line 1925
    move-result v0

    .line 1926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1927
    .line 1928
    .line 1929
    move-result v2

    .line 1930
    if-eqz v2, :cond_23

    .line 1931
    .line 1932
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1933
    .line 1934
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v2

    .line 1938
    move-object v11, v2

    .line 1939
    check-cast v11, Landroid/graphics/Rect;

    .line 1940
    .line 1941
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1942
    .line 1943
    .line 1944
    move-result v1

    .line 1945
    invoke-interface {v14, v0, v11, v1}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 1946
    .line 1947
    .line 1948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    .line 1950
    .line 1951
    return v13

    .line 1952
    :pswitch_54
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1956
    .line 1957
    .line 1958
    move-result v2

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v0

    .line 1963
    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v3

    .line 1967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1968
    .line 1969
    .line 1970
    move-result v0

    .line 1971
    if-eqz v0, :cond_24

    .line 1972
    .line 1973
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1974
    .line 1975
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v0

    .line 1979
    check-cast v0, Landroid/os/Bundle;

    .line 1980
    .line 1981
    move-object v11, v0

    .line 1982
    :cond_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1983
    .line 1984
    .line 1985
    move-result-object v4

    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1987
    .line 1988
    .line 1989
    move-result v0

    .line 1990
    if-eqz v0, :cond_25

    .line 1991
    .line 1992
    move v5, v13

    .line 1993
    goto :goto_c

    .line 1994
    :cond_25
    move v5, v12

    .line 1995
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1996
    .line 1997
    .line 1998
    move-result v0

    .line 1999
    if-eqz v0, :cond_26

    .line 2000
    .line 2001
    move v6, v13

    .line 2002
    goto :goto_d

    .line 2003
    :cond_26
    move v6, v12

    .line 2004
    :goto_d
    move-object/from16 v0, p0

    .line 2005
    .line 2006
    move v1, v2

    .line 2007
    move-object v2, v3

    .line 2008
    move-object v3, v11

    .line 2009
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    .line 2010
    .line 2011
    .line 2012
    move-result v0

    .line 2013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    .line 2015
    .line 2016
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2017
    .line 2018
    .line 2019
    return v13

    .line 2020
    :pswitch_55
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    .line 2022
    .line 2023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2024
    .line 2025
    .line 2026
    move-result v0

    .line 2027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2028
    .line 2029
    .line 2030
    move-result v1

    .line 2031
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->setTaskResizeable(II)V

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2035
    .line 2036
    .line 2037
    return v13

    .line 2038
    :pswitch_56
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    .line 2040
    .line 2041
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getFocusedStackId()I

    .line 2042
    .line 2043
    .line 2044
    move-result v0

    .line 2045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    .line 2047
    .line 2048
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    .line 2050
    .line 2051
    return v13

    .line 2052
    :pswitch_57
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2053
    .line 2054
    .line 2055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2056
    .line 2057
    .line 2058
    move-result v0

    .line 2059
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->createStackOnDisplay(I)I

    .line 2060
    .line 2061
    .line 2062
    move-result v0

    .line 2063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2067
    .line 2068
    .line 2069
    return v13

    .line 2070
    :pswitch_58
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2074
    .line 2075
    .line 2076
    move-result v0

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 2078
    .line 2079
    .line 2080
    move-result-object v1

    .line 2081
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V

    .line 2082
    .line 2083
    .line 2084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2085
    .line 2086
    .line 2087
    return v13

    .line 2088
    :pswitch_59
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v0

    .line 2095
    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v0

    .line 2099
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2103
    .line 2104
    .line 2105
    return v13

    .line 2106
    :pswitch_5a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2107
    .line 2108
    .line 2109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v0

    .line 2113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2114
    .line 2115
    .line 2116
    move-result v2

    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2118
    .line 2119
    .line 2120
    move-result v3

    .line 2121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v1

    .line 2125
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    .line 2126
    .line 2127
    .line 2128
    move-result v0

    .line 2129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2133
    .line 2134
    .line 2135
    return v13

    .line 2136
    :pswitch_5b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2137
    .line 2138
    .line 2139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2140
    .line 2141
    .line 2142
    move-result v0

    .line 2143
    if-eqz v0, :cond_27

    .line 2144
    .line 2145
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2146
    .line 2147
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v0

    .line 2151
    move-object v11, v0

    .line 2152
    check-cast v11, Landroid/os/Bundle;

    .line 2153
    .line 2154
    :cond_27
    invoke-interface {v14, v11}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    .line 2155
    .line 2156
    .line 2157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2158
    .line 2159
    .line 2160
    return v13

    .line 2161
    :pswitch_5c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2162
    .line 2163
    .line 2164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2165
    .line 2166
    .line 2167
    move-result v0

    .line 2168
    if-eqz v0, :cond_28

    .line 2169
    .line 2170
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2171
    .line 2172
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v0

    .line 2176
    check-cast v0, Landroid/content/Intent;

    .line 2177
    .line 2178
    move-object v2, v0

    .line 2179
    goto :goto_e

    .line 2180
    :cond_28
    move-object v2, v11

    .line 2181
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2182
    .line 2183
    .line 2184
    move-result v3

    .line 2185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v4

    .line 2189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2190
    .line 2191
    .line 2192
    move-result v5

    .line 2193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2194
    .line 2195
    .line 2196
    move-result v0

    .line 2197
    if-eqz v0, :cond_29

    .line 2198
    .line 2199
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2200
    .line 2201
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v0

    .line 2205
    check-cast v0, Landroid/os/Bundle;

    .line 2206
    .line 2207
    move-object v11, v0

    .line 2208
    :cond_29
    move-object/from16 v0, p0

    .line 2209
    .line 2210
    move-object v1, v2

    .line 2211
    move v2, v3

    .line 2212
    move-object v3, v4

    .line 2213
    move v4, v5

    .line 2214
    move-object v5, v11

    .line 2215
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    .line 2216
    .line 2217
    .line 2218
    move-result v0

    .line 2219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2220
    .line 2221
    .line 2222
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2223
    .line 2224
    .line 2225
    return v13

    .line 2226
    :pswitch_5d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2227
    .line 2228
    .line 2229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2230
    .line 2231
    .line 2232
    move-result-object v0

    .line 2233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2234
    .line 2235
    .line 2236
    move-result v1

    .line 2237
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v0

    .line 2241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2242
    .line 2243
    .line 2244
    if-eqz v0, :cond_2a

    .line 2245
    .line 2246
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual {v0, v15, v13}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2250
    .line 2251
    .line 2252
    goto :goto_f

    .line 2253
    :cond_2a
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2254
    .line 2255
    .line 2256
    :goto_f
    return v13

    .line 2257
    :pswitch_5e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    .line 2259
    .line 2260
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->bootAnimationComplete()V

    .line 2261
    .line 2262
    .line 2263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2264
    .line 2265
    .line 2266
    return v13

    .line 2267
    :pswitch_5f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2268
    .line 2269
    .line 2270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2271
    .line 2272
    .line 2273
    move-result-object v0

    .line 2274
    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v0

    .line 2278
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 2279
    .line 2280
    .line 2281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2282
    .line 2283
    .line 2284
    return v13

    .line 2285
    :pswitch_60
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2286
    .line 2287
    .line 2288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v0

    .line 2292
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->releaseActivityInstance(Landroid/os/IBinder;)Z

    .line 2293
    .line 2294
    .line 2295
    move-result v0

    .line 2296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2297
    .line 2298
    .line 2299
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    .line 2301
    .line 2302
    return v13

    .line 2303
    :pswitch_61
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2304
    .line 2305
    .line 2306
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v0

    .line 2310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2311
    .line 2312
    .line 2313
    if-eqz v0, :cond_2b

    .line 2314
    .line 2315
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 2316
    .line 2317
    .line 2318
    invoke-virtual {v0, v15, v13}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2319
    .line 2320
    .line 2321
    goto :goto_10

    .line 2322
    :cond_2b
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    .line 2324
    .line 2325
    :goto_10
    return v13

    .line 2326
    :pswitch_62
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2327
    .line 2328
    .line 2329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v0

    .line 2333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2334
    .line 2335
    .line 2336
    move-result v2

    .line 2337
    if-eqz v2, :cond_2c

    .line 2338
    .line 2339
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2340
    .line 2341
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v2

    .line 2345
    check-cast v2, Landroid/content/Intent;

    .line 2346
    .line 2347
    goto :goto_11

    .line 2348
    :cond_2c
    move-object v2, v11

    .line 2349
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2350
    .line 2351
    .line 2352
    move-result v3

    .line 2353
    if-eqz v3, :cond_2d

    .line 2354
    .line 2355
    sget-object v3, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2356
    .line 2357
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2358
    .line 2359
    .line 2360
    move-result-object v3

    .line 2361
    check-cast v3, Landroid/app/ActivityManager$TaskDescription;

    .line 2362
    .line 2363
    goto :goto_12

    .line 2364
    :cond_2d
    move-object v3, v11

    .line 2365
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2366
    .line 2367
    .line 2368
    move-result v4

    .line 2369
    if-eqz v4, :cond_2e

    .line 2370
    .line 2371
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2372
    .line 2373
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v1

    .line 2377
    move-object v11, v1

    .line 2378
    check-cast v11, Landroid/graphics/Bitmap;

    .line 2379
    .line 2380
    :cond_2e
    invoke-interface {v14, v0, v2, v3, v11}, Landroid/app/IActivityManager;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    .line 2381
    .line 2382
    .line 2383
    move-result v0

    .line 2384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2385
    .line 2386
    .line 2387
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    .line 2389
    .line 2390
    return v13

    .line 2391
    :pswitch_63
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 2392
    .line 2393
    .line 2394
    move-result-object v2

    .line 2395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2396
    .line 2397
    .line 2398
    move-result-object v3

    .line 2399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2400
    .line 2401
    .line 2402
    move-result v0

    .line 2403
    if-eqz v0, :cond_2f

    .line 2404
    .line 2405
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2406
    .line 2407
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v0

    .line 2411
    check-cast v0, Landroid/content/Intent;

    .line 2412
    .line 2413
    move-object v4, v0

    .line 2414
    goto :goto_13

    .line 2415
    :cond_2f
    move-object v4, v11

    .line 2416
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v5

    .line 2420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v6

    .line 2424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2425
    .line 2426
    .line 2427
    move-result-object v7

    .line 2428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2429
    .line 2430
    .line 2431
    move-result v8

    .line 2432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2433
    .line 2434
    .line 2435
    move-result v9

    .line 2436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2437
    .line 2438
    .line 2439
    move-result v0

    .line 2440
    if-eqz v0, :cond_30

    .line 2441
    .line 2442
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2443
    .line 2444
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v0

    .line 2448
    check-cast v0, Landroid/app/ProfilerInfo;

    .line 2449
    .line 2450
    move-object v10, v0

    .line 2451
    goto :goto_14

    .line 2452
    :cond_30
    move-object v10, v11

    .line 2453
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2454
    .line 2455
    .line 2456
    move-result v0

    .line 2457
    if-eqz v0, :cond_31

    .line 2458
    .line 2459
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2460
    .line 2461
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2462
    .line 2463
    .line 2464
    move-result-object v0

    .line 2465
    check-cast v0, Landroid/os/Bundle;

    .line 2466
    .line 2467
    move-object v11, v0

    .line 2468
    :cond_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2469
    .line 2470
    .line 2471
    move-result v0

    .line 2472
    if-eqz v0, :cond_32

    .line 2473
    .line 2474
    move v12, v13

    .line 2475
    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2476
    .line 2477
    .line 2478
    move-result v16

    .line 2479
    move-object/from16 v0, p0

    .line 2480
    .line 2481
    move-object v1, v2

    .line 2482
    move-object v2, v3

    .line 2483
    move-object v3, v4

    .line 2484
    move-object v4, v5

    .line 2485
    move-object v5, v6

    .line 2486
    move-object v6, v7

    .line 2487
    move v7, v8

    .line 2488
    move v8, v9

    .line 2489
    move-object v9, v10

    .line 2490
    move-object v10, v11

    .line 2491
    move v11, v12

    .line 2492
    move/from16 v12, v16

    .line 2493
    .line 2494
    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    .line 2495
    .line 2496
    .line 2497
    move-result v0

    .line 2498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2499
    .line 2500
    .line 2501
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2502
    .line 2503
    .line 2504
    return v13

    .line 2505
    :pswitch_64
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2506
    .line 2507
    .line 2508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2509
    .line 2510
    .line 2511
    move-result-object v0

    .line 2512
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2513
    .line 2514
    .line 2515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2516
    .line 2517
    .line 2518
    return v13

    .line 2519
    :pswitch_65
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2520
    .line 2521
    .line 2522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2523
    .line 2524
    .line 2525
    move-result v0

    .line 2526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2527
    .line 2528
    .line 2529
    move-result v2

    .line 2530
    if-eqz v2, :cond_33

    .line 2531
    .line 2532
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2533
    .line 2534
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2535
    .line 2536
    .line 2537
    move-result-object v1

    .line 2538
    move-object v11, v1

    .line 2539
    check-cast v11, Landroid/os/Bundle;

    .line 2540
    .line 2541
    :cond_33
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 2542
    .line 2543
    .line 2544
    move-result v0

    .line 2545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2546
    .line 2547
    .line 2548
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2549
    .line 2550
    .line 2551
    return v13

    .line 2552
    :pswitch_66
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2553
    .line 2554
    .line 2555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2556
    .line 2557
    .line 2558
    move-result-object v0

    .line 2559
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2560
    .line 2561
    .line 2562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2563
    .line 2564
    .line 2565
    return v13

    .line 2566
    :pswitch_67
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2567
    .line 2568
    .line 2569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2570
    .line 2571
    .line 2572
    move-result-object v0

    .line 2573
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z

    .line 2574
    .line 2575
    .line 2576
    move-result v0

    .line 2577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2578
    .line 2579
    .line 2580
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2581
    .line 2582
    .line 2583
    return v13

    .line 2584
    :pswitch_68
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2585
    .line 2586
    .line 2587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2588
    .line 2589
    .line 2590
    move-result-object v0

    .line 2591
    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    .line 2592
    .line 2593
    .line 2594
    move-result-object v0

    .line 2595
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2596
    .line 2597
    .line 2598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2599
    .line 2600
    .line 2601
    return v13

    .line 2602
    :pswitch_69
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2603
    .line 2604
    .line 2605
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V

    .line 2606
    .line 2607
    .line 2608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2609
    .line 2610
    .line 2611
    return v13

    .line 2612
    :pswitch_6a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2613
    .line 2614
    .line 2615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2616
    .line 2617
    .line 2618
    move-result v0

    .line 2619
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V

    .line 2620
    .line 2621
    .line 2622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2623
    .line 2624
    .line 2625
    return v13

    .line 2626
    :pswitch_6b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2627
    .line 2628
    .line 2629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2630
    .line 2631
    .line 2632
    move-result-object v0

    .line 2633
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v0

    .line 2637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2638
    .line 2639
    .line 2640
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 2641
    .line 2642
    .line 2643
    return v13

    .line 2644
    :pswitch_6c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2645
    .line 2646
    .line 2647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v0

    .line 2651
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;

    .line 2652
    .line 2653
    .line 2654
    move-result-object v0

    .line 2655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    .line 2657
    .line 2658
    if-eqz v0, :cond_34

    .line 2659
    .line 2660
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 2661
    .line 2662
    .line 2663
    invoke-virtual {v0, v15, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2664
    .line 2665
    .line 2666
    goto :goto_15

    .line 2667
    :cond_34
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2668
    .line 2669
    .line 2670
    :goto_15
    return v13

    .line 2671
    :pswitch_6d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2672
    .line 2673
    .line 2674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2675
    .line 2676
    .line 2677
    move-result-object v2

    .line 2678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2679
    .line 2680
    .line 2681
    move-result v3

    .line 2682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2683
    .line 2684
    .line 2685
    move-result v4

    .line 2686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2687
    .line 2688
    .line 2689
    move-result v0

    .line 2690
    if-eqz v0, :cond_35

    .line 2691
    .line 2692
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2693
    .line 2694
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2695
    .line 2696
    .line 2697
    move-result-object v0

    .line 2698
    check-cast v0, Landroid/content/Intent;

    .line 2699
    .line 2700
    move-object v5, v0

    .line 2701
    goto :goto_16

    .line 2702
    :cond_35
    move-object v5, v11

    .line 2703
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2704
    .line 2705
    .line 2706
    move-result-object v6

    .line 2707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2708
    .line 2709
    .line 2710
    move-result v0

    .line 2711
    if-eqz v0, :cond_36

    .line 2712
    .line 2713
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2714
    .line 2715
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v0

    .line 2719
    check-cast v0, Landroid/os/Bundle;

    .line 2720
    .line 2721
    move-object v11, v0

    .line 2722
    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2723
    .line 2724
    .line 2725
    move-result v7

    .line 2726
    move-object/from16 v0, p0

    .line 2727
    .line 2728
    move-object v1, v2

    .line 2729
    move v2, v3

    .line 2730
    move v3, v4

    .line 2731
    move-object v4, v5

    .line 2732
    move-object v5, v6

    .line 2733
    move-object v6, v11

    .line 2734
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    .line 2735
    .line 2736
    .line 2737
    move-result v0

    .line 2738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    .line 2740
    .line 2741
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2742
    .line 2743
    .line 2744
    return v13

    .line 2745
    :pswitch_6e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2746
    .line 2747
    .line 2748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2749
    .line 2750
    .line 2751
    move-result-object v2

    .line 2752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2753
    .line 2754
    .line 2755
    move-result v3

    .line 2756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2757
    .line 2758
    .line 2759
    move-result v4

    .line 2760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2761
    .line 2762
    .line 2763
    move-result v0

    .line 2764
    if-eqz v0, :cond_37

    .line 2765
    .line 2766
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2767
    .line 2768
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2769
    .line 2770
    .line 2771
    move-result-object v0

    .line 2772
    check-cast v0, Landroid/content/Intent;

    .line 2773
    .line 2774
    move-object v5, v0

    .line 2775
    goto :goto_17

    .line 2776
    :cond_37
    move-object v5, v11

    .line 2777
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2778
    .line 2779
    .line 2780
    move-result-object v6

    .line 2781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2782
    .line 2783
    .line 2784
    move-result-object v0

    .line 2785
    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    .line 2786
    .line 2787
    .line 2788
    move-result-object v7

    .line 2789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2790
    .line 2791
    .line 2792
    move-result-object v0

    .line 2793
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    .line 2794
    .line 2795
    .line 2796
    move-result-object v8

    .line 2797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2798
    .line 2799
    .line 2800
    move-result v9

    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2802
    .line 2803
    .line 2804
    move-result v0

    .line 2805
    if-eqz v0, :cond_38

    .line 2806
    .line 2807
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2808
    .line 2809
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2810
    .line 2811
    .line 2812
    move-result-object v0

    .line 2813
    check-cast v0, Landroid/app/ProfilerInfo;

    .line 2814
    .line 2815
    move-object v10, v0

    .line 2816
    goto :goto_18

    .line 2817
    :cond_38
    move-object v10, v11

    .line 2818
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2819
    .line 2820
    .line 2821
    move-result v0

    .line 2822
    if-eqz v0, :cond_39

    .line 2823
    .line 2824
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2825
    .line 2826
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2827
    .line 2828
    .line 2829
    move-result-object v0

    .line 2830
    check-cast v0, Landroid/os/Bundle;

    .line 2831
    .line 2832
    move-object v11, v0

    .line 2833
    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2834
    .line 2835
    .line 2836
    move-result v12

    .line 2837
    move-object/from16 v0, p0

    .line 2838
    .line 2839
    move-object v1, v2

    .line 2840
    move v2, v3

    .line 2841
    move v3, v4

    .line 2842
    move-object v4, v5

    .line 2843
    move-object v5, v6

    .line 2844
    move-object v6, v7

    .line 2845
    move-object v7, v8

    .line 2846
    move v8, v9

    .line 2847
    move-object v9, v10

    .line 2848
    move-object v10, v11

    .line 2849
    move v11, v12

    .line 2850
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 2851
    .line 2852
    .line 2853
    move-result v0

    .line 2854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2855
    .line 2856
    .line 2857
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2858
    .line 2859
    .line 2860
    return v13

    .line 2861
    :pswitch_6f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2862
    .line 2863
    .line 2864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2865
    .line 2866
    .line 2867
    move-result-object v0

    .line 2868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2869
    .line 2870
    .line 2871
    move-result v2

    .line 2872
    if-eqz v2, :cond_3a

    .line 2873
    .line 2874
    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2875
    .line 2876
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2877
    .line 2878
    .line 2879
    move-result-object v1

    .line 2880
    move-object v11, v1

    .line 2881
    check-cast v11, Landroid/app/ActivityManager$TaskDescription;

    .line 2882
    .line 2883
    :cond_3a
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2884
    .line 2885
    .line 2886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2887
    .line 2888
    .line 2889
    return v13

    .line 2890
    :pswitch_70
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2891
    .line 2892
    .line 2893
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    .line 2894
    .line 2895
    .line 2896
    move-result v0

    .line 2897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2898
    .line 2899
    .line 2900
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2901
    .line 2902
    .line 2903
    return v13

    .line 2904
    :pswitch_71
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2905
    .line 2906
    .line 2907
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->stopLockTaskMode()V

    .line 2908
    .line 2909
    .line 2910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2911
    .line 2912
    .line 2913
    return v13

    .line 2914
    :pswitch_72
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2915
    .line 2916
    .line 2917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2918
    .line 2919
    .line 2920
    move-result-object v0

    .line 2921
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 2922
    .line 2923
    .line 2924
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2925
    .line 2926
    .line 2927
    return v13

    .line 2928
    :pswitch_73
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2929
    .line 2930
    .line 2931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2932
    .line 2933
    .line 2934
    move-result v0

    .line 2935
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->startLockTaskModeById(I)V

    .line 2936
    .line 2937
    .line 2938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2939
    .line 2940
    .line 2941
    return v13

    .line 2942
    :pswitch_74
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2943
    .line 2944
    .line 2945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2946
    .line 2947
    .line 2948
    move-result v0

    .line 2949
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    .line 2950
    .line 2951
    .line 2952
    move-result v0

    .line 2953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2954
    .line 2955
    .line 2956
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2957
    .line 2958
    .line 2959
    return v13

    .line 2960
    :pswitch_75
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2961
    .line 2962
    .line 2963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2964
    .line 2965
    .line 2966
    move-result-object v0

    .line 2967
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 2968
    .line 2969
    .line 2970
    move-result-object v0

    .line 2971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2972
    .line 2973
    .line 2974
    move-result-object v1

    .line 2975
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    .line 2976
    .line 2977
    .line 2978
    move-result-object v0

    .line 2979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2980
    .line 2981
    .line 2982
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2983
    .line 2984
    .line 2985
    return v13

    .line 2986
    :pswitch_76
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2987
    .line 2988
    .line 2989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2990
    .line 2991
    .line 2992
    move-result-object v0

    .line 2993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2994
    .line 2995
    .line 2996
    move-result v2

    .line 2997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2998
    .line 2999
    .line 3000
    move-result v1

    .line 3001
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    .line 3002
    .line 3003
    .line 3004
    move-result v0

    .line 3005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3006
    .line 3007
    .line 3008
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3009
    .line 3010
    .line 3011
    return v13

    .line 3012
    :pswitch_77
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3013
    .line 3014
    .line 3015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3016
    .line 3017
    .line 3018
    move-result-object v0

    .line 3019
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getActivityDisplayId(Landroid/os/IBinder;)I

    .line 3020
    .line 3021
    .line 3022
    move-result v0

    .line 3023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3024
    .line 3025
    .line 3026
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3027
    .line 3028
    .line 3029
    return v13

    .line 3030
    :pswitch_78
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3031
    .line 3032
    .line 3033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3034
    .line 3035
    .line 3036
    move-result v0

    .line 3037
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 3038
    .line 3039
    .line 3040
    move-result-object v0

    .line 3041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3042
    .line 3043
    .line 3044
    if-eqz v0, :cond_3b

    .line 3045
    .line 3046
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3047
    .line 3048
    .line 3049
    invoke-virtual {v0, v15, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3050
    .line 3051
    .line 3052
    goto :goto_19

    .line 3053
    :cond_3b
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3054
    .line 3055
    .line 3056
    :goto_19
    return v13

    .line 3057
    :pswitch_79
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3058
    .line 3059
    .line 3060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3061
    .line 3062
    .line 3063
    move-result-object v0

    .line 3064
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 3065
    .line 3066
    .line 3067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3068
    .line 3069
    .line 3070
    return v13

    .line 3071
    :pswitch_7a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3072
    .line 3073
    .line 3074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3075
    .line 3076
    .line 3077
    move-result-object v0

    .line 3078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3079
    .line 3080
    .line 3081
    move-result v1

    .line 3082
    if-eqz v1, :cond_3c

    .line 3083
    .line 3084
    move v1, v13

    .line 3085
    goto :goto_1a

    .line 3086
    :cond_3c
    move v1, v12

    .line 3087
    :goto_1a
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    .line 3088
    .line 3089
    .line 3090
    move-result-object v0

    .line 3091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3092
    .line 3093
    .line 3094
    if-eqz v0, :cond_3d

    .line 3095
    .line 3096
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3097
    .line 3098
    .line 3099
    invoke-virtual {v0, v15, v13}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3100
    .line 3101
    .line 3102
    goto :goto_1b

    .line 3103
    :cond_3d
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3104
    .line 3105
    .line 3106
    :goto_1b
    return v13

    .line 3107
    :pswitch_7b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3108
    .line 3109
    .line 3110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3111
    .line 3112
    .line 3113
    move-result v0

    .line 3114
    if-eqz v0, :cond_3e

    .line 3115
    .line 3116
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3117
    .line 3118
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3119
    .line 3120
    .line 3121
    move-result-object v0

    .line 3122
    move-object v11, v0

    .line 3123
    check-cast v11, Landroid/net/Uri;

    .line 3124
    .line 3125
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3126
    .line 3127
    .line 3128
    move-result v0

    .line 3129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3130
    .line 3131
    .line 3132
    move-result v1

    .line 3133
    invoke-interface {v14, v11, v0, v1}, Landroid/app/IActivityManager;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 3134
    .line 3135
    .line 3136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3137
    .line 3138
    .line 3139
    return v13

    .line 3140
    :pswitch_7c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3141
    .line 3142
    .line 3143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3144
    .line 3145
    .line 3146
    move-result v0

    .line 3147
    if-eqz v0, :cond_3f

    .line 3148
    .line 3149
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3150
    .line 3151
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3152
    .line 3153
    .line 3154
    move-result-object v0

    .line 3155
    move-object v11, v0

    .line 3156
    check-cast v11, Landroid/net/Uri;

    .line 3157
    .line 3158
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3159
    .line 3160
    .line 3161
    move-result v0

    .line 3162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3163
    .line 3164
    .line 3165
    move-result v1

    .line 3166
    invoke-interface {v14, v11, v0, v1}, Landroid/app/IActivityManager;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 3167
    .line 3168
    .line 3169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3170
    .line 3171
    .line 3172
    return v13

    .line 3173
    :pswitch_7d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3174
    .line 3175
    .line 3176
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->performIdleMaintenance()V

    .line 3177
    .line 3178
    .line 3179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3180
    .line 3181
    .line 3182
    return v13

    .line 3183
    :pswitch_7e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3184
    .line 3185
    .line 3186
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->restart()V

    .line 3187
    .line 3188
    .line 3189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3190
    .line 3191
    .line 3192
    return v13

    .line 3193
    :pswitch_7f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3194
    .line 3195
    .line 3196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3197
    .line 3198
    .line 3199
    move-result-object v0

    .line 3200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3201
    .line 3202
    .line 3203
    move-result v1

    .line 3204
    if-eqz v1, :cond_40

    .line 3205
    .line 3206
    move v12, v13

    .line 3207
    :cond_40
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 3208
    .line 3209
    .line 3210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3211
    .line 3212
    .line 3213
    return v13

    .line 3214
    :pswitch_80
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3215
    .line 3216
    .line 3217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3218
    .line 3219
    .line 3220
    move-result-object v0

    .line 3221
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 3222
    .line 3223
    .line 3224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3225
    .line 3226
    .line 3227
    return v13

    .line 3228
    :pswitch_81
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3229
    .line 3230
    .line 3231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3232
    .line 3233
    .line 3234
    move-result-object v0

    .line 3235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3236
    .line 3237
    .line 3238
    move-result v2

    .line 3239
    if-eqz v2, :cond_41

    .line 3240
    .line 3241
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3242
    .line 3243
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3244
    .line 3245
    .line 3246
    move-result-object v1

    .line 3247
    move-object v11, v1

    .line 3248
    check-cast v11, Landroid/os/Bundle;

    .line 3249
    .line 3250
    :cond_41
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 3251
    .line 3252
    .line 3253
    move-result v0

    .line 3254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3255
    .line 3256
    .line 3257
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3258
    .line 3259
    .line 3260
    return v13

    .line 3261
    :pswitch_82
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3262
    .line 3263
    .line 3264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3265
    .line 3266
    .line 3267
    move-result-object v0

    .line 3268
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;)Z

    .line 3269
    .line 3270
    .line 3271
    move-result v0

    .line 3272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3273
    .line 3274
    .line 3275
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3276
    .line 3277
    .line 3278
    return v13

    .line 3279
    :pswitch_83
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3280
    .line 3281
    .line 3282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3283
    .line 3284
    .line 3285
    move-result v0

    .line 3286
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    .line 3287
    .line 3288
    .line 3289
    move-result-object v0

    .line 3290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3291
    .line 3292
    .line 3293
    if-eqz v0, :cond_42

    .line 3294
    .line 3295
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3296
    .line 3297
    .line 3298
    invoke-virtual {v0, v15, v13}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3299
    .line 3300
    .line 3301
    goto :goto_1c

    .line 3302
    :cond_42
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3303
    .line 3304
    .line 3305
    :goto_1c
    return v13

    .line 3306
    :pswitch_84
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3307
    .line 3308
    .line 3309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3310
    .line 3311
    .line 3312
    move-result v0

    .line 3313
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->setFocusedStack(I)V

    .line 3314
    .line 3315
    .line 3316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3317
    .line 3318
    .line 3319
    return v13

    .line 3320
    :pswitch_85
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3321
    .line 3322
    .line 3323
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    .line 3324
    .line 3325
    .line 3326
    move-result-object v0

    .line 3327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3328
    .line 3329
    .line 3330
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3331
    .line 3332
    .line 3333
    return v13

    .line 3334
    :pswitch_86
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3335
    .line 3336
    .line 3337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3338
    .line 3339
    .line 3340
    move-result v2

    .line 3341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3342
    .line 3343
    .line 3344
    move-result v0

    .line 3345
    if-eqz v0, :cond_43

    .line 3346
    .line 3347
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3348
    .line 3349
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3350
    .line 3351
    .line 3352
    move-result-object v0

    .line 3353
    check-cast v0, Landroid/graphics/Rect;

    .line 3354
    .line 3355
    move-object v11, v0

    .line 3356
    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3357
    .line 3358
    .line 3359
    move-result v0

    .line 3360
    if-eqz v0, :cond_44

    .line 3361
    .line 3362
    move v3, v13

    .line 3363
    goto :goto_1d

    .line 3364
    :cond_44
    move v3, v12

    .line 3365
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3366
    .line 3367
    .line 3368
    move-result v0

    .line 3369
    if-eqz v0, :cond_45

    .line 3370
    .line 3371
    move v4, v13

    .line 3372
    goto :goto_1e

    .line 3373
    :cond_45
    move v4, v12

    .line 3374
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3375
    .line 3376
    .line 3377
    move-result v0

    .line 3378
    if-eqz v0, :cond_46

    .line 3379
    .line 3380
    move v5, v13

    .line 3381
    goto :goto_1f

    .line 3382
    :cond_46
    move v5, v12

    .line 3383
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3384
    .line 3385
    .line 3386
    move-result v6

    .line 3387
    move-object/from16 v0, p0

    .line 3388
    .line 3389
    move v1, v2

    .line 3390
    move-object v2, v11

    .line 3391
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 3392
    .line 3393
    .line 3394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3395
    .line 3396
    .line 3397
    return v13

    .line 3398
    :pswitch_87
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    .line 3400
    .line 3401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3402
    .line 3403
    .line 3404
    move-result v0

    .line 3405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3406
    .line 3407
    .line 3408
    move-result v2

    .line 3409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3410
    .line 3411
    .line 3412
    move-result v1

    .line 3413
    if-eqz v1, :cond_47

    .line 3414
    .line 3415
    move v12, v13

    .line 3416
    :cond_47
    invoke-interface {v14, v0, v2, v12}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    .line 3417
    .line 3418
    .line 3419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3420
    .line 3421
    .line 3422
    return v13

    .line 3423
    :pswitch_88
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3424
    .line 3425
    .line 3426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3427
    .line 3428
    .line 3429
    move-result-object v0

    .line 3430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3431
    .line 3432
    .line 3433
    move-result v1

    .line 3434
    if-eqz v1, :cond_48

    .line 3435
    .line 3436
    move v12, v13

    .line 3437
    :cond_48
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    .line 3438
    .line 3439
    .line 3440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3441
    .line 3442
    .line 3443
    return v13

    .line 3444
    :pswitch_89
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3445
    .line 3446
    .line 3447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3448
    .line 3449
    .line 3450
    move-result v0

    .line 3451
    if-eqz v0, :cond_49

    .line 3452
    .line 3453
    move v12, v13

    .line 3454
    :cond_49
    invoke-interface {v14, v12}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V

    .line 3455
    .line 3456
    .line 3457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3458
    .line 3459
    .line 3460
    return v13

    .line 3461
    :pswitch_8a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3462
    .line 3463
    .line 3464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3465
    .line 3466
    .line 3467
    move-result v0

    .line 3468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3469
    .line 3470
    .line 3471
    move-result v2

    .line 3472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3473
    .line 3474
    .line 3475
    move-result-object v1

    .line 3476
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V

    .line 3477
    .line 3478
    .line 3479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3480
    .line 3481
    .line 3482
    return v13

    .line 3483
    :pswitch_8b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3484
    .line 3485
    .line 3486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3487
    .line 3488
    .line 3489
    move-result-object v0

    .line 3490
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    .line 3491
    .line 3492
    .line 3493
    move-result-object v0

    .line 3494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3495
    .line 3496
    .line 3497
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3498
    .line 3499
    .line 3500
    return v13

    .line 3501
    :pswitch_8c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    .line 3503
    .line 3504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3505
    .line 3506
    .line 3507
    move-result-object v2

    .line 3508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3509
    .line 3510
    .line 3511
    move-result v0

    .line 3512
    if-eqz v0, :cond_4a

    .line 3513
    .line 3514
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3515
    .line 3516
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3517
    .line 3518
    .line 3519
    move-result-object v0

    .line 3520
    check-cast v0, Landroid/os/Bundle;

    .line 3521
    .line 3522
    move-object v3, v0

    .line 3523
    goto :goto_20

    .line 3524
    :cond_4a
    move-object v3, v11

    .line 3525
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3526
    .line 3527
    .line 3528
    move-result v0

    .line 3529
    if-eqz v0, :cond_4b

    .line 3530
    .line 3531
    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3532
    .line 3533
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3534
    .line 3535
    .line 3536
    move-result-object v0

    .line 3537
    check-cast v0, Landroid/app/assist/AssistStructure;

    .line 3538
    .line 3539
    move-object v4, v0

    .line 3540
    goto :goto_21

    .line 3541
    :cond_4b
    move-object v4, v11

    .line 3542
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3543
    .line 3544
    .line 3545
    move-result v0

    .line 3546
    if-eqz v0, :cond_4c

    .line 3547
    .line 3548
    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3549
    .line 3550
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3551
    .line 3552
    .line 3553
    move-result-object v0

    .line 3554
    check-cast v0, Landroid/app/assist/AssistContent;

    .line 3555
    .line 3556
    move-object v5, v0

    .line 3557
    goto :goto_22

    .line 3558
    :cond_4c
    move-object v5, v11

    .line 3559
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3560
    .line 3561
    .line 3562
    move-result v0

    .line 3563
    if-eqz v0, :cond_4d

    .line 3564
    .line 3565
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3566
    .line 3567
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3568
    .line 3569
    .line 3570
    move-result-object v0

    .line 3571
    check-cast v0, Landroid/net/Uri;

    .line 3572
    .line 3573
    move-object v11, v0

    .line 3574
    :cond_4d
    move-object/from16 v0, p0

    .line 3575
    .line 3576
    move-object v1, v2

    .line 3577
    move-object v2, v3

    .line 3578
    move-object v3, v4

    .line 3579
    move-object v4, v5

    .line 3580
    move-object v5, v11

    .line 3581
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 3582
    .line 3583
    .line 3584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3585
    .line 3586
    .line 3587
    return v13

    .line 3588
    :pswitch_8d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3589
    .line 3590
    .line 3591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3592
    .line 3593
    .line 3594
    move-result v0

    .line 3595
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getAssistContextExtras(I)Landroid/os/Bundle;

    .line 3596
    .line 3597
    .line 3598
    move-result-object v0

    .line 3599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3600
    .line 3601
    .line 3602
    if-eqz v0, :cond_4e

    .line 3603
    .line 3604
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3605
    .line 3606
    .line 3607
    invoke-virtual {v0, v15, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3608
    .line 3609
    .line 3610
    goto :goto_23

    .line 3611
    :cond_4e
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3612
    .line 3613
    .line 3614
    :goto_23
    return v13

    .line 3615
    :pswitch_8e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3616
    .line 3617
    .line 3618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3619
    .line 3620
    .line 3621
    move-result-object v0

    .line 3622
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 3623
    .line 3624
    .line 3625
    move-result-object v0

    .line 3626
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    .line 3627
    .line 3628
    .line 3629
    move-result-object v0

    .line 3630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3631
    .line 3632
    .line 3633
    if-eqz v0, :cond_4f

    .line 3634
    .line 3635
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 3636
    .line 3637
    .line 3638
    invoke-virtual {v0, v15, v13}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3639
    .line 3640
    .line 3641
    goto :goto_24

    .line 3642
    :cond_4f
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 3643
    .line 3644
    .line 3645
    :goto_24
    return v13

    .line 3646
    :pswitch_8f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3647
    .line 3648
    .line 3649
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->clearPendingBackup()V

    .line 3650
    .line 3651
    .line 3652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3653
    .line 3654
    .line 3655
    return v13

    .line 3656
    :pswitch_90
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3657
    .line 3658
    .line 3659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3660
    .line 3661
    .line 3662
    move-result v0

    .line 3663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3664
    .line 3665
    .line 3666
    move-result v2

    .line 3667
    if-eqz v2, :cond_50

    .line 3668
    .line 3669
    move v12, v13

    .line 3670
    :cond_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3671
    .line 3672
    .line 3673
    move-result-object v1

    .line 3674
    invoke-interface {v14, v0, v12, v1}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    .line 3675
    .line 3676
    .line 3677
    move-result-wide v0

    .line 3678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3679
    .line 3680
    .line 3681
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3682
    .line 3683
    .line 3684
    return v13

    .line 3685
    :pswitch_91
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3686
    .line 3687
    .line 3688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3689
    .line 3690
    .line 3691
    move-result-object v0

    .line 3692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3693
    .line 3694
    .line 3695
    move-result-object v1

    .line 3696
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 3697
    .line 3698
    .line 3699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3700
    .line 3701
    .line 3702
    return v13

    .line 3703
    :pswitch_92
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3704
    .line 3705
    .line 3706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3707
    .line 3708
    .line 3709
    move-result v0

    .line 3710
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->requestBugReport(I)V

    .line 3711
    .line 3712
    .line 3713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3714
    .line 3715
    .line 3716
    return v13

    .line 3717
    :pswitch_93
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3718
    .line 3719
    .line 3720
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 3721
    .line 3722
    .line 3723
    move-result-object v0

    .line 3724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3725
    .line 3726
    .line 3727
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3728
    .line 3729
    .line 3730
    return v13

    .line 3731
    :pswitch_94
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3732
    .line 3733
    .line 3734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3735
    .line 3736
    .line 3737
    move-result-object v0

    .line 3738
    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    .line 3739
    .line 3740
    .line 3741
    move-result-object v0

    .line 3742
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 3743
    .line 3744
    .line 3745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3746
    .line 3747
    .line 3748
    return v13

    .line 3749
    :pswitch_95
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3750
    .line 3751
    .line 3752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3753
    .line 3754
    .line 3755
    move-result-object v0

    .line 3756
    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    .line 3757
    .line 3758
    .line 3759
    move-result-object v0

    .line 3760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3761
    .line 3762
    .line 3763
    move-result-object v1

    .line 3764
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 3765
    .line 3766
    .line 3767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3768
    .line 3769
    .line 3770
    return v13

    .line 3771
    :pswitch_96
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3772
    .line 3773
    .line 3774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3775
    .line 3776
    .line 3777
    move-result v0

    .line 3778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3779
    .line 3780
    .line 3781
    move-result v2

    .line 3782
    if-eqz v2, :cond_51

    .line 3783
    .line 3784
    move v12, v13

    .line 3785
    :cond_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3786
    .line 3787
    .line 3788
    move-result-object v1

    .line 3789
    invoke-static {v1}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    .line 3790
    .line 3791
    .line 3792
    move-result-object v1

    .line 3793
    invoke-interface {v14, v0, v12, v1}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 3794
    .line 3795
    .line 3796
    move-result v0

    .line 3797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3798
    .line 3799
    .line 3800
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3801
    .line 3802
    .line 3803
    return v13

    .line 3804
    :pswitch_97
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 3805
    .line 3806
    .line 3807
    move-result-object v2

    .line 3808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3809
    .line 3810
    .line 3811
    move-result-object v3

    .line 3812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3813
    .line 3814
    .line 3815
    move-result v0

    .line 3816
    if-eqz v0, :cond_52

    .line 3817
    .line 3818
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3819
    .line 3820
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3821
    .line 3822
    .line 3823
    move-result-object v0

    .line 3824
    check-cast v0, Landroid/content/Intent;

    .line 3825
    .line 3826
    move-object v4, v0

    .line 3827
    goto :goto_25

    .line 3828
    :cond_52
    move-object v4, v11

    .line 3829
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3830
    .line 3831
    .line 3832
    move-result-object v5

    .line 3833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3834
    .line 3835
    .line 3836
    move-result-object v6

    .line 3837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3838
    .line 3839
    .line 3840
    move-result-object v7

    .line 3841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3842
    .line 3843
    .line 3844
    move-result v8

    .line 3845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3846
    .line 3847
    .line 3848
    move-result v9

    .line 3849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3850
    .line 3851
    .line 3852
    move-result v0

    .line 3853
    if-eqz v0, :cond_53

    .line 3854
    .line 3855
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3856
    .line 3857
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3858
    .line 3859
    .line 3860
    move-result-object v0

    .line 3861
    check-cast v0, Landroid/app/ProfilerInfo;

    .line 3862
    .line 3863
    move-object v10, v0

    .line 3864
    goto :goto_26

    .line 3865
    :cond_53
    move-object v10, v11

    .line 3866
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3867
    .line 3868
    .line 3869
    move-result v0

    .line 3870
    if-eqz v0, :cond_54

    .line 3871
    .line 3872
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3873
    .line 3874
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3875
    .line 3876
    .line 3877
    move-result-object v0

    .line 3878
    check-cast v0, Landroid/os/Bundle;

    .line 3879
    .line 3880
    move-object v11, v0

    .line 3881
    :cond_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3882
    .line 3883
    .line 3884
    move-result v12

    .line 3885
    move-object/from16 v0, p0

    .line 3886
    .line 3887
    move-object v1, v2

    .line 3888
    move-object v2, v3

    .line 3889
    move-object v3, v4

    .line 3890
    move-object v4, v5

    .line 3891
    move-object v5, v6

    .line 3892
    move-object v6, v7

    .line 3893
    move v7, v8

    .line 3894
    move v8, v9

    .line 3895
    move-object v9, v10

    .line 3896
    move-object v10, v11

    .line 3897
    move v11, v12

    .line 3898
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 3899
    .line 3900
    .line 3901
    move-result v0

    .line 3902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3903
    .line 3904
    .line 3905
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3906
    .line 3907
    .line 3908
    return v13

    .line 3909
    :pswitch_98
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3910
    .line 3911
    .line 3912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3913
    .line 3914
    .line 3915
    move-result-object v0

    .line 3916
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 3917
    .line 3918
    .line 3919
    move-result-object v0

    .line 3920
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    .line 3921
    .line 3922
    .line 3923
    move-result v0

    .line 3924
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3925
    .line 3926
    .line 3927
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3928
    .line 3929
    .line 3930
    return v13

    .line 3931
    :pswitch_99
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3932
    .line 3933
    .line 3934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3935
    .line 3936
    .line 3937
    move-result-object v0

    .line 3938
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 3939
    .line 3940
    .line 3941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3942
    .line 3943
    .line 3944
    return v13

    .line 3945
    :pswitch_9a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3946
    .line 3947
    .line 3948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3949
    .line 3950
    .line 3951
    move-result-object v0

    .line 3952
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    .line 3953
    .line 3954
    .line 3955
    move-result v0

    .line 3956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3957
    .line 3958
    .line 3959
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3960
    .line 3961
    .line 3962
    return v13

    .line 3963
    :pswitch_9b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3964
    .line 3965
    .line 3966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3967
    .line 3968
    .line 3969
    move-result-object v0

    .line 3970
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->finishActivityAffinity(Landroid/os/IBinder;)Z

    .line 3971
    .line 3972
    .line 3973
    move-result v0

    .line 3974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3975
    .line 3976
    .line 3977
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3978
    .line 3979
    .line 3980
    return v13

    .line 3981
    :pswitch_9c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3982
    .line 3983
    .line 3984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3985
    .line 3986
    .line 3987
    move-result v0

    .line 3988
    if-eqz v0, :cond_55

    .line 3989
    .line 3990
    move v12, v13

    .line 3991
    :cond_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3992
    .line 3993
    .line 3994
    move-result v0

    .line 3995
    invoke-interface {v14, v12, v0}, Landroid/app/IActivityManager;->setLockScreenShown(ZI)V

    .line 3996
    .line 3997
    .line 3998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3999
    .line 4000
    .line 4001
    return v13

    .line 4002
    :pswitch_9d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4003
    .line 4004
    .line 4005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4006
    .line 4007
    .line 4008
    move-result-object v0

    .line 4009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4010
    .line 4011
    .line 4012
    move-result v2

    .line 4013
    if-eqz v2, :cond_56

    .line 4014
    .line 4015
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4016
    .line 4017
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4018
    .line 4019
    .line 4020
    move-result-object v2

    .line 4021
    check-cast v2, Landroid/content/Intent;

    .line 4022
    .line 4023
    goto :goto_27

    .line 4024
    :cond_56
    move-object v2, v11

    .line 4025
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4026
    .line 4027
    .line 4028
    move-result v3

    .line 4029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4030
    .line 4031
    .line 4032
    move-result v4

    .line 4033
    if-eqz v4, :cond_57

    .line 4034
    .line 4035
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4036
    .line 4037
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4038
    .line 4039
    .line 4040
    move-result-object v1

    .line 4041
    move-object v11, v1

    .line 4042
    check-cast v11, Landroid/content/Intent;

    .line 4043
    .line 4044
    :cond_57
    invoke-interface {v14, v0, v2, v3, v11}, Landroid/app/IActivityManager;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    .line 4045
    .line 4046
    .line 4047
    move-result v0

    .line 4048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4049
    .line 4050
    .line 4051
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4052
    .line 4053
    .line 4054
    return v13

    .line 4055
    :pswitch_9e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4056
    .line 4057
    .line 4058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4059
    .line 4060
    .line 4061
    move-result-object v0

    .line 4062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4063
    .line 4064
    .line 4065
    move-result-object v1

    .line 4066
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    .line 4067
    .line 4068
    .line 4069
    move-result v0

    .line 4070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4071
    .line 4072
    .line 4073
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4074
    .line 4075
    .line 4076
    return v13

    .line 4077
    :pswitch_9f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4078
    .line 4079
    .line 4080
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 4081
    .line 4082
    .line 4083
    move-result-object v0

    .line 4084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4085
    .line 4086
    .line 4087
    if-eqz v0, :cond_58

    .line 4088
    .line 4089
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 4090
    .line 4091
    .line 4092
    invoke-virtual {v0, v15, v13}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4093
    .line 4094
    .line 4095
    goto :goto_28

    .line 4096
    :cond_58
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 4097
    .line 4098
    .line 4099
    :goto_28
    return v13

    .line 4100
    :pswitch_a0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    .line 4102
    .line 4103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4104
    .line 4105
    .line 4106
    move-result-object v0

    .line 4107
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->killProcessesBelowForeground(Ljava/lang/String;)Z

    .line 4108
    .line 4109
    .line 4110
    move-result v0

    .line 4111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4112
    .line 4113
    .line 4114
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4115
    .line 4116
    .line 4117
    return v13

    .line 4118
    :pswitch_a1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4119
    .line 4120
    .line 4121
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4122
    .line 4123
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 4124
    .line 4125
    .line 4126
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 4127
    .line 4128
    .line 4129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4130
    .line 4131
    .line 4132
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 4133
    .line 4134
    .line 4135
    invoke-virtual {v0, v15, v13}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4136
    .line 4137
    .line 4138
    return v13

    .line 4139
    :pswitch_a2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4140
    .line 4141
    .line 4142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4143
    .line 4144
    .line 4145
    move-result-object v0

    .line 4146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4147
    .line 4148
    .line 4149
    move-result-object v1

    .line 4150
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4151
    .line 4152
    .line 4153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4154
    .line 4155
    .line 4156
    return v13

    .line 4157
    :pswitch_a3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4158
    .line 4159
    .line 4160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4161
    .line 4162
    .line 4163
    move-result-object v0

    .line 4164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4165
    .line 4166
    .line 4167
    move-result v2

    .line 4168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4169
    .line 4170
    .line 4171
    move-result-object v1

    .line 4172
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;

    .line 4173
    .line 4174
    .line 4175
    move-result-object v0

    .line 4176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4177
    .line 4178
    .line 4179
    if-eqz v0, :cond_59

    .line 4180
    .line 4181
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 4182
    .line 4183
    .line 4184
    invoke-virtual {v0, v15, v13}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4185
    .line 4186
    .line 4187
    goto :goto_29

    .line 4188
    :cond_59
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 4189
    .line 4190
    .line 4191
    :goto_29
    return v13

    .line 4192
    :pswitch_a4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4193
    .line 4194
    .line 4195
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    .line 4196
    .line 4197
    .line 4198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4199
    .line 4200
    .line 4201
    return v13

    .line 4202
    :pswitch_a5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4203
    .line 4204
    .line 4205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4206
    .line 4207
    .line 4208
    move-result v0

    .line 4209
    if-eqz v0, :cond_5a

    .line 4210
    .line 4211
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 4212
    .line 4213
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4214
    .line 4215
    .line 4216
    move-result-object v0

    .line 4217
    move-object v11, v0

    .line 4218
    check-cast v11, Ljava/lang/CharSequence;

    .line 4219
    .line 4220
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4221
    .line 4222
    .line 4223
    move-result v0

    .line 4224
    if-eqz v0, :cond_5b

    .line 4225
    .line 4226
    move v12, v13

    .line 4227
    :cond_5b
    invoke-interface {v14, v11, v12}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 4228
    .line 4229
    .line 4230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4231
    .line 4232
    .line 4233
    return v13

    .line 4234
    :pswitch_a6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4235
    .line 4236
    .line 4237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 4238
    .line 4239
    .line 4240
    move-result-object v0

    .line 4241
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    .line 4242
    .line 4243
    .line 4244
    move-result-object v0

    .line 4245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4246
    .line 4247
    .line 4248
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 4249
    .line 4250
    .line 4251
    return v13

    .line 4252
    :pswitch_a7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4253
    .line 4254
    .line 4255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4256
    .line 4257
    .line 4258
    move-result v0

    .line 4259
    if-eqz v0, :cond_5c

    .line 4260
    .line 4261
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4262
    .line 4263
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4264
    .line 4265
    .line 4266
    move-result-object v0

    .line 4267
    move-object v11, v0

    .line 4268
    check-cast v11, Landroid/content/res/Configuration;

    .line 4269
    .line 4270
    :cond_5c
    invoke-interface {v14, v11}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 4271
    .line 4272
    .line 4273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4274
    .line 4275
    .line 4276
    return v13

    .line 4277
    :pswitch_a8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4278
    .line 4279
    .line 4280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4281
    .line 4282
    .line 4283
    move-result-object v0

    .line 4284
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 4285
    .line 4286
    .line 4287
    move-result-object v0

    .line 4288
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    .line 4289
    .line 4290
    .line 4291
    move-result v0

    .line 4292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4293
    .line 4294
    .line 4295
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4296
    .line 4297
    .line 4298
    return v13

    .line 4299
    :pswitch_a9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4300
    .line 4301
    .line 4302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4303
    .line 4304
    .line 4305
    move-result-object v0

    .line 4306
    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    .line 4307
    .line 4308
    .line 4309
    move-result-object v0

    .line 4310
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4311
    .line 4312
    .line 4313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4314
    .line 4315
    .line 4316
    return v13

    .line 4317
    :pswitch_aa
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4318
    .line 4319
    .line 4320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4321
    .line 4322
    .line 4323
    move-result-object v0

    .line 4324
    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    .line 4325
    .line 4326
    .line 4327
    move-result-object v0

    .line 4328
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4329
    .line 4330
    .line 4331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4332
    .line 4333
    .line 4334
    return v13

    .line 4335
    :pswitch_ab
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4336
    .line 4337
    .line 4338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4339
    .line 4340
    .line 4341
    move-result v0

    .line 4342
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->removeTask(I)Z

    .line 4343
    .line 4344
    .line 4345
    move-result v0

    .line 4346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4347
    .line 4348
    .line 4349
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4350
    .line 4351
    .line 4352
    return v13

    .line 4353
    :pswitch_ac
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4354
    .line 4355
    .line 4356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4357
    .line 4358
    .line 4359
    move-result v0

    .line 4360
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->setFocusedTask(I)V

    .line 4361
    .line 4362
    .line 4363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4364
    .line 4365
    .line 4366
    return v13

    .line 4367
    :pswitch_ad
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4368
    .line 4369
    .line 4370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4371
    .line 4372
    .line 4373
    move-result v0

    .line 4374
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 4375
    .line 4376
    .line 4377
    move-result v0

    .line 4378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4379
    .line 4380
    .line 4381
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4382
    .line 4383
    .line 4384
    return v13

    .line 4385
    :pswitch_ae
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4386
    .line 4387
    .line 4388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4389
    .line 4390
    .line 4391
    move-result-object v0

    .line 4392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4393
    .line 4394
    .line 4395
    move-result v1

    .line 4396
    if-eqz v1, :cond_5d

    .line 4397
    .line 4398
    move v12, v13

    .line 4399
    :cond_5d
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 4400
    .line 4401
    .line 4402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4403
    .line 4404
    .line 4405
    return v13

    .line 4406
    :pswitch_af
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4407
    .line 4408
    .line 4409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4410
    .line 4411
    .line 4412
    move-result-object v0

    .line 4413
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    .line 4414
    .line 4415
    .line 4416
    move-result v0

    .line 4417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4418
    .line 4419
    .line 4420
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4421
    .line 4422
    .line 4423
    return v13

    .line 4424
    :pswitch_b0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4425
    .line 4426
    .line 4427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4428
    .line 4429
    .line 4430
    move-result-object v0

    .line 4431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4432
    .line 4433
    .line 4434
    move-result v1

    .line 4435
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 4436
    .line 4437
    .line 4438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4439
    .line 4440
    .line 4441
    return v13

    .line 4442
    :pswitch_b1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4443
    .line 4444
    .line 4445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4446
    .line 4447
    .line 4448
    move-result-object v0

    .line 4449
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 4450
    .line 4451
    .line 4452
    move-result v0

    .line 4453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4454
    .line 4455
    .line 4456
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4457
    .line 4458
    .line 4459
    return v13

    .line 4460
    :pswitch_b2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4461
    .line 4462
    .line 4463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4464
    .line 4465
    .line 4466
    move-result v0

    .line 4467
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->setFrontActivityScreenCompatMode(I)V

    .line 4468
    .line 4469
    .line 4470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4471
    .line 4472
    .line 4473
    return v13

    .line 4474
    :pswitch_b3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4475
    .line 4476
    .line 4477
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getFrontActivityScreenCompatMode()I

    .line 4478
    .line 4479
    .line 4480
    move-result v0

    .line 4481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4482
    .line 4483
    .line 4484
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4485
    .line 4486
    .line 4487
    return v13

    .line 4488
    :pswitch_b4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4489
    .line 4490
    .line 4491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4492
    .line 4493
    .line 4494
    move-result-object v0

    .line 4495
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V

    .line 4496
    .line 4497
    .line 4498
    return v13

    .line 4499
    :pswitch_b5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4500
    .line 4501
    .line 4502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4503
    .line 4504
    .line 4505
    move-result v0

    .line 4506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4507
    .line 4508
    .line 4509
    move-result v1

    .line 4510
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    .line 4511
    .line 4512
    .line 4513
    move-result v0

    .line 4514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4515
    .line 4516
    .line 4517
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4518
    .line 4519
    .line 4520
    return v13

    .line 4521
    :pswitch_b6
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 4522
    .line 4523
    .line 4524
    move-result-object v2

    .line 4525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4526
    .line 4527
    .line 4528
    move-result-object v3

    .line 4529
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4530
    .line 4531
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 4532
    .line 4533
    .line 4534
    move-result-object v0

    .line 4535
    move-object v4, v0

    .line 4536
    check-cast v4, [Landroid/content/Intent;

    .line 4537
    .line 4538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 4539
    .line 4540
    .line 4541
    move-result-object v5

    .line 4542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4543
    .line 4544
    .line 4545
    move-result-object v6

    .line 4546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4547
    .line 4548
    .line 4549
    move-result v0

    .line 4550
    if-eqz v0, :cond_5e

    .line 4551
    .line 4552
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4553
    .line 4554
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4555
    .line 4556
    .line 4557
    move-result-object v0

    .line 4558
    check-cast v0, Landroid/os/Bundle;

    .line 4559
    .line 4560
    move-object v11, v0

    .line 4561
    :cond_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4562
    .line 4563
    .line 4564
    move-result v7

    .line 4565
    move-object/from16 v0, p0

    .line 4566
    .line 4567
    move-object v1, v2

    .line 4568
    move-object v2, v3

    .line 4569
    move-object v3, v4

    .line 4570
    move-object v4, v5

    .line 4571
    move-object v5, v6

    .line 4572
    move-object v6, v11

    .line 4573
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    .line 4574
    .line 4575
    .line 4576
    move-result v0

    .line 4577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4578
    .line 4579
    .line 4580
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4581
    .line 4582
    .line 4583
    return v13

    .line 4584
    :pswitch_b7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4585
    .line 4586
    .line 4587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4588
    .line 4589
    .line 4590
    move-result-object v2

    .line 4591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4592
    .line 4593
    .line 4594
    move-result v3

    .line 4595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4596
    .line 4597
    .line 4598
    move-result v0

    .line 4599
    if-eqz v0, :cond_5f

    .line 4600
    .line 4601
    move v4, v13

    .line 4602
    goto :goto_2a

    .line 4603
    :cond_5f
    move v4, v12

    .line 4604
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4605
    .line 4606
    .line 4607
    move-result v0

    .line 4608
    if-eqz v0, :cond_60

    .line 4609
    .line 4610
    move v5, v13

    .line 4611
    goto :goto_2b

    .line 4612
    :cond_60
    move v5, v12

    .line 4613
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4614
    .line 4615
    .line 4616
    move-result v0

    .line 4617
    if-eqz v0, :cond_61

    .line 4618
    .line 4619
    move v12, v13

    .line 4620
    :cond_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4621
    .line 4622
    .line 4623
    move-result-object v6

    .line 4624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4625
    .line 4626
    .line 4627
    move-result v0

    .line 4628
    if-eqz v0, :cond_62

    .line 4629
    .line 4630
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4631
    .line 4632
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4633
    .line 4634
    .line 4635
    move-result-object v0

    .line 4636
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 4637
    .line 4638
    move-object v7, v0

    .line 4639
    goto :goto_2c

    .line 4640
    :cond_62
    move-object v7, v11

    .line 4641
    :goto_2c
    move-object/from16 v0, p0

    .line 4642
    .line 4643
    move-object v1, v2

    .line 4644
    move v2, v3

    .line 4645
    move v3, v4

    .line 4646
    move v4, v5

    .line 4647
    move v5, v12

    .line 4648
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    .line 4649
    .line 4650
    .line 4651
    move-result v0

    .line 4652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4653
    .line 4654
    .line 4655
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4656
    .line 4657
    .line 4658
    return v13

    .line 4659
    :pswitch_b8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4660
    .line 4661
    .line 4662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4663
    .line 4664
    .line 4665
    move-result v2

    .line 4666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4667
    .line 4668
    .line 4669
    move-result-object v3

    .line 4670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4671
    .line 4672
    .line 4673
    move-result v0

    .line 4674
    if-eqz v0, :cond_63

    .line 4675
    .line 4676
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4677
    .line 4678
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4679
    .line 4680
    .line 4681
    move-result-object v0

    .line 4682
    check-cast v0, Landroid/net/Uri;

    .line 4683
    .line 4684
    move-object v11, v0

    .line 4685
    :cond_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4686
    .line 4687
    .line 4688
    move-result v4

    .line 4689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4690
    .line 4691
    .line 4692
    move-result v5

    .line 4693
    move-object/from16 v0, p0

    .line 4694
    .line 4695
    move v1, v2

    .line 4696
    move-object v2, v3

    .line 4697
    move-object v3, v11

    .line 4698
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 4699
    .line 4700
    .line 4701
    move-result v0

    .line 4702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4703
    .line 4704
    .line 4705
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4706
    .line 4707
    .line 4708
    return v13

    .line 4709
    :pswitch_b9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4710
    .line 4711
    .line 4712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4713
    .line 4714
    .line 4715
    move-result-object v0

    .line 4716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4717
    .line 4718
    .line 4719
    move-result v2

    .line 4720
    if-eqz v2, :cond_64

    .line 4721
    .line 4722
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4723
    .line 4724
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4725
    .line 4726
    .line 4727
    move-result-object v2

    .line 4728
    move-object v11, v2

    .line 4729
    check-cast v11, Landroid/net/Uri;

    .line 4730
    .line 4731
    :cond_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4732
    .line 4733
    .line 4734
    move-result v2

    .line 4735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4736
    .line 4737
    .line 4738
    move-result v1

    .line 4739
    invoke-interface {v14, v0, v11, v2, v1}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 4740
    .line 4741
    .line 4742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4743
    .line 4744
    .line 4745
    return v13

    .line 4746
    :pswitch_ba
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4747
    .line 4748
    .line 4749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4750
    .line 4751
    .line 4752
    move-result-object v2

    .line 4753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4754
    .line 4755
    .line 4756
    move-result v3

    .line 4757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4758
    .line 4759
    .line 4760
    move-result-object v4

    .line 4761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4762
    .line 4763
    .line 4764
    move-result v0

    .line 4765
    if-eqz v0, :cond_65

    .line 4766
    .line 4767
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4768
    .line 4769
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4770
    .line 4771
    .line 4772
    move-result-object v0

    .line 4773
    check-cast v0, Landroid/net/Uri;

    .line 4774
    .line 4775
    move-object v11, v0

    .line 4776
    :cond_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4777
    .line 4778
    .line 4779
    move-result v5

    .line 4780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4781
    .line 4782
    .line 4783
    move-result v6

    .line 4784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4785
    .line 4786
    .line 4787
    move-result v7

    .line 4788
    move-object/from16 v0, p0

    .line 4789
    .line 4790
    move-object v1, v2

    .line 4791
    move v2, v3

    .line 4792
    move-object v3, v4

    .line 4793
    move-object v4, v11

    .line 4794
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 4795
    .line 4796
    .line 4797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4798
    .line 4799
    .line 4800
    return v13

    .line 4801
    :pswitch_bb
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4802
    .line 4803
    .line 4804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4805
    .line 4806
    .line 4807
    move-result-object v0

    .line 4808
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4809
    .line 4810
    .line 4811
    move-result-object v0

    .line 4812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4813
    .line 4814
    .line 4815
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4816
    .line 4817
    .line 4818
    return v13

    .line 4819
    :pswitch_bc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4820
    .line 4821
    .line 4822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4823
    .line 4824
    .line 4825
    move-result v0

    .line 4826
    if-eqz v0, :cond_66

    .line 4827
    .line 4828
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4829
    .line 4830
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4831
    .line 4832
    .line 4833
    move-result-object v0

    .line 4834
    move-object v11, v0

    .line 4835
    check-cast v11, Landroid/net/Uri;

    .line 4836
    .line 4837
    :cond_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4838
    .line 4839
    .line 4840
    move-result v0

    .line 4841
    invoke-interface {v14, v11, v0}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    .line 4842
    .line 4843
    .line 4844
    move-result-object v0

    .line 4845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4846
    .line 4847
    .line 4848
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4849
    .line 4850
    .line 4851
    return v13

    .line 4852
    :pswitch_bd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4853
    .line 4854
    .line 4855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4856
    .line 4857
    .line 4858
    move-result v2

    .line 4859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4860
    .line 4861
    .line 4862
    move-result v3

    .line 4863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4864
    .line 4865
    .line 4866
    move-result-object v4

    .line 4867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4868
    .line 4869
    .line 4870
    move-result v5

    .line 4871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4872
    .line 4873
    .line 4874
    move-result-object v6

    .line 4875
    move-object/from16 v0, p0

    .line 4876
    .line 4877
    move v1, v2

    .line 4878
    move v2, v3

    .line 4879
    move-object v3, v4

    .line 4880
    move v4, v5

    .line 4881
    move-object v5, v6

    .line 4882
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    .line 4883
    .line 4884
    .line 4885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4886
    .line 4887
    .line 4888
    return v13

    .line 4889
    :pswitch_be
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4890
    .line 4891
    .line 4892
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z

    .line 4893
    .line 4894
    .line 4895
    move-result v0

    .line 4896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4897
    .line 4898
    .line 4899
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4900
    .line 4901
    .line 4902
    return v13

    .line 4903
    :pswitch_bf
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4904
    .line 4905
    .line 4906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4907
    .line 4908
    .line 4909
    move-result-object v0

    .line 4910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4911
    .line 4912
    .line 4913
    move-result v1

    .line 4914
    if-eqz v1, :cond_67

    .line 4915
    .line 4916
    move v12, v13

    .line 4917
    :cond_67
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->setImmersive(Landroid/os/IBinder;Z)V

    .line 4918
    .line 4919
    .line 4920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4921
    .line 4922
    .line 4923
    return v13

    .line 4924
    :pswitch_c0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4925
    .line 4926
    .line 4927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4928
    .line 4929
    .line 4930
    move-result-object v0

    .line 4931
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->isImmersive(Landroid/os/IBinder;)Z

    .line 4932
    .line 4933
    .line 4934
    move-result v0

    .line 4935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4936
    .line 4937
    .line 4938
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4939
    .line 4940
    .line 4941
    return v13

    .line 4942
    :pswitch_c1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4943
    .line 4944
    .line 4945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4946
    .line 4947
    .line 4948
    move-result-object v0

    .line 4949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4950
    .line 4951
    .line 4952
    move-result v2

    .line 4953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4954
    .line 4955
    .line 4956
    move-result v3

    .line 4957
    if-eqz v3, :cond_68

    .line 4958
    .line 4959
    sget-object v3, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4960
    .line 4961
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4962
    .line 4963
    .line 4964
    move-result-object v1

    .line 4965
    move-object v11, v1

    .line 4966
    check-cast v11, Landroid/os/StrictMode$ViolationInfo;

    .line 4967
    .line 4968
    :cond_68
    invoke-interface {v14, v0, v2, v11}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 4969
    .line 4970
    .line 4971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4972
    .line 4973
    .line 4974
    return v13

    .line 4975
    :pswitch_c2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4976
    .line 4977
    .line 4978
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->finishHeavyWeightApp()V

    .line 4979
    .line 4980
    .line 4981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4982
    .line 4983
    .line 4984
    return v13

    .line 4985
    :pswitch_c3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4986
    .line 4987
    .line 4988
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;

    .line 4989
    .line 4990
    .line 4991
    move-result-object v0

    .line 4992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4993
    .line 4994
    .line 4995
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4996
    .line 4997
    .line 4998
    return v13

    .line 4999
    :pswitch_c4
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 5000
    .line 5001
    .line 5002
    move-result-object v2

    .line 5003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5004
    .line 5005
    .line 5006
    move-result-object v3

    .line 5007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5008
    .line 5009
    .line 5010
    move-result v0

    .line 5011
    if-eqz v0, :cond_69

    .line 5012
    .line 5013
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5014
    .line 5015
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5016
    .line 5017
    .line 5018
    move-result-object v0

    .line 5019
    check-cast v0, Landroid/content/Intent;

    .line 5020
    .line 5021
    move-object v4, v0

    .line 5022
    goto :goto_2d

    .line 5023
    :cond_69
    move-object v4, v11

    .line 5024
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5025
    .line 5026
    .line 5027
    move-result-object v5

    .line 5028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5029
    .line 5030
    .line 5031
    move-result-object v6

    .line 5032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5033
    .line 5034
    .line 5035
    move-result-object v7

    .line 5036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5037
    .line 5038
    .line 5039
    move-result v8

    .line 5040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5041
    .line 5042
    .line 5043
    move-result v9

    .line 5044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5045
    .line 5046
    .line 5047
    move-result v0

    .line 5048
    if-eqz v0, :cond_6a

    .line 5049
    .line 5050
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5051
    .line 5052
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5053
    .line 5054
    .line 5055
    move-result-object v0

    .line 5056
    check-cast v0, Landroid/content/res/Configuration;

    .line 5057
    .line 5058
    move-object v10, v0

    .line 5059
    goto :goto_2e

    .line 5060
    :cond_6a
    move-object v10, v11

    .line 5061
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5062
    .line 5063
    .line 5064
    move-result v0

    .line 5065
    if-eqz v0, :cond_6b

    .line 5066
    .line 5067
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5068
    .line 5069
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5070
    .line 5071
    .line 5072
    move-result-object v0

    .line 5073
    check-cast v0, Landroid/os/Bundle;

    .line 5074
    .line 5075
    move-object v11, v0

    .line 5076
    :cond_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5077
    .line 5078
    .line 5079
    move-result v12

    .line 5080
    move-object/from16 v0, p0

    .line 5081
    .line 5082
    move-object v1, v2

    .line 5083
    move-object v2, v3

    .line 5084
    move-object v3, v4

    .line 5085
    move-object v4, v5

    .line 5086
    move-object v5, v6

    .line 5087
    move-object v6, v7

    .line 5088
    move v7, v8

    .line 5089
    move v8, v9

    .line 5090
    move-object v9, v10

    .line 5091
    move-object v10, v11

    .line 5092
    move v11, v12

    .line 5093
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    .line 5094
    .line 5095
    .line 5096
    move-result v0

    .line 5097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5098
    .line 5099
    .line 5100
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5101
    .line 5102
    .line 5103
    return v13

    .line 5104
    :pswitch_c5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5105
    .line 5106
    .line 5107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5108
    .line 5109
    .line 5110
    move-result-object v0

    .line 5111
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z

    .line 5112
    .line 5113
    .line 5114
    move-result v0

    .line 5115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5116
    .line 5117
    .line 5118
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5119
    .line 5120
    .line 5121
    return v13

    .line 5122
    :pswitch_c6
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 5123
    .line 5124
    .line 5125
    move-result-object v2

    .line 5126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5127
    .line 5128
    .line 5129
    move-result-object v3

    .line 5130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5131
    .line 5132
    .line 5133
    move-result v0

    .line 5134
    if-eqz v0, :cond_6c

    .line 5135
    .line 5136
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5137
    .line 5138
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5139
    .line 5140
    .line 5141
    move-result-object v0

    .line 5142
    check-cast v0, Landroid/content/Intent;

    .line 5143
    .line 5144
    move-object v4, v0

    .line 5145
    goto :goto_2f

    .line 5146
    :cond_6c
    move-object v4, v11

    .line 5147
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5148
    .line 5149
    .line 5150
    move-result-object v5

    .line 5151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5152
    .line 5153
    .line 5154
    move-result-object v6

    .line 5155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5156
    .line 5157
    .line 5158
    move-result-object v7

    .line 5159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5160
    .line 5161
    .line 5162
    move-result v8

    .line 5163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5164
    .line 5165
    .line 5166
    move-result v9

    .line 5167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5168
    .line 5169
    .line 5170
    move-result v0

    .line 5171
    if-eqz v0, :cond_6d

    .line 5172
    .line 5173
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5174
    .line 5175
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5176
    .line 5177
    .line 5178
    move-result-object v0

    .line 5179
    check-cast v0, Landroid/app/ProfilerInfo;

    .line 5180
    .line 5181
    move-object v10, v0

    .line 5182
    goto :goto_30

    .line 5183
    :cond_6d
    move-object v10, v11

    .line 5184
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5185
    .line 5186
    .line 5187
    move-result v0

    .line 5188
    if-eqz v0, :cond_6e

    .line 5189
    .line 5190
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5191
    .line 5192
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5193
    .line 5194
    .line 5195
    move-result-object v0

    .line 5196
    check-cast v0, Landroid/os/Bundle;

    .line 5197
    .line 5198
    move-object v11, v0

    .line 5199
    :cond_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5200
    .line 5201
    .line 5202
    move-result v16

    .line 5203
    move-object/from16 v0, p0

    .line 5204
    .line 5205
    move-object v1, v2

    .line 5206
    move-object v2, v3

    .line 5207
    move-object v3, v4

    .line 5208
    move-object v4, v5

    .line 5209
    move-object v5, v6

    .line 5210
    move-object v6, v7

    .line 5211
    move v7, v8

    .line 5212
    move v8, v9

    .line 5213
    move-object v9, v10

    .line 5214
    move-object v10, v11

    .line 5215
    move/from16 v11, v16

    .line 5216
    .line 5217
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    .line 5218
    .line 5219
    .line 5220
    move-result-object v0

    .line 5221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5222
    .line 5223
    .line 5224
    if-eqz v0, :cond_6f

    .line 5225
    .line 5226
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 5227
    .line 5228
    .line 5229
    invoke-virtual {v0, v15, v13}, Landroid/app/WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5230
    .line 5231
    .line 5232
    goto :goto_31

    .line 5233
    :cond_6f
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5234
    .line 5235
    .line 5236
    :goto_31
    return v13

    .line 5237
    :pswitch_c7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5238
    .line 5239
    .line 5240
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    .line 5241
    .line 5242
    .line 5243
    move-result v0

    .line 5244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5245
    .line 5246
    .line 5247
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5248
    .line 5249
    .line 5250
    return v13

    .line 5251
    :pswitch_c8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5252
    .line 5253
    .line 5254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5255
    .line 5256
    .line 5257
    move-result-object v0

    .line 5258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5259
    .line 5260
    .line 5261
    move-result v1

    .line 5262
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 5263
    .line 5264
    .line 5265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5266
    .line 5267
    .line 5268
    return v13

    .line 5269
    :pswitch_c9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5270
    .line 5271
    .line 5272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5273
    .line 5274
    .line 5275
    move-result-object v0

    .line 5276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5277
    .line 5278
    .line 5279
    move-result-object v2

    .line 5280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5281
    .line 5282
    .line 5283
    move-result v3

    .line 5284
    if-eqz v3, :cond_70

    .line 5285
    .line 5286
    move v12, v13

    .line 5287
    :cond_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5288
    .line 5289
    .line 5290
    move-result v3

    .line 5291
    if-eqz v3, :cond_71

    .line 5292
    .line 5293
    sget-object v3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5294
    .line 5295
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5296
    .line 5297
    .line 5298
    move-result-object v1

    .line 5299
    move-object v11, v1

    .line 5300
    check-cast v11, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 5301
    .line 5302
    :cond_71
    invoke-interface {v14, v0, v2, v12, v11}, Landroid/app/IActivityManager;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;)Z

    .line 5303
    .line 5304
    .line 5305
    move-result v0

    .line 5306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5307
    .line 5308
    .line 5309
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5310
    .line 5311
    .line 5312
    return v13

    .line 5313
    :pswitch_ca
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5314
    .line 5315
    .line 5316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5317
    .line 5318
    .line 5319
    move-result-object v0

    .line 5320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5321
    .line 5322
    .line 5323
    move-result-object v2

    .line 5324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5325
    .line 5326
    .line 5327
    move-result v3

    .line 5328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5329
    .line 5330
    .line 5331
    move-result v1

    .line 5332
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 5333
    .line 5334
    .line 5335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5336
    .line 5337
    .line 5338
    return v13

    .line 5339
    :pswitch_cb
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 5340
    .line 5341
    .line 5342
    move-result-object v2

    .line 5343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5344
    .line 5345
    .line 5346
    move-result-object v0

    .line 5347
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 5348
    .line 5349
    .line 5350
    move-result-object v3

    .line 5351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5352
    .line 5353
    .line 5354
    move-result-object v4

    .line 5355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5356
    .line 5357
    .line 5358
    move-result v0

    .line 5359
    if-eqz v0, :cond_72

    .line 5360
    .line 5361
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5362
    .line 5363
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5364
    .line 5365
    .line 5366
    move-result-object v0

    .line 5367
    check-cast v0, Landroid/content/Intent;

    .line 5368
    .line 5369
    move-object v5, v0

    .line 5370
    goto :goto_32

    .line 5371
    :cond_72
    move-object v5, v11

    .line 5372
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5373
    .line 5374
    .line 5375
    move-result-object v6

    .line 5376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5377
    .line 5378
    .line 5379
    move-result-object v7

    .line 5380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5381
    .line 5382
    .line 5383
    move-result-object v8

    .line 5384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5385
    .line 5386
    .line 5387
    move-result v9

    .line 5388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5389
    .line 5390
    .line 5391
    move-result v10

    .line 5392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5393
    .line 5394
    .line 5395
    move-result v12

    .line 5396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5397
    .line 5398
    .line 5399
    move-result v0

    .line 5400
    if-eqz v0, :cond_73

    .line 5401
    .line 5402
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5403
    .line 5404
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5405
    .line 5406
    .line 5407
    move-result-object v0

    .line 5408
    check-cast v0, Landroid/os/Bundle;

    .line 5409
    .line 5410
    move-object v11, v0

    .line 5411
    :cond_73
    move-object/from16 v0, p0

    .line 5412
    .line 5413
    move-object v1, v2

    .line 5414
    move-object v2, v3

    .line 5415
    move-object v3, v4

    .line 5416
    move-object v4, v5

    .line 5417
    move-object v5, v6

    .line 5418
    move-object v6, v7

    .line 5419
    move-object v7, v8

    .line 5420
    move v8, v9

    .line 5421
    move v9, v10

    .line 5422
    move v10, v12

    .line 5423
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 5424
    .line 5425
    .line 5426
    move-result v0

    .line 5427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5428
    .line 5429
    .line 5430
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5431
    .line 5432
    .line 5433
    return v13

    .line 5434
    :pswitch_cc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5435
    .line 5436
    .line 5437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5438
    .line 5439
    .line 5440
    move-result-object v0

    .line 5441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5442
    .line 5443
    .line 5444
    move-result v1

    .line 5445
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    .line 5446
    .line 5447
    .line 5448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5449
    .line 5450
    .line 5451
    return v13

    .line 5452
    :pswitch_cd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5453
    .line 5454
    .line 5455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 5456
    .line 5457
    .line 5458
    move-result-object v0

    .line 5459
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 5460
    .line 5461
    .line 5462
    move-result-object v0

    .line 5463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5464
    .line 5465
    .line 5466
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5467
    .line 5468
    .line 5469
    return v13

    .line 5470
    :pswitch_ce
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5471
    .line 5472
    .line 5473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5474
    .line 5475
    .line 5476
    move-result-object v0

    .line 5477
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V

    .line 5478
    .line 5479
    .line 5480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5481
    .line 5482
    .line 5483
    return v13

    .line 5484
    :pswitch_cf
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5485
    .line 5486
    .line 5487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5488
    .line 5489
    .line 5490
    move-result-object v0

    .line 5491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5492
    .line 5493
    .line 5494
    move-result v2

    .line 5495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5496
    .line 5497
    .line 5498
    move-result v3

    .line 5499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5500
    .line 5501
    .line 5502
    move-result-object v1

    .line 5503
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 5504
    .line 5505
    .line 5506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5507
    .line 5508
    .line 5509
    return v13

    .line 5510
    :pswitch_d0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5511
    .line 5512
    .line 5513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5514
    .line 5515
    .line 5516
    move-result-object v0

    .line 5517
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V

    .line 5518
    .line 5519
    .line 5520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5521
    .line 5522
    .line 5523
    return v13

    .line 5524
    :pswitch_d1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5525
    .line 5526
    .line 5527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5528
    .line 5529
    .line 5530
    move-result v2

    .line 5531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5532
    .line 5533
    .line 5534
    move-result v3

    .line 5535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5536
    .line 5537
    .line 5538
    move-result v4

    .line 5539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5540
    .line 5541
    .line 5542
    move-result v0

    .line 5543
    if-eqz v0, :cond_74

    .line 5544
    .line 5545
    move v5, v13

    .line 5546
    goto :goto_33

    .line 5547
    :cond_74
    move v5, v12

    .line 5548
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5549
    .line 5550
    .line 5551
    move-result v0

    .line 5552
    if-eqz v0, :cond_75

    .line 5553
    .line 5554
    move v12, v13

    .line 5555
    :cond_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5556
    .line 5557
    .line 5558
    move-result-object v6

    .line 5559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5560
    .line 5561
    .line 5562
    move-result-object v7

    .line 5563
    move-object/from16 v0, p0

    .line 5564
    .line 5565
    move v1, v2

    .line 5566
    move v2, v3

    .line 5567
    move v3, v4

    .line 5568
    move v4, v5

    .line 5569
    move v5, v12

    .line 5570
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 5571
    .line 5572
    .line 5573
    move-result v0

    .line 5574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5575
    .line 5576
    .line 5577
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5578
    .line 5579
    .line 5580
    return v13

    .line 5581
    :pswitch_d2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5582
    .line 5583
    .line 5584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5585
    .line 5586
    .line 5587
    move-result-object v0

    .line 5588
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 5589
    .line 5590
    .line 5591
    move-result-object v0

    .line 5592
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    .line 5593
    .line 5594
    .line 5595
    move-result v0

    .line 5596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5597
    .line 5598
    .line 5599
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5600
    .line 5601
    .line 5602
    return v13

    .line 5603
    :pswitch_d3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5604
    .line 5605
    .line 5606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5607
    .line 5608
    .line 5609
    move-result v0

    .line 5610
    if-eqz v0, :cond_76

    .line 5611
    .line 5612
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5613
    .line 5614
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5615
    .line 5616
    .line 5617
    move-result-object v0

    .line 5618
    move-object v11, v0

    .line 5619
    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 5620
    .line 5621
    :cond_76
    invoke-interface {v14, v11}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5622
    .line 5623
    .line 5624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5625
    .line 5626
    .line 5627
    return v13

    .line 5628
    :pswitch_d4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5629
    .line 5630
    .line 5631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5632
    .line 5633
    .line 5634
    move-result-object v0

    .line 5635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5636
    .line 5637
    .line 5638
    move-result-object v1

    .line 5639
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5640
    .line 5641
    .line 5642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5643
    .line 5644
    .line 5645
    return v13

    .line 5646
    :pswitch_d5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5647
    .line 5648
    .line 5649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5650
    .line 5651
    .line 5652
    move-result-object v0

    .line 5653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5654
    .line 5655
    .line 5656
    move-result v2

    .line 5657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5658
    .line 5659
    .line 5660
    move-result v1

    .line 5661
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    .line 5662
    .line 5663
    .line 5664
    move-result v0

    .line 5665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5666
    .line 5667
    .line 5668
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5669
    .line 5670
    .line 5671
    return v13

    .line 5672
    :pswitch_d6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5673
    .line 5674
    .line 5675
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 5676
    .line 5677
    .line 5678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5679
    .line 5680
    .line 5681
    return v13

    .line 5682
    :pswitch_d7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5683
    .line 5684
    .line 5685
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 5686
    .line 5687
    .line 5688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5689
    .line 5690
    .line 5691
    return v13

    .line 5692
    :pswitch_d8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5693
    .line 5694
    .line 5695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5696
    .line 5697
    .line 5698
    move-result v0

    .line 5699
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->shutdown(I)Z

    .line 5700
    .line 5701
    .line 5702
    move-result v0

    .line 5703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5704
    .line 5705
    .line 5706
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5707
    .line 5708
    .line 5709
    return v13

    .line 5710
    :pswitch_d9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5711
    .line 5712
    .line 5713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5714
    .line 5715
    .line 5716
    move-result-object v2

    .line 5717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5718
    .line 5719
    .line 5720
    move-result v3

    .line 5721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5722
    .line 5723
    .line 5724
    move-result v0

    .line 5725
    if-eqz v0, :cond_77

    .line 5726
    .line 5727
    move v12, v13

    .line 5728
    :cond_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5729
    .line 5730
    .line 5731
    move-result v0

    .line 5732
    if-eqz v0, :cond_78

    .line 5733
    .line 5734
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5735
    .line 5736
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5737
    .line 5738
    .line 5739
    move-result-object v0

    .line 5740
    check-cast v0, Landroid/app/ProfilerInfo;

    .line 5741
    .line 5742
    move-object v4, v0

    .line 5743
    goto :goto_34

    .line 5744
    :cond_78
    move-object v4, v11

    .line 5745
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5746
    .line 5747
    .line 5748
    move-result v5

    .line 5749
    move-object/from16 v0, p0

    .line 5750
    .line 5751
    move-object v1, v2

    .line 5752
    move v2, v3

    .line 5753
    move v3, v12

    .line 5754
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    .line 5755
    .line 5756
    .line 5757
    move-result v0

    .line 5758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5759
    .line 5760
    .line 5761
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5762
    .line 5763
    .line 5764
    return v13

    .line 5765
    :pswitch_da
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5766
    .line 5767
    .line 5768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5769
    .line 5770
    .line 5771
    move-result v0

    .line 5772
    if-eqz v0, :cond_79

    .line 5773
    .line 5774
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5775
    .line 5776
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5777
    .line 5778
    .line 5779
    move-result-object v0

    .line 5780
    move-object v11, v0

    .line 5781
    check-cast v11, Landroid/content/Intent;

    .line 5782
    .line 5783
    :cond_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5784
    .line 5785
    .line 5786
    move-result-object v0

    .line 5787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5788
    .line 5789
    .line 5790
    move-result-object v1

    .line 5791
    invoke-interface {v14, v11, v0, v1}, Landroid/app/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    .line 5792
    .line 5793
    .line 5794
    move-result-object v0

    .line 5795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5796
    .line 5797
    .line 5798
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5799
    .line 5800
    .line 5801
    return v13

    .line 5802
    :pswitch_db
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5803
    .line 5804
    .line 5805
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 5806
    .line 5807
    .line 5808
    move-result-object v0

    .line 5809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5810
    .line 5811
    .line 5812
    if-eqz v0, :cond_7a

    .line 5813
    .line 5814
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 5815
    .line 5816
    .line 5817
    invoke-virtual {v0, v15, v13}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5818
    .line 5819
    .line 5820
    goto :goto_35

    .line 5821
    :cond_7a
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5822
    .line 5823
    .line 5824
    :goto_35
    return v13

    .line 5825
    :pswitch_dc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5826
    .line 5827
    .line 5828
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 5829
    .line 5830
    .line 5831
    move-result-object v0

    .line 5832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5833
    .line 5834
    .line 5835
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5836
    .line 5837
    .line 5838
    return v13

    .line 5839
    :pswitch_dd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5840
    .line 5841
    .line 5842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5843
    .line 5844
    .line 5845
    move-result v0

    .line 5846
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    .line 5847
    .line 5848
    .line 5849
    move-result-object v0

    .line 5850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5851
    .line 5852
    .line 5853
    if-eqz v0, :cond_7b

    .line 5854
    .line 5855
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 5856
    .line 5857
    .line 5858
    invoke-virtual {v0, v15, v13}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5859
    .line 5860
    .line 5861
    goto :goto_36

    .line 5862
    :cond_7b
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5863
    .line 5864
    .line 5865
    :goto_36
    return v13

    .line 5866
    :pswitch_de
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5867
    .line 5868
    .line 5869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5870
    .line 5871
    .line 5872
    move-result v0

    .line 5873
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    .line 5874
    .line 5875
    .line 5876
    move-result-object v0

    .line 5877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5878
    .line 5879
    .line 5880
    if-eqz v0, :cond_7c

    .line 5881
    .line 5882
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 5883
    .line 5884
    .line 5885
    invoke-virtual {v0, v15, v13}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5886
    .line 5887
    .line 5888
    goto :goto_37

    .line 5889
    :cond_7c
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5890
    .line 5891
    .line 5892
    :goto_37
    return v13

    .line 5893
    :pswitch_df
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5894
    .line 5895
    .line 5896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5897
    .line 5898
    .line 5899
    move-result v0

    .line 5900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5901
    .line 5902
    .line 5903
    move-result v1

    .line 5904
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    .line 5905
    .line 5906
    .line 5907
    move-result-object v0

    .line 5908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5909
    .line 5910
    .line 5911
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5912
    .line 5913
    .line 5914
    return v13

    .line 5915
    :pswitch_e0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5916
    .line 5917
    .line 5918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 5919
    .line 5920
    .line 5921
    move-result-object v0

    .line 5922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5923
    .line 5924
    .line 5925
    move-result-object v2

    .line 5926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5927
    .line 5928
    .line 5929
    move-result v1

    .line 5930
    if-eqz v1, :cond_7d

    .line 5931
    .line 5932
    move v12, v13

    .line 5933
    :cond_7d
    invoke-interface {v14, v0, v2, v12}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    .line 5934
    .line 5935
    .line 5936
    move-result v0

    .line 5937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5938
    .line 5939
    .line 5940
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5941
    .line 5942
    .line 5943
    return v13

    .line 5944
    :pswitch_e1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5945
    .line 5946
    .line 5947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5948
    .line 5949
    .line 5950
    move-result-object v0

    .line 5951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5952
    .line 5953
    .line 5954
    move-result v1

    .line 5955
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 5956
    .line 5957
    .line 5958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5959
    .line 5960
    .line 5961
    return v13

    .line 5962
    :pswitch_e2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5963
    .line 5964
    .line 5965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5966
    .line 5967
    .line 5968
    move-result-object v0

    .line 5969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5970
    .line 5971
    .line 5972
    move-result-object v2

    .line 5973
    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    .line 5974
    .line 5975
    .line 5976
    move-result-object v2

    .line 5977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5978
    .line 5979
    .line 5980
    move-result v1

    .line 5981
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    .line 5982
    .line 5983
    .line 5984
    move-result v0

    .line 5985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5986
    .line 5987
    .line 5988
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5989
    .line 5990
    .line 5991
    return v13

    .line 5992
    :pswitch_e3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5993
    .line 5994
    .line 5995
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;

    .line 5996
    .line 5997
    .line 5998
    move-result-object v0

    .line 5999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6000
    .line 6001
    .line 6002
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6003
    .line 6004
    .line 6005
    return v13

    .line 6006
    :pswitch_e4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6007
    .line 6008
    .line 6009
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 6010
    .line 6011
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 6012
    .line 6013
    .line 6014
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 6015
    .line 6016
    .line 6017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6018
    .line 6019
    .line 6020
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 6021
    .line 6022
    .line 6023
    invoke-virtual {v0, v15, v13}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6024
    .line 6025
    .line 6026
    return v13

    .line 6027
    :pswitch_e5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6028
    .line 6029
    .line 6030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6031
    .line 6032
    .line 6033
    move-result-object v0

    .line 6034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6035
    .line 6036
    .line 6037
    move-result v1

    .line 6038
    if-eqz v1, :cond_7e

    .line 6039
    .line 6040
    move v12, v13

    .line 6041
    :cond_7e
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    .line 6042
    .line 6043
    .line 6044
    move-result v0

    .line 6045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6046
    .line 6047
    .line 6048
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6049
    .line 6050
    .line 6051
    return v13

    .line 6052
    :pswitch_e6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6053
    .line 6054
    .line 6055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6056
    .line 6057
    .line 6058
    move-result v0

    .line 6059
    if-eqz v0, :cond_7f

    .line 6060
    .line 6061
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6062
    .line 6063
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6064
    .line 6065
    .line 6066
    move-result-object v0

    .line 6067
    check-cast v0, Landroid/content/ComponentName;

    .line 6068
    .line 6069
    move-object v2, v0

    .line 6070
    goto :goto_38

    .line 6071
    :cond_7f
    move-object v2, v11

    .line 6072
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6073
    .line 6074
    .line 6075
    move-result-object v3

    .line 6076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6077
    .line 6078
    .line 6079
    move-result v4

    .line 6080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6081
    .line 6082
    .line 6083
    move-result v0

    .line 6084
    if-eqz v0, :cond_80

    .line 6085
    .line 6086
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6087
    .line 6088
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6089
    .line 6090
    .line 6091
    move-result-object v0

    .line 6092
    check-cast v0, Landroid/app/Notification;

    .line 6093
    .line 6094
    move-object v11, v0

    .line 6095
    :cond_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6096
    .line 6097
    .line 6098
    move-result v5

    .line 6099
    move-object/from16 v0, p0

    .line 6100
    .line 6101
    move-object v1, v2

    .line 6102
    move-object v2, v3

    .line 6103
    move v3, v4

    .line 6104
    move-object v4, v11

    .line 6105
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 6106
    .line 6107
    .line 6108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6109
    .line 6110
    .line 6111
    return v13

    .line 6112
    :pswitch_e7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6113
    .line 6114
    .line 6115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6116
    .line 6117
    .line 6118
    move-result-object v0

    .line 6119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6120
    .line 6121
    .line 6122
    move-result v2

    .line 6123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6124
    .line 6125
    .line 6126
    move-result v3

    .line 6127
    if-eqz v3, :cond_81

    .line 6128
    .line 6129
    move v12, v13

    .line 6130
    :cond_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6131
    .line 6132
    .line 6133
    move-result-object v1

    .line 6134
    invoke-interface {v14, v0, v2, v12, v1}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 6135
    .line 6136
    .line 6137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6138
    .line 6139
    .line 6140
    return v13

    .line 6141
    :pswitch_e8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6142
    .line 6143
    .line 6144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6145
    .line 6146
    .line 6147
    move-result-object v0

    .line 6148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6149
    .line 6150
    .line 6151
    move-result v2

    .line 6152
    if-eqz v2, :cond_82

    .line 6153
    .line 6154
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6155
    .line 6156
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6157
    .line 6158
    .line 6159
    move-result-object v2

    .line 6160
    move-object v11, v2

    .line 6161
    check-cast v11, Landroid/content/Intent;

    .line 6162
    .line 6163
    :cond_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6164
    .line 6165
    .line 6166
    move-result v1

    .line 6167
    if-eqz v1, :cond_83

    .line 6168
    .line 6169
    move v12, v13

    .line 6170
    :cond_83
    invoke-interface {v14, v0, v11, v12}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 6171
    .line 6172
    .line 6173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6174
    .line 6175
    .line 6176
    return v13

    .line 6177
    :pswitch_e9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6178
    .line 6179
    .line 6180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6181
    .line 6182
    .line 6183
    move-result-object v0

    .line 6184
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I

    .line 6185
    .line 6186
    .line 6187
    move-result v0

    .line 6188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6189
    .line 6190
    .line 6191
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6192
    .line 6193
    .line 6194
    return v13

    .line 6195
    :pswitch_ea
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6196
    .line 6197
    .line 6198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6199
    .line 6200
    .line 6201
    move-result-object v0

    .line 6202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6203
    .line 6204
    .line 6205
    move-result v1

    .line 6206
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 6207
    .line 6208
    .line 6209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6210
    .line 6211
    .line 6212
    return v13

    .line 6213
    :pswitch_eb
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6214
    .line 6215
    .line 6216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6217
    .line 6218
    .line 6219
    move-result-object v0

    .line 6220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6221
    .line 6222
    .line 6223
    move-result v1

    .line 6224
    if-eqz v1, :cond_84

    .line 6225
    .line 6226
    move v12, v13

    .line 6227
    :cond_84
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 6228
    .line 6229
    .line 6230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6231
    .line 6232
    .line 6233
    return v13

    .line 6234
    :pswitch_ec
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6235
    .line 6236
    .line 6237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6238
    .line 6239
    .line 6240
    move-result-object v0

    .line 6241
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 6242
    .line 6243
    .line 6244
    move-result-object v0

    .line 6245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6246
    .line 6247
    .line 6248
    move-result v2

    .line 6249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6250
    .line 6251
    .line 6252
    move-result-object v3

    .line 6253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6254
    .line 6255
    .line 6256
    move-result-object v1

    .line 6257
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 6258
    .line 6259
    .line 6260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6261
    .line 6262
    .line 6263
    return v13

    .line 6264
    :pswitch_ed
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6265
    .line 6266
    .line 6267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6268
    .line 6269
    .line 6270
    move-result-object v0

    .line 6271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6272
    .line 6273
    .line 6274
    move-result v2

    .line 6275
    if-eqz v2, :cond_85

    .line 6276
    .line 6277
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6278
    .line 6279
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6280
    .line 6281
    .line 6282
    move-result-object v2

    .line 6283
    check-cast v2, Landroid/content/Intent;

    .line 6284
    .line 6285
    goto :goto_39

    .line 6286
    :cond_85
    move-object v2, v11

    .line 6287
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6288
    .line 6289
    .line 6290
    move-result v3

    .line 6291
    if-eqz v3, :cond_86

    .line 6292
    .line 6293
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6294
    .line 6295
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6296
    .line 6297
    .line 6298
    move-result-object v1

    .line 6299
    move-object v11, v1

    .line 6300
    check-cast v11, Landroid/os/Bundle;

    .line 6301
    .line 6302
    :cond_86
    invoke-interface {v14, v0, v2, v11}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    .line 6303
    .line 6304
    .line 6305
    move-result v0

    .line 6306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6307
    .line 6308
    .line 6309
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6310
    .line 6311
    .line 6312
    return v13

    .line 6313
    :pswitch_ee
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6314
    .line 6315
    .line 6316
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->enterSafeMode()V

    .line 6317
    .line 6318
    .line 6319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6320
    .line 6321
    .line 6322
    return v13

    .line 6323
    :pswitch_ef
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6324
    .line 6325
    .line 6326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6327
    .line 6328
    .line 6329
    move-result-object v0

    .line 6330
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 6331
    .line 6332
    .line 6333
    move-result-object v0

    .line 6334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6335
    .line 6336
    .line 6337
    move-result-object v1

    .line 6338
    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    .line 6339
    .line 6340
    .line 6341
    move-result-object v1

    .line 6342
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 6343
    .line 6344
    .line 6345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6346
    .line 6347
    .line 6348
    return v13

    .line 6349
    :pswitch_f0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6350
    .line 6351
    .line 6352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6353
    .line 6354
    .line 6355
    move-result-object v0

    .line 6356
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 6357
    .line 6358
    .line 6359
    move-result-object v0

    .line 6360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6361
    .line 6362
    .line 6363
    move-result-object v1

    .line 6364
    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    .line 6365
    .line 6366
    .line 6367
    move-result-object v1

    .line 6368
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 6369
    .line 6370
    .line 6371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6372
    .line 6373
    .line 6374
    return v13

    .line 6375
    :pswitch_f1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6376
    .line 6377
    .line 6378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6379
    .line 6380
    .line 6381
    move-result-object v0

    .line 6382
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 6383
    .line 6384
    .line 6385
    move-result-object v0

    .line 6386
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    .line 6387
    .line 6388
    .line 6389
    move-result-object v0

    .line 6390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6391
    .line 6392
    .line 6393
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6394
    .line 6395
    .line 6396
    return v13

    .line 6397
    :pswitch_f2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6398
    .line 6399
    .line 6400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6401
    .line 6402
    .line 6403
    move-result-object v0

    .line 6404
    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    .line 6405
    .line 6406
    .line 6407
    move-result-object v0

    .line 6408
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 6409
    .line 6410
    .line 6411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6412
    .line 6413
    .line 6414
    return v13

    .line 6415
    :pswitch_f3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6416
    .line 6417
    .line 6418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6419
    .line 6420
    .line 6421
    move-result v2

    .line 6422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6423
    .line 6424
    .line 6425
    move-result-object v3

    .line 6426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6427
    .line 6428
    .line 6429
    move-result-object v4

    .line 6430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6431
    .line 6432
    .line 6433
    move-result-object v5

    .line 6434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6435
    .line 6436
    .line 6437
    move-result v6

    .line 6438
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6439
    .line 6440
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 6441
    .line 6442
    .line 6443
    move-result-object v0

    .line 6444
    move-object v7, v0

    .line 6445
    check-cast v7, [Landroid/content/Intent;

    .line 6446
    .line 6447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 6448
    .line 6449
    .line 6450
    move-result-object v8

    .line 6451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6452
    .line 6453
    .line 6454
    move-result v9

    .line 6455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6456
    .line 6457
    .line 6458
    move-result v0

    .line 6459
    if-eqz v0, :cond_87

    .line 6460
    .line 6461
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6462
    .line 6463
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6464
    .line 6465
    .line 6466
    move-result-object v0

    .line 6467
    check-cast v0, Landroid/os/Bundle;

    .line 6468
    .line 6469
    move-object v10, v0

    .line 6470
    goto :goto_3a

    .line 6471
    :cond_87
    move-object v10, v11

    .line 6472
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6473
    .line 6474
    .line 6475
    move-result v12

    .line 6476
    move-object/from16 v0, p0

    .line 6477
    .line 6478
    move v1, v2

    .line 6479
    move-object v2, v3

    .line 6480
    move-object v3, v4

    .line 6481
    move-object v4, v5

    .line 6482
    move v5, v6

    .line 6483
    move-object v6, v7

    .line 6484
    move-object v7, v8

    .line 6485
    move v8, v9

    .line 6486
    move-object v9, v10

    .line 6487
    move v10, v12

    .line 6488
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    .line 6489
    .line 6490
    .line 6491
    move-result-object v0

    .line 6492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6493
    .line 6494
    .line 6495
    if-eqz v0, :cond_88

    .line 6496
    .line 6497
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 6498
    .line 6499
    .line 6500
    move-result-object v11

    .line 6501
    :cond_88
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6502
    .line 6503
    .line 6504
    return v13

    .line 6505
    :pswitch_f4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6506
    .line 6507
    .line 6508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6509
    .line 6510
    .line 6511
    move-result-object v0

    .line 6512
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V

    .line 6513
    .line 6514
    .line 6515
    return v13

    .line 6516
    :pswitch_f5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6517
    .line 6518
    .line 6519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6520
    .line 6521
    .line 6522
    move-result-object v0

    .line 6523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6524
    .line 6525
    .line 6526
    move-result v2

    .line 6527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6528
    .line 6529
    .line 6530
    move-result v3

    .line 6531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6532
    .line 6533
    .line 6534
    move-result v1

    .line 6535
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 6536
    .line 6537
    .line 6538
    return v13

    .line 6539
    :pswitch_f6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6540
    .line 6541
    .line 6542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6543
    .line 6544
    .line 6545
    move-result v0

    .line 6546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6547
    .line 6548
    .line 6549
    move-result v2

    .line 6550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6551
    .line 6552
    .line 6553
    move-result v1

    .line 6554
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 6555
    .line 6556
    .line 6557
    move-result-object v0

    .line 6558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6559
    .line 6560
    .line 6561
    if-eqz v0, :cond_89

    .line 6562
    .line 6563
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 6564
    .line 6565
    .line 6566
    invoke-virtual {v0, v15, v13}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6567
    .line 6568
    .line 6569
    goto :goto_3b

    .line 6570
    :cond_89
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 6571
    .line 6572
    .line 6573
    :goto_3b
    return v13

    .line 6574
    :pswitch_f7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6575
    .line 6576
    .line 6577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6578
    .line 6579
    .line 6580
    move-result v0

    .line 6581
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    .line 6582
    .line 6583
    .line 6584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6585
    .line 6586
    .line 6587
    return v13

    .line 6588
    :pswitch_f8
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 6589
    .line 6590
    .line 6591
    move-result-object v0

    .line 6592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6593
    .line 6594
    .line 6595
    move-result v1

    .line 6596
    if-eqz v1, :cond_8a

    .line 6597
    .line 6598
    move v12, v13

    .line 6599
    :cond_8a
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 6600
    .line 6601
    .line 6602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6603
    .line 6604
    .line 6605
    return v13

    .line 6606
    :pswitch_f9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6607
    .line 6608
    .line 6609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6610
    .line 6611
    .line 6612
    move-result-object v0

    .line 6613
    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    .line 6614
    .line 6615
    .line 6616
    move-result-object v0

    .line 6617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6618
    .line 6619
    .line 6620
    move-result v1

    .line 6621
    if-eqz v1, :cond_8b

    .line 6622
    .line 6623
    move v12, v13

    .line 6624
    :cond_8b
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 6625
    .line 6626
    .line 6627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6628
    .line 6629
    .line 6630
    return v13

    .line 6631
    :pswitch_fa
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 6632
    .line 6633
    .line 6634
    move-result-object v2

    .line 6635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6636
    .line 6637
    .line 6638
    move-result-object v3

    .line 6639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6640
    .line 6641
    .line 6642
    move-result v0

    .line 6643
    if-eqz v0, :cond_8c

    .line 6644
    .line 6645
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6646
    .line 6647
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6648
    .line 6649
    .line 6650
    move-result-object v0

    .line 6651
    check-cast v0, Landroid/net/Uri;

    .line 6652
    .line 6653
    move-object v11, v0

    .line 6654
    :cond_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6655
    .line 6656
    .line 6657
    move-result v4

    .line 6658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6659
    .line 6660
    .line 6661
    move-result v5

    .line 6662
    move-object/from16 v0, p0

    .line 6663
    .line 6664
    move-object v1, v2

    .line 6665
    move-object v2, v3

    .line 6666
    move-object v3, v11

    .line 6667
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 6668
    .line 6669
    .line 6670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6671
    .line 6672
    .line 6673
    return v13

    .line 6674
    :pswitch_fb
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 6675
    .line 6676
    .line 6677
    move-result-object v2

    .line 6678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6679
    .line 6680
    .line 6681
    move-result-object v3

    .line 6682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6683
    .line 6684
    .line 6685
    move-result v0

    .line 6686
    if-eqz v0, :cond_8d

    .line 6687
    .line 6688
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6689
    .line 6690
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6691
    .line 6692
    .line 6693
    move-result-object v0

    .line 6694
    check-cast v0, Landroid/net/Uri;

    .line 6695
    .line 6696
    move-object v11, v0

    .line 6697
    :cond_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6698
    .line 6699
    .line 6700
    move-result v4

    .line 6701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6702
    .line 6703
    .line 6704
    move-result v5

    .line 6705
    move-object/from16 v0, p0

    .line 6706
    .line 6707
    move-object v1, v2

    .line 6708
    move-object v2, v3

    .line 6709
    move-object v3, v11

    .line 6710
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 6711
    .line 6712
    .line 6713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6714
    .line 6715
    .line 6716
    return v13

    .line 6717
    :pswitch_fc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6718
    .line 6719
    .line 6720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6721
    .line 6722
    .line 6723
    move-result v0

    .line 6724
    if-eqz v0, :cond_8e

    .line 6725
    .line 6726
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6727
    .line 6728
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6729
    .line 6730
    .line 6731
    move-result-object v0

    .line 6732
    check-cast v0, Landroid/net/Uri;

    .line 6733
    .line 6734
    move-object v11, v0

    .line 6735
    :cond_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6736
    .line 6737
    .line 6738
    move-result v2

    .line 6739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6740
    .line 6741
    .line 6742
    move-result v3

    .line 6743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6744
    .line 6745
    .line 6746
    move-result v4

    .line 6747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6748
    .line 6749
    .line 6750
    move-result v5

    .line 6751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6752
    .line 6753
    .line 6754
    move-result-object v6

    .line 6755
    move-object/from16 v0, p0

    .line 6756
    .line 6757
    move-object v1, v11

    .line 6758
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    .line 6759
    .line 6760
    .line 6761
    move-result v0

    .line 6762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6763
    .line 6764
    .line 6765
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6766
    .line 6767
    .line 6768
    return v13

    .line 6769
    :pswitch_fd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6770
    .line 6771
    .line 6772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6773
    .line 6774
    .line 6775
    move-result-object v0

    .line 6776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6777
    .line 6778
    .line 6779
    move-result v2

    .line 6780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6781
    .line 6782
    .line 6783
    move-result v1

    .line 6784
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    .line 6785
    .line 6786
    .line 6787
    move-result v0

    .line 6788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6789
    .line 6790
    .line 6791
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6792
    .line 6793
    .line 6794
    return v13

    .line 6795
    :pswitch_fe
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6796
    .line 6797
    .line 6798
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getProcessLimit()I

    .line 6799
    .line 6800
    .line 6801
    move-result v0

    .line 6802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6803
    .line 6804
    .line 6805
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6806
    .line 6807
    .line 6808
    return v13

    .line 6809
    :pswitch_ff
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6810
    .line 6811
    .line 6812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6813
    .line 6814
    .line 6815
    move-result v0

    .line 6816
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 6817
    .line 6818
    .line 6819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6820
    .line 6821
    .line 6822
    return v13

    .line 6823
    :pswitch_100
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6824
    .line 6825
    .line 6826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6827
    .line 6828
    .line 6829
    move-result-object v0

    .line 6830
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    .line 6831
    .line 6832
    .line 6833
    move-result-object v0

    .line 6834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6835
    .line 6836
    .line 6837
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6838
    .line 6839
    .line 6840
    return v13

    .line 6841
    :pswitch_101
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6842
    .line 6843
    .line 6844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6845
    .line 6846
    .line 6847
    move-result-object v0

    .line 6848
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    .line 6849
    .line 6850
    .line 6851
    move-result-object v0

    .line 6852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6853
    .line 6854
    .line 6855
    if-eqz v0, :cond_8f

    .line 6856
    .line 6857
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 6858
    .line 6859
    .line 6860
    invoke-virtual {v0, v15, v13}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6861
    .line 6862
    .line 6863
    goto :goto_3c

    .line 6864
    :cond_8f
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 6865
    .line 6866
    .line 6867
    :goto_3c
    return v13

    .line 6868
    :pswitch_102
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6869
    .line 6870
    .line 6871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6872
    .line 6873
    .line 6874
    move-result v0

    .line 6875
    if-eqz v0, :cond_90

    .line 6876
    .line 6877
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6878
    .line 6879
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6880
    .line 6881
    .line 6882
    move-result-object v0

    .line 6883
    move-object v11, v0

    .line 6884
    check-cast v11, Landroid/content/ComponentName;

    .line 6885
    .line 6886
    :cond_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 6887
    .line 6888
    .line 6889
    move-result-object v0

    .line 6890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6891
    .line 6892
    .line 6893
    move-result v1

    .line 6894
    invoke-interface {v14, v11, v0, v1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    .line 6895
    .line 6896
    .line 6897
    move-result v0

    .line 6898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6899
    .line 6900
    .line 6901
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6902
    .line 6903
    .line 6904
    return v13

    .line 6905
    :pswitch_103
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6906
    .line 6907
    .line 6908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6909
    .line 6910
    .line 6911
    move-result v0

    .line 6912
    if-eqz v0, :cond_91

    .line 6913
    .line 6914
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6915
    .line 6916
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6917
    .line 6918
    .line 6919
    move-result-object v0

    .line 6920
    move-object v11, v0

    .line 6921
    check-cast v11, Landroid/content/res/Configuration;

    .line 6922
    .line 6923
    :cond_91
    invoke-interface {v14, v11}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 6924
    .line 6925
    .line 6926
    move-result v0

    .line 6927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6928
    .line 6929
    .line 6930
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6931
    .line 6932
    .line 6933
    return v13

    .line 6934
    :pswitch_104
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6935
    .line 6936
    .line 6937
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 6938
    .line 6939
    .line 6940
    move-result-object v0

    .line 6941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6942
    .line 6943
    .line 6944
    if-eqz v0, :cond_92

    .line 6945
    .line 6946
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 6947
    .line 6948
    .line 6949
    invoke-virtual {v0, v15, v13}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6950
    .line 6951
    .line 6952
    goto :goto_3d

    .line 6953
    :cond_92
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 6954
    .line 6955
    .line 6956
    :goto_3d
    return v13

    .line 6957
    :pswitch_105
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 6958
    .line 6959
    .line 6960
    move-result-object v0

    .line 6961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6962
    .line 6963
    .line 6964
    move-result v2

    .line 6965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6966
    .line 6967
    .line 6968
    move-result v3

    .line 6969
    if-eqz v3, :cond_93

    .line 6970
    .line 6971
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6972
    .line 6973
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6974
    .line 6975
    .line 6976
    move-result-object v1

    .line 6977
    move-object v11, v1

    .line 6978
    check-cast v11, Landroid/os/Bundle;

    .line 6979
    .line 6980
    :cond_93
    invoke-interface {v14, v0, v2, v11}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 6981
    .line 6982
    .line 6983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6984
    .line 6985
    .line 6986
    return v13

    .line 6987
    :pswitch_106
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 6988
    .line 6989
    .line 6990
    move-result-object v0

    .line 6991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 6992
    .line 6993
    .line 6994
    move-result v2

    .line 6995
    if-eqz v2, :cond_94

    .line 6996
    .line 6997
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6998
    .line 6999
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7000
    .line 7001
    .line 7002
    move-result-object v1

    .line 7003
    move-object v11, v1

    .line 7004
    check-cast v11, Landroid/os/Bundle;

    .line 7005
    .line 7006
    :cond_94
    invoke-interface {v14, v0, v11}, Landroid/app/IActivityManager;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 7007
    .line 7008
    .line 7009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7010
    .line 7011
    .line 7012
    return v13

    .line 7013
    :pswitch_107
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7014
    .line 7015
    .line 7016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7017
    .line 7018
    .line 7019
    move-result v0

    .line 7020
    if-eqz v0, :cond_95

    .line 7021
    .line 7022
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7023
    .line 7024
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7025
    .line 7026
    .line 7027
    move-result-object v0

    .line 7028
    check-cast v0, Landroid/content/ComponentName;

    .line 7029
    .line 7030
    move-object v2, v0

    .line 7031
    goto :goto_3e

    .line 7032
    :cond_95
    move-object v2, v11

    .line 7033
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7034
    .line 7035
    .line 7036
    move-result-object v3

    .line 7037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7038
    .line 7039
    .line 7040
    move-result v4

    .line 7041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7042
    .line 7043
    .line 7044
    move-result v0

    .line 7045
    if-eqz v0, :cond_96

    .line 7046
    .line 7047
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7048
    .line 7049
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7050
    .line 7051
    .line 7052
    move-result-object v0

    .line 7053
    check-cast v0, Landroid/os/Bundle;

    .line 7054
    .line 7055
    move-object v11, v0

    .line 7056
    :cond_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7057
    .line 7058
    .line 7059
    move-result-object v0

    .line 7060
    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    .line 7061
    .line 7062
    .line 7063
    move-result-object v5

    .line 7064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7065
    .line 7066
    .line 7067
    move-result-object v0

    .line 7068
    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    .line 7069
    .line 7070
    .line 7071
    move-result-object v6

    .line 7072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7073
    .line 7074
    .line 7075
    move-result v7

    .line 7076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7077
    .line 7078
    .line 7079
    move-result-object v8

    .line 7080
    move-object/from16 v0, p0

    .line 7081
    .line 7082
    move-object v1, v2

    .line 7083
    move-object v2, v3

    .line 7084
    move v3, v4

    .line 7085
    move-object v4, v11

    .line 7086
    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    .line 7087
    .line 7088
    .line 7089
    move-result v0

    .line 7090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7091
    .line 7092
    .line 7093
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7094
    .line 7095
    .line 7096
    return v13

    .line 7097
    :pswitch_108
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7098
    .line 7099
    .line 7100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7101
    .line 7102
    .line 7103
    move-result v0

    .line 7104
    if-eqz v0, :cond_97

    .line 7105
    .line 7106
    move v12, v13

    .line 7107
    :cond_97
    invoke-interface {v14, v12}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V

    .line 7108
    .line 7109
    .line 7110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7111
    .line 7112
    .line 7113
    return v13

    .line 7114
    :pswitch_109
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7115
    .line 7116
    .line 7117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7118
    .line 7119
    .line 7120
    move-result-object v0

    .line 7121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7122
    .line 7123
    .line 7124
    move-result v2

    .line 7125
    if-eqz v2, :cond_98

    .line 7126
    .line 7127
    move v2, v13

    .line 7128
    goto :goto_3f

    .line 7129
    :cond_98
    move v2, v12

    .line 7130
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7131
    .line 7132
    .line 7133
    move-result v1

    .line 7134
    if-eqz v1, :cond_99

    .line 7135
    .line 7136
    move v12, v13

    .line 7137
    :cond_99
    invoke-interface {v14, v0, v2, v12}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 7138
    .line 7139
    .line 7140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7141
    .line 7142
    .line 7143
    return v13

    .line 7144
    :pswitch_10a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7145
    .line 7146
    .line 7147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7148
    .line 7149
    .line 7150
    move-result-object v0

    .line 7151
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->activityResumed(Landroid/os/IBinder;)V

    .line 7152
    .line 7153
    .line 7154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7155
    .line 7156
    .line 7157
    return v13

    .line 7158
    :pswitch_10b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7159
    .line 7160
    .line 7161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7162
    .line 7163
    .line 7164
    move-result-object v0

    .line 7165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7166
    .line 7167
    .line 7168
    move-result v2

    .line 7169
    if-eqz v2, :cond_9a

    .line 7170
    .line 7171
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7172
    .line 7173
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7174
    .line 7175
    .line 7176
    move-result-object v2

    .line 7177
    move-object v11, v2

    .line 7178
    check-cast v11, Landroid/content/Intent;

    .line 7179
    .line 7180
    :cond_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7181
    .line 7182
    .line 7183
    move-result-object v1

    .line 7184
    invoke-interface {v14, v0, v11, v1}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 7185
    .line 7186
    .line 7187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7188
    .line 7189
    .line 7190
    return v13

    .line 7191
    :pswitch_10c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7192
    .line 7193
    .line 7194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7195
    .line 7196
    .line 7197
    move-result-object v0

    .line 7198
    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    .line 7199
    .line 7200
    .line 7201
    move-result-object v0

    .line 7202
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z

    .line 7203
    .line 7204
    .line 7205
    move-result v0

    .line 7206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7207
    .line 7208
    .line 7209
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7210
    .line 7211
    .line 7212
    return v13

    .line 7213
    :pswitch_10d
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 7214
    .line 7215
    .line 7216
    move-result-object v2

    .line 7217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7218
    .line 7219
    .line 7220
    move-result-object v3

    .line 7221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7222
    .line 7223
    .line 7224
    move-result v0

    .line 7225
    if-eqz v0, :cond_9b

    .line 7226
    .line 7227
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7228
    .line 7229
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7230
    .line 7231
    .line 7232
    move-result-object v0

    .line 7233
    check-cast v0, Landroid/content/Intent;

    .line 7234
    .line 7235
    move-object v11, v0

    .line 7236
    :cond_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7237
    .line 7238
    .line 7239
    move-result-object v4

    .line 7240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7241
    .line 7242
    .line 7243
    move-result-object v0

    .line 7244
    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    .line 7245
    .line 7246
    .line 7247
    move-result-object v5

    .line 7248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7249
    .line 7250
    .line 7251
    move-result v6

    .line 7252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7253
    .line 7254
    .line 7255
    move-result-object v7

    .line 7256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7257
    .line 7258
    .line 7259
    move-result v8

    .line 7260
    move-object/from16 v0, p0

    .line 7261
    .line 7262
    move-object v1, v2

    .line 7263
    move-object v2, v3

    .line 7264
    move-object v3, v11

    .line 7265
    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    .line 7266
    .line 7267
    .line 7268
    move-result v0

    .line 7269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7270
    .line 7271
    .line 7272
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7273
    .line 7274
    .line 7275
    return v13

    .line 7276
    :pswitch_10e
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 7277
    .line 7278
    .line 7279
    move-result-object v0

    .line 7280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7281
    .line 7282
    .line 7283
    move-result v2

    .line 7284
    if-eqz v2, :cond_9c

    .line 7285
    .line 7286
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7287
    .line 7288
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7289
    .line 7290
    .line 7291
    move-result-object v2

    .line 7292
    move-object v11, v2

    .line 7293
    check-cast v11, Landroid/content/Intent;

    .line 7294
    .line 7295
    :cond_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7296
    .line 7297
    .line 7298
    move-result-object v2

    .line 7299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7300
    .line 7301
    .line 7302
    move-result v1

    .line 7303
    invoke-interface {v14, v0, v11, v2, v1}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    .line 7304
    .line 7305
    .line 7306
    move-result v0

    .line 7307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7308
    .line 7309
    .line 7310
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7311
    .line 7312
    .line 7313
    return v13

    .line 7314
    :pswitch_10f
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 7315
    .line 7316
    .line 7317
    move-result-object v2

    .line 7318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7319
    .line 7320
    .line 7321
    move-result v0

    .line 7322
    if-eqz v0, :cond_9d

    .line 7323
    .line 7324
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7325
    .line 7326
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7327
    .line 7328
    .line 7329
    move-result-object v0

    .line 7330
    check-cast v0, Landroid/content/Intent;

    .line 7331
    .line 7332
    move-object v11, v0

    .line 7333
    :cond_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7334
    .line 7335
    .line 7336
    move-result-object v3

    .line 7337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7338
    .line 7339
    .line 7340
    move-result v0

    .line 7341
    if-eqz v0, :cond_9e

    .line 7342
    .line 7343
    move v4, v13

    .line 7344
    goto :goto_40

    .line 7345
    :cond_9e
    move v4, v12

    .line 7346
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7347
    .line 7348
    .line 7349
    move-result-object v5

    .line 7350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7351
    .line 7352
    .line 7353
    move-result v6

    .line 7354
    move-object/from16 v0, p0

    .line 7355
    .line 7356
    move-object v1, v2

    .line 7357
    move-object v2, v11

    .line 7358
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    .line 7359
    .line 7360
    .line 7361
    move-result-object v0

    .line 7362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7363
    .line 7364
    .line 7365
    if-eqz v0, :cond_9f

    .line 7366
    .line 7367
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 7368
    .line 7369
    .line 7370
    invoke-virtual {v0, v15, v13}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7371
    .line 7372
    .line 7373
    goto :goto_41

    .line 7374
    :cond_9f
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 7375
    .line 7376
    .line 7377
    :goto_41
    return v13

    .line 7378
    :pswitch_110
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7379
    .line 7380
    .line 7381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7382
    .line 7383
    .line 7384
    move-result v0

    .line 7385
    if-eqz v0, :cond_a0

    .line 7386
    .line 7387
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7388
    .line 7389
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7390
    .line 7391
    .line 7392
    move-result-object v0

    .line 7393
    move-object v11, v0

    .line 7394
    check-cast v11, Landroid/content/ComponentName;

    .line 7395
    .line 7396
    :cond_a0
    invoke-interface {v14, v11}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    .line 7397
    .line 7398
    .line 7399
    move-result-object v0

    .line 7400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7401
    .line 7402
    .line 7403
    if-eqz v0, :cond_a1

    .line 7404
    .line 7405
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 7406
    .line 7407
    .line 7408
    invoke-virtual {v0, v15, v13}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7409
    .line 7410
    .line 7411
    goto :goto_42

    .line 7412
    :cond_a1
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 7413
    .line 7414
    .line 7415
    :goto_42
    return v13

    .line 7416
    :pswitch_111
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7417
    .line 7418
    .line 7419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7420
    .line 7421
    .line 7422
    move-result-object v0

    .line 7423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7424
    .line 7425
    .line 7426
    move-result-object v2

    .line 7427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7428
    .line 7429
    .line 7430
    move-result v1

    .line 7431
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 7432
    .line 7433
    .line 7434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7435
    .line 7436
    .line 7437
    return v13

    .line 7438
    :pswitch_112
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7439
    .line 7440
    .line 7441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7442
    .line 7443
    .line 7444
    move-result-object v0

    .line 7445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7446
    .line 7447
    .line 7448
    move-result v2

    .line 7449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7450
    .line 7451
    .line 7452
    move-result v1

    .line 7453
    invoke-interface {v14, v0, v2, v1}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z

    .line 7454
    .line 7455
    .line 7456
    move-result v0

    .line 7457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7458
    .line 7459
    .line 7460
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7461
    .line 7462
    .line 7463
    return v13

    .line 7464
    :pswitch_113
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 7465
    .line 7466
    .line 7467
    move-result-object v0

    .line 7468
    sget-object v2, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7469
    .line 7470
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 7471
    .line 7472
    .line 7473
    move-result-object v1

    .line 7474
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 7475
    .line 7476
    .line 7477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7478
    .line 7479
    .line 7480
    return v13

    .line 7481
    :pswitch_114
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 7482
    .line 7483
    .line 7484
    move-result-object v0

    .line 7485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7486
    .line 7487
    .line 7488
    move-result-object v2

    .line 7489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7490
    .line 7491
    .line 7492
    move-result v3

    .line 7493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7494
    .line 7495
    .line 7496
    move-result v1

    .line 7497
    if-eqz v1, :cond_a2

    .line 7498
    .line 7499
    move v1, v13

    .line 7500
    goto :goto_43

    .line 7501
    :cond_a2
    move v1, v12

    .line 7502
    :goto_43
    invoke-interface {v14, v0, v2, v3, v1}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    .line 7503
    .line 7504
    .line 7505
    move-result-object v0

    .line 7506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7507
    .line 7508
    .line 7509
    if-eqz v0, :cond_a3

    .line 7510
    .line 7511
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 7512
    .line 7513
    .line 7514
    invoke-virtual {v0, v15, v13}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7515
    .line 7516
    .line 7517
    goto :goto_44

    .line 7518
    :cond_a3
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 7519
    .line 7520
    .line 7521
    :goto_44
    return v13

    .line 7522
    :pswitch_115
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7523
    .line 7524
    .line 7525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7526
    .line 7527
    .line 7528
    move-result-object v0

    .line 7529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7530
    .line 7531
    .line 7532
    move-result v1

    .line 7533
    if-eqz v1, :cond_a4

    .line 7534
    .line 7535
    move v12, v13

    .line 7536
    :cond_a4
    invoke-interface {v14, v0, v12}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    .line 7537
    .line 7538
    .line 7539
    move-result v0

    .line 7540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7541
    .line 7542
    .line 7543
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7544
    .line 7545
    .line 7546
    return v13

    .line 7547
    :pswitch_116
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7548
    .line 7549
    .line 7550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7551
    .line 7552
    .line 7553
    move-result v0

    .line 7554
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->moveTaskBackwards(I)V

    .line 7555
    .line 7556
    .line 7557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7558
    .line 7559
    .line 7560
    return v13

    .line 7561
    :pswitch_117
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7562
    .line 7563
    .line 7564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7565
    .line 7566
    .line 7567
    move-result v0

    .line 7568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7569
    .line 7570
    .line 7571
    move-result v2

    .line 7572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7573
    .line 7574
    .line 7575
    move-result v3

    .line 7576
    if-eqz v3, :cond_a5

    .line 7577
    .line 7578
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7579
    .line 7580
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7581
    .line 7582
    .line 7583
    move-result-object v1

    .line 7584
    move-object v11, v1

    .line 7585
    check-cast v11, Landroid/os/Bundle;

    .line 7586
    .line 7587
    :cond_a5
    invoke-interface {v14, v0, v2, v11}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 7588
    .line 7589
    .line 7590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7591
    .line 7592
    .line 7593
    return v13

    .line 7594
    :pswitch_118
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7595
    .line 7596
    .line 7597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7598
    .line 7599
    .line 7600
    move-result v0

    .line 7601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7602
    .line 7603
    .line 7604
    move-result v1

    .line 7605
    invoke-interface {v14, v0, v1}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    .line 7606
    .line 7607
    .line 7608
    move-result-object v0

    .line 7609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7610
    .line 7611
    .line 7612
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 7613
    .line 7614
    .line 7615
    return v13

    .line 7616
    :pswitch_119
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7617
    .line 7618
    .line 7619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7620
    .line 7621
    .line 7622
    move-result-object v0

    .line 7623
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    .line 7624
    .line 7625
    .line 7626
    move-result-object v0

    .line 7627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7628
    .line 7629
    .line 7630
    if-eqz v0, :cond_a6

    .line 7631
    .line 7632
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 7633
    .line 7634
    .line 7635
    invoke-virtual {v0, v15, v13}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7636
    .line 7637
    .line 7638
    goto :goto_45

    .line 7639
    :cond_a6
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 7640
    .line 7641
    .line 7642
    :goto_45
    return v13

    .line 7643
    :pswitch_11a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7644
    .line 7645
    .line 7646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7647
    .line 7648
    .line 7649
    move-result-object v0

    .line 7650
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    .line 7651
    .line 7652
    .line 7653
    move-result-object v0

    .line 7654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7655
    .line 7656
    .line 7657
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7658
    .line 7659
    .line 7660
    return v13

    .line 7661
    :pswitch_11b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7662
    .line 7663
    .line 7664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7665
    .line 7666
    .line 7667
    move-result-object v0

    .line 7668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7669
    .line 7670
    .line 7671
    move-result v2

    .line 7672
    if-eqz v2, :cond_a7

    .line 7673
    .line 7674
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7675
    .line 7676
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7677
    .line 7678
    .line 7679
    move-result-object v2

    .line 7680
    check-cast v2, Landroid/os/Bundle;

    .line 7681
    .line 7682
    goto :goto_46

    .line 7683
    :cond_a7
    move-object v2, v11

    .line 7684
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7685
    .line 7686
    .line 7687
    move-result v3

    .line 7688
    if-eqz v3, :cond_a8

    .line 7689
    .line 7690
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7691
    .line 7692
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7693
    .line 7694
    .line 7695
    move-result-object v3

    .line 7696
    check-cast v3, Landroid/os/PersistableBundle;

    .line 7697
    .line 7698
    goto :goto_47

    .line 7699
    :cond_a8
    move-object v3, v11

    .line 7700
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7701
    .line 7702
    .line 7703
    move-result v4

    .line 7704
    if-eqz v4, :cond_a9

    .line 7705
    .line 7706
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 7707
    .line 7708
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7709
    .line 7710
    .line 7711
    move-result-object v1

    .line 7712
    move-object v11, v1

    .line 7713
    check-cast v11, Ljava/lang/CharSequence;

    .line 7714
    .line 7715
    :cond_a9
    invoke-interface {v14, v0, v2, v3, v11}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 7716
    .line 7717
    .line 7718
    return v13

    .line 7719
    :pswitch_11c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7720
    .line 7721
    .line 7722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7723
    .line 7724
    .line 7725
    move-result-object v0

    .line 7726
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V

    .line 7727
    .line 7728
    .line 7729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7730
    .line 7731
    .line 7732
    return v13

    .line 7733
    :pswitch_11d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7734
    .line 7735
    .line 7736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7737
    .line 7738
    .line 7739
    move-result-object v0

    .line 7740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7741
    .line 7742
    .line 7743
    move-result v2

    .line 7744
    if-eqz v2, :cond_aa

    .line 7745
    .line 7746
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7747
    .line 7748
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7749
    .line 7750
    .line 7751
    move-result-object v2

    .line 7752
    move-object v11, v2

    .line 7753
    check-cast v11, Landroid/content/res/Configuration;

    .line 7754
    .line 7755
    :cond_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7756
    .line 7757
    .line 7758
    move-result v1

    .line 7759
    if-eqz v1, :cond_ab

    .line 7760
    .line 7761
    move v12, v13

    .line 7762
    :cond_ab
    invoke-interface {v14, v0, v11, v12}, Landroid/app/IActivityManager;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 7763
    .line 7764
    .line 7765
    return v13

    .line 7766
    :pswitch_11e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7767
    .line 7768
    .line 7769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7770
    .line 7771
    .line 7772
    move-result-object v0

    .line 7773
    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    .line 7774
    .line 7775
    .line 7776
    move-result-object v0

    .line 7777
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 7778
    .line 7779
    .line 7780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7781
    .line 7782
    .line 7783
    return v13

    .line 7784
    :pswitch_11f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7785
    .line 7786
    .line 7787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7788
    .line 7789
    .line 7790
    move-result-object v2

    .line 7791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7792
    .line 7793
    .line 7794
    move-result v3

    .line 7795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7796
    .line 7797
    .line 7798
    move-result-object v4

    .line 7799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7800
    .line 7801
    .line 7802
    move-result v0

    .line 7803
    if-eqz v0, :cond_ac

    .line 7804
    .line 7805
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7806
    .line 7807
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7808
    .line 7809
    .line 7810
    move-result-object v0

    .line 7811
    check-cast v0, Landroid/os/Bundle;

    .line 7812
    .line 7813
    move-object v11, v0

    .line 7814
    :cond_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7815
    .line 7816
    .line 7817
    move-result v0

    .line 7818
    if-eqz v0, :cond_ad

    .line 7819
    .line 7820
    move v5, v13

    .line 7821
    goto :goto_48

    .line 7822
    :cond_ad
    move v5, v12

    .line 7823
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7824
    .line 7825
    .line 7826
    move-result v6

    .line 7827
    move-object/from16 v0, p0

    .line 7828
    .line 7829
    move-object v1, v2

    .line 7830
    move v2, v3

    .line 7831
    move-object v3, v4

    .line 7832
    move-object v4, v11

    .line 7833
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 7834
    .line 7835
    .line 7836
    return v13

    .line 7837
    :pswitch_120
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 7838
    .line 7839
    .line 7840
    move-result-object v0

    .line 7841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7842
    .line 7843
    .line 7844
    move-result v2

    .line 7845
    if-eqz v2, :cond_ae

    .line 7846
    .line 7847
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7848
    .line 7849
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7850
    .line 7851
    .line 7852
    move-result-object v2

    .line 7853
    move-object v11, v2

    .line 7854
    check-cast v11, Landroid/content/Intent;

    .line 7855
    .line 7856
    :cond_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7857
    .line 7858
    .line 7859
    move-result v1

    .line 7860
    invoke-interface {v14, v0, v11, v1}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 7861
    .line 7862
    .line 7863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7864
    .line 7865
    .line 7866
    return v13

    .line 7867
    :pswitch_121
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 7868
    .line 7869
    .line 7870
    move-result-object v2

    .line 7871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7872
    .line 7873
    .line 7874
    move-result v0

    .line 7875
    if-eqz v0, :cond_af

    .line 7876
    .line 7877
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7878
    .line 7879
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7880
    .line 7881
    .line 7882
    move-result-object v0

    .line 7883
    check-cast v0, Landroid/content/Intent;

    .line 7884
    .line 7885
    move-object v3, v0

    .line 7886
    goto :goto_49

    .line 7887
    :cond_af
    move-object v3, v11

    .line 7888
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7889
    .line 7890
    .line 7891
    move-result-object v4

    .line 7892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7893
    .line 7894
    .line 7895
    move-result-object v0

    .line 7896
    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    .line 7897
    .line 7898
    .line 7899
    move-result-object v5

    .line 7900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7901
    .line 7902
    .line 7903
    move-result v6

    .line 7904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7905
    .line 7906
    .line 7907
    move-result-object v7

    .line 7908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7909
    .line 7910
    .line 7911
    move-result v0

    .line 7912
    if-eqz v0, :cond_b0

    .line 7913
    .line 7914
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7915
    .line 7916
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7917
    .line 7918
    .line 7919
    move-result-object v0

    .line 7920
    check-cast v0, Landroid/os/Bundle;

    .line 7921
    .line 7922
    move-object v8, v0

    .line 7923
    goto :goto_4a

    .line 7924
    :cond_b0
    move-object v8, v11

    .line 7925
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 7926
    .line 7927
    .line 7928
    move-result-object v9

    .line 7929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7930
    .line 7931
    .line 7932
    move-result v10

    .line 7933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7934
    .line 7935
    .line 7936
    move-result v0

    .line 7937
    if-eqz v0, :cond_b1

    .line 7938
    .line 7939
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7940
    .line 7941
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7942
    .line 7943
    .line 7944
    move-result-object v0

    .line 7945
    check-cast v0, Landroid/os/Bundle;

    .line 7946
    .line 7947
    move-object v11, v0

    .line 7948
    :cond_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7949
    .line 7950
    .line 7951
    move-result v0

    .line 7952
    if-eqz v0, :cond_b2

    .line 7953
    .line 7954
    move/from16 v16, v13

    .line 7955
    .line 7956
    goto :goto_4b

    .line 7957
    :cond_b2
    move/from16 v16, v12

    .line 7958
    .line 7959
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7960
    .line 7961
    .line 7962
    move-result v0

    .line 7963
    if-eqz v0, :cond_b3

    .line 7964
    .line 7965
    move v12, v13

    .line 7966
    :cond_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 7967
    .line 7968
    .line 7969
    move-result v17

    .line 7970
    move-object/from16 v0, p0

    .line 7971
    .line 7972
    move-object v1, v2

    .line 7973
    move-object v2, v3

    .line 7974
    move-object v3, v4

    .line 7975
    move-object v4, v5

    .line 7976
    move v5, v6

    .line 7977
    move-object v6, v7

    .line 7978
    move-object v7, v8

    .line 7979
    move-object v8, v9

    .line 7980
    move v9, v10

    .line 7981
    move-object v10, v11

    .line 7982
    move/from16 v11, v16

    .line 7983
    .line 7984
    move v14, v13

    .line 7985
    move/from16 v13, v17

    .line 7986
    .line 7987
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 7988
    .line 7989
    .line 7990
    move-result v0

    .line 7991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7992
    .line 7993
    .line 7994
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7995
    .line 7996
    .line 7997
    return v14

    .line 7998
    :pswitch_122
    move v14, v13

    .line 7999
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8000
    .line 8001
    .line 8002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 8003
    .line 8004
    .line 8005
    move-result-object v0

    .line 8006
    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    .line 8007
    .line 8008
    .line 8009
    move-result-object v0

    .line 8010
    move-object/from16 v13, p0

    .line 8011
    .line 8012
    invoke-interface {v13, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 8013
    .line 8014
    .line 8015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8016
    .line 8017
    .line 8018
    return v14

    .line 8019
    :pswitch_123
    move-object/from16 v18, v14

    .line 8020
    .line 8021
    move v14, v13

    .line 8022
    move-object/from16 v13, v18

    .line 8023
    .line 8024
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 8025
    .line 8026
    .line 8027
    move-result-object v2

    .line 8028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8029
    .line 8030
    .line 8031
    move-result-object v3

    .line 8032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 8033
    .line 8034
    .line 8035
    move-result-object v0

    .line 8036
    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    .line 8037
    .line 8038
    .line 8039
    move-result-object v4

    .line 8040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8041
    .line 8042
    .line 8043
    move-result v0

    .line 8044
    if-eqz v0, :cond_b4

    .line 8045
    .line 8046
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8047
    .line 8048
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8049
    .line 8050
    .line 8051
    move-result-object v0

    .line 8052
    check-cast v0, Landroid/content/IntentFilter;

    .line 8053
    .line 8054
    move-object v11, v0

    .line 8055
    :cond_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8056
    .line 8057
    .line 8058
    move-result-object v5

    .line 8059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8060
    .line 8061
    .line 8062
    move-result v6

    .line 8063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8064
    .line 8065
    .line 8066
    move-result v7

    .line 8067
    move-object/from16 v0, p0

    .line 8068
    .line 8069
    move-object v1, v2

    .line 8070
    move-object v2, v3

    .line 8071
    move-object v3, v4

    .line 8072
    move-object v4, v11

    .line 8073
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    .line 8074
    .line 8075
    .line 8076
    move-result-object v0

    .line 8077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8078
    .line 8079
    .line 8080
    if-eqz v0, :cond_b5

    .line 8081
    .line 8082
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8083
    .line 8084
    .line 8085
    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8086
    .line 8087
    .line 8088
    goto :goto_4c

    .line 8089
    :cond_b5
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 8090
    .line 8091
    .line 8092
    :goto_4c
    return v14

    .line 8093
    :pswitch_124
    move-object/from16 v18, v14

    .line 8094
    .line 8095
    move v14, v13

    .line 8096
    move-object/from16 v13, v18

    .line 8097
    .line 8098
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8099
    .line 8100
    .line 8101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 8102
    .line 8103
    .line 8104
    move-result-object v0

    .line 8105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8106
    .line 8107
    .line 8108
    move-result v2

    .line 8109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8110
    .line 8111
    .line 8112
    move-result v3

    .line 8113
    if-eqz v3, :cond_b6

    .line 8114
    .line 8115
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8116
    .line 8117
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8118
    .line 8119
    .line 8120
    move-result-object v3

    .line 8121
    move-object v11, v3

    .line 8122
    check-cast v11, Landroid/content/Intent;

    .line 8123
    .line 8124
    :cond_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8125
    .line 8126
    .line 8127
    move-result v1

    .line 8128
    invoke-interface {v13, v0, v2, v11, v1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 8129
    .line 8130
    .line 8131
    move-result v0

    .line 8132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8133
    .line 8134
    .line 8135
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8136
    .line 8137
    .line 8138
    return v14

    .line 8139
    :pswitch_125
    move-object/from16 v18, v14

    .line 8140
    .line 8141
    move v14, v13

    .line 8142
    move-object/from16 v13, v18

    .line 8143
    .line 8144
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8145
    .line 8146
    .line 8147
    invoke-interface/range {p0 .. p0}, Landroid/app/IActivityManager;->unhandledBack()V

    .line 8148
    .line 8149
    .line 8150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8151
    .line 8152
    .line 8153
    return v14

    .line 8154
    :pswitch_126
    move-object/from16 v18, v14

    .line 8155
    .line 8156
    move v14, v13

    .line 8157
    move-object/from16 v13, v18

    .line 8158
    .line 8159
    invoke-static {v1, v3}, Landroid/accessibilityservice/c;->b(Landroid/os/Parcel;Ljava/lang/String;)Landroid/app/IApplicationThread;

    .line 8160
    .line 8161
    .line 8162
    move-result-object v2

    .line 8163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8164
    .line 8165
    .line 8166
    move-result-object v3

    .line 8167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8168
    .line 8169
    .line 8170
    move-result v0

    .line 8171
    if-eqz v0, :cond_b7

    .line 8172
    .line 8173
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8174
    .line 8175
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8176
    .line 8177
    .line 8178
    move-result-object v0

    .line 8179
    check-cast v0, Landroid/content/Intent;

    .line 8180
    .line 8181
    move-object v4, v0

    .line 8182
    goto :goto_4d

    .line 8183
    :cond_b7
    move-object v4, v11

    .line 8184
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8185
    .line 8186
    .line 8187
    move-result-object v5

    .line 8188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 8189
    .line 8190
    .line 8191
    move-result-object v6

    .line 8192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8193
    .line 8194
    .line 8195
    move-result-object v7

    .line 8196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8197
    .line 8198
    .line 8199
    move-result v8

    .line 8200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8201
    .line 8202
    .line 8203
    move-result v9

    .line 8204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8205
    .line 8206
    .line 8207
    move-result v0

    .line 8208
    if-eqz v0, :cond_b8

    .line 8209
    .line 8210
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8211
    .line 8212
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8213
    .line 8214
    .line 8215
    move-result-object v0

    .line 8216
    check-cast v0, Landroid/app/ProfilerInfo;

    .line 8217
    .line 8218
    move-object v10, v0

    .line 8219
    goto :goto_4e

    .line 8220
    :cond_b8
    move-object v10, v11

    .line 8221
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8222
    .line 8223
    .line 8224
    move-result v0

    .line 8225
    if-eqz v0, :cond_b9

    .line 8226
    .line 8227
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8228
    .line 8229
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8230
    .line 8231
    .line 8232
    move-result-object v0

    .line 8233
    check-cast v0, Landroid/os/Bundle;

    .line 8234
    .line 8235
    move-object v11, v0

    .line 8236
    :cond_b9
    move-object/from16 v0, p0

    .line 8237
    .line 8238
    move-object v1, v2

    .line 8239
    move-object v2, v3

    .line 8240
    move-object v3, v4

    .line 8241
    move-object v4, v5

    .line 8242
    move-object v5, v6

    .line 8243
    move-object v6, v7

    .line 8244
    move v7, v8

    .line 8245
    move v8, v9

    .line 8246
    move-object v9, v10

    .line 8247
    move-object v10, v11

    .line 8248
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    .line 8249
    .line 8250
    .line 8251
    move-result v0

    .line 8252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8253
    .line 8254
    .line 8255
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8256
    .line 8257
    .line 8258
    return v14

    .line 8259
    :pswitch_127
    move-object/from16 v18, v14

    .line 8260
    .line 8261
    move v14, v13

    .line 8262
    move-object/from16 v13, v18

    .line 8263
    .line 8264
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8265
    .line 8266
    .line 8267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 8268
    .line 8269
    .line 8270
    move-result-object v0

    .line 8271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 8272
    .line 8273
    .line 8274
    move-result v2

    .line 8275
    if-eqz v2, :cond_ba

    .line 8276
    .line 8277
    sget-object v2, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8278
    .line 8279
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8280
    .line 8281
    .line 8282
    move-result-object v1

    .line 8283
    move-object v11, v1

    .line 8284
    check-cast v11, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 8285
    .line 8286
    :cond_ba
    invoke-interface {v13, v0, v11}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 8287
    .line 8288
    .line 8289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8290
    .line 8291
    .line 8292
    return v14

    .line 8293
    :pswitch_128
    move-object/from16 v18, v14

    .line 8294
    .line 8295
    move v14, v13

    .line 8296
    move-object/from16 v13, v18

    .line 8297
    .line 8298
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8299
    .line 8300
    .line 8301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8302
    .line 8303
    .line 8304
    move-result-object v0

    .line 8305
    invoke-interface {v13, v0}, Landroid/app/IActivityManager;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 8306
    .line 8307
    .line 8308
    move-result-object v0

    .line 8309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8310
    .line 8311
    .line 8312
    if-eqz v0, :cond_bb

    .line 8313
    .line 8314
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 8315
    .line 8316
    .line 8317
    invoke-virtual {v0, v15, v14}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8318
    .line 8319
    .line 8320
    goto :goto_4f

    .line 8321
    :cond_bb
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 8322
    .line 8323
    .line 8324
    :goto_4f
    return v14

    .line 8325
    :cond_bc
    move-object/from16 v18, v14

    .line 8326
    .line 8327
    move v14, v13

    .line 8328
    move-object/from16 v13, v18

    .line 8329
    .line 8330
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8331
    .line 8332
    .line 8333
    return v14

    .line 8334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
