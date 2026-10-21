package com.android.server.wifi;

import android.R;
import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.telephony.SubscriptionManager;
import android.util.LocalLog;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.util.TelephonyUtil;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SavedNetworkEvaluator implements WifiNetworkSelector.NetworkEvaluator {

    @VisibleForTesting
    public static final int LAST_SELECTION_AWARD_DECAY_MSEC = 60000;
    private static final String NAME = "SavedNetworkEvaluator";
    private final int mBand5GHzAward;
    private final Clock mClock;
    private final WifiConnectivityHelper mConnectivityHelper;
    private final int mLastSelectionAward;
    private final LocalLog mLocalLog;
    private final int mRssiScoreOffset;
    private final int mRssiScoreSlope;
    private final int mSameBssidAward;
    private final int mSameNetworkAward;
    private final ScoringParams mScoringParams;
    private final int mSecurityAward;
    private final SubscriptionManager mSubscriptionManager;
    private boolean mVerboseLoggingEnabled = false;
    private final WifiConfigManager mWifiConfigManager;

    SavedNetworkEvaluator(Context context, ScoringParams scoringParams, WifiConfigManager configManager, Clock clock, LocalLog localLog, WifiConnectivityHelper connectivityHelper, SubscriptionManager subscriptionManager) {
        this.mScoringParams = scoringParams;
        this.mWifiConfigManager = configManager;
        this.mClock = clock;
        this.mLocalLog = localLog;
        this.mConnectivityHelper = connectivityHelper;
        this.mSubscriptionManager = subscriptionManager;
        this.mRssiScoreSlope = context.getResources().getInteger(R.integer.config_maxScanTasksForHomeVisibility);
        this.mRssiScoreOffset = context.getResources().getInteger(R.integer.config_maxResolverActivityColumns);
        this.mSameBssidAward = context.getResources().getInteger(R.integer.config_maxShortcutTargetsPerApp);
        this.mSameNetworkAward = context.getResources().getInteger(R.integer.config_minNumVisibleRecentTasks);
        this.mLastSelectionAward = context.getResources().getInteger(R.integer.config_maxNumVisibleRecentTasks);
        this.mSecurityAward = context.getResources().getInteger(R.integer.config_maxUiWidth);
        this.mBand5GHzAward = context.getResources().getInteger(R.integer.config_lowMemoryKillerMinFreeKbytesAdjust);
    }

    public void enableVerboseLogging(int verbose) {
        if (verbose > 0) {
            this.mVerboseLoggingEnabled = true;
        } else {
            this.mVerboseLoggingEnabled = false;
        }
    }

    private void localLog(String log) {
        this.mLocalLog.log(log);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        this.mLocalLog.dump(fd, pw, args);
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public int getId() {
        return 0;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public String getName() {
        return NAME;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public void update(List<ScanDetail> scanDetails) {
    }

    private int calculateBssidScore(ScanResult scanResult, WifiConfiguration network, WifiConfiguration currentNetwork, String currentBssid, StringBuffer sbuf) {
        boolean is5GHz = scanResult.is5GHz();
        sbuf.append("[ ");
        sbuf.append(scanResult.SSID);
        sbuf.append(" ");
        sbuf.append(scanResult.BSSID);
        sbuf.append(" RSSI:");
        sbuf.append(scanResult.level);
        sbuf.append(" ] ");
        int rssiSaturationThreshold = this.mScoringParams.getGoodRssi(scanResult.frequency);
        int rssi = Math.min(scanResult.level, rssiSaturationThreshold);
        int score = 0 + ((this.mRssiScoreOffset + rssi) * this.mRssiScoreSlope);
        sbuf.append(" RSSI score: ");
        sbuf.append(score);
        sbuf.append(",");
        if (is5GHz) {
            score += this.mBand5GHzAward;
            sbuf.append(" 5GHz bonus: ");
            sbuf.append(this.mBand5GHzAward);
            sbuf.append(",");
        }
        int lastUserSelectedNetworkId = this.mWifiConfigManager.getLastSelectedNetwork();
        if (lastUserSelectedNetworkId != -1 && lastUserSelectedNetworkId == network.networkId) {
            long timeDifference = this.mClock.getElapsedSinceBootMillis() - this.mWifiConfigManager.getLastSelectedTimeStamp();
            if (timeDifference > 0) {
                int decay = (int) (timeDifference / 60000);
                int bonus = Math.max(this.mLastSelectionAward - decay, 0);
                score += bonus;
                sbuf.append(" User selection ");
                sbuf.append(timeDifference);
                sbuf.append(" ms ago, bonus: ");
                sbuf.append(bonus);
                sbuf.append(",");
            }
        }
        if (currentNetwork != null && network.networkId == currentNetwork.networkId) {
            score += this.mSameNetworkAward;
            sbuf.append(" Same network bonus: ");
            sbuf.append(this.mSameNetworkAward);
            sbuf.append(",");
            if (this.mConnectivityHelper.isFirmwareRoamingSupported() && currentBssid != null && !currentBssid.equals(scanResult.BSSID)) {
                score += this.mSameBssidAward;
                sbuf.append(" Equivalent BSSID bonus: ");
                sbuf.append(this.mSameBssidAward);
                sbuf.append(",");
            }
        }
        if (currentBssid != null && currentBssid.equals(scanResult.BSSID)) {
            score += this.mSameBssidAward;
            sbuf.append(" Same BSSID bonus: ");
            sbuf.append(this.mSameBssidAward);
            sbuf.append(",");
        }
        if (!WifiConfigurationUtil.isConfigForOpenNetwork(network)) {
            score += this.mSecurityAward;
            sbuf.append(" Secure network bonus: ");
            sbuf.append(this.mSecurityAward);
            sbuf.append(",");
        }
        sbuf.append(" ## Total score: ");
        sbuf.append(score);
        sbuf.append("\n");
        return score;
    }

    @Override // com.android.server.wifi.WifiNetworkSelector.NetworkEvaluator
    public WifiConfiguration evaluateNetworks(List<ScanDetail> scanDetails, WifiConfiguration currentNetwork, String currentBssid, boolean connected, boolean untrustedNetworkAllowed, WifiNetworkSelector.NetworkEvaluator.OnConnectableListener onConnectableListener) {
        StringBuffer scoreHistory = new StringBuffer();
        int highestScore = Integer.MIN_VALUE;
        ScanResult scanResultCandidate = null;
        WifiConfiguration candidate = null;
        for (ScanDetail scanDetail : scanDetails) {
            ScanResult scanResult = scanDetail.getScanResult();
            WifiConfiguration network = this.mWifiConfigManager.getConfiguredNetworkForScanDetailAndCache(scanDetail);
            if (network != null) {
                if (!network.autoJoin) {
                    localLog("Network " + network.SSID + " autoJoin = " + network.autoJoin + ", Skip");
                } else if (!network.isPasspoint() && !network.isEphemeral()) {
                    WifiConfiguration.NetworkSelectionStatus status = network.getNetworkSelectionStatus();
                    status.setSeenInLastQualifiedNetworkSelection(true);
                    if (status.isNetworkEnabled()) {
                        if (network.BSSID != null && !network.BSSID.equals("any") && !network.BSSID.equals(scanResult.BSSID)) {
                            localLog("Network " + WifiNetworkSelector.toNetworkString(network) + " has specified BSSID " + network.BSSID + ". Skip " + scanResult.BSSID);
                        } else if (TelephonyUtil.isSimConfig(network) && !this.mWifiConfigManager.isSimPresent(network.enterpriseConfig.getSimNum())) {
                            if (this.mVerboseLoggingEnabled) {
                                Log.d(NAME, "isSimPresent");
                            }
                        } else {
                            int score = calculateBssidScore(scanResult, network, currentNetwork, currentBssid, scoreHistory);
                            if (score > status.getCandidateScore() || (score == status.getCandidateScore() && status.getCandidate() != null && scanResult.level > status.getCandidate().level)) {
                                this.mWifiConfigManager.setNetworkCandidateScanResult(network.networkId, scanResult, score);
                            }
                            if (network.useExternalScores) {
                                if (this.mVerboseLoggingEnabled) {
                                    Log.d(NAME, "Network " + WifiNetworkSelector.toNetworkString(network) + " has external score.");
                                }
                            } else {
                                onConnectableListener.onConnectable(scanDetail, this.mWifiConfigManager.getConfiguredNetwork(network.networkId), score);
                                if (score > highestScore || (score == highestScore && scanResultCandidate != null && scanResult.level > scanResultCandidate.level)) {
                                    this.mWifiConfigManager.setNetworkCandidateScanResult(network.networkId, scanResult, score);
                                    highestScore = score;
                                    scanResultCandidate = scanResult;
                                    candidate = this.mWifiConfigManager.getConfiguredNetwork(network.networkId);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (scoreHistory.length() > 0) {
            localLog("\n" + scoreHistory.toString());
        }
        if (scanResultCandidate == null && this.mVerboseLoggingEnabled) {
            Log.d(NAME, "did not see any good candidates.");
        }
        return candidate;
    }
}
