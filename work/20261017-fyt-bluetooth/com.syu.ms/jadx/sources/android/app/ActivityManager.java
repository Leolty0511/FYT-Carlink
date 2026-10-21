package android.app;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.ProxyProperties;
import android.os.BatteryStats;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Slog;
import com.android.internal.os.PkgUsageStats;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import o.g;
import u.e;

/* JADX INFO: loaded from: classes.dex */
public class ActivityManager {
    public static final int BROADCAST_STICKY_CANT_HAVE_PERMISSION = -1;
    public static final int BROADCAST_SUCCESS = 0;
    public static final int COMPAT_MODE_ALWAYS = -1;
    public static final int COMPAT_MODE_DISABLED = 0;
    public static final int COMPAT_MODE_ENABLED = 1;
    public static final int COMPAT_MODE_NEVER = -2;
    public static final int COMPAT_MODE_TOGGLE = 2;
    public static final int COMPAT_MODE_UNKNOWN = -3;
    public static final int INTENT_SENDER_ACTIVITY = 2;
    public static final int INTENT_SENDER_ACTIVITY_RESULT = 3;
    public static final int INTENT_SENDER_BROADCAST = 1;
    public static final int INTENT_SENDER_SERVICE = 4;
    public static final String META_HOME_ALTERNATE = "android.app.home.alternate";
    public static final int MOVE_TASK_NO_USER_ACTION = 2;
    public static final int MOVE_TASK_WITH_HOME = 1;
    public static final int PROCESS_STATE_BACKUP = 5;
    public static final int PROCESS_STATE_CACHED_ACTIVITY = 11;
    public static final int PROCESS_STATE_CACHED_ACTIVITY_CLIENT = 12;
    public static final int PROCESS_STATE_CACHED_EMPTY = 13;
    public static final int PROCESS_STATE_HEAVY_WEIGHT = 6;
    public static final int PROCESS_STATE_HOME = 9;
    public static final int PROCESS_STATE_IMPORTANT_BACKGROUND = 4;
    public static final int PROCESS_STATE_IMPORTANT_FOREGROUND = 3;
    public static final int PROCESS_STATE_LAST_ACTIVITY = 10;
    public static final int PROCESS_STATE_PERSISTENT = 0;
    public static final int PROCESS_STATE_PERSISTENT_UI = 1;
    public static final int PROCESS_STATE_RECEIVER = 8;
    public static final int PROCESS_STATE_SERVICE = 7;
    public static final int PROCESS_STATE_TOP = 2;
    public static final int RECENT_IGNORE_UNAVAILABLE = 2;
    public static final int RECENT_WITH_EXCLUDED = 1;
    public static final int REMOVE_TASK_KILL_PROCESS = 1;
    public static final int START_CANCELED = -6;
    public static final int START_CLASS_NOT_FOUND = -2;
    public static final int START_DELIVERED_TO_TOP = 3;
    public static final int START_FLAG_AUTO_STOP_PROFILER = 8;
    public static final int START_FLAG_DEBUG = 2;
    public static final int START_FLAG_ONLY_IF_NEEDED = 1;
    public static final int START_FLAG_OPENGL_TRACES = 4;
    public static final int START_FORWARD_AND_REQUEST_CONFLICT = -3;
    public static final int START_INTENT_NOT_RESOLVED = -1;
    public static final int START_NOT_ACTIVITY = -5;
    public static final int START_PERMISSION_DENIED = -4;
    public static final int START_RETURN_INTENT_TO_CALLER = 1;
    public static final int START_SUCCESS = 0;
    public static final int START_SWITCHES_CANCELED = 4;
    public static final int START_TASK_TO_FRONT = 2;
    private static String TAG = "ActivityManager";
    public static final int USER_OP_IS_CURRENT = -2;
    public static final int USER_OP_SUCCESS = 0;
    public static final int USER_OP_UNKNOWN_USER = -1;
    private static boolean localLOGV = false;
    private final Context mContext;
    private final Handler mHandler;

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
        public Intent baseIntent;
        public CharSequence description;
        public int id;
        public ComponentName origActivity;
        public int persistentId;
        public int stackId;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.id = parcel.readInt();
            this.persistentId = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.baseIntent = Intent.CREATOR.createFromParcel(parcel);
            } else {
                this.baseIntent = null;
            }
            this.origActivity = ComponentName.readFromParcel(parcel);
            this.description = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.stackId = parcel.readInt();
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
            TextUtils.writeToParcel(this.description, parcel, 1);
            parcel.writeInt(this.stackId);
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
        public static final int IMPORTANCE_CANT_SAVE_STATE = 170;
        public static final int IMPORTANCE_EMPTY = 500;
        public static final int IMPORTANCE_FOREGROUND = 100;
        public static final int IMPORTANCE_PERCEPTIBLE = 130;
        public static final int IMPORTANCE_PERSISTENT = 50;
        public static final int IMPORTANCE_SERVICE = 300;
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
        public int uid;

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
        }

        public RunningAppProcessInfo() {
            this.importance = 100;
            this.importanceReasonCode = 0;
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
        public Bitmap thumbnail;
        public ComponentName topActivity;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.id = parcel.readInt();
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
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.id);
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
        }

        public RunningTaskInfo() {
        }

        private RunningTaskInfo(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public static class StackBoxInfo implements Parcelable {
        public static final Parcelable.Creator<StackBoxInfo> CREATOR = new Parcelable.Creator<StackBoxInfo>() { // from class: android.app.ActivityManager.StackBoxInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StackBoxInfo createFromParcel(Parcel parcel) {
                return new StackBoxInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StackBoxInfo[] newArray(int i2) {
                return new StackBoxInfo[i2];
            }
        };
        public Rect bounds;
        public StackBoxInfo[] children;
        public StackInfo stack;
        public int stackBoxId;
        public int stackId;
        public boolean vertical;
        public float weight;

        public StackBoxInfo() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.stackBoxId = parcel.readInt();
            this.weight = parcel.readFloat();
            this.vertical = parcel.readInt() == 1;
            this.bounds = Rect.CREATOR.createFromParcel(parcel);
            int i2 = parcel.readInt();
            this.stackId = i2;
            if (i2 != -1) {
                this.stack = StackInfo.CREATOR.createFromParcel(parcel);
                return;
            }
            StackBoxInfo[] stackBoxInfoArr = new StackBoxInfo[2];
            this.children = stackBoxInfoArr;
            Parcelable.Creator<StackBoxInfo> creator = CREATOR;
            stackBoxInfoArr[0] = creator.createFromParcel(parcel);
            this.children[1] = creator.createFromParcel(parcel);
        }

        public String toString(String str) {
            StringBuilder sb = new StringBuilder(256);
            sb.append(str);
            sb.append("Box id=" + this.stackBoxId);
            sb.append(" weight=" + this.weight);
            sb.append(" vertical=" + this.vertical);
            sb.append(" bounds=" + this.bounds.toShortString());
            sb.append("\n");
            if (this.children != null) {
                sb.append(str);
                sb.append("First child=\n");
                sb.append(this.children[0].toString(str + "  "));
                sb.append(str);
                sb.append("Second child=\n");
                sb.append(this.children[1].toString(str + "  "));
            } else {
                sb.append(str);
                sb.append("Stack=\n");
                sb.append(this.stack.toString(str + "  "));
            }
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.stackBoxId);
            parcel.writeFloat(this.weight);
            parcel.writeInt(this.vertical ? 1 : 0);
            this.bounds.writeToParcel(parcel, i2);
            parcel.writeInt(this.stackId);
            StackBoxInfo[] stackBoxInfoArr = this.children;
            if (stackBoxInfoArr == null) {
                this.stack.writeToParcel(parcel, i2);
            } else {
                stackBoxInfoArr[0].writeToParcel(parcel, i2);
                this.children[1].writeToParcel(parcel, i2);
            }
        }

        public StackBoxInfo(Parcel parcel) {
            readFromParcel(parcel);
        }

        public String toString() {
            return toString(ProxyProperties.LOCAL_EXCL_LIST);
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
        public int stackId;
        public int[] taskIds;
        public String[] taskNames;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.stackId = parcel.readInt();
            this.bounds = new Rect(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
            this.taskIds = parcel.createIntArray();
            this.taskNames = parcel.createStringArray();
        }

        public String toString(String str) {
            StringBuilder sb = new StringBuilder(256);
            sb.append(str);
            sb.append("Stack id=");
            sb.append(this.stackId);
            sb.append(" bounds=");
            sb.append(this.bounds.toShortString());
            sb.append("\n");
            String str2 = str + "  ";
            for (int i2 = 0; i2 < this.taskIds.length; i2++) {
                sb.append(str2);
                sb.append("taskId=");
                sb.append(this.taskIds[i2]);
                sb.append(": ");
                sb.append(this.taskNames[i2]);
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
        }

        public StackInfo() {
        }

        private StackInfo(Parcel parcel) {
            readFromParcel(parcel);
        }

        public String toString() {
            return toString(ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public static class TaskThumbnails implements Parcelable {
        public static final Parcelable.Creator<TaskThumbnails> CREATOR = new Parcelable.Creator<TaskThumbnails>() { // from class: android.app.ActivityManager.TaskThumbnails.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskThumbnails createFromParcel(Parcel parcel) {
                return new TaskThumbnails(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskThumbnails[] newArray(int i2) {
                return new TaskThumbnails[i2];
            }
        };
        public Bitmap mainThumbnail;
        public int numSubThumbbails;
        public IThumbnailRetriever retriever;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Bitmap getSubThumbnail(int i2) {
            try {
                return this.retriever.getThumbnail(i2);
            } catch (RemoteException unused) {
                return null;
            }
        }

        public void readFromParcel(Parcel parcel) {
            if (parcel.readInt() != 0) {
                this.mainThumbnail = Bitmap.CREATOR.createFromParcel(parcel);
            } else {
                this.mainThumbnail = null;
            }
            this.numSubThumbbails = parcel.readInt();
            this.retriever = IThumbnailRetriever.Stub.asInterface(parcel.readStrongBinder());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            if (this.mainThumbnail != null) {
                parcel.writeInt(1);
                this.mainThumbnail.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.numSubThumbbails);
            parcel.writeStrongInterface(this.retriever);
        }

        public TaskThumbnails() {
        }

        private TaskThumbnails(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    public ActivityManager(Context context, Handler handler) {
        this.mContext = context;
        this.mHandler = handler;
    }

    public static int checkComponentPermission(String str, int i2, int i3, boolean z2) {
        if (i2 == 0 || i2 == 1000) {
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
            return AppGlobals.getPackageManager().checkUidPermission(str, i2);
        } catch (RemoteException e2) {
            Slog.e(TAG, "PackageManager is dead?!?", e2);
            return -1;
        }
    }

    public static int checkUidPermission(String str, int i2) {
        try {
            return AppGlobals.getPackageManager().checkUidPermission(str, i2);
        } catch (RemoteException e2) {
            Slog.e(TAG, "PackageManager is dead?!?", e2);
            return -1;
        }
    }

    public static void dumpPackageStateStatic(FileDescriptor fileDescriptor, String str) {
        e eVar = new e(new FileOutputStream(fileDescriptor));
        dumpService(eVar, fileDescriptor, Context.ACTIVITY_SERVICE, new String[]{"-a", "package", str});
        eVar.println();
        dumpService(eVar, fileDescriptor, "meminfo", new String[]{"--local", str});
        eVar.println();
        dumpService(eVar, fileDescriptor, "procstats", new String[]{"-a", str});
        eVar.println();
        dumpService(eVar, fileDescriptor, "usagestats", new String[]{"--packages", str});
        eVar.println();
        dumpService(eVar, fileDescriptor, "package", new String[]{str});
        eVar.println();
        dumpService(eVar, fileDescriptor, BatteryStats.SERVICE_NAME, new String[]{str});
        eVar.flush();
    }

    private static void dumpService(PrintWriter printWriter, FileDescriptor fileDescriptor, String str, String[] strArr) {
        printWriter.print("DUMP OF SERVICE ");
        printWriter.print(str);
        printWriter.println(":");
        IBinder iBinderCheckService = ServiceManager.checkService(str);
        if (iBinderCheckService == null) {
            printWriter.println("  (Service not found)");
            return;
        }
        g gVar = null;
        try {
            printWriter.flush();
            g gVar2 = new g();
            try {
                gVar2.g("  ");
                iBinderCheckService.dumpAsync(gVar2.c().getFileDescriptor(), strArr);
                gVar2.d(fileDescriptor);
            } catch (Throwable th) {
                th = th;
                gVar = gVar2;
                if (gVar != null) {
                    gVar.f();
                }
                printWriter.println("Failure dumping service:");
                th.printStackTrace(printWriter);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int getCurrentUser() {
        try {
            UserInfo currentUser = ActivityManagerNative.getDefault().getCurrentUser();
            if (currentUser != null) {
                return currentUser.id;
            }
            return 0;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public static void getMyMemoryState(RunningAppProcessInfo runningAppProcessInfo) {
        try {
            ActivityManagerNative.getDefault().getMyMemoryState(runningAppProcessInfo);
        } catch (RemoteException unused) {
        }
    }

    public static int handleIncomingUser(int i2, int i3, int i4, boolean z2, boolean z3, String str, String str2) {
        if (UserHandle.getUserId(i3) == i4) {
            return i4;
        }
        try {
            return ActivityManagerNative.getDefault().handleIncomingUser(i2, i3, i4, z2, z3, str, str2);
        } catch (RemoteException e2) {
            throw new SecurityException("Failed calling activity manager", e2);
        }
    }

    public static boolean isHighEndGfx() {
        return (isLowRamDeviceStatic() || Resources.getSystem().getBoolean(17891349)) ? false : true;
    }

    public static boolean isLowRamDeviceStatic() {
        return "true".equals(SystemProperties.get("ro.config.low_ram", "false"));
    }

    public static boolean isRunningInTestHarness() {
        return SystemProperties.getBoolean("ro.test_harness", false);
    }

    public static boolean isUserAMonkey() {
        try {
            return ActivityManagerNative.getDefault().isUserAMonkey();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public static int staticGetLargeMemoryClass() {
        String str = SystemProperties.get("dalvik.vm.heapsize", "16m");
        return Integer.parseInt(str.substring(0, str.length() - 1));
    }

    public static int staticGetMemoryClass() {
        String str = SystemProperties.get("dalvik.vm.heapgrowthlimit", ProxyProperties.LOCAL_EXCL_LIST);
        return (str == null || ProxyProperties.LOCAL_EXCL_LIST.equals(str)) ? staticGetLargeMemoryClass() : Integer.parseInt(str.substring(0, str.length() - 1));
    }

    public boolean clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver) {
        try {
            return ActivityManagerNative.getDefault().clearApplicationUserData(str, iPackageDataObserver, UserHandle.myUserId());
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void dumpPackageState(FileDescriptor fileDescriptor, String str) {
        dumpPackageStateStatic(fileDescriptor, str);
    }

    public void forceStopPackage(String str) {
        try {
            ActivityManagerNative.getDefault().forceStopPackage(str, UserHandle.myUserId());
        } catch (RemoteException unused) {
        }
    }

    public Map<String, Integer> getAllPackageLaunchCounts() {
        try {
            j.e eVarJ2 = j.e.a.J2(ServiceManager.getService("usagestats"));
            if (eVarJ2 == null) {
                return new HashMap();
            }
            PkgUsageStats[] pkgUsageStatsArrF2 = eVarJ2.f2();
            if (pkgUsageStatsArrF2 == null) {
                return new HashMap();
            }
            HashMap map = new HashMap();
            for (PkgUsageStats pkgUsageStats : pkgUsageStatsArrF2) {
                map.put(pkgUsageStats.f1188a, Integer.valueOf(pkgUsageStats.f1189b));
            }
            return map;
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not query launch counts", e2);
            return new HashMap();
        }
    }

    public PkgUsageStats[] getAllPackageUsageStats() {
        try {
            j.e eVarJ2 = j.e.a.J2(ServiceManager.getService("usagestats"));
            if (eVarJ2 != null) {
                return eVarJ2.f2();
            }
        } catch (RemoteException e2) {
            Log.w(TAG, "Could not query usage stats", e2);
        }
        return new PkgUsageStats[0];
    }

    public ConfigurationInfo getDeviceConfigurationInfo() {
        try {
            return ActivityManagerNative.getDefault().getDeviceConfigurationInfo();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getFrontActivityScreenCompatMode() {
        try {
            return ActivityManagerNative.getDefault().getFrontActivityScreenCompatMode();
        } catch (RemoteException unused) {
            return 0;
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
        if (i2 != 320) {
            return i2 != 480 ? (int) ((i2 * 1.5f) + 0.5f) : DisplayMetrics.DENSITY_XXXHIGH;
        }
        return 480;
    }

    public int getLauncherLargeIconSize() {
        Resources resources = this.mContext.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.app_icon_size);
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

    public int getMemoryClass() {
        return staticGetMemoryClass();
    }

    public void getMemoryInfo(MemoryInfo memoryInfo) {
        try {
            ActivityManagerNative.getDefault().getMemoryInfo(memoryInfo);
        } catch (RemoteException unused) {
        }
    }

    public boolean getPackageAskScreenCompat(String str) {
        try {
            return ActivityManagerNative.getDefault().getPackageAskScreenCompat(str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int getPackageScreenCompatMode(String str) {
        try {
            return ActivityManagerNative.getDefault().getPackageScreenCompatMode(str);
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public Debug.MemoryInfo[] getProcessMemoryInfo(int[] iArr) {
        try {
            return ActivityManagerNative.getDefault().getProcessMemoryInfo(iArr);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<ProcessErrorStateInfo> getProcessesInErrorState() {
        try {
            return ActivityManagerNative.getDefault().getProcessesInErrorState();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<RecentTaskInfo> getRecentTasks(int i2, int i3) {
        try {
            return ActivityManagerNative.getDefault().getRecentTasks(i2, i3, UserHandle.myUserId());
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<RecentTaskInfo> getRecentTasksForUser(int i2, int i3, int i4) {
        try {
            return ActivityManagerNative.getDefault().getRecentTasks(i2, i3, i4);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<RunningAppProcessInfo> getRunningAppProcesses() {
        try {
            return ActivityManagerNative.getDefault().getRunningAppProcesses();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<ApplicationInfo> getRunningExternalApplications() {
        try {
            return ActivityManagerNative.getDefault().getRunningExternalApplications();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public PendingIntent getRunningServiceControlPanel(ComponentName componentName) {
        try {
            return ActivityManagerNative.getDefault().getRunningServiceControlPanel(componentName);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<RunningServiceInfo> getRunningServices(int i2) {
        try {
            return ActivityManagerNative.getDefault().getServices(i2, 0);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public List<RunningTaskInfo> getRunningTasks(int i2, int i3, IThumbnailReceiver iThumbnailReceiver) {
        try {
            return ActivityManagerNative.getDefault().getTasks(i2, i3, iThumbnailReceiver);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public TaskThumbnails getTaskThumbnails(int i2) {
        try {
            return ActivityManagerNative.getDefault().getTaskThumbnails(i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public Bitmap getTaskTopThumbnail(int i2) {
        try {
            return ActivityManagerNative.getDefault().getTaskTopThumbnail(i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean isLowRamDevice() {
        return isLowRamDeviceStatic();
    }

    public boolean isUserRunning(int i2) {
        try {
            return ActivityManagerNative.getDefault().isUserRunning(i2, false);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void killBackgroundProcesses(String str) {
        try {
            ActivityManagerNative.getDefault().killBackgroundProcesses(str, UserHandle.myUserId());
        } catch (RemoteException unused) {
        }
    }

    public void moveTaskToFront(int i2, int i3) {
        moveTaskToFront(i2, i3, null);
    }

    public boolean removeSubTask(int i2, int i3) {
        try {
            return ActivityManagerNative.getDefault().removeSubTask(i2, i3);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean removeTask(int i2, int i3) {
        try {
            return ActivityManagerNative.getDefault().removeTask(i2, i3);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public void restartPackage(String str) {
        killBackgroundProcesses(str);
    }

    public void setFrontActivityScreenCompatMode(int i2) {
        try {
            ActivityManagerNative.getDefault().setFrontActivityScreenCompatMode(i2);
        } catch (RemoteException unused) {
        }
    }

    public void setPackageAskScreenCompat(String str, boolean z2) {
        try {
            ActivityManagerNative.getDefault().setPackageAskScreenCompat(str, z2);
        } catch (RemoteException unused) {
        }
    }

    public void setPackageScreenCompatMode(String str, int i2) {
        try {
            ActivityManagerNative.getDefault().setPackageScreenCompatMode(str, i2);
        } catch (RemoteException unused) {
        }
    }

    public boolean switchUser(int i2) {
        try {
            return ActivityManagerNative.getDefault().switchUser(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean clearApplicationUserData() {
        return clearApplicationUserData(this.mContext.getPackageName(), null);
    }

    public List<RunningTaskInfo> getRunningTasks(int i2) {
        return getRunningTasks(i2, 0, null);
    }

    public void moveTaskToFront(int i2, int i3, Bundle bundle) {
        try {
            ActivityManagerNative.getDefault().moveTaskToFront(i2, i3, bundle);
        } catch (RemoteException unused) {
        }
    }
}
