package com.android.internal.location;

import android.location.LocationRequest;
import android.net.LinkQualityInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.TimeUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ProviderRequest implements Parcelable {
    public static final Parcelable.Creator<ProviderRequest> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f977a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f978b = LinkQualityInfo.UNKNOWN_LONG;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<LocationRequest> f979c = new ArrayList();

    public static class a implements Parcelable.Creator<ProviderRequest> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ProviderRequest createFromParcel(Parcel parcel) {
            ProviderRequest providerRequest = new ProviderRequest();
            providerRequest.f977a = parcel.readInt() == 1;
            providerRequest.f978b = parcel.readLong();
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                providerRequest.f979c.add(LocationRequest.CREATOR.createFromParcel(parcel));
            }
            return providerRequest;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ProviderRequest[] newArray(int i2) {
            return new ProviderRequest[i2];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ProviderRequest[");
        if (this.f977a) {
            sb.append("ON");
            sb.append(" interval=");
            TimeUtils.formatDuration(this.f978b, sb);
        } else {
            sb.append("OFF");
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f977a ? 1 : 0);
        parcel.writeLong(this.f978b);
        parcel.writeInt(this.f979c.size());
        Iterator<LocationRequest> it = this.f979c.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i2);
        }
    }
}
