package com.android.server.wifi.aware;

import android.content.Context;
import android.hardware.wifi.V1_2.NanDataPathChannelInfo;
import android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback;
import android.net.IpPrefix;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.MacAddress;
import android.net.MatchAllNetworkSpecifier;
import android.net.NetworkAgent;
import android.net.NetworkCapabilities;
import android.net.NetworkFactory;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.NetworkSpecifier;
import android.net.RouteInfo;
import android.net.wifi.aware.TlvBufferUtils;
import android.net.wifi.aware.WifiAwareAgentNetworkSpecifier;
import android.net.wifi.aware.WifiAwareNetworkInfo;
import android.net.wifi.aware.WifiAwareNetworkSpecifier;
import android.net.wifi.aware.WifiAwareUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.Clock;
import com.android.server.wifi.rtt.RttServiceImpl;
import com.android.server.wifi.util.WifiPermissionsUtil;
import com.android.server.wifi.util.WifiPermissionsWrapper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.net.DatagramSocket;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.function.Function;
import java.util.stream.Collectors;
import libcore.util.HexEncoding;

/* JADX INFO: loaded from: classes.dex */
public class WifiAwareDataPathStateManager {

    @VisibleForTesting
    public static final int ADDRESS_VALIDATION_RETRY_INTERVAL_MS = 1000;

    @VisibleForTesting
    public static final int ADDRESS_VALIDATION_TIMEOUT_MS = 5000;
    private static final String AGENT_TAG_PREFIX = "WIFI_AWARE_AGENT_";
    private static final String AWARE_INTERFACE_PREFIX = "aware_data";
    private static final int NETWORK_FACTORY_BANDWIDTH_AVAIL = 1;
    private static final int NETWORK_FACTORY_SCORE_AVAIL = 1;
    private static final int NETWORK_FACTORY_SIGNAL_STRENGTH_AVAIL = 1;
    private static final String NETWORK_TAG = "WIFI_AWARE_FACTORY";
    private static final String TAG = "WifiAwareDataPathStMgr";
    private static final boolean VDBG = false;
    private static final NetworkCapabilities sNetworkCapabilitiesFilter = new NetworkCapabilities();
    private WifiAwareMetrics mAwareMetrics;
    private final Clock mClock;
    private Context mContext;
    private Handler mHandler;
    private Looper mLooper;
    private final WifiAwareStateManager mMgr;
    private WifiAwareNetworkFactory mNetworkFactory;
    public INetworkManagementService mNwService;
    private WifiPermissionsWrapper mPermissionsWrapper;
    private WifiPermissionsUtil mWifiPermissionsUtil;
    boolean mDbg = false;
    public NetworkInterfaceWrapper mNiWrapper = new NetworkInterfaceWrapper();
    private final Set<String> mInterfaces = new HashSet();
    private final Map<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> mNetworkRequestsCache = new ArrayMap();
    boolean mAllowNdpResponderFromAnyOverride = false;

    public WifiAwareDataPathStateManager(WifiAwareStateManager mgr, Clock clock) {
        this.mMgr = mgr;
        this.mClock = clock;
    }

    public void start(Context context, Looper looper, WifiAwareMetrics awareMetrics, WifiPermissionsUtil wifiPermissionsUtil, WifiPermissionsWrapper permissionsWrapper) {
        this.mContext = context;
        this.mAwareMetrics = awareMetrics;
        this.mWifiPermissionsUtil = wifiPermissionsUtil;
        this.mPermissionsWrapper = permissionsWrapper;
        this.mLooper = looper;
        this.mHandler = new Handler(this.mLooper);
        sNetworkCapabilitiesFilter.clearAll();
        sNetworkCapabilitiesFilter.addTransportType(5);
        sNetworkCapabilitiesFilter.addCapability(15).addCapability(11).addCapability(18).addCapability(20).addCapability(13).addCapability(14);
        sNetworkCapabilitiesFilter.setNetworkSpecifier(new MatchAllNetworkSpecifier());
        sNetworkCapabilitiesFilter.setLinkUpstreamBandwidthKbps(1);
        sNetworkCapabilitiesFilter.setLinkDownstreamBandwidthKbps(1);
        sNetworkCapabilitiesFilter.setSignalStrength(1);
        this.mNetworkFactory = new WifiAwareNetworkFactory(looper, context, sNetworkCapabilitiesFilter);
        this.mNetworkFactory.setScoreFilter(1);
        this.mNetworkFactory.register();
        IBinder b = ServiceManager.getService("network_management");
        this.mNwService = INetworkManagementService.Stub.asInterface(b);
    }

