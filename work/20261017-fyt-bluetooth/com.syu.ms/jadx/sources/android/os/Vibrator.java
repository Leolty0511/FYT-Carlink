package android.os;

/* JADX INFO: loaded from: classes.dex */
public abstract class Vibrator {
    public abstract void cancel();

    public abstract boolean hasVibrator();

    public abstract void vibrate(int i2, String str, long j2);

    public abstract void vibrate(int i2, String str, long[] jArr, int i3);

    public abstract void vibrate(long j2);

    public abstract void vibrate(long[] jArr, int i2);
}
