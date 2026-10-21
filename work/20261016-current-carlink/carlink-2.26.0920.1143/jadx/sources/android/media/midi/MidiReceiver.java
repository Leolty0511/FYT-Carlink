package android.media.midi;

/* JADX INFO: loaded from: classes.dex */
public abstract class MidiReceiver {
    private final int mMaxMessageSize;

    public MidiReceiver() {
        this.mMaxMessageSize = Integer.MAX_VALUE;
    }

    public void flush() {
        onFlush();
    }

    public final int getMaxMessageSize() {
        return this.mMaxMessageSize;
    }

    public void onFlush() {
    }

    public abstract void onSend(byte[] bArr, int i2, int i3, long j2);

    public void send(byte[] bArr, int i2, int i3) {
        send(bArr, i2, i3, 0L);
    }

    public void send(byte[] bArr, int i2, int i3, long j2) {
        int maxMessageSize = getMaxMessageSize();
        while (i3 > 0) {
            int i4 = i3 > maxMessageSize ? maxMessageSize : i3;
            onSend(bArr, i2, i4, j2);
            i2 += i4;
            i3 -= i4;
        }
    }

    public MidiReceiver(int i2) {
        this.mMaxMessageSize = i2;
    }
}
