package android.hardware.radio;

import android.graphics.Bitmap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class RadioTuner {
    public static final int DIRECTION_DOWN = 1;
    public static final int DIRECTION_UP = 0;
    public static final int ERROR_BACKGROUND_SCAN_FAILED = 6;
    public static final int ERROR_BACKGROUND_SCAN_UNAVAILABLE = 5;
    public static final int ERROR_CANCELLED = 2;
    public static final int ERROR_CONFIG = 4;
    public static final int ERROR_HARDWARE_FAILURE = 0;
    public static final int ERROR_SCAN_TIMEOUT = 3;
    public static final int ERROR_SERVER_DIED = 1;

    public static abstract class Callback {
        public void onAntennaState(boolean z2) {
        }

        public void onBackgroundScanAvailabilityChange(boolean z2) {
        }

        public void onBackgroundScanComplete() {
        }

        public void onConfigurationChanged(RadioManager.BandConfig bandConfig) {
        }

        public void onControlChanged(boolean z2) {
        }

        public void onEmergencyAnnouncement(boolean z2) {
        }

        public void onError(int i2) {
        }

        @Deprecated
        public void onMetadataChanged(RadioMetadata radioMetadata) {
        }

        public void onProgramInfoChanged(RadioManager.ProgramInfo programInfo) {
        }

        public void onProgramListChanged() {
        }

        public void onTrafficAnnouncement(boolean z2) {
        }
    }

    public abstract int cancel();

    public abstract void cancelAnnouncement();

    public abstract void close();

    public abstract int getConfiguration(RadioManager.BandConfig[] bandConfigArr);

    public abstract Bitmap getMetadataImage(int i2);

    public abstract boolean getMute();

    public abstract int getProgramInformation(RadioManager.ProgramInfo[] programInfoArr);

    public abstract List<RadioManager.ProgramInfo> getProgramList(Map<String, String> map);

    public abstract boolean hasControl();

    public abstract boolean isAnalogForced();

    public abstract boolean isAntennaConnected();

    public abstract int scan(int i2, boolean z2);

    public abstract void setAnalogForced(boolean z2);

    public abstract int setConfiguration(RadioManager.BandConfig bandConfig);

    public abstract int setMute(boolean z2);

    public abstract boolean startBackgroundScan();

    public abstract int step(int i2, boolean z2);

    @Deprecated
    public abstract int tune(int i2, int i3);

    public abstract void tune(ProgramSelector programSelector);
}
