package android.app;

import android.os.Process;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class ProcessProtection {
    public static final int PROCESS_PROTECT_CRITICAL = 11;
    public static final int PROCESS_PROTECT_IMPORTANCE = 12;
    public static final int PROCESS_PROTECT_NORMAL = 13;
    public static final int PROCESS_STATUS_IDLE = 0;
    public static final int PROCESS_STATUS_MAINTAIN = 2;
    public static final int PROCESS_STATUS_PERSISTENT = 3;
    public static final int PROCESS_STATUS_RUNNING = 1;

    public void setSelfProtectStatus(int i2) {
        try {
            ActivityManager.getService().setProcessProtectStatusByPid(Process.myPid(), i2);
        } catch (RemoteException unused) {
        }
    }
}
