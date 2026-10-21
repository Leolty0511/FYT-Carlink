package android.text.style;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Parcel;
import android.text.Layout;
import android.text.ParcelableSpan;

/* JADX INFO: loaded from: classes2.dex */
public class QuoteSpan implements LeadingMarginSpan, ParcelableSpan {
    private static final int GAP_WIDTH = 2;
    private static final int STRIPE_WIDTH = 2;
    private final int mColor;

    public QuoteSpan() {
        this.mColor = Color.BLUE;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7, int i8, boolean z2, Layout layout) {
        Paint.Style style = paint.getStyle();
        int color = paint.getColor();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.mColor);
        canvas.drawRect(i2, i4, (i3 * 2) + i2, i6, paint);
        paint.setStyle(style);
        paint.setColor(color);
    }

    public int getColor() {
        return this.mColor;
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z2) {
        return 4;
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeId() {
        return getSpanTypeIdInternal();
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeIdInternal() {
        return 9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeToParcelInternal(parcel, i2);
    }

    @Override // android.text.ParcelableSpan
    public void writeToParcelInternal(Parcel parcel, int i2) {
        parcel.writeInt(this.mColor);
    }

    public QuoteSpan(int i2) {
        this.mColor = i2;
    }

    public QuoteSpan(Parcel parcel) {
        this.mColor = parcel.readInt();
    }
}
