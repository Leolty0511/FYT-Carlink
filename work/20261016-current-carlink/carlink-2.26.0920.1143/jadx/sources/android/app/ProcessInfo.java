package android.app;

/* JADX INFO: loaded from: classes.dex */
public class ProcessInfo {
    public static final int ACTIVITY_STATE_FINISH = 4;
    public static final int ACTIVITY_STATE_LAUNCHDONE = 5;
    public static final int ACTIVITY_STATE_PAUSE = 2;
    public static final int ACTIVITY_STATE_PROC_START = 6;
    public static final int ACTIVITY_STATE_RESUME = 3;
    public static final int ACTIVITY_STATE_START = 0;
    public static final int ACTIVITY_STATE_STOP = 1;
    public static final int BACKUP_APP_ADJ = 300;
    public static final int CACHED_APP_MAX_ADJ = 906;
    public static final int CACHED_APP_MIN_ADJ = 900;
    public static final int FOREGROUND_APP_ADJ = 0;
    public static final int HEAVY_WEIGHT_APP_ADJ = 400;
    public static final int HOME_APP_ADJ = 600;
    public static final String KEY_ACTIVITY_STATE = "activity_state";
    public static final String KEY_CLSNAME = "clsname";
    public static final String KEY_FULLSCREEN = "fullscreen";
    public static final String KEY_LAUNCH_TIME = "launchTime";
    public static final String KEY_PKGNAME = "pkgname";
    public static final String KEY_START_PROC_HOST_TYPE = "hostingtype";
    public static final int PERCEPTIBLE_APP_ADJ = 200;
    public static final int PERSISTENT_PROC_ADJ = -800;
    public static final int PERSISTENT_SERVICE_ADJ = -700;
    public static final int PREVIOUS_APP_ADJ = 700;
    public static final int PROCESS_LMK_ADJ_TUNNING_DECREASE = 1;
    public static final int PROCESS_LMK_ADJ_TUNNING_INCREASE = 0;
    public static final int PROCESS_LMK_ADJ_TUNNING_NONEED = 2;
    public static final int SCHED_GROUP_BACKGROUND = 0;
    public static final int SCHED_GROUP_DEFAULT = 1;
    public static final int SCHED_GROUP_TOP_APP = 2;
    public static final int SCHED_GROUP_TOP_APP_BOUND = 3;
    public static final int SERVICE_ADJ = 500;
    public static final int SERVICE_B_ADJ = 800;
    public static final int SYSTEM_ADJ = -900;
    public static final int VISIBLE_APP_ADJ = 100;
    public static final int VISIBLE_APP_LAYER_MAX = 99;
    public boolean adjTunned;
    public int curAdj;
    public String curAdjType;
    public int curProcState;
    public int curSchedGroup;
    public int flags;
    public long lastPss;
    public String packageName;
    public int pid;
    public String processName;
    public int tunnedAdj;
    public String tunnedAdjType;
    public int tunnedProcState;
    public int tunnedSchedGroup;
    public int uid;

    public void resetTunningParams() {
        this.adjTunned = false;
        this.tunnedAdj = this.curAdj;
        this.tunnedAdjType = this.curAdjType;
        this.tunnedProcState = this.curProcState;
        this.tunnedSchedGroup = this.curSchedGroup;
    }

    public String toString() {
        return "Process:" + this.processName + " pkg:" + this.packageName + " pid:" + this.pid + "adj" + this.curAdj;
    }
}
