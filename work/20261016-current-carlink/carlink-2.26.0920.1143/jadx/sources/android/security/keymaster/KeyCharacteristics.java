package android.security.keymaster;

import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class KeyCharacteristics implements Parcelable {
    public static final Parcelable.Creator<KeyCharacteristics> CREATOR = new Parcelable.Creator<KeyCharacteristics>() { // from class: android.security.keymaster.KeyCharacteristics.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyCharacteristics createFromParcel(Parcel parcel) {
            return new KeyCharacteristics(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyCharacteristics[] newArray(int i2) {
            return new KeyCharacteristics[i2];
        }
    };
    public KeymasterArguments hwEnforced;
    public KeymasterArguments swEnforced;

    public KeyCharacteristics() {
    }

    public KeyCharacteristics(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean getBoolean(int i2) {
        return this.hwEnforced.containsTag(i2) ? this.hwEnforced.getBoolean(i2) : this.swEnforced.getBoolean(i2);
    }

    public Date getDate(int i2) {
        Date date = this.swEnforced.getDate(i2, null);
        return date != null ? date : this.hwEnforced.getDate(i2, null);
    }

    public Integer getEnum(int i2) {
        if (this.hwEnforced.containsTag(i2)) {
            return Integer.valueOf(this.hwEnforced.getEnum(i2, -1));
        }
        if (this.swEnforced.containsTag(i2)) {
            return Integer.valueOf(this.swEnforced.getEnum(i2, -1));
        }
        return null;
    }

    public List<Integer> getEnums(int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.hwEnforced.getEnums(i2));
        arrayList.addAll(this.swEnforced.getEnums(i2));
        return arrayList;
    }

    public long getUnsignedInt(int i2, long j2) {
        return this.hwEnforced.containsTag(i2) ? this.hwEnforced.getUnsignedInt(i2, j2) : this.swEnforced.getUnsignedInt(i2, j2);
    }

    public List<BigInteger> getUnsignedLongs(int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.hwEnforced.getUnsignedLongs(i2));
        arrayList.addAll(this.swEnforced.getUnsignedLongs(i2));
        return arrayList;
    }

    public void readFromParcel(Parcel parcel) {
        Parcelable.Creator<KeymasterArguments> creator = KeymasterArguments.CREATOR;
        this.swEnforced = creator.createFromParcel(parcel);
        this.hwEnforced = creator.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.swEnforced.writeToParcel(parcel, i2);
        this.hwEnforced.writeToParcel(parcel, i2);
    }
}
