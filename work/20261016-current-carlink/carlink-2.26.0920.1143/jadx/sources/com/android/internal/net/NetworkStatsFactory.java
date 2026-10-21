package com.android.internal.net;

import android.net.NetworkStats;
import android.os.StrictMode;
import android.os.SystemClock;
import android.util.ArrayMap;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.ProcFileReader;
import com.android.server.NetworkManagementSocketTagger;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.ProtocolException;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkStatsFactory {
    private static final String CLATD_INTERFACE_PREFIX = "v4-";
    private static final int IPV4V6_HEADER_DELTA = 20;
    private static final boolean SANITY_CHECK_NATIVE = false;
    private static final String TAG = "NetworkStatsFactory";
    private static final boolean USE_NATIVE_PARSING = true;

    @GuardedBy("sStackedIfaces")
    private static final ArrayMap<String, String> sStackedIfaces = new ArrayMap<>();
    private final File mStatsXtIfaceAll;
    private final File mStatsXtIfaceFmt;
    private final File mStatsXtUid;

    public NetworkStatsFactory() {
        this(new File("/proc/"));
    }

    public static NetworkStats javaReadNetworkStatsDetail(File file, int i2, String[] strArr, int i3) throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        NetworkStats networkStats = new NetworkStats(SystemClock.elapsedRealtime(), 24);
        NetworkStats.Entry entry = new NetworkStats.Entry();
        int i4 = 1;
        ProcFileReader procFileReader = null;
        try {
            try {
                ProcFileReader procFileReader2 = new ProcFileReader(new FileInputStream(file));
                try {
                    try {
                        procFileReader2.finishLine();
                        int iNextInt = 1;
                        while (procFileReader2.hasMoreData()) {
                            try {
                                iNextInt = procFileReader2.nextInt();
                                if (iNextInt != i4 + 1) {
                                    throw new ProtocolException("inconsistent idx=" + iNextInt + " after lastIdx=" + i4);
                                }
                                entry.iface = procFileReader2.nextString();
                                entry.tag = NetworkManagementSocketTagger.kernelToTag(procFileReader2.nextString());
                                entry.uid = procFileReader2.nextInt();
                                entry.set = procFileReader2.nextInt();
                                entry.rxBytes = procFileReader2.nextLong();
                                entry.rxPackets = procFileReader2.nextLong();
                                entry.txBytes = procFileReader2.nextLong();
                                entry.txPackets = procFileReader2.nextLong();
                                if ((strArr == null || ArrayUtils.contains(strArr, entry.iface)) && ((i2 == -1 || i2 == entry.uid) && (i3 == -1 || i3 == entry.tag))) {
                                    networkStats.addValues(entry);
                                }
                                procFileReader2.finishLine();
                                i4 = iNextInt;
                            } catch (NullPointerException | NumberFormatException e2) {
                                e = e2;
                                i4 = iNextInt;
                                throw new ProtocolException("problem parsing idx " + i4, e);
                            }
                        }
                        IoUtils.closeQuietly(procFileReader2);
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        return networkStats;
                    } catch (Throwable th) {
                        th = th;
                        procFileReader = procFileReader2;
                        IoUtils.closeQuietly(procFileReader);
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        throw th;
                    }
                } catch (NullPointerException e3) {
                    e = e3;
                } catch (NumberFormatException e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (NullPointerException e5) {
            e = e5;
        } catch (NumberFormatException e6) {
            e = e6;
        }
    }

    public static native int nativeReadNetworkStatsDetail(NetworkStats networkStats, String str, int i2, String[] strArr, int i3);

    public static void noteStackedIface(String str, String str2) {
        ArrayMap<String, String> arrayMap = sStackedIfaces;
        synchronized (arrayMap) {
            try {
                if (str2 != null) {
                    arrayMap.put(str, str2);
                } else {
                    arrayMap.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private NetworkStats readNetworkStatsDetailInternal(int i2, String[] strArr, int i3, NetworkStats networkStats) throws IOException {
        if (networkStats != null) {
            networkStats.setElapsedRealtime(SystemClock.elapsedRealtime());
        } else {
            networkStats = new NetworkStats(SystemClock.elapsedRealtime(), -1);
        }
        if (nativeReadNetworkStatsDetail(networkStats, this.mStatsXtUid.getAbsolutePath(), i2, strArr, i3) == 0) {
            return networkStats;
        }
        throw new IOException("Failed to parse network stats");
    }

    public void assertEquals(NetworkStats networkStats, NetworkStats networkStats2) {
        if (networkStats.size() != networkStats2.size()) {
            throw new AssertionError("Expected size " + networkStats.size() + ", actual size " + networkStats2.size());
        }
        NetworkStats.Entry values = null;
        NetworkStats.Entry values2 = null;
        for (int i2 = 0; i2 < networkStats.size(); i2++) {
            values = networkStats.getValues(i2, values);
            values2 = networkStats2.getValues(i2, values2);
            if (!values.equals(values2)) {
                throw new AssertionError("Expected row " + i2 + ": " + values + ", actual row " + values2);
            }
        }
    }

    public NetworkStats readNetworkStatsDetail() {
        return readNetworkStatsDetail(-1, null, -1, null);
    }

    public NetworkStats readNetworkStatsSummaryDev() throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        NetworkStats networkStats = new NetworkStats(SystemClock.elapsedRealtime(), 6);
        NetworkStats.Entry entry = new NetworkStats.Entry();
        ProcFileReader procFileReader = null;
        try {
            try {
                ProcFileReader procFileReader2 = new ProcFileReader(new FileInputStream(this.mStatsXtIfaceAll));
                while (procFileReader2.hasMoreData()) {
                    try {
                        entry.iface = procFileReader2.nextString();
                        entry.uid = -1;
                        entry.set = -1;
                        entry.tag = 0;
                        boolean z2 = procFileReader2.nextInt() != 0;
                        entry.rxBytes = procFileReader2.nextLong();
                        entry.rxPackets = procFileReader2.nextLong();
                        entry.txBytes = procFileReader2.nextLong();
                        entry.txPackets = procFileReader2.nextLong();
                        if (z2) {
                            entry.rxBytes += procFileReader2.nextLong();
                            entry.rxPackets += procFileReader2.nextLong();
                            entry.txBytes += procFileReader2.nextLong();
                            entry.txPackets += procFileReader2.nextLong();
                        }
                        networkStats.addValues(entry);
                        procFileReader2.finishLine();
                    } catch (NullPointerException e2) {
                        e = e2;
                        throw new ProtocolException("problem parsing stats", e);
                    } catch (NumberFormatException e3) {
                        e = e3;
                        throw new ProtocolException("problem parsing stats", e);
                    } catch (Throwable th) {
                        th = th;
                        procFileReader = procFileReader2;
                        IoUtils.closeQuietly(procFileReader);
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        throw th;
                    }
                }
                IoUtils.closeQuietly(procFileReader2);
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                return networkStats;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (NullPointerException e4) {
            e = e4;
        } catch (NumberFormatException e5) {
            e = e5;
        }
    }

    public NetworkStats readNetworkStatsSummaryXt() throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        ProcFileReader procFileReader = null;
        if (!this.mStatsXtIfaceFmt.exists()) {
            return null;
        }
        NetworkStats networkStats = new NetworkStats(SystemClock.elapsedRealtime(), 6);
        NetworkStats.Entry entry = new NetworkStats.Entry();
        try {
            try {
                ProcFileReader procFileReader2 = new ProcFileReader(new FileInputStream(this.mStatsXtIfaceFmt));
                try {
                    procFileReader2.finishLine();
                    while (procFileReader2.hasMoreData()) {
                        entry.iface = procFileReader2.nextString();
                        entry.uid = -1;
                        entry.set = -1;
                        entry.tag = 0;
                        entry.rxBytes = procFileReader2.nextLong();
                        entry.rxPackets = procFileReader2.nextLong();
                        entry.txBytes = procFileReader2.nextLong();
                        entry.txPackets = procFileReader2.nextLong();
                        networkStats.addValues(entry);
                        procFileReader2.finishLine();
                    }
                    IoUtils.closeQuietly(procFileReader2);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    return networkStats;
                } catch (NullPointerException e2) {
                    e = e2;
                    throw new ProtocolException("problem parsing stats", e);
                } catch (NumberFormatException e3) {
                    e = e3;
                    throw new ProtocolException("problem parsing stats", e);
                } catch (Throwable th) {
                    th = th;
                    procFileReader = procFileReader2;
                    IoUtils.closeQuietly(procFileReader);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (NullPointerException e4) {
            e = e4;
        } catch (NumberFormatException e5) {
            e = e5;
        }
    }

    public NetworkStatsFactory(File file) {
        this.mStatsXtIfaceAll = new File(file, "net/xt_qtaguid/iface_stat_all");
        this.mStatsXtIfaceFmt = new File(file, "net/xt_qtaguid/iface_stat_fmt");
        this.mStatsXtUid = new File(file, "net/xt_qtaguid/stats");
    }

    public NetworkStats readNetworkStatsDetail(int i2, String[] strArr, int i3, NetworkStats networkStats) throws IOException {
        ArrayMap arrayMap;
        String str;
        NetworkStats networkStatsDetailInternal = readNetworkStatsDetailInternal(i2, strArr, i3, networkStats);
        ArrayMap<String, String> arrayMap2 = sStackedIfaces;
        synchronized (arrayMap2) {
            arrayMap = new ArrayMap(arrayMap2);
        }
        NetworkStats networkStats2 = new NetworkStats(0L, arrayMap.size());
        NetworkStats.Entry values = null;
        for (int i4 = 0; i4 < networkStatsDetailInternal.size(); i4++) {
            values = networkStatsDetailInternal.getValues(i4, values);
            String str2 = values.iface;
            if (str2 != null && str2.startsWith(CLATD_INTERFACE_PREFIX) && (str = (String) arrayMap.get(values.iface)) != null) {
                NetworkStats.Entry entry = new NetworkStats.Entry(str, 0, 0, 0, 0L, 0L, 0L, 0L, 0L);
                long j2 = entry.rxBytes;
                long j3 = values.rxBytes;
                long j4 = values.rxPackets;
                entry.rxBytes = j2 - ((j4 * 20) + j3);
                long j5 = entry.txBytes;
                long j6 = values.txBytes;
                long j7 = values.txPackets;
                entry.txBytes = j5 - ((j7 * 20) + j6);
                entry.rxPackets -= j4;
                entry.txPackets -= j7;
                networkStats2.combineValues(entry);
                values.rxBytes = values.rxPackets * 20;
                values.txBytes = values.txPackets * 20;
                values.rxPackets = 0L;
                values.txPackets = 0L;
                networkStatsDetailInternal.combineValues(values);
            }
        }
        networkStatsDetailInternal.combineAllValues(networkStats2);
        return networkStatsDetailInternal;
    }
}
