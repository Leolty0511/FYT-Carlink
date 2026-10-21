package android.app;

import android.content.Context;
import android.os.RemoteException;
import android.os.WorkSource;
import android.util.Slog;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PowerGuru extends AbsPowerGuru {
    private static final String TAG = "PowerGuru";
    private final IPowerGuru mService;

    public PowerGuru(IPowerGuru iPowerGuru, Context context) {
        super(iPowerGuru, context);
        this.mService = iPowerGuru;
    }

    private void logd(String str) {
        Slog.d(TAG, str);
    }

    private void loge(String str) {
        Slog.e(TAG, str);
    }

    @Override // android.app.AbsPowerGuru
    public boolean addWhiteAppfromList(String str) {
        try {
            return this.mService.addWhiteAppfromList(str);
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
            return false;
        }
    }

    @Override // android.app.AbsPowerGuru
    public boolean delWhiteAppfromList(String str) {
        try {
            return this.mService.delWhiteAppfromList(str);
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
            return false;
        }
    }

    @Override // android.app.AbsPowerGuru
    public List<PowerGuruAlarmInfo> getBeatList() {
        try {
            return this.mService.getBeatList();
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
            return null;
        }
    }

    @Override // android.app.AbsPowerGuru
    public List<String> getWhiteCandicateList() {
        try {
            return this.mService.getWhiteCandicateList();
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
            return null;
        }
    }

    @Override // android.app.AbsPowerGuru
    public List<String> getWhiteList() {
        try {
            return this.mService.getWhiteList();
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
            return null;
        }
    }

    @Override // android.app.AbsPowerGuru
    public void noteWakeupAlarm(String str, int i2) {
        try {
            this.mService.noteWakeupAlarm(str, i2);
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
        }
    }

    @Override // android.app.AbsPowerGuru
    public boolean notifyAlarm(int i2, long j2, long j3, long j4, long j5, long j6, PendingIntent pendingIntent, int i3, WorkSource workSource, AlarmManager.AlarmClockInfo alarmClockInfo, int i4, String str) {
        try {
            return this.mService.notifyAlarm(i2, j2, j3, j4, j5, j6, pendingIntent, i3, workSource, alarmClockInfo, i4, str);
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
            return false;
        }
    }

    @Override // android.app.AbsPowerGuru
    public boolean notifyPowerguruAlarm(int i2, long j2, long j3, long j4, long j5, long j6, PendingIntent pendingIntent) {
        try {
            return this.mService.notifyPowerguruAlarm(i2, j2, j3, j4, j5, j6, pendingIntent);
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
            return false;
        }
    }

    @Override // android.app.AbsPowerGuru
    public void testHello() {
        try {
            this.mService.testHello();
        } catch (RemoteException e2) {
            loge("remote err:" + e2);
        }
    }
}
