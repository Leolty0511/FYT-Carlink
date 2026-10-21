package android.security.keymaster;

import android.accessibilityservice.c;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class KeymasterIntArgument extends KeymasterArgument {
    public final int value;

    public KeymasterIntArgument(int i2, int i3) {
        super(i2);
        int tagType = KeymasterDefs.getTagType(i2);
        if (tagType != 268435456 && tagType != 536870912 && tagType != 805306368 && tagType != 1073741824) {
            throw new IllegalArgumentException(c.d("Bad int tag ", i2));
        }
        this.value = i3;
    }

    @Override // android.security.keymaster.KeymasterArgument
    public void writeValue(Parcel parcel) {
        parcel.writeInt(this.value);
    }

    public KeymasterIntArgument(int i2, Parcel parcel) {
        super(i2);
        this.value = parcel.readInt();
    }
}
