package android.net;

import android.content.Context;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.server.NetworkManagementSocketTagger;
import dalvik.system.SocketTagger;
import java.net.DatagramSocket;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
public class TrafficStats {
    public static final long GB_IN_BYTES = 1073741824;
    public static final long KB_IN_BYTES = 1024;
    public static final long MB_IN_BYTES = 1048576;
    public static final long PB_IN_BYTES = 1125899906842624L;
    public static final int TAG_SYSTEM_APP = -251;
    public static final int TAG_SYSTEM_BACKUP = -253;
    public static final int TAG_SYSTEM_DHCP = -192;
    public static final int TAG_SYSTEM_DOWNLOAD = -255;
    public static final int TAG_SYSTEM_GPS = -188;
    public static final int TAG_SYSTEM_MEDIA = -254;
    public static final int TAG_SYSTEM_NEIGHBOR = -189;
    public static final int TAG_SYSTEM_NTP = -191;
    public static final int TAG_SYSTEM_PAC = -187;
    public static final int TAG_SYSTEM_PROBE = -190;
    public static final int TAG_SYSTEM_RESTORE = -252;
    public static final long TB_IN_BYTES = 1099511627776L;
    private static final int TYPE_RX_BYTES = 0;
    private static final int TYPE_RX_PACKETS = 1;
    private static final int TYPE_TCP_RX_PACKETS = 4;
    private static final int TYPE_TCP_TX_PACKETS = 5;
    private static final int TYPE_TX_BYTES = 2;
    private static final int TYPE_TX_PACKETS = 3;
    public static final int UID_REMOVED = -4;
    public static final int UID_TETHERING = -5;
    public static final int UNSUPPORTED = -1;
    private static NetworkStats sActiveProfilingStart;
    private static Object sProfilingLock = new Object();
    private static INetworkStatsService sStatsService;

    public static void clearThreadStatsTag() {
        NetworkManagementSocketTagger.setThreadSocketStatsTag(-1);
    }

    public static void clearThreadStatsUid() {
        NetworkManagementSocketTagger.setThreadSocketStatsUid(-1);
    }

