package android.app;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class LowmemoryUtils {
    public static final int CANCEL_KILL_STOP_TIMEOUT = 2;
    public static final int KILL_CONT_STOPPED_APP = 0;
    public static final int KILL_STOP_FRONT_APP = 1;

    public static void killStopFrontApp(int i2) {
        try {
            ActivityManager.getService().killStopFrontApp(i2);
        } catch (RemoteException unused) {
        }
    }
}
