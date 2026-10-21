.class public interface abstract Landroid/app/IActivityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract activityDestroyed(Landroid/os/IBinder;)V
.end method

.method public abstract activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
.end method

.method public abstract activityPaused(Landroid/os/IBinder;)V
.end method

.method public abstract activityRelaunched(Landroid/os/IBinder;)V
.end method

.method public abstract activityResumed(Landroid/os/IBinder;)V
.end method

.method public abstract activitySlept(Landroid/os/IBinder;)V
.end method

.method public abstract activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
.end method

.method public abstract addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
.end method

.method public abstract addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V
.end method

.method public abstract addPackageDependency(Ljava/lang/String;)V
.end method

.method public abstract appNotRespondingViaProvider(Landroid/os/IBinder;)V
.end method

.method public abstract attachApplication(Landroid/app/IApplicationThread;)V
.end method

.method public abstract backgroundWhitelistUid(I)V
.end method

.method public abstract backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract bindBackupAgent(Ljava/lang/String;II)Z
.end method

.method public abstract bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
.end method

.method public abstract bootAnimationComplete()V
.end method

.method public abstract broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
.end method

.method public abstract cancelIntentSender(Landroid/content/IIntentSender;)V
.end method

.method public abstract cancelTaskThumbnailTransition(I)V
.end method

.method public abstract cancelTaskWindowTransition(I)V
.end method

.method public abstract checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
.end method

.method public abstract checkPermission(Ljava/lang/String;II)I
.end method

.method public abstract checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
.end method

.method public abstract clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
.end method

.method public abstract clearGrantedUriPermissions(Ljava/lang/String;I)V
.end method

.method public abstract clearPendingBackup()V
.end method

.method public abstract closeSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract convertFromTranslucent(Landroid/os/IBinder;)Z
.end method

.method public abstract convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
.end method

.method public abstract crashApplication(IILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract createStackOnDisplay(I)I
.end method

.method public abstract dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;)V
.end method

.method public abstract dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
.end method

.method public abstract dumpHeapFinished(Ljava/lang/String;)V
.end method

.method public abstract enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
.end method

.method public abstract enterSafeMode()V
.end method

.method public abstract exitFreeformMode(Landroid/os/IBinder;)V
.end method

.method public abstract finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
.end method

.method public abstract finishActivityAffinity(Landroid/os/IBinder;)Z
.end method

.method public abstract finishHeavyWeightApp()V
.end method

.method public abstract finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
.end method

.method public abstract finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
.end method

.method public abstract finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method public abstract finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
.end method

.method public abstract forceStopPackage(Ljava/lang/String;I)V
.end method

.method public abstract getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
.end method

.method public abstract getActivityDisplayId(Landroid/os/IBinder;)I
.end method

.method public abstract getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
.end method

.method public abstract getActivityStackId(Landroid/os/IBinder;)I
.end method

.method public abstract getAllStackInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppTaskThumbnailSize()Landroid/graphics/Point;
.end method

.method public abstract getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssistContextExtras(I)Landroid/os/Bundle;
.end method

.method public abstract getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
.end method

.method public abstract getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract getConfiguration()Landroid/content/res/Configuration;
.end method

.method public abstract getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
.end method

.method public abstract getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;
.end method

.method public abstract getCurrentUser()Landroid/content/pm/UserInfo;
.end method

.method public abstract getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
.end method

.method public abstract getFocusedStackId()I
.end method

.method public abstract getFrontActivityScreenCompatMode()I
.end method

.method public abstract getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
.end method

.method public abstract getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
.end method

.method public abstract getLastResumedActivityUserId()I
.end method

.method public abstract getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract getLaunchedFromUid(Landroid/os/IBinder;)I
.end method

.method public abstract getLockTaskModeState()I
.end method

.method public abstract getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I
.end method

.method public abstract getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
.end method

.method public abstract getMemoryTrimLevel()I
.end method

.method public abstract getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
.end method

