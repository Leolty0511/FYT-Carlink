package com.android.server.wifi;

import android.content.Context;
import android.database.ContentObserver;
import android.net.NetworkKey;
import android.net.NetworkScoreManager;
import android.net.NetworkScorerAppData;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiNetworkScoreCache;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.LocalLog;
import android.util.Log;
import com.android.server.wifi.util.ScanResultUtil;
import com.android.server.wifi.util.WifiPermissionsUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ScoredNetworkEvaluator implements WifiNetworkSelector.NetworkEvaluator {
    private final ContentObserver mContentObserver;
    private final LocalLog mLocalLog;
    private boolean mNetworkRecommendationsEnabled;
    private final NetworkScoreManager mNetworkScoreManager;
    private WifiNetworkScoreCache mScoreCache;
    private final WifiConfigManager mWifiConfigManager;
    private final WifiPermissionsUtil mWifiPermissionsUtil;
    private static final String TAG = "ScoredNetworkEvaluator";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    ScoredNetworkEvaluator(final Context context, Looper looper, final FrameworkFacade frameworkFacade, NetworkScoreManager networkScoreManager, WifiConfigManager wifiConfigManager, LocalLog localLog, WifiNetworkScoreCache wifiNetworkScoreCache, WifiPermissionsUtil wifiPermissionsUtil) {
        this.mScoreCache = wifiNetworkScoreCache;
        this.mWifiPermissionsUtil = wifiPermissionsUtil;
        this.mNetworkScoreManager = networkScoreManager;
        this.mWifiConfigManager = wifiConfigManager;
        this.mLocalLog = localLog;
        this.mContentObserver = new ContentObserver(new Handler(looper)) { // from class: com.android.server.wifi.ScoredNetworkEvaluator.1
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                ScoredNetworkEvaluator.this.mNetworkRecommendationsEnabled = frameworkFacade.getIntegerSetting(context, "network_recommendations_enabled", 0) == 1;
            }
        };
        frameworkFacade.registerContentObserver(context, Settings.Global.getUriFor("network_recommendations_enabled"), false, this.mContentObserver);
        this.mContentObserver.onChange(false);
        this.mLocalLog.log("ScoredNetworkEvaluator constructed. mNetworkRecommendationsEnabled: " + this.mNetworkRecommendationsEnabled);
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public void update(List<ScanDetail> scanDetails) {
        if (this.mNetworkRecommendationsEnabled) {
            updateNetworkScoreCache(scanDetails);
        }
    }

    private void updateNetworkScoreCache(List<ScanDetail> scanDetails) {
        ArrayList<NetworkKey> unscoredNetworks = new ArrayList<>();
        for (int i = 0; i < scanDetails.size(); i++) {
            ScanResult scanResult = scanDetails.get(i).getScanResult();
            NetworkKey networkKey = NetworkKey.createFromScanResult(scanResult);
            if (networkKey != null && this.mScoreCache.getScoredNetwork(networkKey) == null) {
                unscoredNetworks.add(networkKey);
            }
        }
        if (!unscoredNetworks.isEmpty() && activeScorerAllowedtoSeeScanResults()) {
            NetworkKey[] unscoredNetworkKeys = (NetworkKey[]) unscoredNetworks.toArray(new NetworkKey[unscoredNetworks.size()]);
            this.mNetworkScoreManager.requestScores(unscoredNetworkKeys);
        }
    }

    private boolean activeScorerAllowedtoSeeScanResults() {
        NetworkScorerAppData networkScorerAppData = this.mNetworkScoreManager.getActiveScorer();
        String packageName = this.mNetworkScoreManager.getActiveScorerPackage();
        if (networkScorerAppData == null || packageName == null) {
            return false;
        }
        int uid = networkScorerAppData.packageUid;
        try {
            this.mWifiPermissionsUtil.enforceCanAccessScanResults(packageName, uid);
            return true;
        } catch (SecurityException e) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ed  */
    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public WifiConfiguration evaluateNetworks(List<ScanDetail> scanDetails, WifiConfiguration currentNetwork, String currentBssid, boolean connected, boolean untrustedNetworkAllowed, WifiNetworkSelector.NetworkEvaluator.OnConnectableListener onConnectableListener) {
        if (!this.mNetworkRecommendationsEnabled) {
            this.mLocalLog.log("Skipping evaluateNetworks; Network recommendations disabled.");
            return null;
        }
        ScoreTracker scoreTracker = new ScoreTracker();
        for (int i = 0; i < scanDetails.size(); i++) {
            ScanDetail scanDetail = scanDetails.get(i);
            ScanResult scanResult = scanDetail.getScanResult();
            if (scanResult != null) {
                if (this.mWifiConfigManager.wasEphemeralNetworkDeleted(ScanResultUtil.createQuotedSSID(scanResult.SSID))) {
                    debugLog("Ignoring disabled ephemeral SSID: " + scanResult.SSID);
                } else {
                    WifiConfiguration configuredNetwork = this.mWifiConfigManager.getConfiguredNetworkForScanDetailAndCache(scanDetail);
                    boolean isCurrentNetwork = true;
                    boolean untrustedScanResult = configuredNetwork == null || !configuredNetwork.trusted;
                    if (untrustedNetworkAllowed || !untrustedScanResult) {
                        if (configuredNetwork == null) {
                            if (ScanResultUtil.isScanResultForOpenNetwork(scanResult)) {
                                scoreTracker.trackUntrustedCandidate(scanDetail);
                            }
                        } else if (!configuredNetwork.autoJoin) {
                            debugLog("Ignoring not autoJoin SSID: " + configuredNetwork.SSID);
                        } else if (!configuredNetwork.trusted || configuredNetwork.useExternalScores) {
                            if (configuredNetwork.getNetworkSelectionStatus().isNetworkEnabled()) {
                                if (currentNetwork != null && currentNetwork.networkId == configuredNetwork.networkId) {
                                    if (!TextUtils.equals(currentBssid, scanResult.BSSID)) {
                                    }
                                    if (!configuredNetwork.trusted) {
                                        scoreTracker.trackUntrustedCandidate(scanResult, configuredNetwork, isCurrentNetwork);
                                    } else {
                                        scoreTracker.trackExternallyScoredCandidate(scanResult, configuredNetwork, isCurrentNetwork);
                                    }
                                    onConnectableListener.onConnectable(scanDetail, configuredNetwork, 0);
                                }
                                isCurrentNetwork = false;
                                if (!configuredNetwork.trusted) {
                                    scoreTracker.trackUntrustedCandidate(scanResult, configuredNetwork, isCurrentNetwork);
                                } else {
                                    scoreTracker.trackExternallyScoredCandidate(scanResult, configuredNetwork, isCurrentNetwork);
                                }
                                onConnectableListener.onConnectable(scanDetail, configuredNetwork, 0);
                            } else {
                                debugLog("Ignoring disabled SSID: " + configuredNetwork.SSID);
                            }
                        }
                    }
                }
            }
        }
        return scoreTracker.getCandidateConfiguration(onConnectableListener);
    }

    class ScoreTracker {
        private static final int EXTERNAL_SCORED_NONE = 0;
        private static final int EXTERNAL_SCORED_SAVED_NETWORK = 1;
        private static final int EXTERNAL_SCORED_UNTRUSTED_NETWORK = 2;
        private WifiConfiguration mEphemeralConfig;
        private WifiConfiguration mSavedConfig;
        private ScanDetail mScanDetailCandidate;
        private ScanResult mScanResultCandidate;
        private int mBestCandidateType = 0;
        private int mHighScore = -128;

        ScoreTracker() {
        }

        private Integer getNetworkScore(ScanResult scanResult, boolean isCurrentNetwork) {
            if (ScoredNetworkEvaluator.this.mScoreCache.isScoredNetwork(scanResult)) {
                int score = ScoredNetworkEvaluator.this.mScoreCache.getNetworkScore(scanResult, isCurrentNetwork);
                if (ScoredNetworkEvaluator.DEBUG) {
                    ScoredNetworkEvaluator.this.mLocalLog.log(WifiNetworkSelector.toScanId(scanResult) + " has score: " + score + " isCurrentNetwork network: " + isCurrentNetwork);
                }
                return Integer.valueOf(score);
            }
            return null;
        }

        void trackUntrustedCandidate(ScanDetail scanDetail) {
            ScanResult scanResult = scanDetail.getScanResult();
            Integer score = getNetworkScore(scanResult, false);
            if (score != null && score.intValue() > this.mHighScore) {
                this.mHighScore = score.intValue();
                this.mScanResultCandidate = scanResult;
                this.mScanDetailCandidate = scanDetail;
                this.mBestCandidateType = 2;
                ScoredNetworkEvaluator.this.debugLog(WifiNetworkSelector.toScanId(scanResult) + " becomes the new untrusted candidate.");
            }
        }

        void trackUntrustedCandidate(ScanResult scanResult, WifiConfiguration config, boolean isCurrentNetwork) {
            Integer score = getNetworkScore(scanResult, isCurrentNetwork);
            if (score != null && score.intValue() > this.mHighScore) {
                this.mHighScore = score.intValue();
                this.mScanResultCandidate = scanResult;
                this.mScanDetailCandidate = null;
                this.mBestCandidateType = 2;
                this.mEphemeralConfig = config;
                ScoredNetworkEvaluator.this.mWifiConfigManager.setNetworkCandidateScanResult(config.networkId, scanResult, 0);
                ScoredNetworkEvaluator.this.debugLog(WifiNetworkSelector.toScanId(scanResult) + " becomes the new untrusted candidate.");
            }
        }

        void trackExternallyScoredCandidate(ScanResult scanResult, WifiConfiguration config, boolean isCurrentNetwork) {
            Integer score = getNetworkScore(scanResult, isCurrentNetwork);
            if (score != null) {
                if (score.intValue() > this.mHighScore || (this.mBestCandidateType == 2 && score.intValue() == this.mHighScore)) {
                    this.mHighScore = score.intValue();
                    this.mSavedConfig = config;
                    this.mScanResultCandidate = scanResult;
                    this.mScanDetailCandidate = null;
                    this.mBestCandidateType = 1;
                    ScoredNetworkEvaluator.this.mWifiConfigManager.setNetworkCandidateScanResult(config.networkId, scanResult, 0);
                    ScoredNetworkEvaluator.this.debugLog(WifiNetworkSelector.toScanId(scanResult) + " becomes the new externally scored saved network candidate.");
                }
            }
        }

        WifiConfiguration getCandidateConfiguration(WifiNetworkSelector.NetworkEvaluator.OnConnectableListener onConnectableListener) {
            ScanDetail scanDetail;
            int candidateNetworkId = -1;
            int i = this.mBestCandidateType;
            if (i == 1) {
                candidateNetworkId = this.mSavedConfig.networkId;
                ScoredNetworkEvaluator.this.mLocalLog.log(String.format("new saved network candidate %s network ID:%d", WifiNetworkSelector.toScanId(this.mScanResultCandidate), Integer.valueOf(candidateNetworkId)));
            } else if (i != 2) {
                ScoredNetworkEvaluator.this.mLocalLog.log("ScoredNetworkEvaluator did not see any good candidates.");
            } else {
                WifiConfiguration wifiConfiguration = this.mEphemeralConfig;
                if (wifiConfiguration != null) {
                    candidateNetworkId = wifiConfiguration.networkId;
                    ScoredNetworkEvaluator.this.mLocalLog.log(String.format("existing ephemeral candidate %s network ID:%d, meteredHint=%b", WifiNetworkSelector.toScanId(this.mScanResultCandidate), Integer.valueOf(candidateNetworkId), Boolean.valueOf(this.mEphemeralConfig.meteredHint)));
                } else {
                    this.mEphemeralConfig = ScanResultUtil.createNetworkFromScanResult(this.mScanResultCandidate);
                    WifiConfiguration wifiConfiguration2 = this.mEphemeralConfig;
                    wifiConfiguration2.ephemeral = true;
                    wifiConfiguration2.trusted = false;
                    wifiConfiguration2.meteredHint = ScoredNetworkEvaluator.this.mScoreCache.getMeteredHint(this.mScanResultCandidate);
                    NetworkUpdateResult result = ScoredNetworkEvaluator.this.mWifiConfigManager.addOrUpdateNetwork(this.mEphemeralConfig, 1010);
                    if (!result.isSuccess()) {
                        ScoredNetworkEvaluator.this.mLocalLog.log("Failed to add ephemeral network");
                    } else if (!ScoredNetworkEvaluator.this.mWifiConfigManager.updateNetworkSelectionStatus(result.getNetworkId(), 0)) {
                        ScoredNetworkEvaluator.this.mLocalLog.log("Failed to make ephemeral network selectable");
                    } else {
                        candidateNetworkId = result.getNetworkId();
                        if (this.mScanDetailCandidate == null) {
                            Log.e(ScoredNetworkEvaluator.TAG, "mScanDetailCandidate is null!");
                        }
                        ScoredNetworkEvaluator.this.mWifiConfigManager.setNetworkCandidateScanResult(candidateNetworkId, this.mScanResultCandidate, 0);
                        ScoredNetworkEvaluator.this.mLocalLog.log(String.format("new ephemeral candidate %s network ID:%d, meteredHint=%b", WifiNetworkSelector.toScanId(this.mScanResultCandidate), Integer.valueOf(candidateNetworkId), Boolean.valueOf(this.mEphemeralConfig.meteredHint)));
                    }
                }
            }
            WifiConfiguration ans = ScoredNetworkEvaluator.this.mWifiConfigManager.getConfiguredNetwork(candidateNetworkId);
            if (ans != null && (scanDetail = this.mScanDetailCandidate) != null) {
                onConnectableListener.onConnectable(scanDetail, ans, 0);
            }
            return ans;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void debugLog(String msg) {
        if (DEBUG) {
            this.mLocalLog.log(msg);
        }
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public int getId() {
        return 4;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public String getName() {
        return TAG;
    }
}
