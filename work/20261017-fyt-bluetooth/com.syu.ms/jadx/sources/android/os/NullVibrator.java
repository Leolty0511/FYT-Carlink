package android.os;

/* JADX INFO: loaded from: classes.dex */
public class NullVibrator extends Vibrator {
    private static final NullVibrator sInstance = new NullVibrator();

    private NullVibrator() {
    }

    public static NullVibrator getInstance() {
        return sInstance;
    }

    @Override // android.os.Vibrator
    public void cancel() {
    }

    @Override // android.os.Vibrator
    public boolean hasVibrator() {
        return false;
    }

    @Override // android.os.Vibrator
    public void vibrate(long j2) {
    }

    @Override // android.os.Vibrator
    public void vibrate(long[] jArr, int i2) {
        if (i2 >= jArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    @Override // android.os.Vibrator
    public void vibrate(int i2, String str, long j2) {
        vibrate(j2);
    }

    @Override // android.os.Vibrator
    public void vibrate(int i2, String str, long[] jArr, int i3) {
        vibrate(jArr, i3);
    }
}
