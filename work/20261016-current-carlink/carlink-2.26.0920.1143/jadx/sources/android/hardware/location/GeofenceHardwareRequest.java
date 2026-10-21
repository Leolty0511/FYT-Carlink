package android.hardware.location;

/* JADX INFO: loaded from: classes.dex */
public final class GeofenceHardwareRequest {
    static final int GEOFENCE_TYPE_CIRCLE = 0;
    private double mLatitude;
    private double mLongitude;
    private double mRadius;
    private int mType;
    private int mLastTransition = 4;
    private int mUnknownTimer = 30000;
    private int mMonitorTransitions = 7;
    private int mNotificationResponsiveness = 5000;
    private int mSourceTechnologies = 1;

    public static GeofenceHardwareRequest createCircularGeofence(double d2, double d3, double d4) {
        GeofenceHardwareRequest geofenceHardwareRequest = new GeofenceHardwareRequest();
        geofenceHardwareRequest.setCircularGeofence(d2, d3, d4);
        return geofenceHardwareRequest;
    }

    private void setCircularGeofence(double d2, double d3, double d4) {
        this.mLatitude = d2;
        this.mLongitude = d3;
        this.mRadius = d4;
        this.mType = 0;
    }

    public int getLastTransition() {
        return this.mLastTransition;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public int getMonitorTransitions() {
        return this.mMonitorTransitions;
    }

    public int getNotificationResponsiveness() {
        return this.mNotificationResponsiveness;
    }

    public double getRadius() {
        return this.mRadius;
    }

    public int getSourceTechnologies() {
        return this.mSourceTechnologies;
    }

    public int getType() {
        return this.mType;
    }

    public int getUnknownTimer() {
        return this.mUnknownTimer;
    }

    public void setLastTransition(int i2) {
        this.mLastTransition = i2;
    }

    public void setMonitorTransitions(int i2) {
        this.mMonitorTransitions = i2;
    }

    public void setNotificationResponsiveness(int i2) {
        this.mNotificationResponsiveness = i2;
    }

    public void setSourceTechnologies(int i2) {
        int i3 = i2 & 31;
        if (i3 == 0) {
            throw new IllegalArgumentException("At least one valid source technology must be set.");
        }
        this.mSourceTechnologies = i3;
    }

    public void setUnknownTimer(int i2) {
        this.mUnknownTimer = i2;
    }
}
