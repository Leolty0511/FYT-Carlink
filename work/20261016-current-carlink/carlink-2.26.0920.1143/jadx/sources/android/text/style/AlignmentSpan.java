package android.text.style;

import android.os.Parcel;
import android.text.Layout;
import android.text.ParcelableSpan;

/* JADX INFO: loaded from: classes2.dex */
public interface AlignmentSpan extends ParagraphStyle {
    Layout.Alignment getAlignment();

    public static class Standard implements AlignmentSpan, ParcelableSpan {
        private final Layout.Alignment mAlignment;

        public Standard(Layout.Alignment alignment) {
            this.mAlignment = alignment;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.text.style.AlignmentSpan
        public Layout.Alignment getAlignment() {
            return this.mAlignment;
        }

        @Override // android.text.ParcelableSpan
        public int getSpanTypeId() {
            return getSpanTypeIdInternal();
        }

        @Override // android.text.ParcelableSpan
        public int getSpanTypeIdInternal() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            writeToParcelInternal(parcel, i2);
        }

        @Override // android.text.ParcelableSpan
        public void writeToParcelInternal(Parcel parcel, int i2) {
            parcel.writeString(this.mAlignment.name());
        }

        public Standard(Parcel parcel) {
            this.mAlignment = Layout.Alignment.valueOf(parcel.readString());
        }
    }
}
