package android.text.style;

import android.os.Parcel;
import android.text.ParcelableSpan;
import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
public class SuggestionRangeSpan extends CharacterStyle implements ParcelableSpan {
    private int mBackgroundColor;

    public SuggestionRangeSpan() {
        this.mBackgroundColor = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeId() {
        return 21;
    }

    public void setBackgroundColor(int i2) {
        this.mBackgroundColor = i2;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.bgColor = this.mBackgroundColor;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mBackgroundColor);
    }

    public SuggestionRangeSpan(Parcel parcel) {
        this.mBackgroundColor = parcel.readInt();
    }
}
