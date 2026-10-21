package android.view.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class ParcelableMap extends HashMap<AutofillId, AutofillValue> implements Parcelable {
    public static final Parcelable.Creator<ParcelableMap> CREATOR = new Parcelable.Creator<ParcelableMap>() { // from class: android.view.autofill.ParcelableMap.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableMap createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            ParcelableMap parcelableMap = new ParcelableMap(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                parcelableMap.put((AutofillId) parcel.readParcelable(null), (AutofillValue) parcel.readParcelable(null));
            }
            return parcelableMap;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableMap[] newArray(int i2) {
            return new ParcelableMap[i2];
        }
    };

    public ParcelableMap(int i2) {
        super(i2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(size());
        for (Map.Entry<AutofillId, AutofillValue> entry : entrySet()) {
            parcel.writeParcelable(entry.getKey(), 0);
            parcel.writeParcelable(entry.getValue(), 0);
        }
    }
}
