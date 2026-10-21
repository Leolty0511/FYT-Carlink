package android.content.pm;

import android.content.IntentFilter;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class EphemeralIntentFilter implements Parcelable {
    public static final Parcelable.Creator<EphemeralIntentFilter> CREATOR = new Parcelable.Creator<EphemeralIntentFilter>() { // from class: android.content.pm.EphemeralIntentFilter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EphemeralIntentFilter createFromParcel(Parcel parcel) {
            return new EphemeralIntentFilter(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EphemeralIntentFilter[] newArray(int i2) {
            return new EphemeralIntentFilter[i2];
        }
    };
    private final InstantAppIntentFilter mInstantAppIntentFilter;

    public EphemeralIntentFilter(String str, List<IntentFilter> list) {
        this.mInstantAppIntentFilter = new InstantAppIntentFilter(str, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<IntentFilter> getFilters() {
        return this.mInstantAppIntentFilter.getFilters();
    }

    public InstantAppIntentFilter getInstantAppIntentFilter() {
        return this.mInstantAppIntentFilter;
    }

    public String getSplitName() {
        return this.mInstantAppIntentFilter.getSplitName();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mInstantAppIntentFilter, i2);
    }

    public EphemeralIntentFilter(InstantAppIntentFilter instantAppIntentFilter) {
        this.mInstantAppIntentFilter = instantAppIntentFilter;
    }

    public EphemeralIntentFilter(Parcel parcel) {
        this.mInstantAppIntentFilter = (InstantAppIntentFilter) parcel.readParcelable(null);
    }
}
