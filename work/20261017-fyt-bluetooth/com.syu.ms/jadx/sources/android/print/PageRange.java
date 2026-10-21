package android.print;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class PageRange implements Parcelable {
    public static final PageRange ALL_PAGES = new PageRange(0, Integer.MAX_VALUE);
    public static final Parcelable.Creator<PageRange> CREATOR = new Parcelable.Creator<PageRange>() { // from class: android.print.PageRange.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PageRange createFromParcel(Parcel parcel) {
            return new PageRange(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PageRange[] newArray(int i2) {
            return new PageRange[i2];
        }
    };
    private final int mEnd;
    private final int mStart;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PageRange.class != obj.getClass()) {
            return false;
        }
        PageRange pageRange = (PageRange) obj;
        return this.mEnd == pageRange.mEnd && this.mStart == pageRange.mStart;
    }

    public int getEnd() {
        return this.mEnd;
    }

    public int getStart() {
        return this.mStart;
    }

    public int hashCode() {
        return ((this.mEnd + 31) * 31) + this.mStart;
    }

    public String toString() {
        if (this.mStart == 0 && this.mEnd == Integer.MAX_VALUE) {
            return "PageRange[<all pages>]";
        }
        return "PageRange[" + this.mStart + " - " + this.mEnd + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mStart);
        parcel.writeInt(this.mEnd);
    }

    public PageRange(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("start cannot be less than zero.");
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("end cannot be less than zero.");
        }
        if (i2 > i3) {
            throw new IllegalArgumentException("start must be lesser than end.");
        }
        this.mStart = i2;
        this.mEnd = i3;
    }

    private PageRange(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt());
    }
}
