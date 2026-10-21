package android.net;

import android.accessibilityservice.c;
import android.os.SystemClock;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class SntpClient {
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
    private static final String TAG = "SntpClient";
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
        try {
            return requestTime(InetAddress.getByName(str), 123, i2);
        } catch (Exception e2) {
            EventLogTags.writeNtpFailure(str, e2.toString());
            Log.d(TAG, "request time failed: " + e2);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f8  */
    public boolean requestTime(InetAddress inetAddress, int i2, int i3) throws Throwable {
        int i4;
        String str;
        int andSetThreadStatsTag = TrafficStats.getAndSetThreadStatsTag(TrafficStats.TAG_SYSTEM_NTP);
        DatagramSocket datagramSocket = null;
        try {
            DatagramSocket datagramSocket2 = new DatagramSocket();
            try {
                try {
                    datagramSocket2.setSoTimeout(i3);
                    byte[] bArr = new byte[48];
                    DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, inetAddress, i2);
                    bArr[0] = 27;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    writeTimeStamp(bArr, 40, jCurrentTimeMillis);
                    datagramSocket2.send(datagramPacket);
                    datagramSocket2.receive(new DatagramPacket(bArr, 48));
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j2 = jElapsedRealtime2 - jElapsedRealtime;
                    long j3 = jCurrentTimeMillis + j2;
                    byte b2 = bArr[0];
                    byte b3 = (byte) ((b2 >> 6) & 3);
                    byte b4 = (byte) (b2 & 7);
                    int i5 = bArr[1] & 255;
                    str = "request time failed: ";
                    try {
                        long timeStamp = readTimeStamp(bArr, 24);
                        long timeStamp2 = readTimeStamp(bArr, 32);
                        i4 = andSetThreadStatsTag;
                        try {
                            long timeStamp3 = readTimeStamp(bArr, 40);
                            checkValidServerReply(b3, b4, i5, timeStamp3);
                            long j4 = j2 - (timeStamp3 - timeStamp2);
                            long j5 = ((timeStamp3 - j3) + (timeStamp2 - timeStamp)) / 2;
                            EventLogTags.writeNtpSuccess(inetAddress.toString(), j4, j5);
                            Log.d(TAG, "round trip: " + j4 + "ms, clock offset: " + j5 + "ms");
                            this.mNtpTime = j3 + j5;
                            this.mNtpTimeReference = jElapsedRealtime2;
                            this.mRoundTripTime = j4;
                            datagramSocket2.close();
                            TrafficStats.setThreadStatsTag(i4);
                            return true;
                        } catch (Exception e2) {
                            e = e2;
                            datagramSocket = datagramSocket2;
                            try {
                                EventLogTags.writeNtpFailure(inetAddress.toString(), e.toString());
                                Log.d(TAG, str + e);
                                if (datagramSocket != null) {
                                    datagramSocket.close();
                                }
                                TrafficStats.setThreadStatsTag(i4);
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                if (datagramSocket != null) {
                                    datagramSocket.close();
                                }
                                TrafficStats.setThreadStatsTag(i4);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            datagramSocket = datagramSocket2;
                            if (datagramSocket != null) {
                                datagramSocket.close();
                            }
                            TrafficStats.setThreadStatsTag(i4);
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        i4 = andSetThreadStatsTag;
                        datagramSocket = datagramSocket2;
                        EventLogTags.writeNtpFailure(inetAddress.toString(), e.toString());
                        Log.d(TAG, str + e);
                        if (datagramSocket != null) {
                            datagramSocket.close();
                        }
                        TrafficStats.setThreadStatsTag(i4);
                        return false;
                    }
                } catch (Exception e4) {
                    e = e4;
                    str = "request time failed: ";
                }
            } catch (Throwable th3) {
                th = th3;
                i4 = andSetThreadStatsTag;
            }
        } catch (Exception e5) {
            e = e5;
            str = "request time failed: ";
            i4 = andSetThreadStatsTag;
        } catch (Throwable th4) {
            th = th4;
            i4 = andSetThreadStatsTag;
        }
    }
}
