package android.net;

import android.accessibilityservice.c;
import android.app.m;
import android.os.SystemClock;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class SprdSntpClient {
    private static final boolean DBG = true;
    private static final int NTP_LEAP_NOSYNC = 3;
    private static final int NTP_MODE_BROADCAST = 5;
    private static final int NTP_MODE_CLIENT = 3;
    private static final int NTP_MODE_SERVER = 4;
    private static final int NTP_PACKET_SIZE = 48;
    private static final int NTP_PORT = 123;
    private static final int NTP_STRATUM_DEATH = 0;
    private static final int NTP_STRATUM_MAX = 15;
    private static final int NTP_VERSION = 3;
    private static final long OFFSET_1900_TO_1970 = 2208988800L;
    private static final int ORIGINATE_TIME_OFFSET = 24;
    private static final int RECEIVE_TIME_OFFSET = 32;
    private static final int REFERENCE_TIME_OFFSET = 16;
    private static final String TAG = "SprdSntpClient";
    private static final int TRANSMIT_TIME_OFFSET = 40;
    private long mNtpTime;
    private long mNtpTimeReference;
    private long mRoundTripTime;

    public static class InvalidServerReplyException extends Exception {
        public InvalidServerReplyException(String str) {
            super(str);
        }
    }

    private static void checkValidServerReply(byte b2, byte b3, int i2, long j2) throws InvalidServerReplyException {
        if (b2 == 3) {
            throw new InvalidServerReplyException("unsynchronized server");
        }
        if (b3 != 4 && b3 != 5) {
            throw new InvalidServerReplyException(c.d("untrusted mode: ", b3));
        }
        if (i2 == 0 || i2 > 15) {
            throw new InvalidServerReplyException(c.d("untrusted stratum: ", i2));
        }
        if (j2 == 0) {
            throw new InvalidServerReplyException("zero transmitTime");
        }
    }

    private long read32(byte[] bArr, int i2) {
        int i3 = bArr[i2];
        int i4 = bArr[i2 + 1];
        int i5 = bArr[i2 + 2];
        int i6 = bArr[i2 + 3];
        if ((i3 & 128) == 128) {
            i3 = (i3 & 127) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & 127) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & 127) + 128;
        }
        if ((i6 & 128) == 128) {
            i6 = (i6 & 127) + 128;
        }
        return (((long) i3) << 24) + (((long) i4) << 16) + (((long) i5) << 8) + ((long) i6);
    }

    private long readTimeStamp(byte[] bArr, int i2) {
        long j2 = read32(bArr, i2);
        long j3 = read32(bArr, i2 + 4);
        if (j2 == 0 && j3 == 0) {
            return 0L;
        }
        return ((j3 * 1000) / ProtoOutputStream.FIELD_TYPE_DOUBLE) + ((j2 - OFFSET_1900_TO_1970) * 1000);
    }

    private void writeTimeStamp(byte[] bArr, int i2, long j2) {
        if (j2 == 0) {
            Arrays.fill(bArr, i2, i2 + 8, (byte) 0);
            return;
        }
        long j3 = j2 / 1000;
        long j4 = j2 - (j3 * 1000);
        long j5 = j3 + OFFSET_1900_TO_1970;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j5 >> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j5 >> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j5 >> 8);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j5 >> 0);
        long j6 = (j4 * ProtoOutputStream.FIELD_TYPE_DOUBLE) / 1000;
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j6 >> 24);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (j6 >> 16);
        bArr[i8] = (byte) (j6 >> 8);
        bArr[i8 + 1] = (byte) (Math.random() * 255.0d);
    }

    public long getNtpTime() {
        return this.mNtpTime;
    }

    public long getNtpTimeReference() {
        return this.mNtpTimeReference;
    }

    public long getRoundTripTime() {
        return this.mRoundTripTime;
    }

    public boolean requestTime(String str, int i2) {
        Log.d(TAG, "Start requestTime:" + str);
        try {
            try {
                InetAddress[] allByName = InetAddress.getAllByName(str);
                if (allByName != null && allByName.length != 0) {
                    return requestTime(allByName, 123, i2);
                }
                StringBuilder sb = new StringBuilder("address=");
                sb.append(allByName);
                m.x(sb, ",request time failed", TAG);
                return false;
            } catch (Exception e2) {
                Log.d(TAG, "request (" + str + ")time failed: " + e2);
                Log.d(TAG, "address=null,request time failed");
                return false;
            }
        } catch (Throwable unused) {
            Log.d(TAG, "address=null,request time failed");
            return false;
        }
    }

    public boolean requestTime(InetAddress inetAddress, int i2, int i3) throws Throwable {
        DatagramSocket datagramSocket;
        DatagramSocket datagramSocket2 = null;
        try {
            try {
                DatagramSocket datagramSocket3 = new DatagramSocket();
                try {
                    datagramSocket3.setSoTimeout(i3);
                    byte[] bArr = new byte[48];
                    DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, inetAddress, i2);
                    bArr[0] = 27;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    writeTimeStamp(bArr, 40, jCurrentTimeMillis);
                    datagramSocket3.send(datagramPacket);
                    datagramSocket3.receive(new DatagramPacket(bArr, 48));
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j2 = jElapsedRealtime2 - jElapsedRealtime;
                    long j3 = jCurrentTimeMillis + j2;
                    byte b2 = bArr[0];
                    byte b3 = (byte) ((b2 >> 6) & 3);
                    byte b4 = (byte) (b2 & 7);
                    int i4 = bArr[1] & 255;
                    long timeStamp = readTimeStamp(bArr, 24);
                    long timeStamp2 = readTimeStamp(bArr, 32);
                    datagramSocket = datagramSocket3;
                    try {
                        long timeStamp3 = readTimeStamp(bArr, 40);
                        checkValidServerReply(b3, b4, i4, timeStamp3);
                        long j4 = j2 - (timeStamp3 - timeStamp2);
                        long j5 = ((timeStamp3 - j3) + (timeStamp2 - timeStamp)) / 2;
                        Log.d(TAG, "round trip: " + j4 + "ms, clock offset: " + j5 + "ms");
                        this.mNtpTime = j3 + j5;
                        this.mNtpTimeReference = jElapsedRealtime2;
                        this.mRoundTripTime = j4;
                        datagramSocket.close();
                        return true;
                    } catch (Exception e2) {
                        e = e2;
                        datagramSocket2 = datagramSocket;
                        Log.d(TAG, "request time failed: " + e);
                        if (datagramSocket2 == null) {
                            return false;
                        }
                        datagramSocket2.close();
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        datagramSocket2 = datagramSocket;
                        if (datagramSocket2 != null) {
                            datagramSocket2.close();
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    datagramSocket = datagramSocket3;
                } catch (Throwable th2) {
                    th = th2;
                    datagramSocket = datagramSocket3;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01d1 A[Catch: Exception -> 0x01d5, TRY_LEAVE, TryCatch #7 {Exception -> 0x01d5, blocks: (B:100:0x01cb, B:102:0x01d1), top: B:138:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:107:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ee A[Catch: Exception -> 0x01f1, TRY_LEAVE, TryCatch #10 {Exception -> 0x01f1, blocks: (B:109:0x01ea, B:111:0x01ee), top: B:140:0x01ea }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01f4 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:121:0x0201 A[Catch: Exception -> 0x0205, TRY_LEAVE, TryCatch #18 {Exception -> 0x0205, blocks: (B:119:0x01fb, B:121:0x0201), top: B:153:0x01fb }] */
    /* JADX WARN: Code duplicated, block: B:126:0x0217 A[ADDED_TO_REGION, LOOP:2: B:126:0x0217->B:130:0x0220, LOOP_START, PHI: r5
  0x0217: PHI (r5v3 int) = (r5v2 int), (r5v4 int) binds: [B:125:0x0215, B:130:0x0220] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:129:0x021d A[Catch: Exception -> 0x0220, TRY_LEAVE, TryCatch #13 {Exception -> 0x0220, blocks: (B:127:0x0219, B:129:0x021d), top: B:144:0x0219 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0223  */
    /* JADX WARN: Code duplicated, block: B:138:0x01cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:0x01ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x0219 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x01fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x01f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v16 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v19 */
    /* JADX WARN: Type inference failed for: r16v20 */
    /* JADX WARN: Type inference failed for: r16v21 */
    /* JADX WARN: Type inference failed for: r16v22 */
    /* JADX WARN: Type inference failed for: r16v23 */
    /* JADX WARN: Type inference failed for: r16v24 */
    /* JADX WARN: Type inference failed for: r16v25 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v8, types: [long] */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r5v19, types: [java.nio.channels.DatagramChannel[]] */
    public boolean requestTime(InetAddress[] inetAddressArr, int i2, int i3) throws Throwable {
        ?? r16;
        Throwable th;
        int i4;
        ?? r0;
        ?? r17;
        Throwable th2;
        ?? r18;
        int i5;
        ?? r1;
        boolean z2;
        String str;
        ?? r19;
        String str2 = TAG;
        int length = 8;
        DatagramChannel[] datagramChannelArr = new DatagramChannel[8];
        int i6 = 0;
        Selector selector = null;
        datagramChannelArr[0] = null;
        datagramChannelArr[1] = null;
        datagramChannelArr[2] = null;
        datagramChannelArr[3] = null;
        datagramChannelArr[4] = null;
        datagramChannelArr[5] = null;
        datagramChannelArr[6] = null;
        datagramChannelArr[7] = null;
        SelectionKey[] selectionKeyArr = new SelectionKey[8];
        selectionKeyArr[0] = null;
        selectionKeyArr[1] = null;
        selectionKeyArr[2] = null;
        selectionKeyArr[3] = null;
        selectionKeyArr[4] = null;
        selectionKeyArr[5] = null;
        selectionKeyArr[6] = null;
        selectionKeyArr[7] = null;
        try {
            if (inetAddressArr.length <= 8) {
                length = inetAddressArr.length;
            }
            try {
                byte[] bArr = new byte[48];
                for (int i7 = 0; i7 < length; i7++) {
                    try {
                        DatagramChannel datagramChannelOpen = DatagramChannel.open();
                        datagramChannelArr[i7] = datagramChannelOpen;
                        datagramChannelOpen.configureBlocking(false);
                    } catch (Exception e2) {
                        e = e2;
                        r18 = datagramChannelArr;
                        try {
                            Log.d(str2, "request time failed: " + e);
                            if (selector != null) {
                                try {
                                    if (selector.isOpen()) {
                                        selector.close();
                                    }
                                } catch (Exception e3) {
                                    Log.d(str2, "close select failed: " + e3);
                                }
                            }
                            if (length > 0) {
                                return false;
                            }
                            for (i5 = 0; i5 < length; i5++) {
                                try {
                                    r1 = r18[i5];
                                    if (r1 != 0) {
                                        r1.close();
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            return false;
                        } catch (Throwable th3) {
                            th2 = th3;
                            i4 = 0;
                            r17 = r18;
                            th = th2;
                            r16 = r17;
                            if (selector != null) {
                                try {
                                    if (selector.isOpen()) {
                                        selector.close();
                                    }
                                } catch (Exception e4) {
                                    Log.d(str2, "close select failed: " + e4);
                                }
                            }
                            if (length > 0) {
                                while (i4 < length) {
                                    try {
                                        r0 = r16[i4];
                                        if (r0 != 0) {
                                            r0.close();
                                        }
                                    } catch (Exception unused2) {
                                    }
                                    i4++;
                                }
                                throw th;
                            }
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        r17 = datagramChannelArr;
                        i4 = 0;
                        th = th2;
                        r16 = r17;
                        if (selector != null) {
                            if (selector.isOpen()) {
                                selector.close();
                            }
                        }
                        if (length > 0) {
                            while (i4 < length) {
                                r0 = r16[i4];
                                if (r0 != 0) {
                                    r0.close();
                                }
                                i4++;
                            }
                            throw th;
                        }
                        throw th;
                    }
                }
                bArr[0] = 27;
                long jCurrentTimeMillis = System.currentTimeMillis();
                ?? ElapsedRealtime = SystemClock.elapsedRealtime();
                writeTimeStamp(bArr, 40, jCurrentTimeMillis);
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                Selector selectorOpen = Selector.open();
                int i8 = 0;
                while (i8 < length) {
                    try {
                        try {
                            try {
                                datagramChannelArr[i8].connect(new InetSocketAddress(inetAddressArr[i8], 123));
                                datagramChannelArr[i8].write(byteBufferWrap);
                                i6 = 0;
                                byteBufferWrap.position(0);
                                selectionKeyArr[i8] = datagramChannelArr[i8].register(selectorOpen, 1);
                                i8++;
                                i6 = 0;
                            } catch (Throwable th5) {
                                th = th5;
                                r19 = datagramChannelArr;
                            }
                        } catch (Throwable th6) {
                            th2 = th6;
                            r17 = datagramChannelArr;
                            i4 = i6;
                            selector = selectorOpen;
                            th = th2;
                            r16 = r17;
                            if (selector != null) {
                                if (selector.isOpen()) {
                                    selector.close();
                                }
                            }
                            if (length > 0) {
                                while (i4 < length) {
                                    r0 = r16[i4];
                                    if (r0 != 0) {
                                        r0.close();
                                    }
                                    i4++;
                                }
                                throw th;
                            }
                            throw th;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        ElapsedRealtime = datagramChannelArr;
                        selector = selectorOpen;
                        r18 = ElapsedRealtime;
                        Log.d(str2, "request time failed: " + e);
                        if (selector != null) {
                            if (selector.isOpen()) {
                                selector.close();
                            }
                        }
                        if (length > 0) {
                            return false;
                        }
                        while (i5 < length) {
                            r1 = r18[i5];
                            if (r1 != 0) {
                                r1.close();
                            }
                        }
                        return false;
                    }
                }
                try {
                    if (selectorOpen.select(i3) <= 0) {
                        z2 = false;
                        break;
                    }
                    int i9 = 0;
                    while (true) {
                        if (i9 >= length) {
                            z2 = false;
                            break;
                        }
                        if (selectionKeyArr[i9].readyOps() == 1) {
                            byteBufferWrap.clear();
                            Log.d(TAG, "received Data" + inetAddressArr[i9]);
                            if (datagramChannelArr[i9].read(byteBufferWrap) == 48) {
                                z2 = true;
                                break;
                            }
                        }
                        i9++;
                    }
                    try {
                        if (z2) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            long j2 = jElapsedRealtime - ElapsedRealtime;
                            long j3 = jCurrentTimeMillis + j2;
                            try {
                                byte b2 = bArr[0];
                                byte b3 = (byte) ((b2 >> 6) & 3);
                                byte b4 = (byte) (b2 & 7);
                                ElapsedRealtime = datagramChannelArr;
                                int i10 = bArr[1] & 255;
                                long timeStamp = readTimeStamp(bArr, 24);
                                long timeStamp2 = readTimeStamp(bArr, 32);
                                int i11 = length;
                                try {
                                    long timeStamp3 = readTimeStamp(bArr, 40);
                                    checkValidServerReply(b3, b4, i10, timeStamp3);
                                    this.mNtpTime = j3 + (((timeStamp3 - j3) + (timeStamp2 - timeStamp)) / 2);
                                    this.mNtpTimeReference = jElapsedRealtime;
                                    this.mRoundTripTime = j2 - (timeStamp3 - timeStamp2);
                                    try {
                                        if (selectorOpen.isOpen()) {
                                            selectorOpen.close();
                                        }
                                        str = TAG;
                                    } catch (Exception e6) {
                                        str = TAG;
                                        Log.d(str, "close select failed: " + e6);
                                    }
                                    if (i11 > 0) {
                                        for (int i12 = 0; i12 < i11; i12++) {
                                            try {
                                                ?? r2 = ElapsedRealtime[i12];
                                                if (r2 != 0) {
                                                    r2.close();
                                                }
                                            } catch (Exception unused3) {
                                            }
                                        }
                                    }
                                    Log.d(str, "request time Sucess: ");
                                    return true;
                                } catch (Exception e7) {
                                    e = e7;
                                    str2 = TAG;
                                    length = i11;
                                    selector = selectorOpen;
                                    r18 = ElapsedRealtime;
                                    Log.d(str2, "request time failed: " + e);
                                    if (selector != null) {
                                        if (selector.isOpen()) {
                                            selector.close();
                                        }
                                    }
                                    if (length > 0) {
                                        return false;
                                    }
                                    while (i5 < length) {
                                        r1 = r18[i5];
                                        if (r1 != 0) {
                                            r1.close();
                                        }
                                    }
                                    return false;
                                } catch (Throwable th7) {
                                    th = th7;
                                    str2 = TAG;
                                    length = i11;
                                }
                            } catch (Throwable th8) {
                                r16 = datagramChannelArr;
                                th = th8;
                                i4 = 0;
                                selector = selectorOpen;
                            }
                        } else {
                            Log.d(TAG, "not Sucesss");
                            throw new IOException("Received ntp response");
                        }
                    } catch (Exception e8) {
                        e = e8;
                    } catch (Throwable th9) {
                        th = th9;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    ElapsedRealtime = datagramChannelArr;
                }
                th = th;
                r19 = ElapsedRealtime;
                selector = selectorOpen;
                i4 = 0;
                r16 = r19;
            } catch (Exception e9) {
                e = e9;
                selector = null;
                r18 = datagramChannelArr;
                Log.d(str2, "request time failed: " + e);
                if (selector != null) {
                    if (selector.isOpen()) {
                        selector.close();
                    }
                }
                if (length > 0) {
                    return false;
                }
                while (i5 < length) {
                    r1 = r18[i5];
                    if (r1 != 0) {
                        r1.close();
                    }
                }
                return false;
            } catch (Throwable th11) {
                th2 = th11;
                r17 = datagramChannelArr;
                i4 = 0;
                selector = null;
            }
        } catch (Exception e10) {
            e = e10;
            length = 0;
        } catch (Throwable th12) {
            r16 = datagramChannelArr;
            th = th12;
            length = 0;
            i4 = 0;
            selector = null;
        }
        if (selector != null) {
            if (selector.isOpen()) {
                selector.close();
            }
        }
        if (length > 0) {
            while (i4 < length) {
                r0 = r16[i4];
                if (r0 != 0) {
                    r0.close();
                }
                i4++;
            }
            throw th;
        }
        throw th;
    }
}
