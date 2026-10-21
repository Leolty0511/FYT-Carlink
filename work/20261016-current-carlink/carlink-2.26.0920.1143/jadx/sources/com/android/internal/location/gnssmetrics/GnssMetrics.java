package com.android.internal.location.gnssmetrics;

import android.accessibilityservice.c;
import android.os.SystemClock;
import android.util.Base64;
import android.util.TimeUtils;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.internal.location.nano.GnssLogsProto;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GnssMetrics {
    private static final int DEFAULT_TIME_BETWEEN_FIXES_MILLISECS = 1000;
    private Statistics locationFailureStatistics;
    private String logStartInElapsedRealTime;
    private Statistics positionAccuracyMeterStatistics;
    private Statistics timeToFirstFixSecStatistics;
    private Statistics topFourAverageCn0Statistics;

    public class Statistics {
        private int count;
        private double sum;
        private double sumSquare;

        private Statistics() {
        }

        public void addItem(double d2) {
            this.count++;
            this.sum += d2;
            this.sumSquare = (d2 * d2) + this.sumSquare;
        }

        public int getCount() {
            return this.count;
        }

        public double getMean() {
            return this.sum / ((double) this.count);
        }

        public double getStandardDeviation() {
            double d2 = this.sum;
            int i2 = this.count;
            double d3 = d2 / ((double) i2);
            double d4 = d3 * d3;
            double d5 = this.sumSquare / ((double) i2);
            if (d5 > d4) {
                return Math.sqrt(d5 - d4);
            }
            return 0.0d;
        }

        public void reset() {
            this.count = 0;
            this.sum = 0.0d;
            this.sumSquare = 0.0d;
        }
    }

    public GnssMetrics() {
        this.locationFailureStatistics = new Statistics();
        this.timeToFirstFixSecStatistics = new Statistics();
        this.positionAccuracyMeterStatistics = new Statistics();
        this.topFourAverageCn0Statistics = new Statistics();
        reset();
    }

    private void reset() {
        StringBuilder sb = new StringBuilder();
        TimeUtils.formatDuration(SystemClock.elapsedRealtimeNanos() / TimeUtils.NANOS_PER_MS, sb);
        this.logStartInElapsedRealTime = sb.toString();
        this.locationFailureStatistics.reset();
        this.timeToFirstFixSecStatistics.reset();
        this.positionAccuracyMeterStatistics.reset();
        this.topFourAverageCn0Statistics.reset();
    }

    public String dumpGnssMetricsAsProtoString() {
        GnssLogsProto.GnssLog gnssLog = new GnssLogsProto.GnssLog();
        if (this.locationFailureStatistics.getCount() > 0) {
            gnssLog.numLocationReportProcessed = this.locationFailureStatistics.getCount();
            gnssLog.percentageLocationFailure = (int) (this.locationFailureStatistics.getMean() * 100.0d);
        }
        if (this.timeToFirstFixSecStatistics.getCount() > 0) {
            gnssLog.numTimeToFirstFixProcessed = this.timeToFirstFixSecStatistics.getCount();
            gnssLog.meanTimeToFirstFixSecs = (int) this.timeToFirstFixSecStatistics.getMean();
            gnssLog.standardDeviationTimeToFirstFixSecs = (int) this.timeToFirstFixSecStatistics.getStandardDeviation();
        }
        if (this.positionAccuracyMeterStatistics.getCount() > 0) {
            gnssLog.numPositionAccuracyProcessed = this.positionAccuracyMeterStatistics.getCount();
            gnssLog.meanPositionAccuracyMeters = (int) this.positionAccuracyMeterStatistics.getMean();
            gnssLog.standardDeviationPositionAccuracyMeters = (int) this.positionAccuracyMeterStatistics.getStandardDeviation();
        }
        if (this.topFourAverageCn0Statistics.getCount() > 0) {
            gnssLog.numTopFourAverageCn0Processed = this.topFourAverageCn0Statistics.getCount();
            gnssLog.meanTopFourAverageCn0DbHz = this.topFourAverageCn0Statistics.getMean();
            gnssLog.standardDeviationTopFourAverageCn0DbHz = this.topFourAverageCn0Statistics.getStandardDeviation();
        }
        String strEncodeToString = Base64.encodeToString(MessageNano.toByteArray(gnssLog), 0);
        reset();
        return strEncodeToString;
    }

    public String dumpGnssMetricsAsText() {
        StringBuilder sbR = c.r("GNSS_KPI_START\n  KPI logging start time: ");
        sbR.append(this.logStartInElapsedRealTime);
        sbR.append("\n  KPI logging end time: ");
        TimeUtils.formatDuration(SystemClock.elapsedRealtimeNanos() / TimeUtils.NANOS_PER_MS, sbR);
        sbR.append("\n");
        sbR.append("  Number of location reports: ");
        sbR.append(this.locationFailureStatistics.getCount());
        sbR.append("\n");
        if (this.locationFailureStatistics.getCount() > 0) {
            sbR.append("  Percentage location failure: ");
            sbR.append(this.locationFailureStatistics.getMean() * 100.0d);
            sbR.append("\n");
        }
        sbR.append("  Number of TTFF reports: ");
        sbR.append(this.timeToFirstFixSecStatistics.getCount());
        sbR.append("\n");
        if (this.timeToFirstFixSecStatistics.getCount() > 0) {
            sbR.append("  TTFF mean (sec): ");
            sbR.append(this.timeToFirstFixSecStatistics.getMean());
            sbR.append("\n");
            sbR.append("  TTFF standard deviation (sec): ");
            sbR.append(this.timeToFirstFixSecStatistics.getStandardDeviation());
            sbR.append("\n");
        }
        sbR.append("  Number of position accuracy reports: ");
        sbR.append(this.positionAccuracyMeterStatistics.getCount());
        sbR.append("\n");
        if (this.positionAccuracyMeterStatistics.getCount() > 0) {
            sbR.append("  Position accuracy mean (m): ");
            sbR.append(this.positionAccuracyMeterStatistics.getMean());
            sbR.append("\n");
            sbR.append("  Position accuracy standard deviation (m): ");
            sbR.append(this.positionAccuracyMeterStatistics.getStandardDeviation());
            sbR.append("\n");
        }
        sbR.append("  Number of CN0 reports: ");
        sbR.append(this.topFourAverageCn0Statistics.getCount());
        sbR.append("\n");
        if (this.topFourAverageCn0Statistics.getCount() > 0) {
            sbR.append("  Top 4 Avg CN0 mean (dB-Hz): ");
            sbR.append(this.topFourAverageCn0Statistics.getMean());
            sbR.append("\n");
            sbR.append("  Top 4 Avg CN0 standard deviation (dB-Hz): ");
            sbR.append(this.topFourAverageCn0Statistics.getStandardDeviation());
            sbR.append("\n");
        }
        return c.n(sbR, "GNSS_KPI_END", "\n");
    }

    public void logCn0(float[] fArr, int i2) {
        if (i2 < 4) {
            return;
        }
        float[] fArrCopyOf = Arrays.copyOf(fArr, i2);
        Arrays.sort(fArrCopyOf);
        int i3 = i2 - 4;
        double d2 = 0.0d;
        if (fArrCopyOf[i3] > 0.0d) {
            while (i3 < i2) {
                d2 += (double) fArrCopyOf[i3];
                i3++;
            }
            this.topFourAverageCn0Statistics.addItem(d2 / 4.0d);
        }
    }

    public void logMissedReports(int i2, int i3) {
        int iMax = (i3 / Math.max(1000, i2)) - 1;
        if (iMax > 0) {
            for (int i4 = 0; i4 < iMax; i4++) {
                this.locationFailureStatistics.addItem(1.0d);
            }
        }
    }

    public void logPositionAccuracyMeters(float f2) {
        this.positionAccuracyMeterStatistics.addItem(f2);
    }

    public void logReceivedLocationStatus(boolean z2) {
        if (z2) {
            this.locationFailureStatistics.addItem(0.0d);
        } else {
            this.locationFailureStatistics.addItem(1.0d);
        }
    }

    public void logTimeToFirstFixMilliSecs(int i2) {
        this.timeToFirstFixSecStatistics.addItem(i2 / 1000);
    }
}
