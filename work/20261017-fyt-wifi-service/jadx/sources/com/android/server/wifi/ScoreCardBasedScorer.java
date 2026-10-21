package com.android.server.wifi;

import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
final class ScoreCardBasedScorer implements WifiCandidates.CandidateScorer {
    public static final int BAND_5GHZ_AWARD_IS_40 = 40;
    public static final int CURRENT_NETWORK_BOOST_IS_16 = 16;
    public static final int LAST_SELECTION_AWARD_IS_480 = 480;
    public static final int MIN_POLLS_FOR_SIGNIFICANCE = 30;
    public static final int RSSI_RAIL = 5;
    public static final int RSSI_SCORE_OFFSET = 85;
    public static final int RSSI_SCORE_SLOPE_IS_4 = 4;
    public static final int SAME_BSSID_AWARD_IS_24 = 24;
    public static final int SCORE_CARD_BASED_SCORER_DEFAULT_EXPID = 42902385;
    public static final int SECURITY_AWARD_IS_80 = 80;
    private final ScoringParams mScoringParams;

    ScoreCardBasedScorer(ScoringParams scoringParams) {
        this.mScoringParams = scoringParams;
    }

    @Override // com.android.server.wifi.WifiCandidates.CandidateScorer
    public String getIdentifier() {
        return "ScoreCardBasedScorer";
    }

    private WifiCandidates.ScoredCandidate scoreCandidate(WifiCandidates.Candidate candidate) {
        int rssiSaturationThreshold = this.mScoringParams.getGoodRssi(candidate.getFrequency());
        int rssi = Math.min(candidate.getScanRssi(), rssiSaturationThreshold);
        int cutoff = estimatedCutoff(candidate);
        int score = (rssi - cutoff) * 4;
        if (candidate.getFrequency() >= 5000) {
            score += 40;
        }
        int score2 = score + ((int) (candidate.getLastSelectionWeight() * 480.0d));
        if (candidate.isCurrentNetwork()) {
            score2 += 40;
        }
        if (!candidate.isOpenNetwork()) {
            score2 += 80;
        }
        return new WifiCandidates.ScoredCandidate(score2 - (candidate.getEvaluatorId() * 1000), 10.0d, candidate);
    }

    private int estimatedCutoff(WifiCandidates.Candidate candidate) {
        int lowest = (-85) - 5;
        int highest = (-85) + 5;
        WifiScoreCardProto.Signal signal = candidate.getEventStatistics(WifiScoreCardProto.Event.SIGNAL_POLL);
        if (signal != null && signal.hasRssi() && signal.getRssi().getCount() > 30) {
            double mean = signal.getRssi().getSum() / signal.getRssi().getCount();
            double mean_square = signal.getRssi().getSumOfSquares() / signal.getRssi().getCount();
            double variance = mean_square - (mean * mean);
            double sigma = Math.sqrt(variance);
            double value = mean - (2.0d * sigma);
            int cutoff = (int) Math.min(Math.max(value, lowest), highest);
            return cutoff;
        }
        return -85;
    }

    @Override // com.android.server.wifi.WifiCandidates.CandidateScorer
    public WifiCandidates.ScoredCandidate scoreCandidates(Collection<WifiCandidates.Candidate> group) {
        WifiCandidates.ScoredCandidate choice = WifiCandidates.ScoredCandidate.NONE;
        for (WifiCandidates.Candidate candidate : group) {
            WifiCandidates.ScoredCandidate scoredCandidate = scoreCandidate(candidate);
            if (scoredCandidate.value > choice.value) {
                choice = scoredCandidate;
            }
        }
        return choice;
    }

    @Override // com.android.server.wifi.WifiCandidates.CandidateScorer
    public boolean userConnectChoiceOverrideWanted() {
        return true;
    }
}
