package android.app;

/* JADX INFO: loaded from: classes.dex */
public class AlarmManagerWrapper {
    public static final int POWER_OFF_ALARM = 6;
    public static final int POWER_OFF_WAKEUP = 4;
    public static final int POWER_ON_WAKEUP = 5;

    public static void cancelAlarm(AlarmManager alarmManager, PendingIntent pendingIntent, IAlarmListener iAlarmListener) {
        alarmManager.removeExtraAlarm(pendingIntent, iAlarmListener);
    }
}
