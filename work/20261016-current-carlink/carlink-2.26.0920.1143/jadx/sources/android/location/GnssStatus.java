package android.location;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class GnssStatus {
    public static final int CONSTELLATION_BEIDOU = 5;
    public static final int CONSTELLATION_GALILEO = 6;
    public static final int CONSTELLATION_GLONASS = 3;
    public static final int CONSTELLATION_GPS = 1;
    public static final int CONSTELLATION_QZSS = 4;
    public static final int CONSTELLATION_SBAS = 2;
    public static final int CONSTELLATION_TYPE_MASK = 15;
    public static final int CONSTELLATION_TYPE_SHIFT_WIDTH = 4;
    public static final int CONSTELLATION_UNKNOWN = 0;
    public static final int GNSS_SV_FLAGS_HAS_ALMANAC_DATA = 2;
    public static final int GNSS_SV_FLAGS_HAS_CARRIER_FREQUENCY = 8;
    public static final int GNSS_SV_FLAGS_HAS_EPHEMERIS_DATA = 1;
    public static final int GNSS_SV_FLAGS_NONE = 0;
    public static final int GNSS_SV_FLAGS_USED_IN_FIX = 4;
    public static final int SVID_SHIFT_WIDTH = 8;
    final float[] mAzimuths;
    final float[] mCarrierFrequencies;
    final float[] mCn0DbHz;
    final float[] mElevations;
    final int mSvCount;
    final int[] mSvidWithFlags;

    public static abstract class Callback {
        public void onFirstFix(int i2) {
        }

        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
        }

        public void onStarted() {
        }

        public void onStopped() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConstellationType {
    }

    public GnssStatus(int i2, int[] iArr, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
        this.mSvCount = i2;
        this.mSvidWithFlags = iArr;
        this.mCn0DbHz = fArr;
        this.mElevations = fArr2;
        this.mAzimuths = fArr3;
        this.mCarrierFrequencies = fArr4;
    }

    public float getAzimuthDegrees(int i2) {
        return this.mAzimuths[i2];
    }

    public float getCarrierFrequencyHz(int i2) {
        return this.mCarrierFrequencies[i2];
    }

    public float getCn0DbHz(int i2) {
        return this.mCn0DbHz[i2];
    }

    public int getConstellationType(int i2) {
        return (this.mSvidWithFlags[i2] >> 4) & 15;
    }

    public float getElevationDegrees(int i2) {
        return this.mElevations[i2];
    }

    public int getSatelliteCount() {
        return this.mSvCount;
    }

    public int getSvid(int i2) {
        return this.mSvidWithFlags[i2] >> 8;
    }

    public boolean hasAlmanacData(int i2) {
        return (this.mSvidWithFlags[i2] & 2) != 0;
    }

    public boolean hasCarrierFrequencyHz(int i2) {
        return (this.mSvidWithFlags[i2] & 8) != 0;
    }

    public boolean hasEphemerisData(int i2) {
        return (this.mSvidWithFlags[i2] & 1) != 0;
    }

    public boolean usedInFix(int i2) {
        return (this.mSvidWithFlags[i2] & 4) != 0;
    }
}
