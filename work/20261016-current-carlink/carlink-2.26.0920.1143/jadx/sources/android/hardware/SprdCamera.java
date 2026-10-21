package android.hardware;

import android.app.ActivityThread;
import android.system.OsConstants;
import android.util.Log;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SprdCamera extends Camera {

    public class SprdParameters extends Camera.Parameters {
        public static final String AUTO_EXPOSURE_CENTER_WEIGHTED = "center-weighted";
        public static final String AUTO_EXPOSURE_FRAME_AVG = "frame-average";
        public static final String AUTO_EXPOSURE_SPOT_METERING = "spot-metering";
        private static final String FALSE = "false";
        public static final String FOCUS_MODE_FIXED = "fixed";
        public static final String ISO_100 = "100";
        public static final String ISO_1600 = "1600";
        public static final String ISO_200 = "200";
        public static final String ISO_400 = "400";
        public static final String ISO_800 = "800";
        public static final String ISO_AUTO = "auto";
        private static final String KEY_ANTIBAND_AUTO_ENABLE = "antibandauto-enable";
        private static final String KEY_BRIGHTNESS = "brightness";
        private static final String KEY_CAPTURE_MODE = "capture-mode";
        private static final String KEY_CONTRAST = "contrast";
        private static final String KEY_EOIS = "EOIS";
        private static final String KEY_FLASH_LEVELS = "available-flash-level";
        private static final String KEY_FOCUS_MODE = "focus-mode";
        private static final String KEY_ISO = "iso";
        private static final String KEY_METERING = "metering-mode";
        private static final String KEY_NEED_AF_BEFORE_CAPTURE = "is-takepicture-with-flash";
        private static final String KEY_SATURATION = "saturation";
        private static final String KEY_SLOWMOTION = "slow-motion";
        private static final String KEY_SMILE_ENABLE = "smile-enable";
        private static final String SUPPORTED_VALUES_SUFFIX = "-values";
        private static final String TAG = "SprdParameters";
        private static final String TRUE = "true";

        public SprdParameters() {
            super();
        }

        private boolean updateFocusMode(String str) {
            if ("invalid".equals(str)) {
                set(KEY_FOCUS_MODE, str);
                return true;
            }
            List<String> supportedFocusModes = getSupportedFocusModes();
            if (supportedFocusModes == null || supportedFocusModes.size() != 1 || !"fixed".equals(supportedFocusModes.get(0))) {
                return false;
            }
            Log.d(TAG, "setFocusMode return " + str);
            return true;
        }

        public String getBrightness() {
            return get(KEY_BRIGHTNESS);
        }

        public String getContrast() {
            return get(KEY_CONTRAST);
        }

        public boolean getEOIS() {
            return TRUE.equals(get(KEY_EOIS));
        }

        public String getISO() {
            return get(KEY_ISO);
        }

        public String getMeteringMode() {
            return get(KEY_METERING);
        }

        public String getNeedAFBeforeCapture() {
            return get(KEY_NEED_AF_BEFORE_CAPTURE);
        }

        public String getSaturation() {
            return get(KEY_SATURATION);
        }

        public String getSlowmotion() {
            return get(KEY_SLOWMOTION);
        }

        public String getSupportedAntibandAutoEnable() {
            return get("antibandauto-enable-values");
        }

        public List<String> getSupportedBrightness() {
            return split(get("brightness-values"));
        }

        public List<String> getSupportedContrast() {
            return split(get("contrast-values"));
        }

        public int getSupportedFlashLevels() {
            String str = get(KEY_FLASH_LEVELS);
            Log.i(TAG, "getsupportedflash levels=" + str);
            if (str == null) {
                return 0;
            }
            return Integer.parseInt(str);
        }

        public List<String> getSupportedISO() {
            return split(get("iso-values"));
        }

        public List<String> getSupportedMeteringMode() {
            return split(get("metering-mode-values"));
        }

        public List<String> getSupportedSaturation() {
            return split(get("saturation-values"));
        }

        public List<String> getSupportedSlowmotion() {
            return split(get("slow-motion-values"));
        }

        public String getSupportedSmileEnable() {
            return get("smile-enable-values");
        }

        public void setBrightness(String str) {
            set(KEY_BRIGHTNESS, str);
        }

        public void setContinuousCount(String str) {
            set(KEY_CAPTURE_MODE, str);
        }

        public void setContrast(String str) {
            set(KEY_CONTRAST, str);
        }

        public void setEOIS(boolean z2) {
            set(KEY_EOIS, z2 ? TRUE : FALSE);
        }

        @Override // android.hardware.Camera.Parameters
        public void setFocusMode(String str) {
            if (updateFocusMode(str)) {
                return;
            }
            super.setFocusMode(str);
        }

        public void setISO(String str) {
            set(KEY_ISO, str);
        }

        public void setMeteringMode(String str) {
            set(KEY_METERING, str);
        }

        public void setSaturation(String str) {
            set(KEY_SATURATION, str);
        }

        public void setSlowmotion(String str) {
            set(KEY_SLOWMOTION, str);
        }
    }

    public SprdCamera(int i2) {
        super(i2);
    }

    public static void checkCameraId(int i2) {
        if (i2 >= Camera.getNumberOfCameras()) {
            throw new RuntimeException("Unknown camera ID");
        }
    }

    public static int checkError(Camera camera, int i2) {
        return (i2 < Camera.getNumberOfCameras() || "com.android.camera2".equals(ActivityThread.currentOpPackageName())) ? camera.cameraInitNormal(i2) : -OsConstants.EACCES;
    }

    public static SprdCamera open(int i2) {
        return new SprdCamera(i2);
    }

    public boolean enableShutterSoundSprd(boolean z2) {
        return _enableShutterSound(z2);
    }

    public final void setSensorSelfShotListenerApi1(Camera.SensorSelfShotListenerApi1 sensorSelfShotListenerApi1) {
        this.mSensorSelfShotListenerApi1 = sensorSelfShotListenerApi1;
    }

    @Override // android.hardware.Camera
    public SprdParameters getParameters() {
        Camera.Parameters parameters = super.getParameters();
        SprdParameters sprdParameters = new SprdParameters();
        sprdParameters.copyFrom(parameters);
        return sprdParameters;
    }
}
