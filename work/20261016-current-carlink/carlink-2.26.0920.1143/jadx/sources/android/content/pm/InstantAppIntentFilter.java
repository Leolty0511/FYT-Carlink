package android.content.pm;

import android.content.IntentFilter;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class InstantAppIntentFilter implements Parcelable {
    public static final Parcelable.Creator<InstantAppIntentFilter> CREATOR = new Parcelable.Creator<InstantAppIntentFilter>() { // from class: android.content.pm.InstantAppIntentFilter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InstantAppIntentFilter createFromParcel(Parcel parcel) {
            return new InstantAppIntentFilter(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InstantAppIntentFilter[] newArray(int i2) {
            return new InstantAppIntentFilter[i2];
        }
    };
    private final List<IntentFilter> mFilters;
    private final String mSplitName;

    public InstantAppIntentFilter(String str, List<IntentFilter> list) {
        ArrayList arrayList = new ArrayList();
        this.mFilters = arrayList;
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException();
        }
        this.mSplitName = str;
        arrayList.addAll(list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<IntentFilter> getFilters() {
        return this.mFilters;
    }

    public String getSplitName() {
        return this.mSplitName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mSplitName);
        parcel.writeList(this.mFilters);
    }

    public InstantAppIntentFilter(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        this.mFilters = arrayList;
        this.mSplitName = parcel.readString();
        parcel.readList(arrayList, null);
    }
}