.method public abstract getPackageAskScreenCompat(Ljava/lang/String;)Z
.end method

.method public abstract getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
.end method

.method public abstract getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getPackageScreenCompatMode(Ljava/lang/String;)I
.end method

.method public abstract getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getProcessLimit()I
.end method

.method public abstract getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
.end method

.method public abstract getProcessPss([I)[J
.end method

.method public abstract getProcessesInErrorState()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
.end method

.method public abstract getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getRequestedOrientation(Landroid/os/IBinder;)I
.end method

.method public abstract getRunningAppProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningExternalApplications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
.end method

.method public abstract getRunningUserIds()[I
.end method

.method public abstract getServices(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
.end method

.method public abstract getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTaskBounds(I)Landroid/graphics/Rect;
.end method

.method public abstract getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
.end method

.method public abstract getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.end method

.method public abstract getTaskForActivity(Landroid/os/IBinder;Z)I
.end method

.method public abstract getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;
.end method

.method public abstract getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
.end method

.method public abstract getTasks(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUidForIntentSender(Landroid/content/IIntentSender;)I
.end method

.method public abstract getUidProcessState(ILjava/lang/String;)I
.end method

.method public abstract getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
.end method

.method public abstract grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
.end method

.method public abstract grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
.end method

.method public abstract handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
.end method

.method public abstract handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
.end method

.method public abstract handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;)Z
.end method

.method public abstract handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract hang(Landroid/os/IBinder;Z)V
.end method

.method public abstract inputDispatchingTimedOut(IZLjava/lang/String;)J
.end method

.method public abstract isAppForeground(I)Z
.end method

.method public abstract isAppStartModeDisabled(ILjava/lang/String;)Z
.end method

.method public abstract isAssistDataAllowedOnCurrentActivity()Z
.end method

.method public abstract isImmersive(Landroid/os/IBinder;)Z
.end method

.method public abstract isInLockTaskMode()Z
.end method

.method public abstract isInMultiWindowMode(Landroid/os/IBinder;)Z
.end method

.method public abstract isInPictureInPictureMode(Landroid/os/IBinder;)Z
.end method

.method public abstract isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
.end method

.method public abstract isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
.end method

.method public abstract isRootVoiceInteraction(Landroid/os/IBinder;)Z
.end method

.method public abstract isTopActivityImmersive()Z
.end method

.method public abstract isTopOfTask(Landroid/os/IBinder;)Z
.end method

.method public abstract isUserAMonkey()Z
.end method

.method public abstract isUserRunning(II)Z
.end method

.method public abstract isVrModePackageEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract keyguardGoingAway(I)V
.end method

.method public abstract killAllBackgroundProcesses()V
.end method

.method public abstract killApplication(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract killApplicationProcess(Ljava/lang/String;I)V
.end method

.method public abstract killBackgroundProcesses(Ljava/lang/String;I)V
.end method

.method public abstract killPackageDependents(Ljava/lang/String;I)V
.end method

.method public abstract killPids([ILjava/lang/String;Z)Z
.end method

.method public abstract killProcessesBelowForeground(Ljava/lang/String;)Z
.end method

.method public abstract killStopFrontApp(I)V
.end method

.method public abstract killUid(IILjava/lang/String;)V
.end method

.method public abstract launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
.end method

.method public abstract makePackageIdle(Ljava/lang/String;I)V
.end method

.method public abstract moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
.end method

.method public abstract moveStackToDisplay(II)V
.end method

.method public abstract moveTaskBackwards(I)V
.end method

.method public abstract moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z
.end method

.method public abstract moveTaskToFront(IILandroid/os/Bundle;)V
.end method

.method public abstract moveTaskToStack(IIZ)V
.end method

.method public abstract moveTasksToFullscreenStack(IZ)V
.end method

.method public abstract moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z
.end method

.method public abstract navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
.end method

.method public abstract newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
.end method

.method public abstract noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
.end method

.method public abstract noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyActivityDrawn(Landroid/os/IBinder;)V
.end method

.method public abstract notifyCleartextNetwork(I[B)V
.end method

.method public abstract notifyEnterAnimationComplete(Landroid/os/IBinder;)V
.end method

.method public abstract notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
.end method

.method public abstract notifyLockedProfile(I)V
.end method

.method public abstract notifyPinnedStackAnimationEnded()V
.end method

.method public abstract notifyPinnedStackAnimationStarted()V
.end method

.method public abstract openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
.end method

.method public abstract peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract performIdleMaintenance()V
.end method

.method public abstract positionTaskInStack(III)V
.end method

.method public abstract profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z
.end method

.method public abstract publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List<",
            "Landroid/app/ContentProviderHolder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
.end method

.method public abstract refContentProvider(Landroid/os/IBinder;II)Z
.end method

.method public abstract registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
.end method

.method public abstract registerProcessObserver(Landroid/app/IProcessObserver;)V
.end method

.method public abstract registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
.end method

.method public abstract registerTaskStackListener(Landroid/app/ITaskStackListener;)V
.end method

.method public abstract registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
.end method

.method public abstract registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
.end method

.method public abstract releaseActivityInstance(Landroid/os/IBinder;)Z
.end method

.method public abstract releasePersistableUriPermission(Landroid/net/Uri;II)V
.end method

.method public abstract releaseSomeActivities(Landroid/app/IApplicationThread;)V
.end method

.method public abstract removeContentProvider(Landroid/os/IBinder;Z)V
.end method

.method public abstract removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract removeStack(I)V
.end method

.method public abstract removeTask(I)Z
.end method

.method public abstract reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
.end method

.method public abstract reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
.end method

.method public abstract reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
.end method

.method public abstract requestActivityRelaunch(Landroid/os/IBinder;)V
.end method

.method public abstract requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
.end method

.method public abstract requestAutofillData(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z
.end method

.method public abstract requestBugReport(I)V
.end method

.method public abstract requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract resizeStack(ILandroid/graphics/Rect;ZZZI)V
.end method

.method public abstract resizeTask(ILandroid/graphics/Rect;I)V
.end method

.method public abstract restart()V
.end method

.method public abstract restartUserInBackground(I)I
.end method

.method public abstract resumeAppSwitches()V
.end method

.method public abstract revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
.end method

.method public abstract revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
.end method

.method public abstract scheduleApplicationInfoChanged(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract sendIdleJobTrigger()V
.end method

.method public abstract sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract serviceDoneExecuting(Landroid/os/IBinder;III)V
.end method

.method public abstract setActivityController(Landroid/app/IActivityController;Z)V
.end method

.method public abstract setAlwaysFinish(Z)V
.end method

.method public abstract setDebugApp(Ljava/lang/String;ZZ)V
.end method

.method public abstract setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V
.end method

.method public abstract setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
.end method

.method public abstract setFocusedStack(I)V
.end method

.method public abstract setFocusedTask(I)V
.end method

.method public abstract setFrontActivityScreenCompatMode(I)V
.end method

.method public abstract setHasTopUi(Z)V
.end method

.method public abstract setImmersive(Landroid/os/IBinder;Z)V
.end method

.method public abstract setLockScreenShown(ZI)V
.end method

.method public abstract setPackageAskScreenCompat(Ljava/lang/String;Z)V
.end method

.method public abstract setPackageScreenCompatMode(Ljava/lang/String;I)V
.end method

.method public abstract setPersistentVrThread(I)V
.end method

.method public abstract setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
.end method

.method public abstract setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
.end method

.method public abstract setProcessLimit(I)V
.end method

.method public abstract setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
.end method

.method public abstract setProcessProtectArea(Ljava/lang/String;III)V
.end method

.method public abstract setProcessProtectStatusByPid(II)V
.end method

.method public abstract setProcessProtectStatusByProcName(Ljava/lang/String;I)V
.end method

.method public abstract setRenderThread(I)V
.end method

.method public abstract setRequestedOrientation(Landroid/os/IBinder;I)V
.end method

.method public abstract setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V
.end method

.method public abstract setShowWhenLocked(Landroid/os/IBinder;Z)V
.end method

.method public abstract setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
.end method

.method public abstract setTaskResizeable(II)V
.end method

.method public abstract setTurnScreenOn(Landroid/os/IBinder;Z)V
.end method

.method public abstract setUserIsMonkey(Z)V
.end method

.method public abstract setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
.end method

.method public abstract setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
.end method

.method public abstract setVrThread(I)V
.end method

.method public abstract shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
.end method

.method public abstract showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showLockTaskEscapeMessage(Landroid/os/IBinder;)V
.end method

.method public abstract showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
.end method

.method public abstract shutdown(I)Z
.end method

.method public abstract signalPersistentProcesses(I)V
.end method

.method public abstract startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
.end method

.method public abstract startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
.end method

.method public abstract startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
.end method

.method public abstract startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
.end method

.method public abstract startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
.end method

.method public abstract startActivityFromRecents(ILandroid/os/Bundle;)I
.end method

.method public abstract startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
.end method

.method public abstract startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
.end method

.method public abstract startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
.end method

.method public abstract startBinderTracking()Z
.end method

.method public abstract startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public abstract startHomePre()V
.end method

.method public abstract startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V
.end method

.method public abstract startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
.end method

.method public abstract startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
.end method

.method public abstract startLockTaskModeById(I)V
.end method

.method public abstract startLockTaskModeByToken(Landroid/os/IBinder;)V
.end method

.method public abstract startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
.end method

.method public abstract startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;
.end method

.method public abstract startSystemLockTaskMode(I)V
.end method

.method public abstract startUserInBackground(I)Z
.end method

.method public abstract startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
.end method

.method public abstract stopAppSwitches()V
.end method

.method public abstract stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z
.end method

.method public abstract stopLocalVoiceInteraction(Landroid/os/IBinder;)V
.end method

.method public abstract stopLockTaskMode()V
.end method

.method public abstract stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
.end method

.method public abstract stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
.end method

.method public abstract stopSystemLockTaskMode()V
.end method

.method public abstract stopUser(IZLandroid/app/IStopUserCallback;)I
.end method

.method public abstract supportsLocalVoiceInteraction()Z
.end method

.method public abstract suppressResizeConfigChanges(Z)V
.end method

.method public abstract swapDockedAndFullscreenStack()V
.end method

.method public abstract switchUser(I)Z
.end method

.method public abstract takePersistableUriPermission(Landroid/net/Uri;II)V
.end method

.method public abstract unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
.end method

.method public abstract unbindService(Landroid/app/IServiceConnection;)Z
.end method

.method public abstract unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
.end method

.method public abstract unhandledBack()V
.end method

.method public abstract unlockUser(I[B[BLandroid/os/IProgressListener;)Z
.end method

.method public abstract unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
.end method

.method public abstract unregisterProcessObserver(Landroid/app/IProcessObserver;)V
.end method

.method public abstract unregisterReceiver(Landroid/content/IIntentReceiver;)V
.end method

.method public abstract unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
.end method

.method public abstract unregisterUidObserver(Landroid/app/IUidObserver;)V
.end method

.method public abstract unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
.end method

.method public abstract unstableProviderDied(Landroid/os/IBinder;)V
.end method

.method public abstract updateConfiguration(Landroid/content/res/Configuration;)Z
.end method

.method public abstract updateDeviceOwner(Ljava/lang/String;)V
.end method

.method public abstract updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z
.end method

.method public abstract updateLockTaskPackages(I[Ljava/lang/String;)V
.end method

.method public abstract updatePersistentConfiguration(Landroid/content/res/Configuration;)V
.end method

.method public abstract waitForNetworkStateUpdate(J)V
.end method

.method public abstract willActivityBeVisible(Landroid/os/IBinder;)Z
.end method
