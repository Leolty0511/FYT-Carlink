package android.text.style;

import android.os.Parcel;
import android.text.ParcelableSpan;
import android.text.TextPaint;

/* JADX INFO: loaded from: classes2.dex */
public class RelativeSizeSpan extends MetricAffectingSpan implements ParcelableSpan {
    private final float mProportion;

    public RelativeSizeSpan(float f2) {
        this.mProportion = f2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float getSizeChange() {
        return this.mProportion;
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeId() {
        return getSpanTypeIdInternal();
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeIdInternal() {
        return 3;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(textPaint.getTextSize() * this.mProportion);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(textPaint.getTextSize() * this.mProportion);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeToParcelInternal(parcel, i2);
    }

    @Override // android.text.ParcelableSpan
    public void writeToParcelInternal(Parcel parcel, int i2) {
        parcel.writeFloat(this.mProportion);
    }

    public RelativeSizeSpan(Parcel parcel) {
        this.mProportion = parcel.readFloat();
    }
}
