package android.net;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.Slog;
import android.util.SparseBooleanArray;
import com.android.internal.telephony.IccCardConstants;
import com.android.internal.util.ArrayUtils;
import java.io.CharArrayWriter;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Objects;
import libcore.util.EmptyArray;

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
    public static final int METERED_ALL = -1;
    public static final int METERED_NO = 0;
    public static final int METERED_YES = 1;
    public static final int ROAMING_ALL = -1;
    public static final int ROAMING_NO = 0;
    public static final int ROAMING_YES = 1;
    public static final int SET_ALL = -1;
    public static final int SET_DBG_VPN_IN = 1001;
    public static final int SET_DBG_VPN_OUT = 1002;
    public static final int SET_DEBUG_START = 1000;
    public static final int SET_DEFAULT = 0;
    public static final int SET_FOREGROUND = 1;
    public static final int STATS_PER_IFACE = 0;
    public static final int STATS_PER_UID = 1;
    private static final String TAG = "NetworkStats";
    public static final int TAG_ALL = -1;
    public static final int TAG_NONE = 0;
    public static final int UID_ALL = -1;
    private int capacity;
    private long elapsedRealtime;
    private String[] iface;
    private int[] metered;
    private long[] operations;
    private int[] roaming;
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
        public int metered;
        public long operations;
        public int roaming;
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
            return this.uid == entry.uid && this.set == entry.set && this.tag == entry.tag && this.metered == entry.metered && this.roaming == entry.roaming && this.rxBytes == entry.rxBytes && this.rxPackets == entry.rxPackets && this.txBytes == entry.txBytes && this.txPackets == entry.txPackets && this.operations == entry.operations && this.iface.equals(entry.iface);
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.uid), Integer.valueOf(this.set), Integer.valueOf(this.tag), Integer.valueOf(this.metered), Integer.valueOf(this.roaming), this.iface);
        }

        public boolean isEmpty() {
            return this.rxBytes == 0 && this.rxPackets == 0 && this.txBytes == 0 && this.txPackets == 0 && this.operations == 0;
        }

        public boolean isNegative() {
            return this.rxBytes < 0 || this.rxPackets < 0 || this.txBytes < 0 || this.txPackets < 0 || this.operations < 0;
        }

        public String toString() {
            return "iface=" + this.iface + " uid=" + this.uid + " set=" + NetworkStats.setToString(this.set) + " tag=" + NetworkStats.tagToString(this.tag) + " metered=" + NetworkStats.meteredToString(this.metered) + " roaming=" + NetworkStats.roamingToString(this.roaming) + " rxBytes=" + this.rxBytes + " rxPackets=" + this.rxPackets + " txBytes=" + this.txBytes + " txPackets=" + this.txPackets + " operations=" + this.operations;
        }

        public Entry(long j2, long j3, long j4, long j5, long j6) {
            this(NetworkStats.IFACE_ALL, -1, 0, 0, j2, j3, j4, j5, j6);
        }

        public Entry(String str, int i2, int i3, int i4, long j2, long j3, long j4, long j5, long j6) {
            this(str, i2, i3, i4, 0, 0, j2, j3, j4, j5, j6);
        }

        public Entry(String str, int i2, int i3, int i4, int i5, int i6, long j2, long j3, long j4, long j5, long j6) {
            this.iface = str;
            this.uid = i2;
            this.set = i3;
            this.tag = i4;
            this.metered = i5;
            this.roaming = i6;
            this.rxBytes = j2;
            this.rxPackets = j3;
            this.txBytes = j4;
            this.txPackets = j5;
            this.operations = j6;
        }
    }

    public interface NonMonotonicObserver<C> {
        void foundNonMonotonic(NetworkStats networkStats, int i2, NetworkStats networkStats2, int i3, C c);
    }

    public NetworkStats(long j2, int i2) {
        this.elapsedRealtime = j2;
        this.size = 0;
        if (i2 >= 0) {
            this.capacity = i2;
            this.iface = new String[i2];
            this.uid = new int[i2];
            this.set = new int[i2];
            this.tag = new int[i2];
            this.metered = new int[i2];
            this.roaming = new int[i2];
            this.rxBytes = new long[i2];
            this.rxPackets = new long[i2];
            this.txBytes = new long[i2];
            this.txPackets = new long[i2];
            this.operations = new long[i2];
            return;
        }
        this.capacity = 0;
        this.iface = EmptyArray.STRING;
        this.uid = EmptyArray.INT;
        this.set = EmptyArray.INT;
        this.tag = EmptyArray.INT;
        this.metered = EmptyArray.INT;
        this.roaming = EmptyArray.INT;
        this.rxBytes = EmptyArray.LONG;
        this.rxPackets = EmptyArray.LONG;
        this.txBytes = EmptyArray.LONG;
        this.txPackets = EmptyArray.LONG;
        this.operations = EmptyArray.LONG;
    }

    private Entry addTrafficToApplications(int i2, String str, String str2, Entry entry, Entry entry2) {
        int i3;
        Entry entry3 = new Entry();
        Entry entry4 = new Entry();
        entry4.iface = str2;
        for (int i4 = 0; i4 < this.size; i4++) {
            if (Objects.equals(this.iface[i4], str) && (i3 = this.uid[i4]) != i2) {
                long j2 = entry.rxBytes;
                if (j2 > 0) {
                    entry4.rxBytes = (entry2.rxBytes * this.rxBytes[i4]) / j2;
                } else {
                    entry4.rxBytes = 0L;
                }
                long j3 = entry.rxPackets;
                if (j3 > 0) {
                    entry4.rxPackets = (entry2.rxPackets * this.rxPackets[i4]) / j3;
                } else {
                    entry4.rxPackets = 0L;
                }
                long j4 = entry.txBytes;
                if (j4 > 0) {
                    entry4.txBytes = (entry2.txBytes * this.txBytes[i4]) / j4;
                } else {
                    entry4.txBytes = 0L;
                }
                long j5 = entry.txPackets;
                if (j5 > 0) {
                    entry4.txPackets = (entry2.txPackets * this.txPackets[i4]) / j5;
                } else {
                    entry4.txPackets = 0L;
                }
                long j6 = entry.operations;
                if (j6 > 0) {
                    entry4.operations = (entry2.operations * this.operations[i4]) / j6;
                } else {
                    entry4.operations = 0L;
                }
                entry4.uid = i3;
                entry4.tag = this.tag[i4];
                entry4.set = this.set[i4];
                entry4.metered = this.metered[i4];
                entry4.roaming = this.roaming[i4];
                combineValues(entry4);
                if (this.tag[i4] == 0) {
                    entry3.add(entry4);
                    entry4.set = 1001;
                    combineValues(entry4);
                }
            }
        }
        return entry3;
    }

    private void deductTrafficFromVpnApp(int i2, String str, Entry entry) {
        entry.uid = i2;
        entry.set = 1002;
        entry.tag = 0;
        entry.iface = str;
        entry.metered = -1;
        entry.roaming = -1;
        combineValues(entry);
        int iFindIndex = findIndex(str, i2, 0, 0, 0, 0);
        if (iFindIndex != -1) {
            tunSubtract(iFindIndex, this, entry);
        }
        int iFindIndex2 = findIndex(str, i2, 1, 0, 0, 0);
        if (iFindIndex2 != -1) {
            tunSubtract(iFindIndex2, this, entry);
        }
    }

    public static String meteredToString(int i2) {
        if (i2 == -1) {
            return "ALL";
        }
        if (i2 != 0) {
            return i2 != 1 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "YES";
        }
        return "NO";
    }

    public static String roamingToString(int i2) {
        if (i2 == -1) {
            return "ALL";
        }
        if (i2 != 0) {
            return i2 != 1 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "YES";
        }
        return "NO";
    }

    public static boolean setMatches(int i2, int i3) {
        if (i2 == i3) {
            return true;
        }
        return i2 == -1 && i3 < 1000;
    }

    public static String setToCheckinString(int i2) {
        if (i2 == -1) {
            return "all";
        }
        if (i2 == 0) {
            return "def";
        }
        if (i2 == 1) {
            return "fg";
        }
        if (i2 != 1001) {
            return i2 != 1002 ? "unk" : "vpnout";
        }
        return "vpnin";
    }

    public static String setToString(int i2) {
        if (i2 == -1) {
            return "ALL";
        }
        if (i2 == 0) {
            return "DEFAULT";
        }
        if (i2 == 1) {
            return "FOREGROUND";
        }
        if (i2 != 1001) {
            return i2 != 1002 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "DBG_VPN_OUT";
        }
        return "DBG_VPN_IN";
    }

    public static String tagToString(int i2) {
        return m.d(i2, new StringBuilder("0x"));
    }

    private void tunAdjustmentInit(int i2, String str, String str2, Entry entry, Entry entry2) {
        Entry entry3 = new Entry();
        for (int i3 = 0; i3 < this.size; i3++) {
            getValues(i3, entry3);
            int i4 = entry3.uid;
            if (i4 == -1) {
                throw new IllegalStateException("Cannot adjust VPN accounting on an iface aggregated NetworkStats.");
            }
            int i5 = entry3.set;
            if (i5 == 1001 || i5 == 1002) {
                throw new IllegalStateException("Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*");
            }
            if (i4 == i2 && entry3.tag == 0 && Objects.equals(str2, entry3.iface)) {
                entry2.add(entry3);
            }
            if (entry3.uid != i2 && entry3.tag == 0 && Objects.equals(str, entry3.iface)) {
                entry.add(entry3);
            }
        }
    }

    private static Entry tunGetPool(Entry entry, Entry entry2) {
        Entry entry3 = new Entry();
        entry3.rxBytes = Math.min(entry.rxBytes, entry2.rxBytes);
        entry3.rxPackets = Math.min(entry.rxPackets, entry2.rxPackets);
        entry3.txBytes = Math.min(entry.txBytes, entry2.txBytes);
        entry3.txPackets = Math.min(entry.txPackets, entry2.txPackets);
        entry3.operations = Math.min(entry.operations, entry2.operations);
        return entry3;
    }

    private static void tunSubtract(int i2, NetworkStats networkStats, Entry entry) {
        long jMin = Math.min(networkStats.rxBytes[i2], entry.rxBytes);
        long[] jArr = networkStats.rxBytes;
        jArr[i2] = jArr[i2] - jMin;
        entry.rxBytes -= jMin;
        long jMin2 = Math.min(networkStats.rxPackets[i2], entry.rxPackets);
        long[] jArr2 = networkStats.rxPackets;
        jArr2[i2] = jArr2[i2] - jMin2;
        entry.rxPackets -= jMin2;
        long jMin3 = Math.min(networkStats.txBytes[i2], entry.txBytes);
        long[] jArr3 = networkStats.txBytes;
        jArr3[i2] = jArr3[i2] - jMin3;
        entry.txBytes -= jMin3;
        long jMin4 = Math.min(networkStats.txPackets[i2], entry.txPackets);
        long[] jArr4 = networkStats.txPackets;
        jArr4[i2] = jArr4[i2] - jMin4;
        entry.txPackets -= jMin4;
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
            printWriter.print(" metered=");
            printWriter.print(meteredToString(this.metered[i2]));
            printWriter.print(" roaming=");
            printWriter.print(roamingToString(this.roaming[i2]));
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

    public int findIndex(String str, int i2, int i3, int i4, int i5, int i6) {
        for (int i7 = 0; i7 < this.size; i7++) {
            if (i2 == this.uid[i7] && i3 == this.set[i7] && i4 == this.tag[i7] && i5 == this.metered[i7] && i6 == this.roaming[i7] && Objects.equals(str, this.iface[i7])) {
                return i7;
            }
        }
        return -1;
    }

    public int findIndexHinted(String str, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = 0;
        while (true) {
            int i9 = this.size;
            if (i8 >= i9) {
                return -1;
            }
            int i10 = i8 / 2;
            int i11 = i8 % 2 == 0 ? (i10 + i7) % i9 : (((i9 + i7) - i10) - 1) % i9;
            if (i2 == this.uid[i11] && i3 == this.set[i11] && i4 == this.tag[i11] && i5 == this.metered[i11] && i6 == this.roaming[i11] && Objects.equals(str, this.iface[i11])) {
                return i11;
            }
            i8++;
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

    public long getTotalPackets() {
        long j2 = 0;
        for (int i2 = this.size - 1; i2 >= 0; i2--) {
            j2 += this.rxPackets[i2] + this.txPackets[i2];
        }
        return j2;
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
        entry.metered = this.metered[i2];
        entry.roaming = this.roaming[i2];
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
        entry.metered = -1;
        entry.roaming = -1;
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
        entry.metered = -1;
        entry.roaming = -1;
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
        return this.capacity;
    }

    public boolean migrateTun(int i2, String str, String str2) {
        Entry entry = new Entry();
        Entry entry2 = new Entry();
        tunAdjustmentInit(i2, str, str2, entry, entry2);
        Entry entryTunGetPool = tunGetPool(entry, entry2);
        if (entryTunGetPool.isEmpty()) {
            return true;
        }
        Entry entryAddTrafficToApplications = addTrafficToApplications(i2, str, str2, entry, entryTunGetPool);
        deductTrafficFromVpnApp(i2, str2, entryAddTrafficToApplications);
        if (entryAddTrafficToApplications.isEmpty()) {
            return true;
        }
        Slog.wtf(TAG, "Failed to deduct underlying network traffic from VPN package. Moved=" + entryAddTrafficToApplications);
        return false;
    }

    public void setElapsedRealtime(long j2) {
        this.elapsedRealtime = j2;
    }

    public int size() {
        return this.size;
    }

    public void spliceOperationsFrom(NetworkStats networkStats) {
        for (int i2 = 0; i2 < this.size; i2++) {
            int iFindIndex = networkStats.findIndex(this.iface[i2], this.uid[i2], this.set[i2], this.tag[i2], this.metered[i2], this.roaming[i2]);
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
        dump("", new PrintWriter(charArrayWriter));
        return charArrayWriter.toString();
    }

    public NetworkStats withoutUids(int[] iArr) {
        NetworkStats networkStats = new NetworkStats(this.elapsedRealtime, 10);
        Entry entry = new Entry();
        for (int i2 = 0; i2 < this.size; i2++) {
            entry = getValues(i2, entry);
            if (!ArrayUtils.contains(iArr, entry.uid)) {
                networkStats.addValues(entry);
            }
        }
        return networkStats;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.elapsedRealtime);
        parcel.writeInt(this.size);
        parcel.writeInt(this.capacity);
        parcel.writeStringArray(this.iface);
        parcel.writeIntArray(this.uid);
        parcel.writeIntArray(this.set);
        parcel.writeIntArray(this.tag);
        parcel.writeIntArray(this.metered);
        parcel.writeIntArray(this.roaming);
        parcel.writeLongArray(this.rxBytes);
        parcel.writeLongArray(this.rxPackets);
        parcel.writeLongArray(this.txBytes);
        parcel.writeLongArray(this.txPackets);
        parcel.writeLongArray(this.operations);
    }

    public static <C> NetworkStats subtract(NetworkStats networkStats, NetworkStats networkStats2, NonMonotonicObserver<C> nonMonotonicObserver, C c) {
        return subtract(networkStats, networkStats2, nonMonotonicObserver, c, null);
    }

    public NetworkStats addValues(String str, int i2, int i3, int i4, int i5, int i6, long j2, long j3, long j4, long j5, long j6) {
        return addValues(new Entry(str, i2, i3, i4, i5, i6, j2, j3, j4, j5, j6));
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NetworkStats m22clone() {
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

    public static <C> NetworkStats subtract(NetworkStats networkStats, NetworkStats networkStats2, NonMonotonicObserver<C> nonMonotonicObserver, C c, NetworkStats networkStats3) {
        NetworkStats networkStats4;
        long j2 = networkStats.elapsedRealtime - networkStats2.elapsedRealtime;
        if (j2 < 0) {
            if (nonMonotonicObserver != null) {
                nonMonotonicObserver.foundNonMonotonic(networkStats, -1, networkStats2, -1, c);
            }
            j2 = 0;
        }
        Entry entry = new Entry();
        if (networkStats3 != null && networkStats3.capacity >= networkStats.size) {
            networkStats3.size = 0;
            networkStats3.elapsedRealtime = j2;
            networkStats4 = networkStats3;
        } else {
            networkStats4 = new NetworkStats(j2, networkStats.size);
        }
        int i2 = 0;
        while (i2 < networkStats.size) {
            String str = networkStats.iface[i2];
            entry.iface = str;
            int i3 = networkStats.uid[i2];
            entry.uid = i3;
            int i4 = networkStats.set[i2];
            entry.set = i4;
            int i5 = networkStats.tag[i2];
            entry.tag = i5;
            int i6 = networkStats.metered[i2];
            entry.metered = i6;
            int i7 = networkStats.roaming[i2];
            entry.roaming = i7;
            entry.rxBytes = networkStats.rxBytes[i2];
            entry.rxPackets = networkStats.rxPackets[i2];
            entry.txBytes = networkStats.txBytes[i2];
            entry.txPackets = networkStats.txPackets[i2];
            entry.operations = networkStats.operations[i2];
            long j3 = 0;
            int iFindIndexHinted = networkStats2.findIndexHinted(str, i3, i4, i5, i6, i7, i2);
            if (iFindIndexHinted != -1) {
                entry.rxBytes -= networkStats2.rxBytes[iFindIndexHinted];
                entry.rxPackets -= networkStats2.rxPackets[iFindIndexHinted];
                entry.txBytes -= networkStats2.txBytes[iFindIndexHinted];
                entry.txPackets -= networkStats2.txPackets[iFindIndexHinted];
                entry.operations -= networkStats2.operations[iFindIndexHinted];
            }
            if (entry.isNegative()) {
                if (nonMonotonicObserver != null) {
                    nonMonotonicObserver.foundNonMonotonic(networkStats, i2, networkStats2, iFindIndexHinted, c);
                }
                entry.rxBytes = Math.max(entry.rxBytes, j3);
                entry.rxPackets = Math.max(entry.rxPackets, j3);
                entry.txBytes = Math.max(entry.txBytes, j3);
                entry.txPackets = Math.max(entry.txPackets, j3);
                entry.operations = Math.max(entry.operations, j3);
            } else {
                j3 = 0;
                i2 = i2;
                networkStats4 = networkStats4;
                entry = entry;
            }
            networkStats4.addValues(entry);
            i2++;
            entry = entry;
            networkStats4 = networkStats4;
        }
        return networkStats4;
    }

    public NetworkStats addValues(Entry entry) {
        int i2 = this.size;
        if (i2 >= this.capacity) {
            int iMax = (Math.max(i2, 10) * 3) / 2;
            this.iface = (String[]) Arrays.copyOf(this.iface, iMax);
            this.uid = Arrays.copyOf(this.uid, iMax);
            this.set = Arrays.copyOf(this.set, iMax);
            this.tag = Arrays.copyOf(this.tag, iMax);
            this.metered = Arrays.copyOf(this.metered, iMax);
            this.roaming = Arrays.copyOf(this.roaming, iMax);
            this.rxBytes = Arrays.copyOf(this.rxBytes, iMax);
            this.rxPackets = Arrays.copyOf(this.rxPackets, iMax);
            this.txBytes = Arrays.copyOf(this.txBytes, iMax);
            this.txPackets = Arrays.copyOf(this.txPackets, iMax);
            this.operations = Arrays.copyOf(this.operations, iMax);
            this.capacity = iMax;
        }
        String[] strArr = this.iface;
        int i3 = this.size;
        strArr[i3] = entry.iface;
        this.uid[i3] = entry.uid;
        this.set[i3] = entry.set;
        this.tag[i3] = entry.tag;
        this.metered[i3] = entry.metered;
        this.roaming[i3] = entry.roaming;
        this.rxBytes[i3] = entry.rxBytes;
        this.rxPackets[i3] = entry.rxPackets;
        this.txBytes[i3] = entry.txBytes;
        this.txPackets[i3] = entry.txPackets;
        this.operations[i3] = entry.operations;
        this.size = i3 + 1;
        return this;
    }

    public NetworkStats combineValues(Entry entry) {
        int iFindIndex = findIndex(entry.iface, entry.uid, entry.set, entry.tag, entry.metered, entry.roaming);
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
        entry.metered = -1;
        entry.roaming = -1;
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
        this.capacity = parcel.readInt();
        this.iface = parcel.createStringArray();
        this.uid = parcel.createIntArray();
        this.set = parcel.createIntArray();
        this.tag = parcel.createIntArray();
        this.metered = parcel.createIntArray();
        this.roaming = parcel.createIntArray();
        this.rxBytes = parcel.createLongArray();
        this.rxPackets = parcel.createLongArray();
        this.txBytes = parcel.createLongArray();
        this.txPackets = parcel.createLongArray();
        this.operations = parcel.createLongArray();
    }
}
