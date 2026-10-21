package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.SparseBooleanArray;
import java.io.CharArrayWriter;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashSet;
import u.a;
import u.i;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStats implements Parcelable {
    public static final Parcelable.Creator<NetworkStats> CREATOR = new Parcelable.Creator<NetworkStats>() { // from class: android.net.NetworkStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkStats createFromParcel(Parcel parcel) {
            return new NetworkStats(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkStats[] newArray(int i2) {
            return new NetworkStats[i2];
        }
    };
    public static final String IFACE_ALL = null;
    public static final int SET_ALL = -1;
    public static final int SET_DEFAULT = 0;
    public static final int SET_FOREGROUND = 1;
    public static final int TAG_NONE = 0;
    public static final int UID_ALL = -1;
    private final long elapsedRealtime;
    private String[] iface;
    private long[] operations;
    private long[] rxBytes;
    private long[] rxPackets;
    private int[] set;
    private int size;
    private int[] tag;
    private long[] txBytes;
    private long[] txPackets;
    private int[] uid;

    public static class Entry {
        public String iface;
        public long operations;
        public long rxBytes;
        public long rxPackets;
        public int set;
        public int tag;
        public long txBytes;
        public long txPackets;
        public int uid;

        public Entry() {
            this(NetworkStats.IFACE_ALL, -1, 0, 0, 0L, 0L, 0L, 0L, 0L);
        }

        public void add(Entry entry) {
            this.rxBytes += entry.rxBytes;
            this.rxPackets += entry.rxPackets;
            this.txBytes += entry.txBytes;
            this.txPackets += entry.txPackets;
            this.operations += entry.operations;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.uid == entry.uid && this.set == entry.set && this.tag == entry.tag && this.rxBytes == entry.rxBytes && this.rxPackets == entry.rxPackets && this.txBytes == entry.txBytes && this.txPackets == entry.txPackets && this.operations == entry.operations && this.iface.equals(entry.iface);
        }

        public boolean isEmpty() {
            return this.rxBytes == 0 && this.rxPackets == 0 && this.txBytes == 0 && this.txPackets == 0 && this.operations == 0;
        }

        public boolean isNegative() {
            return this.rxBytes < 0 || this.rxPackets < 0 || this.txBytes < 0 || this.txPackets < 0 || this.operations < 0;
        }

        public String toString() {
            return "iface=" + this.iface + " uid=" + this.uid + " set=" + NetworkStats.setToString(this.set) + " tag=" + NetworkStats.tagToString(this.tag) + " rxBytes=" + this.rxBytes + " rxPackets=" + this.rxPackets + " txBytes=" + this.txBytes + " txPackets=" + this.txPackets + " operations=" + this.operations;
        }

        public Entry(long j2, long j3, long j4, long j5, long j6) {
            this(NetworkStats.IFACE_ALL, -1, 0, 0, j2, j3, j4, j5, j6);
        }

        public Entry(String str, int i2, int i3, int i4, long j2, long j3, long j4, long j5, long j6) {
            this.iface = str;
            this.uid = i2;
            this.set = i3;
            this.tag = i4;
            this.rxBytes = j2;
            this.rxPackets = j3;
            this.txBytes = j4;
            this.txPackets = j5;
            this.operations = j6;
        }
    }

    public interface NonMonotonicObserver<C> {
        void foundNonMonotonic(NetworkStats networkStats, int i2, NetworkStats networkStats2, int i3, C c2);
    }

    public NetworkStats(long j2, int i2) {
        this.elapsedRealtime = j2;
        this.size = 0;
        this.iface = new String[i2];
        this.uid = new int[i2];
        this.set = new int[i2];
        this.tag = new int[i2];
        this.rxBytes = new long[i2];
        this.rxPackets = new long[i2];
        this.txBytes = new long[i2];
        this.txPackets = new long[i2];
        this.operations = new long[i2];
    }

    public static String setToString(int i2) {
        if (i2 == -1) {
            return "ALL";
        }
        if (i2 != 0) {
            return i2 != 1 ? "UNKNOWN" : "FOREGROUND";
        }
        return "DEFAULT";
    }

    public static String tagToString(int i2) {
        return "0x" + Integer.toHexString(i2);
    }

    public NetworkStats addIfaceValues(String str, long j2, long j3, long j4, long j5) {
        return addValues(str, -1, 0, 0, j2, j3, j4, j5, 0L);
    }

    public NetworkStats addValues(String str, int i2, int i3, int i4, long j2, long j3, long j4, long j5, long j6) {
        return addValues(new Entry(str, i2, i3, i4, j2, j3, j4, j5, j6));
    }

    public void combineAllValues(NetworkStats networkStats) {
        Entry values = null;
        for (int i2 = 0; i2 < networkStats.size; i2++) {
            values = networkStats.getValues(i2, values);
            combineValues(values);
        }
    }

    @Deprecated
    public NetworkStats combineValues(String str, int i2, int i3, long j2, long j3, long j4, long j5, long j6) {
        return combineValues(str, i2, 0, i3, j2, j3, j4, j5, j6);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("NetworkStats: elapsedRealtime=");
        printWriter.println(this.elapsedRealtime);
        for (int i2 = 0; i2 < this.size; i2++) {
            printWriter.print(str);
            printWriter.print("  [");
            printWriter.print(i2);
            printWriter.print("]");
            printWriter.print(" iface=");
            printWriter.print(this.iface[i2]);
            printWriter.print(" uid=");
            printWriter.print(this.uid[i2]);
            printWriter.print(" set=");
            printWriter.print(setToString(this.set[i2]));
            printWriter.print(" tag=");
            printWriter.print(tagToString(this.tag[i2]));
            printWriter.print(" rxBytes=");
            printWriter.print(this.rxBytes[i2]);
            printWriter.print(" rxPackets=");
            printWriter.print(this.rxPackets[i2]);
            printWriter.print(" txBytes=");
            printWriter.print(this.txBytes[i2]);
            printWriter.print(" txPackets=");
            printWriter.print(this.txPackets[i2]);
            printWriter.print(" operations=");
            printWriter.println(this.operations[i2]);
        }
    }

    public int findIndex(String str, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < this.size; i5++) {
            if (i2 == this.uid[i5] && i3 == this.set[i5] && i4 == this.tag[i5] && i.a(str, this.iface[i5])) {
                return i5;
            }
        }
        return -1;
    }

    public int findIndexHinted(String str, int i2, int i3, int i4, int i5) {
        int i6 = 0;
        while (true) {
            int i7 = this.size;
            if (i6 >= i7) {
                return -1;
            }
            int i8 = i6 / 2;
            int i9 = i6 % 2 == 0 ? (i8 + i5) % i7 : (((i7 + i5) - i8) - 1) % i7;
            if (i2 == this.uid[i9] && i3 == this.set[i9] && i4 == this.tag[i9] && i.a(str, this.iface[i9])) {
                return i9;
            }
            i6++;
        }
    }

    public long getElapsedRealtime() {
        return this.elapsedRealtime;
    }

    public long getElapsedRealtimeAge() {
        return SystemClock.elapsedRealtime() - this.elapsedRealtime;
    }

    public Entry getTotal(Entry entry) {
        return getTotal(entry, null, -1, false);
    }

    public long getTotalBytes() {
        Entry total = getTotal(null);
        return total.rxBytes + total.txBytes;
    }

    public Entry getTotalIncludingTags(Entry entry) {
        return getTotal(entry, null, -1, true);
    }

    public String[] getUniqueIfaces() {
        HashSet hashSet = new HashSet();
        for (String str : this.iface) {
            if (str != IFACE_ALL) {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public int[] getUniqueUids() {
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        for (int i2 : this.uid) {
            sparseBooleanArray.put(i2, true);
        }
        int size = sparseBooleanArray.size();
        int[] iArr = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr[i3] = sparseBooleanArray.keyAt(i3);
        }
        return iArr;
    }

    public Entry getValues(int i2, Entry entry) {
        if (entry == null) {
            entry = new Entry();
        }
        entry.iface = this.iface[i2];
        entry.uid = this.uid[i2];
        entry.set = this.set[i2];
        entry.tag = this.tag[i2];
        entry.rxBytes = this.rxBytes[i2];
        entry.rxPackets = this.rxPackets[i2];
        entry.txBytes = this.txBytes[i2];
        entry.txPackets = this.txPackets[i2];
        entry.operations = this.operations[i2];
        return entry;
    }

    public NetworkStats groupedByIface() {
        NetworkStats networkStats = new NetworkStats(this.elapsedRealtime, 10);
        Entry entry = new Entry();
        entry.uid = -1;
        entry.set = -1;
        entry.tag = 0;
        entry.operations = 0L;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.tag[i2] == 0) {
                entry.iface = this.iface[i2];
                entry.rxBytes = this.rxBytes[i2];
                entry.rxPackets = this.rxPackets[i2];
                entry.txBytes = this.txBytes[i2];
                entry.txPackets = this.txPackets[i2];
                networkStats.combineValues(entry);
            }
        }
        return networkStats;
    }

    public NetworkStats groupedByUid() {
        NetworkStats networkStats = new NetworkStats(this.elapsedRealtime, 10);
        Entry entry = new Entry();
        entry.iface = IFACE_ALL;
        entry.set = -1;
        entry.tag = 0;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.tag[i2] == 0) {
                entry.uid = this.uid[i2];
                entry.rxBytes = this.rxBytes[i2];
                entry.rxPackets = this.rxPackets[i2];
                entry.txBytes = this.txBytes[i2];
                entry.txPackets = this.txPackets[i2];
                entry.operations = this.operations[i2];
                networkStats.combineValues(entry);
            }
        }
        return networkStats;
    }

    public int internalSize() {
        return this.iface.length;
    }

    public int size() {
        return this.size;
    }

    public void spliceOperationsFrom(NetworkStats networkStats) {
        for (int i2 = 0; i2 < this.size; i2++) {
            int iFindIndex = networkStats.findIndex(this.iface[i2], this.uid[i2], this.set[i2], this.tag[i2]);
            if (iFindIndex == -1) {
                this.operations[i2] = 0;
            } else {
                this.operations[i2] = networkStats.operations[iFindIndex];
            }
        }
    }

    public NetworkStats subtract(NetworkStats networkStats) {
        return subtract(this, networkStats, null, null);
    }

    public String toString() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        dump(ProxyProperties.LOCAL_EXCL_LIST, new PrintWriter(charArrayWriter));
        return charArrayWriter.toString();
    }

    public NetworkStats withoutUids(int[] iArr) {
        NetworkStats networkStats = new NetworkStats(this.elapsedRealtime, 10);
        Entry entry = new Entry();
        for (int i2 = 0; i2 < this.size; i2++) {
            entry = getValues(i2, entry);
            if (!a.a(iArr, entry.uid)) {
                networkStats.addValues(entry);
            }
        }
        return networkStats;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.elapsedRealtime);
        parcel.writeInt(this.size);
        parcel.writeStringArray(this.iface);
        parcel.writeIntArray(this.uid);
        parcel.writeIntArray(this.set);
        parcel.writeIntArray(this.tag);
        parcel.writeLongArray(this.rxBytes);
        parcel.writeLongArray(this.rxPackets);
        parcel.writeLongArray(this.txBytes);
        parcel.writeLongArray(this.txPackets);
        parcel.writeLongArray(this.operations);
    }

    public static <C> NetworkStats subtract(NetworkStats networkStats, NetworkStats networkStats2, NonMonotonicObserver<C> nonMonotonicObserver, C c2) {
        long j2;
        NetworkStats networkStats3 = networkStats;
        long j3 = networkStats3.elapsedRealtime - networkStats2.elapsedRealtime;
        long j4 = 0;
        if (j3 < 0) {
            if (nonMonotonicObserver != null) {
                nonMonotonicObserver.foundNonMonotonic(networkStats, -1, networkStats2, -1, c2);
            }
            j3 = 0;
        }
        Entry entry = new Entry();
        NetworkStats networkStats4 = new NetworkStats(j3, networkStats3.size);
        int i2 = 0;
        while (i2 < networkStats3.size) {
            String str = networkStats3.iface[i2];
            entry.iface = str;
            int i3 = networkStats3.uid[i2];
            entry.uid = i3;
            int i4 = networkStats3.set[i2];
            entry.set = i4;
            int i5 = networkStats3.tag[i2];
            entry.tag = i5;
            int iFindIndexHinted = networkStats2.findIndexHinted(str, i3, i4, i5, i2);
            if (iFindIndexHinted == -1) {
                entry.rxBytes = networkStats3.rxBytes[i2];
                entry.rxPackets = networkStats3.rxPackets[i2];
                entry.txBytes = networkStats3.txBytes[i2];
                entry.txPackets = networkStats3.txPackets[i2];
                entry.operations = networkStats3.operations[i2];
                j2 = j4;
            } else {
                long j5 = networkStats3.rxBytes[i2] - networkStats2.rxBytes[iFindIndexHinted];
                entry.rxBytes = j5;
                long j6 = networkStats3.rxPackets[i2] - networkStats2.rxPackets[iFindIndexHinted];
                entry.rxPackets = j6;
                long j7 = networkStats3.txBytes[i2] - networkStats2.txBytes[iFindIndexHinted];
                entry.txBytes = j7;
                long j8 = networkStats3.txPackets[i2] - networkStats2.txPackets[iFindIndexHinted];
                entry.txPackets = j8;
                long j9 = networkStats3.operations[i2] - networkStats2.operations[iFindIndexHinted];
                entry.operations = j9;
                if (j5 < 0 || j6 < 0 || j7 < 0 || j8 < 0 || j9 < 0) {
                    if (nonMonotonicObserver != null) {
                        nonMonotonicObserver.foundNonMonotonic(networkStats, i2, networkStats2, iFindIndexHinted, c2);
                    }
                    j2 = 0;
                    entry.rxBytes = Math.max(entry.rxBytes, 0L);
                    entry.rxPackets = Math.max(entry.rxPackets, 0L);
                    entry.txBytes = Math.max(entry.txBytes, 0L);
                    entry.txPackets = Math.max(entry.txPackets, 0L);
                    entry.operations = Math.max(entry.operations, 0L);
                } else {
                    j2 = 0;
                }
            }
            networkStats4.addValues(entry);
            i2++;
            networkStats3 = networkStats;
            j4 = j2;
        }
        return networkStats4;
    }

    public NetworkStats addValues(Entry entry) {
        int i2 = this.size;
        String[] strArr = this.iface;
        if (i2 >= strArr.length) {
            int iMax = (Math.max(strArr.length, 10) * 3) / 2;
            this.iface = (String[]) Arrays.copyOf(this.iface, iMax);
            this.uid = Arrays.copyOf(this.uid, iMax);
            this.set = Arrays.copyOf(this.set, iMax);
            this.tag = Arrays.copyOf(this.tag, iMax);
            this.rxBytes = Arrays.copyOf(this.rxBytes, iMax);
            this.rxPackets = Arrays.copyOf(this.rxPackets, iMax);
            this.txBytes = Arrays.copyOf(this.txBytes, iMax);
            this.txPackets = Arrays.copyOf(this.txPackets, iMax);
            this.operations = Arrays.copyOf(this.operations, iMax);
        }
        String[] strArr2 = this.iface;
        int i3 = this.size;
        strArr2[i3] = entry.iface;
        this.uid[i3] = entry.uid;
        this.set[i3] = entry.set;
        this.tag[i3] = entry.tag;
        this.rxBytes[i3] = entry.rxBytes;
        this.rxPackets[i3] = entry.rxPackets;
        this.txBytes[i3] = entry.txBytes;
        this.txPackets[i3] = entry.txPackets;
        this.operations[i3] = entry.operations;
        this.size = i3 + 1;
        return this;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NetworkStats m10clone() {
        NetworkStats networkStats = new NetworkStats(this.elapsedRealtime, this.size);
        Entry values = null;
        for (int i2 = 0; i2 < this.size; i2++) {
            values = getValues(i2, values);
            networkStats.addValues(values);
        }
        return networkStats;
    }

    public NetworkStats combineValues(String str, int i2, int i3, int i4, long j2, long j3, long j4, long j5, long j6) {
        return combineValues(new Entry(str, i2, i3, i4, j2, j3, j4, j5, j6));
    }

    public Entry getTotal(Entry entry, int i2) {
        return getTotal(entry, null, i2, false);
    }

    public NetworkStats combineValues(Entry entry) {
        int iFindIndex = findIndex(entry.iface, entry.uid, entry.set, entry.tag);
        if (iFindIndex == -1) {
            addValues(entry);
        } else {
            long[] jArr = this.rxBytes;
            jArr[iFindIndex] = jArr[iFindIndex] + entry.rxBytes;
            long[] jArr2 = this.rxPackets;
            jArr2[iFindIndex] = jArr2[iFindIndex] + entry.rxPackets;
            long[] jArr3 = this.txBytes;
            jArr3[iFindIndex] = jArr3[iFindIndex] + entry.txBytes;
            long[] jArr4 = this.txPackets;
            jArr4[iFindIndex] = jArr4[iFindIndex] + entry.txPackets;
            long[] jArr5 = this.operations;
            jArr5[iFindIndex] = jArr5[iFindIndex] + entry.operations;
        }
        return this;
    }

    public Entry getTotal(Entry entry, HashSet<String> hashSet) {
        return getTotal(entry, hashSet, -1, false);
    }

    private Entry getTotal(Entry entry, HashSet<String> hashSet, int i2, boolean z2) {
        if (entry == null) {
            entry = new Entry();
        }
        entry.iface = IFACE_ALL;
        entry.uid = i2;
        entry.set = -1;
        entry.tag = 0;
        entry.rxBytes = 0L;
        entry.rxPackets = 0L;
        entry.txBytes = 0L;
        entry.txPackets = 0L;
        entry.operations = 0L;
        for (int i3 = 0; i3 < this.size; i3++) {
            boolean z3 = true;
            boolean z4 = i2 == -1 || i2 == this.uid[i3];
            if (hashSet != null && !hashSet.contains(this.iface[i3])) {
                z3 = false;
            }
            if (z4 && z3 && (this.tag[i3] == 0 || z2)) {
                entry.rxBytes += this.rxBytes[i3];
                entry.rxPackets += this.rxPackets[i3];
                entry.txBytes += this.txBytes[i3];
                entry.txPackets += this.txPackets[i3];
                entry.operations += this.operations[i3];
            }
        }
        return entry;
    }

    public NetworkStats(Parcel parcel) {
        this.elapsedRealtime = parcel.readLong();
        this.size = parcel.readInt();
        this.iface = parcel.createStringArray();
        this.uid = parcel.createIntArray();
        this.set = parcel.createIntArray();
        this.tag = parcel.createIntArray();
        this.rxBytes = parcel.createLongArray();
        this.rxPackets = parcel.createLongArray();
        this.txBytes = parcel.createLongArray();
        this.txPackets = parcel.createLongArray();
        this.operations = parcel.createLongArray();
    }
}
