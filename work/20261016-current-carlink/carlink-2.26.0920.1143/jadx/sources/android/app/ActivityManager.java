package android.app;

import android.Manifest;
import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.UriPermission;
import android.content.pm.AppCloneUserInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.GraphicBuffer;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.BatteryStats;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Singleton;
import android.util.Size;
import com.android.internal.R;
import com.android.internal.app.procstats.ProcessStats;
import com.android.internal.os.RoSystemProperties;
import com.android.internal.os.TransferPipe;
import com.android.internal.util.FastPrintWriter;
import com.android.server.LocalServices;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class ActivityManager {
    public static final String ACTION_REPORT_HEAP_LIMIT = "android.app.action.REPORT_HEAP_LIMIT";
    public static final int APP_START_MODE_DELAYED = 1;
    public static final int APP_START_MODE_DELAYED_RIGID = 2;
    public static final int APP_START_MODE_DISABLED = 3;
    public static final int APP_START_MODE_NORMAL = 0;
    public static final int ASSIST_CONTEXT_AUTOFILL = 2;
    public static final int ASSIST_CONTEXT_BASIC = 0;
    public static final int ASSIST_CONTEXT_FULL = 1;
    public static final int BROADCAST_FAILED_USER_STOPPED = -2;
    public static final int BROADCAST_STICKY_CANT_HAVE_PERMISSION = -1;
    public static final int BROADCAST_SUCCESS = 0;
    public static final int BUGREPORT_OPTION_FULL = 0;
    public static final int BUGREPORT_OPTION_INTERACTIVE = 1;
    public static final int BUGREPORT_OPTION_REMOTE = 2;
    public static final int BUGREPORT_OPTION_TELEPHONY = 4;
    public static final int BUGREPORT_OPTION_WEAR = 3;
    public static final int COMPAT_MODE_ALWAYS = -1;
    public static final int COMPAT_MODE_DISABLED = 0;
    public static final int COMPAT_MODE_ENABLED = 1;
    public static final int COMPAT_MODE_NEVER = -2;
    public static final int COMPAT_MODE_TOGGLE = 2;
    public static final int COMPAT_MODE_UNKNOWN = -3;
    public static final int DOCKED_STACK_CREATE_MODE_BOTTOM_OR_RIGHT = 1;
    public static final int DOCKED_STACK_CREATE_MODE_TOP_OR_LEFT = 0;
    private static final int FIRST_START_FATAL_ERROR_CODE = -100;
    private static final int FIRST_START_NON_FATAL_ERROR_CODE = 100;
    private static final int FIRST_START_SUCCESS_CODE = 0;
    public static final int FLAG_AND_LOCKED = 2;
    public static final int FLAG_AND_UNLOCKED = 4;
    public static final int FLAG_AND_UNLOCKING_OR_UNLOCKED = 8;
    public static final int FLAG_OR_STOPPED = 1;
    public static final int INTENT_SENDER_ACTIVITY = 2;
    public static final int INTENT_SENDER_ACTIVITY_RESULT = 3;
    public static final int INTENT_SENDER_BROADCAST = 1;
    public static final int INTENT_SENDER_FOREGROUND_SERVICE = 5;
    public static final int INTENT_SENDER_SERVICE = 4;
    private static final int LAST_START_FATAL_ERROR_CODE = -1;
    private static final int LAST_START_NON_FATAL_ERROR_CODE = 199;
    private static final int LAST_START_SUCCESS_CODE = 99;
    public static final int LOCK_TASK_MODE_LOCKED = 1;
    public static final int LOCK_TASK_MODE_NONE = 0;
    public static final int LOCK_TASK_MODE_PINNED = 2;
    public static final int MAX_PROCESS_STATE = 18;
    public static final String META_HOME_ALTERNATE = "android.app.home.alternate";
    public static final int MIN_PROCESS_STATE = 0;
    public static final int MOVE_TASK_NO_USER_ACTION = 2;
    public static final int MOVE_TASK_WITH_HOME = 1;
    public static final int PROCESS_STATE_BACKUP = 9;
    public static final int PROCESS_STATE_BOUND_FOREGROUND_SERVICE = 3;
    public static final int PROCESS_STATE_CACHED_ACTIVITY = 15;
    public static final int PROCESS_STATE_CACHED_ACTIVITY_CLIENT = 16;
    public static final int PROCESS_STATE_CACHED_EMPTY = 17;
    public static final int PROCESS_STATE_FOREGROUND_SERVICE = 4;
    public static final int PROCESS_STATE_HEAVY_WEIGHT = 10;
    public static final int PROCESS_STATE_HOME = 13;
    public static final int PROCESS_STATE_IMPORTANT_BACKGROUND = 7;
    public static final int PROCESS_STATE_IMPORTANT_FOREGROUND = 6;
    public static final int PROCESS_STATE_LAST_ACTIVITY = 14;
    public static final int PROCESS_STATE_NONEXISTENT = 18;
    public static final int PROCESS_STATE_PERSISTENT = 0;
    public static final int PROCESS_STATE_PERSISTENT_UI = 1;
    public static final int PROCESS_STATE_RECEIVER = 12;
    public static final int PROCESS_STATE_SERVICE = 11;
    public static final int PROCESS_STATE_TOP = 2;
    public static final int PROCESS_STATE_TOP_SLEEPING = 5;
    public static final int PROCESS_STATE_TRANSIENT_BACKGROUND = 8;
    public static final int PROCESS_STATE_UNKNOWN = -1;
    public static final int RECENT_IGNORE_HOME_AND_RECENTS_STACK_TASKS = 8;
    public static final int RECENT_IGNORE_UNAVAILABLE = 2;
    public static final int RECENT_INCLUDE_PROFILES = 4;
    public static final int RECENT_INGORE_DOCKED_STACK_TOP_TASK = 16;
    public static final int RECENT_INGORE_PINNED_STACK_TASKS = 32;
    public static final int RECENT_WITH_EXCLUDED = 1;
    public static final int RESIZE_MODE_FORCED = 2;
    public static final int RESIZE_MODE_PRESERVE_WINDOW = 1;
    public static final int RESIZE_MODE_SYSTEM = 0;
    public static final int RESIZE_MODE_SYSTEM_SCREEN_ROTATION = 1;
    public static final int RESIZE_MODE_USER = 1;
    public static final int RESIZE_MODE_USER_FORCED = 3;
    public static final int START_ABORTED = 102;
    public static final int START_ASSISTANT_HIDDEN_SESSION = -90;
    public static final int START_ASSISTANT_NOT_ACTIVE_SESSION = -89;
    public static final int START_CANCELED = -96;
    public static final int START_CLASS_NOT_FOUND = -92;
    public static final int START_DELIVERED_TO_TOP = 3;
    public static final int START_FLAG_DEBUG = 2;
    public static final int START_FLAG_NATIVE_DEBUGGING = 8;
    public static final int START_FLAG_ONLY_IF_NEEDED = 1;
    public static final int START_FLAG_TRACK_ALLOCATION = 4;
    public static final int START_FORWARD_AND_REQUEST_CONFLICT = -93;
    public static final int START_INTENT_NOT_RESOLVED = -91;
    public static final int START_NOT_ACTIVITY = -95;
    public static final int START_NOT_CURRENT_USER_ACTIVITY = -98;
    public static final int START_NOT_VOICE_COMPATIBLE = -97;
    public static final int START_PERMISSION_DENIED = -94;
    public static final int START_RETURN_INTENT_TO_CALLER = 1;
    public static final int START_RETURN_LOCK_TASK_MODE_VIOLATION = 101;
    public static final int START_SUCCESS = 0;
    public static final int START_SWITCHES_CANCELED = 100;
    public static final int START_TASK_TO_FRONT = 2;
    public static final int START_VOICE_HIDDEN_SESSION = -100;
    public static final int START_VOICE_NOT_ACTIVE_SESSION = -99;
    private static String TAG = "ActivityManager";
    public static final int UID_OBSERVER_ACTIVE = 8;
    public static final int UID_OBSERVER_CACHED = 16;
    public static final int UID_OBSERVER_GONE = 2;
    public static final int UID_OBSERVER_IDLE = 4;
    public static final int UID_OBSERVER_PROCSTATE = 1;
    public static final int USER_OP_ERROR_IS_SYSTEM = -3;
    public static final int USER_OP_ERROR_RELATED_USERS_CANNOT_STOP = -4;
    public static final int USER_OP_IS_CURRENT = -2;
    public static final int USER_OP_SUCCESS = 0;
    public static final int USER_OP_UNKNOWN_USER = -1;
    private static int gMaxRecentTasks = -1;
    private static volatile boolean sSystemReady = false;
    Point mAppTaskThumbnailSize;
    private final Context mContext;
    final ArrayMap<OnUidImportanceListener, UidObserver> mImportanceListeners = new ArrayMap<>();
    public static final boolean ENABLE_TASK_SNAPSHOTS = SystemProperties.getBoolean("persist.enable_task_snapshots", !isLowRamDeviceStatic());
    private static final boolean DEVELOPMENT_FORCE_LOW_RAM = SystemProperties.getBoolean("debug.force_low_ram", false);
    private static final Singleton<IActivityManager> IActivityManagerSingleton = new Singleton<IActivityManager>() { // from class: android.app.ActivityManager.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.util.Singleton
        public IActivityManager create() {
            return IActivityManager.Stub.asInterface(ServiceManager.getService(Context.ACTIVITY_SERVICE));
        }
    };

    public static class AppTask {
        private IAppTask mAppTaskImpl;

        public AppTask(IAppTask iAppTask) {
            this.mAppTaskImpl = iAppTask;
        }

        public void finishAndRemoveTask() {
            try {
                this.mAppTaskImpl.finishAndRemoveTask();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public RecentTaskInfo getTaskInfo() {
            try {
                return this.mAppTaskImpl.getTaskInfo();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void moveToFront() {
            try {
                this.mAppTaskImpl.moveToFront();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void setExcludeFromRecents(boolean z2) {
            try {
                this.mAppTaskImpl.setExcludeFromRecents(z2);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void startActivity(Context context, Intent intent, Bundle bundle) {
            ActivityThread activityThreadCurrentActivityThread = ActivityThread.currentActivityThread();
            activityThreadCurrentActivityThread.getInstrumentation().execStartActivityFromAppTask(context, activityThreadCurrentActivityThread.getApplicationThread(), this.mAppTaskImpl, intent, bundle);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface BugreportMode {
    }

    public static class MemoryInfo implements Parcelable {
        public static final Parcelable.Creator<MemoryInfo> CREATOR = new Parcelable.Creator<MemoryInfo>() { // from class: android.app.ActivityManager.MemoryInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MemoryInfo createFromParcel(Parcel parcel) {
                return new MemoryInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MemoryInfo[] newArray(int i2) {
                return new MemoryInfo[i2];
            }
        };
        public long availMem;
        public long foregroundAppThreshold;
        public long hiddenAppThreshold;
        public boolean lowMemory;
        public long secondaryServerThreshold;
        public long threshold;
        public long totalMem;
        public long visibleAppThreshold;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.availMem = parcel.readLong();
            this.totalMem = parcel.readLong();
            this.threshold = parcel.readLong();
            this.lowMemory = parcel.readInt() != 0;
            this.hiddenAppThreshold = parcel.readLong();
            this.secondaryServerThreshold = parcel.readLong();
            this.visibleAppThreshold = parcel.readLong();
            this.foregroundAppThreshold = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.availMem);
            parcel.writeLong(this.totalMem);
            parcel.writeLong(this.threshold);
            parcel.writeInt(this.lowMemory ? 1 : 0);
            parcel.writeLong(this.hiddenAppThreshold);
            parcel.writeLong(this.secondaryServerThreshold);
            parcel.writeLong(this.visibleAppThreshold);
            parcel.writeLong(this.foregroundAppThreshold);
        }

        public MemoryInfo() {
        }

        private MemoryInfo(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MoveTaskFlags {
    }

    public interface OnUidImportanceListener {
        void onUidImportance(int i2, int i3);
    }

    public static class ProcessErrorStateInfo implements Parcelable {
        public static final int CRASHED = 1;
        public static final Parcelable.Creator<ProcessErrorStateInfo> CREATOR = new Parcelable.Creator<ProcessErrorStateInfo>() { // from class: android.app.ActivityManager.ProcessErrorStateInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ProcessErrorStateInfo createFromParcel(Parcel parcel) {
                return new ProcessErrorStateInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ProcessErrorStateInfo[] newArray(int i2) {
                return new ProcessErrorStateInfo[i2];
            }
        };
        public static final int NOT_RESPONDING = 2;
        public static final int NO_ERROR = 0;
        public int condition;
        public byte[] crashData;
        public String longMsg;
        public int pid;
        public String processName;
        public String shortMsg;
        public String stackTrace;
        public String tag;
        public int uid;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.condition = parcel.readInt();
            this.processName = parcel.readString();
            this.pid = parcel.readInt();
            this.uid = parcel.readInt();
            this.tag = parcel.readString();
            this.shortMsg = parcel.readString();
            this.longMsg = parcel.readString();
            this.stackTrace = parcel.readString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.condition);
            parcel.writeString(this.processName);
            parcel.writeInt(this.pid);
            parcel.writeInt(this.uid);
            parcel.writeString(this.tag);
            parcel.writeString(this.shortMsg);
            parcel.writeString(this.longMsg);
            parcel.writeString(this.stackTrace);
        }

        public ProcessErrorStateInfo() {
            this.crashData = null;
        }

        private ProcessErrorStateInfo(Parcel parcel) {
            this.crashData = null;
            readFromParcel(parcel);
        }
    }

    public static class RecentTaskInfo implements Parcelable {
        public static final Parcelable.Creator<RecentTaskInfo> CREATOR = new Parcelable.Creator<RecentTaskInfo>() { // from class: android.app.ActivityManager.RecentTaskInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RecentTaskInfo createFromParcel(Parcel parcel) {
                return new RecentTaskInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RecentTaskInfo[] newArray(int i2) {
                return new RecentTaskInfo[i2];
            }
        };
        public int affiliatedTaskColor;
        public int affiliatedTaskId;
        public ComponentName baseActivity;
        public Intent baseIntent;
        public Rect bounds;
        public CharSequence description;
        public long firstActiveTime;
        public int id;
        public long lastActiveTime;
        public int numActivities;
        public ComponentName origActivity;
        public int persistentId;
        public ComponentName realActivity;
        public int resizeMode;
        public int stackId;
        public boolean supportsSplitScreenMultiWindow;
        public TaskDescription taskDescription;
        public ComponentName topActivity;
        public int userId;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.id = parcel.readInt();
            this.persistentId = parcel.readInt();
            this.baseIntent = parcel.readInt() > 0 ? Intent.CREATOR.createFromParcel(parcel) : null;
            this.origActivity = ComponentName.readFromParcel(parcel);
            this.realActivity = ComponentName.readFromParcel(parcel);
            this.description = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.taskDescription = parcel.readInt() > 0 ? TaskDescription.CREATOR.createFromParcel(parcel) : null;
            this.stackId = parcel.readInt();
            this.userId = parcel.readInt();
            this.firstActiveTime = parcel.readLong();
            this.lastActiveTime = parcel.readLong();
            this.affiliatedTaskId = parcel.readInt();
            this.affiliatedTaskColor = parcel.readInt();
            this.baseActivity = ComponentName.readFromParcel(parcel);
            this.topActivity = ComponentName.readFromParcel(parcel);
            this.numActivities = parcel.readInt();
            this.bounds = parcel.readInt() > 0 ? Rect.CREATOR.createFromParcel(parcel) : null;
            this.supportsSplitScreenMultiWindow = parcel.readInt() == 1;
            this.resizeMode = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.id);
            parcel.writeInt(this.persistentId);
            if (this.baseIntent != null) {
                parcel.writeInt(1);
                this.baseIntent.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            ComponentName.writeToParcel(this.origActivity, parcel);
            ComponentName.writeToParcel(this.realActivity, parcel);
            TextUtils.writeToParcel(this.description, parcel, 1);
            if (this.taskDescription != null) {
                parcel.writeInt(1);
                this.taskDescription.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.stackId);
            parcel.writeInt(this.userId);
            parcel.writeLong(this.firstActiveTime);
            parcel.writeLong(this.lastActiveTime);
            parcel.writeInt(this.affiliatedTaskId);
            parcel.writeInt(this.affiliatedTaskColor);
            ComponentName.writeToParcel(this.baseActivity, parcel);
            ComponentName.writeToParcel(this.topActivity, parcel);
            parcel.writeInt(this.numActivities);
            if (this.bounds != null) {
                parcel.writeInt(1);
                this.bounds.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.supportsSplitScreenMultiWindow ? 1 : 0);
            parcel.writeInt(this.resizeMode);
        }

        public RecentTaskInfo() {
        }

        private RecentTaskInfo(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public static class RunningAppProcessInfo implements Parcelable {
        public static final Parcelable.Creator<RunningAppProcessInfo> CREATOR = new Parcelable.Creator<RunningAppProcessInfo>() { // from class: android.app.ActivityManager.RunningAppProcessInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RunningAppProcessInfo createFromParcel(Parcel parcel) {
                return new RunningAppProcessInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RunningAppProcessInfo[] newArray(int i2) {
                return new RunningAppProcessInfo[i2];
            }
        };
        public static final int FLAG_CANT_SAVE_STATE = 1;
        public static final int FLAG_HAS_ACTIVITIES = 4;
        public static final int FLAG_PERSISTENT = 2;
        public static final int IMPORTANCE_BACKGROUND = 400;
        public static final int IMPORTANCE_CACHED = 400;
        public static final int IMPORTANCE_CANT_SAVE_STATE = 270;
        public static final int IMPORTANCE_CANT_SAVE_STATE_PRE_26 = 170;

        @Deprecated
        public static final int IMPORTANCE_EMPTY = 500;
        public static final int IMPORTANCE_FOREGROUND = 100;
        public static final int IMPORTANCE_FOREGROUND_SERVICE = 125;
        public static final int IMPORTANCE_GONE = 1000;
        public static final int IMPORTANCE_PERCEPTIBLE = 230;
        public static final int IMPORTANCE_PERCEPTIBLE_PRE_26 = 130;
        public static final int IMPORTANCE_SERVICE = 300;
        public static final int IMPORTANCE_TOP_SLEEPING = 150;
        public static final int IMPORTANCE_VISIBLE = 200;
        public static final int REASON_PROVIDER_IN_USE = 1;
        public static final int REASON_SERVICE_IN_USE = 2;
        public static final int REASON_UNKNOWN = 0;
        public int flags;
        public int importance;
        public int importanceReasonCode;
        public ComponentName importanceReasonComponent;
        public int importanceReasonImportance;
        public int importanceReasonPid;
        public int lastTrimLevel;
        public int lru;
        public int pid;
        public String[] pkgList;
        public String processName;
        public int processState;
        public int uid;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Importance {
        }

        public static int importanceToProcState(int i2) {
            if (i2 == 1000) {
                return 18;
            }
            if (i2 >= 400) {
                return 13;
            }
            if (i2 >= 300) {
                return 11;
            }
            if (i2 > 270) {
                return 10;
            }
            if (i2 >= 230) {
                return 8;
            }
            if (i2 >= 200) {
                return 6;
            }
            if (i2 >= 150) {
                return 5;
            }
            return i2 >= 125 ? 4 : 3;
        }

        public static int procStateToImportance(int i2) {
            if (i2 == 18) {
                return 1000;
            }
            if (i2 >= 13) {
                return 400;
            }
            if (i2 >= 11) {
                return 300;
            }
            if (i2 > 10) {
                return 270;
            }
            if (i2 >= 8) {
                return 230;
            }
            if (i2 >= 6) {
                return 200;
            }
            if (i2 >= 5) {
                return 150;
            }
            return i2 >= 4 ? 125 : 100;
        }

        public static int procStateToImportanceForClient(int i2, Context context) {
            return procStateToImportanceForTargetSdk(i2, context.getApplicationInfo().targetSdkVersion);
        }

        public static int procStateToImportanceForTargetSdk(int i2, int i3) {
            int iProcStateToImportance = procStateToImportance(i2);
            if (i3 >= 26) {
                return iProcStateToImportance;
            }
            if (iProcStateToImportance == 230) {
                return 130;
            }
            if (iProcStateToImportance != 270) {
                return iProcStateToImportance;
            }
            return 170;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.processName = parcel.readString();
            this.pid = parcel.readInt();
            this.uid = parcel.readInt();
            this.pkgList = parcel.readStringArray();
            this.flags = parcel.readInt();
            this.lastTrimLevel = parcel.readInt();
            this.importance = parcel.readInt();
            this.lru = parcel.readInt();
            this.importanceReasonCode = parcel.readInt();
            this.importanceReasonPid = parcel.readInt();
            this.importanceReasonComponent = ComponentName.readFromParcel(parcel);
            this.importanceReasonImportance = parcel.readInt();
            this.processState = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.processName);
            parcel.writeInt(this.pid);
            parcel.writeInt(this.uid);
            parcel.writeStringArray(this.pkgList);
            parcel.writeInt(this.flags);
            parcel.writeInt(this.lastTrimLevel);
            parcel.writeInt(this.importance);
            parcel.writeInt(this.lru);
            parcel.writeInt(this.importanceReasonCode);
            parcel.writeInt(this.importanceReasonPid);
            ComponentName.writeToParcel(this.importanceReasonComponent, parcel);
            parcel.writeInt(this.importanceReasonImportance);
            parcel.writeInt(this.processState);
        }

        public RunningAppProcessInfo() {
            this.importance = 100;
            this.importanceReasonCode = 0;
            this.processState = 6;
        }

        public RunningAppProcessInfo(String str, int i2, String[] strArr) {
            this.processName = str;
            this.pid = i2;
            this.pkgList = strArr;
        }

        private RunningAppProcessInfo(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public static class RunningServiceInfo implements Parcelable {
        public static final Parcelable.Creator<RunningServiceInfo> CREATOR = new Parcelable.Creator<RunningServiceInfo>() { // from class: android.app.ActivityManager.RunningServiceInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RunningServiceInfo createFromParcel(Parcel parcel) {
                return new RunningServiceInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RunningServiceInfo[] newArray(int i2) {
                return new RunningServiceInfo[i2];
            }
        };
        public static final int FLAG_FOREGROUND = 2;
        public static final int FLAG_PERSISTENT_PROCESS = 8;
        public static final int FLAG_STARTED = 1;
        public static final int FLAG_SYSTEM_PROCESS = 4;
        public long activeSince;
        public int clientCount;
        public int clientLabel;
        public String clientPackage;
        public int crashCount;
        public int flags;
        public boolean foreground;
        public long lastActivityTime;
        public int pid;
        public String process;
        public long restarting;
        public ComponentName service;
        public boolean started;
        public int uid;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.service = ComponentName.readFromParcel(parcel);
            this.pid = parcel.readInt();
            this.uid = parcel.readInt();
            this.process = parcel.readString();
            this.foreground = parcel.readInt() != 0;
            this.activeSince = parcel.readLong();
            this.started = parcel.readInt() != 0;
            this.clientCount = parcel.readInt();
            this.crashCount = parcel.readInt();
            this.lastActivityTime = parcel.readLong();
            this.restarting = parcel.readLong();
            this.flags = parcel.readInt();
            this.clientPackage = parcel.readString();
            this.clientLabel = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            ComponentName.writeToParcel(this.service, parcel);
            parcel.writeInt(this.pid);
            parcel.writeInt(this.uid);
            parcel.writeString(this.process);
            parcel.writeInt(this.foreground ? 1 : 0);
            parcel.writeLong(this.activeSince);
            parcel.writeInt(this.started ? 1 : 0);
            parcel.writeInt(this.clientCount);
            parcel.writeInt(this.crashCount);
            parcel.writeLong(this.lastActivityTime);
            parcel.writeLong(this.restarting);
            parcel.writeInt(this.flags);
            parcel.writeString(this.clientPackage);
            parcel.writeInt(this.clientLabel);
        }

        public RunningServiceInfo() {
        }

        private RunningServiceInfo(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public static class RunningTaskInfo implements Parcelable {
        public static final Parcelable.Creator<RunningTaskInfo> CREATOR = new Parcelable.Creator<RunningTaskInfo>() { // from class: android.app.ActivityManager.RunningTaskInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RunningTaskInfo createFromParcel(Parcel parcel) {
                return new RunningTaskInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RunningTaskInfo[] newArray(int i2) {
                return new RunningTaskInfo[i2];
            }
        };
        public ComponentName baseActivity;
        public CharSequence description;
        public int id;
        public long lastActiveTime;
        public int numActivities;
        public int numRunning;
        public int resizeMode;
        public int stackId;
        public boolean supportsSplitScreenMultiWindow;
        public Bitmap thumbnail;
        public ComponentName topActivity;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.id = parcel.readInt();
            this.stackId = parcel.readInt();
            this.baseActivity = ComponentName.readFromParcel(parcel);
            this.topActivity = ComponentName.readFromParcel(parcel);
            if (parcel.readInt() != 0) {
                this.thumbnail = Bitmap.CREATOR.createFromParcel(parcel);
            } else {
                this.thumbnail = null;
            }
            this.description = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.numActivities = parcel.readInt();
            this.numRunning = parcel.readInt();
            this.supportsSplitScreenMultiWindow = parcel.readInt() != 0;
            this.resizeMode = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.id);
            parcel.writeInt(this.stackId);
            ComponentName.writeToParcel(this.baseActivity, parcel);
            ComponentName.writeToParcel(this.topActivity, parcel);
            if (this.thumbnail != null) {
                parcel.writeInt(1);
                this.thumbnail.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            TextUtils.writeToParcel(this.description, parcel, 1);
            parcel.writeInt(this.numActivities);
            parcel.writeInt(this.numRunning);
            parcel.writeInt(this.supportsSplitScreenMultiWindow ? 1 : 0);
            parcel.writeInt(this.resizeMode);
        }

        public RunningTaskInfo() {
        }

        private RunningTaskInfo(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public static class StackId {
        public static final int ASSISTANT_STACK_ID = 6;
        public static final int DOCKED_STACK_ID = 3;
        public static final int FIRST_DYNAMIC_STACK_ID = 7;
        public static final int FIRST_STATIC_STACK_ID = 0;
        public static final int FREEFORM_WORKSPACE_STACK_ID = 2;
        public static final int FULLSCREEN_WORKSPACE_STACK_ID = 1;
        public static final int HOME_STACK_ID = 0;
        public static final int INVALID_STACK_ID = -1;
        public static final int LAST_STATIC_STACK_ID = 6;
        public static final int PINNED_STACK_ID = 4;
        public static final int RECENTS_STACK_ID = 5;

        public static boolean allowTopTaskToReturnHome(int i2) {
            return i2 != 4;
        }

        public static boolean canReceiveKeys(int i2) {
            return i2 != 4;
        }

        public static boolean canSpecifyOrientation(int i2) {
            return i2 == 0 || i2 == 5 || i2 == 1 || i2 == 6 || isDynamicStack(i2);
        }

        public static boolean hasMovementAnimations(int i2) {
            return i2 != 4;
        }

        public static boolean hasWindowDecor(int i2) {
            return i2 == 2;
        }

        public static boolean hasWindowShadow(int i2) {
            return i2 == 2 || i2 == 4;
        }

        public static boolean isAllowedOverLockscreen(int i2) {
            return i2 == 0 || i2 == 1 || i2 == 6;
        }

        public static boolean isAllowedToEnterPictureInPicture(int i2) {
            return (i2 == 0 || i2 == 6 || i2 == 5) ? false : true;
        }

        public static boolean isAlwaysOnTop(int i2) {
            return i2 == 4;
        }

        public static boolean isBackdropToTranslucentActivity(int i2) {
            return i2 == 1 || i2 == 6;
        }

        public static boolean isDynamicStack(int i2) {
            return i2 >= 7;
        }

        public static boolean isDynamicStacksVisibleBehindAllowed(int i2) {
            return i2 == 4 || i2 == 6;
        }

        public static boolean isHomeOrRecentsStack(int i2) {
            return i2 == 0 || i2 == 5;
        }

        public static boolean isMultiWindowStack(int i2) {
            return i2 == 4 || i2 == 2 || i2 == 3;
        }

        public static boolean isResizeableByDockedStack(int i2) {
            return (!isStaticStack(i2) || i2 == 3 || i2 == 4 || i2 == 6) ? false : true;
        }

        public static boolean isStackAffectedByDragResizing(int i2) {
            return (!isStaticStack(i2) || i2 == 4 || i2 == 6) ? false : true;
        }

        public static boolean isStaticStack(int i2) {
            return i2 >= 0 && i2 <= 6;
        }

        public static boolean isTaskResizeAllowed(int i2) {
            return i2 == 2;
        }

        public static boolean isTaskResizeableByDockedStack(int i2) {
            return (!isStaticStack(i2) || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 6) ? false : true;
        }

        public static boolean keepFocusInStackIfPossible(int i2) {
            return i2 == 2 || i2 == 3 || i2 == 4;
        }

        public static boolean keepVisibleDeadAppWindowOnScreen(int i2) {
            return i2 != 4;
        }

        public static boolean normallyFullscreenWindows(int i2) {
            return (i2 == 4 || i2 == 2 || i2 == 3) ? false : true;
        }

        public static boolean persistTaskBounds(int i2) {
            return i2 == 2;
        }

        public static boolean replaceWindowsOnTaskMove(int i2, int i3) {
            return i2 == 2 || i3 == 2;
        }

        public static boolean resizeStackWithLaunchBounds(int i2) {
            return i2 == 4;
        }

        public static boolean tasksAreFloating(int i2) {
            return i2 == 2 || i2 == 4;
        }

        public static boolean useAnimationSpecForAppTransition(int i2) {
            return i2 == 2 || i2 == 1 || i2 == 6 || i2 == 3 || i2 == -1;
        }

        public static boolean useWindowFrameForBackdrop(int i2) {
            return i2 == 2 || i2 == 4;
        }

        public static boolean windowsAreScaleable(int i2) {
            return i2 == 4;
        }
    }

    public static class StackInfo implements Parcelable {
        public static final Parcelable.Creator<StackInfo> CREATOR = new Parcelable.Creator<StackInfo>() { // from class: android.app.ActivityManager.StackInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StackInfo createFromParcel(Parcel parcel) {
                return new StackInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StackInfo[] newArray(int i2) {
                return new StackInfo[i2];
            }
        };
        public Rect bounds;
        public int displayId;
        public int position;
        public int stackId;
        public Rect[] taskBounds;
        public int[] taskIds;
        public String[] taskNames;
        public int[] taskUserIds;
        public ComponentName topActivity;
        public int userId;
        public boolean visible;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.stackId = parcel.readInt();
            this.bounds = new Rect(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
            this.taskIds = parcel.createIntArray();
            this.taskNames = parcel.createStringArray();
            int i2 = parcel.readInt();
            if (i2 > 0) {
                this.taskBounds = new Rect[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    this.taskBounds[i3] = new Rect();
                    this.taskBounds[i3].set(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                }
            } else {
                this.taskBounds = null;
            }
            this.taskUserIds = parcel.createIntArray();
            this.displayId = parcel.readInt();
            this.userId = parcel.readInt();
            this.visible = parcel.readInt() > 0;
            this.position = parcel.readInt();
            if (parcel.readInt() > 0) {
                this.topActivity = ComponentName.readFromParcel(parcel);
            }
        }

        public String toString(String str) {
            StringBuilder sb = new StringBuilder(256);
            sb.append(str);
            sb.append("Stack id=");
            sb.append(this.stackId);
            sb.append(" bounds=");
            sb.append(this.bounds.toShortString());
            sb.append(" displayId=");
            sb.append(this.displayId);
            sb.append(" userId=");
            sb.append(this.userId);
            sb.append("\n");
            String str2 = str + "  ";
            for (int i2 = 0; i2 < this.taskIds.length; i2++) {
                sb.append(str2);
                sb.append("taskId=");
                sb.append(this.taskIds[i2]);
                sb.append(": ");
                sb.append(this.taskNames[i2]);
                if (this.taskBounds != null) {
                    sb.append(" bounds=");
                    sb.append(this.taskBounds[i2].toShortString());
                }
                sb.append(" userId=");
                sb.append(this.taskUserIds[i2]);
                sb.append(" visible=");
                sb.append(this.visible);
                if (this.topActivity != null) {
                    sb.append(" topActivity=");
                    sb.append(this.topActivity);
                }
                sb.append("\n");
            }
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.stackId);
            parcel.writeInt(this.bounds.left);
            parcel.writeInt(this.bounds.top);
            parcel.writeInt(this.bounds.right);
            parcel.writeInt(this.bounds.bottom);
            parcel.writeIntArray(this.taskIds);
            parcel.writeStringArray(this.taskNames);
            Rect[] rectArr = this.taskBounds;
            int length = rectArr == null ? 0 : rectArr.length;
            parcel.writeInt(length);
            for (int i3 = 0; i3 < length; i3++) {
                parcel.writeInt(this.taskBounds[i3].left);
                parcel.writeInt(this.taskBounds[i3].top);
                parcel.writeInt(this.taskBounds[i3].right);
                parcel.writeInt(this.taskBounds[i3].bottom);
            }
            parcel.writeIntArray(this.taskUserIds);
            parcel.writeInt(this.displayId);
            parcel.writeInt(this.userId);
            parcel.writeInt(this.visible ? 1 : 0);
            parcel.writeInt(this.position);
            if (this.topActivity == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                this.topActivity.writeToParcel(parcel, 0);
            }
        }

        public StackInfo() {
            this.bounds = new Rect();
        }

        private StackInfo(Parcel parcel) {
            this.bounds = new Rect();
            readFromParcel(parcel);
        }

        public String toString() {
            return toString("");
        }
    }

    public static class TaskDescription implements Parcelable {
        private static final String ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND = "task_description_colorBackground";
        private static final String ATTR_TASKDESCRIPTIONCOLOR_PRIMARY = "task_description_color";
        private static final String ATTR_TASKDESCRIPTIONICONFILENAME = "task_description_icon_filename";
        private static final String ATTR_TASKDESCRIPTIONLABEL = "task_description_label";
        public static final String ATTR_TASKDESCRIPTION_PREFIX = "task_description_";
        public static final Parcelable.Creator<TaskDescription> CREATOR = new Parcelable.Creator<TaskDescription>() { // from class: android.app.ActivityManager.TaskDescription.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskDescription createFromParcel(Parcel parcel) {
                return new TaskDescription(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskDescription[] newArray(int i2) {
                return new TaskDescription[i2];
            }
        };
        private int mColorBackground;
        private int mColorPrimary;
        private Bitmap mIcon;
        private String mIconFilename;
        private String mLabel;
        private int mNavigationBarColor;
        private int mStatusBarColor;

        public static Bitmap loadTaskDescriptionIcon(String str, int i2) {
            if (str == null) {
                return null;
            }
            try {
                return ActivityManager.getService().getTaskDescriptionIcon(str, i2);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        public void copyFrom(TaskDescription taskDescription) {
            this.mLabel = taskDescription.mLabel;
            this.mIcon = taskDescription.mIcon;
            this.mIconFilename = taskDescription.mIconFilename;
            this.mColorPrimary = taskDescription.mColorPrimary;
            this.mColorBackground = taskDescription.mColorBackground;
            this.mStatusBarColor = taskDescription.mStatusBarColor;
            this.mNavigationBarColor = taskDescription.mNavigationBarColor;
        }

        public void copyFromPreserveHiddenFields(TaskDescription taskDescription) {
            this.mLabel = taskDescription.mLabel;
            this.mIcon = taskDescription.mIcon;
            this.mIconFilename = taskDescription.mIconFilename;
            this.mColorPrimary = taskDescription.mColorPrimary;
            int i2 = taskDescription.mColorBackground;
            if (i2 != 0) {
                this.mColorBackground = i2;
            }
            int i3 = taskDescription.mStatusBarColor;
            if (i3 != 0) {
                this.mStatusBarColor = i3;
            }
            int i4 = taskDescription.mNavigationBarColor;
            if (i4 != 0) {
                this.mNavigationBarColor = i4;
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getBackgroundColor() {
            return this.mColorBackground;
        }

        public Bitmap getIcon() {
            Bitmap bitmap = this.mIcon;
            return bitmap != null ? bitmap : loadTaskDescriptionIcon(this.mIconFilename, UserHandle.myUserId());
        }

        public String getIconFilename() {
            return this.mIconFilename;
        }

        public Bitmap getInMemoryIcon() {
            return this.mIcon;
        }

        public String getLabel() {
            return this.mLabel;
        }

        public int getNavigationBarColor() {
            return this.mNavigationBarColor;
        }

        public int getPrimaryColor() {
            return this.mColorPrimary;
        }

        public int getStatusBarColor() {
            return this.mStatusBarColor;
        }

        public void readFromParcel(Parcel parcel) {
            this.mLabel = parcel.readInt() > 0 ? parcel.readString() : null;
            this.mIcon = parcel.readInt() > 0 ? Bitmap.CREATOR.createFromParcel(parcel) : null;
            this.mColorPrimary = parcel.readInt();
            this.mColorBackground = parcel.readInt();
            this.mStatusBarColor = parcel.readInt();
            this.mNavigationBarColor = parcel.readInt();
            this.mIconFilename = parcel.readInt() > 0 ? parcel.readString() : null;
        }

        public void restoreFromXml(String str, String str2) {
            if (ATTR_TASKDESCRIPTIONLABEL.equals(str)) {
                setLabel(str2);
                return;
            }
            if (ATTR_TASKDESCRIPTIONCOLOR_PRIMARY.equals(str)) {
                setPrimaryColor((int) Long.parseLong(str2, 16));
            } else if (ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND.equals(str)) {
                setBackgroundColor((int) Long.parseLong(str2, 16));
            } else if (ATTR_TASKDESCRIPTIONICONFILENAME.equals(str)) {
                setIconFilename(str2);
            }
        }

        public void saveToXml(XmlSerializer xmlSerializer) throws IOException {
            String str = this.mLabel;
            if (str != null) {
                xmlSerializer.attribute(null, ATTR_TASKDESCRIPTIONLABEL, str);
            }
            int i2 = this.mColorPrimary;
            if (i2 != 0) {
                xmlSerializer.attribute(null, ATTR_TASKDESCRIPTIONCOLOR_PRIMARY, Integer.toHexString(i2));
            }
            int i3 = this.mColorBackground;
            if (i3 != 0) {
                xmlSerializer.attribute(null, ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND, Integer.toHexString(i3));
            }
            String str2 = this.mIconFilename;
            if (str2 != null) {
                xmlSerializer.attribute(null, ATTR_TASKDESCRIPTIONICONFILENAME, str2);
            }
        }

        public void setBackgroundColor(int i2) {
            if (i2 != 0 && Color.alpha(i2) != 255) {
                throw new RuntimeException("A TaskDescription's background color should be opaque");
            }
            this.mColorBackground = i2;
        }

        public void setIcon(Bitmap bitmap) {
            this.mIcon = bitmap;
        }

        public void setIconFilename(String str) {
            this.mIconFilename = str;
            this.mIcon = null;
        }

        public void setLabel(String str) {
            this.mLabel = str;
        }

        public void setNavigationBarColor(int i2) {
            this.mNavigationBarColor = i2;
        }

        public void setPrimaryColor(int i2) {
            if (i2 != 0 && Color.alpha(i2) != 255) {
                throw new RuntimeException("A TaskDescription's primary color should be opaque");
            }
            this.mColorPrimary = i2;
        }

        public void setStatusBarColor(int i2) {
            this.mStatusBarColor = i2;
        }

        public String toString() {
            return "TaskDescription Label: " + this.mLabel + " Icon: " + this.mIcon + " IconFilename: " + this.mIconFilename + " colorPrimary: " + this.mColorPrimary + " colorBackground: " + this.mColorBackground + " statusBarColor: " + this.mColorBackground + " navigationBarColor: " + this.mNavigationBarColor;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            if (this.mLabel == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcel.writeString(this.mLabel);
            }
            if (this.mIcon == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                this.mIcon.writeToParcel(parcel, 0);
            }
            parcel.writeInt(this.mColorPrimary);
            parcel.writeInt(this.mColorBackground);
            parcel.writeInt(this.mStatusBarColor);
            parcel.writeInt(this.mNavigationBarColor);
            if (this.mIconFilename == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcel.writeString(this.mIconFilename);
            }
        }

        public TaskDescription(String str, Bitmap bitmap, int i2) {
            this(str, bitmap, null, i2, 0, 0, 0);
            if (i2 != 0 && Color.alpha(i2) != 255) {
                throw new RuntimeException("A TaskDescription's primary color should be opaque");
            }
        }

        public TaskDescription(String str, Bitmap bitmap) {
            this(str, bitmap, null, 0, 0, 0, 0);
        }

        public TaskDescription(String str) {
            this(str, null, null, 0, 0, 0, 0);
        }

        public TaskDescription() {
            this(null, null, null, 0, 0, 0, 0);
        }

        public TaskDescription(String str, Bitmap bitmap, String str2, int i2, int i3, int i4, int i5) {
            this.mLabel = str;
            this.mIcon = bitmap;
            this.mIconFilename = str2;
            this.mColorPrimary = i2;
            this.mColorBackground = i3;
            this.mStatusBarColor = i4;
            this.mNavigationBarColor = i5;
        }

        public TaskDescription(TaskDescription taskDescription) {
            copyFrom(taskDescription);
        }

        private TaskDescription(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public static class TaskSnapshot implements Parcelable {
        public static final Parcelable.Creator<TaskSnapshot> CREATOR = new Parcelable.Creator<TaskSnapshot>() { // from class: android.app.ActivityManager.TaskSnapshot.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskSnapshot createFromParcel(Parcel parcel) {
                return new TaskSnapshot(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskSnapshot[] newArray(int i2) {
                return new TaskSnapshot[i2];
            }
        };
        private final Rect mContentInsets;
        private final int mOrientation;
        private final boolean mReducedResolution;
        private final float mScale;
        private final GraphicBuffer mSnapshot;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Rect getContentInsets() {
            return this.mContentInsets;
        }

        public int getOrientation() {
            return this.mOrientation;
        }

        public float getScale() {
            return this.mScale;
        }

        public GraphicBuffer getSnapshot() {
            return this.mSnapshot;
        }

        public boolean isReducedResolution() {
            return this.mReducedResolution;
        }

        public String toString() {
            return "TaskSnapshot{mSnapshot=" + this.mSnapshot + " mOrientation=" + this.mOrientation + " mContentInsets=" + this.mContentInsets.toShortString() + " mReducedResolution=" + this.mReducedResolution + " mScale=" + this.mScale;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.mSnapshot, 0);
            parcel.writeInt(this.mOrientation);
            parcel.writeParcelable(this.mContentInsets, 0);
            parcel.writeBoolean(this.mReducedResolution);
            parcel.writeFloat(this.mScale);
        }

        public TaskSnapshot(GraphicBuffer graphicBuffer, int i2, Rect rect, boolean z2, float f2) {
            this.mSnapshot = graphicBuffer;
            this.mOrientation = i2;
            this.mContentInsets = new Rect(rect);
            this.mReducedResolution = z2;
            this.mScale = f2;
        }

        private TaskSnapshot(Parcel parcel) {
            this.mSnapshot = (GraphicBuffer) parcel.readParcelable(null);
            this.mOrientation = parcel.readInt();
            this.mContentInsets = (Rect) parcel.readParcelable(null);
            this.mReducedResolution = parcel.readBoolean();
            this.mScale = parcel.readFloat();
        }
    }

    public static class TaskThumbnail implements Parcelable {
        public static final Parcelable.Creator<TaskThumbnail> CREATOR = new Parcelable.Creator<TaskThumbnail>() { // from class: android.app.ActivityManager.TaskThumbnail.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskThumbnail createFromParcel(Parcel parcel) {
                return new TaskThumbnail(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskThumbnail[] newArray(int i2) {
                return new TaskThumbnail[i2];
            }
        };
        public Bitmap mainThumbnail;
        public ParcelFileDescriptor thumbnailFileDescriptor;
        public TaskThumbnailInfo thumbnailInfo;

        @Override // android.os.Parcelable
        public int describeContents() {
            ParcelFileDescriptor parcelFileDescriptor = this.thumbnailFileDescriptor;
            if (parcelFileDescriptor != null) {
                return parcelFileDescriptor.describeContents();
            }
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            if (parcel.readInt() != 0) {
                this.mainThumbnail = Bitmap.CREATOR.createFromParcel(parcel);
            } else {
                this.mainThumbnail = null;
            }
            if (parcel.readInt() != 0) {
                this.thumbnailFileDescriptor = ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
            } else {
                this.thumbnailFileDescriptor = null;
            }
            if (parcel.readInt() != 0) {
                this.thumbnailInfo = TaskThumbnailInfo.CREATOR.createFromParcel(parcel);
            } else {
                this.thumbnailInfo = null;
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            if (this.mainThumbnail != null) {
                parcel.writeInt(1);
                this.mainThumbnail.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(0);
            }
            if (this.thumbnailFileDescriptor != null) {
                parcel.writeInt(1);
                this.thumbnailFileDescriptor.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(0);
            }
            if (this.thumbnailInfo == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                this.thumbnailInfo.writeToParcel(parcel, i2);
            }
        }

        public TaskThumbnail() {
        }

        private TaskThumbnail(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public static class TaskThumbnailInfo implements Parcelable {
        private static final String ATTR_SCREEN_ORIENTATION = "task_thumbnailinfo_screen_orientation";
        private static final String ATTR_TASK_HEIGHT = "task_thumbnailinfo_task_height";
        public static final String ATTR_TASK_THUMBNAILINFO_PREFIX = "task_thumbnailinfo_";
        private static final String ATTR_TASK_WIDTH = "task_thumbnailinfo_task_width";
        public static final Parcelable.Creator<TaskThumbnailInfo> CREATOR = new Parcelable.Creator<TaskThumbnailInfo>() { // from class: android.app.ActivityManager.TaskThumbnailInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskThumbnailInfo createFromParcel(Parcel parcel) {
                return new TaskThumbnailInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskThumbnailInfo[] newArray(int i2) {
                return new TaskThumbnailInfo[i2];
            }
        };
        public int screenOrientation;
        public int taskHeight;
        public int taskWidth;

        public void copyFrom(TaskThumbnailInfo taskThumbnailInfo) {
            this.taskWidth = taskThumbnailInfo.taskWidth;
            this.taskHeight = taskThumbnailInfo.taskHeight;
            this.screenOrientation = taskThumbnailInfo.screenOrientation;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.taskWidth = parcel.readInt();
            this.taskHeight = parcel.readInt();
            this.screenOrientation = parcel.readInt();
        }

        public void reset() {
            this.taskWidth = 0;
            this.taskHeight = 0;
            this.screenOrientation = 0;
        }

        public void restoreFromXml(String str, String str2) {
            if (ATTR_TASK_WIDTH.equals(str)) {
                this.taskWidth = Integer.parseInt(str2);
            } else if (ATTR_TASK_HEIGHT.equals(str)) {
                this.taskHeight = Integer.parseInt(str2);
            } else if (ATTR_SCREEN_ORIENTATION.equals(str)) {
                this.screenOrientation = Integer.parseInt(str2);
            }
        }

        public void saveToXml(XmlSerializer xmlSerializer) throws IOException {
            xmlSerializer.attribute(null, ATTR_TASK_WIDTH, Integer.toString(this.taskWidth));
            xmlSerializer.attribute(null, ATTR_TASK_HEIGHT, Integer.toString(this.taskHeight));
            xmlSerializer.attribute(null, ATTR_SCREEN_ORIENTATION, Integer.toString(this.screenOrientation));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.taskWidth);
            parcel.writeInt(this.taskHeight);
            parcel.writeInt(this.screenOrientation);
        }

        public TaskThumbnailInfo() {
            this.screenOrientation = 0;
        }

        private TaskThumbnailInfo(Parcel parcel) {
            this.screenOrientation = 0;
            readFromParcel(parcel);
        }
    }

    public static final class UidObserver extends IUidObserver.Stub {
        final Context mContext;
        final OnUidImportanceListener mListener;

        public UidObserver(OnUidImportanceListener onUidImportanceListener, Context context) {
            this.mListener = onUidImportanceListener;
            this.mContext = context;
        }

        @Override // android.app.IUidObserver
        public void onUidActive(int i2) {
        }

        @Override // android.app.IUidObserver
        public void onUidCachedChanged(int i2, boolean z2) {
        }

        @Override // android.app.IUidObserver
        public void onUidGone(int i2, boolean z2) {
            this.mListener.onUidImportance(i2, 1000);
        }

        @Override // android.app.IUidObserver
        public void onUidIdle(int i2, boolean z2) {
        }

        @Override // android.app.IUidObserver
        public void onUidStateChanged(int i2, int i3, long j2) {
            this.mListener.onUidImportance(i2, RunningAppProcessInfo.procStateToImportanceForClient(i3, this.mContext));
        }
    }

    public ActivityManager(Context context, Handler handler) {
        this.mContext = context;
    }

    public static void broadcastStickyIntent(Intent intent, int i2) {
        broadcastStickyIntent(intent, -1, i2);
    }

    public static int checkComponentPermission(String str, int i2, int i3, boolean z2) {
        int appId = UserHandle.getAppId(i2);
        if (appId == 0 || appId == 1000) {
            return 0;
        }
        if (UserHandle.isIsolated(i2)) {
            return -1;
        }
        if (i3 >= 0 && UserHandle.isSameApp(i2, i3)) {
            return 0;
        }
        if (!z2) {
            return -1;
        }
        if (str == null) {
            return 0;
        }
        try {
            if ((Manifest.permission.INTERACT_ACROSS_USERS.equals(str) || Manifest.permission.INTERACT_ACROSS_USERS_FULL.equals(str)) && AppCloneUserInfo.isCrossingAppCloneUser(UserHandle.getUserId(i2), UserHandle.getUserId(i3))) {
                return 0;
            }
            return AppGlobals.getPackageManager().checkUidPermission(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static int checkUidPermission(String str, int i2) {
        try {
            return AppGlobals.getPackageManager().checkUidPermission(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static void dumpPackageStateStatic(FileDescriptor fileDescriptor, String str) {
        FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(fileDescriptor));
        dumpService(fastPrintWriter, fileDescriptor, "package", new String[]{str});
        fastPrintWriter.println();
        dumpService(fastPrintWriter, fileDescriptor, Context.ACTIVITY_SERVICE, new String[]{"-a", "package", str});
        fastPrintWriter.println();
        dumpService(fastPrintWriter, fileDescriptor, "meminfo", new String[]{"--local", "--package", str});
        fastPrintWriter.println();
        dumpService(fastPrintWriter, fileDescriptor, ProcessStats.SERVICE_NAME, new String[]{str});
        fastPrintWriter.println();
        dumpService(fastPrintWriter, fileDescriptor, Context.USAGE_STATS_SERVICE, new String[]{"--packages", str});
        fastPrintWriter.println();
        dumpService(fastPrintWriter, fileDescriptor, BatteryStats.SERVICE_NAME, new String[]{str});
        fastPrintWriter.flush();
    }

    private static void dumpService(PrintWriter printWriter, FileDescriptor fileDescriptor, String str, String[] strArr) {
        printWriter.print("DUMP OF SERVICE ");
        printWriter.print(str);
        printWriter.println(SettingsStringUtil.DELIMITER);
        IBinder iBinderCheckService = ServiceManager.checkService(str);
        if (iBinderCheckService == null) {
            printWriter.println("  (Service not found)");
            return;
        }
        TransferPipe transferPipe = null;
        try {
            printWriter.flush();
            TransferPipe transferPipe2 = new TransferPipe();
            try {
                transferPipe2.setBufferPrefix("  ");
                iBinderCheckService.dumpAsync(transferPipe2.getWriteFd().getFileDescriptor(), strArr);
                transferPipe2.go(fileDescriptor, JobInfo.MIN_BACKOFF_MILLIS);
            } catch (Throwable th) {
                th = th;
                transferPipe = transferPipe2;
                if (transferPipe != null) {
                    transferPipe.kill();
                }
                printWriter.println("Failure dumping service:");
                th.printStackTrace(printWriter);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void ensureAppTaskThumbnailSizeLocked() {
        if (this.mAppTaskThumbnailSize == null) {
            try {
                this.mAppTaskThumbnailSize = getService().getAppTaskThumbnailSize();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public static int getCurrentUser() {
        try {
            UserInfo currentUser = getService().getCurrentUser();
            if (currentUser != null) {
                return currentUser.id;
            }
            return 0;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static int getDefaultAppRecentsLimitStatic() {
        return getMaxRecentTasksStatic() / 6;
    }

    public static int getLauncherLargeIconSizeInner(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(17104896);
        if (resources.getConfiguration().smallestScreenWidthDp < 600) {
            return dimensionPixelSize;
        }
        int i2 = resources.getDisplayMetrics().densityDpi;
        if (i2 == 120) {
            return (dimensionPixelSize * 160) / 120;
        }
        if (i2 == 160) {
            return (dimensionPixelSize * 240) / 160;
        }
        if (i2 == 213) {
            return (dimensionPixelSize * 320) / 240;
        }
        if (i2 == 240) {
            return (dimensionPixelSize * 320) / 240;
        }
        if (i2 != 320) {
            return i2 != 480 ? (int) ((dimensionPixelSize * 1.5f) + 0.5f) : ((dimensionPixelSize * 320) * 2) / 480;
        }
        return (dimensionPixelSize * 480) / 320;
    }

    public static int getMaxAppRecentsLimitStatic() {
        return getMaxRecentTasksStatic() / 2;
    }

    @Deprecated
    public static int getMaxNumPictureInPictureActions() {
        return 3;
    }

    public static int getMaxRecentTasksStatic() {
        int i2 = gMaxRecentTasks;
        if (i2 < 0) {
            i2 = isLowRamDeviceStatic() ? 36 : 48;
            gMaxRecentTasks = i2;
        }
        return i2;
    }

    public static void getMyMemoryState(RunningAppProcessInfo runningAppProcessInfo) {
        try {
            getService().getMyMemoryState(runningAppProcessInfo);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static IActivityManager getService() {
        return IActivityManagerSingleton.get();
    }

    public static int handleIncomingUser(int i2, int i3, int i4, boolean z2, boolean z3, String str, String str2) {
        if (UserHandle.getUserId(i3) == i4) {
            return i4;
        }
        try {
            return getService().handleIncomingUser(i2, i3, i4, z2, z3, str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static boolean isHighEndGfx() {
        return (isLowRamDeviceStatic() || Resources.getSystem().getBoolean(R.bool.config_avoidGfxAccel)) ? false : true;
    }

    public static boolean isLowRamDeviceStatic() {
        return RoSystemProperties.CONFIG_LOW_RAM || (Build.IS_DEBUGGABLE && DEVELOPMENT_FORCE_LOW_RAM);
    }

    public static final boolean isProcStateBackground(int i2) {
        return i2 >= 8;
    }

    public static boolean isRunningInTestHarness() {
        return SystemProperties.getBoolean("ro.test_harness", false);
    }

    public static boolean isSmallBatteryDevice() {
        return RoSystemProperties.CONFIG_SMALL_BATTERY;
    }

    public static final boolean isStartResultFatalError(int i2) {
        return -100 <= i2 && i2 <= -1;
    }

    public static final boolean isStartResultSuccessful(int i2) {
        return i2 >= 0 && i2 <= 99;
    }

    public static boolean isSystemReady() {
        if (!sSystemReady) {
            if (ActivityThread.isSystem()) {
                sSystemReady = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).isSystemReady();
            } else {
                sSystemReady = true;
            }
        }
        return sSystemReady;
    }

    public static boolean isUserAMonkey() {
        try {
            return getService().isUserAMonkey();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static void logoutCurrentUser() {
        int currentUser = getCurrentUser();
        if (currentUser != 0) {
            try {
                getService().switchUser(0);
                getService().stopUser(currentUser, false, null);
            } catch (RemoteException e2) {
                e2.rethrowFromSystemServer();
            }
        }
    }

    public static void noteAlarmFinish(PendingIntent pendingIntent, int i2, String str) {
        try {
            getService().noteAlarmFinish(pendingIntent != null ? pendingIntent.getTarget() : null, i2, str);
        } catch (RemoteException unused) {
        }
    }

    public static void noteAlarmStart(PendingIntent pendingIntent, int i2, String str) {
        try {
            getService().noteAlarmStart(pendingIntent != null ? pendingIntent.getTarget() : null, i2, str);
        } catch (RemoteException unused) {
        }
    }

    public static void noteWakeupAlarm(PendingIntent pendingIntent, int i2, String str, String str2) {
        try {
            getService().noteWakeupAlarm(pendingIntent != null ? pendingIntent.getTarget() : null, i2, str, str2);
        } catch (RemoteException unused) {
        }
    }

    public static void setPersistentVrThread(int i2) {
        try {
            getService().setPersistentVrThread(i2);
        } catch (RemoteException unused) {
        }
    }

    public static void setVrThread(int i2) {
        try {
            getService().setVrThread(i2);
        } catch (RemoteException unused) {
        }
    }

    public static int staticGetLargeMemoryClass() {
        String str = SystemProperties.get("dalvik.vm.heapsize", "16m");
        return Integer.parseInt(str.substring(0, str.length() - 1));
    }

    public static int staticGetMemoryClass() {
        String str = SystemProperties.get("dalvik.vm.heapgrowthlimit", "");
        return (str == null || "".equals(str)) ? staticGetLargeMemoryClass() : Integer.parseInt(str.substring(0, str.length() - 1));
    }

    public static boolean supportsMultiWindow(Context context) {
        return (!isLowRamDeviceStatic() || context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_WATCH)) && Resources.getSystem().getBoolean(R.bool.config_supportsMultiWindow);
    }

    public static boolean supportsSplitScreenMultiWindow(Context context) {
        return supportsMultiWindow(context) && Resources.getSystem().getBoolean(R.bool.config_supportsSplitScreenMultiWindow);
    }

    public int addAppTask(Activity activity, Intent intent, TaskDescription taskDescription, Bitmap bitmap) {
        Point point;
        float f2;
        float f3;
        synchronized (this) {
            ensureAppTaskThumbnailSizeLocked();
            point = this.mAppTaskThumbnailSize;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i2 = point.f71x;
        if (width != i2 || height != point.f72y) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, point.f72y, bitmap.getConfig());
            int i3 = point.f71x;
            int i4 = width * i3;
            int i5 = point.f72y;
            if (i4 > i5 * height) {
                f2 = i3 / height;
                f3 = (i5 - (width * f2)) * 0.5f;
            } else {
                f2 = i5 / width;
                f3 = 0.0f;
            }
            Matrix matrix = new Matrix();
            matrix.setScale(f2, f2);
            matrix.postTranslate((int) (f3 + 0.5f), 0.0f);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawBitmap(bitmap, matrix, null);
            canvas.setBitmap(null);
            bitmap = bitmapCreateBitmap;
        }
        if (taskDescription == null) {
            taskDescription = new TaskDescription();
        }
        try {
            return getService().addAppTask(activity.getActivityToken(), intent, taskDescription, bitmap);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void addOnUidImportanceListener(OnUidImportanceListener onUidImportanceListener, int i2) {
        synchronized (this) {
            if (this.mImportanceListeners.containsKey(onUidImportanceListener)) {
                throw new IllegalArgumentException("Listener already registered: " + onUidImportanceListener);
            }
            UidObserver uidObserver = new UidObserver(onUidImportanceListener, this.mContext);
            try {
                getService().registerUidObserver(uidObserver, 3, RunningAppProcessInfo.importanceToProcState(i2), this.mContext.getOpPackageName());
                this.mImportanceListeners.put(onUidImportanceListener, uidObserver);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public boolean clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver) {
        try {
            return getService().clearApplicationUserData(str, iPackageDataObserver, UserHandle.myUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void clearGrantedUriPermissions(String str) {
        try {
            getService().clearGrantedUriPermissions(str, UserHandle.myUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void clearWatchHeapLimit() {
        try {
            getService().setDumpHeapDebugLimit(null, 0, 0L, null);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void dumpPackageState(FileDescriptor fileDescriptor, String str) {
        dumpPackageStateStatic(fileDescriptor, str);
    }

    public void forceStopPackage(String str) {
        forceStopPackageAsUser(str, UserHandle.myUserId());
    }

    public void forceStopPackageAsUser(String str, int i2) {
        try {
            getService().forceStopPackage(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Size getAppTaskThumbnailSize() {
        Size size;
        synchronized (this) {
            ensureAppTaskThumbnailSizeLocked();
            Point point = this.mAppTaskThumbnailSize;
            size = new Size(point.f71x, point.f72y);
        }
        return size;
    }

    public List<AppTask> getAppTasks() {
        ArrayList arrayList = new ArrayList();
        try {
            List<IBinder> appTasks = getService().getAppTasks(this.mContext.getPackageName());
            int size = appTasks.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(new AppTask(IAppTask.Stub.asInterface(appTasks.get(i2))));
            }
            return arrayList;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ConfigurationInfo getDeviceConfigurationInfo() {
        try {
            return getService().getDeviceConfigurationInfo();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getFrontActivityScreenCompatMode() {
        try {
            return getService().getFrontActivityScreenCompatMode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ParceledListSlice<UriPermission> getGrantedUriPermissions(String str) {
        try {
            return getService().getGrantedUriPermissions(str, UserHandle.myUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getLargeMemoryClass() {
        return staticGetLargeMemoryClass();
    }

    public int getLauncherLargeIconDensity() {
        Resources resources = this.mContext.getResources();
        int i2 = resources.getDisplayMetrics().densityDpi;
        if (resources.getConfiguration().smallestScreenWidthDp < 600) {
            return i2;
        }
        if (i2 == 120) {
            return 160;
        }
        if (i2 == 160) {
            return 240;
        }
        if (i2 == 213 || i2 == 240) {
            return 320;
        }
        if (i2 == 320) {
            return 480;
        }
        if (i2 != 480) {
            return (int) ((i2 * 1.5f) + 0.5f);
        }
        return 640;
    }

    public int getLauncherLargeIconSize() {
        return getLauncherLargeIconSizeInner(this.mContext);
    }

    public int getLockTaskModeState() {
        try {
            return getService().getLockTaskModeState();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getMemoryClass() {
        return staticGetMemoryClass();
    }

    public void getMemoryInfo(MemoryInfo memoryInfo) {
        try {
            getService().getMemoryInfo(memoryInfo);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean getPackageAskScreenCompat(String str) {
        try {
            return getService().getPackageAskScreenCompat(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getPackageImportance(String str) {
        try {
            return RunningAppProcessInfo.procStateToImportanceForClient(getService().getPackageProcessState(str, this.mContext.getOpPackageName()), this.mContext);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getPackageScreenCompatMode(String str) {
        try {
            return getService().getPackageScreenCompatMode(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Debug.MemoryInfo[] getProcessMemoryInfo(int[] iArr) {
        try {
            return getService().getProcessMemoryInfo(iArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<ProcessErrorStateInfo> getProcessesInErrorState() {
        try {
            return getService().getProcessesInErrorState();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public List<RecentTaskInfo> getRecentTasks(int i2, int i3) {
        try {
            return getService().getRecentTasks(i2, i3, UserHandle.myUserId()).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<RecentTaskInfo> getRecentTasksForUser(int i2, int i3, int i4) {
        try {
            return getService().getRecentTasks(i2, i3, i4).getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<RunningAppProcessInfo> getRunningAppProcesses() {
        try {
            return getService().getRunningAppProcesses();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<ApplicationInfo> getRunningExternalApplications() {
        try {
            return getService().getRunningExternalApplications();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public PendingIntent getRunningServiceControlPanel(ComponentName componentName) {
        try {
            return getService().getRunningServiceControlPanel(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public List<RunningServiceInfo> getRunningServices(int i2) {
        try {
            return getService().getServices(i2, 0);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public List<RunningTaskInfo> getRunningTasks(int i2) {
        try {
            return getService().getTasks(i2, 0);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public TaskThumbnail getTaskThumbnail(int i2) {
        try {
            return getService().getTaskThumbnail(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getUidImportance(int i2) {
        try {
            return RunningAppProcessInfo.procStateToImportanceForClient(getService().getUidProcessState(i2, this.mContext.getOpPackageName()), this.mContext);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public boolean isInLockTaskMode() {
        return getLockTaskModeState() != 0;
    }

    public boolean isLowRamDevice() {
        return isLowRamDeviceStatic();
    }

    public boolean isUserRunning(int i2) {
        try {
            return getService().isUserRunning(i2, 0);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isVrModePackageEnabled(ComponentName componentName) {
        try {
            return getService().isVrModePackageEnabled(componentName);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void killBackgroundProcesses(String str) {
        try {
            getService().killBackgroundProcesses(str, UserHandle.myUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void killUid(int i2, String str) {
        try {
            getService().killUid(UserHandle.getAppId(i2), UserHandle.getUserId(i2), str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void moveTaskToFront(int i2, int i3) {
        moveTaskToFront(i2, i3, null);
    }

    public void removeOnUidImportanceListener(OnUidImportanceListener onUidImportanceListener) {
        synchronized (this) {
            UidObserver uidObserverRemove = this.mImportanceListeners.remove(onUidImportanceListener);
            if (uidObserverRemove == null) {
                throw new IllegalArgumentException("Listener not registered: " + onUidImportanceListener);
            }
            try {
                getService().unregisterUidObserver(uidObserverRemove);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public boolean removeTask(int i2) {
        try {
            return getService().removeTask(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void restartPackage(String str) {
        killBackgroundProcesses(str);
    }

    public void setFrontActivityScreenCompatMode(int i2) {
        try {
            getService().setFrontActivityScreenCompatMode(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setPackageAskScreenCompat(String str, boolean z2) {
        try {
            getService().setPackageAskScreenCompat(str, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setPackageScreenCompatMode(String str, int i2) {
        try {
            getService().setPackageScreenCompatMode(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean setProcessMemoryTrimLevel(String str, int i2, int i3) {
        try {
            return getService().setProcessMemoryTrimLevel(str, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setWatchHeapLimit(long j2) {
        try {
            getService().setDumpHeapDebugLimit(null, 0, j2, this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void startLockTaskMode(int i2) {
        try {
            getService().startLockTaskModeById(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void stopLockTaskMode() {
        try {
            getService().stopLockTaskMode();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean switchUser(int i2) {
        try {
            return getService().switchUser(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static void broadcastStickyIntent(Intent intent, int i2, int i3) {
        try {
            getService().broadcastIntent(null, intent, null, null, -1, null, null, null, i2, null, false, true, i3);
        } catch (RemoteException unused) {
        }
    }

    public void moveTaskToFront(int i2, int i3, Bundle bundle) {
        try {
            getService().moveTaskToFront(i2, i3, bundle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean clearApplicationUserData() {
        return clearApplicationUserData(this.mContext.getPackageName(), null);
    }
}
