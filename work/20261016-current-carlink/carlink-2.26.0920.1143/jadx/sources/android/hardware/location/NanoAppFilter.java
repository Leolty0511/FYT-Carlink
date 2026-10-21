package android.hardware.location;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class NanoAppFilter {
    public static final int APP_ANY = -1;
    public static final Parcelable.Creator<NanoAppFilter> CREATOR = new Parcelable.Creator<NanoAppFilter>() { // from class: android.hardware.location.NanoAppFilter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NanoAppFilter createFromParcel(Parcel parcel) {
            return new NanoAppFilter(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NanoAppFilter[] newArray(int i2) {
            return new NanoAppFilter[i2];
        }
    };
    public static final int FLAGS_VERSION_ANY = -1;
    public static final int FLAGS_VERSION_GREAT_THAN = 2;
    public static final int FLAGS_VERSION_LESS_THAN = 4;
    public static final int FLAGS_VERSION_STRICTLY_EQUAL = 8;
    public static final int HUB_ANY = -1;
    private static final String TAG = "NanoAppFilter";
    public static final int VENDOR_ANY = -1;
    private long mAppId;
    private long mAppIdVendorMask;
    private int mAppVersion;
    private int mContextHubId;
    private int mVersionRestrictionMask;

    private boolean versionsMatch(int i2, int i3, int i4) {
        return true;
    }

    public int describeContents() {
        return 0;
    }

    public boolean testMatch(NanoAppInstanceInfo nanoAppInstanceInfo) {
        return (this.mContextHubId == -1 || nanoAppInstanceInfo.getContexthubId() == this.mContextHubId) && (this.mAppId == -1 || nanoAppInstanceInfo.getAppId() == this.mAppId) && versionsMatch(this.mVersionRestrictionMask, this.mAppVersion, nanoAppInstanceInfo.getAppVersion());
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mAppId);
        parcel.writeInt(this.mAppVersion);
        parcel.writeInt(this.mVersionRestrictionMask);
        parcel.writeLong(this.mAppIdVendorMask);
    }

    private NanoAppFilter(Parcel parcel) {
        this.mContextHubId = -1;
        this.mAppId = parcel.readLong();
        this.mAppVersion = parcel.readInt();
        this.mVersionRestrictionMask = parcel.readInt();
        this.mAppIdVendorMask = parcel.readInt();
    }

    public NanoAppFilter(long j2, int i2, int i3, long j3) {
        this.mContextHubId = -1;
        this.mAppId = j2;
        this.mAppVersion = i2;
        this.mVersionRestrictionMask = i3;
        this.mAppIdVendorMask = j3;
    }
}
