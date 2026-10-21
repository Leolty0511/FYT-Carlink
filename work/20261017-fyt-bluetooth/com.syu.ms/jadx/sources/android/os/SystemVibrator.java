package android.os;

import android.app.ActivityThread;
import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class SystemVibrator extends Vibrator {
    private static final String TAG = "Vibrator";
    private final String mPackageName;
    private final IVibratorService mService;
    private final Binder mToken;

    public SystemVibrator() {
        this.mToken = new Binder();
        this.mPackageName = ActivityThread.currentPackageName();
        this.mService = IVibratorService.Stub.asInterface(ServiceManager.getService(Context.VIBRATOR_SERVICE));
    }

    @Override // android.os.Vibrator
    public void cancel() {
        IVibratorService iVibratorService = this.mService;
        if (iVibratorService == null) {
            return;
        }
        try {
            iVibratorService.cancelVibrate(this.mToken);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to cancel vibration.", e2);
        }
    }

    @Override // android.os.Vibrator
    public boolean hasVibrator() {
        IVibratorService iVibratorService = this.mService;
        if (iVibratorService == null) {
            Log.w(TAG, "Failed to vibrate; no vibrator service.");
            return false;
        }
        try {
            return iVibratorService.hasVibrator();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.os.Vibrator
    public void vibrate(long j2) {
        vibrate(Process.myUid(), this.mPackageName, j2);
    }

    @Override // android.os.Vibrator
    public void vibrate(long[] jArr, int i2) {
        vibrate(Process.myUid(), this.mPackageName, jArr, i2);
    }

    @Override // android.os.Vibrator
    public void vibrate(int i2, String str, long j2) {
        IVibratorService iVibratorService = this.mService;
        if (iVibratorService == null) {
            Log.w(TAG, "Failed to vibrate; no vibrator service.");
            return;
        }
        try {
            iVibratorService.vibrate(i2, str, j2, this.mToken);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed to vibrate.", e2);
        }
    }

    public SystemVibrator(Context context) {
        this.mToken = new Binder();
        this.mPackageName = context.getOpPackageName();
        this.mService = IVibratorService.Stub.asInterface(ServiceManager.getService(Context.VIBRATOR_SERVICE));
    }

    @Override // android.os.Vibrator
    public void vibrate(int i2, String str, long[] jArr, int i3) {
        IVibratorService iVibratorService = this.mService;
        if (iVibratorService == null) {
            Log.w(TAG, "Failed to vibrate; no vibrator service.");
        } else {
            if (i3 < jArr.length) {
                try {
                    iVibratorService.vibratePattern(i2, str, jArr, i3, this.mToken);
                    return;
                } catch (RemoteException e2) {
                    Log.w(TAG, "Failed to vibrate.", e2);
                    return;
                }
            }
            throw new ArrayIndexOutOfBoundsException();
        }
    }
}
