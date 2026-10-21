package android.app;

import android.content.ComponentName;
import android.content.ContentProviderNative;
import android.content.IContentProvider;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.UriPermission;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.ParceledListSlice;
import android.content.pm.ProviderInfo;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Debug;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.StrictMode;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IActivityManager extends IInterface {
    public static final int ACTIVITY_DESTROYED_TRANSACTION = 62;
    public static final int ACTIVITY_IDLE_TRANSACTION = 18;
    public static final int ACTIVITY_PAUSED_TRANSACTION = 19;
    public static final int ACTIVITY_RESUMED_TRANSACTION = 39;
    public static final int ACTIVITY_SLEPT_TRANSACTION = 123;
    public static final int ACTIVITY_STOPPED_TRANSACTION = 20;
    public static final int APP_NOT_RESPONDING_VIA_PROVIDER_TRANSACTION = 183;
    public static final int ATTACH_APPLICATION_TRANSACTION = 17;
    public static final int BACKUP_AGENT_CREATED_TRANSACTION = 91;
    public static final int BIND_SERVICE_TRANSACTION = 36;
    public static final int BROADCAST_INTENT_TRANSACTION = 14;
    public static final int CANCEL_INTENT_SENDER_TRANSACTION = 64;
    public static final int CHECK_GRANT_URI_PERMISSION_TRANSACTION = 119;
    public static final int CHECK_PERMISSION_TRANSACTION = 53;
    public static final int CHECK_URI_PERMISSION_TRANSACTION = 54;
    public static final int CLEAR_APP_DATA_TRANSACTION = 78;
    public static final int CLEAR_PENDING_BACKUP_TRANSACTION = 160;
    public static final int CLOSE_SYSTEM_DIALOGS_TRANSACTION = 97;
    public static final int CONVERT_FROM_TRANSLUCENT_TRANSACTION = 174;
    public static final int CONVERT_TO_TRANSLUCENT_TRANSACTION = 175;
    public static final int CRASH_APPLICATION_TRANSACTION = 114;
    public static final int CREATE_STACK_TRANSACTION = 168;
    public static final int DISMISS_KEYGUARD_ON_NEXT_ACTIVITY_TRANSACTION = 139;
    public static final int DUMP_HEAP_TRANSACTION = 120;
    public static final int ENTER_SAFE_MODE_TRANSACTION = 66;
    public static final int FINISH_ACTIVITY_AFFINITY_TRANSACTION = 149;
    public static final int FINISH_ACTIVITY_TRANSACTION = 11;
    public static final int FINISH_HEAVY_WEIGHT_APP_TRANSACTION = 109;
    public static final int FINISH_INSTRUMENTATION_TRANSACTION = 45;
    public static final int FINISH_RECEIVER_TRANSACTION = 16;
    public static final int FINISH_SUB_ACTIVITY_TRANSACTION = 32;
    public static final int FORCE_STOP_PACKAGE_TRANSACTION = 79;
    public static final int GET_ACTIVITY_CLASS_FOR_TOKEN_TRANSACTION = 49;
    public static final int GET_ASSIST_CONTEXT_EXTRAS_TRANSACTION = 162;
    public static final int GET_CALLING_ACTIVITY_TRANSACTION = 22;
    public static final int GET_CALLING_PACKAGE_TRANSACTION = 21;
    public static final int GET_CONFIGURATION_TRANSACTION = 46;
    public static final int GET_CONTENT_PROVIDER_EXTERNAL_TRANSACTION = 141;
    public static final int GET_CONTENT_PROVIDER_TRANSACTION = 29;
    public static final int GET_CURRENT_USER_TRANSACTION = 145;
    public static final int GET_DEVICE_CONFIGURATION_TRANSACTION = 84;
    public static final int GET_FRONT_ACTIVITY_SCREEN_COMPAT_MODE_TRANSACTION = 124;
    public static final int GET_INTENT_FOR_INTENT_SENDER_TRANSACTION = 161;
    public static final int GET_INTENT_SENDER_TRANSACTION = 63;
    public static final int GET_LAUNCHED_FROM_PACKAGE_TRANSACTION = 164;
    public static final int GET_LAUNCHED_FROM_UID_TRANSACTION = 150;
    public static final int GET_MEMORY_INFO_TRANSACTION = 76;
    public static final int GET_MY_MEMORY_STATE_TRANSACTION = 143;
    public static final int GET_PACKAGE_ASK_SCREEN_COMPAT_TRANSACTION = 128;
    public static final int GET_PACKAGE_FOR_INTENT_SENDER_TRANSACTION = 65;
    public static final int GET_PACKAGE_FOR_TOKEN_TRANSACTION = 50;
    public static final int GET_PACKAGE_SCREEN_COMPAT_MODE_TRANSACTION = 126;
    public static final int GET_PERSISTED_URI_PERMISSIONS_TRANSACTION = 182;
    public static final int GET_PROCESSES_IN_ERROR_STATE_TRANSACTION = 77;
    public static final int GET_PROCESS_LIMIT_TRANSACTION = 52;
    public static final int GET_PROCESS_MEMORY_INFO_TRANSACTION = 98;
    public static final int GET_PROCESS_PSS_TRANSACTION = 137;
    public static final int GET_PROVIDER_MIME_TYPE_TRANSACTION = 115;
    public static final int GET_RECENT_TASKS_TRANSACTION = 60;
    public static final int GET_REQUESTED_ORIENTATION_TRANSACTION = 71;
    public static final int GET_RUNNING_APP_PROCESSES_TRANSACTION = 83;
    public static final int GET_RUNNING_EXTERNAL_APPLICATIONS_TRANSACTION = 108;
    public static final int GET_RUNNING_SERVICE_CONTROL_PANEL_TRANSACTION = 33;
    public static final int GET_RUNNING_USER_IDS_TRANSACTION = 157;
    public static final int GET_SERVICES_TRANSACTION = 81;
    public static final int GET_STACK_BOXES_TRANSACTION = 171;
    public static final int GET_STACK_BOX_INFO_TRANSACTION = 173;
    public static final int GET_TASKS_TRANSACTION = 23;
    public static final int GET_TASK_FOR_ACTIVITY_TRANSACTION = 27;
    public static final int GET_TASK_THUMBNAILS_TRANSACTION = 82;
    public static final int GET_TASK_TOP_THUMBNAIL_TRANSACTION = 95;
    public static final int GET_UID_FOR_INTENT_SENDER_TRANSACTION = 93;
    public static final int GOING_TO_SLEEP_TRANSACTION = 40;
    public static final int GRANT_URI_PERMISSION_FROM_OWNER_TRANSACTION = 117;
    public static final int GRANT_URI_PERMISSION_TRANSACTION = 55;
    public static final int HANDLE_APPLICATION_CRASH_TRANSACTION = 2;
    public static final int HANDLE_APPLICATION_STRICT_MODE_VIOLATION_TRANSACTION = 110;
    public static final int HANDLE_APPLICATION_WTF_TRANSACTION = 102;
    public static final int HANDLE_INCOMING_USER_TRANSACTION = 94;
    public static final int HANG_TRANSACTION = 167;
    public static final int INPUT_DISPATCHING_TIMED_OUT_TRANSACTION = 159;
    public static final int IS_IMMERSIVE_TRANSACTION = 111;
    public static final int IS_INTENT_SENDER_AN_ACTIVITY_TRANSACTION = 152;
    public static final int IS_INTENT_SENDER_TARGETED_TO_PACKAGE_TRANSACTION = 135;
    public static final int IS_TOP_ACTIVITY_IMMERSIVE_TRANSACTION = 113;
    public static final int IS_USER_A_MONKEY_TRANSACTION = 104;
    public static final int IS_USER_RUNNING_TRANSACTION = 122;
    public static final int KILL_ALL_BACKGROUND_PROCESSES_TRANSACTION = 140;
    public static final int KILL_APPLICATION_PROCESS_TRANSACTION = 99;
    public static final int KILL_APPLICATION_WITH_APPID_TRANSACTION = 96;
    public static final int KILL_BACKGROUND_PROCESSES_TRANSACTION = 103;
    public static final int KILL_PIDS_TRANSACTION = 80;
    public static final int KILL_PROCESSES_BELOW_FOREGROUND_TRANSACTION = 144;
    public static final int KILL_UID_TRANSACTION = 165;
    public static final int MOVE_ACTIVITY_TASK_TO_BACK_TRANSACTION = 75;
    public static final int MOVE_TASK_BACKWARDS_TRANSACTION = 26;
    public static final int MOVE_TASK_TO_BACK_TRANSACTION = 25;
    public static final int MOVE_TASK_TO_FRONT_TRANSACTION = 24;
    public static final int MOVE_TASK_TO_STACK_TRANSACTION = 169;
    public static final int NAVIGATE_UP_TO_TRANSACTION = 147;
    public static final int NEW_URI_PERMISSION_OWNER_TRANSACTION = 116;
    public static final int NOTE_WAKEUP_ALARM_TRANSACTION = 68;
    public static final int NOTIFY_ACTIVITY_DRAWN_TRANSACTION = 176;
    public static final int OPEN_CONTENT_URI_TRANSACTION = 5;
    public static final int OVERRIDE_PENDING_TRANSITION_TRANSACTION = 101;
    public static final int PEEK_SERVICE_TRANSACTION = 85;
    public static final int PERFORM_IDLE_MAINTENANCE_TRANSACTION = 179;
    public static final int PROFILE_CONTROL_TRANSACTION = 86;
    public static final int PUBLISH_CONTENT_PROVIDERS_TRANSACTION = 30;
    public static final int PUBLISH_SERVICE_TRANSACTION = 38;
    public static final int REF_CONTENT_PROVIDER_TRANSACTION = 31;
    public static final int REGISTER_PROCESS_OBSERVER_TRANSACTION = 133;
    public static final int REGISTER_RECEIVER_TRANSACTION = 12;
    public static final int REGISTER_USER_SWITCH_OBSERVER_TRANSACTION = 155;
    public static final int RELEASE_PERSISTABLE_URI_PERMISSION_TRANSACTION = 181;
    public static final int REMOVE_CONTENT_PROVIDER_EXTERNAL_TRANSACTION = 142;
    public static final int REMOVE_CONTENT_PROVIDER_TRANSACTION = 69;
    public static final int REMOVE_SUB_TASK_TRANSACTION = 131;
    public static final int REMOVE_TASK_TRANSACTION = 132;
    public static final int REPORT_ACTIVITY_FULLY_DRAWN_TRANSACTION = 177;
    public static final int REPORT_ASSIST_CONTEXT_EXTRAS_TRANSACTION = 163;
    public static final int REPORT_THUMBNAIL_TRANSACTION = 28;
    public static final int REQUEST_BUG_REPORT_TRANSACTION = 158;
    public static final int RESIZE_STACK_TRANSACTION = 170;
    public static final int RESTART_TRANSACTION = 178;
    public static final int RESUME_APP_SWITCHES_TRANSACTION = 89;
    public static final int REVOKE_URI_PERMISSION_FROM_OWNER_TRANSACTION = 118;
    public static final int REVOKE_URI_PERMISSION_TRANSACTION = 56;
    public static final int SERVICE_DONE_EXECUTING_TRANSACTION = 61;
    public static final int SET_ACTIVITY_CONTROLLER_TRANSACTION = 57;
    public static final int SET_ALWAYS_FINISH_TRANSACTION = 43;
    public static final int SET_DEBUG_APP_TRANSACTION = 42;
    public static final int SET_FOCUSED_STACK_TRANSACTION = 172;
    public static final int SET_FRONT_ACTIVITY_SCREEN_COMPAT_MODE_TRANSACTION = 125;
    public static final int SET_IMMERSIVE_TRANSACTION = 112;
    public static final int SET_LOCK_SCREEN_SHOWN_TRANSACTION = 148;
    public static final int SET_PACKAGE_ASK_SCREEN_COMPAT_TRANSACTION = 129;
    public static final int SET_PACKAGE_SCREEN_COMPAT_MODE_TRANSACTION = 127;
    public static final int SET_PROCESS_FOREGROUND_TRANSACTION = 73;
    public static final int SET_PROCESS_LIMIT_TRANSACTION = 51;
    public static final int SET_REQUESTED_ORIENTATION_TRANSACTION = 70;
    public static final int SET_SERVICE_FOREGROUND_TRANSACTION = 74;
    public static final int SET_USER_IS_MONKEY_TRANSACTION = 166;
    public static final int SHOW_BOOT_MESSAGE_TRANSACTION = 138;
    public static final int SHOW_WAITING_FOR_DEBUGGER_TRANSACTION = 58;
    public static final int SHUTDOWN_TRANSACTION = 87;
    public static final int SIGNAL_PERSISTENT_PROCESSES_TRANSACTION = 59;
    public static final int START_ACTIVITIES_TRANSACTION = 121;
    public static final int START_ACTIVITY_AND_WAIT_TRANSACTION = 105;
    public static final int START_ACTIVITY_AS_USER_TRANSACTION = 153;
    public static final int START_ACTIVITY_INTENT_SENDER_TRANSACTION = 100;
    public static final int START_ACTIVITY_TRANSACTION = 3;
    public static final int START_ACTIVITY_WITH_CONFIG_TRANSACTION = 107;
    public static final int START_BACKUP_AGENT_TRANSACTION = 90;
    public static final int START_INSTRUMENTATION_TRANSACTION = 44;
    public static final int START_NEXT_MATCHING_ACTIVITY_TRANSACTION = 67;
    public static final int START_RUNNING_TRANSACTION = 1;
    public static final int START_SERVICE_TRANSACTION = 34;
    public static final int STOP_APP_SWITCHES_TRANSACTION = 88;
    public static final int STOP_SERVICE_TOKEN_TRANSACTION = 48;
    public static final int STOP_SERVICE_TRANSACTION = 35;
    public static final int STOP_USER_TRANSACTION = 154;
    public static final int SWITCH_USER_TRANSACTION = 130;
    public static final int TAKE_PERSISTABLE_URI_PERMISSION_TRANSACTION = 180;
    public static final int TARGET_TASK_AFFINITY_MATCHES_ACTIVITY_TRANSACTION = 146;
    public static final int UNBIND_BACKUP_AGENT_TRANSACTION = 92;
    public static final int UNBIND_FINISHED_TRANSACTION = 72;
    public static final int UNBIND_SERVICE_TRANSACTION = 37;
    public static final int UNBROADCAST_INTENT_TRANSACTION = 15;
    public static final int UNHANDLED_BACK_TRANSACTION = 4;
    public static final int UNREGISTER_PROCESS_OBSERVER_TRANSACTION = 134;
    public static final int UNREGISTER_RECEIVER_TRANSACTION = 13;
    public static final int UNREGISTER_USER_SWITCH_OBSERVER_TRANSACTION = 156;
    public static final int UNSTABLE_PROVIDER_DIED_TRANSACTION = 151;
    public static final int UPDATE_CONFIGURATION_TRANSACTION = 47;
    public static final int UPDATE_PERSISTENT_CONFIGURATION_TRANSACTION = 136;
    public static final int WAKING_UP_TRANSACTION = 41;
    public static final int WILL_ACTIVITY_BE_VISIBLE_TRANSACTION = 106;
    public static final String descriptor = "android.app.IActivityManager";

    public static class ContentProviderHolder implements Parcelable {
        public static final Parcelable.Creator<ContentProviderHolder> CREATOR = new Parcelable.Creator<ContentProviderHolder>() { // from class: android.app.IActivityManager.ContentProviderHolder.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ContentProviderHolder createFromParcel(Parcel parcel) {
                return new ContentProviderHolder(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ContentProviderHolder[] newArray(int i2) {
                return new ContentProviderHolder[i2];
            }
        };
        public IBinder connection;
        public final ProviderInfo info;
        public boolean noReleaseNeeded;
        public IContentProvider provider;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            this.info.writeToParcel(parcel, 0);
            IContentProvider iContentProvider = this.provider;
            if (iContentProvider != null) {
                parcel.writeStrongBinder(iContentProvider.asBinder());
            } else {
                parcel.writeStrongBinder(null);
            }
            parcel.writeStrongBinder(this.connection);
            parcel.writeInt(this.noReleaseNeeded ? 1 : 0);
        }

        public ContentProviderHolder(ProviderInfo providerInfo) {
            this.info = providerInfo;
        }

        private ContentProviderHolder(Parcel parcel) {
            this.info = ProviderInfo.CREATOR.createFromParcel(parcel);
            this.provider = ContentProviderNative.asInterface(parcel.readStrongBinder());
            this.connection = parcel.readStrongBinder();
            this.noReleaseNeeded = parcel.readInt() != 0;
        }
    }

    public static class WaitResult implements Parcelable {
        public static final Parcelable.Creator<WaitResult> CREATOR = new Parcelable.Creator<WaitResult>() { // from class: android.app.IActivityManager.WaitResult.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WaitResult createFromParcel(Parcel parcel) {
                return new WaitResult(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WaitResult[] newArray(int i2) {
                return new WaitResult[i2];
            }
        };
        public int result;
        public long thisTime;
        public boolean timeout;
        public long totalTime;
        public ComponentName who;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.result);
            parcel.writeInt(this.timeout ? 1 : 0);
            ComponentName.writeToParcel(this.who, parcel);
            parcel.writeLong(this.thisTime);
            parcel.writeLong(this.totalTime);
        }

        public WaitResult() {
        }

        private WaitResult(Parcel parcel) {
            this.result = parcel.readInt();
            this.timeout = parcel.readInt() != 0;
            this.who = ComponentName.readFromParcel(parcel);
            this.thisTime = parcel.readLong();
            this.totalTime = parcel.readLong();
        }
    }

    void activityDestroyed(IBinder iBinder);

    void activityIdle(IBinder iBinder, Configuration configuration, boolean z2);

    void activityPaused(IBinder iBinder);

    void activityResumed(IBinder iBinder);

    void activitySlept(IBinder iBinder);

    void activityStopped(IBinder iBinder, Bundle bundle, Bitmap bitmap, CharSequence charSequence);

    void appNotRespondingViaProvider(IBinder iBinder);

    void attachApplication(IApplicationThread iApplicationThread);

    void backupAgentCreated(String str, IBinder iBinder);

    boolean bindBackupAgent(ApplicationInfo applicationInfo, int i2);

    int bindService(IApplicationThread iApplicationThread, IBinder iBinder, Intent intent, String str, IServiceConnection iServiceConnection, int i2, int i3);

    int broadcastIntent(IApplicationThread iApplicationThread, Intent intent, String str, IIntentReceiver iIntentReceiver, int i2, String str2, Bundle bundle, String str3, int i3, boolean z2, boolean z3, int i4);

    void cancelIntentSender(IIntentSender iIntentSender);

    int checkGrantUriPermission(int i2, String str, Uri uri, int i3);

    int checkPermission(String str, int i2, int i3);

    int checkUriPermission(Uri uri, int i2, int i3, int i4);

    boolean clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver, int i2);

    void clearPendingBackup();

    void closeSystemDialogs(String str);

    boolean convertFromTranslucent(IBinder iBinder);

    boolean convertToTranslucent(IBinder iBinder);

    void crashApplication(int i2, int i3, String str, String str2);

    int createStack(int i2, int i3, int i4, float f2);

    void dismissKeyguardOnNextActivity();

    boolean dumpHeap(String str, int i2, boolean z2, String str2, ParcelFileDescriptor parcelFileDescriptor);

    void enterSafeMode();

    boolean finishActivity(IBinder iBinder, int i2, Intent intent);

    boolean finishActivityAffinity(IBinder iBinder);

    void finishHeavyWeightApp();

    void finishInstrumentation(IApplicationThread iApplicationThread, int i2, Bundle bundle);

    void finishReceiver(IBinder iBinder, int i2, String str, Bundle bundle, boolean z2);

    void finishSubActivity(IBinder iBinder, String str, int i2);

    void forceStopPackage(String str, int i2);

    ComponentName getActivityClassForToken(IBinder iBinder);

    Bundle getAssistContextExtras(int i2);

    ComponentName getCallingActivity(IBinder iBinder);

    String getCallingPackage(IBinder iBinder);

    Configuration getConfiguration();

    ContentProviderHolder getContentProvider(IApplicationThread iApplicationThread, String str, int i2, boolean z2);

    ContentProviderHolder getContentProviderExternal(String str, int i2, IBinder iBinder);

    UserInfo getCurrentUser();

    ConfigurationInfo getDeviceConfigurationInfo();

    int getFrontActivityScreenCompatMode();

    Intent getIntentForIntentSender(IIntentSender iIntentSender);

    IIntentSender getIntentSender(int i2, String str, IBinder iBinder, String str2, int i3, Intent[] intentArr, String[] strArr, int i4, Bundle bundle, int i5);

    String getLaunchedFromPackage(IBinder iBinder);

    int getLaunchedFromUid(IBinder iBinder);

    void getMemoryInfo(ActivityManager.MemoryInfo memoryInfo);

    void getMyMemoryState(ActivityManager.RunningAppProcessInfo runningAppProcessInfo);

    boolean getPackageAskScreenCompat(String str);

    String getPackageForIntentSender(IIntentSender iIntentSender);

    String getPackageForToken(IBinder iBinder);

    int getPackageScreenCompatMode(String str);

    ParceledListSlice<UriPermission> getPersistedUriPermissions(String str, boolean z2);

    int getProcessLimit();

    Debug.MemoryInfo[] getProcessMemoryInfo(int[] iArr);

    long[] getProcessPss(int[] iArr);

    List<ActivityManager.ProcessErrorStateInfo> getProcessesInErrorState();

    String getProviderMimeType(Uri uri, int i2);

    List<ActivityManager.RecentTaskInfo> getRecentTasks(int i2, int i3, int i4);

    int getRequestedOrientation(IBinder iBinder);

    List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses();

    List<ApplicationInfo> getRunningExternalApplications();

    PendingIntent getRunningServiceControlPanel(ComponentName componentName);

    int[] getRunningUserIds();

    List<ActivityManager.RunningServiceInfo> getServices(int i2, int i3);

    ActivityManager.StackBoxInfo getStackBoxInfo(int i2);

    List<ActivityManager.StackBoxInfo> getStackBoxes();

    int getTaskForActivity(IBinder iBinder, boolean z2);

    ActivityManager.TaskThumbnails getTaskThumbnails(int i2);

    Bitmap getTaskTopThumbnail(int i2);

    List<ActivityManager.RunningTaskInfo> getTasks(int i2, int i3, IThumbnailReceiver iThumbnailReceiver);

    int getUidForIntentSender(IIntentSender iIntentSender);

    void goingToSleep();

    void grantUriPermission(IApplicationThread iApplicationThread, String str, Uri uri, int i2);

    void grantUriPermissionFromOwner(IBinder iBinder, int i2, String str, Uri uri, int i3);

    void handleApplicationCrash(IBinder iBinder, ApplicationErrorReport.CrashInfo crashInfo);

    void handleApplicationStrictModeViolation(IBinder iBinder, int i2, StrictMode.ViolationInfo violationInfo);

    boolean handleApplicationWtf(IBinder iBinder, String str, ApplicationErrorReport.CrashInfo crashInfo);

    int handleIncomingUser(int i2, int i3, int i4, boolean z2, boolean z3, String str, String str2);

    void hang(IBinder iBinder, boolean z2);

    long inputDispatchingTimedOut(int i2, boolean z2, String str);

    boolean isImmersive(IBinder iBinder);

    boolean isIntentSenderAnActivity(IIntentSender iIntentSender);

    boolean isIntentSenderTargetedToPackage(IIntentSender iIntentSender);

    boolean isTopActivityImmersive();

    boolean isUserAMonkey();

    boolean isUserRunning(int i2, boolean z2);

    void killAllBackgroundProcesses();

    void killApplicationProcess(String str, int i2);

    void killApplicationWithAppId(String str, int i2, String str2);

    void killBackgroundProcesses(String str, int i2);

    boolean killPids(int[] iArr, String str, boolean z2);

    boolean killProcessesBelowForeground(String str);

    void killUid(int i2, String str);

    boolean moveActivityTaskToBack(IBinder iBinder, boolean z2);

    void moveTaskBackwards(int i2);

    void moveTaskToBack(int i2);

    void moveTaskToFront(int i2, int i3, Bundle bundle);

    void moveTaskToStack(int i2, int i3, boolean z2);

    boolean navigateUpTo(IBinder iBinder, Intent intent, int i2, Intent intent2);

    IBinder newUriPermissionOwner(String str);

    void noteWakeupAlarm(IIntentSender iIntentSender);

    void notifyActivityDrawn(IBinder iBinder);

    ParcelFileDescriptor openContentUri(Uri uri);

    void overridePendingTransition(IBinder iBinder, String str, int i2, int i3);

    IBinder peekService(Intent intent, String str);

    void performIdleMaintenance();

    boolean profileControl(String str, int i2, boolean z2, String str2, ParcelFileDescriptor parcelFileDescriptor, int i3);

    void publishContentProviders(IApplicationThread iApplicationThread, List<ContentProviderHolder> list);

    void publishService(IBinder iBinder, Intent intent, IBinder iBinder2);

    boolean refContentProvider(IBinder iBinder, int i2, int i3);

    void registerProcessObserver(IProcessObserver iProcessObserver);

    Intent registerReceiver(IApplicationThread iApplicationThread, String str, IIntentReceiver iIntentReceiver, IntentFilter intentFilter, String str2, int i2);

    void registerUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver);

    void releasePersistableUriPermission(Uri uri, int i2);

    void removeContentProvider(IBinder iBinder, boolean z2);

    void removeContentProviderExternal(String str, IBinder iBinder);

    boolean removeSubTask(int i2, int i3);

    boolean removeTask(int i2, int i3);

    void reportActivityFullyDrawn(IBinder iBinder);

    void reportAssistContextExtras(IBinder iBinder, Bundle bundle);

    void reportThumbnail(IBinder iBinder, Bitmap bitmap, CharSequence charSequence);

    void requestBugReport();

    void resizeStackBox(int i2, float f2);

    void restart();

    void resumeAppSwitches();

    void revokeUriPermission(IApplicationThread iApplicationThread, Uri uri, int i2);

    void revokeUriPermissionFromOwner(IBinder iBinder, Uri uri, int i2);

    void serviceDoneExecuting(IBinder iBinder, int i2, int i3, int i4);

    void setActivityController(IActivityController iActivityController);

    void setAlwaysFinish(boolean z2);

    void setDebugApp(String str, boolean z2, boolean z3);

    void setFocusedStack(int i2);

    void setFrontActivityScreenCompatMode(int i2);

    void setImmersive(IBinder iBinder, boolean z2);

    void setLockScreenShown(boolean z2);

    void setPackageAskScreenCompat(String str, boolean z2);

    void setPackageScreenCompatMode(String str, int i2);

    void setProcessForeground(IBinder iBinder, int i2, boolean z2);

    void setProcessLimit(int i2);

    void setRequestedOrientation(IBinder iBinder, int i2);

    void setServiceForeground(ComponentName componentName, IBinder iBinder, int i2, Notification notification, boolean z2);

    void setUserIsMonkey(boolean z2);

    void showBootMessage(CharSequence charSequence, boolean z2);

    void showWaitingForDebugger(IApplicationThread iApplicationThread, boolean z2);

    boolean shutdown(int i2);

    void signalPersistentProcesses(int i2);

    int startActivities(IApplicationThread iApplicationThread, String str, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle, int i2);

    int startActivity(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, String str4, ParcelFileDescriptor parcelFileDescriptor, Bundle bundle);

    WaitResult startActivityAndWait(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, String str4, ParcelFileDescriptor parcelFileDescriptor, Bundle bundle, int i4);

    int startActivityAsUser(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, String str4, ParcelFileDescriptor parcelFileDescriptor, Bundle bundle, int i4);

    int startActivityIntentSender(IApplicationThread iApplicationThread, IntentSender intentSender, Intent intent, String str, IBinder iBinder, String str2, int i2, int i3, int i4, Bundle bundle);

    int startActivityWithConfig(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i2, int i3, Configuration configuration, Bundle bundle, int i4);

    boolean startInstrumentation(ComponentName componentName, String str, int i2, Bundle bundle, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection, int i3);

    boolean startNextMatchingActivity(IBinder iBinder, Intent intent, Bundle bundle);

    void startRunning(String str, String str2, String str3, String str4);

    ComponentName startService(IApplicationThread iApplicationThread, Intent intent, String str, int i2);

    void stopAppSwitches();

    int stopService(IApplicationThread iApplicationThread, Intent intent, String str, int i2);

    boolean stopServiceToken(ComponentName componentName, IBinder iBinder, int i2);

    int stopUser(int i2, IStopUserCallback iStopUserCallback);

    boolean switchUser(int i2);

    void takePersistableUriPermission(Uri uri, int i2);

    boolean targetTaskAffinityMatchesActivity(IBinder iBinder, String str);

    boolean testIsSystemReady();

    void unbindBackupAgent(ApplicationInfo applicationInfo);

    void unbindFinished(IBinder iBinder, Intent intent, boolean z2);

    boolean unbindService(IServiceConnection iServiceConnection);

    void unbroadcastIntent(IApplicationThread iApplicationThread, Intent intent, int i2);

    void unhandledBack();

    void unregisterProcessObserver(IProcessObserver iProcessObserver);

    void unregisterReceiver(IIntentReceiver iIntentReceiver);

    void unregisterUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver);

    void unstableProviderDied(IBinder iBinder);

    void updateConfiguration(Configuration configuration);

    void updatePersistentConfiguration(Configuration configuration);

    void wakingUp();

    boolean willActivityBeVisible(IBinder iBinder);
}
