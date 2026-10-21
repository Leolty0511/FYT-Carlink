package com.android.server.wifi;

import android.net.wifi.WifiInfo;

/* JADX INFO: loaded from: classes.dex */
public class AggressiveConnectedScore extends ConnectedScore {
    private int mFrequencyMHz;
    private int mRssi;
    private final ScoringParams mScoringParams;

    public AggressiveConnectedScore(ScoringParams scoringParams, Clock clock) {
        super(clock);
        this.mFrequencyMHz = 5000;
        this.mRssi = 0;
        this.mScoringParams = scoringParams;
    }

    @Override // com.android.server.wifi.ConnectedScore
    public void updateUsingRssi(int rssi, long millis, double standardDeviation) {
        this.mRssi = rssi;
    }

    @Override // com.android.server.wifi.ConnectedScore
    public void updateUsingWifiInfo(WifiInfo wifiInfo, long millis) {
        this.mFrequencyMHz = wifiInfo.getFrequency();
        this.mRssi = wifiInfo.getRssi();
    }

    @Override // com.android.server.wifi.ConnectedScore
    public void reset() {
        this.mFrequencyMHz = 5000;
    }

    @Override // com.android.server.wifi.ConnectedScore
    public int generateScore() {
        int threshRssi = this.mScoringParams.getSufficientRssi(this.mFrequencyMHz);
        int score = (this.mRssi - threshRssi) + 50;
        return score;
    }
}
