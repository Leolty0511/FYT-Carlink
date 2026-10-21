package android.media.midi;

/* JADX INFO: loaded from: classes.dex */
class MidiPortImpl {
    private static final int DATA_PACKET_OVERHEAD = 9;
    public static final int MAX_PACKET_DATA_SIZE = 1015;
    public static final int MAX_PACKET_SIZE = 1024;
    public static final int PACKET_TYPE_DATA = 1;
    public static final int PACKET_TYPE_FLUSH = 2;
    private static final String TAG = "MidiPort";
    private static final int TIMESTAMP_SIZE = 8;

    public static int getDataOffset(byte[] bArr, int i2) {
        return 1;
    }

    public static int getDataSize(byte[] bArr, int i2) {
        return i2 - 9;
    }

    public static long getPacketTimestamp(byte[] bArr, int i2) {
        long j2 = 0;
        for (int i3 = 0; i3 < 8; i3++) {
            i2--;
            j2 = (j2 << 8) | ((long) (bArr[i2] & 255));
        }
        return j2;
    }

    public static int getPacketType(byte[] bArr, int i2) {
        return bArr[0];
    }

    public static int packData(byte[] bArr, int i2, int i3, long j2, byte[] bArr2) {
        if (i3 > 1015) {
            i3 = 1015;
        }
        int i4 = 0;
        bArr2[0] = 1;
        System.arraycopy(bArr, i2, bArr2, 1, i3);
        int i5 = 1 + i3;
        while (i4 < 8) {
            bArr2[i5] = (byte) j2;
            j2 >>= 8;
            i4++;
            i5++;
        }
        return i5;
    }

    public static int packFlush(byte[] bArr) {
        bArr[0] = 2;
        return 1;
    }
}
