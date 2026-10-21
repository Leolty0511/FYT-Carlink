package com.android.server.wifi;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiNetworkSuggestion;
import android.util.LocalLog;
import android.util.Log;
import com.android.server.wifi.util.ScanResultUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class NetworkSuggestionEvaluator implements WifiNetworkSelector.NetworkEvaluator {
    private static final String TAG = "NetworkSuggestionEvaluator";
    private final LocalLog mLocalLog;
    private final WifiConfigManager mWifiConfigManager;
    private final WifiNetworkSuggestionsManager mWifiNetworkSuggestionsManager;

    NetworkSuggestionEvaluator(WifiNetworkSuggestionsManager networkSuggestionsManager, WifiConfigManager wifiConfigManager, LocalLog localLog) {
        this.mWifiNetworkSuggestionsManager = networkSuggestionsManager;
        this.mWifiConfigManager = wifiConfigManager;
        this.mLocalLog = localLog;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public void update(List<ScanDetail> scanDetails) {
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public WifiConfiguration evaluateNetworks(List<ScanDetail> scanDetails, WifiConfiguration currentNetwork, String currentBssid, boolean connected, boolean untrustedNetworkAllowed, WifiNetworkSelector.NetworkEvaluator.OnConnectableListener onConnectableListener) {
        MatchMetaInfo matchMetaInfo = new MatchMetaInfo();
        for (int i = 0; i < scanDetails.size(); i++) {
            ScanDetail scanDetail = scanDetails.get(i);
            ScanResult scanResult = scanDetail.getScanResult();
            if (this.mWifiConfigManager.wasEphemeralNetworkDeleted(ScanResultUtil.createQuotedSSID(scanResult.SSID))) {
                this.mLocalLog.log("Ignoring disabled ephemeral SSID: " + WifiNetworkSelector.toScanId(scanResult));
            } else {
                Set<WifiNetworkSuggestion> matchingNetworkSuggestions = this.mWifiNetworkSuggestionsManager.getNetworkSuggestionsForScanDetail(scanDetail);
                if (matchingNetworkSuggestions != null && !matchingNetworkSuggestions.isEmpty()) {
                    WifiNetworkSuggestion matchingNetworkSuggestion = matchingNetworkSuggestions.stream().findAny().get();
                    WifiConfiguration wCmConfiguredNetwork = this.mWifiConfigManager.getConfiguredNetwork(matchingNetworkSuggestion.wifiConfiguration.configKey());
                    if (wCmConfiguredNetwork != null && !wCmConfiguredNetwork.getNetworkSelectionStatus().isNetworkEnabled() && !this.mWifiConfigManager.tryEnableNetwork(wCmConfiguredNetwork.networkId)) {
                        this.mLocalLog.log("Ignoring blacklisted network: " + WifiNetworkSelector.toNetworkString(wCmConfiguredNetwork));
                    } else {
                        matchMetaInfo.putAll(matchingNetworkSuggestions, wCmConfiguredNetwork, scanDetail);
                    }
                }
            }
        }
        if (matchMetaInfo.isEmpty()) {
            this.mLocalLog.log("did not see any matching network suggestions.");
            return null;
        }
        PerNetworkSuggestionMatchMetaInfo candidate = matchMetaInfo.findConnectableNetworksAndPickBest(onConnectableListener);
        if (candidate == null) {
            Log.wtf(TAG, "Unexepectedly got null");
            return null;
        }
        return candidate.wCmConfiguredNetwork;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WifiConfiguration addCandidateToWifiConfigManager(WifiConfiguration wifiConfiguration, int uid, String packageName) {
        wifiConfiguration.ephemeral = true;
        wifiConfiguration.fromWifiNetworkSuggestion = true;
        NetworkUpdateResult result = this.mWifiConfigManager.addOrUpdateNetwork(wifiConfiguration, uid, packageName);
        if (!result.isSuccess()) {
            this.mLocalLog.log("Failed to add network suggestion");
            return null;
        }
        if (!this.mWifiConfigManager.updateNetworkSelectionStatus(result.getNetworkId(), 0)) {
            this.mLocalLog.log("Failed to make network suggestion selectable");
            return null;
        }
        int candidateNetworkId = result.getNetworkId();
        return this.mWifiConfigManager.getConfiguredNetwork(candidateNetworkId);
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public int getId() {
        return 1;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public String getName() {
        return TAG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PerNetworkSuggestionMatchMetaInfo {
        public final ScanDetail matchingScanDetail;
        public WifiConfiguration wCmConfiguredNetwork;
        public final WifiNetworkSuggestion wifiNetworkSuggestion;

        PerNetworkSuggestionMatchMetaInfo(@Nullable WifiNetworkSuggestion wifiNetworkSuggestion, WifiConfiguration wCmConfiguredNetwork, ScanDetail matchingScanDetail) {
            this.wifiNetworkSuggestion = wifiNetworkSuggestion;
            this.wCmConfiguredNetwork = wCmConfiguredNetwork;
            this.matchingScanDetail = matchingScanDetail;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PerAppMatchMetaInfo {
        public final List<PerNetworkSuggestionMatchMetaInfo> networkInfos;

        private PerAppMatchMetaInfo() {
            this.networkInfos = new ArrayList();
        }

        public void put(WifiNetworkSuggestion wifiNetworkSuggestion, WifiConfiguration matchingWifiConfiguration, ScanDetail matchingScanDetail) {
            this.networkInfos.add(NetworkSuggestionEvaluator.this.new PerNetworkSuggestionMatchMetaInfo(wifiNetworkSuggestion, matchingWifiConfiguration, matchingScanDetail));
        }

        public List<PerNetworkSuggestionMatchMetaInfo> getHighestPriorityNetworks() {
            Map<Integer, List<PerNetworkSuggestionMatchMetaInfo>> matchedNetworkInfosPerPriority = (Map) this.networkInfos.stream().collect(Collectors.toMap(new Function() { // from class: com.android.server.wifi.-$$Lambda$NetworkSuggestionEvaluator$PerAppMatchMetaInfo$4zBwRelAVwggSH4KkLdQq5J6uMs
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(((NetworkSuggestionEvaluator.PerNetworkSuggestionMatchMetaInfo) obj).wifiNetworkSuggestion.wifiConfiguration.priority);
                }
            }, new Function() { // from class: com.android.server.wifi.-$$Lambda$NetworkSuggestionEvaluator$PerAppMatchMetaInfo$khFfqLX_xb2uyUA22cQFlT9-7kg
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Arrays.asList((NetworkSuggestionEvaluator.PerNetworkSuggestionMatchMetaInfo) obj);
                }
            }, new BinaryOperator() { // from class: com.android.server.wifi.-$$Lambda$NetworkSuggestionEvaluator$PerAppMatchMetaInfo$mD8YmurcoGoD9cAzMujxddjplZQ
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return NetworkSuggestionEvaluator.PerAppMatchMetaInfo.lambda$getHighestPriorityNetworks$2((List) obj, (List) obj2);
                }
            }));
            if (matchedNetworkInfosPerPriority.isEmpty()) {
                Log.wtf(NetworkSuggestionEvaluator.TAG, "Unexepectedly got empty");
                return Collections.EMPTY_LIST;
            }
            return matchedNetworkInfosPerPriority.get(Collections.max(matchedNetworkInfosPerPriority.keySet()));
        }

        static /* synthetic */ List lambda$getHighestPriorityNetworks$2(List v1, List v2) {
            List<PerNetworkSuggestionMatchMetaInfo> concatList = new ArrayList<>(v1);
            concatList.addAll(v2);
            return concatList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class MatchMetaInfo {
        private Map<String, PerAppMatchMetaInfo> mAppInfos;

        private MatchMetaInfo() {
            this.mAppInfos = new HashMap();
        }

        public void putAll(Set<WifiNetworkSuggestion> wifiNetworkSuggestions, WifiConfiguration wCmConfiguredNetwork, ScanDetail matchingScanDetail) {
            for (WifiNetworkSuggestion wifiNetworkSuggestion : wifiNetworkSuggestions) {
                PerAppMatchMetaInfo appInfo = this.mAppInfos.computeIfAbsent(wifiNetworkSuggestion.suggestorPackageName, new Function() { // from class: com.android.server.wifi.-$$Lambda$NetworkSuggestionEvaluator$MatchMetaInfo$O_WezJUquCddjLsk2y7MjVDnHbU
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return this.f$0.lambda$putAll$0$NetworkSuggestionEvaluator$MatchMetaInfo((String) obj);
                    }
                });
                appInfo.put(wifiNetworkSuggestion, wCmConfiguredNetwork, matchingScanDetail);
            }
        }

        public /* synthetic */ PerAppMatchMetaInfo lambda$putAll$0$NetworkSuggestionEvaluator$MatchMetaInfo(String k) {
            return new PerAppMatchMetaInfo();
        }

        public boolean isEmpty() {
            return this.mAppInfos.isEmpty();
        }

        public PerNetworkSuggestionMatchMetaInfo findConnectableNetworksAndPickBest(WifiNetworkSelector.NetworkEvaluator.OnConnectableListener onConnectableListener) {
            List<PerNetworkSuggestionMatchMetaInfo> allMatchedNetworkInfos = new ArrayList<>();
            for (PerAppMatchMetaInfo appInfo : this.mAppInfos.values()) {
                List<PerNetworkSuggestionMatchMetaInfo> matchedNetworkInfos = appInfo.getHighestPriorityNetworks();
                for (PerNetworkSuggestionMatchMetaInfo matchedNetworkInfo : matchedNetworkInfos) {
                    if (matchedNetworkInfo.wCmConfiguredNetwork == null) {
                        matchedNetworkInfo.wCmConfiguredNetwork = NetworkSuggestionEvaluator.this.addCandidateToWifiConfigManager(matchedNetworkInfo.wifiNetworkSuggestion.wifiConfiguration, matchedNetworkInfo.wifiNetworkSuggestion.suggestorUid, matchedNetworkInfo.wifiNetworkSuggestion.suggestorPackageName);
                        if (matchedNetworkInfo.wCmConfiguredNetwork != null) {
                            NetworkSuggestionEvaluator.this.mLocalLog.log(String.format("network suggestion candidate %s (new)", WifiNetworkSelector.toNetworkString(matchedNetworkInfo.wCmConfiguredNetwork)));
                        }
                    } else {
                        NetworkSuggestionEvaluator.this.mLocalLog.log(String.format("network suggestion candidate %s (existing)", WifiNetworkSelector.toNetworkString(matchedNetworkInfo.wCmConfiguredNetwork)));
                    }
                    allMatchedNetworkInfos.add(matchedNetworkInfo);
                    onConnectableListener.onConnectable(matchedNetworkInfo.matchingScanDetail, matchedNetworkInfo.wCmConfiguredNetwork, 0);
                }
            }
            PerNetworkSuggestionMatchMetaInfo networkInfo = allMatchedNetworkInfos.stream().max(Comparator.comparing(new Function() { // from class: com.android.server.wifi.-$$Lambda$NetworkSuggestionEvaluator$MatchMetaInfo$Z-5L6mK_zEDnbf0FAnqkVI8uBr0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(((NetworkSuggestionEvaluator.PerNetworkSuggestionMatchMetaInfo) obj).matchingScanDetail.getScanResult().level);
                }
            })).orElse(null);
            if (networkInfo == null) {
                Log.wtf(NetworkSuggestionEvaluator.TAG, "Unexepectedly got null");
                return null;
            }
            return networkInfo;
        }
    }
}
