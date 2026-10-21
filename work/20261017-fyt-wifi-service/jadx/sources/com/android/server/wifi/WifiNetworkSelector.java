package com.android.server.wifi;

import android.R;
import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.LocalLog;
import android.util.Log;
import android.util.Pair;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.Preconditions;
import com.android.server.wifi.rtt.RttServiceImpl;
import com.android.server.wifi.util.ScanResultUtil;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WifiNetworkSelector {
    private static final int ID_PREFIX = 42;
    private static final int ID_SUFFIX_MOD = 1000000;
    private static final long INVALID_TIME_STAMP = Long.MIN_VALUE;

    @VisibleForTesting
    public static final int LAST_USER_SELECTION_DECAY_TO_ZERO_MS = 28800000;

    @VisibleForTesting
    public static final int LAST_USER_SELECTION_SUFFICIENT_MS = 30000;
    public static final int LEGACY_CANDIDATE_SCORER_EXP_ID = 0;

    @VisibleForTesting
    public static final int MINIMUM_NETWORK_SELECTION_INTERVAL_MS = 10000;
    private static final int MIN_SCORER_EXP_ID = 42000000;
    public static final String PRESET_CANDIDATE_SCORER_NAME = "CompatibilityScorer";
    private static final String TAG = "WifiNetworkSelector";

    @VisibleForTesting
    public static final int WIFI_POOR_SCORE = 40;
    private final Clock mClock;
    private final boolean mEnableAutoJoinWhenAssociated;
    private boolean mIsEnhancedOpenSupported;
    private final LocalLog mLocalLog;
    private final ScoringParams mScoringParams;
    private final int mStayOnNetworkMinimumRxRate;
    private final int mStayOnNetworkMinimumTxRate;
    private final WifiConfigManager mWifiConfigManager;
    private final WifiMetrics mWifiMetrics;
    private final WifiNative mWifiNative;
    private final WifiScoreCard mWifiScoreCard;
    private long mLastNetworkSelectionTimeStamp = INVALID_TIME_STAMP;
    private final List<Pair<ScanDetail, WifiConfiguration>> mConnectableNetworks = new ArrayList();
    private List<ScanDetail> mFilteredNetworks = new ArrayList();
    private final Map<String, WifiCandidates.CandidateScorer> mCandidateScorers = new ArrayMap();
    private boolean mIsEnhancedOpenSupportedInitialized = false;
    private final List<NetworkEvaluator> mEvaluators = new ArrayList(3);

    public interface NetworkEvaluator {
        public static final int EVALUATOR_ID_CARRIER = 3;
        public static final int EVALUATOR_ID_PASSPOINT = 2;
        public static final int EVALUATOR_ID_SAVED = 0;
        public static final int EVALUATOR_ID_SCORED = 4;
        public static final int EVALUATOR_ID_SUGGESTION = 1;

        @Retention(RetentionPolicy.SOURCE)
        public @interface EvaluatorId {
        }

        public interface OnConnectableListener {
            void onConnectable(ScanDetail scanDetail, WifiConfiguration wifiConfiguration, int i);
        }

        WifiConfiguration evaluateNetworks(List<ScanDetail> list, WifiConfiguration wifiConfiguration, String str, boolean z, boolean z2, OnConnectableListener onConnectableListener);

        int getId();

        String getName();

        void update(List<ScanDetail> list);
    }

    private void localLog(String log) {
        this.mLocalLog.log(log);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        this.mLocalLog.dump(fd, pw, args);
    }

    private boolean isCurrentNetworkSufficient(WifiInfo wifiInfo, List<ScanDetail> scanDetails) {
        if (wifiInfo.getSupplicantState() != SupplicantState.COMPLETED) {
            localLog("No current connected network.");
            return false;
        }
        localLog("Current connected network: " + wifiInfo.getSSID() + " , ID: " + wifiInfo.getNetworkId());
        int currentRssi = wifiInfo.getRssi();
        boolean hasQualifiedRssi = currentRssi > this.mScoringParams.getSufficientRssi(wifiInfo.getFrequency());
        boolean hasActiveStream = wifiInfo.txSuccessRate > ((double) this.mStayOnNetworkMinimumTxRate) || wifiInfo.rxSuccessRate > ((double) this.mStayOnNetworkMinimumRxRate);
        if (hasQualifiedRssi && hasActiveStream) {
            localLog("Stay on current network because of good RSSI and ongoing traffic");
            return true;
        }
        WifiConfiguration network = this.mWifiConfigManager.getConfiguredNetwork(wifiInfo.getNetworkId());
        if (network == null) {
            localLog("Current network was removed.");
            return false;
        }
        if (this.mWifiConfigManager.getLastSelectedNetwork() == network.networkId && this.mClock.getElapsedSinceBootMillis() - this.mWifiConfigManager.getLastSelectedTimeStamp() <= 30000) {
            localLog("Current network is recently user-selected.");
            return true;
        }
        if (network.osu) {
            return true;
        }
        if (wifiInfo.isEphemeral()) {
            localLog("Current network is an ephemeral one.");
            return false;
        }
        if (wifiInfo.is24GHz() && is5GHzNetworkAvailable(scanDetails)) {
            localLog("Current network is 2.4GHz. 5GHz networks available.");
            return false;
        }
        if (!hasQualifiedRssi) {
            localLog("Current network RSSI[" + currentRssi + "]-acceptable but not qualified.");
            return false;
        }
        if (WifiConfigurationUtil.isConfigForOpenNetwork(network)) {
            localLog("Current network is a open one.");
            return false;
        }
        if (network.numNoInternetAccessReports <= 0 || network.noInternetAccessExpected) {
            return true;
        }
        localLog("Current network has [" + network.numNoInternetAccessReports + "] no-internet access reports.");
        return false;
    }

    private boolean is5GHzNetworkAvailable(List<ScanDetail> scanDetails) {
        for (ScanDetail detail : scanDetails) {
            ScanResult result = detail.getScanResult();
            if (result.is5GHz()) {
                return true;
            }
        }
        return false;
    }

    private boolean isNetworkSelectionNeeded(List<ScanDetail> scanDetails, WifiInfo wifiInfo, boolean connected, boolean disconnected) {
        if (scanDetails.size() == 0) {
            localLog("Empty connectivity scan results. Skip network selection.");
            return false;
        }
        if (connected) {
            if (!this.mEnableAutoJoinWhenAssociated) {
                localLog("Switching networks in connected state is not allowed. Skip network selection.");
                return false;
            }
            if (this.mLastNetworkSelectionTimeStamp != INVALID_TIME_STAMP) {
                long gap = this.mClock.getElapsedSinceBootMillis() - this.mLastNetworkSelectionTimeStamp;
                if (gap < RttServiceImpl.HAL_AWARE_RANGING_TIMEOUT_MS) {
                    localLog("Too short since last network selection: " + gap + " ms. Skip network selection.");
                    return false;
                }
            }
            if (isCurrentNetworkSufficient(wifiInfo, scanDetails)) {
                localLog("Current connected network already sufficient. Skip network selection.");
                return false;
            }
            localLog("Current connected network is not sufficient.");
            return true;
        }
        if (disconnected) {
            return true;
        }
        localLog("ClientModeImpl is in neither CONNECTED nor DISCONNECTED state. Skip network selection.");
        return false;
    }

    public static String toScanId(ScanResult scanResult) {
        return scanResult == null ? "NULL" : String.format("%s:%s", scanResult.SSID, scanResult.BSSID);
    }

    public static String toNetworkString(WifiConfiguration network) {
        if (network == null) {
            return null;
        }
        return network.SSID + ":" + network.networkId;
    }

    public boolean isSignalTooWeak(ScanResult scanResult) {
        return scanResult.level < this.mScoringParams.getEntryRssi(scanResult.frequency);
    }

    private List<ScanDetail> filterScanResults(List<ScanDetail> scanDetails, HashSet<String> bssidBlacklist, boolean isConnected, String currentBssid) {
        new ArrayList();
        List<ScanDetail> validScanDetails = new ArrayList<>();
        StringBuffer noValidSsid = new StringBuffer();
        StringBuffer blacklistedBssid = new StringBuffer();
        StringBuffer lowRssi = new StringBuffer();
        boolean scanResultsHaveCurrentBssid = false;
        for (ScanDetail scanDetail : scanDetails) {
            ScanResult scanResult = scanDetail.getScanResult();
            if (TextUtils.isEmpty(scanResult.SSID)) {
                noValidSsid.append(scanResult.BSSID);
                noValidSsid.append(" / ");
            } else {
                if (scanResult.BSSID.equals(currentBssid)) {
                    scanResultsHaveCurrentBssid = true;
                }
                String scanId = toScanId(scanResult);
                if (bssidBlacklist.contains(scanResult.BSSID)) {
                    blacklistedBssid.append(scanId);
                    blacklistedBssid.append(" / ");
                } else if (isSignalTooWeak(scanResult)) {
                    lowRssi.append(scanId);
                    lowRssi.append("(");
                    lowRssi.append(scanResult.is24GHz() ? "2.4GHz" : "5GHz");
                    lowRssi.append(")");
                    lowRssi.append(scanResult.level);
                    lowRssi.append(" / ");
                } else {
                    validScanDetails.add(scanDetail);
                }
            }
        }
        if (isConnected && !scanResultsHaveCurrentBssid) {
            localLog("Current connected BSSID " + currentBssid + " is not in the scan results. Skip network selection.");
            validScanDetails.clear();
            return validScanDetails;
        }
        if (noValidSsid.length() != 0) {
            localLog("Networks filtered out due to invalid SSID: " + ((Object) noValidSsid));
        }
        if (blacklistedBssid.length() != 0) {
            localLog("Networks filtered out due to blacklist: " + ((Object) blacklistedBssid));
        }
        if (lowRssi.length() != 0) {
            localLog("Networks filtered out due to low signal strength: " + ((Object) lowRssi));
        }
        return validScanDetails;
    }

    private boolean isEnhancedOpenSupported() {
        if (this.mIsEnhancedOpenSupportedInitialized) {
            return this.mIsEnhancedOpenSupported;
        }
        this.mIsEnhancedOpenSupportedInitialized = true;
        WifiNative wifiNative = this.mWifiNative;
        this.mIsEnhancedOpenSupported = (wifiNative.getSupportedFeatureSet(wifiNative.getClientInterfaceName()) & 536870912) != 0;
        return this.mIsEnhancedOpenSupported;
    }

    public List<ScanDetail> getFilteredScanDetailsForOpenUnsavedNetworks() {
        List<ScanDetail> openUnsavedNetworks = new ArrayList<>();
        boolean enhancedOpenSupported = isEnhancedOpenSupported();
        for (ScanDetail scanDetail : this.mFilteredNetworks) {
            ScanResult scanResult = scanDetail.getScanResult();
            if (ScanResultUtil.isScanResultForOpenNetwork(scanResult) && (!ScanResultUtil.isScanResultForOweNetwork(scanResult) || enhancedOpenSupported)) {
                if (this.mWifiConfigManager.getConfiguredNetworkForScanDetailAndCache(scanDetail) == null) {
                    openUnsavedNetworks.add(scanDetail);
                }
            }
        }
        return openUnsavedNetworks;
    }

    public List<ScanDetail> getFilteredScanDetailsForCarrierUnsavedNetworks(CarrierNetworkConfig carrierConfig) {
        List<ScanDetail> carrierUnsavedNetworks = new ArrayList<>();
        for (ScanDetail scanDetail : this.mFilteredNetworks) {
            ScanResult scanResult = scanDetail.getScanResult();
            if (ScanResultUtil.isScanResultForEapNetwork(scanResult) && carrierConfig.isCarrierNetwork(scanResult.SSID) && this.mWifiConfigManager.getConfiguredNetworkForScanDetailAndCache(scanDetail) == null) {
                carrierUnsavedNetworks.add(scanDetail);
            }
        }
        return carrierUnsavedNetworks;
    }

    public List<Pair<ScanDetail, WifiConfiguration>> getConnectableScanDetails() {
        return this.mConnectableNetworks;
    }

    public boolean setUserConnectChoice(int netId) {
        localLog("userSelectNetwork: network ID=" + netId);
        WifiConfiguration selected = this.mWifiConfigManager.getConfiguredNetwork(netId);
        if (selected == null || selected.SSID == null) {
            localLog("userSelectNetwork: Invalid configuration with nid=" + netId);
            return false;
        }
        if (!selected.getNetworkSelectionStatus().isNetworkEnabled()) {
            this.mWifiConfigManager.updateNetworkSelectionStatus(netId, 0);
        }
        return setLegacyUserConnectChoice(selected);
    }

    private boolean setLegacyUserConnectChoice(WifiConfiguration selected) {
        boolean change = false;
        String key = selected.configKey();
        long currentTime = this.mClock.getWallClockMillis();
        List<WifiConfiguration> configuredNetworks = this.mWifiConfigManager.getConfiguredNetworks();
        for (WifiConfiguration network : configuredNetworks) {
            WifiConfiguration.NetworkSelectionStatus status = network.getNetworkSelectionStatus();
            if (network.networkId == selected.networkId) {
                if (status.getConnectChoice() != null) {
                    localLog("Remove user selection preference of " + status.getConnectChoice() + " Set Time: " + status.getConnectChoiceTimestamp() + " from " + network.SSID + " : " + network.networkId);
                    this.mWifiConfigManager.clearNetworkConnectChoice(network.networkId);
                    change = true;
                }
            } else if (status.getSeenInLastQualifiedNetworkSelection() && !key.equals(status.getConnectChoice())) {
                localLog("Add key: " + key + " Set Time: " + currentTime + " to " + toNetworkString(network));
                this.mWifiConfigManager.setNetworkConnectChoice(network.networkId, key, currentTime);
                change = true;
            }
        }
        return change;
    }

    private void updateConfiguredNetworks() {
        List<WifiConfiguration> configuredNetworks = this.mWifiConfigManager.getConfiguredNetworks();
        if (configuredNetworks.size() == 0) {
            localLog("No configured networks.");
            return;
        }
        StringBuffer sbuf = new StringBuffer();
        for (WifiConfiguration network : configuredNetworks) {
            this.mWifiConfigManager.tryEnableNetwork(network.networkId);
            this.mWifiConfigManager.clearNetworkCandidateScanResult(network.networkId);
            WifiConfiguration.NetworkSelectionStatus status = network.getNetworkSelectionStatus();
            if (!status.isNetworkEnabled()) {
                sbuf.append("  ");
                sbuf.append(toNetworkString(network));
                sbuf.append(" ");
                for (int index = 1; index < 15; index++) {
                    int count = status.getDisableReasonCounter(index);
                    if (count > 0) {
                        sbuf.append("reason=");
                        sbuf.append(WifiConfiguration.NetworkSelectionStatus.getNetworkDisableReasonString(index));
                        sbuf.append(", count=");
                        sbuf.append(count);
                        sbuf.append("; ");
                    }
                }
                sbuf.append("\n");
            }
        }
        if (sbuf.length() > 0) {
            localLog("Disabled configured networks:");
            localLog(sbuf.toString());
        }
    }

    private WifiConfiguration overrideCandidateWithUserConnectChoice(WifiConfiguration candidate) {
        WifiConfiguration tempConfig = (WifiConfiguration) Preconditions.checkNotNull(candidate);
        ScanResult scanResultCandidate = candidate.getNetworkSelectionStatus().getCandidate();
        while (tempConfig.getNetworkSelectionStatus().getConnectChoice() != null) {
            String key = tempConfig.getNetworkSelectionStatus().getConnectChoice();
            tempConfig = this.mWifiConfigManager.getConfiguredNetwork(key);
            if (tempConfig != null) {
                WifiConfiguration.NetworkSelectionStatus tempStatus = tempConfig.getNetworkSelectionStatus();
                if (tempStatus.getCandidate() != null && tempStatus.isNetworkEnabled()) {
                    scanResultCandidate = tempStatus.getCandidate();
                    candidate = tempConfig;
                }
            } else {
                localLog("Connect choice: " + key + " has no corresponding saved config.");
                break;
            }
        }
        if (candidate != candidate) {
            localLog("After user selection adjustment, the final candidate is:" + toNetworkString(candidate) + " : " + scanResultCandidate.BSSID);
            this.mWifiMetrics.setNominatorForNetwork(candidate.networkId, 8);
        }
        return candidate;
    }

    public WifiConfiguration selectNetwork(List<ScanDetail> scanDetails, HashSet<String> bssidBlacklist, WifiInfo wifiInfo, boolean connected, boolean disconnected, boolean untrustedNetworkAllowed) {
        int selectedNetworkId;
        int networkId;
        ScanDetail scanDetail;
        this.mFilteredNetworks.clear();
        this.mConnectableNetworks.clear();
        if (scanDetails.size() == 0) {
            localLog("Empty connectivity scan result");
            return null;
        }
        WifiConfiguration currentNetwork = this.mWifiConfigManager.getConfiguredNetwork(wifiInfo.getNetworkId());
        String currentBssid = wifiInfo.getBSSID();
        if (!isNetworkSelectionNeeded(scanDetails, wifiInfo, connected, disconnected)) {
            return null;
        }
        updateConfiguredNetworks();
        Iterator<NetworkEvaluator> it = this.mEvaluators.iterator();
        while (it.hasNext()) {
            it.next().update(scanDetails);
        }
        this.mFilteredNetworks = filterScanResults(scanDetails, bssidBlacklist, connected && wifiInfo.score >= 40, currentBssid);
        if (this.mFilteredNetworks.size() == 0) {
            return null;
        }
        final int lastUserSelectedNetworkId = this.mWifiConfigManager.getLastSelectedNetwork();
        final double lastSelectionWeight = calculateLastSelectionWeight();
        ArraySet<Integer> mNetworkIds = new ArraySet<>();
        WifiCandidates wifiCandidates = new WifiCandidates(this.mWifiScoreCard);
        if (currentNetwork != null) {
            wifiCandidates.setCurrent(currentNetwork.networkId, currentBssid);
        }
        WifiConfiguration selectedNetwork = null;
        for (final NetworkEvaluator registeredEvaluator : this.mEvaluators) {
            localLog("About to run " + registeredEvaluator.getName() + " :");
            final ArraySet<Integer> arraySet = mNetworkIds;
            WifiConfiguration selectedNetwork2 = selectedNetwork;
            final WifiCandidates wifiCandidates2 = wifiCandidates;
            WifiCandidates wifiCandidates3 = wifiCandidates;
            ArraySet<Integer> mNetworkIds2 = mNetworkIds;
            WifiConfiguration choice = registeredEvaluator.evaluateNetworks(new ArrayList(this.mFilteredNetworks), currentNetwork, currentBssid, connected, untrustedNetworkAllowed, new NetworkEvaluator.OnConnectableListener() { // from class: com.android.server.wifi.-$$Lambda$WifiNetworkSelector$Z7htivbXF5AzGeTh0ZNbtUXC_0Q
                @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator.OnConnectableListener
                public final void onConnectable(ScanDetail scanDetail2, WifiConfiguration wifiConfiguration, int i) {
                    this.f$0.lambda$selectNetwork$0$WifiNetworkSelector(arraySet, lastUserSelectedNetworkId, wifiCandidates2, registeredEvaluator, lastSelectionWeight, scanDetail2, wifiConfiguration, i);
                }
            });
            if (choice != null && !mNetworkIds2.contains(Integer.valueOf(choice.networkId))) {
                Log.wtf(TAG, registeredEvaluator.getName() + " failed to report choice with noConnectibleListener");
            }
            if (selectedNetwork2 == null && choice != null) {
                localLog(registeredEvaluator.getName() + " selects " + toNetworkString(choice));
                selectedNetwork = choice;
            } else {
                selectedNetwork = selectedNetwork2;
            }
            mNetworkIds = mNetworkIds2;
            wifiCandidates = wifiCandidates3;
        }
        WifiConfiguration selectedNetwork3 = selectedNetwork;
        WifiCandidates wifiCandidates4 = wifiCandidates;
        ArraySet<Integer> mNetworkIds3 = mNetworkIds;
        if (this.mConnectableNetworks.size() != wifiCandidates4.size()) {
            localLog("Connectable: " + this.mConnectableNetworks.size() + " Candidates: " + wifiCandidates4.size());
        }
        Collection<Collection<WifiCandidates.Candidate>> groupedCandidates = wifiCandidates4.getGroupedCandidates();
        for (Collection<WifiCandidates.Candidate> group : groupedCandidates) {
            WifiCandidates.Candidate best = null;
            for (WifiCandidates.Candidate candidate : group) {
                if (best == null || candidate.getEvaluatorId() < best.getEvaluatorId() || (candidate.getEvaluatorId() == best.getEvaluatorId() && candidate.getEvaluatorScore() > best.getEvaluatorScore())) {
                    best = candidate;
                }
            }
            if (best != null && (scanDetail = best.getScanDetail()) != null) {
                this.mWifiConfigManager.setNetworkCandidateScanResult(best.getNetworkConfigId(), scanDetail.getScanResult(), best.getEvaluatorScore());
            }
        }
        ArrayMap<Integer, Integer> experimentNetworkSelections = new ArrayMap<>();
        if (selectedNetwork3 == null) {
            selectedNetworkId = -1;
        } else {
            selectedNetworkId = selectedNetwork3.networkId;
        }
        int legacySelectedNetworkId = selectedNetworkId;
        boolean legacyOverrideWanted = true;
        WifiCandidates.CandidateScorer activeScorer = getActiveCandidateScorer();
        Iterator<WifiCandidates.CandidateScorer> it2 = this.mCandidateScorers.values().iterator();
        int selectedNetworkId2 = selectedNetworkId;
        while (it2.hasNext()) {
            WifiCandidates.CandidateScorer candidateScorer = it2.next();
            it2 = it2;
            wifiCandidates4 = wifiCandidates4;
            try {
                WifiCandidates.ScoredCandidate choice2 = wifiCandidates4.choose(candidateScorer);
                if (choice2.candidateKey == null) {
                    networkId = -1;
                } else {
                    networkId = choice2.candidateKey.networkId;
                }
                String chooses = " would choose ";
                if (candidateScorer == activeScorer) {
                    chooses = " chooses ";
                    legacyOverrideWanted = candidateScorer.userConnectChoiceOverrideWanted();
                    selectedNetworkId2 = networkId;
                }
                int selectedNetworkId3 = selectedNetworkId2;
                String id = candidateScorer.getIdentifier();
                int expid = experimentIdFromIdentifier(id);
                localLog(id + chooses + networkId + " score " + choice2.value + "+/-" + choice2.err + " expid " + expid);
                experimentNetworkSelections.put(Integer.valueOf(expid), Integer.valueOf(networkId));
                selectedNetworkId2 = selectedNetworkId3;
                legacyOverrideWanted = legacyOverrideWanted;
                selectedNetwork3 = selectedNetwork3;
                currentNetwork = currentNetwork;
                mNetworkIds3 = mNetworkIds3;
            } catch (RuntimeException e) {
                Log.wtf(TAG, "Exception running a CandidateScorer", e);
                selectedNetwork3 = selectedNetwork3;
                currentNetwork = currentNetwork;
                mNetworkIds3 = mNetworkIds3;
            }
        }
        int activeExperimentId = activeScorer == null ? 0 : experimentIdFromIdentifier(activeScorer.getIdentifier());
        experimentNetworkSelections.put(0, Integer.valueOf(legacySelectedNetworkId));
        for (Map.Entry<Integer, Integer> entry : experimentNetworkSelections.entrySet()) {
            int experimentId = entry.getKey().intValue();
            if (experimentId != activeExperimentId) {
                int thisSelectedNetworkId = entry.getValue().intValue();
                this.mWifiMetrics.logNetworkSelectionDecision(experimentId, activeExperimentId, selectedNetworkId2 == thisSelectedNetworkId, groupedCandidates.size());
                experimentNetworkSelections = experimentNetworkSelections;
            }
        }
        WifiConfiguration selectedNetwork4 = this.mWifiConfigManager.getConfiguredNetwork(selectedNetworkId2);
        if (selectedNetwork4 != null && legacyOverrideWanted) {
            WifiConfiguration selectedNetwork5 = overrideCandidateWithUserConnectChoice(selectedNetwork4);
            this.mLastNetworkSelectionTimeStamp = this.mClock.getElapsedSinceBootMillis();
            return selectedNetwork5;
        }
        return selectedNetwork4;
    }

    public /* synthetic */ void lambda$selectNetwork$0$WifiNetworkSelector(ArraySet mNetworkIds, int lastUserSelectedNetworkId, WifiCandidates wifiCandidates, NetworkEvaluator registeredEvaluator, double lastSelectionWeight, ScanDetail scanDetail, WifiConfiguration config, int score) {
        if (config != null) {
            this.mConnectableNetworks.add(Pair.create(scanDetail, config));
            mNetworkIds.add(Integer.valueOf(config.networkId));
            if (config.networkId == lastUserSelectedNetworkId) {
                wifiCandidates.add(scanDetail, config, registeredEvaluator.getId(), score, lastSelectionWeight);
            } else {
                wifiCandidates.add(scanDetail, config, registeredEvaluator.getId(), score);
            }
            this.mWifiMetrics.setNominatorForNetwork(config.networkId, evaluatorIdToNominatorId(registeredEvaluator.getId()));
        }
    }

    private static int evaluatorIdToNominatorId(int evaluatorId) {
        if (evaluatorId == 0) {
            return 2;
        }
        if (evaluatorId == 1) {
            return 3;
        }
        if (evaluatorId == 2) {
            return 4;
        }
        if (evaluatorId == 3) {
            return 5;
        }
        if (evaluatorId == 4) {
            return 6;
        }
        Log.e(TAG, "UnrecognizedEvaluatorId" + evaluatorId);
        return 0;
    }

    private double calculateLastSelectionWeight() {
        int lastUserSelectedNetworkId = this.mWifiConfigManager.getLastSelectedNetwork();
        if (lastUserSelectedNetworkId == -1) {
            return 0.0d;
        }
        double timeDifference = this.mClock.getElapsedSinceBootMillis() - this.mWifiConfigManager.getLastSelectedTimeStamp();
        double unclipped = 1.0d - (timeDifference / 2.88E7d);
        double lastSelectionWeight = Math.min(Math.max(unclipped, 0.0d), 1.0d);
        return lastSelectionWeight;
    }

    private WifiCandidates.CandidateScorer getActiveCandidateScorer() {
        int iExperimentIdFromIdentifier;
        WifiCandidates.CandidateScorer ans = this.mCandidateScorers.get(PRESET_CANDIDATE_SCORER_NAME);
        int overrideExperimentId = this.mScoringParams.getExperimentIdentifier();
        if (overrideExperimentId >= MIN_SCORER_EXP_ID) {
            for (WifiCandidates.CandidateScorer candidateScorer : this.mCandidateScorers.values()) {
                int expId = experimentIdFromIdentifier(candidateScorer.getIdentifier());
                if (expId == overrideExperimentId) {
                    ans = candidateScorer;
                    break;
                }
            }
        }
        if (ans == null) {
            Log.wtf(TAG, "CompatibilityScorer is not registered!");
        }
        WifiMetrics wifiMetrics = this.mWifiMetrics;
        if (ans == null) {
            iExperimentIdFromIdentifier = 0;
        } else {
            iExperimentIdFromIdentifier = experimentIdFromIdentifier(ans.getIdentifier());
        }
        wifiMetrics.setNetworkSelectorExperimentId(iExperimentIdFromIdentifier);
        return ans;
    }

    public void registerNetworkEvaluator(NetworkEvaluator evaluator) {
        this.mEvaluators.add((NetworkEvaluator) Preconditions.checkNotNull(evaluator));
    }

    public void registerCandidateScorer(WifiCandidates.CandidateScorer candidateScorer) {
        String name = ((WifiCandidates.CandidateScorer) Preconditions.checkNotNull(candidateScorer)).getIdentifier();
        if (name != null) {
            this.mCandidateScorers.put(name, candidateScorer);
        }
    }

    public void unregisterCandidateScorer(WifiCandidates.CandidateScorer candidateScorer) {
        String name = ((WifiCandidates.CandidateScorer) Preconditions.checkNotNull(candidateScorer)).getIdentifier();
        if (name != null) {
            this.mCandidateScorers.remove(name);
        }
    }

    public static int experimentIdFromIdentifier(String id) {
        int digits = ((int) (((long) id.hashCode()) & 2147483647L)) % ID_SUFFIX_MOD;
        return MIN_SCORER_EXP_ID + digits;
    }

    WifiNetworkSelector(Context context, WifiScoreCard wifiScoreCard, ScoringParams scoringParams, WifiConfigManager configManager, Clock clock, LocalLog localLog, WifiMetrics wifiMetrics, WifiNative wifiNative) {
        this.mWifiConfigManager = configManager;
        this.mClock = clock;
        this.mWifiScoreCard = wifiScoreCard;
        this.mScoringParams = scoringParams;
        this.mLocalLog = localLog;
        this.mWifiMetrics = wifiMetrics;
        this.mWifiNative = wifiNative;
        this.mEnableAutoJoinWhenAssociated = context.getResources().getBoolean(R.bool.config_cecSystemAudioModeMutingEnabled_allowed);
        this.mStayOnNetworkMinimumTxRate = context.getResources().getInteger(R.integer.config_motionPredictionOffsetNanos);
        this.mStayOnNetworkMinimumRxRate = context.getResources().getInteger(R.integer.config_mobile_mtu);
    }
}
