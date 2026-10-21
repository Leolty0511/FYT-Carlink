package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Trace;
import android.util.MathUtils;
import java.io.CharArrayWriter;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.Arrays;
import java.util.Random;
import u.a;
import u.h;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStatsHistory implements Parcelable {
    public static final Parcelable.Creator<NetworkStatsHistory> CREATOR = new Parcelable.Creator<NetworkStatsHistory>() { // from class: android.net.NetworkStatsHistory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkStatsHistory createFromParcel(Parcel parcel) {
            return new NetworkStatsHistory(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkStatsHistory[] newArray(int i2) {
            return new NetworkStatsHistory[i2];
        }
    };
    public static final int FIELD_ACTIVE_TIME = 1;
    public static final int FIELD_ALL = -1;
    public static final int FIELD_OPERATIONS = 32;
    public static final int FIELD_RX_BYTES = 2;
    public static final int FIELD_RX_PACKETS = 4;
    public static final int FIELD_TX_BYTES = 8;
    public static final int FIELD_TX_PACKETS = 16;
    private static final int VERSION_ADD_ACTIVE = 3;
    private static final int VERSION_ADD_PACKETS = 2;
    private static final int VERSION_INIT = 1;
    private long[] activeTime;
    private int bucketCount;
    private long bucketDuration;
    private long[] bucketStart;
    private long[] operations;
    private long[] rxBytes;
    private long[] rxPackets;
    private long totalBytes;
    private long[] txBytes;
    private long[] txPackets;

    public static class DataStreamUtils {
        @Deprecated
        public static long[] readFullLongArray(DataInputStream dataInputStream) throws IOException {
            int i2 = dataInputStream.readInt();
            if (i2 < 0) {
                throw new ProtocolException("negative array size");
            }
            long[] jArr = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                jArr[i3] = dataInputStream.readLong();
            }
            return jArr;
        }

        public static long readVarLong(DataInputStream dataInputStream) throws IOException {
            long j2 = 0;
            for (int i2 = 0; i2 < 64; i2 += 7) {
                byte b2 = dataInputStream.readByte();
                j2 |= ((long) (b2 & 127)) << i2;
                if ((b2 & 128) == 0) {
                    return j2;
                }
            }
            throw new ProtocolException("malformed long");
        }

        public static long[] readVarLongArray(DataInputStream dataInputStream) throws IOException {
            int i2 = dataInputStream.readInt();
            if (i2 == -1) {
                return null;
            }
            if (i2 < 0) {
                throw new ProtocolException("negative array size");
            }
            long[] jArr = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                jArr[i3] = readVarLong(dataInputStream);
            }
            return jArr;
        }

        public static void writeVarLong(DataOutputStream dataOutputStream, long j2) throws IOException {
            while (((-128) & j2) != 0) {
                dataOutputStream.writeByte((((int) j2) & 127) | 128);
                j2 >>>= 7;
            }
            dataOutputStream.writeByte((int) j2);
        }

        public static void writeVarLongArray(DataOutputStream dataOutputStream, long[] jArr, int i2) throws IOException {
            if (jArr == null) {
                dataOutputStream.writeInt(-1);
                return;
            }
            if (i2 > jArr.length) {
                throw new IllegalArgumentException("size larger than length");
            }
            dataOutputStream.writeInt(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                writeVarLong(dataOutputStream, jArr[i3]);
            }
        }
    }

    public static class Entry {
        public static final long UNKNOWN = -1;
        public long activeTime;
        public long bucketDuration;
        public long bucketStart;
        public long operations;
        public long rxBytes;
        public long rxPackets;
        public long txBytes;
        public long txPackets;
    }

    public static class ParcelUtils {
        public static long[] readLongArray(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == -1) {
                return null;
            }
            long[] jArr = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                jArr[i3] = parcel.readLong();
            }
            return jArr;
        }

        public static void writeLongArray(Parcel parcel, long[] jArr, int i2) {
            if (jArr == null) {
                parcel.writeInt(-1);
                return;
            }
            if (i2 > jArr.length) {
                throw new IllegalArgumentException("size larger than length");
            }
            parcel.writeInt(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                parcel.writeLong(jArr[i3]);
            }
        }
    }

    public NetworkStatsHistory(long j2) {
        this(j2, 10, -1);
    }

    private static void addLong(long[] jArr, int i2, long j2) {
        if (jArr != null) {
            jArr[i2] = jArr[i2] + j2;
        }
    }

    private void ensureBuckets(long j2, long j3) {
        long j4 = this.bucketDuration;
        long j5 = j2 - (j2 % j4);
        long j6 = j3 + ((j4 - (j3 % j4)) % j4);
        while (j5 < j6) {
            int iBinarySearch = Arrays.binarySearch(this.bucketStart, 0, this.bucketCount, j5);
            if (iBinarySearch < 0) {
                insertBucket(~iBinarySearch, j5);
            }
            j5 += this.bucketDuration;
        }
    }

    private static long getLong(long[] jArr, int i2, long j2) {
        return jArr != null ? jArr[i2] : j2;
    }

    private void insertBucket(int i2, long j2) {
        int i3 = this.bucketCount;
        long[] jArr = this.bucketStart;
        if (i3 >= jArr.length) {
            int iMax = (Math.max(jArr.length, 10) * 3) / 2;
            this.bucketStart = Arrays.copyOf(this.bucketStart, iMax);
            long[] jArr2 = this.activeTime;
            if (jArr2 != null) {
                this.activeTime = Arrays.copyOf(jArr2, iMax);
            }
            long[] jArr3 = this.rxBytes;
            if (jArr3 != null) {
                this.rxBytes = Arrays.copyOf(jArr3, iMax);
            }
            long[] jArr4 = this.rxPackets;
            if (jArr4 != null) {
                this.rxPackets = Arrays.copyOf(jArr4, iMax);
            }
            long[] jArr5 = this.txBytes;
            if (jArr5 != null) {
                this.txBytes = Arrays.copyOf(jArr5, iMax);
            }
            long[] jArr6 = this.txPackets;
            if (jArr6 != null) {
                this.txPackets = Arrays.copyOf(jArr6, iMax);
            }
            long[] jArr7 = this.operations;
            if (jArr7 != null) {
                this.operations = Arrays.copyOf(jArr7, iMax);
            }
        }
        int i4 = this.bucketCount;
        if (i2 < i4) {
            int i5 = i2 + 1;
            int i6 = i4 - i2;
            long[] jArr8 = this.bucketStart;
            System.arraycopy(jArr8, i2, jArr8, i5, i6);
            long[] jArr9 = this.activeTime;
            if (jArr9 != null) {
                System.arraycopy(jArr9, i2, jArr9, i5, i6);
            }
            long[] jArr10 = this.rxBytes;
            if (jArr10 != null) {
                System.arraycopy(jArr10, i2, jArr10, i5, i6);
            }
            long[] jArr11 = this.rxPackets;
            if (jArr11 != null) {
                System.arraycopy(jArr11, i2, jArr11, i5, i6);
            }
            long[] jArr12 = this.txBytes;
            if (jArr12 != null) {
                System.arraycopy(jArr12, i2, jArr12, i5, i6);
            }
            long[] jArr13 = this.txPackets;
            if (jArr13 != null) {
                System.arraycopy(jArr13, i2, jArr13, i5, i6);
            }
            long[] jArr14 = this.operations;
            if (jArr14 != null) {
                System.arraycopy(jArr14, i2, jArr14, i5, i6);
            }
        }
        this.bucketStart[i2] = j2;
        setLong(this.activeTime, i2, 0L);
        setLong(this.rxBytes, i2, 0L);
        setLong(this.rxPackets, i2, 0L);
        setLong(this.txBytes, i2, 0L);
        setLong(this.txPackets, i2, 0L);
        setLong(this.operations, i2, 0L);
        this.bucketCount++;
    }

    public static long randomLong(Random random, long j2, long j3) {
        return (long) (j2 + (random.nextFloat() * (j3 - j2)));
    }

    private static void setLong(long[] jArr, int i2, long j2) {
        if (jArr != null) {
            jArr[i2] = j2;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(h hVar, boolean z2) {
        hVar.print("NetworkStatsHistory: bucketDuration=");
        hVar.println(this.bucketDuration);
        hVar.b();
        int iMax = z2 ? 0 : Math.max(0, this.bucketCount - 32);
        if (iMax > 0) {
            hVar.print("(omitting ");
            hVar.print(iMax);
            hVar.println(" buckets)");
        }
        while (iMax < this.bucketCount) {
            hVar.print("bucketStart=");
            hVar.print(this.bucketStart[iMax]);
            if (this.activeTime != null) {
                hVar.print(" activeTime=");
                hVar.print(this.activeTime[iMax]);
            }
            if (this.rxBytes != null) {
                hVar.print(" rxBytes=");
                hVar.print(this.rxBytes[iMax]);
            }
            if (this.rxPackets != null) {
                hVar.print(" rxPackets=");
                hVar.print(this.rxPackets[iMax]);
            }
            if (this.txBytes != null) {
                hVar.print(" txBytes=");
                hVar.print(this.txBytes[iMax]);
            }
            if (this.txPackets != null) {
                hVar.print(" txPackets=");
                hVar.print(this.txPackets[iMax]);
            }
            if (this.operations != null) {
                hVar.print(" operations=");
                hVar.print(this.operations[iMax]);
            }
            hVar.println();
            iMax++;
        }
        hVar.a();
    }

    public int estimateResizeBuckets(long j2) {
        return (int) ((((long) size()) * getBucketDuration()) / j2);
    }

    @Deprecated
    public void generateRandom(long j2, long j3, long j4) {
        Random random = new Random();
        float fNextFloat = random.nextFloat();
        float f2 = j4;
        long j5 = (long) (f2 * fNextFloat);
        long j6 = (long) (f2 * (1.0f - fNextFloat));
        generateRandom(j2, j3, j5, j5 / 1024, j6, j6 / 1024, j5 / Trace.TRACE_TAG_HAL, random);
    }

    public long getBucketDuration() {
        return this.bucketDuration;
    }

    public long getEnd() {
        int i2 = this.bucketCount;
        if (i2 > 0) {
            return this.bucketStart[i2 - 1] + this.bucketDuration;
        }
        return Long.MIN_VALUE;
    }

    public int getIndexAfter(long j2) {
        int iBinarySearch = Arrays.binarySearch(this.bucketStart, 0, this.bucketCount, j2);
        return MathUtils.constrain(iBinarySearch < 0 ? ~iBinarySearch : iBinarySearch + 1, 0, this.bucketCount - 1);
    }

    public int getIndexBefore(long j2) {
        int iBinarySearch = Arrays.binarySearch(this.bucketStart, 0, this.bucketCount, j2);
        return MathUtils.constrain(iBinarySearch < 0 ? (~iBinarySearch) - 1 : iBinarySearch - 1, 0, this.bucketCount - 1);
    }

    public long getStart() {
        return this.bucketCount > 0 ? this.bucketStart[0] : LinkQualityInfo.UNKNOWN_LONG;
    }

    public long getTotalBytes() {
        return this.totalBytes;
    }

    public Entry getValues(int i2, Entry entry) {
        if (entry == null) {
            entry = new Entry();
        }
        entry.bucketStart = this.bucketStart[i2];
        entry.bucketDuration = this.bucketDuration;
        entry.activeTime = getLong(this.activeTime, i2, -1L);
        entry.rxBytes = getLong(this.rxBytes, i2, -1L);
        entry.rxPackets = getLong(this.rxPackets, i2, -1L);
        entry.txBytes = getLong(this.txBytes, i2, -1L);
        entry.txPackets = getLong(this.txPackets, i2, -1L);
        entry.operations = getLong(this.operations, i2, -1L);
        return entry;
    }

    @Deprecated
    public void recordData(long j2, long j3, long j4, long j5) {
        recordData(j2, j3, new NetworkStats.Entry(NetworkStats.IFACE_ALL, -1, 0, 0, j4, 0L, j5, 0L, 0L));
    }

    public void recordEntireHistory(NetworkStatsHistory networkStatsHistory) {
        recordHistory(networkStatsHistory, Long.MIN_VALUE, LinkQualityInfo.UNKNOWN_LONG);
    }

    public void recordHistory(NetworkStatsHistory networkStatsHistory, long j2, long j3) {
        NetworkStats.Entry entry;
        NetworkStats.Entry entry2 = entry;
        NetworkStats.Entry entry3 = new NetworkStats.Entry(NetworkStats.IFACE_ALL, -1, 0, 0, 0L, 0L, 0L, 0L, 0L);
        int i2 = 0;
        while (i2 < networkStatsHistory.bucketCount) {
            long j4 = networkStatsHistory.bucketStart[i2];
            long j5 = networkStatsHistory.bucketDuration + j4;
            if (j4 < j2 || j5 > j3) {
                entry = entry2;
            } else {
                entry = entry2;
                entry.rxBytes = getLong(networkStatsHistory.rxBytes, i2, 0L);
                entry.rxPackets = getLong(networkStatsHistory.rxPackets, i2, 0L);
                entry.txBytes = getLong(networkStatsHistory.txBytes, i2, 0L);
                entry.txPackets = getLong(networkStatsHistory.txPackets, i2, 0L);
                entry.operations = getLong(networkStatsHistory.operations, i2, 0L);
                recordData(j4, j5, entry);
            }
            i2++;
            entry2 = entry;
        }
    }

    @Deprecated
    public void removeBucketsBefore(long j2) {
        int i2 = 0;
        while (i2 < this.bucketCount && this.bucketStart[i2] + this.bucketDuration <= j2) {
            i2++;
        }
        if (i2 > 0) {
            long[] jArr = this.bucketStart;
            int length = jArr.length;
            this.bucketStart = Arrays.copyOfRange(jArr, i2, length);
            long[] jArr2 = this.activeTime;
            if (jArr2 != null) {
                this.activeTime = Arrays.copyOfRange(jArr2, i2, length);
            }
            long[] jArr3 = this.rxBytes;
            if (jArr3 != null) {
                this.rxBytes = Arrays.copyOfRange(jArr3, i2, length);
            }
            long[] jArr4 = this.rxPackets;
            if (jArr4 != null) {
                this.rxPackets = Arrays.copyOfRange(jArr4, i2, length);
            }
            long[] jArr5 = this.txBytes;
            if (jArr5 != null) {
                this.txBytes = Arrays.copyOfRange(jArr5, i2, length);
            }
            long[] jArr6 = this.txPackets;
            if (jArr6 != null) {
                this.txPackets = Arrays.copyOfRange(jArr6, i2, length);
            }
            long[] jArr7 = this.operations;
            if (jArr7 != null) {
                this.operations = Arrays.copyOfRange(jArr7, i2, length);
            }
            this.bucketCount -= i2;
        }
    }

    public int size() {
        return this.bucketCount;
    }

    public String toString() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        dump(new h(charArrayWriter, "  "), false);
        return charArrayWriter.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.bucketDuration);
        ParcelUtils.writeLongArray(parcel, this.bucketStart, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.activeTime, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.rxBytes, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.rxPackets, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.txBytes, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.txPackets, this.bucketCount);
        ParcelUtils.writeLongArray(parcel, this.operations, this.bucketCount);
        parcel.writeLong(this.totalBytes);
    }

    public void writeToStream(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(3);
        dataOutputStream.writeLong(this.bucketDuration);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.bucketStart, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.activeTime, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.rxBytes, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.rxPackets, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.txBytes, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.txPackets, this.bucketCount);
        DataStreamUtils.writeVarLongArray(dataOutputStream, this.operations, this.bucketCount);
    }

    public NetworkStatsHistory(long j2, int i2) {
        this(j2, i2, -1);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0050  */
    public void recordData(long j2, long j3, NetworkStats.Entry entry) {
        long j4 = j2;
        long j5 = j3;
        long j6 = entry.rxBytes;
        long j7 = entry.rxPackets;
        long j8 = entry.txBytes;
        long j9 = entry.txPackets;
        long j10 = entry.operations;
        if (entry.isNegative()) {
            throw new IllegalArgumentException("tried recording negative data");
        }
        if (entry.isEmpty()) {
            return;
        }
        ensureBuckets(j2, j3);
        long j11 = j5 - j4;
        int indexAfter = getIndexAfter(j5);
        while (indexAfter >= 0) {
            long j12 = j10;
            long j13 = j9;
            long j14 = this.bucketStart[indexAfter];
            long j15 = this.bucketDuration + j14;
            if (j15 < j4) {
                break;
            }
            if (j14 > j5) {
                j10 = j12;
                j9 = j13;
            } else {
                long jMin = Math.min(j15, j5) - Math.max(j14, j4);
                if (jMin <= 0) {
                    j10 = j12;
                    j9 = j13;
                } else {
                    long j16 = (j6 * jMin) / j11;
                    long j17 = (j7 * jMin) / j11;
                    long j18 = (j8 * jMin) / j11;
                    long j19 = j8;
                    long j20 = (j13 * jMin) / j11;
                    long j21 = (j12 * jMin) / j11;
                    addLong(this.activeTime, indexAfter, jMin);
                    addLong(this.rxBytes, indexAfter, j16);
                    j6 -= j16;
                    addLong(this.rxPackets, indexAfter, j17);
                    j7 -= j17;
                    addLong(this.txBytes, indexAfter, j18);
                    j8 = j19 - j18;
                    addLong(this.txPackets, indexAfter, j20);
                    j9 = j13 - j20;
                    addLong(this.operations, indexAfter, j21);
                    j11 -= jMin;
                    j10 = j12 - j21;
                }
            }
            indexAfter--;
            j4 = j2;
            j5 = j3;
        }
        this.totalBytes += entry.rxBytes + entry.txBytes;
    }

    public NetworkStatsHistory(long j2, int i2, int i3) {
        this.bucketDuration = j2;
        this.bucketStart = new long[i2];
        if ((i3 & 1) != 0) {
            this.activeTime = new long[i2];
        }
        if ((i3 & 2) != 0) {
            this.rxBytes = new long[i2];
        }
        if ((i3 & 4) != 0) {
            this.rxPackets = new long[i2];
        }
        if ((i3 & 8) != 0) {
            this.txBytes = new long[i2];
        }
        if ((i3 & 16) != 0) {
            this.txPackets = new long[i2];
        }
        if ((i3 & 32) != 0) {
            this.operations = new long[i2];
        }
        this.bucketCount = 0;
        this.totalBytes = 0L;
    }

    @Deprecated
    public void generateRandom(long j2, long j3, long j4, long j5, long j6, long j7, long j8, Random random) {
        ensureBuckets(j2, j3);
        NetworkStats.Entry entry = new NetworkStats.Entry(NetworkStats.IFACE_ALL, -1, 0, 0, 0L, 0L, 0L, 0L, 0L);
        long j9 = j4;
        long j10 = j5;
        long j11 = j6;
        long j12 = j7;
        long j13 = j8;
        while (true) {
            if (j9 <= 1024 && j10 <= 128 && j11 <= 1024 && j12 <= 128 && j13 <= 32) {
                return;
            }
            long jRandomLong = randomLong(random, j2, j3);
            long jRandomLong2 = randomLong(random, 0L, (j3 - jRandomLong) / 2) + jRandomLong;
            entry.rxBytes = randomLong(random, 0L, j9);
            entry.rxPackets = randomLong(random, 0L, j10);
            entry.txBytes = randomLong(random, 0L, j11);
            entry.txPackets = randomLong(random, 0L, j12);
            long jRandomLong3 = randomLong(random, 0L, j13);
            entry.operations = jRandomLong3;
            j9 -= entry.rxBytes;
            j10 -= entry.rxPackets;
            j11 -= entry.txBytes;
            j12 -= entry.txPackets;
            j13 -= jRandomLong3;
            recordData(jRandomLong, jRandomLong2, entry);
        }
    }

    public Entry getValues(long j2, long j3, Entry entry) {
        return getValues(j2, j3, LinkQualityInfo.UNKNOWN_LONG, entry);
    }

    public Entry getValues(long j2, long j3, long j4, Entry entry) {
        long j5;
        Entry entry2 = entry != null ? entry : new Entry();
        entry2.bucketDuration = j3 - j2;
        entry2.bucketStart = j2;
        long j6 = 0;
        entry2.activeTime = this.activeTime != null ? 0L : -1L;
        entry2.rxBytes = this.rxBytes != null ? 0L : -1L;
        entry2.rxPackets = this.rxPackets != null ? 0L : -1L;
        entry2.txBytes = this.txBytes != null ? 0L : -1L;
        entry2.txPackets = this.txPackets != null ? 0L : -1L;
        entry2.operations = this.operations != null ? 0L : -1L;
        int indexAfter = getIndexAfter(j3);
        while (indexAfter >= 0) {
            long j7 = this.bucketStart[indexAfter];
            long j8 = this.bucketDuration;
            long j9 = j7 + j8;
            if (j9 <= j2) {
                break;
            }
            if (j7 < j3) {
                if (j7 < j4 && j9 > j4) {
                    j5 = j8;
                } else {
                    if (j9 >= j3) {
                        j9 = j3;
                    }
                    if (j7 <= j2) {
                        j7 = j2;
                    }
                    j5 = j9 - j7;
                }
                if (j5 > j6) {
                    long[] jArr = this.activeTime;
                    if (jArr != null) {
                        entry2.activeTime += (jArr[indexAfter] * j5) / j8;
                    }
                    long[] jArr2 = this.rxBytes;
                    if (jArr2 != null) {
                        entry2.rxBytes += (jArr2[indexAfter] * j5) / j8;
                    }
                    long[] jArr3 = this.rxPackets;
                    if (jArr3 != null) {
                        entry2.rxPackets += (jArr3[indexAfter] * j5) / j8;
                    }
                    long[] jArr4 = this.txBytes;
                    if (jArr4 != null) {
                        entry2.txBytes += (jArr4[indexAfter] * j5) / j8;
                    }
                    long[] jArr5 = this.txPackets;
                    if (jArr5 != null) {
                        entry2.txPackets += (jArr5[indexAfter] * j5) / j8;
                    }
                    long[] jArr6 = this.operations;
                    if (jArr6 != null) {
                        entry2.operations += (jArr6[indexAfter] * j5) / j8;
                    }
                }
            }
            indexAfter--;
            j6 = 0;
        }
        return entry2;
    }

    public NetworkStatsHistory(NetworkStatsHistory networkStatsHistory, long j2) {
        this(j2, networkStatsHistory.estimateResizeBuckets(j2));
        recordEntireHistory(networkStatsHistory);
    }

    public NetworkStatsHistory(Parcel parcel) {
        this.bucketDuration = parcel.readLong();
        this.bucketStart = ParcelUtils.readLongArray(parcel);
        this.activeTime = ParcelUtils.readLongArray(parcel);
        this.rxBytes = ParcelUtils.readLongArray(parcel);
        this.rxPackets = ParcelUtils.readLongArray(parcel);
        this.txBytes = ParcelUtils.readLongArray(parcel);
        this.txPackets = ParcelUtils.readLongArray(parcel);
        this.operations = ParcelUtils.readLongArray(parcel);
        this.bucketCount = this.bucketStart.length;
        this.totalBytes = parcel.readLong();
    }

    public NetworkStatsHistory(DataInputStream dataInputStream) throws IOException {
        int i2 = dataInputStream.readInt();
        if (i2 == 1) {
            this.bucketDuration = dataInputStream.readLong();
            this.bucketStart = DataStreamUtils.readFullLongArray(dataInputStream);
            this.rxBytes = DataStreamUtils.readFullLongArray(dataInputStream);
            this.rxPackets = new long[this.bucketStart.length];
            this.txBytes = DataStreamUtils.readFullLongArray(dataInputStream);
            long[] jArr = this.bucketStart;
            this.txPackets = new long[jArr.length];
            this.operations = new long[jArr.length];
            this.bucketCount = jArr.length;
            this.totalBytes = a.l(this.rxBytes) + a.l(this.txBytes);
        } else {
            if (i2 != 2 && i2 != 3) {
                throw new ProtocolException("unexpected version: " + i2);
            }
            this.bucketDuration = dataInputStream.readLong();
            long[] varLongArray = DataStreamUtils.readVarLongArray(dataInputStream);
            this.bucketStart = varLongArray;
            this.activeTime = i2 >= 3 ? DataStreamUtils.readVarLongArray(dataInputStream) : new long[varLongArray.length];
            this.rxBytes = DataStreamUtils.readVarLongArray(dataInputStream);
            this.rxPackets = DataStreamUtils.readVarLongArray(dataInputStream);
            this.txBytes = DataStreamUtils.readVarLongArray(dataInputStream);
            this.txPackets = DataStreamUtils.readVarLongArray(dataInputStream);
            this.operations = DataStreamUtils.readVarLongArray(dataInputStream);
            this.bucketCount = this.bucketStart.length;
            this.totalBytes = a.l(this.rxBytes) + a.l(this.txBytes);
        }
        int length = this.bucketStart.length;
        int i3 = this.bucketCount;
        if (length != i3 || this.rxBytes.length != i3 || this.rxPackets.length != i3 || this.txBytes.length != i3 || this.txPackets.length != i3 || this.operations.length != i3) {
            throw new ProtocolException("Mismatched history lengths");
        }
    }
}
