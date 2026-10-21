package android.nfc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class TechListParcel implements Parcelable {
    public static final Parcelable.Creator<TechListParcel> CREATOR = new Parcelable.Creator<TechListParcel>() { // from class: android.nfc.TechListParcel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TechListParcel createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            String[][] strArr = new String[i2][];
            for (int i3 = 0; i3 < i2; i3++) {
                strArr[i3] = parcel.readStringArray();
            }
            return new TechListParcel(strArr);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TechListParcel[] newArray(int i2) {
            return new TechListParcel[i2];
        }
    };
    private String[][] mTechLists;

    public TechListParcel(String[]... strArr) {
        this.mTechLists = strArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String[][] getTechLists() {
        return this.mTechLists;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int length = this.mTechLists.length;
        parcel.writeInt(length);
        for (int i3 = 0; i3 < length; i3++) {
            parcel.writeStringArray(this.mTechLists[i3]);
        }
    }
}
