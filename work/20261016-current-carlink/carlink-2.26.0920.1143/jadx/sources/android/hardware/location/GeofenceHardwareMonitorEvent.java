package android.hardware.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class GeofenceHardwareMonitorEvent implements Parcelable {
    public static final Parcelable.Creator<GeofenceHardwareMonitorEvent> CREATOR = new Parcelable.Creator<GeofenceHardwareMonitorEvent>() { // from class: android.hardware.location.GeofenceHardwareMonitorEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GeofenceHardwareMonitorEvent createFromParcel(Parcel parcel) {
            return new GeofenceHardwareMonitorEvent(parcel.readInt(), parcel.readInt(), parcel.readInt(), (Location) parcel.readParcelable(GeofenceHardwareMonitorEvent.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GeofenceHardwareMonitorEvent[] newArray(int i2) {
            return new GeofenceHardwareMonitorEvent[i2];
        }
    };
    private final Location mLocation;
    private final int mMonitoringStatus;
    private final int mMonitoringType;
    private final int mSourceTechnologies;

    public GeofenceHardwareMonitorEvent(int i2, int i3, int i4, Location location) {
        this.mMonitoringType = i2;
        this.mMonitoringStatus = i3;
        this.mSourceTechnologies = i4;
        this.mLocation = location;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Location getLocation() {
        return this.mLocation;
    }

    public int getMonitoringStatus() {
        return this.mMonitoringStatus;
    }

    public int getMonitoringType() {
        return this.mMonitoringType;
    }

    public int getSourceTechnologies() {
        return this.mSourceTechnologies;
    }

    public String toString() {
        return String.format("GeofenceHardwareMonitorEvent: type=%d, status=%d, sources=%d, location=%s", Integer.valueOf(this.mMonitoringType), Integer.valueOf(this.mMonitoringStatus), Integer.valueOf(this.mSourceTechnologies), this.mLocation);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMonitoringType);
        parcel.writeInt(this.mMonitoringStatus);
        parcel.writeInt(this.mSourceTechnologies);
        parcel.writeParcelable(this.mLocation, i2);
    }
}
