package com.android.internal.location;

import android.accessibilityservice.c;
import android.location.LocationRequest;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.TimeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ProviderRequest implements Parcelable {
    public static final Parcelable.Creator<ProviderRequest> CREATOR = new Parcelable.Creator<ProviderRequest>() { // from class: com.android.internal.location.ProviderRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProviderRequest createFromParcel(Parcel parcel) {
            ProviderRequest providerRequest = new ProviderRequest();
            providerRequest.reportLocation = parcel.readInt() == 1;
            providerRequest.interval = parcel.readLong();
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                providerRequest.locationRequests.add(LocationRequest.CREATOR.createFromParcel(parcel));
            }
            return providerRequest;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProviderRequest[] newArray(int i2) {
            return new ProviderRequest[i2];
        }
    };
    public boolean reportLocation = false;
    public long interval = Long.MAX_VALUE;
    public List<LocationRequest> locationRequests = new ArrayList();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sbR = c.r("ProviderRequest[");
        if (this.reportLocation) {
            sbR.append("ON interval=");
            TimeUtils.formatDuration(this.interval, sbR);
        } else {
            sbR.append("OFF");
        }
        sbR.append(']');
        return sbR.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.reportLocation ? 1 : 0);
        parcel.writeLong(this.interval);
        parcel.writeInt(this.locationRequests.size());
        Iterator<LocationRequest> it = this.locationRequests.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i2);
        }
    }
}
