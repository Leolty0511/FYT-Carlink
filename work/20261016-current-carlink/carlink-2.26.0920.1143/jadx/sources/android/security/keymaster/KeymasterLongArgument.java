package android.security.keymaster;

import android.accessibilityservice.c;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class KeymasterLongArgument extends KeymasterArgument {
    public final long value;

    public KeymasterLongArgument(int i2, long j2) {
        super(i2);
        int tagType = KeymasterDefs.getTagType(i2);
        if (tagType != -1610612736 && tagType != 1342177280) {
            throw new IllegalArgumentException(c.d("Bad long tag ", i2));
        }
        this.value = j2;
    }

    @Override // android.security.keymaster.KeymasterArgument
    public void writeValue(Parcel parcel) {
        parcel.writeLong(this.value);
    }

    public KeymasterLongArgument(int i2, Parcel parcel) {
        super(i2);
        this.value = parcel.readLong();
    }
}
