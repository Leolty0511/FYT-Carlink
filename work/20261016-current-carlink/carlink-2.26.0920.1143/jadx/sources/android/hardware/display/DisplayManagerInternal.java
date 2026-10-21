package android.hardware.display;

import android.hardware.SensorManager;
import android.os.Handler;
import android.util.IntArray;
import android.util.SparseArray;
import android.view.Display;
import android.view.DisplayInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class DisplayManagerInternal {

    public interface DisplayPowerCallbacks {
        void acquireSuspendBlocker();

        void onDisplayStateChange(int i2);

        void onProximityNegative();

        void onProximityPositive();

        void onStateChanged();

        void releaseSuspendBlocker();
    }

    public interface DisplayTransactionListener {
        void onDisplayTransaction();
    }

    public abstract DisplayInfo getDisplayInfo(int i2);

    public abstract void getNonOverrideDisplayInfo(int i2, DisplayInfo displayInfo);

    public abstract void initPowerManagement(DisplayPowerCallbacks displayPowerCallbacks, Handler handler, SensorManager sensorManager);

    public abstract boolean isProximitySensorAvailable();

    public abstract boolean isUidPresentOnDisplay(int i2, int i3);

    public abstract void performTraversalInTransactionFromWindowManager();

    public abstract void registerDisplayTransactionListener(DisplayTransactionListener displayTransactionListener);

    public abstract boolean requestPowerState(DisplayPowerRequest displayPowerRequest, boolean z2);

    public abstract void setDisplayAccessUIDs(SparseArray<IntArray> sparseArray);

    public abstract void setDisplayInfoOverrideFromWindowManager(int i2, DisplayInfo displayInfo);

    public abstract void setDisplayOffsets(int i2, int i3, int i4);

    public abstract void setDisplayProperties(int i2, boolean z2, float f2, int i3, boolean z3);

    public abstract void unregisterDisplayTransactionListener(DisplayTransactionListener displayTransactionListener);

    public abstract void updateBatteryLevel(int i2);

    public static final class DisplayPowerRequest {
        public static final int POLICY_BRIGHT = 3;
        public static final int POLICY_DIM = 2;
        public static final int POLICY_DOZE = 1;
        public static final int POLICY_OFF = 0;
        public static final int POLICY_VR = 4;
        public boolean blockScreenOn;
        public boolean boostScreenBrightness;
        public boolean brightnessSetByUser;
        public int dozeScreenBrightness;
        public int dozeScreenState;
        public boolean lowPowerMode;
        public int policy;
        public float screenAutoBrightnessAdjustment;
        public int screenBrightness;
        public float screenLowPowerBrightnessFactor;
        public boolean useAutoBrightness;
        public boolean useProximitySensor;

        public DisplayPowerRequest() {
            this.policy = 3;
            this.useProximitySensor = false;
            this.screenBrightness = 255;
            this.screenAutoBrightnessAdjustment = 0.0f;
            this.screenLowPowerBrightnessFactor = 0.5f;
            this.useAutoBrightness = false;
            this.blockScreenOn = false;
            this.dozeScreenBrightness = -1;
            this.dozeScreenState = 0;
        }

        public static String policyToString(int i2) {
            if (i2 == 0) {
                return "OFF";
            }
            if (i2 == 1) {
                return "DOZE";
            }
            if (i2 == 2) {
                return "DIM";
            }
            if (i2 != 3) {
                return i2 != 4 ? Integer.toString(i2) : "VR";
            }
            return "BRIGHT";
        }

        public void copyFrom(DisplayPowerRequest displayPowerRequest) {
            this.policy = displayPowerRequest.policy;
            this.useProximitySensor = displayPowerRequest.useProximitySensor;
            this.screenBrightness = displayPowerRequest.screenBrightness;
            this.screenAutoBrightnessAdjustment = displayPowerRequest.screenAutoBrightnessAdjustment;
            this.screenLowPowerBrightnessFactor = displayPowerRequest.screenLowPowerBrightnessFactor;
            this.brightnessSetByUser = displayPowerRequest.brightnessSetByUser;
            this.useAutoBrightness = displayPowerRequest.useAutoBrightness;
            this.blockScreenOn = displayPowerRequest.blockScreenOn;
            this.lowPowerMode = displayPowerRequest.lowPowerMode;
            this.boostScreenBrightness = displayPowerRequest.boostScreenBrightness;
            this.dozeScreenBrightness = displayPowerRequest.dozeScreenBrightness;
            this.dozeScreenState = displayPowerRequest.dozeScreenState;
        }

        public boolean equals(Object obj) {
            return (obj instanceof DisplayPowerRequest) && equals((DisplayPowerRequest) obj);
        }

        public int hashCode() {
            return 0;
        }

        public boolean isBrightOrDim() {
            int i2 = this.policy;
            return i2 == 3 || i2 == 2;
        }

        public boolean isVr() {
            return this.policy == 4;
        }

        public String toString() {
            return "policy=" + policyToString(this.policy) + ", useProximitySensor=" + this.useProximitySensor + ", screenBrightness=" + this.screenBrightness + ", screenAutoBrightnessAdjustment=" + this.screenAutoBrightnessAdjustment + ", screenLowPowerBrightnessFactor=" + this.screenLowPowerBrightnessFactor + ", brightnessSetByUser=" + this.brightnessSetByUser + ", useAutoBrightness=" + this.useAutoBrightness + ", blockScreenOn=" + this.blockScreenOn + ", lowPowerMode=" + this.lowPowerMode + ", boostScreenBrightness=" + this.boostScreenBrightness + ", dozeScreenBrightness=" + this.dozeScreenBrightness + ", dozeScreenState=" + Display.stateToString(this.dozeScreenState);
        }

        public boolean equals(DisplayPowerRequest displayPowerRequest) {
            return displayPowerRequest != null && this.policy == displayPowerRequest.policy && this.useProximitySensor == displayPowerRequest.useProximitySensor && this.screenBrightness == displayPowerRequest.screenBrightness && this.screenAutoBrightnessAdjustment == displayPowerRequest.screenAutoBrightnessAdjustment && this.screenLowPowerBrightnessFactor == displayPowerRequest.screenLowPowerBrightnessFactor && this.brightnessSetByUser == displayPowerRequest.brightnessSetByUser && this.useAutoBrightness == displayPowerRequest.useAutoBrightness && this.blockScreenOn == displayPowerRequest.blockScreenOn && this.lowPowerMode == displayPowerRequest.lowPowerMode && this.boostScreenBrightness == displayPowerRequest.boostScreenBrightness && this.dozeScreenBrightness == displayPowerRequest.dozeScreenBrightness && this.dozeScreenState == displayPowerRequest.dozeScreenState;
        }

        public DisplayPowerRequest(DisplayPowerRequest displayPowerRequest) {
            copyFrom(displayPowerRequest);
        }
    }
}