    public static void closeQuietly(INetworkStatsSession iNetworkStatsSession) {
        if (iNetworkStatsSession != null) {
            try {
                iNetworkStatsSession.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static int getAndSetThreadStatsTag(int i2) {
        return NetworkManagementSocketTagger.setThreadSocketStatsTag(i2);
    }

    private static NetworkStats getDataLayerSnapshotForUid(Context context) {
        try {
            return getStatsService().getDataLayerSnapshotForUid(Process.myUid());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private static String[] getMobileIfaces() {
        try {
            return getStatsService().getMobileIfaces();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static long getMobileRxBytes() {
        long rxBytes = 0;
        for (String str : getMobileIfaces()) {
            rxBytes += getRxBytes(str);
        }
        return rxBytes;
    }

    public static long getMobileRxPackets() {
        long rxPackets = 0;
        for (String str : getMobileIfaces()) {
            rxPackets += getRxPackets(str);
        }
        return rxPackets;
    }

    public static long getMobileTcpRxPackets() {
        long j2 = 0;
        for (String str : getMobileIfaces()) {
            long jNativeGetIfaceStat = nativeGetIfaceStat(str, 4);
            if (jNativeGetIfaceStat != -1) {
                j2 += jNativeGetIfaceStat;
            }
        }
        return j2;
    }

    public static long getMobileTcpTxPackets() {
        long j2 = 0;
        for (String str : getMobileIfaces()) {
            long jNativeGetIfaceStat = nativeGetIfaceStat(str, 5);
            if (jNativeGetIfaceStat != -1) {
                j2 += jNativeGetIfaceStat;
            }
        }
        return j2;
    }

    public static long getMobileTxBytes() {
        long txBytes = 0;
        for (String str : getMobileIfaces()) {
            txBytes += getTxBytes(str);
        }
        return txBytes;
    }

    public static long getMobileTxPackets() {
        long txPackets = 0;
        for (String str : getMobileIfaces()) {
            txPackets += getTxPackets(str);
        }
        return txPackets;
    }

    public static long getRxBytes(String str) {
        return nativeGetIfaceStat(str, 0);
    }

    public static long getRxPackets(String str) {
        return nativeGetIfaceStat(str, 1);
    }

    private static synchronized INetworkStatsService getStatsService() {
        if (sStatsService == null) {
            sStatsService = INetworkStatsService.Stub.asInterface(ServiceManager.getService(Context.NETWORK_STATS_SERVICE));
        }
        return sStatsService;
    }

    public static int getThreadStatsTag() {
        return NetworkManagementSocketTagger.getThreadSocketStatsTag();
    }

    public static long getTotalRxBytes() {
        return nativeGetTotalStat(0);
    }

    public static long getTotalRxPackets() {
        return nativeGetTotalStat(1);
    }

    public static long getTotalTxBytes() {
        return nativeGetTotalStat(2);
    }

    public static long getTotalTxPackets() {
        return nativeGetTotalStat(3);
    }

    public static long getTxBytes(String str) {
        return nativeGetIfaceStat(str, 2);
    }

    public static long getTxPackets(String str) {
        return nativeGetIfaceStat(str, 3);
    }

    public static long getUidRxBytes(int i2) {
        int iMyUid = Process.myUid();
        if (iMyUid == 1000 || iMyUid == i2) {
            return nativeGetUidStat(i2, 0);
        }
        return -1L;
    }

    public static long getUidRxPackets(int i2) {
        int iMyUid = Process.myUid();
        if (iMyUid == 1000 || iMyUid == i2) {
            return nativeGetUidStat(i2, 1);
        }
        return -1L;
    }

    @Deprecated
    public static long getUidTcpRxBytes(int i2) {
        return -1L;
    }

    @Deprecated
    public static long getUidTcpRxSegments(int i2) {
        return -1L;
    }

    @Deprecated
    public static long getUidTcpTxBytes(int i2) {
        return -1L;
    }

    @Deprecated
    public static long getUidTcpTxSegments(int i2) {
        return -1L;
    }

    public static long getUidTxBytes(int i2) {
        int iMyUid = Process.myUid();
        if (iMyUid == 1000 || iMyUid == i2) {
            return nativeGetUidStat(i2, 2);
        }
        return -1L;
    }

    public static long getUidTxPackets(int i2) {
        int iMyUid = Process.myUid();
        if (iMyUid == 1000 || iMyUid == i2) {
            return nativeGetUidStat(i2, 3);
        }
        return -1L;
    }

    @Deprecated
    public static long getUidUdpRxBytes(int i2) {
        return -1L;
    }

    @Deprecated
    public static long getUidUdpRxPackets(int i2) {
        return -1L;
    }

    @Deprecated
    public static long getUidUdpTxBytes(int i2) {
        return -1L;
    }

    @Deprecated
    public static long getUidUdpTxPackets(int i2) {
        return -1L;
    }

    public static void incrementOperationCount(int i2) {
        incrementOperationCount(getThreadStatsTag(), i2);
    }

    private static native long nativeGetIfaceStat(String str, int i2);

    private static native long nativeGetTotalStat(int i2);

    private static native long nativeGetUidStat(int i2, int i3);

    public static void setThreadStatsTag(int i2) {
        NetworkManagementSocketTagger.setThreadSocketStatsTag(i2);
    }

    public static void setThreadStatsTagApp() {
        setThreadStatsTag(-251);
    }

    public static void setThreadStatsTagBackup() {
        setThreadStatsTag(-253);
    }

    public static void setThreadStatsTagRestore() {
        setThreadStatsTag(TAG_SYSTEM_RESTORE);
    }

    public static void setThreadStatsUid(int i2) {
        NetworkManagementSocketTagger.setThreadSocketStatsUid(i2);
    }

    public static void startDataProfiling(Context context) {
        synchronized (sProfilingLock) {
            if (sActiveProfilingStart != null) {
                throw new IllegalStateException("already profiling data");
            }
            sActiveProfilingStart = getDataLayerSnapshotForUid(context);
        }
    }

    public static NetworkStats stopDataProfiling(Context context) {
        NetworkStats networkStatsSubtract;
        synchronized (sProfilingLock) {
            if (sActiveProfilingStart == null) {
                throw new IllegalStateException("not profiling data");
            }
            networkStatsSubtract = NetworkStats.subtract(getDataLayerSnapshotForUid(context), sActiveProfilingStart, null, null);
            sActiveProfilingStart = null;
        }
        return networkStatsSubtract;
    }

    public static void tagDatagramSocket(DatagramSocket datagramSocket) {
        SocketTagger.get().tag(datagramSocket);
    }

    public static void tagSocket(Socket socket) {
        SocketTagger.get().tag(socket);
    }

    public static void untagDatagramSocket(DatagramSocket datagramSocket) {
        SocketTagger.get().untag(datagramSocket);
    }

    public static void untagSocket(Socket socket) {
        SocketTagger.get().untag(socket);
    }

    public static void incrementOperationCount(int i2, int i3) {
        try {
            getStatsService().incrementOperationCount(Process.myUid(), i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
