package com.android.internal.location;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class ProviderProperties implements Parcelable {
    public static final Parcelable.Creator<ProviderProperties> CREATOR = new Parcelable.Creator<ProviderProperties>() { // from class: com.android.internal.location.ProviderProperties.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProviderProperties createFromParcel(Parcel parcel) {
            return new ProviderProperties(parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt() == 1, parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProviderProperties[] newArray(int i2) {
            return new ProviderProperties[i2];
        }
    };
    public final int mAccuracy;
    public final boolean mHasMonetaryCost;
    public final int mPowerRequirement;
    public final boolean mRequiresCell;
    public final boolean mRequiresNetwork;
    public final boolean mRequiresSatellite;
    public final boolean mSupportsAltitude;
    public final boolean mSupportsBearing;
    public final boolean mSupportsSpeed;

    public ProviderProperties(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3) {
        this.mRequiresNetwork = z2;
        this.mRequiresSatellite = z3;
        this.mRequiresCell = z4;
        this.mHasMonetaryCost = z5;
        this.mSupportsAltitude = z6;
        this.mSupportsSpeed = z7;
        this.mSupportsBearing = z8;
        this.mPowerRequirement = i2;
        this.mAccuracy = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRequiresNetwork ? 1 : 0);
        parcel.writeInt(this.mRequiresSatellite ? 1 : 0);
        parcel.writeInt(this.mRequiresCell ? 1 : 0);
        parcel.writeInt(this.mHasMonetaryCost ? 1 : 0);
        parcel.writeInt(this.mSupportsAltitude ? 1 : 0);
        parcel.writeInt(this.mSupportsSpeed ? 1 : 0);
        parcel.writeInt(this.mSupportsBearing ? 1 : 0);
        parcel.writeInt(this.mPowerRequirement);
        parcel.writeInt(this.mAccuracy);
    }
}
