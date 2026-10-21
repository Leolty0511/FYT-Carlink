package android.hardware.camera2.params;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class VendorTagDescriptorCache implements Parcelable {
    public static final Parcelable.Creator<VendorTagDescriptorCache> CREATOR = new Parcelable.Creator<VendorTagDescriptorCache>() { // from class: android.hardware.camera2.params.VendorTagDescriptorCache.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptorCache createFromParcel(Parcel parcel) {
            try {
                return new VendorTagDescriptorCache(parcel);
            } catch (Exception e2) {
                Log.e(VendorTagDescriptorCache.TAG, "Exception creating VendorTagDescriptorCache from parcel", e2);
                return null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptorCache[] newArray(int i2) {
            return new VendorTagDescriptorCache[i2];
        }
    };
    private static final String TAG = "VendorTagDescriptorCache";

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (parcel == null) {
            throw new IllegalArgumentException("dest must not be null");
        }
    }

    private VendorTagDescriptorCache(Parcel parcel) {
    }
}
