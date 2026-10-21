package android.app;

import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public interface IPerformanceManager extends IInterface {
    public static final int ENALBE_BOOSTKILL = 2;
    public static final int PROCESS_RECLAIM_ENABLED = 3;
    public static final int READ_PROC_FILE = 4;
    public static final int RECLAIM_PROCESS = 1;
    public static final int WRITE_PROC_FILE = 5;
    public static final String descriptor = "com.android.server.performance";

    void enableBoostKill(int i2);

    String readProcFile(String str);

    String reclaimProcess(int i2, String str);

    boolean reclaimProcessEnabled();

    void writeProcFile(String str, String str2);
}
