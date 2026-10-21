package android.hardware.hdmi;

/* JADX INFO: loaded from: classes.dex */
public abstract class HdmiRecordListener {

    public static class TimerStatusData {
        private int mDurationHour;
        private int mDurationMinute;
        private int mExtraError;
        private int mMediaInfo;
        private int mNotProgrammedError;
        private boolean mOverlapped;
        private boolean mProgrammed;
        private int mProgrammedInfo;

        private TimerStatusData() {
        }

        private static int bcdByteToInt(byte b2) {
            return ((((b2 >> 4) & 15) * 10) + b2) & 15;
        }

        public static TimerStatusData parseFrom(int i2) {
            TimerStatusData timerStatusData = new TimerStatusData();
            timerStatusData.mOverlapped = ((i2 >> 31) & 1) != 0;
            timerStatusData.mMediaInfo = (i2 >> 29) & 3;
            boolean z2 = ((i2 >> 28) & 1) != 0;
            timerStatusData.mProgrammed = z2;
            if (z2) {
                timerStatusData.mProgrammedInfo = (i2 >> 24) & 15;
                timerStatusData.mDurationHour = bcdByteToInt((byte) ((i2 >> 16) & 255));
                timerStatusData.mDurationMinute = bcdByteToInt((byte) ((i2 >> 8) & 255));
            } else {
                timerStatusData.mNotProgrammedError = (i2 >> 24) & 15;
                timerStatusData.mDurationHour = bcdByteToInt((byte) ((i2 >> 16) & 255));
                timerStatusData.mDurationMinute = bcdByteToInt((byte) ((i2 >> 8) & 255));
            }
            timerStatusData.mExtraError = i2 & 255;
            return timerStatusData;
        }

        public int getDurationHour() {
            return this.mDurationHour;
        }

        public int getDurationMinute() {
            return this.mDurationMinute;
        }

        public int getExtraError() {
            return this.mExtraError;
        }

        public int getMediaInfo() {
            return this.mMediaInfo;
        }

        public int getNotProgammedError() {
            if (isProgrammed()) {
                throw new IllegalStateException("Has no not-programmed error. Call getProgrammedInfo() instead.");
            }
            return this.mNotProgrammedError;
        }

        public int getProgrammedInfo() {
            if (isProgrammed()) {
                return this.mProgrammedInfo;
            }
            throw new IllegalStateException("No programmed info. Call getNotProgammedError() instead.");
        }

        public boolean isOverlapped() {
            return this.mOverlapped;
        }

        public boolean isProgrammed() {
            return this.mProgrammed;
        }
    }

    public void onClearTimerRecordingResult(int i2, int i3) {
    }

    public void onOneTouchRecordResult(int i2, int i3) {
    }

    public abstract HdmiRecordSources.RecordSource onOneTouchRecordSourceRequested(int i2);

    public void onTimerRecordingResult(int i2, TimerStatusData timerStatusData) {
    }
}
