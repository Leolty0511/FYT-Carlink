package android.security.keymaster;

import android.app.m;
import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
abstract class KeymasterArgument implements Parcelable {
    public static final Parcelable.Creator<KeymasterArgument> CREATOR = new Parcelable.Creator<KeymasterArgument>() { // from class: android.security.keymaster.KeymasterArgument.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeymasterArgument createFromParcel(Parcel parcel) {
            int iDataPosition = parcel.dataPosition();
            int i2 = parcel.readInt();
            int tagType = KeymasterDefs.getTagType(i2);
            if (tagType == Integer.MIN_VALUE || tagType == -1879048192) {
                return new KeymasterBlobArgument(i2, parcel);
            }
            if (tagType != -1610612736) {
                if (tagType == 268435456 || tagType == 536870912 || tagType == 805306368 || tagType == 1073741824) {
                    return new KeymasterIntArgument(i2, parcel);
                }
                if (tagType != 1342177280) {
                    if (tagType == 1610612736) {
                        return new KeymasterDateArgument(i2, parcel);
                    }
                    if (tagType == 1879048192) {
                        return new KeymasterBooleanArgument(i2, parcel);
                    }
                    throw new ParcelFormatException(m.e("Bad tag: ", i2, " at ", iDataPosition));
                }
            }
            return new KeymasterLongArgument(i2, parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeymasterArgument[] newArray(int i2) {
            return new KeymasterArgument[i2];
        }
    };
    public final int tag;

    public KeymasterArgument(int i2) {
        this.tag = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.tag);
        writeValue(parcel);
    }

    public abstract void writeValue(Parcel parcel);
}
