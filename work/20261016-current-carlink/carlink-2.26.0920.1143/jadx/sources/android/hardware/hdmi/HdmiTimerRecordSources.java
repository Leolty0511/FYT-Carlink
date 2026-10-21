package android.hardware.hdmi;

import android.accessibilityservice.c;
import android.net.wifi.WifiNetworkScoreCache;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class HdmiTimerRecordSources {
    private static final int EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PHYSICAL_ADDRESS = 5;
    private static final int EXTERNAL_SOURCE_SPECIFIER_EXTERNAL_PLUG = 4;
    public static final int RECORDING_SEQUENCE_REPEAT_FRIDAY = 32;
    private static final int RECORDING_SEQUENCE_REPEAT_MASK = 127;
    public static final int RECORDING_SEQUENCE_REPEAT_MONDAY = 2;
    public static final int RECORDING_SEQUENCE_REPEAT_ONCE_ONLY = 0;
    public static final int RECORDING_SEQUENCE_REPEAT_SATUREDAY = 64;
    public static final int RECORDING_SEQUENCE_REPEAT_SUNDAY = 1;
    public static final int RECORDING_SEQUENCE_REPEAT_THURSDAY = 16;
    public static final int RECORDING_SEQUENCE_REPEAT_TUESDAY = 4;
    public static final int RECORDING_SEQUENCE_REPEAT_WEDNESDAY = 8;
    private static final String TAG = "HdmiTimerRecordingSources";

    public static final class Duration extends TimeUnit {
        private Duration(int i2, int i3) {
            super(i2, i3);
        }
    }

    public static class ExternalSourceDecorator extends HdmiRecordSources.RecordSource {
        private final int mExternalSourceSpecifier;
        private final HdmiRecordSources.RecordSource mRecordSource;

        @Override // android.hardware.hdmi.HdmiRecordSources.RecordSource
        public int extraParamToByteArray(byte[] bArr, int i2) {
            bArr[i2] = (byte) this.mExternalSourceSpecifier;
            this.mRecordSource.toByteArray(false, bArr, i2 + 1);
            return getDataSize(false);
        }

        private ExternalSourceDecorator(HdmiRecordSources.RecordSource recordSource, int i2) {
            super(recordSource.mSourceType, recordSource.getDataSize(false) + 1);
            this.mRecordSource = recordSource;
            this.mExternalSourceSpecifier = i2;
        }
    }

    public static final class Time extends TimeUnit {
        private Time(int i2, int i3) {
            super(i2, i3);
        }
    }

    public static class TimeUnit {
        final int mHour;
        final int mMinute;

        public TimeUnit(int i2, int i3) {
            this.mHour = i2;
            this.mMinute = i3;
        }

        public static byte toBcdByte(int i2) {
            return (byte) ((i2 % 10) | (((i2 / 10) % 10) << 4));
        }

        public int toByteArray(byte[] bArr, int i2) {
            bArr[i2] = toBcdByte(this.mHour);
            bArr[i2 + 1] = toBcdByte(this.mMinute);
            return 2;
        }
    }

    public static final class TimerInfo {
        private static final int BASIC_INFO_SIZE = 7;
        private static final int DAY_OF_MONTH_SIZE = 1;
        private static final int DURATION_SIZE = 2;
        private static final int MONTH_OF_YEAR_SIZE = 1;
        private static final int RECORDING_SEQUENCE_SIZE = 1;
        private static final int START_TIME_SIZE = 2;
        private final int mDayOfMonth;
        private final Duration mDuration;
        private final int mMonthOfYear;
        private final int mRecordingSequence;
        private final Time mStartTime;

        public int getDataSize() {
            return 7;
        }

        public int toByteArray(byte[] bArr, int i2) {
            bArr[i2] = (byte) this.mDayOfMonth;
            int i3 = i2 + 1;
            bArr[i3] = (byte) this.mMonthOfYear;
            int i4 = i3 + 1;
            int byteArray = i4 + this.mStartTime.toByteArray(bArr, i4);
            bArr[byteArray + this.mDuration.toByteArray(bArr, byteArray)] = (byte) this.mRecordingSequence;
            return getDataSize();
        }

        private TimerInfo(int i2, int i3, Time time, Duration duration, int i4) {
            this.mDayOfMonth = i2;
            this.mMonthOfYear = i3;
            this.mStartTime = time;
            this.mDuration = duration;
            this.mRecordingSequence = i4;
        }
    }

    public static final class TimerRecordSource {
        private final HdmiRecordSources.RecordSource mRecordSource;
        private final TimerInfo mTimerInfo;

        public int getDataSize() {
            return this.mRecordSource.getDataSize(false) + this.mTimerInfo.getDataSize();
        }

        public int toByteArray(byte[] bArr, int i2) {
            this.mRecordSource.toByteArray(false, bArr, this.mTimerInfo.toByteArray(bArr, i2) + i2);
            return getDataSize();
        }

        private TimerRecordSource(TimerInfo timerInfo, HdmiRecordSources.RecordSource recordSource) {
            this.mTimerInfo = timerInfo;
            this.mRecordSource = recordSource;
        }
    }

    private HdmiTimerRecordSources() {
    }

    private static void checkDurationValue(int i2, int i3) {
        if (i2 < 0 || i2 > 99) {
            throw new IllegalArgumentException(c.d("Hour should be in rage of [0, 99]:", i2));
        }
        if (i3 < 0 || i3 > 59) {
            throw new IllegalArgumentException(c.d("minute should be in rage of [0, 59]:", i3));
        }
    }

    private static void checkTimeValue(int i2, int i3) {
        if (i2 < 0 || i2 > 23) {
            throw new IllegalArgumentException(c.d("Hour should be in rage of [0, 23]:", i2));
        }
        if (i3 < 0 || i3 > 59) {
            throw new IllegalArgumentException(c.d("Minute should be in rage of [0, 59]:", i3));
        }
    }

    public static boolean checkTimerRecordSource(int i2, byte[] bArr) {
        int length = bArr.length - 7;
        if (i2 == 1) {
            return 7 == length;
        }
        if (i2 == 2) {
            return 4 == length;
        }
        if (i2 != 3) {
            return false;
        }
        byte b2 = bArr[7];
        if (b2 == 4) {
            return 2 == length;
        }
        return b2 == 5 && 3 == length;
    }

    private static void checkTimerRecordSourceInputs(TimerInfo timerInfo, HdmiRecordSources.RecordSource recordSource) {
        if (timerInfo == null) {
            Log.w(TAG, "TimerInfo should not be null.");
            throw new IllegalArgumentException("TimerInfo should not be null.");
        }
        if (recordSource != null) {
            return;
        }
        Log.w(TAG, "source should not be null.");
        throw new IllegalArgumentException("source should not be null.");
    }

    public static Duration durationOf(int i2, int i3) {
        checkDurationValue(i2, i3);
        return new Duration(i2, i3);
    }

    public static TimerRecordSource ofAnalogueSource(TimerInfo timerInfo, HdmiRecordSources.AnalogueServiceSource analogueServiceSource) {
        checkTimerRecordSourceInputs(timerInfo, analogueServiceSource);
        return new TimerRecordSource(timerInfo, analogueServiceSource);
    }

    public static TimerRecordSource ofDigitalSource(TimerInfo timerInfo, HdmiRecordSources.DigitalServiceSource digitalServiceSource) {
        checkTimerRecordSourceInputs(timerInfo, digitalServiceSource);
        return new TimerRecordSource(timerInfo, digitalServiceSource);
    }

    public static TimerRecordSource ofExternalPhysicalAddress(TimerInfo timerInfo, HdmiRecordSources.ExternalPhysicalAddress externalPhysicalAddress) {
        checkTimerRecordSourceInputs(timerInfo, externalPhysicalAddress);
        return new TimerRecordSource(timerInfo, new ExternalSourceDecorator(externalPhysicalAddress, 5));
    }

    public static TimerRecordSource ofExternalPlug(TimerInfo timerInfo, HdmiRecordSources.ExternalPlugData externalPlugData) {
        checkTimerRecordSourceInputs(timerInfo, externalPlugData);
        return new TimerRecordSource(timerInfo, new ExternalSourceDecorator(externalPlugData, 4));
    }

    public static Time timeOf(int i2, int i3) {
        checkTimeValue(i2, i3);
        return new Time(i2, i3);
    }

    public static TimerInfo timerInfoOf(int i2, int i3, Time time, Duration duration, int i4) {
        if (i2 < 0 || i2 > 31) {
            throw new IllegalArgumentException(c.d("Day of month should be in range of [0, 31]:", i2));
        }
        if (i3 < 1 || i3 > 12) {
            throw new IllegalArgumentException(c.d("Month of year should be in range of [1, 12]:", i3));
        }
        checkTimeValue(time.mHour, time.mMinute);
        checkDurationValue(duration.mHour, duration.mMinute);
        if (i4 == 0 || (i4 & WifiNetworkScoreCache.INVALID_NETWORK_SCORE) == 0) {
            return new TimerInfo(i2, i3, time, duration, i4);
        }
        throw new IllegalArgumentException(c.d("Invalid reecording sequence value:", i4));
    }
}
