package android.text.style;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Parcel;
import android.text.ParcelableSpan;
import android.text.TextPaint;

/* JADX INFO: loaded from: classes2.dex */
public class TypefaceSpan extends MetricAffectingSpan implements ParcelableSpan {
    private final String mFamily;

    public TypefaceSpan(String str) {
        this.mFamily = str;
    }

    private static void apply(Paint paint, String str) {
        Typeface typeface = paint.getTypeface();
        int style = typeface == null ? 0 : typeface.getStyle();
        Typeface typefaceCreate = Typeface.create(str, style);
        int i2 = style & (~typefaceCreate.getStyle());
        if ((i2 & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((i2 & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(typefaceCreate);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getFamily() {
        return this.mFamily;
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeId() {
        return getSpanTypeIdInternal();
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeIdInternal() {
        return 13;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        apply(textPaint, this.mFamily);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        apply(textPaint, this.mFamily);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeToParcelInternal(parcel, i2);
    }

    @Override // android.text.ParcelableSpan
    public void writeToParcelInternal(Parcel parcel, int i2) {
        parcel.writeString(this.mFamily);
    }

    public TypefaceSpan(Parcel parcel) {
        this.mFamily = parcel.readString();
    }
}
