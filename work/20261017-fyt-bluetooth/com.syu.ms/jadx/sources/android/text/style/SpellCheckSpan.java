package android.text.style;

import android.os.Parcel;
import android.text.ParcelableSpan;

/* JADX INFO: loaded from: classes.dex */
public class SpellCheckSpan implements ParcelableSpan {
    private boolean mSpellCheckInProgress;

    public SpellCheckSpan() {
        this.mSpellCheckInProgress = false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeId() {
        return 20;
    }

    public boolean isSpellCheckInProgress() {
        return this.mSpellCheckInProgress;
    }

    public void setSpellCheckInProgress(boolean z2) {
        this.mSpellCheckInProgress = z2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSpellCheckInProgress ? 1 : 0);
    }

    public SpellCheckSpan(Parcel parcel) {
        this.mSpellCheckInProgress = parcel.readInt() != 0;
    }
}
