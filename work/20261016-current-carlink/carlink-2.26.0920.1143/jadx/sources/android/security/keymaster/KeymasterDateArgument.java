package android.security.keymaster;

import android.accessibilityservice.c;
import android.os.Parcel;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class KeymasterDateArgument extends KeymasterArgument {
    public final Date date;

    public KeymasterDateArgument(int i2, Date date) {
        super(i2);
        if (KeymasterDefs.getTagType(i2) != 1610612736) {
            throw new IllegalArgumentException(c.d("Bad date tag ", i2));
        }
        this.date = date;
    }

    @Override // android.security.keymaster.KeymasterArgument
    public void writeValue(Parcel parcel) {
        parcel.writeLong(this.date.getTime());
    }

    public KeymasterDateArgument(int i2, Parcel parcel) {
        super(i2);
        this.date = new Date(parcel.readLong());
    }
}
