package android.text.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.text.Layout;
import android.text.ParcelableSpan;

/* JADX INFO: loaded from: classes2.dex */
public interface LeadingMarginSpan extends ParagraphStyle {

    public interface LeadingMarginSpan2 extends LeadingMarginSpan, WrapTogetherSpan {
        int getLeadingMarginLineCount();
    }

    void drawLeadingMargin(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7, int i8, boolean z2, Layout layout);

    int getLeadingMargin(boolean z2);

    public static class Standard implements LeadingMarginSpan, ParcelableSpan {
        private final int mFirst;
        private final int mRest;

        public Standard(int i2, int i3) {
            this.mFirst = i2;
            this.mRest = i3;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.text.style.LeadingMarginSpan
        public void drawLeadingMargin(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7, int i8, boolean z2, Layout layout) {
        }

        @Override // android.text.style.LeadingMarginSpan
        public int getLeadingMargin(boolean z2) {
            return z2 ? this.mFirst : this.mRest;
        }

        @Override // android.text.ParcelableSpan
        public int getSpanTypeId() {
            return getSpanTypeIdInternal();
        }

        @Override // android.text.ParcelableSpan
        public int getSpanTypeIdInternal() {
            return 10;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            writeToParcelInternal(parcel, i2);
        }

        @Override // android.text.ParcelableSpan
        public void writeToParcelInternal(Parcel parcel, int i2) {
            parcel.writeInt(this.mFirst);
            parcel.writeInt(this.mRest);
        }

        public Standard(int i2) {
            this(i2, i2);
        }

        public Standard(Parcel parcel) {
            this.mFirst = parcel.readInt();
            this.mRest = parcel.readInt();
        }
    }
}