    private Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> getNetworkRequestByNdpId(int ndpId) {
        for (Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> entry : this.mNetworkRequestsCache.entrySet()) {
            if (entry.getValue().ndpId == ndpId) {
                return entry;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> getNetworkRequestByCanonicalDescriptor(CanonicalConnectionInfo cci) {
        for (Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> entry : this.mNetworkRequestsCache.entrySet()) {
            if (entry.getValue().getCanonicalDescriptor().matches(cci)) {
                return entry;
            }
        }
        return null;
    }

    public void createAllInterfaces() {
        if (this.mMgr.getCapabilities() == null) {
            Log.e(TAG, "createAllInterfaces: capabilities aren't initialized yet!");
            return;
        }
        for (int i = 0; i < this.mMgr.getCapabilities().maxNdiInterfaces; i++) {
            String name = AWARE_INTERFACE_PREFIX + i;
            if (this.mInterfaces.contains(name)) {
                Log.e(TAG, "createAllInterfaces(): interface already up, " + name + ", possibly failed to delete - deleting/creating again to be safe");
                this.mMgr.deleteDataPathInterface(name);
                this.mInterfaces.remove(name);
            }
            this.mMgr.createDataPathInterface(name);
        }
    }

    public void deleteAllInterfaces() {
        onAwareDownCleanupDataPaths();
        if (this.mMgr.getCapabilities() == null) {
            Log.e(TAG, "deleteAllInterfaces: capabilities aren't initialized yet!");
            return;
        }
        for (int i = 0; i < this.mMgr.getCapabilities().maxNdiInterfaces; i++) {
            String name = AWARE_INTERFACE_PREFIX + i;
            this.mMgr.deleteDataPathInterface(name);
        }
        this.mMgr.releaseAwareInterface();
    }

    public void onInterfaceCreated(String interfaceName) {
        if (this.mInterfaces.contains(interfaceName)) {
            Log.w(TAG, "onInterfaceCreated: already contains interface -- " + interfaceName);
        }
        this.mInterfaces.add(interfaceName);
    }

    public void onInterfaceDeleted(String interfaceName) {
        if (!this.mInterfaces.contains(interfaceName)) {
            Log.w(TAG, "onInterfaceDeleted: interface not on list -- " + interfaceName);
        }
        this.mInterfaces.remove(interfaceName);
    }

    public void onDataPathInitiateSuccess(WifiAwareNetworkSpecifier networkSpecifier, int ndpId) {
        AwareNetworkRequestInformation nnri = this.mNetworkRequestsCache.get(networkSpecifier);
        if (nnri == null) {
            Log.w(TAG, "onDataPathInitiateSuccess: network request not found for networkSpecifier=" + networkSpecifier);
            this.mMgr.endDataPath(ndpId);
            return;
        }
        if (nnri.state != 103) {
            Log.w(TAG, "onDataPathInitiateSuccess: network request in incorrect state: state=" + nnri.state);
            this.mNetworkRequestsCache.remove(networkSpecifier);
            declareUnfullfillableAndEndDp(nnri, ndpId);
            return;
        }
        nnri.state = ISupplicantStaIfaceCallback.StatusCode.MAF_LIMIT_EXCEEDED;
        nnri.ndpId = ndpId;
    }

    public void onDataPathInitiateFail(WifiAwareNetworkSpecifier networkSpecifier, int reason) {
        AwareNetworkRequestInformation nnri = this.mNetworkRequestsCache.remove(networkSpecifier);
        if (nnri == null) {
            Log.w(TAG, "onDataPathInitiateFail: network request not found for networkSpecifier=" + networkSpecifier);
            return;
        }
        this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
        if (nnri.state != 103) {
            Log.w(TAG, "onDataPathInitiateFail: network request in incorrect state: state=" + nnri.state);
        }
        this.mAwareMetrics.recordNdpStatus(reason, networkSpecifier.isOutOfBand(), nnri.startTimestamp);
    }

    public WifiAwareNetworkSpecifier onDataPathRequest(int pubSubId, byte[] mac, int ndpId, byte[] message) {
        WifiAwareNetworkSpecifier networkSpecifier;
        AwareNetworkRequestInformation nnri;
        Iterator<Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation>> it = this.mNetworkRequestsCache.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                networkSpecifier = null;
                nnri = null;
                break;
            }
            Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> entry = it.next();
            if (entry.getValue().pubSubId == 0 || entry.getValue().pubSubId == pubSubId) {
                if (entry.getValue().peerDiscoveryMac == null || Arrays.equals(entry.getValue().peerDiscoveryMac, mac)) {
                    if (entry.getValue().state == 104) {
                        WifiAwareNetworkSpecifier networkSpecifier2 = entry.getKey();
                        WifiAwareNetworkSpecifier networkSpecifier3 = networkSpecifier2;
                        AwareNetworkRequestInformation nnri2 = entry.getValue();
                        networkSpecifier = networkSpecifier3;
                        nnri = nnri2;
                        break;
                    }
                }
            }
        }
        Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> nnriE = getNetworkRequestByNdpId(ndpId);
        if (nnriE != null) {
            NetworkInformationData.ParsedResults peerServerInfo = NetworkInformationData.parseTlv(message);
            if (peerServerInfo != null) {
                if (peerServerInfo.port != 0) {
                    nnriE.getValue().peerPort = peerServerInfo.port;
                }
                if (peerServerInfo.transportProtocol != -1) {
                    nnriE.getValue().peerTransportProtocol = peerServerInfo.transportProtocol;
                }
                if (peerServerInfo.ipv6Override != null) {
                    nnriE.getValue().peerIpv6Override = peerServerInfo.ipv6Override;
                }
            }
            return null;
        }
        if (nnri == null) {
            Log.w(TAG, "onDataPathRequest: can't find a request with specified pubSubId=" + pubSubId + ", mac=" + String.valueOf(HexEncoding.encode(mac)));
            this.mMgr.respondToDataPathRequest(false, ndpId, "", null, null, null, false);
            return null;
        }
        if (nnri.peerDiscoveryMac == null) {
            nnri.peerDiscoveryMac = mac;
        }
        nnri.interfaceName = selectInterfaceForRequest(nnri);
        if (nnri.interfaceName == null) {
            Log.w(TAG, "onDataPathRequest: request " + networkSpecifier + " no interface available");
            this.mMgr.respondToDataPathRequest(false, ndpId, "", null, null, null, false);
            this.mNetworkRequestsCache.remove(networkSpecifier);
            this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
            return null;
        }
        nnri.state = ISupplicantStaIfaceCallback.StatusCode.ENABLEMENT_DENIED;
        nnri.ndpId = ndpId;
        nnri.startTimestamp = this.mClock.getElapsedSinceBootMillis();
        this.mMgr.respondToDataPathRequest(true, ndpId, nnri.interfaceName, nnri.networkSpecifier.pmk, nnri.networkSpecifier.passphrase, NetworkInformationData.buildTlv(nnri.networkSpecifier.port, nnri.networkSpecifier.transportProtocol), nnri.networkSpecifier.isOutOfBand());
        return networkSpecifier;
    }

    public void onRespondToDataPathRequest(int ndpId, boolean success, int reasonOnFailure) {
        WifiAwareNetworkSpecifier networkSpecifier = null;
        AwareNetworkRequestInformation nnri = null;
        for (Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> entry : this.mNetworkRequestsCache.entrySet()) {
            if (entry.getValue().ndpId == ndpId) {
                WifiAwareNetworkSpecifier networkSpecifier2 = entry.getKey();
                networkSpecifier = networkSpecifier2;
                AwareNetworkRequestInformation nnri2 = entry.getValue();
                nnri = nnri2;
                break;
            }
        }
        if (nnri == null) {
            Log.w(TAG, "onRespondToDataPathRequest: can't find a request with specified ndpId=" + ndpId);
            return;
        }
        if (!success) {
            Log.w(TAG, "onRespondToDataPathRequest: request " + networkSpecifier + " failed responding");
            this.mMgr.endDataPath(ndpId);
            this.mNetworkRequestsCache.remove(networkSpecifier);
            this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
            this.mAwareMetrics.recordNdpStatus(reasonOnFailure, networkSpecifier.isOutOfBand(), nnri.startTimestamp);
            return;
        }
        if (nnri.state != 105) {
            Log.w(TAG, "onRespondToDataPathRequest: request " + networkSpecifier + " is incorrect state=" + nnri.state);
            this.mMgr.endDataPath(ndpId);
            this.mNetworkRequestsCache.remove(networkSpecifier);
            this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
            return;
        }
        nnri.state = ISupplicantStaIfaceCallback.StatusCode.MAF_LIMIT_EXCEEDED;
    }

    public WifiAwareNetworkSpecifier onDataPathConfirm(int ndpId, byte[] mac, boolean accept, int reason, byte[] message, List<NanDataPathChannelInfo> channelInfo) {
        NetworkInformationData.ParsedResults peerServerInfo;
        Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> nnriE = getNetworkRequestByNdpId(ndpId);
        if (nnriE == null) {
            Log.w(TAG, "onDataPathConfirm: network request not found for ndpId=" + ndpId);
            if (accept) {
                this.mMgr.endDataPath(ndpId);
            }
            return null;
        }
        WifiAwareNetworkSpecifier networkSpecifier = nnriE.getKey();
        AwareNetworkRequestInformation nnri = nnriE.getValue();
        if (nnri.state != 101) {
            Log.w(TAG, "onDataPathConfirm: invalid state=" + nnri.state);
            this.mNetworkRequestsCache.remove(networkSpecifier);
            this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
            if (accept) {
                this.mMgr.endDataPath(ndpId);
            }
            return networkSpecifier;
        }
        if (!accept) {
            this.mNetworkRequestsCache.remove(networkSpecifier);
            this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
            this.mAwareMetrics.recordNdpStatus(reason, networkSpecifier.isOutOfBand(), nnri.startTimestamp);
            return networkSpecifier;
        }
        nnri.state = ISupplicantStaIfaceCallback.StatusCode.MCCA_TRACK_LIMIT_EXCEEDED;
        nnri.peerDataMac = mac;
        nnri.channelInfo = channelInfo;
        NetworkInfo networkInfo = new NetworkInfo(-1, 0, NETWORK_TAG, "");
        NetworkCapabilities networkCapabilities = new NetworkCapabilities(sNetworkCapabilitiesFilter);
        LinkProperties linkProperties = new LinkProperties();
        boolean interfaceUsedByAnotherNdp = isInterfaceUpAndUsedByAnotherNdp(nnri);
        if (!interfaceUsedByAnotherNdp) {
            try {
                this.mNwService.setInterfaceUp(nnri.interfaceName);
                this.mNwService.enableIpv6(nnri.interfaceName);
            } catch (Exception e) {
                Log.e(TAG, "onDataPathConfirm: ACCEPT nnri=" + nnri + ": can't configure network - " + e);
                declareUnfullfillableAndEndDp(nnri, ndpId);
                return networkSpecifier;
            }
        }
        if (nnri.networkSpecifier.role == 0 && (peerServerInfo = NetworkInformationData.parseTlv(message)) != null) {
            if (peerServerInfo.port != 0) {
                nnri.peerPort = peerServerInfo.port;
            }
            if (peerServerInfo.transportProtocol != -1) {
                nnri.peerTransportProtocol = peerServerInfo.transportProtocol;
            }
            if (peerServerInfo.ipv6Override != null) {
                nnri.peerIpv6Override = peerServerInfo.ipv6Override;
            }
        }
        try {
            if (nnri.peerIpv6Override == null) {
                nnri.peerIpv6 = Inet6Address.getByAddress((String) null, MacAddress.fromBytes(mac).getLinkLocalIpv6FromEui48Mac().getAddress(), NetworkInterface.getByName(nnri.interfaceName));
            } else {
                byte[] addr = {-2, -128, 0, 0, 0, 0, 0, 0, nnri.peerIpv6Override[0], nnri.peerIpv6Override[1], nnri.peerIpv6Override[2], nnri.peerIpv6Override[3], nnri.peerIpv6Override[4], nnri.peerIpv6Override[5], nnri.peerIpv6Override[6], nnri.peerIpv6Override[7]};
                nnri.peerIpv6 = Inet6Address.getByAddress((String) null, addr, NetworkInterface.getByName(nnri.interfaceName));
            }
        } catch (SocketException | UnknownHostException e2) {
            Log.e(TAG, "onDataPathConfirm: error obtaining scoped IPv6 address -- " + e2);
            nnri.peerIpv6 = null;
        }
        if (nnri.peerIpv6 != null) {
            networkCapabilities.setTransportInfo(new WifiAwareNetworkInfo(nnri.peerIpv6, nnri.peerPort, nnri.peerTransportProtocol));
        }
        if (this.mNiWrapper.configureAgentProperties(nnri, nnri.equivalentRequests, ndpId, networkInfo, networkCapabilities, linkProperties)) {
            nnri.networkAgent = new WifiAwareNetworkAgent(this.mLooper, this.mContext, AGENT_TAG_PREFIX + nnri.ndpId, new NetworkInfo(-1, 0, NETWORK_TAG, ""), networkCapabilities, linkProperties, 1, nnri);
            nnri.startValidationTimestamp = this.mClock.getElapsedSinceBootMillis();
            lambda$handleAddressValidation$0$WifiAwareDataPathStateManager(nnri, linkProperties, networkInfo, ndpId, networkSpecifier.isOutOfBand());
            return networkSpecifier;
        }
        declareUnfullfillableAndEndDp(nnri, ndpId);
        return networkSpecifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleAddressValidation, reason: merged with bridge method [inline-methods] */
    public void lambda$handleAddressValidation$0$WifiAwareDataPathStateManager(final AwareNetworkRequestInformation nnri, final LinkProperties linkProperties, final NetworkInfo networkInfo, final int ndpId, final boolean isOutOfBand) {
        if (this.mNiWrapper.isAddressUsable(linkProperties)) {
            this.mNiWrapper.sendAgentNetworkInfo(nnri.networkAgent, networkInfo);
            this.mAwareMetrics.recordNdpStatus(0, isOutOfBand, nnri.startTimestamp);
            nnri.startTimestamp = this.mClock.getElapsedSinceBootMillis();
            this.mAwareMetrics.recordNdpCreation(nnri.uid, this.mNetworkRequestsCache);
            return;
        }
        if (this.mClock.getElapsedSinceBootMillis() - nnri.startValidationTimestamp > RttServiceImpl.HAL_RANGING_TIMEOUT_MS) {
            Log.e(TAG, "Timed-out while waiting for IPv6 address to be usable");
            declareUnfullfillableAndEndDp(nnri, ndpId);
        } else {
            if (this.mDbg) {
                Log.d(TAG, "Failed address validation");
            }
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.wifi.aware.-$$Lambda$WifiAwareDataPathStateManager$_8Gs-2Y5ZqAGbeSGaJ_LndHzkxw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$handleAddressValidation$0$WifiAwareDataPathStateManager(nnri, linkProperties, networkInfo, ndpId, isOutOfBand);
                }
            }, 1000L);
        }
    }

    private void declareUnfullfillableAndEndDp(AwareNetworkRequestInformation nnri, int ndpId) {
        this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
        this.mMgr.endDataPath(ndpId);
        nnri.state = ISupplicantStaIfaceCallback.StatusCode.RESTRICTION_FROM_AUTHORIZED_GDB;
    }

    public void onDataPathEnd(int ndpId) {
        Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> nnriE = getNetworkRequestByNdpId(ndpId);
        if (nnriE == null) {
            return;
        }
        tearDownInterfaceIfPossible(nnriE.getValue());
        if (nnriE.getValue().state == 102 || nnriE.getValue().state == 106) {
            this.mAwareMetrics.recordNdpSessionDuration(nnriE.getValue().startTimestamp);
        }
        this.mNetworkRequestsCache.remove(nnriE.getKey());
        this.mNetworkFactory.tickleConnectivityIfWaiting();
    }

    public void onDataPathSchedUpdate(byte[] peerMac, List<Integer> ndpIds, List<NanDataPathChannelInfo> channelInfo) {
        Iterator<Integer> it = ndpIds.iterator();
        while (it.hasNext()) {
            int ndpId = it.next().intValue();
            Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> nnriE = getNetworkRequestByNdpId(ndpId);
            if (nnriE == null) {
                Log.e(TAG, "onDataPathSchedUpdate: ndpId=" + ndpId + " - not found");
            } else if (!Arrays.equals(peerMac, nnriE.getValue().peerDiscoveryMac)) {
                Log.e(TAG, "onDataPathSchedUpdate: ndpId=" + ndpId + ", report NMI=" + MacAddress.fromBytes(peerMac).toString() + " doesn't match NDP NMI=" + MacAddress.fromBytes(nnriE.getValue().peerDiscoveryMac).toString());
            } else {
                nnriE.getValue().channelInfo = channelInfo;
            }
        }
    }

    public void onAwareDownCleanupDataPaths() {
        Iterator<Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation>> it = this.mNetworkRequestsCache.entrySet().iterator();
        while (it.hasNext()) {
            tearDownInterfaceIfPossible(it.next().getValue());
            it.remove();
        }
    }

    public void handleDataPathTimeout(NetworkSpecifier networkSpecifier) {
        if (this.mDbg) {
            Log.v(TAG, "handleDataPathTimeout: networkSpecifier=" + networkSpecifier);
        }
        AwareNetworkRequestInformation nnri = this.mNetworkRequestsCache.remove(networkSpecifier);
        if (nnri == null) {
            if (this.mDbg) {
                Log.v(TAG, "handleDataPathTimeout: network request not found for networkSpecifier=" + networkSpecifier);
                return;
            }
            return;
        }
        this.mAwareMetrics.recordNdpStatus(1, nnri.networkSpecifier.isOutOfBand(), nnri.startTimestamp);
        this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
        this.mMgr.endDataPath(nnri.ndpId);
        nnri.state = ISupplicantStaIfaceCallback.StatusCode.RESTRICTION_FROM_AUTHORIZED_GDB;
    }

    private class WifiAwareNetworkFactory extends NetworkFactory {
        private boolean mWaitingForTermination;

        WifiAwareNetworkFactory(Looper looper, Context context, NetworkCapabilities filter) {
            super(looper, context, WifiAwareDataPathStateManager.NETWORK_TAG, filter);
            this.mWaitingForTermination = false;
        }

        public void tickleConnectivityIfWaiting() {
            if (this.mWaitingForTermination) {
                this.mWaitingForTermination = false;
                reevaluateAllRequests();
            }
        }

        public boolean acceptRequest(NetworkRequest request, int score) {
            if (!WifiAwareDataPathStateManager.this.mMgr.isUsageEnabled()) {
                return false;
            }
            if (WifiAwareDataPathStateManager.this.mInterfaces.isEmpty()) {
                Log.w(WifiAwareDataPathStateManager.TAG, "WifiAwareNetworkFactory.acceptRequest: request=" + request + " -- No Aware interfaces are up");
                return false;
            }
            NetworkSpecifier networkSpecifierBase = request.networkCapabilities.getNetworkSpecifier();
            if (!(networkSpecifierBase instanceof WifiAwareNetworkSpecifier)) {
                Log.w(WifiAwareDataPathStateManager.TAG, "WifiAwareNetworkFactory.acceptRequest: request=" + request + " - not a WifiAwareNetworkSpecifier");
                return false;
            }
            WifiAwareNetworkSpecifier networkSpecifier = (WifiAwareNetworkSpecifier) networkSpecifierBase;
            AwareNetworkRequestInformation nnri = (AwareNetworkRequestInformation) WifiAwareDataPathStateManager.this.mNetworkRequestsCache.get(networkSpecifier);
            if (nnri != null) {
                if (nnri.state != 106) {
                    return true;
                }
                this.mWaitingForTermination = true;
                return false;
            }
            AwareNetworkRequestInformation nnri2 = AwareNetworkRequestInformation.processNetworkSpecifier(request, networkSpecifier, WifiAwareDataPathStateManager.this.mMgr, WifiAwareDataPathStateManager.this.mWifiPermissionsUtil, WifiAwareDataPathStateManager.this.mPermissionsWrapper, WifiAwareDataPathStateManager.this.mAllowNdpResponderFromAnyOverride);
            if (nnri2 != null) {
                Map.Entry<WifiAwareNetworkSpecifier, AwareNetworkRequestInformation> primaryRequest = WifiAwareDataPathStateManager.this.getNetworkRequestByCanonicalDescriptor(nnri2.getCanonicalDescriptor());
                if (primaryRequest == null) {
                    WifiAwareDataPathStateManager.this.mNetworkRequestsCache.put(networkSpecifier, nnri2);
                    return true;
                }
                if (primaryRequest.getValue().state == 106) {
                    this.mWaitingForTermination = true;
                } else {
                    primaryRequest.getValue().updateToSupportNewRequest(request);
                }
                return false;
            }
            Log.e(WifiAwareDataPathStateManager.TAG, "WifiAwareNetworkFactory.acceptRequest: request=" + request + " - can't parse network specifier");
            releaseRequestAsUnfulfillableByAnyFactory(request);
            return false;
        }

        protected void needNetworkFor(NetworkRequest networkRequest, int score) {
            NetworkSpecifier networkSpecifierObj = networkRequest.networkCapabilities.getNetworkSpecifier();
            WifiAwareNetworkSpecifier networkSpecifier = null;
            if (networkSpecifierObj instanceof WifiAwareNetworkSpecifier) {
                networkSpecifier = (WifiAwareNetworkSpecifier) networkSpecifierObj;
            }
            AwareNetworkRequestInformation nnri = (AwareNetworkRequestInformation) WifiAwareDataPathStateManager.this.mNetworkRequestsCache.get(networkSpecifier);
            if (nnri == null) {
                Log.e(WifiAwareDataPathStateManager.TAG, "WifiAwareNetworkFactory.needNetworkFor: networkRequest=" + networkRequest + " not in cache!?");
                return;
            }
            if (nnri.state != 100) {
                return;
            }
            if (nnri.networkSpecifier.role == 0) {
                nnri.interfaceName = WifiAwareDataPathStateManager.this.selectInterfaceForRequest(nnri);
                if (nnri.interfaceName != null) {
                    WifiAwareDataPathStateManager.this.mMgr.initiateDataPathSetup(networkSpecifier, nnri.peerInstanceId, 0, WifiAwareDataPathStateManager.this.selectChannelForRequest(nnri), nnri.peerDiscoveryMac, nnri.interfaceName, nnri.networkSpecifier.pmk, nnri.networkSpecifier.passphrase, nnri.networkSpecifier.isOutOfBand(), null);
                    nnri.state = ISupplicantStaIfaceCallback.StatusCode.DENIED_DUE_TO_SPECTRUM_MANAGEMENT;
                    nnri.startTimestamp = WifiAwareDataPathStateManager.this.mClock.getElapsedSinceBootMillis();
                    return;
                }
                Log.w(WifiAwareDataPathStateManager.TAG, "needNetworkFor: request " + networkSpecifier + " no interface available");
                WifiAwareDataPathStateManager.this.mNetworkRequestsCache.remove(networkSpecifier);
                letAppKnowThatRequestsAreUnavailable(nnri);
                return;
            }
            nnri.state = ISupplicantStaIfaceCallback.StatusCode.ASSOC_DENIED_NO_VHT;
        }

        protected void releaseNetworkFor(NetworkRequest networkRequest) {
            NetworkSpecifier networkSpecifierObj = networkRequest.networkCapabilities.getNetworkSpecifier();
            WifiAwareNetworkSpecifier networkSpecifier = null;
            if (networkSpecifierObj instanceof WifiAwareNetworkSpecifier) {
                networkSpecifier = (WifiAwareNetworkSpecifier) networkSpecifierObj;
            }
            AwareNetworkRequestInformation nnri = (AwareNetworkRequestInformation) WifiAwareDataPathStateManager.this.mNetworkRequestsCache.get(networkSpecifier);
            if (nnri == null) {
                Log.e(WifiAwareDataPathStateManager.TAG, "WifiAwareNetworkFactory.releaseNetworkFor: networkRequest=" + networkRequest + " not in cache!?");
                return;
            }
            if (nnri.networkAgent != null) {
                return;
            }
            nnri.removeSupportForRequest(networkRequest);
            if (nnri.equivalentRequests.isEmpty()) {
                if (nnri.ndpId != 0) {
                    WifiAwareDataPathStateManager.this.mMgr.endDataPath(nnri.ndpId);
                    nnri.state = ISupplicantStaIfaceCallback.StatusCode.RESTRICTION_FROM_AUTHORIZED_GDB;
                } else {
                    WifiAwareDataPathStateManager.this.mNetworkRequestsCache.remove(networkSpecifier);
                    if (nnri.networkAgent != null) {
                        letAppKnowThatRequestsAreUnavailable(nnri);
                    }
                }
            }
        }

        void letAppKnowThatRequestsAreUnavailable(AwareNetworkRequestInformation nnri) {
            for (NetworkRequest nr : nnri.equivalentRequests) {
                releaseRequestAsUnfulfillableByAnyFactory(nr);
            }
        }
    }

    @VisibleForTesting
    public class WifiAwareNetworkAgent extends NetworkAgent {
        private AwareNetworkRequestInformation mAwareNetworkRequestInfo;
        private NetworkInfo mNetworkInfo;

        WifiAwareNetworkAgent(Looper looper, Context context, String logTag, NetworkInfo ni, NetworkCapabilities nc, LinkProperties lp, int score, AwareNetworkRequestInformation anri) {
            super(looper, context, logTag, ni, nc, lp, score);
            this.mNetworkInfo = ni;
            this.mAwareNetworkRequestInfo = anri;
        }

        protected void unwanted() {
            WifiAwareDataPathStateManager.this.mMgr.endDataPath(this.mAwareNetworkRequestInfo.ndpId);
            this.mAwareNetworkRequestInfo.state = ISupplicantStaIfaceCallback.StatusCode.RESTRICTION_FROM_AUTHORIZED_GDB;
        }

        void reconfigureAgentAsDisconnected() {
            this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, null, "");
            sendNetworkInfo(this.mNetworkInfo);
        }
    }

    private void tearDownInterfaceIfPossible(AwareNetworkRequestInformation nnri) {
        if (!TextUtils.isEmpty(nnri.interfaceName)) {
            boolean interfaceUsedByAnotherNdp = isInterfaceUpAndUsedByAnotherNdp(nnri);
            if (!interfaceUsedByAnotherNdp) {
                try {
                    this.mNwService.setInterfaceDown(nnri.interfaceName);
                } catch (Exception e) {
                    Log.e(TAG, "tearDownInterfaceIfPossible: nnri=" + nnri + ": can't bring interface down - " + e);
                }
            }
        }
        if (nnri.networkAgent == null) {
            this.mNetworkFactory.letAppKnowThatRequestsAreUnavailable(nnri);
        } else {
            nnri.networkAgent.reconfigureAgentAsDisconnected();
        }
    }

    private boolean isInterfaceUpAndUsedByAnotherNdp(AwareNetworkRequestInformation nri) {
        for (AwareNetworkRequestInformation lnri : this.mNetworkRequestsCache.values()) {
            if (lnri != nri && nri.interfaceName.equals(lnri.interfaceName) && (lnri.state == 102 || lnri.state == 106)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String selectInterfaceForRequest(AwareNetworkRequestInformation req) {
        SortedSet<String> potential = new TreeSet<>(this.mInterfaces);
        Set<String> used = new HashSet<>();
        for (AwareNetworkRequestInformation nnri : this.mNetworkRequestsCache.values()) {
            if (nnri != req && Arrays.equals(req.peerDiscoveryMac, nnri.peerDiscoveryMac)) {
                used.add(nnri.interfaceName);
            }
        }
        for (String ifName : potential) {
            if (!used.contains(ifName)) {
                return ifName;
            }
        }
        Log.e(TAG, "selectInterfaceForRequest: req=" + req + " - no interfaces available!");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int selectChannelForRequest(AwareNetworkRequestInformation req) {
        return 2437;
    }

    @VisibleForTesting
    public static class AwareNetworkRequestInformation {
        static final int STATE_CONFIRMED = 102;
        static final int STATE_IDLE = 100;
        static final int STATE_INITIATOR_WAIT_FOR_REQUEST_RESPONSE = 103;
        static final int STATE_RESPONDER_WAIT_FOR_REQUEST = 104;
        static final int STATE_RESPONDER_WAIT_FOR_RESPOND_RESPONSE = 105;
        static final int STATE_TERMINATING = 106;
        static final int STATE_WAIT_FOR_CONFIRM = 101;
        public List<NanDataPathChannelInfo> channelInfo;
        public String interfaceName;
        public WifiAwareNetworkAgent networkAgent;
        public WifiAwareNetworkSpecifier networkSpecifier;
        public byte[] peerDataMac;
        public Inet6Address peerIpv6;
        public int state;
        public int uid;
        public int pubSubId = 0;
        public int peerInstanceId = 0;
        public byte[] peerDiscoveryMac = null;
        public int ndpId = 0;
        public int peerPort = 0;
        public int peerTransportProtocol = -1;
        public byte[] peerIpv6Override = null;
        public long startTimestamp = 0;
        public long startValidationTimestamp = 0;
        public Set<NetworkRequest> equivalentRequests = new HashSet();

        void updateToSupportNewRequest(NetworkRequest ns) {
            if (this.equivalentRequests.add(ns) && this.state == 102) {
                WifiAwareNetworkAgent wifiAwareNetworkAgent = this.networkAgent;
                if (wifiAwareNetworkAgent == null) {
                    Log.wtf(WifiAwareDataPathStateManager.TAG, "updateToSupportNewRequest: null agent in CONFIRMED state!?");
                } else {
                    wifiAwareNetworkAgent.sendNetworkCapabilities(getNetworkCapabilities());
                }
            }
        }

        void removeSupportForRequest(NetworkRequest ns) {
            this.equivalentRequests.remove(ns);
        }

        private NetworkCapabilities getNetworkCapabilities() {
            NetworkCapabilities nc = new NetworkCapabilities(WifiAwareDataPathStateManager.sNetworkCapabilitiesFilter);
            nc.setNetworkSpecifier(new WifiAwareAgentNetworkSpecifier((WifiAwareNetworkSpecifier[]) ((List) this.equivalentRequests.stream().map(new Function() { // from class: com.android.server.wifi.aware.-$$Lambda$WifiAwareDataPathStateManager$AwareNetworkRequestInformation$39ENKv5hDa6RLtoJkAXWF8pVxAs
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((NetworkRequest) obj).networkCapabilities.getNetworkSpecifier();
                }
            }).collect(Collectors.toList())).toArray(new WifiAwareNetworkSpecifier[0])));
            Inet6Address inet6Address = this.peerIpv6;
            if (inet6Address != null) {
                nc.setTransportInfo(new WifiAwareNetworkInfo(inet6Address, this.peerPort, this.peerTransportProtocol));
            }
            return nc;
        }

        CanonicalConnectionInfo getCanonicalDescriptor() {
            return new CanonicalConnectionInfo(this.peerDiscoveryMac, this.networkSpecifier.pmk, this.networkSpecifier.sessionId, this.networkSpecifier.passphrase);
        }

        static AwareNetworkRequestInformation processNetworkSpecifier(NetworkRequest request, WifiAwareNetworkSpecifier ns, WifiAwareStateManager mgr, WifiPermissionsUtil wifiPermissionsUtil, WifiPermissionsWrapper permissionWrapper, boolean allowNdpResponderFromAnyOverride) {
            int pubSubId = 0;
            int peerInstanceId = 0;
            byte[] peerMac = ns.peerMac;
            if (ns.type < 0 || ns.type > 3) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + ", invalid 'type' value");
                return null;
            }
            if (ns.role != 0 && ns.role != 1) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- invalid 'role' value");
                return null;
            }
            if (ns.role == 0 && ns.type != 0 && ns.type != 2) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- invalid 'type' value for INITIATOR (only IB and OOB are permitted)");
                return null;
            }
            WifiAwareClientState client = mgr.getClient(ns.clientId);
            if (client == null) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- not client with this id -- clientId=" + ns.clientId);
                return null;
            }
            int uid = client.getUid();
            if (!allowNdpResponderFromAnyOverride && !wifiPermissionsUtil.isTargetSdkLessThan(client.getCallingPackage(), 28) && ns.type != 0 && ns.type != 2) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- no ANY specifications allowed for this API level");
                return null;
            }
            if (ns.port < 0 || ns.transportProtocol < -1) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- invalid port/transportProtocol");
                return null;
            }
            if (ns.port != 0 || ns.transportProtocol != -1) {
                if (ns.role != 1) {
                    Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- port/transportProtocol can only be specified on responder");
                    return null;
                }
                if (TextUtils.isEmpty(ns.passphrase) && ns.pmk == null) {
                    Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- port/transportProtocol can only be specified on secure ndp");
                    return null;
                }
            }
            if (ns.type == 0 || ns.type == 1) {
                WifiAwareDiscoverySessionState session = client.getSession(ns.sessionId);
                if (session == null) {
                    Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- no session with this id -- sessionId=" + ns.sessionId);
                    return null;
                }
                if ((session.isPublishSession() && ns.role != 1) || (!session.isPublishSession() && ns.role != 0)) {
                    Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- invalid role for session type");
                    return null;
                }
                if (ns.type == 0) {
                    int pubSubId2 = session.getPubSubId();
                    WifiAwareDiscoverySessionState.PeerInfo peerInfo = session.getPeerInfo(ns.peerId);
                    if (peerInfo == null) {
                        Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- no peer info associated with this peer id -- peerId=" + ns.peerId);
                        return null;
                    }
                    peerInstanceId = peerInfo.mInstanceId;
                    try {
                        peerMac = peerInfo.mMac;
                        if (peerMac != null && peerMac.length == 6) {
                            pubSubId = pubSubId2;
                        }
                        Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- invalid peer MAC address");
                        return null;
                    } catch (IllegalArgumentException e) {
                        Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns + " -- invalid peer MAC address -- e=" + e);
                        return null;
                    }
                }
            }
            if (ns.requestorUid != uid) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns.toString() + " -- UID mismatch to clientId's uid=" + uid);
                return null;
            }
            if (ns.pmk != null && ns.pmk.length != 0) {
                if (permissionWrapper.getUidPermission("android.permission.CONNECTIVITY_INTERNAL", ns.requestorUid) != 0) {
                    Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns.toString() + " -- UID doesn't have permission to use PMK API");
                    return null;
                }
            }
            if (!TextUtils.isEmpty(ns.passphrase) && !WifiAwareUtils.validatePassphrase(ns.passphrase)) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns.toString() + " -- invalid passphrase length: " + ns.passphrase.length());
                return null;
            }
            if (ns.pmk != null && !WifiAwareUtils.validatePmk(ns.pmk)) {
                Log.e(WifiAwareDataPathStateManager.TAG, "processNetworkSpecifier: networkSpecifier=" + ns.toString() + " -- invalid pmk length: " + ns.pmk.length);
                return null;
            }
            AwareNetworkRequestInformation nnri = new AwareNetworkRequestInformation();
            nnri.state = 100;
            nnri.uid = uid;
            nnri.pubSubId = pubSubId;
            nnri.peerInstanceId = peerInstanceId;
            nnri.peerDiscoveryMac = peerMac;
            nnri.networkSpecifier = ns;
            nnri.equivalentRequests.add(request);
            return nnri;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("AwareNetworkRequestInformation: ");
            sb.append("state=");
            sb.append(this.state);
            sb.append(", ns=");
            sb.append(this.networkSpecifier);
            sb.append(", uid=");
            sb.append(this.uid);
            sb.append(", interfaceName=");
            sb.append(this.interfaceName);
            sb.append(", pubSubId=");
            sb.append(this.pubSubId);
            sb.append(", peerInstanceId=");
            sb.append(this.peerInstanceId);
            sb.append(", peerDiscoveryMac=");
            byte[] bArr = this.peerDiscoveryMac;
            sb.append(bArr == null ? "" : String.valueOf(HexEncoding.encode(bArr)));
            sb.append(", ndpId=");
            sb.append(this.ndpId);
            sb.append(", peerDataMac=");
            byte[] bArr2 = this.peerDataMac;
            sb.append(bArr2 != null ? String.valueOf(HexEncoding.encode(bArr2)) : "");
            sb.append(", peerIpv6=");
            sb.append(this.peerIpv6);
            sb.append(", peerPort=");
            sb.append(this.peerPort);
            sb.append(", peerTransportProtocol=");
            sb.append(this.peerTransportProtocol);
            sb.append(", startTimestamp=");
            sb.append(this.startTimestamp);
            sb.append(", channelInfo=");
            sb.append(this.channelInfo);
            sb.append(", equivalentSpecifiers=[");
            for (NetworkRequest nr : this.equivalentRequests) {
                sb.append(nr.toString());
                sb.append(", ");
            }
            sb.append("]");
            return sb.toString();
        }
    }

    static class CanonicalConnectionInfo {
        public final String passphrase;
        public final byte[] peerDiscoveryMac;
        public final byte[] pmk;
        public final int sessionId;

        CanonicalConnectionInfo(byte[] peerDiscoveryMac, byte[] pmk, int sessionId, String passphrase) {
            this.peerDiscoveryMac = peerDiscoveryMac;
            this.pmk = pmk;
            this.sessionId = sessionId;
            this.passphrase = passphrase;
        }

        public boolean matches(CanonicalConnectionInfo other) {
            byte[] bArr = other.peerDiscoveryMac;
            return (bArr == null || Arrays.equals(this.peerDiscoveryMac, bArr)) && Arrays.equals(this.pmk, other.pmk) && TextUtils.equals(this.passphrase, other.passphrase) && (TextUtils.isEmpty(this.passphrase) || this.sessionId == other.sessionId);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("CanonicalConnectionInfo: [");
            sb.append("peerDiscoveryMac=");
            byte[] bArr = this.peerDiscoveryMac;
            sb.append(bArr == null ? "" : String.valueOf(HexEncoding.encode(bArr)));
            sb.append(", pmk=");
            sb.append(this.pmk == null ? "" : "*");
            sb.append(", sessionId=");
            sb.append(this.sessionId);
            sb.append(", passphrase=");
            sb.append(this.passphrase != null ? "*" : "");
            sb.append("]");
            return sb.toString();
        }
    }

    @VisibleForTesting
    public class NetworkInterfaceWrapper {
        public NetworkInterfaceWrapper() {
        }

        public boolean configureAgentProperties(AwareNetworkRequestInformation nnri, Set<NetworkRequest> networkRequests, int ndpId, NetworkInfo networkInfo, NetworkCapabilities networkCapabilities, LinkProperties linkProperties) {
            InetAddress linkLocal = null;
            try {
                NetworkInterface ni = NetworkInterface.getByName(nnri.interfaceName);
                if (ni == null) {
                    Log.e(WifiAwareDataPathStateManager.TAG, "onDataPathConfirm: ACCEPT nnri=" + nnri + ": can't get network interface (null)");
                    WifiAwareDataPathStateManager.this.mMgr.endDataPath(ndpId);
                    nnri.state = ISupplicantStaIfaceCallback.StatusCode.RESTRICTION_FROM_AUTHORIZED_GDB;
                    return false;
                }
                Enumeration<InetAddress> addresses = ni.getInetAddresses();
                while (addresses.hasMoreElements()) {
                    InetAddress ip = addresses.nextElement();
                    if ((ip instanceof Inet6Address) && ip.isLinkLocalAddress()) {
                        linkLocal = ip;
                        break;
                    }
                }
                if (linkLocal == null) {
                    Log.e(WifiAwareDataPathStateManager.TAG, "onDataPathConfirm: ACCEPT nnri=" + nnri + ": no link local addresses");
                    WifiAwareDataPathStateManager.this.mMgr.endDataPath(ndpId);
                    nnri.state = ISupplicantStaIfaceCallback.StatusCode.RESTRICTION_FROM_AUTHORIZED_GDB;
                    return false;
                }
                networkInfo.setIsAvailable(true);
                networkInfo.setDetailedState(NetworkInfo.DetailedState.CONNECTED, null, null);
                networkCapabilities.setNetworkSpecifier(new WifiAwareAgentNetworkSpecifier((WifiAwareNetworkSpecifier[]) ((List) networkRequests.stream().map(new Function() { // from class: com.android.server.wifi.aware.-$$Lambda$WifiAwareDataPathStateManager$NetworkInterfaceWrapper$5dfGOhPStI7PI7XT9E1QFwOyQdc
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((NetworkRequest) obj).networkCapabilities.getNetworkSpecifier();
                    }
                }).collect(Collectors.toList())).toArray(new WifiAwareNetworkSpecifier[0])));
                linkProperties.setInterfaceName(nnri.interfaceName);
                linkProperties.addLinkAddress(new LinkAddress(linkLocal, 64));
                linkProperties.addRoute(new RouteInfo(new IpPrefix("fe80::/64"), null, nnri.interfaceName));
                return true;
            } catch (SocketException e) {
                Log.e(WifiAwareDataPathStateManager.TAG, "onDataPathConfirm: ACCEPT nnri=" + nnri + ": can't get network interface - " + e);
                WifiAwareDataPathStateManager.this.mMgr.endDataPath(ndpId);
                nnri.state = ISupplicantStaIfaceCallback.StatusCode.RESTRICTION_FROM_AUTHORIZED_GDB;
                return false;
            }
        }

        public boolean isAddressUsable(LinkProperties linkProperties) {
            InetAddress address = linkProperties.getLinkAddresses().get(0).getAddress();
            DatagramSocket testDatagramSocket = null;
            try {
                try {
                    new DatagramSocket(0, address).close();
                    return true;
                } catch (SocketException e) {
                    if (WifiAwareDataPathStateManager.this.mDbg) {
                        Log.d(WifiAwareDataPathStateManager.TAG, "Can't create socket on address " + address + " -- " + e);
                    }
                    if (0 != 0) {
                        testDatagramSocket.close();
                    }
                    return false;
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    testDatagramSocket.close();
                }
                throw th;
            }
        }

        public void sendAgentNetworkInfo(WifiAwareNetworkAgent networkAgent, NetworkInfo networkInfo) {
            networkAgent.sendNetworkInfo(networkInfo);
        }
    }

    @VisibleForTesting
    public static class NetworkInformationData {
        static final int GENERIC_SERVICE_PROTOCOL_TYPE = 2;
        static final int IPV6_LL_TYPE = 0;
        static final int SERVICE_INFO_TYPE = 1;
        static final int SUB_TYPE_PORT = 0;
        static final int SUB_TYPE_TRANSPORT_PROTOCOL = 1;
        static final byte[] WFA_OUI = {80, 111, -102};

        public static byte[] buildTlv(int port, int transportProtocol) {
            if (port == 0 && transportProtocol == -1) {
                return null;
            }
            TlvBufferUtils.TlvConstructor tlvc = new TlvBufferUtils.TlvConstructor(1, 2);
            tlvc.setByteOrder(ByteOrder.LITTLE_ENDIAN);
            tlvc.allocate(20);
            tlvc.putRawByteArray(WFA_OUI);
            tlvc.putRawByte((byte) 2);
            if (port != 0) {
                tlvc.putShort(0, (short) port);
            }
            if (transportProtocol != -1) {
                tlvc.putByte(1, (byte) transportProtocol);
            }
            byte[] subTypes = tlvc.getArray();
            tlvc.allocate(20);
            tlvc.putByteArray(1, subTypes);
            return tlvc.getArray();
        }

        static class ParsedResults {
            public byte[] ipv6Override;
            public int port;
            public int transportProtocol;

            ParsedResults(int port, int transportProtocol, byte[] ipv6Override) {
                this.port = 0;
                this.transportProtocol = -1;
                this.ipv6Override = null;
                this.port = port;
                this.transportProtocol = transportProtocol;
                this.ipv6Override = ipv6Override;
            }
        }

        public static ParsedResults parseTlv(byte[] tlvs) {
            int port = 0;
            int transportProtocol = -1;
            byte[] ipv6Override = null;
            try {
                TlvBufferUtils.TlvIterable<TlvBufferUtils.TlvElement> tlvi = new TlvBufferUtils.TlvIterable(1, 2, tlvs);
                tlvi.setByteOrder(ByteOrder.LITTLE_ENDIAN);
                for (TlvBufferUtils.TlvElement tlve : tlvi) {
                    int i = tlve.type;
                    if (i == 0) {
                        if (tlve.length != 8) {
                            Log.e(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: invalid IPv6 TLV -- length: " + tlve.length);
                            return null;
                        }
                        ipv6Override = tlve.getRawData();
                    } else if (i != 1) {
                        Log.w(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: ignoring unknown T -- " + tlve.type);
                    } else {
                        Pair<Integer, Integer> serviceInfo = parseServiceInfoTlv(tlve.getRawData());
                        if (serviceInfo == null) {
                            return null;
                        }
                        port = ((Integer) serviceInfo.first).intValue();
                        transportProtocol = ((Integer) serviceInfo.second).intValue();
                    }
                }
                return new ParsedResults(port, transportProtocol, ipv6Override);
            } catch (Exception e) {
                Log.e(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: error parsing TLV -- " + e);
                return null;
            }
        }

        private static Pair<Integer, Integer> parseServiceInfoTlv(byte[] tlv) {
            int port = 0;
            int transportProtocol = -1;
            if (tlv.length < 4) {
                Log.e(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: invalid SERVICE_INFO_TYPE length");
                return null;
            }
            byte b = tlv[0];
            byte[] bArr = WFA_OUI;
            if (b != bArr[0] || tlv[1] != bArr[1] || tlv[2] != bArr[2]) {
                Log.e(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: unexpected OUI");
                return null;
            }
            if (tlv[3] != 2) {
                Log.e(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: invalid type -- " + ((int) tlv[3]));
                return null;
            }
            TlvBufferUtils.TlvIterable<TlvBufferUtils.TlvElement> subTlvi = new TlvBufferUtils.TlvIterable(1, 2, Arrays.copyOfRange(tlv, 4, tlv.length));
            subTlvi.setByteOrder(ByteOrder.LITTLE_ENDIAN);
            for (TlvBufferUtils.TlvElement subTlve : subTlvi) {
                int i = subTlve.type;
                if (i == 0) {
                    if (subTlve.length != 2) {
                        Log.e(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: invalid port TLV length -- " + subTlve.length);
                        return null;
                    }
                    port = subTlve.getShort();
                    if (port < 0) {
                        port += 65536;
                    }
                    if (port == 0) {
                        Log.e(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: invalid port " + port);
                        return null;
                    }
                } else if (i == 1) {
                    if (subTlve.length != 1) {
                        Log.e(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: invalid transport protocol TLV length -- " + subTlve.length);
                        return null;
                    }
                    transportProtocol = subTlve.getByte();
                    if (transportProtocol < 0) {
                        transportProtocol += 256;
                    }
                } else {
                    Log.w(WifiAwareDataPathStateManager.TAG, "NetworkInformationData: ignoring unknown SERVICE_INFO.T -- " + subTlve.type);
                }
            }
            return Pair.create(Integer.valueOf(port), Integer.valueOf(transportProtocol));
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("WifiAwareDataPathStateManager:");
        pw.println("  mInterfaces: " + this.mInterfaces);
        pw.println("  sNetworkCapabilitiesFilter: " + sNetworkCapabilitiesFilter);
        pw.println("  mNetworkRequestsCache: " + this.mNetworkRequestsCache);
        pw.println("  mNetworkFactory:");
        this.mNetworkFactory.dump(fd, pw, args);
    }
}
