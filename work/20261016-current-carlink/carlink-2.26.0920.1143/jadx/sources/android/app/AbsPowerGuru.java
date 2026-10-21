package android.app;

import android.content.Context;
import android.os.SystemProperties;
import android.os.WorkSource;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsPowerGuru {
    public static final String ACTION_POWERGURU_DATA_CHANGED = "sprd.intent.action.powerguru.PKG_CHANGED";
    public static final String HEARTBEAT_ENABLE = "persist.sys.heartbeat.enable";

    public AbsPowerGuru(IPowerGuru iPowerGuru, Context context) {
    }

    public static boolean isEnabled() {
        return 1 == SystemProperties.getInt(HEARTBEAT_ENABLE, 1);
    }

    public boolean addWhiteAppfromList(String str) {
        return false;
    }

    public boolean delWhiteAppfromList(String str) {
        return false;
    }

    public List<PowerGuruAlarmInfo> getBeatList() {
        return null;
    }

    public List<String> getWhiteCandicateList() {
        return null;
    }

    public List<String> getWhiteList() {
        return null;
    }

    public void noteWakeupAlarm(String str, int i2) {
    }

    public boolean notifyAlarm(int i2, long j2, long j3, long j4, long j5, long j6, PendingIntent pendingIntent, int i3, WorkSource workSource, AlarmManager.AlarmClockInfo alarmClockInfo, int i4, String str) {
        return false;
    }

    public boolean notifyPowerguruAlarm(int i2, long j2, long j3, long j4, long j5, long j6, PendingIntent pendingIntent) {
        return false;
    }

    public void testHello() {
    }
}
