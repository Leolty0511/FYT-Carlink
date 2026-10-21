package android.app;

import android.content.ComponentName;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Debug;
import android.os.IBinder;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import java.io.FileDescriptor;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface IApplicationThread extends IInterface {
    public static final int BACKUP_MODE_FULL = 1;
    public static final int BACKUP_MODE_INCREMENTAL = 0;
    public static final int BACKUP_MODE_RESTORE = 2;
    public static final int BACKUP_MODE_RESTORE_FULL = 3;
    public static final int BIND_APPLICATION_TRANSACTION = 13;
    public static final int CLEAR_DNS_CACHE_TRANSACTION = 38;
    public static final int DEBUG_OFF = 0;
    public static final int DEBUG_ON = 1;
    public static final int DEBUG_WAIT = 2;
    public static final int DISPATCH_PACKAGE_BROADCAST_TRANSACTION = 34;
    public static final int DUMP_ACTIVITY_TRANSACTION = 37;
    public static final int DUMP_DB_INFO_TRANSACTION = 46;
    public static final int DUMP_GFX_INFO_TRANSACTION = 44;
    public static final int DUMP_HEAP_TRANSACTION = 36;
    public static final int DUMP_MEM_INFO_TRANSACTION = 43;
    public static final int DUMP_PROVIDER_TRANSACTION = 45;
    public static final int DUMP_SERVICE_TRANSACTION = 22;
    public static final int EXTERNAL_STORAGE_UNAVAILABLE = 1;
    public static final int PACKAGE_REMOVED = 0;
    public static final int PROCESS_IN_BACKGROUND_TRANSACTION = 19;
    public static final int PROFILER_CONTROL_TRANSACTION = 28;
    public static final int REQUEST_ASSIST_CONTEXT_EXTRAS_TRANSACTION = 48;
    public static final int REQUEST_THUMBNAIL_TRANSACTION = 15;
    public static final int SCHEDULE_ACTIVITY_CONFIGURATION_CHANGED_TRANSACTION = 25;
    public static final int SCHEDULE_BIND_SERVICE_TRANSACTION = 20;
    public static final int SCHEDULE_CONFIGURATION_CHANGED_TRANSACTION = 16;
    public static final int SCHEDULE_CRASH_TRANSACTION = 35;
    public static final int SCHEDULE_CREATE_BACKUP_AGENT_TRANSACTION = 30;
    public static final int SCHEDULE_CREATE_SERVICE_TRANSACTION = 11;
    public static final int SCHEDULE_DESTROY_BACKUP_AGENT_TRANSACTION = 31;
    public static final int SCHEDULE_EXIT_TRANSACTION = 14;
    public static final int SCHEDULE_FINISH_ACTIVITY_TRANSACTION = 9;
    public static final int SCHEDULE_INSTALL_PROVIDER_TRANSACTION = 51;
    public static final int SCHEDULE_LAUNCH_ACTIVITY_TRANSACTION = 7;
    public static final int SCHEDULE_LOW_MEMORY_TRANSACTION = 24;
    public static final int SCHEDULE_NEW_INTENT_TRANSACTION = 8;
    public static final int SCHEDULE_PAUSE_ACTIVITY_TRANSACTION = 1;
    public static final int SCHEDULE_RECEIVER_TRANSACTION = 10;
    public static final int SCHEDULE_REGISTERED_RECEIVER_TRANSACTION = 23;
    public static final int SCHEDULE_RELAUNCH_ACTIVITY_TRANSACTION = 26;
    public static final int SCHEDULE_RESUME_ACTIVITY_TRANSACTION = 5;
    public static final int SCHEDULE_SEND_RESULT_TRANSACTION = 6;
    public static final int SCHEDULE_SERVICE_ARGS_TRANSACTION = 17;
    public static final int SCHEDULE_SLEEPING_TRANSACTION = 27;
    public static final int SCHEDULE_STOP_ACTIVITY_TRANSACTION = 3;
    public static final int SCHEDULE_STOP_SERVICE_TRANSACTION = 12;
    public static final int SCHEDULE_SUICIDE_TRANSACTION = 33;
    public static final int SCHEDULE_TRANSLUCENT_CONVERSION_COMPLETE_TRANSACTION = 49;
    public static final int SCHEDULE_TRIM_MEMORY_TRANSACTION = 42;
    public static final int SCHEDULE_UNBIND_SERVICE_TRANSACTION = 21;
    public static final int SCHEDULE_WINDOW_VISIBILITY_TRANSACTION = 4;
    public static final int SET_CORE_SETTINGS_TRANSACTION = 40;
    public static final int SET_HTTP_PROXY_TRANSACTION = 39;
    public static final int SET_PROCESS_STATE_TRANSACTION = 50;
    public static final int SET_SCHEDULING_GROUP_TRANSACTION = 29;
    public static final int UNSTABLE_PROVIDER_DIED_TRANSACTION = 47;
    public static final int UPDATE_PACKAGE_COMPATIBILITY_INFO_TRANSACTION = 41;
    public static final int UPDATE_TIME_ZONE_TRANSACTION = 18;
    public static final String descriptor = "android.app.IApplicationThread";

    void bindApplication(String str, ApplicationInfo applicationInfo, List<ProviderInfo> list, ComponentName componentName, String str2, ParcelFileDescriptor parcelFileDescriptor, boolean z2, Bundle bundle, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection, int i2, boolean z3, boolean z4, boolean z5, Configuration configuration, CompatibilityInfo compatibilityInfo, Map<String, IBinder> map, Bundle bundle2);

    void clearDnsCache();

    void dispatchPackageBroadcast(int i2, String[] strArr);

    void dumpActivity(FileDescriptor fileDescriptor, IBinder iBinder, String str, String[] strArr);

    void dumpDbInfo(FileDescriptor fileDescriptor, String[] strArr);

    void dumpGfxInfo(FileDescriptor fileDescriptor, String[] strArr);

    void dumpHeap(boolean z2, String str, ParcelFileDescriptor parcelFileDescriptor);

    void dumpMemInfo(FileDescriptor fileDescriptor, Debug.MemoryInfo memoryInfo, boolean z2, boolean z3, boolean z4, String[] strArr);

    void dumpProvider(FileDescriptor fileDescriptor, IBinder iBinder, String[] strArr);

    void dumpService(FileDescriptor fileDescriptor, IBinder iBinder, String[] strArr);

    void processInBackground();

    void profilerControl(boolean z2, String str, ParcelFileDescriptor parcelFileDescriptor, int i2);

    void requestAssistContextExtras(IBinder iBinder, IBinder iBinder2, int i2);

    void requestThumbnail(IBinder iBinder);

    void scheduleActivityConfigurationChanged(IBinder iBinder);

    void scheduleBindService(IBinder iBinder, Intent intent, boolean z2, int i2);

    void scheduleConfigurationChanged(Configuration configuration);

    void scheduleCrash(String str);

    void scheduleCreateBackupAgent(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, int i2);

    void scheduleCreateService(IBinder iBinder, ServiceInfo serviceInfo, CompatibilityInfo compatibilityInfo, int i2);

    void scheduleDestroyActivity(IBinder iBinder, boolean z2, int i2);

    void scheduleDestroyBackupAgent(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo);

    void scheduleExit();

    void scheduleInstallProvider(ProviderInfo providerInfo);

    void scheduleLaunchActivity(Intent intent, IBinder iBinder, int i2, ActivityInfo activityInfo, Configuration configuration, CompatibilityInfo compatibilityInfo, int i3, Bundle bundle, List<ResultInfo> list, List<Intent> list2, boolean z2, boolean z3, String str, ParcelFileDescriptor parcelFileDescriptor, boolean z4);

    void scheduleLowMemory();

    void scheduleNewIntent(List<Intent> list, IBinder iBinder);

    void schedulePauseActivity(IBinder iBinder, boolean z2, boolean z3, int i2);

    void scheduleReceiver(Intent intent, ActivityInfo activityInfo, CompatibilityInfo compatibilityInfo, int i2, String str, Bundle bundle, boolean z2, int i3, int i4);

    void scheduleRegisteredReceiver(IIntentReceiver iIntentReceiver, Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3, int i4);

    void scheduleRelaunchActivity(IBinder iBinder, List<ResultInfo> list, List<Intent> list2, int i2, boolean z2, Configuration configuration);

    void scheduleResumeActivity(IBinder iBinder, int i2, boolean z2);

    void scheduleSendResult(IBinder iBinder, List<ResultInfo> list);

    void scheduleServiceArgs(IBinder iBinder, boolean z2, int i2, int i3, Intent intent);

    void scheduleSleeping(IBinder iBinder, boolean z2);

    void scheduleStopActivity(IBinder iBinder, boolean z2, int i2);

    void scheduleStopService(IBinder iBinder);

    void scheduleSuicide();

    void scheduleTranslucentConversionComplete(IBinder iBinder, boolean z2);

    void scheduleTrimMemory(int i2);

    void scheduleUnbindService(IBinder iBinder, Intent intent);

    void scheduleWindowVisibility(IBinder iBinder, boolean z2);

    void setCoreSettings(Bundle bundle);

    void setHttpProxy(String str, String str2, String str3, String str4);

    void setProcessState(int i2);

    void setSchedulingGroup(int i2);

    void unstableProviderDied(IBinder iBinder);

    void updatePackageCompatibilityInfo(String str, CompatibilityInfo compatibilityInfo);

    void updateTimeZone();
}
