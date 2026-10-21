package android.security.keymaster;

import android.accessibilityservice.c;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class KeymasterBooleanArgument extends KeymasterArgument {
    public final boolean value;

    public KeymasterBooleanArgument(int i2) {
        super(i2);
        this.value = true;
        if (KeymasterDefs.getTagType(i2) != 1879048192) {
            throw new IllegalArgumentException(c.d("Bad bool tag ", i2));
        }
    }

    @Override // android.security.keymaster.KeymasterArgument
    public void writeValue(Parcel parcel) {
    }

    public KeymasterBooleanArgument(int i2, Parcel parcel) {
        super(i2);
        this.value = true;
    }
}
