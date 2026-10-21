package android.location;

/* JADX INFO: loaded from: classes.dex */
public final class GpsSatellite {
    public float mAzimuth;
    public float mElevation;
    public boolean mHasAlmanac;
    public boolean mHasEphemeris;
    public int mPrn;
    public float mSnr;
    public boolean mUsedInFix;
    public boolean mValid;

    public GpsSatellite(int i2) {
        this.mPrn = i2;
    }

    public float getAzimuth() {
        return this.mAzimuth;
    }

    public float getElevation() {
        return this.mElevation;
    }

    public int getPrn() {
        return this.mPrn;
    }

    public float getSnr() {
        return this.mSnr;
    }

    public boolean hasAlmanac() {
        return this.mHasAlmanac;
    }

    public boolean hasEphemeris() {
        return this.mHasEphemeris;
    }

    public void setStatus(GpsSatellite gpsSatellite) {
        this.mValid = gpsSatellite.mValid;
        this.mHasEphemeris = gpsSatellite.mHasEphemeris;
        this.mHasAlmanac = gpsSatellite.mHasAlmanac;
        this.mUsedInFix = gpsSatellite.mUsedInFix;
        this.mSnr = gpsSatellite.mSnr;
        this.mElevation = gpsSatellite.mElevation;
        this.mAzimuth = gpsSatellite.mAzimuth;
    }

    public boolean usedInFix() {
        return this.mUsedInFix;
    }
}
