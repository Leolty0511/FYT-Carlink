package com.android.server.wifi.hotspot2;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.LocalLog;
import android.util.Pair;
import com.android.server.wifi.CarrierNetworkConfig;
import com.android.server.wifi.NetworkUpdateResult;
import com.android.server.wifi.ScanDetail;
import com.android.server.wifi.WifiConfigManager;
import com.android.server.wifi.WifiInjector;
import com.android.server.wifi.WifiNetworkSelector;
import com.android.server.wifi.util.ScanResultUtil;
import com.android.server.wifi.util.TelephonyUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class PasspointNetworkEvaluator implements WifiNetworkSelector.NetworkEvaluator {
    private static final String NAME = "PasspointNetworkEvaluator";
    private final CarrierNetworkConfig mCarrierNetworkConfig;
    private final LocalLog mLocalLog;
    private final PasspointManager mPasspointManager;
    private SubscriptionManager mSubscriptionManager;
    private TelephonyManager mTelephonyManager;
    private final WifiConfigManager mWifiConfigManager;
    private final WifiInjector mWifiInjector;

    private class PasspointNetworkCandidate {
        PasspointMatch mMatchStatus;
        PasspointProvider mProvider;
        ScanDetail mScanDetail;

        PasspointNetworkCandidate(PasspointProvider provider, PasspointMatch matchStatus, ScanDetail scanDetail) {
            this.mProvider = provider;
            this.mMatchStatus = matchStatus;
            this.mScanDetail = scanDetail;
        }
    }

    public PasspointNetworkEvaluator(PasspointManager passpointManager, WifiConfigManager wifiConfigManager, LocalLog localLog, CarrierNetworkConfig carrierNetworkConfig, WifiInjector wifiInjector, SubscriptionManager subscriptionManager) {
        this.mPasspointManager = passpointManager;
        this.mWifiConfigManager = wifiConfigManager;
        this.mLocalLog = localLog;
        this.mCarrierNetworkConfig = carrierNetworkConfig;
        this.mWifiInjector = wifiInjector;
        this.mSubscriptionManager = subscriptionManager;
    }

    private TelephonyManager getTelephonyManager() {
        if (this.mTelephonyManager == null) {
            this.mTelephonyManager = this.mWifiInjector.makeTelephonyManager();
        }
        return this.mTelephonyManager;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public int getId() {
        return 2;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public String getName() {
        return NAME;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public void update(List<ScanDetail> scanDetails) {
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public WifiConfiguration evaluateNetworks(List<ScanDetail> scanDetails, WifiConfiguration currentNetwork, String currentBssid, boolean connected, boolean untrustedNetworkAllowed, WifiNetworkSelector.NetworkEvaluator.OnConnectableListener onConnectableListener) {
        this.mPasspointManager.sweepCache();
        List<ScanDetail> filteredScanDetails = (List) scanDetails.stream().filter(new Predicate() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointNetworkEvaluator$GeomGkeNP2MEelBL59RV_0-T1M8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((ScanDetail) obj).getNetworkDetail().isInterworking();
            }
        }).filter(new Predicate() { // from class: com.android.server.wifi.hotspot2.-$$Lambda$PasspointNetworkEvaluator$sa28nwdP8m-GfetynNLsyMBO7E8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$evaluateNetworks$1$PasspointNetworkEvaluator((ScanDetail) obj);
            }
        }).collect(Collectors.toList());
        createEphemeralProfileForMatchingAp(filteredScanDetails);
        List<PasspointNetworkCandidate> candidateList = new ArrayList<>();
        for (ScanDetail scanDetail : filteredScanDetails) {
            ScanResult scanResult = scanDetail.getScanResult();
            Pair<PasspointProvider, PasspointMatch> bestProvider = this.mPasspointManager.matchProvider(scanResult);
            if (bestProvider != null && (!((PasspointProvider) bestProvider.first).isSimCredential() || TelephonyUtil.isSimPresent(this.mSubscriptionManager))) {
                candidateList.add(new PasspointNetworkCandidate((PasspointProvider) bestProvider.first, (PasspointMatch) bestProvider.second, scanDetail));
            }
        }
        if (candidateList.isEmpty()) {
            localLog("No suitable Passpoint network found");
            return null;
        }
        PasspointNetworkCandidate bestNetwork = findBestNetwork(candidateList, currentNetwork != null ? currentNetwork.SSID : null);
        if (currentNetwork != null && TextUtils.equals(currentNetwork.SSID, ScanResultUtil.createQuotedSSID(bestNetwork.mScanDetail.getSSID()))) {
            localLog("Staying with current Passpoint network " + currentNetwork.SSID);
            this.mWifiConfigManager.setNetworkCandidateScanResult(currentNetwork.networkId, bestNetwork.mScanDetail.getScanResult(), 0);
            this.mWifiConfigManager.updateScanDetailForNetwork(currentNetwork.networkId, bestNetwork.mScanDetail);
            onConnectableListener.onConnectable(bestNetwork.mScanDetail, currentNetwork, 0);
            return currentNetwork;
        }
        WifiConfiguration config = createWifiConfigForProvider(bestNetwork);
        if (config != null) {
            onConnectableListener.onConnectable(bestNetwork.mScanDetail, config, 0);
            localLog("Passpoint network to connect to: " + config.SSID);
        }
        return config;
    }

    public /* synthetic */ boolean lambda$evaluateNetworks$1$PasspointNetworkEvaluator(ScanDetail s) {
        if (!this.mWifiConfigManager.wasEphemeralNetworkDeleted(ScanResultUtil.createQuotedSSID(s.getScanResult().SSID))) {
            return true;
        }
        this.mLocalLog.log("Ignoring disabled the SSID of Passpoint AP: " + WifiNetworkSelector.toScanId(s.getScanResult()));
        return false;
    }

    private void createEphemeralProfileForMatchingAp(List<ScanDetail> filteredScanDetails) {
        PasspointConfiguration carrierConfig;
        TelephonyManager telephonyManager = getTelephonyManager();
        if (telephonyManager == null || TelephonyUtil.getCarrierType(telephonyManager) != 0 || !this.mCarrierNetworkConfig.isCarrierEncryptionInfoAvailable()) {
            return;
        }
        String mccMnc = telephonyManager.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId()).getSimOperator();
        if (this.mPasspointManager.hasCarrierProvider(mccMnc)) {
            return;
        }
        int eapMethod = this.mPasspointManager.findEapMethodFromNAIRealmMatchedWithCarrier(filteredScanDetails);
        if (!Utils.isCarrierEapMethod(eapMethod) || (carrierConfig = this.mPasspointManager.createEphemeralPasspointConfigForCarrier(eapMethod)) == null) {
            return;
        }
        this.mPasspointManager.installEphemeralPasspointConfigForCarrier(carrierConfig);
    }

    private WifiConfiguration createWifiConfigForProvider(PasspointNetworkCandidate networkInfo) {
        WifiConfiguration config = networkInfo.mProvider.getWifiConfig();
        config.SSID = ScanResultUtil.createQuotedSSID(networkInfo.mScanDetail.getSSID());
        if (networkInfo.mMatchStatus == PasspointMatch.HomeProvider) {
            config.isHomeProviderNetwork = true;
        }
        WifiConfiguration existingNetwork = this.mWifiConfigManager.getConfiguredNetwork(config.configKey());
        if (existingNetwork != null) {
            WifiConfiguration.NetworkSelectionStatus status = existingNetwork.getNetworkSelectionStatus();
            if (!status.isNetworkEnabled()) {
                boolean isSuccess = this.mWifiConfigManager.tryEnableNetwork(existingNetwork.networkId);
                if (isSuccess) {
                    return existingNetwork;
                }
                localLog("Current configuration for the Passpoint AP " + config.SSID + " is disabled, skip this candidate");
                return null;
            }
            return existingNetwork;
        }
        NetworkUpdateResult result = this.mWifiConfigManager.addOrUpdateNetwork(config, 1010);
        if (result.isSuccess()) {
            this.mWifiConfigManager.enableNetwork(result.getNetworkId(), false, 1010);
            this.mWifiConfigManager.setNetworkCandidateScanResult(result.getNetworkId(), networkInfo.mScanDetail.getScanResult(), 0);
            this.mWifiConfigManager.updateScanDetailForNetwork(result.getNetworkId(), networkInfo.mScanDetail);
            return this.mWifiConfigManager.getConfiguredNetwork(result.getNetworkId());
        }
        localLog("Failed to add passpoint network");
        return null;
    }

    private PasspointNetworkCandidate findBestNetwork(List<PasspointNetworkCandidate> networkList, String currentNetworkSsid) {
        PasspointNetworkCandidate bestCandidate = null;
        int bestScore = Integer.MIN_VALUE;
        for (PasspointNetworkCandidate candidate : networkList) {
            ScanDetail scanDetail = candidate.mScanDetail;
            PasspointMatch match = candidate.mMatchStatus;
            boolean isActiveNetwork = TextUtils.equals(currentNetworkSsid, ScanResultUtil.createQuotedSSID(scanDetail.getSSID()));
            int score = PasspointNetworkScore.calculateScore(match == PasspointMatch.HomeProvider, scanDetail, this.mPasspointManager.getANQPElements(scanDetail.getScanResult()), isActiveNetwork);
            if (score > bestScore) {
                bestCandidate = candidate;
                bestScore = score;
            }
        }
        localLog("Best Passpoint network " + bestCandidate.mScanDetail.getSSID() + " provided by " + bestCandidate.mProvider.getConfig().getHomeSp().getFqdn());
        return bestCandidate;
    }

    private void localLog(String log) {
        this.mLocalLog.log(log);
    }
}
