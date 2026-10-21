package android.app;

import android.app.assist.AssistContent;
import android.app.assist.AssistStructure;
import android.content.ComponentName;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.ParceledListSlice;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.IBinder;
import android.os.IInterface;
import android.os.IProgressListener;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.PersistableBundle;
import android.os.StrictMode;
import android.service.voice.IVoiceInteractionSession;
import android.text.TextUtils;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.os.IResultReceiver;
import com.android.internal.policy.IKeyguardDismissCallback;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IActivityManager extends IInterface {

    public static abstract class Stub extends Binder implements IActivityManager {
        private static final String DESCRIPTOR = "android.app.IActivityManager";
        static final int TRANSACTION_activityDestroyed = 53;
        static final int TRANSACTION_activityIdle = 12;
        static final int TRANSACTION_activityPaused = 13;
        static final int TRANSACTION_activityRelaunched = 250;
        static final int TRANSACTION_activityResumed = 31;
        static final int TRANSACTION_activitySlept = 117;
        static final int TRANSACTION_activityStopped = 14;
        static final int TRANSACTION_addAppTask = 199;
        static final int TRANSACTION_addInstrumentationResults = 35;
        static final int TRANSACTION_addPackageDependency = 89;
        static final int TRANSACTION_appNotRespondingViaProvider = 176;
        static final int TRANSACTION_attachApplication = 11;
        static final int TRANSACTION_backgroundWhitelistUid = 290;
        static final int TRANSACTION_backupAgentCreated = 85;
        static final int TRANSACTION_bindBackupAgent = 84;
        static final int TRANSACTION_bindService = 28;
        static final int TRANSACTION_bootAnimationComplete = 203;
        static final int TRANSACTION_broadcastIntent = 8;
        static final int TRANSACTION_cancelIntentSender = 55;
        static final int TRANSACTION_cancelTaskThumbnailTransition = 283;
        static final int TRANSACTION_cancelTaskWindowTransition = 282;
        static final int TRANSACTION_checkGrantUriPermission = 113;
        static final int TRANSACTION_checkPermission = 44;
        static final int TRANSACTION_checkPermissionWithToken = 207;
        static final int TRANSACTION_checkUriPermission = 45;
        static final int TRANSACTION_clearApplicationUserData = 71;
        static final int TRANSACTION_clearGrantedUriPermissions = 255;
        static final int TRANSACTION_clearPendingBackup = 154;
        static final int TRANSACTION_closeSystemDialogs = 91;
        static final int TRANSACTION_convertFromTranslucent = 167;
        static final int TRANSACTION_convertToTranslucent = 168;
        static final int TRANSACTION_crashApplication = 108;
        static final int TRANSACTION_createStackOnDisplay = 210;
        static final int TRANSACTION_dismissKeyguard = 280;
        static final int TRANSACTION_dumpHeap = 114;
        static final int TRANSACTION_dumpHeapFinished = 217;
        static final int TRANSACTION_enterPictureInPictureMode = 247;
        static final int TRANSACTION_enterSafeMode = 59;
        static final int TRANSACTION_exitFreeformMode = 236;
        static final int TRANSACTION_finishActivity = 5;
        static final int TRANSACTION_finishActivityAffinity = 142;
        static final int TRANSACTION_finishHeavyWeightApp = 103;
        static final int TRANSACTION_finishInstrumentation = 36;
        static final int TRANSACTION_finishReceiver = 10;
        static final int TRANSACTION_finishSubActivity = 24;
        static final int TRANSACTION_finishVoiceTask = 193;
        static final int TRANSACTION_forceStopPackage = 72;
        static final int TRANSACTION_getActivityClassForToken = 40;
        static final int TRANSACTION_getActivityDisplayId = 178;
        static final int TRANSACTION_getActivityOptions = 189;
        static final int TRANSACTION_getActivityStackId = 235;
        static final int TRANSACTION_getAllStackInfos = 164;
        static final int TRANSACTION_getAppTaskThumbnailSize = 200;
        static final int TRANSACTION_getAppTasks = 190;
        static final int TRANSACTION_getAssistContextExtras = 156;
        static final int TRANSACTION_getCallingActivity = 16;
        static final int TRANSACTION_getCallingPackage = 15;
        static final int TRANSACTION_getConfiguration = 37;
        static final int TRANSACTION_getContentProvider = 21;
        static final int TRANSACTION_getContentProviderExternal = 134;
        static final int TRANSACTION_getCurrentUser = 138;
        static final int TRANSACTION_getDeviceConfigurationInfo = 78;
        static final int TRANSACTION_getFocusedStackId = 211;
        static final int TRANSACTION_getFrontActivityScreenCompatMode = 118;
        static final int TRANSACTION_getGrantedUriPermissions = 254;
        static final int TRANSACTION_getIntentForIntentSender = 155;
        static final int TRANSACTION_getIntentSender = 54;
        static final int TRANSACTION_getLastResumedActivityUserId = 289;
        static final int TRANSACTION_getLaunchedFromPackage = 158;
        static final int TRANSACTION_getLaunchedFromUid = 143;
        static final int TRANSACTION_getLockTaskModeState = 215;
        static final int TRANSACTION_getMaxNumPictureInPictureActions = 249;
        static final int TRANSACTION_getMemoryInfo = 69;
        static final int TRANSACTION_getMemoryTrimLevel = 264;
        static final int TRANSACTION_getMyMemoryState = 136;
        static final int TRANSACTION_getPackageAskScreenCompat = 122;
        static final int TRANSACTION_getPackageForIntentSender = 56;
        static final int TRANSACTION_getPackageForToken = 41;
        static final int TRANSACTION_getPackageProcessState = 222;
        static final int TRANSACTION_getPackageScreenCompatMode = 120;
        static final int TRANSACTION_getPersistedUriPermissions = 175;
        static final int TRANSACTION_getProcessLimit = 43;
        static final int TRANSACTION_getProcessMemoryInfo = 92;
        static final int TRANSACTION_getProcessPss = 131;
        static final int TRANSACTION_getProcessesInErrorState = 70;
        static final int TRANSACTION_getProviderMimeType = 109;
        static final int TRANSACTION_getRecentTasks = 51;
        static final int TRANSACTION_getRequestedOrientation = 64;
        static final int TRANSACTION_getRunningAppProcesses = 77;
        static final int TRANSACTION_getRunningExternalApplications = 102;
        static final int TRANSACTION_getRunningServiceControlPanel = 25;
        static final int TRANSACTION_getRunningUserIds = 150;
        static final int TRANSACTION_getServices = 74;
        static final int TRANSACTION_getStackInfo = 166;
        static final int TRANSACTION_getTagForIntentSender = 180;
        static final int TRANSACTION_getTaskBounds = 177;
        static final int TRANSACTION_getTaskDescription = 76;
        static final int TRANSACTION_getTaskDescriptionIcon = 204;
        static final int TRANSACTION_getTaskForActivity = 20;
        static final int TRANSACTION_getTaskSnapshot = 284;
        static final int TRANSACTION_getTaskThumbnail = 75;
        static final int TRANSACTION_getTasks = 17;
        static final int TRANSACTION_getUidForIntentSender = 87;
        static final int TRANSACTION_getUidProcessState = 226;
        static final int TRANSACTION_getUriPermissionOwnerForActivity = 251;
        static final int TRANSACTION_grantUriPermission = 46;
        static final int TRANSACTION_grantUriPermissionFromOwner = 111;
        static final int TRANSACTION_handleApplicationCrash = 2;
        static final int TRANSACTION_handleApplicationStrictModeViolation = 104;
        static final int TRANSACTION_handleApplicationWtf = 96;
        static final int TRANSACTION_handleIncomingUser = 88;
        static final int TRANSACTION_hang = 161;
        static final int TRANSACTION_inputDispatchingTimedOut = 153;
        static final int TRANSACTION_isAppForeground = 256;
        static final int TRANSACTION_isAppStartModeDisabled = 242;
        static final int TRANSACTION_isAssistDataAllowedOnCurrentActivity = 229;
        static final int TRANSACTION_isImmersive = 105;
        static final int TRANSACTION_isInLockTaskMode = 185;
        static final int TRANSACTION_isInMultiWindowMode = 244;
        static final int TRANSACTION_isInPictureInPictureMode = 245;
        static final int TRANSACTION_isIntentSenderAnActivity = 145;
        static final int TRANSACTION_isIntentSenderTargetedToPackage = 129;
        static final int TRANSACTION_isRootVoiceInteraction = 231;
        static final int TRANSACTION_isTopActivityImmersive = 107;
        static final int TRANSACTION_isTopOfTask = 194;
        static final int TRANSACTION_isUserAMonkey = 98;
        static final int TRANSACTION_isUserRunning = 116;
        static final int TRANSACTION_isVrModePackageEnabled = 266;
        static final int TRANSACTION_keyguardGoingAway = 225;
        static final int TRANSACTION_killAllBackgroundProcesses = 133;
        static final int TRANSACTION_killApplication = 90;
        static final int TRANSACTION_killApplicationProcess = 93;
        static final int TRANSACTION_killBackgroundProcesses = 97;
        static final int TRANSACTION_killPackageDependents = 246;
        static final int TRANSACTION_killPids = 73;
        static final int TRANSACTION_killProcessesBelowForeground = 137;
        static final int TRANSACTION_killStopFrontApp = 297;
        static final int TRANSACTION_killUid = 159;
        static final int TRANSACTION_launchAssistIntent = 205;
        static final int TRANSACTION_makePackageIdle = 263;
        static final int TRANSACTION_moveActivityTaskToBack = 68;
        static final int TRANSACTION_moveStackToDisplay = 278;
        static final int TRANSACTION_moveTaskBackwards = 19;
        static final int TRANSACTION_moveTaskToDockedStack = 238;
        static final int TRANSACTION_moveTaskToFront = 18;
        static final int TRANSACTION_moveTaskToStack = 162;
        static final int TRANSACTION_moveTasksToFullscreenStack = 240;
        static final int TRANSACTION_moveTopActivityToPinnedStack = 241;
        static final int TRANSACTION_navigateUpTo = 140;
        static final int TRANSACTION_newUriPermissionOwner = 110;
        static final int TRANSACTION_noteAlarmFinish = 221;
        static final int TRANSACTION_noteAlarmStart = 220;
        static final int TRANSACTION_noteWakeupAlarm = 61;
        static final int TRANSACTION_notifyActivityDrawn = 169;
        static final int TRANSACTION_notifyCleartextNetwork = 209;
        static final int TRANSACTION_notifyEnterAnimationComplete = 197;
        static final int TRANSACTION_notifyLaunchTaskBehindComplete = 195;
        static final int TRANSACTION_notifyLockedProfile = 268;
        static final int TRANSACTION_notifyPinnedStackAnimationEnded = 261;
        static final int TRANSACTION_notifyPinnedStackAnimationStarted = 260;
        static final int TRANSACTION_openContentUri = 1;
        static final int TRANSACTION_overridePendingTransition = 95;
        static final int TRANSACTION_peekService = 79;
        static final int TRANSACTION_performIdleMaintenance = 172;
        static final int TRANSACTION_positionTaskInStack = 234;
        static final int TRANSACTION_profileControl = 80;
        static final int TRANSACTION_publishContentProviders = 22;
        static final int TRANSACTION_publishService = 30;
        static final int TRANSACTION_refContentProvider = 23;
        static final int TRANSACTION_registerIntentSenderCancelListener = 57;
        static final int TRANSACTION_registerProcessObserver = 127;
        static final int TRANSACTION_registerReceiver = 6;
        static final int TRANSACTION_registerTaskStackListener = 208;
        static final int TRANSACTION_registerUidObserver = 227;
        static final int TRANSACTION_registerUserSwitchObserver = 148;
        static final int TRANSACTION_releaseActivityInstance = 201;
        static final int TRANSACTION_releasePersistableUriPermission = 174;
        static final int TRANSACTION_releaseSomeActivities = 202;
        static final int TRANSACTION_removeContentProvider = 62;
        static final int TRANSACTION_removeContentProviderExternal = 135;
        static final int TRANSACTION_removeStack = 262;
        static final int TRANSACTION_removeTask = 126;
        static final int TRANSACTION_reportActivityFullyDrawn = 170;
        static final int TRANSACTION_reportAssistContextExtras = 157;
        static final int TRANSACTION_reportSizeConfigurations = 237;
        static final int TRANSACTION_requestActivityRelaunch = 275;
        static final int TRANSACTION_requestAssistContextExtras = 213;
        static final int TRANSACTION_requestAutofillData = 279;
        static final int TRANSACTION_requestBugReport = 151;
        static final int TRANSACTION_requestTelephonyBugReport = 152;
        static final int TRANSACTION_resizeDockedStack = 252;
        static final int TRANSACTION_resizePinnedStack = 265;
        static final int TRANSACTION_resizeStack = 163;
        static final int TRANSACTION_resizeTask = 214;
        static final int TRANSACTION_restart = 171;
        static final int TRANSACTION_restartUserInBackground = 281;
        static final int TRANSACTION_resumeAppSwitches = 83;
        static final int TRANSACTION_revokeUriPermission = 47;
        static final int TRANSACTION_revokeUriPermissionFromOwner = 112;
        static final int TRANSACTION_scheduleApplicationInfoChanged = 285;
        static final int TRANSACTION_sendIdleJobTrigger = 270;
        static final int TRANSACTION_sendIntentSender = 271;
        static final int TRANSACTION_serviceDoneExecuting = 52;
        static final int TRANSACTION_setActivityController = 48;
        static final int TRANSACTION_setAlwaysFinish = 33;
        static final int TRANSACTION_setDebugApp = 32;
        static final int TRANSACTION_setDisablePreviewScreenshots = 288;
        static final int TRANSACTION_setDumpHeapDebugLimit = 216;
        static final int TRANSACTION_setFocusedStack = 165;
        static final int TRANSACTION_setFocusedTask = 125;
        static final int TRANSACTION_setFrontActivityScreenCompatMode = 119;
        static final int TRANSACTION_setHasTopUi = 274;
        static final int TRANSACTION_setImmersive = 106;
        static final int TRANSACTION_setLockScreenShown = 141;
        static final int TRANSACTION_setPackageAskScreenCompat = 123;
        static final int TRANSACTION_setPackageScreenCompatMode = 121;
        static final int TRANSACTION_setPersistentVrThread = 286;
        static final int TRANSACTION_setPictureInPictureParams = 248;
        static final int TRANSACTION_setProcessImportant = 66;
        static final int TRANSACTION_setProcessLimit = 42;
        static final int TRANSACTION_setProcessMemoryTrimLevel = 179;
        static final int TRANSACTION_setProcessProtectArea = 293;
        static final int TRANSACTION_setProcessProtectStatusByPid = 294;
        static final int TRANSACTION_setProcessProtectStatusByProcName = 295;
        static final int TRANSACTION_setRenderThread = 273;
        static final int TRANSACTION_setRequestedOrientation = 63;
        static final int TRANSACTION_setServiceForeground = 67;
        static final int TRANSACTION_setShowWhenLocked = 291;
        static final int TRANSACTION_setTaskDescription = 186;
        static final int TRANSACTION_setTaskResizeable = 212;
        static final int TRANSACTION_setTurnScreenOn = 292;
        static final int TRANSACTION_setUserIsMonkey = 160;
        static final int TRANSACTION_setVoiceKeepAwake = 218;
        static final int TRANSACTION_setVrMode = 253;
        static final int TRANSACTION_setVrThread = 272;
        static final int TRANSACTION_shouldUpRecreateTask = 139;
        static final int TRANSACTION_showAssistFromActivity = 230;
        static final int TRANSACTION_showBootMessage = 132;
        static final int TRANSACTION_showLockTaskEscapeMessage = 223;
        static final int TRANSACTION_showWaitingForDebugger = 49;
        static final int TRANSACTION_shutdown = 81;
        static final int TRANSACTION_signalPersistentProcesses = 50;
        static final int TRANSACTION_startActivities = 115;
        static final int TRANSACTION_startActivity = 3;
        static final int TRANSACTION_startActivityAndWait = 99;
        static final int TRANSACTION_startActivityAsCaller = 198;
        static final int TRANSACTION_startActivityAsUser = 146;
        static final int TRANSACTION_startActivityFromRecents = 196;
        static final int TRANSACTION_startActivityIntentSender = 94;
        static final int TRANSACTION_startActivityWithConfig = 101;
        static final int TRANSACTION_startAssistantActivity = 188;
        static final int TRANSACTION_startBinderTracking = 232;
        static final int TRANSACTION_startConfirmDeviceCredentialIntent = 269;
        static final int TRANSACTION_startHomePre = 296;
        static final int TRANSACTION_startInPlaceAnimationOnFrontMostApplication = 206;
        static final int TRANSACTION_startInstrumentation = 34;
        static final int TRANSACTION_startLocalVoiceInteraction = 257;
        static final int TRANSACTION_startLockTaskModeById = 182;
        static final int TRANSACTION_startLockTaskModeByToken = 183;
        static final int TRANSACTION_startNextMatchingActivity = 60;
        static final int TRANSACTION_startService = 26;
        static final int TRANSACTION_startSystemLockTaskMode = 191;
        static final int TRANSACTION_startUserInBackground = 181;
        static final int TRANSACTION_startVoiceActivity = 187;
        static final int TRANSACTION_stopAppSwitches = 82;
        static final int TRANSACTION_stopBinderTrackingAndDump = 233;
        static final int TRANSACTION_stopLocalVoiceInteraction = 258;
        static final int TRANSACTION_stopLockTaskMode = 184;
        static final int TRANSACTION_stopService = 27;
        static final int TRANSACTION_stopServiceToken = 39;
        static final int TRANSACTION_stopSystemLockTaskMode = 192;
        static final int TRANSACTION_stopUser = 147;
        static final int TRANSACTION_supportsLocalVoiceInteraction = 259;
        static final int TRANSACTION_suppressResizeConfigChanges = 239;
        static final int TRANSACTION_swapDockedAndFullscreenStack = 267;
        static final int TRANSACTION_switchUser = 124;
        static final int TRANSACTION_takePersistableUriPermission = 173;
        static final int TRANSACTION_unbindBackupAgent = 86;
        static final int TRANSACTION_unbindFinished = 65;
        static final int TRANSACTION_unbindService = 29;
        static final int TRANSACTION_unbroadcastIntent = 9;
        static final int TRANSACTION_unhandledBack = 4;
        static final int TRANSACTION_unlockUser = 243;
        static final int TRANSACTION_unregisterIntentSenderCancelListener = 58;
        static final int TRANSACTION_unregisterProcessObserver = 128;
        static final int TRANSACTION_unregisterReceiver = 7;
        static final int TRANSACTION_unregisterTaskStackListener = 277;
        static final int TRANSACTION_unregisterUidObserver = 228;
        static final int TRANSACTION_unregisterUserSwitchObserver = 149;
        static final int TRANSACTION_unstableProviderDied = 144;
        static final int TRANSACTION_updateConfiguration = 38;
        static final int TRANSACTION_updateDeviceOwner = 224;
        static final int TRANSACTION_updateDisplayOverrideConfiguration = 276;
        static final int TRANSACTION_updateLockTaskPackages = 219;
        static final int TRANSACTION_updatePersistentConfiguration = 130;
        static final int TRANSACTION_waitForNetworkStateUpdate = 287;
        static final int TRANSACTION_willActivityBeVisible = 100;

        public static class Proxy implements IActivityManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.app.IActivityManager
            public void activityDestroyed(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(53, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void activityIdle(IBinder iBinder, Configuration configuration, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (configuration != null) {
                        parcelObtain.writeInt(1);
                        configuration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void activityPaused(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void activityRelaunched(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(250, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void activityResumed(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void activitySlept(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(117, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void activityStopped(IBinder iBinder, Bundle bundle, PersistableBundle persistableBundle, CharSequence charSequence) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (persistableBundle != null) {
                        parcelObtain.writeInt(1);
                        persistableBundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (charSequence != null) {
                        parcelObtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(14, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int addAppTask(IBinder iBinder, Intent intent, ActivityManager.TaskDescription taskDescription, Bitmap bitmap) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (taskDescription != null) {
                        parcelObtain.writeInt(1);
                        taskDescription.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bitmap != null) {
                        parcelObtain.writeInt(1);
                        bitmap.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(199, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void addInstrumentationResults(IApplicationThread iApplicationThread, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void addPackageDependency(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(89, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void appNotRespondingViaProvider(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(176, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.app.IActivityManager
            public void attachApplication(IApplicationThread iApplicationThread) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void backgroundWhitelistUid(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(290, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void backupAgentCreated(String str, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(85, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean bindBackupAgent(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(84, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int bindService(IApplicationThread iApplicationThread, IBinder iBinder, Intent intent, String str, IServiceConnection iServiceConnection, int i2, String str2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iServiceConnection != null ? iServiceConnection.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void bootAnimationComplete() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(203, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int broadcastIntent(IApplicationThread iApplicationThread, Intent intent, String str, IIntentReceiver iIntentReceiver, int i2, String str2, Bundle bundle, String[] strArr, int i3, Bundle bundle2, boolean z2, boolean z3, int i4) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    int i5 = 1;
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iIntentReceiver != null ? iIntentReceiver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(i3);
                    if (bundle2 != null) {
                        parcelObtain.writeInt(1);
                        bundle2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i5 = 0;
                    }
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i4);
                    try {
                        this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        int i6 = parcelObtain2.readInt();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return i6;
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // android.app.IActivityManager
            public void cancelIntentSender(IIntentSender iIntentSender) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void cancelTaskThumbnailTransition(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(283, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void cancelTaskWindowTransition(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(282, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int checkGrantUriPermission(int i2, String str, Uri uri, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(113, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int checkPermission(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int checkPermissionWithToken(String str, int i2, int i3, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(207, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int checkUriPermission(Uri uri, int i2, int i3, int i4, int i5, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iPackageDataObserver != null ? iPackageDataObserver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(71, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void clearGrantedUriPermissions(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(255, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void clearPendingBackup() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(154, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void closeSystemDialogs(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(91, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean convertFromTranslucent(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(167, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean convertToTranslucent(IBinder iBinder, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(168, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void crashApplication(int i2, int i3, String str, int i4, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(108, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int createStackOnDisplay(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(210, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void dismissKeyguard(IBinder iBinder, IKeyguardDismissCallback iKeyguardDismissCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeStrongBinder(iKeyguardDismissCallback != null ? iKeyguardDismissCallback.asBinder() : null);
                    this.mRemote.transact(280, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean dumpHeap(String str, int i2, boolean z2, boolean z3, boolean z4, String str2, ParcelFileDescriptor parcelFileDescriptor) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    parcelObtain.writeString(str2);
                    if (parcelFileDescriptor != null) {
                        parcelObtain.writeInt(1);
                        parcelFileDescriptor.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(114, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void dumpHeapFinished(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(217, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean enterPictureInPictureMode(IBinder iBinder, PictureInPictureParams pictureInPictureParams) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (pictureInPictureParams != null) {
                        parcelObtain.writeInt(1);
                        pictureInPictureParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(247, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void enterSafeMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void exitFreeformMode(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(236, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean finishActivity(IBinder iBinder, int i2, Intent intent, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean finishActivityAffinity(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(142, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void finishHeavyWeightApp() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(103, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void finishInstrumentation(IApplicationThread iApplicationThread, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void finishReceiver(IBinder iBinder, int i2, String str, Bundle bundle, boolean z2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void finishSubActivity(IBinder iBinder, String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void finishVoiceTask(IVoiceInteractionSession iVoiceInteractionSession) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVoiceInteractionSession != null ? iVoiceInteractionSession.asBinder() : null);
                    this.mRemote.transact(193, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void forceStopPackage(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ComponentName getActivityClassForToken(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getActivityDisplayId(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(178, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Bundle getActivityOptions(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(189, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getActivityStackId(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(235, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public List<ActivityManager.StackInfo> getAllStackInfos() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(164, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ActivityManager.StackInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Point getAppTaskThumbnailSize() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(200, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Point.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public List<IBinder> getAppTasks(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(190, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createBinderArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Bundle getAssistContextExtras(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(156, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ComponentName getCallingActivity(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public String getCallingPackage(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Configuration getConfiguration() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ContentProviderHolder getContentProvider(IApplicationThread iApplicationThread, String str, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ContentProviderHolder.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ContentProviderHolder getContentProviderExternal(String str, int i2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(134, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ContentProviderHolder.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public UserInfo getCurrentUser() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(138, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? UserInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ConfigurationInfo getDeviceConfigurationInfo() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(78, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ConfigurationInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getFocusedStackId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(211, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getFrontActivityScreenCompatMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(118, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ParceledListSlice getGrantedUriPermissions(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(254, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Intent getIntentForIntentSender(IIntentSender iIntentSender) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    this.mRemote.transact(155, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public IIntentSender getIntentSender(int i2, String str, IBinder iBinder, String str2, int i3, Intent[] intentArr, String[] strArr, int i4, Bundle bundle, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeTypedArray(intentArr, 0);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(i4);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IIntentSender.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.app.IActivityManager
            public int getLastResumedActivityUserId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(289, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public String getLaunchedFromPackage(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(158, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getLaunchedFromUid(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(143, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getLockTaskModeState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(215, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getMaxNumPictureInPictureActions(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(249, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void getMemoryInfo(ActivityManager.MemoryInfo memoryInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        memoryInfo.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getMemoryTrimLevel() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(264, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void getMyMemoryState(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(136, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        runningAppProcessInfo.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean getPackageAskScreenCompat(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(122, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public String getPackageForIntentSender(IIntentSender iIntentSender) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public String getPackageForToken(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getPackageProcessState(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(222, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getPackageScreenCompatMode(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(120, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ParceledListSlice getPersistedUriPermissions(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(175, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getProcessLimit() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Debug.MemoryInfo[] getProcessMemoryInfo(int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(92, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Debug.MemoryInfo[]) parcelObtain2.createTypedArray(Debug.MemoryInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public long[] getProcessPss(int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(131, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createLongArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public List<ActivityManager.ProcessErrorStateInfo> getProcessesInErrorState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ActivityManager.ProcessErrorStateInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public String getProviderMimeType(Uri uri, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(109, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ParceledListSlice getRecentTasks(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getRequestedOrientation(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ActivityManager.RunningAppProcessInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public List<ApplicationInfo> getRunningExternalApplications() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(102, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ApplicationInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public PendingIntent getRunningServiceControlPanel(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int[] getRunningUserIds() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(150, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public List<ActivityManager.RunningServiceInfo> getServices(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ActivityManager.RunningServiceInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ActivityManager.StackInfo getStackInfo(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(166, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ActivityManager.StackInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public String getTagForIntentSender(IIntentSender iIntentSender, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(180, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Rect getTaskBounds(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(177, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ActivityManager.TaskDescription getTaskDescription(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ActivityManager.TaskDescription.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Bitmap getTaskDescriptionIcon(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(204, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bitmap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getTaskForActivity(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ActivityManager.TaskSnapshot getTaskSnapshot(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(284, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ActivityManager.TaskSnapshot.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ActivityManager.TaskThumbnail getTaskThumbnail(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ActivityManager.TaskThumbnail.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public List<ActivityManager.RunningTaskInfo> getTasks(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ActivityManager.RunningTaskInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getUidForIntentSender(IIntentSender iIntentSender) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    this.mRemote.transact(87, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int getUidProcessState(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(226, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public IBinder getUriPermissionOwnerForActivity(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(251, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void grantUriPermission(IApplicationThread iApplicationThread, String str, Uri uri, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void grantUriPermissionFromOwner(IBinder iBinder, int i2, String str, Uri uri, int i3, int i4, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(111, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void handleApplicationCrash(IBinder iBinder, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (parcelableCrashInfo != null) {
                        parcelObtain.writeInt(1);
                        parcelableCrashInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void handleApplicationStrictModeViolation(IBinder iBinder, int i2, StrictMode.ViolationInfo violationInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    if (violationInfo != null) {
                        parcelObtain.writeInt(1);
                        violationInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(104, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean handleApplicationWtf(IBinder iBinder, String str, boolean z2, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (parcelableCrashInfo != null) {
                        parcelObtain.writeInt(1);
                        parcelableCrashInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(96, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int handleIncomingUser(int i2, int i3, int i4, boolean z2, boolean z3, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    int i5 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i5 = 0;
                    }
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(88, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void hang(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(161, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public long inputDispatchingTimedOut(int i2, boolean z2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(153, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isAppForeground(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(256, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isAppStartModeDisabled(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(242, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isAssistDataAllowedOnCurrentActivity() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(229, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isImmersive(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(105, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isInLockTaskMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(185, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isInMultiWindowMode(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(244, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isInPictureInPictureMode(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(245, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isIntentSenderAnActivity(IIntentSender iIntentSender) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    this.mRemote.transact(145, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isIntentSenderTargetedToPackage(IIntentSender iIntentSender) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    this.mRemote.transact(129, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isRootVoiceInteraction(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(231, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isTopActivityImmersive() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(107, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isTopOfTask(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(194, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isUserAMonkey() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(98, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isUserRunning(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(116, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean isVrModePackageEnabled(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(266, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void keyguardGoingAway(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(225, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void killAllBackgroundProcesses() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(133, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void killApplication(String str, int i2, int i3, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(90, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void killApplicationProcess(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(93, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void killBackgroundProcesses(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(97, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void killPackageDependents(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(246, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean killPids(int[] iArr, String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean killProcessesBelowForeground(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(137, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void killStopFrontApp(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(297, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void killUid(int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(159, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean launchAssistIntent(Intent intent, int i2, String str, int i3, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(205, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void makePackageIdle(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(263, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean moveActivityTaskToBack(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void moveStackToDisplay(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(278, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void moveTaskBackwards(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean moveTaskToDockedStack(int i2, int i3, boolean z2, boolean z3, Rect rect) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(238, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void moveTaskToFront(int i2, int i3, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void moveTaskToStack(int i2, int i3, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(162, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void moveTasksToFullscreenStack(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(240, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean moveTopActivityToPinnedStack(int i2, Rect rect) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(241, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean navigateUpTo(IBinder iBinder, Intent intent, int i2, Intent intent2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    if (intent2 != null) {
                        parcelObtain.writeInt(1);
                        intent2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(140, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public IBinder newUriPermissionOwner(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(110, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void noteAlarmFinish(IIntentSender iIntentSender, int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(221, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void noteAlarmStart(IIntentSender iIntentSender, int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(220, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void noteWakeupAlarm(IIntentSender iIntentSender, int i2, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void notifyActivityDrawn(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(169, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void notifyCleartextNetwork(int i2, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(209, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void notifyEnterAnimationComplete(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(197, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void notifyLaunchTaskBehindComplete(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(195, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void notifyLockedProfile(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(268, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void notifyPinnedStackAnimationEnded() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(261, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void notifyPinnedStackAnimationStarted() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(260, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ParcelFileDescriptor openContentUri(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void overridePendingTransition(IBinder iBinder, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(95, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public IBinder peekService(Intent intent, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(79, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void performIdleMaintenance() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(172, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void positionTaskInStack(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(234, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean profileControl(String str, int i2, boolean z2, ProfilerInfo profilerInfo, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (profilerInfo != null) {
                        parcelObtain.writeInt(1);
                        profilerInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(80, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void publishContentProviders(IApplicationThread iApplicationThread, List<ContentProviderHolder> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeTypedList(list);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void publishService(IBinder iBinder, Intent intent, IBinder iBinder2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder2);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean refContentProvider(IBinder iBinder, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void registerIntentSenderCancelListener(IIntentSender iIntentSender, IResultReceiver iResultReceiver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    parcelObtain.writeStrongBinder(iResultReceiver != null ? iResultReceiver.asBinder() : null);
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void registerProcessObserver(IProcessObserver iProcessObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iProcessObserver != null ? iProcessObserver.asBinder() : null);
                    this.mRemote.transact(127, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public Intent registerReceiver(IApplicationThread iApplicationThread, String str, IIntentReceiver iIntentReceiver, IntentFilter intentFilter, String str2, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iIntentReceiver != null ? iIntentReceiver.asBinder() : null);
                    if (intentFilter != null) {
                        parcelObtain.writeInt(1);
                        intentFilter.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void registerTaskStackListener(ITaskStackListener iTaskStackListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTaskStackListener != null ? iTaskStackListener.asBinder() : null);
                    this.mRemote.transact(208, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void registerUidObserver(IUidObserver iUidObserver, int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUidObserver != null ? iUidObserver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(227, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void registerUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUserSwitchObserver != null ? iUserSwitchObserver.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(148, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean releaseActivityInstance(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(201, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void releasePersistableUriPermission(Uri uri, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(174, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void releaseSomeActivities(IApplicationThread iApplicationThread) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    this.mRemote.transact(202, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void removeContentProvider(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void removeContentProviderExternal(String str, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(135, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void removeStack(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(262, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean removeTask(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(126, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void reportActivityFullyDrawn(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(170, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void reportAssistContextExtras(IBinder iBinder, Bundle bundle, AssistStructure assistStructure, AssistContent assistContent, Uri uri) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (assistStructure != null) {
                        parcelObtain.writeInt(1);
                        assistStructure.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (assistContent != null) {
                        parcelObtain.writeInt(1);
                        assistContent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(157, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void reportSizeConfigurations(IBinder iBinder, int[] iArr, int[] iArr2, int[] iArr3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeIntArray(iArr2);
                    parcelObtain.writeIntArray(iArr3);
                    this.mRemote.transact(237, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void requestActivityRelaunch(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(275, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean requestAssistContextExtras(int i2, IResultReceiver iResultReceiver, Bundle bundle, IBinder iBinder, boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iResultReceiver != null ? iResultReceiver.asBinder() : null);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    this.mRemote.transact(213, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean requestAutofillData(IResultReceiver iResultReceiver, Bundle bundle, IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iResultReceiver != null ? iResultReceiver.asBinder() : null);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(279, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void requestBugReport(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(151, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void requestTelephonyBugReport(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(152, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void resizeDockedStack(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (rect2 != null) {
                        parcelObtain.writeInt(1);
                        rect2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (rect3 != null) {
                        parcelObtain.writeInt(1);
                        rect3.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (rect4 != null) {
                        parcelObtain.writeInt(1);
                        rect4.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (rect5 != null) {
                        parcelObtain.writeInt(1);
                        rect5.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(252, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void resizePinnedStack(Rect rect, Rect rect2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (rect2 != null) {
                        parcelObtain.writeInt(1);
                        rect2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(265, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void resizeStack(int i2, Rect rect, boolean z2, boolean z3, boolean z4, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    int i4 = 1;
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    if (!z4) {
                        i4 = 0;
                    }
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(163, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void resizeTask(int i2, Rect rect, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(214, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void restart() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(171, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int restartUserInBackground(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(281, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void resumeAppSwitches() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(83, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void revokeUriPermission(IApplicationThread iApplicationThread, String str, Uri uri, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void revokeUriPermissionFromOwner(IBinder iBinder, Uri uri, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(112, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void scheduleApplicationInfoChanged(List<String> list, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(285, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void sendIdleJobTrigger() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(270, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int sendIntentSender(IIntentSender iIntentSender, IBinder iBinder, int i2, Intent intent, String str, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iIntentReceiver != null ? iIntentReceiver.asBinder() : null);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(271, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void serviceDoneExecuting(IBinder iBinder, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(52, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setActivityController(IActivityController iActivityController, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iActivityController != null ? iActivityController.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setAlwaysFinish(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setDebugApp(String str, boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    int i2 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setDisablePreviewScreenshots(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(288, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setDumpHeapDebugLimit(String str, int i2, long j2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(216, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setFocusedStack(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(165, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setFocusedTask(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(125, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setFrontActivityScreenCompatMode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(119, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setHasTopUi(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(274, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setImmersive(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(106, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setLockScreenShown(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(141, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setPackageAskScreenCompat(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(123, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setPackageScreenCompatMode(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(121, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setPersistentVrThread(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(286, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setPictureInPictureParams(IBinder iBinder, PictureInPictureParams pictureInPictureParams) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (pictureInPictureParams != null) {
                        parcelObtain.writeInt(1);
                        pictureInPictureParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(248, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setProcessImportant(IBinder iBinder, int i2, boolean z2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setProcessLimit(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean setProcessMemoryTrimLevel(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(179, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setProcessProtectArea(String str, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(293, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setProcessProtectStatusByPid(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(294, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setProcessProtectStatusByProcName(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(295, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setRenderThread(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(273, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setRequestedOrientation(IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setServiceForeground(ComponentName componentName, IBinder iBinder, int i2, Notification notification, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(67, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setShowWhenLocked(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(291, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setTaskDescription(IBinder iBinder, ActivityManager.TaskDescription taskDescription) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (taskDescription != null) {
                        parcelObtain.writeInt(1);
                        taskDescription.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(186, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setTaskResizeable(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(212, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setTurnScreenOn(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(292, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setUserIsMonkey(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(160, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setVoiceKeepAwake(IVoiceInteractionSession iVoiceInteractionSession, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVoiceInteractionSession != null ? iVoiceInteractionSession.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(218, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int setVrMode(IBinder iBinder, boolean z2, ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(253, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void setVrThread(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(272, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean shouldUpRecreateTask(IBinder iBinder, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(139, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean showAssistFromActivity(IBinder iBinder, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(230, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void showBootMessage(CharSequence charSequence, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (charSequence != null) {
                        parcelObtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(132, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void showLockTaskEscapeMessage(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(223, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void showWaitingForDebugger(IApplicationThread iApplicationThread, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean shutdown(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(81, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void signalPersistentProcesses(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startActivities(IApplicationThread iApplicationThread, String str, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeTypedArray(intentArr, 0);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(115, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startActivity(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, ProfilerInfo profilerInfo, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (profilerInfo != null) {
                        parcelObtain.writeInt(1);
                        profilerInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public WaitResult startActivityAndWait(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, ProfilerInfo profilerInfo, Bundle bundle, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (profilerInfo != null) {
                        parcelObtain.writeInt(1);
                        profilerInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(99, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? WaitResult.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startActivityAsCaller(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, ProfilerInfo profilerInfo, Bundle bundle, boolean z2, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    int i5 = 1;
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (profilerInfo != null) {
                        parcelObtain.writeInt(1);
                        profilerInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i5 = 0;
                    }
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(198, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startActivityAsUser(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, ProfilerInfo profilerInfo, Bundle bundle, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (profilerInfo != null) {
                        parcelObtain.writeInt(1);
                        profilerInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(146, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startActivityFromRecents(int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(196, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startActivityIntentSender(IApplicationThread iApplicationThread, IIntentSender iIntentSender, IBinder iBinder, Intent intent, String str, IBinder iBinder2, String str2, int i2, int i3, int i4, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iBinder2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(94, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startActivityWithConfig(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, Configuration configuration, Bundle bundle, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (configuration != null) {
                        parcelObtain.writeInt(1);
                        configuration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(101, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startAssistantActivity(String str, int i2, int i3, Intent intent, String str2, Bundle bundle, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(188, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean startBinderTracking() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(232, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void startConfirmDeviceCredentialIntent(Intent intent, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(269, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void startHomePre() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(296, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void startInPlaceAnimationOnFrontMostApplication(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(206, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean startInstrumentation(ComponentName componentName, String str, int i2, Bundle bundle, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection, int i3, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iInstrumentationWatcher != null ? iInstrumentationWatcher.asBinder() : null);
                    parcelObtain.writeStrongBinder(iUiAutomationConnection != null ? iUiAutomationConnection.asBinder() : null);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void startLocalVoiceInteraction(IBinder iBinder, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(257, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void startLockTaskModeById(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(182, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void startLockTaskModeByToken(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(183, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean startNextMatchingActivity(IBinder iBinder, Intent intent, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public ComponentName startService(IApplicationThread iApplicationThread, Intent intent, String str, boolean z2, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    int i3 = 1;
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    if (!z2) {
                        i3 = 0;
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void startSystemLockTaskMode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(191, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean startUserInBackground(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(181, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int startVoiceActivity(String str, int i2, int i3, Intent intent, String str2, IVoiceInteractionSession iVoiceInteractionSession, IVoiceInteractor iVoiceInteractor, int i4, ProfilerInfo profilerInfo, Bundle bundle, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(iVoiceInteractionSession != null ? iVoiceInteractionSession.asBinder() : null);
                    parcelObtain.writeStrongBinder(iVoiceInteractor != null ? iVoiceInteractor.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    if (profilerInfo != null) {
                        parcelObtain.writeInt(1);
                        profilerInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(187, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void stopAppSwitches() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(82, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean stopBinderTrackingAndDump(ParcelFileDescriptor parcelFileDescriptor) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelFileDescriptor != null) {
                        parcelObtain.writeInt(1);
                        parcelFileDescriptor.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(233, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void stopLocalVoiceInteraction(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(258, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void stopLockTaskMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(184, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int stopService(IApplicationThread iApplicationThread, Intent intent, String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean stopServiceToken(ComponentName componentName, IBinder iBinder, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void stopSystemLockTaskMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(192, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public int stopUser(int i2, boolean z2, IStopUserCallback iStopUserCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStrongBinder(iStopUserCallback != null ? iStopUserCallback.asBinder() : null);
                    this.mRemote.transact(147, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean supportsLocalVoiceInteraction() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(259, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void suppressResizeConfigChanges(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(239, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void swapDockedAndFullscreenStack() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(267, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean switchUser(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(124, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void takePersistableUriPermission(Uri uri, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(173, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unbindBackupAgent(ApplicationInfo applicationInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (applicationInfo != null) {
                        parcelObtain.writeInt(1);
                        applicationInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(86, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unbindFinished(IBinder iBinder, Intent intent, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    int i2 = 1;
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean unbindService(IServiceConnection iServiceConnection) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iServiceConnection != null ? iServiceConnection.asBinder() : null);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unbroadcastIntent(IApplicationThread iApplicationThread, Intent intent, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iApplicationThread != null ? iApplicationThread.asBinder() : null);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unhandledBack() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean unlockUser(int i2, byte[] bArr, byte[] bArr2, IProgressListener iProgressListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    parcelObtain.writeStrongBinder(iProgressListener != null ? iProgressListener.asBinder() : null);
                    this.mRemote.transact(243, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unregisterIntentSenderCancelListener(IIntentSender iIntentSender, IResultReceiver iResultReceiver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentSender != null ? iIntentSender.asBinder() : null);
                    parcelObtain.writeStrongBinder(iResultReceiver != null ? iResultReceiver.asBinder() : null);
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unregisterProcessObserver(IProcessObserver iProcessObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iProcessObserver != null ? iProcessObserver.asBinder() : null);
                    this.mRemote.transact(128, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unregisterReceiver(IIntentReceiver iIntentReceiver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iIntentReceiver != null ? iIntentReceiver.asBinder() : null);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unregisterTaskStackListener(ITaskStackListener iTaskStackListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iTaskStackListener != null ? iTaskStackListener.asBinder() : null);
                    this.mRemote.transact(277, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unregisterUidObserver(IUidObserver iUidObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUidObserver != null ? iUidObserver.asBinder() : null);
                    this.mRemote.transact(228, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unregisterUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iUserSwitchObserver != null ? iUserSwitchObserver.asBinder() : null);
                    this.mRemote.transact(149, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void unstableProviderDied(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(144, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean updateConfiguration(Configuration configuration) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (configuration != null) {
                        parcelObtain.writeInt(1);
                        configuration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void updateDeviceOwner(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(224, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean updateDisplayOverrideConfiguration(Configuration configuration, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (configuration != null) {
                        parcelObtain.writeInt(1);
                        configuration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(276, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void updateLockTaskPackages(int i2, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(219, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void updatePersistentConfiguration(Configuration configuration) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (configuration != null) {
                        parcelObtain.writeInt(1);
                        configuration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(130, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public void waitForNetworkStateUpdate(long j2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    this.mRemote.transact(287, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.app.IActivityManager
            public boolean willActivityBeVisible(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(100, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IActivityManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IActivityManager)) ? new Proxy(iBinder) : (IActivityManager) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParcelFileDescriptor parcelFileDescriptorOpenContentUri = openContentUri(parcel.readString());
                    parcel2.writeNoException();
                    if (parcelFileDescriptorOpenContentUri != null) {
                        parcel2.writeInt(1);
                        parcelFileDescriptorOpenContentUri.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    handleApplicationCrash(parcel.readStrongBinder(), parcel.readInt() != 0 ? ApplicationErrorReport.ParcelableCrashInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    int iStartActivity = startActivity(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? ProfilerInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivity);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    unhandledBack();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFinishActivity = finishActivity(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFinishActivity ? 1 : 0);
                    return true;
                case 6:
                    Intent intentRegisterReceiver = registerReceiver(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), IIntentReceiver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (intentRegisterReceiver != null) {
                        parcel2.writeInt(1);
                        intentRegisterReceiver.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterReceiver(IIntentReceiver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    int iBroadcastIntent = broadcastIntent(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), IIntentReceiver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.createStringArray(), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iBroadcastIntent);
                    return true;
                case 9:
                    unbroadcastIntent(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishReceiver(parcel.readStrongBinder(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    attachApplication(IApplicationThread.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    activityIdle(parcel.readStrongBinder(), parcel.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    activityPaused(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    activityStopped(parcel.readStrongBinder(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? PersistableBundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    String callingPackage = getCallingPackage(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeString(callingPackage);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName callingActivity = getCallingActivity(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (callingActivity != null) {
                        parcel2.writeInt(1);
                        callingActivity.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ActivityManager.RunningTaskInfo> tasks = getTasks(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(tasks);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    moveTaskToFront(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    moveTaskBackwards(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int taskForActivity = getTaskForActivity(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(taskForActivity);
                    return true;
                case 21:
                    ContentProviderHolder contentProvider = getContentProvider(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (contentProvider != null) {
                        parcel2.writeInt(1);
                        contentProvider.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 22:
                    publishContentProviders(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.createTypedArrayList(ContentProviderHolder.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRefContentProvider = refContentProvider(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRefContentProvider ? 1 : 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishSubActivity(parcel.readStrongBinder(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    PendingIntent runningServiceControlPanel = getRunningServiceControlPanel(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (runningServiceControlPanel != null) {
                        parcel2.writeInt(1);
                        runningServiceControlPanel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 26:
                    ComponentName componentNameStartService = startService(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (componentNameStartService != null) {
                        parcel2.writeInt(1);
                        componentNameStartService.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 27:
                    int iStopService = stopService(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStopService);
                    return true;
                case 28:
                    int iBindService = bindService(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readStrongBinder(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), IServiceConnection.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iBindService);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnbindService = unbindService(IServiceConnection.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnbindService ? 1 : 0);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    publishService(parcel.readStrongBinder(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    activityResumed(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDebugApp(parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAlwaysFinish(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartInstrumentation = startInstrumentation(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, IInstrumentationWatcher.Stub.asInterface(parcel.readStrongBinder()), IUiAutomationConnection.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartInstrumentation ? 1 : 0);
                    return true;
                case 35:
                    addInstrumentationResults(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 36:
                    finishInstrumentation(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    Configuration configuration = getConfiguration();
                    parcel2.writeNoException();
                    if (configuration != null) {
                        parcel2.writeInt(1);
                        configuration.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUpdateConfiguration = updateConfiguration(parcel.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zUpdateConfiguration ? 1 : 0);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStopServiceToken = stopServiceToken(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zStopServiceToken ? 1 : 0);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName activityClassForToken = getActivityClassForToken(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (activityClassForToken != null) {
                        parcel2.writeInt(1);
                        activityClassForToken.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    String packageForToken = getPackageForToken(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeString(packageForToken);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    setProcessLimit(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    int processLimit = getProcessLimit();
                    parcel2.writeNoException();
                    parcel2.writeInt(processLimit);
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckPermission = checkPermission(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckPermission);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckUriPermission = checkUriPermission(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckUriPermission);
                    return true;
                case 46:
                    grantUriPermission(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    revokeUriPermission(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    setActivityController(IActivityController.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 49:
                    showWaitingForDebugger(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    signalPersistentProcesses(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice recentTasks = getRecentTasks(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (recentTasks != null) {
                        parcel2.writeInt(1);
                        recentTasks.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    serviceDoneExecuting(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    activityDestroyed(parcel.readStrongBinder());
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    IIntentSender intentSender = getIntentSender(parcel.readInt(), parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), (Intent[]) parcel.createTypedArray(Intent.CREATOR), parcel.createStringArray(), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(intentSender != null ? intentSender.asBinder() : null);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelIntentSender(IIntentSender.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    String packageForIntentSender = getPackageForIntentSender(IIntentSender.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeString(packageForIntentSender);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerIntentSenderCancelListener(IIntentSender.Stub.asInterface(parcel.readStrongBinder()), IResultReceiver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterIntentSenderCancelListener(IIntentSender.Stub.asInterface(parcel.readStrongBinder()), IResultReceiver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    enterSafeMode();
                    parcel2.writeNoException();
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartNextMatchingActivity = startNextMatchingActivity(parcel.readStrongBinder(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartNextMatchingActivity ? 1 : 0);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    noteWakeupAlarm(IIntentSender.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeContentProvider(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRequestedOrientation(parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    int requestedOrientation = getRequestedOrientation(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(requestedOrientation);
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    unbindFinished(parcel.readStrongBinder(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    setProcessImportant(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt() != 0, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    setServiceForeground(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder(), parcel.readInt(), parcel.readInt() != 0 ? Notification.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMoveActivityTaskToBack = moveActivityTaskToBack(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zMoveActivityTaskToBack ? 1 : 0);
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    getMemoryInfo(memoryInfo);
                    parcel2.writeNoException();
                    parcel2.writeInt(1);
                    memoryInfo.writeToParcel(parcel2, 1);
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = getProcessesInErrorState();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(processesInErrorState);
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zClearApplicationUserData = clearApplicationUserData(parcel.readString(), IPackageDataObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zClearApplicationUserData ? 1 : 0);
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    forceStopPackage(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zKillPids = killPids(parcel.createIntArray(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zKillPids ? 1 : 0);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ActivityManager.RunningServiceInfo> services = getServices(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(services);
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityManager.TaskThumbnail taskThumbnail = getTaskThumbnail(parcel.readInt());
                    parcel2.writeNoException();
                    if (taskThumbnail != null) {
                        parcel2.writeInt(1);
                        taskThumbnail.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityManager.TaskDescription taskDescription = getTaskDescription(parcel.readInt());
                    parcel2.writeNoException();
                    if (taskDescription != null) {
                        parcel2.writeInt(1);
                        taskDescription.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = getRunningAppProcesses();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(runningAppProcesses);
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    ConfigurationInfo deviceConfigurationInfo = getDeviceConfigurationInfo();
                    parcel2.writeNoException();
                    if (deviceConfigurationInfo != null) {
                        parcel2.writeInt(1);
                        deviceConfigurationInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder iBinderPeekService = peekService(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinderPeekService);
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zProfileControl = profileControl(parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0 ? ProfilerInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zProfileControl ? 1 : 0);
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShutdown = shutdown(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zShutdown ? 1 : 0);
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopAppSwitches();
                    parcel2.writeNoException();
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    resumeAppSwitches();
                    parcel2.writeNoException();
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zBindBackupAgent = bindBackupAgent(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zBindBackupAgent ? 1 : 0);
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    backupAgentCreated(parcel.readString(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    unbindBackupAgent(parcel.readInt() != 0 ? ApplicationInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    int uidForIntentSender = getUidForIntentSender(IIntentSender.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(uidForIntentSender);
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iHandleIncomingUser = handleIncomingUser(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iHandleIncomingUser);
                    return true;
                case 89:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPackageDependency(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 90:
                    parcel.enforceInterface(DESCRIPTOR);
                    killApplication(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 91:
                    parcel.enforceInterface(DESCRIPTOR);
                    closeSystemDialogs(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 92:
                    parcel.enforceInterface(DESCRIPTOR);
                    Debug.MemoryInfo[] processMemoryInfo = getProcessMemoryInfo(parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(processMemoryInfo, 1);
                    return true;
                case 93:
                    parcel.enforceInterface(DESCRIPTOR);
                    killApplicationProcess(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 94:
                    int iStartActivityIntentSender = startActivityIntentSender(android.accessibilityservice.c.b(parcel, DESCRIPTOR), IIntentSender.Stub.asInterface(parcel.readStrongBinder()), parcel.readStrongBinder(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivityIntentSender);
                    return true;
                case 95:
                    parcel.enforceInterface(DESCRIPTOR);
                    overridePendingTransition(parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 96:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHandleApplicationWtf = handleApplicationWtf(parcel.readStrongBinder(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0 ? ApplicationErrorReport.ParcelableCrashInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zHandleApplicationWtf ? 1 : 0);
                    return true;
                case 97:
                    parcel.enforceInterface(DESCRIPTOR);
                    killBackgroundProcesses(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 98:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsUserAMonkey = isUserAMonkey();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsUserAMonkey ? 1 : 0);
                    return true;
                case 99:
                    WaitResult waitResultStartActivityAndWait = startActivityAndWait(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? ProfilerInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (waitResultStartActivityAndWait != null) {
                        parcel2.writeInt(1);
                        waitResultStartActivityAndWait.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 100:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWillActivityBeVisible = willActivityBeVisible(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zWillActivityBeVisible ? 1 : 0);
                    return true;
                case 101:
                    int iStartActivityWithConfig = startActivityWithConfig(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivityWithConfig);
                    return true;
                case 102:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ApplicationInfo> runningExternalApplications = getRunningExternalApplications();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(runningExternalApplications);
                    return true;
                case 103:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishHeavyWeightApp();
                    parcel2.writeNoException();
                    return true;
                case 104:
                    parcel.enforceInterface(DESCRIPTOR);
                    handleApplicationStrictModeViolation(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt() != 0 ? StrictMode.ViolationInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 105:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsImmersive = isImmersive(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsImmersive ? 1 : 0);
                    return true;
                case 106:
                    parcel.enforceInterface(DESCRIPTOR);
                    setImmersive(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 107:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsTopActivityImmersive = isTopActivityImmersive();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsTopActivityImmersive ? 1 : 0);
                    return true;
                case 108:
                    parcel.enforceInterface(DESCRIPTOR);
                    crashApplication(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 109:
                    parcel.enforceInterface(DESCRIPTOR);
                    String providerMimeType = getProviderMimeType(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(providerMimeType);
                    return true;
                case 110:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder iBinderNewUriPermissionOwner = newUriPermissionOwner(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinderNewUriPermissionOwner);
                    return true;
                case 111:
                    parcel.enforceInterface(DESCRIPTOR);
                    grantUriPermissionFromOwner(parcel.readStrongBinder(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 112:
                    parcel.enforceInterface(DESCRIPTOR);
                    revokeUriPermissionFromOwner(parcel.readStrongBinder(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 113:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckGrantUriPermission = checkGrantUriPermission(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckGrantUriPermission);
                    return true;
                case 114:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDumpHeap = dumpHeap(parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zDumpHeap ? 1 : 0);
                    return true;
                case 115:
                    int iStartActivities = startActivities(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), (Intent[]) parcel.createTypedArray(Intent.CREATOR), parcel.createStringArray(), parcel.readStrongBinder(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivities);
                    return true;
                case 116:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsUserRunning = isUserRunning(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsUserRunning ? 1 : 0);
                    return true;
                case 117:
                    parcel.enforceInterface(DESCRIPTOR);
                    activitySlept(parcel.readStrongBinder());
                    return true;
                case 118:
                    parcel.enforceInterface(DESCRIPTOR);
                    int frontActivityScreenCompatMode = getFrontActivityScreenCompatMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(frontActivityScreenCompatMode);
                    return true;
                case 119:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFrontActivityScreenCompatMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 120:
                    parcel.enforceInterface(DESCRIPTOR);
                    int packageScreenCompatMode = getPackageScreenCompatMode(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(packageScreenCompatMode);
                    return true;
                case 121:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPackageScreenCompatMode(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 122:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean packageAskScreenCompat = getPackageAskScreenCompat(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(packageAskScreenCompat ? 1 : 0);
                    return true;
                case 123:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPackageAskScreenCompat(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 124:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSwitchUser = switchUser(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSwitchUser ? 1 : 0);
                    return true;
                case 125:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFocusedTask(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 126:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveTask = removeTask(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveTask ? 1 : 0);
                    return true;
                case 127:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerProcessObserver(IProcessObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 128:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterProcessObserver(IProcessObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 129:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsIntentSenderTargetedToPackage = isIntentSenderTargetedToPackage(IIntentSender.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsIntentSenderTargetedToPackage ? 1 : 0);
                    return true;
                case 130:
                    parcel.enforceInterface(DESCRIPTOR);
                    updatePersistentConfiguration(parcel.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 131:
                    parcel.enforceInterface(DESCRIPTOR);
                    long[] processPss = getProcessPss(parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeLongArray(processPss);
                    return true;
                case 132:
                    parcel.enforceInterface(DESCRIPTOR);
                    showBootMessage(parcel.readInt() != 0 ? TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 133:
                    parcel.enforceInterface(DESCRIPTOR);
                    killAllBackgroundProcesses();
                    parcel2.writeNoException();
                    return true;
                case 134:
                    parcel.enforceInterface(DESCRIPTOR);
                    ContentProviderHolder contentProviderExternal = getContentProviderExternal(parcel.readString(), parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (contentProviderExternal != null) {
                        parcel2.writeInt(1);
                        contentProviderExternal.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 135:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeContentProviderExternal(parcel.readString(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 136:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                    getMyMemoryState(runningAppProcessInfo);
                    parcel2.writeNoException();
                    parcel2.writeInt(1);
                    runningAppProcessInfo.writeToParcel(parcel2, 1);
                    return true;
                case 137:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zKillProcessesBelowForeground = killProcessesBelowForeground(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zKillProcessesBelowForeground ? 1 : 0);
                    return true;
                case 138:
                    parcel.enforceInterface(DESCRIPTOR);
                    UserInfo currentUser = getCurrentUser();
                    parcel2.writeNoException();
                    if (currentUser != null) {
                        parcel2.writeInt(1);
                        currentUser.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 139:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShouldUpRecreateTask = shouldUpRecreateTask(parcel.readStrongBinder(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zShouldUpRecreateTask ? 1 : 0);
                    return true;
                case 140:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNavigateUpTo = navigateUpTo(parcel.readStrongBinder(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zNavigateUpTo ? 1 : 0);
                    return true;
                case 141:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLockScreenShown(parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 142:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zFinishActivityAffinity = finishActivityAffinity(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFinishActivityAffinity ? 1 : 0);
                    return true;
                case 143:
                    parcel.enforceInterface(DESCRIPTOR);
                    int launchedFromUid = getLaunchedFromUid(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(launchedFromUid);
                    return true;
                case 144:
                    parcel.enforceInterface(DESCRIPTOR);
                    unstableProviderDied(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 145:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsIntentSenderAnActivity = isIntentSenderAnActivity(IIntentSender.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsIntentSenderAnActivity ? 1 : 0);
                    return true;
                case 146:
                    int iStartActivityAsUser = startActivityAsUser(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? ProfilerInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivityAsUser);
                    return true;
                case 147:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStopUser = stopUser(parcel.readInt(), parcel.readInt() != 0, IStopUserCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iStopUser);
                    return true;
                case 148:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerUserSwitchObserver(IUserSwitchObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 149:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterUserSwitchObserver(IUserSwitchObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 150:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] runningUserIds = getRunningUserIds();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(runningUserIds);
                    return true;
                case 151:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestBugReport(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 152:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestTelephonyBugReport(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 153:
                    parcel.enforceInterface(DESCRIPTOR);
                    long jInputDispatchingTimedOut = inputDispatchingTimedOut(parcel.readInt(), parcel.readInt() != 0, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(jInputDispatchingTimedOut);
                    return true;
                case 154:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearPendingBackup();
                    parcel2.writeNoException();
                    return true;
                case 155:
                    parcel.enforceInterface(DESCRIPTOR);
                    Intent intentForIntentSender = getIntentForIntentSender(IIntentSender.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (intentForIntentSender != null) {
                        parcel2.writeInt(1);
                        intentForIntentSender.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 156:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle assistContextExtras = getAssistContextExtras(parcel.readInt());
                    parcel2.writeNoException();
                    if (assistContextExtras != null) {
                        parcel2.writeInt(1);
                        assistContextExtras.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 157:
                    parcel.enforceInterface(DESCRIPTOR);
                    reportAssistContextExtras(parcel.readStrongBinder(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? AssistStructure.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? AssistContent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 158:
                    parcel.enforceInterface(DESCRIPTOR);
                    String launchedFromPackage = getLaunchedFromPackage(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeString(launchedFromPackage);
                    return true;
                case 159:
                    parcel.enforceInterface(DESCRIPTOR);
                    killUid(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 160:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUserIsMonkey(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 161:
                    parcel.enforceInterface(DESCRIPTOR);
                    hang(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 162:
                    parcel.enforceInterface(DESCRIPTOR);
                    moveTaskToStack(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 163:
                    parcel.enforceInterface(DESCRIPTOR);
                    resizeStack(parcel.readInt(), parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 164:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ActivityManager.StackInfo> allStackInfos = getAllStackInfos();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allStackInfos);
                    return true;
                case 165:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFocusedStack(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 166:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityManager.StackInfo stackInfo = getStackInfo(parcel.readInt());
                    parcel2.writeNoException();
                    if (stackInfo != null) {
                        parcel2.writeInt(1);
                        stackInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 167:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zConvertFromTranslucent = convertFromTranslucent(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zConvertFromTranslucent ? 1 : 0);
                    return true;
                case 168:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zConvertToTranslucent = convertToTranslucent(parcel.readStrongBinder(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zConvertToTranslucent ? 1 : 0);
                    return true;
                case 169:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyActivityDrawn(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 170:
                    parcel.enforceInterface(DESCRIPTOR);
                    reportActivityFullyDrawn(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 171:
                    parcel.enforceInterface(DESCRIPTOR);
                    restart();
                    parcel2.writeNoException();
                    return true;
                case 172:
                    parcel.enforceInterface(DESCRIPTOR);
                    performIdleMaintenance();
                    parcel2.writeNoException();
                    return true;
                case 173:
                    parcel.enforceInterface(DESCRIPTOR);
                    takePersistableUriPermission(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 174:
                    parcel.enforceInterface(DESCRIPTOR);
                    releasePersistableUriPermission(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 175:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice persistedUriPermissions = getPersistedUriPermissions(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (persistedUriPermissions != null) {
                        parcel2.writeInt(1);
                        persistedUriPermissions.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 176:
                    parcel.enforceInterface(DESCRIPTOR);
                    appNotRespondingViaProvider(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 177:
                    parcel.enforceInterface(DESCRIPTOR);
                    Rect taskBounds = getTaskBounds(parcel.readInt());
                    parcel2.writeNoException();
                    if (taskBounds != null) {
                        parcel2.writeInt(1);
                        taskBounds.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 178:
                    parcel.enforceInterface(DESCRIPTOR);
                    int activityDisplayId = getActivityDisplayId(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(activityDisplayId);
                    return true;
                case 179:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean processMemoryTrimLevel = setProcessMemoryTrimLevel(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(processMemoryTrimLevel ? 1 : 0);
                    return true;
                case 180:
                    parcel.enforceInterface(DESCRIPTOR);
                    String tagForIntentSender = getTagForIntentSender(IIntentSender.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(tagForIntentSender);
                    return true;
                case 181:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartUserInBackground = startUserInBackground(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartUserInBackground ? 1 : 0);
                    return true;
                case 182:
                    parcel.enforceInterface(DESCRIPTOR);
                    startLockTaskModeById(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 183:
                    parcel.enforceInterface(DESCRIPTOR);
                    startLockTaskModeByToken(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 184:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopLockTaskMode();
                    parcel2.writeNoException();
                    return true;
                case 185:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsInLockTaskMode = isInLockTaskMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsInLockTaskMode ? 1 : 0);
                    return true;
                case 186:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTaskDescription(parcel.readStrongBinder(), parcel.readInt() != 0 ? ActivityManager.TaskDescription.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 187:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartVoiceActivity = startVoiceActivity(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), IVoiceInteractionSession.Stub.asInterface(parcel.readStrongBinder()), IVoiceInteractor.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0 ? ProfilerInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartVoiceActivity);
                    return true;
                case 188:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartAssistantActivity = startAssistantActivity(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartAssistantActivity);
                    return true;
                case 189:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle activityOptions = getActivityOptions(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (activityOptions != null) {
                        parcel2.writeInt(1);
                        activityOptions.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 190:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<IBinder> appTasks = getAppTasks(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeBinderList(appTasks);
                    return true;
                case 191:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSystemLockTaskMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 192:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSystemLockTaskMode();
                    parcel2.writeNoException();
                    return true;
                case 193:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishVoiceTask(IVoiceInteractionSession.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 194:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsTopOfTask = isTopOfTask(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsTopOfTask ? 1 : 0);
                    return true;
                case 195:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyLaunchTaskBehindComplete(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 196:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartActivityFromRecents = startActivityFromRecents(parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivityFromRecents);
                    return true;
                case 197:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyEnterAnimationComplete(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 198:
                    int iStartActivityAsCaller = startActivityAsCaller(android.accessibilityservice.c.b(parcel, DESCRIPTOR), parcel.readString(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? ProfilerInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartActivityAsCaller);
                    return true;
                case 199:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAddAppTask = addAppTask(parcel.readStrongBinder(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ActivityManager.TaskDescription.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bitmap.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAddAppTask);
                    return true;
                case 200:
                    parcel.enforceInterface(DESCRIPTOR);
                    Point appTaskThumbnailSize = getAppTaskThumbnailSize();
                    parcel2.writeNoException();
                    if (appTaskThumbnailSize != null) {
                        parcel2.writeInt(1);
                        appTaskThumbnailSize.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 201:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zReleaseActivityInstance = releaseActivityInstance(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zReleaseActivityInstance ? 1 : 0);
                    return true;
                case 202:
                    parcel.enforceInterface(DESCRIPTOR);
                    releaseSomeActivities(IApplicationThread.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 203:
                    parcel.enforceInterface(DESCRIPTOR);
                    bootAnimationComplete();
                    parcel2.writeNoException();
                    return true;
                case 204:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bitmap taskDescriptionIcon = getTaskDescriptionIcon(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (taskDescriptionIcon != null) {
                        parcel2.writeInt(1);
                        taskDescriptionIcon.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 205:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLaunchAssistIntent = launchAssistIntent(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zLaunchAssistIntent ? 1 : 0);
                    return true;
                case 206:
                    parcel.enforceInterface(DESCRIPTOR);
                    startInPlaceAnimationOnFrontMostApplication(parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 207:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckPermissionWithToken = checkPermissionWithToken(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckPermissionWithToken);
                    return true;
                case 208:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerTaskStackListener(ITaskStackListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 209:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyCleartextNetwork(parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 210:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCreateStackOnDisplay = createStackOnDisplay(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCreateStackOnDisplay);
                    return true;
                case 211:
                    parcel.enforceInterface(DESCRIPTOR);
                    int focusedStackId = getFocusedStackId();
                    parcel2.writeNoException();
                    parcel2.writeInt(focusedStackId);
                    return true;
                case 212:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTaskResizeable(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 213:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRequestAssistContextExtras = requestAssistContextExtras(parcel.readInt(), IResultReceiver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zRequestAssistContextExtras ? 1 : 0);
                    return true;
                case 214:
                    parcel.enforceInterface(DESCRIPTOR);
                    resizeTask(parcel.readInt(), parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 215:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lockTaskModeState = getLockTaskModeState();
                    parcel2.writeNoException();
                    parcel2.writeInt(lockTaskModeState);
                    return true;
                case 216:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDumpHeapDebugLimit(parcel.readString(), parcel.readInt(), parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 217:
                    parcel.enforceInterface(DESCRIPTOR);
                    dumpHeapFinished(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 218:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVoiceKeepAwake(IVoiceInteractionSession.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 219:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateLockTaskPackages(parcel.readInt(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 220:
                    parcel.enforceInterface(DESCRIPTOR);
                    noteAlarmStart(IIntentSender.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 221:
                    parcel.enforceInterface(DESCRIPTOR);
                    noteAlarmFinish(IIntentSender.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 222:
                    parcel.enforceInterface(DESCRIPTOR);
                    int packageProcessState = getPackageProcessState(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(packageProcessState);
                    return true;
                case 223:
                    parcel.enforceInterface(DESCRIPTOR);
                    showLockTaskEscapeMessage(parcel.readStrongBinder());
                    return true;
                case 224:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateDeviceOwner(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 225:
                    parcel.enforceInterface(DESCRIPTOR);
                    keyguardGoingAway(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 226:
                    parcel.enforceInterface(DESCRIPTOR);
                    int uidProcessState = getUidProcessState(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(uidProcessState);
                    return true;
                case 227:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerUidObserver(IUidObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 228:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterUidObserver(IUidObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 229:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsAssistDataAllowedOnCurrentActivity = isAssistDataAllowedOnCurrentActivity();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAssistDataAllowedOnCurrentActivity ? 1 : 0);
                    return true;
                case 230:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShowAssistFromActivity = showAssistFromActivity(parcel.readStrongBinder(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zShowAssistFromActivity ? 1 : 0);
                    return true;
                case 231:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsRootVoiceInteraction = isRootVoiceInteraction(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRootVoiceInteraction ? 1 : 0);
                    return true;
                case 232:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartBinderTracking = startBinderTracking();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartBinderTracking ? 1 : 0);
                    return true;
                case 233:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStopBinderTrackingAndDump = stopBinderTrackingAndDump(parcel.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zStopBinderTrackingAndDump ? 1 : 0);
                    return true;
                case 234:
                    parcel.enforceInterface(DESCRIPTOR);
                    positionTaskInStack(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 235:
                    parcel.enforceInterface(DESCRIPTOR);
                    int activityStackId = getActivityStackId(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(activityStackId);
                    return true;
                case 236:
                    parcel.enforceInterface(DESCRIPTOR);
                    exitFreeformMode(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 237:
                    parcel.enforceInterface(DESCRIPTOR);
                    reportSizeConfigurations(parcel.readStrongBinder(), parcel.createIntArray(), parcel.createIntArray(), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 238:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMoveTaskToDockedStack = moveTaskToDockedStack(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zMoveTaskToDockedStack ? 1 : 0);
                    return true;
                case 239:
                    parcel.enforceInterface(DESCRIPTOR);
                    suppressResizeConfigChanges(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 240:
                    parcel.enforceInterface(DESCRIPTOR);
                    moveTasksToFullscreenStack(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 241:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMoveTopActivityToPinnedStack = moveTopActivityToPinnedStack(parcel.readInt(), parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zMoveTopActivityToPinnedStack ? 1 : 0);
                    return true;
                case 242:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsAppStartModeDisabled = isAppStartModeDisabled(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAppStartModeDisabled ? 1 : 0);
                    return true;
                case 243:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnlockUser = unlockUser(parcel.readInt(), parcel.createByteArray(), parcel.createByteArray(), IProgressListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnlockUser ? 1 : 0);
                    return true;
                case 244:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsInMultiWindowMode = isInMultiWindowMode(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsInMultiWindowMode ? 1 : 0);
                    return true;
                case 245:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsInPictureInPictureMode = isInPictureInPictureMode(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsInPictureInPictureMode ? 1 : 0);
                    return true;
                case 246:
                    parcel.enforceInterface(DESCRIPTOR);
                    killPackageDependents(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 247:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zEnterPictureInPictureMode = enterPictureInPictureMode(parcel.readStrongBinder(), parcel.readInt() != 0 ? PictureInPictureParams.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zEnterPictureInPictureMode ? 1 : 0);
                    return true;
                case 248:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPictureInPictureParams(parcel.readStrongBinder(), parcel.readInt() != 0 ? PictureInPictureParams.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 249:
                    parcel.enforceInterface(DESCRIPTOR);
                    int maxNumPictureInPictureActions = getMaxNumPictureInPictureActions(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(maxNumPictureInPictureActions);
                    return true;
                case 250:
                    parcel.enforceInterface(DESCRIPTOR);
                    activityRelaunched(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 251:
                    parcel.enforceInterface(DESCRIPTOR);
                    IBinder uriPermissionOwnerForActivity = getUriPermissionOwnerForActivity(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(uriPermissionOwnerForActivity);
                    return true;
                case 252:
                    parcel.enforceInterface(DESCRIPTOR);
                    resizeDockedStack(parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 253:
                    parcel.enforceInterface(DESCRIPTOR);
                    int vrMode = setVrMode(parcel.readStrongBinder(), parcel.readInt() != 0, parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(vrMode);
                    return true;
                case 254:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice grantedUriPermissions = getGrantedUriPermissions(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (grantedUriPermissions != null) {
                        parcel2.writeInt(1);
                        grantedUriPermissions.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 255:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearGrantedUriPermissions(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 256:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsAppForeground = isAppForeground(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAppForeground ? 1 : 0);
                    return true;
                case 257:
                    parcel.enforceInterface(DESCRIPTOR);
                    startLocalVoiceInteraction(parcel.readStrongBinder(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 258:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopLocalVoiceInteraction(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 259:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSupportsLocalVoiceInteraction = supportsLocalVoiceInteraction();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSupportsLocalVoiceInteraction ? 1 : 0);
                    return true;
                case 260:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyPinnedStackAnimationStarted();
                    parcel2.writeNoException();
                    return true;
                case 261:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyPinnedStackAnimationEnded();
                    parcel2.writeNoException();
                    return true;
                case 262:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeStack(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 263:
                    parcel.enforceInterface(DESCRIPTOR);
                    makePackageIdle(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 264:
                    parcel.enforceInterface(DESCRIPTOR);
                    int memoryTrimLevel = getMemoryTrimLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(memoryTrimLevel);
                    return true;
                case 265:
                    parcel.enforceInterface(DESCRIPTOR);
                    resizePinnedStack(parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 266:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsVrModePackageEnabled = isVrModePackageEnabled(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsVrModePackageEnabled ? 1 : 0);
                    return true;
                case 267:
                    parcel.enforceInterface(DESCRIPTOR);
                    swapDockedAndFullscreenStack();
                    parcel2.writeNoException();
                    return true;
                case 268:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyLockedProfile(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 269:
                    parcel.enforceInterface(DESCRIPTOR);
                    startConfirmDeviceCredentialIntent(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 270:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendIdleJobTrigger();
                    parcel2.writeNoException();
                    return true;
                case 271:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iSendIntentSender = sendIntentSender(IIntentSender.Stub.asInterface(parcel.readStrongBinder()), parcel.readStrongBinder(), parcel.readInt(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), IIntentReceiver.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iSendIntentSender);
                    return true;
                case 272:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVrThread(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 273:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRenderThread(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 274:
                    parcel.enforceInterface(DESCRIPTOR);
                    setHasTopUi(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 275:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestActivityRelaunch(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 276:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUpdateDisplayOverrideConfiguration = updateDisplayOverrideConfiguration(parcel.readInt() != 0 ? Configuration.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zUpdateDisplayOverrideConfiguration ? 1 : 0);
                    return true;
                case 277:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterTaskStackListener(ITaskStackListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 278:
                    parcel.enforceInterface(DESCRIPTOR);
                    moveStackToDisplay(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 279:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRequestAutofillData = requestAutofillData(IResultReceiver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRequestAutofillData ? 1 : 0);
                    return true;
                case 280:
                    parcel.enforceInterface(DESCRIPTOR);
                    dismissKeyguard(parcel.readStrongBinder(), IKeyguardDismissCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 281:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRestartUserInBackground = restartUserInBackground(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRestartUserInBackground);
                    return true;
                case 282:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelTaskWindowTransition(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 283:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelTaskThumbnailTransition(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 284:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityManager.TaskSnapshot taskSnapshot = getTaskSnapshot(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (taskSnapshot != null) {
                        parcel2.writeInt(1);
                        taskSnapshot.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 285:
                    parcel.enforceInterface(DESCRIPTOR);
                    scheduleApplicationInfoChanged(parcel.createStringArrayList(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 286:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPersistentVrThread(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 287:
                    parcel.enforceInterface(DESCRIPTOR);
                    waitForNetworkStateUpdate(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 288:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDisablePreviewScreenshots(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 289:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lastResumedActivityUserId = getLastResumedActivityUserId();
                    parcel2.writeNoException();
                    parcel2.writeInt(lastResumedActivityUserId);
                    return true;
                case 290:
                    parcel.enforceInterface(DESCRIPTOR);
                    backgroundWhitelistUid(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 291:
                    parcel.enforceInterface(DESCRIPTOR);
                    setShowWhenLocked(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 292:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTurnScreenOn(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 293:
                    parcel.enforceInterface(DESCRIPTOR);
                    setProcessProtectArea(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 294:
                    parcel.enforceInterface(DESCRIPTOR);
                    setProcessProtectStatusByPid(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 295:
                    parcel.enforceInterface(DESCRIPTOR);
                    setProcessProtectStatusByProcName(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 296:
                    parcel.enforceInterface(DESCRIPTOR);
                    startHomePre();
                    parcel2.writeNoException();
                    return true;
                case 297:
                    parcel.enforceInterface(DESCRIPTOR);
                    killStopFrontApp(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void activityDestroyed(IBinder iBinder);

    void activityIdle(IBinder iBinder, Configuration configuration, boolean z2);

    void activityPaused(IBinder iBinder);

    void activityRelaunched(IBinder iBinder);

    void activityResumed(IBinder iBinder);

    void activitySlept(IBinder iBinder);

    void activityStopped(IBinder iBinder, Bundle bundle, PersistableBundle persistableBundle, CharSequence charSequence);

    int addAppTask(IBinder iBinder, Intent intent, ActivityManager.TaskDescription taskDescription, Bitmap bitmap);

    void addInstrumentationResults(IApplicationThread iApplicationThread, Bundle bundle);

    void addPackageDependency(String str);

    void appNotRespondingViaProvider(IBinder iBinder);

    void attachApplication(IApplicationThread iApplicationThread);

    void backgroundWhitelistUid(int i2);

    void backupAgentCreated(String str, IBinder iBinder);

    boolean bindBackupAgent(String str, int i2, int i3);

    int bindService(IApplicationThread iApplicationThread, IBinder iBinder, Intent intent, String str, IServiceConnection iServiceConnection, int i2, String str2, int i3);

    void bootAnimationComplete();

    int broadcastIntent(IApplicationThread iApplicationThread, Intent intent, String str, IIntentReceiver iIntentReceiver, int i2, String str2, Bundle bundle, String[] strArr, int i3, Bundle bundle2, boolean z2, boolean z3, int i4);

    void cancelIntentSender(IIntentSender iIntentSender);

    void cancelTaskThumbnailTransition(int i2);

    void cancelTaskWindowTransition(int i2);

    int checkGrantUriPermission(int i2, String str, Uri uri, int i3, int i4);

    int checkPermission(String str, int i2, int i3);

    int checkPermissionWithToken(String str, int i2, int i3, IBinder iBinder);

    int checkUriPermission(Uri uri, int i2, int i3, int i4, int i5, IBinder iBinder);

    boolean clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver, int i2);

    void clearGrantedUriPermissions(String str, int i2);

    void clearPendingBackup();

    void closeSystemDialogs(String str);

    boolean convertFromTranslucent(IBinder iBinder);

    boolean convertToTranslucent(IBinder iBinder, Bundle bundle);

    void crashApplication(int i2, int i3, String str, int i4, String str2);

    int createStackOnDisplay(int i2);

    void dismissKeyguard(IBinder iBinder, IKeyguardDismissCallback iKeyguardDismissCallback);

    boolean dumpHeap(String str, int i2, boolean z2, boolean z3, boolean z4, String str2, ParcelFileDescriptor parcelFileDescriptor);

    void dumpHeapFinished(String str);

    boolean enterPictureInPictureMode(IBinder iBinder, PictureInPictureParams pictureInPictureParams);

    void enterSafeMode();

    void exitFreeformMode(IBinder iBinder);

    boolean finishActivity(IBinder iBinder, int i2, Intent intent, int i3);

    boolean finishActivityAffinity(IBinder iBinder);

    void finishHeavyWeightApp();

    void finishInstrumentation(IApplicationThread iApplicationThread, int i2, Bundle bundle);

    void finishReceiver(IBinder iBinder, int i2, String str, Bundle bundle, boolean z2, int i3);

    void finishSubActivity(IBinder iBinder, String str, int i2);

    void finishVoiceTask(IVoiceInteractionSession iVoiceInteractionSession);

    void forceStopPackage(String str, int i2);

    ComponentName getActivityClassForToken(IBinder iBinder);

    int getActivityDisplayId(IBinder iBinder);

    Bundle getActivityOptions(IBinder iBinder);

    int getActivityStackId(IBinder iBinder);

    List<ActivityManager.StackInfo> getAllStackInfos();

    Point getAppTaskThumbnailSize();

    List<IBinder> getAppTasks(String str);

    Bundle getAssistContextExtras(int i2);

    ComponentName getCallingActivity(IBinder iBinder);

    String getCallingPackage(IBinder iBinder);

    Configuration getConfiguration();

    ContentProviderHolder getContentProvider(IApplicationThread iApplicationThread, String str, int i2, boolean z2);

    ContentProviderHolder getContentProviderExternal(String str, int i2, IBinder iBinder);

    UserInfo getCurrentUser();

    ConfigurationInfo getDeviceConfigurationInfo();

    int getFocusedStackId();

    int getFrontActivityScreenCompatMode();

    ParceledListSlice getGrantedUriPermissions(String str, int i2);

    Intent getIntentForIntentSender(IIntentSender iIntentSender);

    IIntentSender getIntentSender(int i2, String str, IBinder iBinder, String str2, int i3, Intent[] intentArr, String[] strArr, int i4, Bundle bundle, int i5);

    int getLastResumedActivityUserId();

    String getLaunchedFromPackage(IBinder iBinder);

    int getLaunchedFromUid(IBinder iBinder);

    int getLockTaskModeState();

    int getMaxNumPictureInPictureActions(IBinder iBinder);

    void getMemoryInfo(ActivityManager.MemoryInfo memoryInfo);

    int getMemoryTrimLevel();

    void getMyMemoryState(ActivityManager.RunningAppProcessInfo runningAppProcessInfo);

    boolean getPackageAskScreenCompat(String str);

    String getPackageForIntentSender(IIntentSender iIntentSender);

    String getPackageForToken(IBinder iBinder);

    int getPackageProcessState(String str, String str2);

    int getPackageScreenCompatMode(String str);

    ParceledListSlice getPersistedUriPermissions(String str, boolean z2);

    int getProcessLimit();

    Debug.MemoryInfo[] getProcessMemoryInfo(int[] iArr);

    long[] getProcessPss(int[] iArr);

    List<ActivityManager.ProcessErrorStateInfo> getProcessesInErrorState();

    String getProviderMimeType(Uri uri, int i2);

    ParceledListSlice getRecentTasks(int i2, int i3, int i4);

    int getRequestedOrientation(IBinder iBinder);

    List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses();

    List<ApplicationInfo> getRunningExternalApplications();

    PendingIntent getRunningServiceControlPanel(ComponentName componentName);

    int[] getRunningUserIds();

    List<ActivityManager.RunningServiceInfo> getServices(int i2, int i3);

    ActivityManager.StackInfo getStackInfo(int i2);

    String getTagForIntentSender(IIntentSender iIntentSender, String str);

    Rect getTaskBounds(int i2);

    ActivityManager.TaskDescription getTaskDescription(int i2);

    Bitmap getTaskDescriptionIcon(String str, int i2);

    int getTaskForActivity(IBinder iBinder, boolean z2);

    ActivityManager.TaskSnapshot getTaskSnapshot(int i2, boolean z2);

    ActivityManager.TaskThumbnail getTaskThumbnail(int i2);

    List<ActivityManager.RunningTaskInfo> getTasks(int i2, int i3);

    int getUidForIntentSender(IIntentSender iIntentSender);

    int getUidProcessState(int i2, String str);

    IBinder getUriPermissionOwnerForActivity(IBinder iBinder);

    void grantUriPermission(IApplicationThread iApplicationThread, String str, Uri uri, int i2, int i3);

    void grantUriPermissionFromOwner(IBinder iBinder, int i2, String str, Uri uri, int i3, int i4, int i5);

    void handleApplicationCrash(IBinder iBinder, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo);

    void handleApplicationStrictModeViolation(IBinder iBinder, int i2, StrictMode.ViolationInfo violationInfo);

    boolean handleApplicationWtf(IBinder iBinder, String str, boolean z2, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo);

    int handleIncomingUser(int i2, int i3, int i4, boolean z2, boolean z3, String str, String str2);

    void hang(IBinder iBinder, boolean z2);

    long inputDispatchingTimedOut(int i2, boolean z2, String str);

    boolean isAppForeground(int i2);

    boolean isAppStartModeDisabled(int i2, String str);

    boolean isAssistDataAllowedOnCurrentActivity();

    boolean isImmersive(IBinder iBinder);

    boolean isInLockTaskMode();

    boolean isInMultiWindowMode(IBinder iBinder);

    boolean isInPictureInPictureMode(IBinder iBinder);

    boolean isIntentSenderAnActivity(IIntentSender iIntentSender);

    boolean isIntentSenderTargetedToPackage(IIntentSender iIntentSender);

    boolean isRootVoiceInteraction(IBinder iBinder);

    boolean isTopActivityImmersive();

    boolean isTopOfTask(IBinder iBinder);

    boolean isUserAMonkey();

    boolean isUserRunning(int i2, int i3);

    boolean isVrModePackageEnabled(ComponentName componentName);

    void keyguardGoingAway(int i2);

    void killAllBackgroundProcesses();

    void killApplication(String str, int i2, int i3, String str2);

    void killApplicationProcess(String str, int i2);

    void killBackgroundProcesses(String str, int i2);

    void killPackageDependents(String str, int i2);

    boolean killPids(int[] iArr, String str, boolean z2);

    boolean killProcessesBelowForeground(String str);

    void killStopFrontApp(int i2);

    void killUid(int i2, int i3, String str);

    boolean launchAssistIntent(Intent intent, int i2, String str, int i3, Bundle bundle);

    void makePackageIdle(String str, int i2);

    boolean moveActivityTaskToBack(IBinder iBinder, boolean z2);

    void moveStackToDisplay(int i2, int i3);

    void moveTaskBackwards(int i2);

    boolean moveTaskToDockedStack(int i2, int i3, boolean z2, boolean z3, Rect rect);

    void moveTaskToFront(int i2, int i3, Bundle bundle);

    void moveTaskToStack(int i2, int i3, boolean z2);

    void moveTasksToFullscreenStack(int i2, boolean z2);

    boolean moveTopActivityToPinnedStack(int i2, Rect rect);

    boolean navigateUpTo(IBinder iBinder, Intent intent, int i2, Intent intent2);

    IBinder newUriPermissionOwner(String str);

    void noteAlarmFinish(IIntentSender iIntentSender, int i2, String str);

    void noteAlarmStart(IIntentSender iIntentSender, int i2, String str);

    void noteWakeupAlarm(IIntentSender iIntentSender, int i2, String str, String str2);

    void notifyActivityDrawn(IBinder iBinder);

    void notifyCleartextNetwork(int i2, byte[] bArr);

    void notifyEnterAnimationComplete(IBinder iBinder);

    void notifyLaunchTaskBehindComplete(IBinder iBinder);

    void notifyLockedProfile(int i2);

    void notifyPinnedStackAnimationEnded();

    void notifyPinnedStackAnimationStarted();

    ParcelFileDescriptor openContentUri(String str);

    void overridePendingTransition(IBinder iBinder, String str, int i2, int i3);

    IBinder peekService(Intent intent, String str, String str2);

    void performIdleMaintenance();

    void positionTaskInStack(int i2, int i3, int i4);

    boolean profileControl(String str, int i2, boolean z2, ProfilerInfo profilerInfo, int i3);

    void publishContentProviders(IApplicationThread iApplicationThread, List<ContentProviderHolder> list);

    void publishService(IBinder iBinder, Intent intent, IBinder iBinder2);

    boolean refContentProvider(IBinder iBinder, int i2, int i3);

    void registerIntentSenderCancelListener(IIntentSender iIntentSender, IResultReceiver iResultReceiver);

    void registerProcessObserver(IProcessObserver iProcessObserver);

    Intent registerReceiver(IApplicationThread iApplicationThread, String str, IIntentReceiver iIntentReceiver, IntentFilter intentFilter, String str2, int i2, int i3);

    void registerTaskStackListener(ITaskStackListener iTaskStackListener);

    void registerUidObserver(IUidObserver iUidObserver, int i2, int i3, String str);

    void registerUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver, String str);

    boolean releaseActivityInstance(IBinder iBinder);

    void releasePersistableUriPermission(Uri uri, int i2, int i3);

    void releaseSomeActivities(IApplicationThread iApplicationThread);

    void removeContentProvider(IBinder iBinder, boolean z2);

    void removeContentProviderExternal(String str, IBinder iBinder);

    void removeStack(int i2);

    boolean removeTask(int i2);

    void reportActivityFullyDrawn(IBinder iBinder, boolean z2);

    void reportAssistContextExtras(IBinder iBinder, Bundle bundle, AssistStructure assistStructure, AssistContent assistContent, Uri uri);

    void reportSizeConfigurations(IBinder iBinder, int[] iArr, int[] iArr2, int[] iArr3);

    void requestActivityRelaunch(IBinder iBinder);

    boolean requestAssistContextExtras(int i2, IResultReceiver iResultReceiver, Bundle bundle, IBinder iBinder, boolean z2, boolean z3);

    boolean requestAutofillData(IResultReceiver iResultReceiver, Bundle bundle, IBinder iBinder, int i2);

    void requestBugReport(int i2);

    void requestTelephonyBugReport(String str, String str2);

    void resizeDockedStack(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5);

    void resizePinnedStack(Rect rect, Rect rect2);

    void resizeStack(int i2, Rect rect, boolean z2, boolean z3, boolean z4, int i3);

    void resizeTask(int i2, Rect rect, int i3);

    void restart();

    int restartUserInBackground(int i2);

    void resumeAppSwitches();

    void revokeUriPermission(IApplicationThread iApplicationThread, String str, Uri uri, int i2, int i3);

    void revokeUriPermissionFromOwner(IBinder iBinder, Uri uri, int i2, int i3);

    void scheduleApplicationInfoChanged(List<String> list, int i2);

    void sendIdleJobTrigger();

    int sendIntentSender(IIntentSender iIntentSender, IBinder iBinder, int i2, Intent intent, String str, IIntentReceiver iIntentReceiver, String str2, Bundle bundle);

    void serviceDoneExecuting(IBinder iBinder, int i2, int i3, int i4);

    void setActivityController(IActivityController iActivityController, boolean z2);

    void setAlwaysFinish(boolean z2);

    void setDebugApp(String str, boolean z2, boolean z3);

    void setDisablePreviewScreenshots(IBinder iBinder, boolean z2);

    void setDumpHeapDebugLimit(String str, int i2, long j2, String str2);

    void setFocusedStack(int i2);

    void setFocusedTask(int i2);

    void setFrontActivityScreenCompatMode(int i2);

    void setHasTopUi(boolean z2);

    void setImmersive(IBinder iBinder, boolean z2);

    void setLockScreenShown(boolean z2, int i2);

    void setPackageAskScreenCompat(String str, boolean z2);

    void setPackageScreenCompatMode(String str, int i2);

    void setPersistentVrThread(int i2);

    void setPictureInPictureParams(IBinder iBinder, PictureInPictureParams pictureInPictureParams);

    void setProcessImportant(IBinder iBinder, int i2, boolean z2, String str);

    void setProcessLimit(int i2);

    boolean setProcessMemoryTrimLevel(String str, int i2, int i3);

    void setProcessProtectArea(String str, int i2, int i3, int i4);

    void setProcessProtectStatusByPid(int i2, int i3);

    void setProcessProtectStatusByProcName(String str, int i2);

    void setRenderThread(int i2);

    void setRequestedOrientation(IBinder iBinder, int i2);

    void setServiceForeground(ComponentName componentName, IBinder iBinder, int i2, Notification notification, int i3);

    void setShowWhenLocked(IBinder iBinder, boolean z2);

    void setTaskDescription(IBinder iBinder, ActivityManager.TaskDescription taskDescription);

    void setTaskResizeable(int i2, int i3);

    void setTurnScreenOn(IBinder iBinder, boolean z2);

    void setUserIsMonkey(boolean z2);

    void setVoiceKeepAwake(IVoiceInteractionSession iVoiceInteractionSession, boolean z2);

    int setVrMode(IBinder iBinder, boolean z2, ComponentName componentName);

    void setVrThread(int i2);

    boolean shouldUpRecreateTask(IBinder iBinder, String str);

    boolean showAssistFromActivity(IBinder iBinder, Bundle bundle);

    void showBootMessage(CharSequence charSequence, boolean z2);

    void showLockTaskEscapeMessage(IBinder iBinder);

    void showWaitingForDebugger(IApplicationThread iApplicationThread, boolean z2);

    boolean shutdown(int i2);

    void signalPersistentProcesses(int i2);

    int startActivities(IApplicationThread iApplicationThread, String str, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle, int i2);

    int startActivity(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, ProfilerInfo profilerInfo, Bundle bundle);

    WaitResult startActivityAndWait(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, ProfilerInfo profilerInfo, Bundle bundle, int i4);

    int startActivityAsCaller(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, ProfilerInfo profilerInfo, Bundle bundle, boolean z2, int i4);

    int startActivityAsUser(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, ProfilerInfo profilerInfo, Bundle bundle, int i4);

    int startActivityFromRecents(int i2, Bundle bundle);

    int startActivityIntentSender(IApplicationThread iApplicationThread, IIntentSender iIntentSender, IBinder iBinder, Intent intent, String str, IBinder iBinder2, String str2, int i2, int i3, int i4, Bundle bundle);

    int startActivityWithConfig(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, Configuration configuration, Bundle bundle, int i4);

    int startAssistantActivity(String str, int i2, int i3, Intent intent, String str2, Bundle bundle, int i4);

    boolean startBinderTracking();

    void startConfirmDeviceCredentialIntent(Intent intent, Bundle bundle);

    void startHomePre();

    void startInPlaceAnimationOnFrontMostApplication(Bundle bundle);

    boolean startInstrumentation(ComponentName componentName, String str, int i2, Bundle bundle, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection, int i3, String str2);

    void startLocalVoiceInteraction(IBinder iBinder, Bundle bundle);

    void startLockTaskModeById(int i2);

    void startLockTaskModeByToken(IBinder iBinder);

    boolean startNextMatchingActivity(IBinder iBinder, Intent intent, Bundle bundle);

    ComponentName startService(IApplicationThread iApplicationThread, Intent intent, String str, boolean z2, String str2, int i2);

    void startSystemLockTaskMode(int i2);

    boolean startUserInBackground(int i2);

    int startVoiceActivity(String str, int i2, int i3, Intent intent, String str2, IVoiceInteractionSession iVoiceInteractionSession, IVoiceInteractor iVoiceInteractor, int i4, ProfilerInfo profilerInfo, Bundle bundle, int i5);

    void stopAppSwitches();

    boolean stopBinderTrackingAndDump(ParcelFileDescriptor parcelFileDescriptor);

    void stopLocalVoiceInteraction(IBinder iBinder);

    void stopLockTaskMode();

    int stopService(IApplicationThread iApplicationThread, Intent intent, String str, int i2);

    boolean stopServiceToken(ComponentName componentName, IBinder iBinder, int i2);

    void stopSystemLockTaskMode();

    int stopUser(int i2, boolean z2, IStopUserCallback iStopUserCallback);

    boolean supportsLocalVoiceInteraction();

    void suppressResizeConfigChanges(boolean z2);

    void swapDockedAndFullscreenStack();

    boolean switchUser(int i2);

    void takePersistableUriPermission(Uri uri, int i2, int i3);

    void unbindBackupAgent(ApplicationInfo applicationInfo);

    void unbindFinished(IBinder iBinder, Intent intent, boolean z2);

    boolean unbindService(IServiceConnection iServiceConnection);

    void unbroadcastIntent(IApplicationThread iApplicationThread, Intent intent, int i2);

    void unhandledBack();

    boolean unlockUser(int i2, byte[] bArr, byte[] bArr2, IProgressListener iProgressListener);

    void unregisterIntentSenderCancelListener(IIntentSender iIntentSender, IResultReceiver iResultReceiver);

    void unregisterProcessObserver(IProcessObserver iProcessObserver);

    void unregisterReceiver(IIntentReceiver iIntentReceiver);

    void unregisterTaskStackListener(ITaskStackListener iTaskStackListener);

    void unregisterUidObserver(IUidObserver iUidObserver);

    void unregisterUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver);

    void unstableProviderDied(IBinder iBinder);

    boolean updateConfiguration(Configuration configuration);

    void updateDeviceOwner(String str);

    boolean updateDisplayOverrideConfiguration(Configuration configuration, int i2);

    void updateLockTaskPackages(int i2, String[] strArr);

    void updatePersistentConfiguration(Configuration configuration);

    void waitForNetworkStateUpdate(long j2);

    boolean willActivityBeVisible(IBinder iBinder);
}
