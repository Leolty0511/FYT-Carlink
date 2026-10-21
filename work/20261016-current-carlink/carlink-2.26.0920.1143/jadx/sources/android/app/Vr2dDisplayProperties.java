package android.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public final class Vr2dDisplayProperties implements Parcelable {
    public static final Parcelable.Creator<Vr2dDisplayProperties> CREATOR = new Parcelable.Creator<Vr2dDisplayProperties>() { // from class: android.app.Vr2dDisplayProperties.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Vr2dDisplayProperties createFromParcel(Parcel parcel) {
            return new Vr2dDisplayProperties(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Vr2dDisplayProperties[] newArray(int i2) {
            return new Vr2dDisplayProperties[i2];
        }
    };
    public static final int FLAG_VIRTUAL_DISPLAY_ENABLED = 1;
    private final int mAddedFlags;
    private final int mDpi;
    private final int mHeight;
    private final int mRemovedFlags;
    private final int mWidth;

    public static class Builder {
        private int mAddedFlags = 0;
        private int mRemovedFlags = 0;
        private int mWidth = -1;
        private int mHeight = -1;
        private int mDpi = -1;

        public Builder addFlags(int i2) {
            this.mAddedFlags |= i2;
            this.mRemovedFlags = (~i2) & this.mRemovedFlags;
            return this;
        }

        public Vr2dDisplayProperties build() {
            return new Vr2dDisplayProperties(this.mWidth, this.mHeight, this.mDpi, this.mAddedFlags, this.mRemovedFlags);
        }

        public Builder removeFlags(int i2) {
            this.mRemovedFlags |= i2;
            this.mAddedFlags = (~i2) & this.mAddedFlags;
            return this;
        }

        public Builder setDimensions(int i2, int i3, int i4) {
            this.mWidth = i2;
            this.mHeight = i3;
            this.mDpi = i4;
            return this;
        }

        public Builder setEnabled(boolean z2) {
            if (z2) {
                addFlags(1);
            } else {
                removeFlags(1);
            }
            return this;
        }
    }

    private static String toReadableFlags(int i2) {
        return android.accessibilityservice.c.D((i2 & 1) == 1 ? "{enabled" : "{", "}");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(PrintWriter printWriter, String str) {
        StringBuilder sbR = android.accessibilityservice.c.r(str);
        sbR.append(toString());
        printWriter.println(sbR.toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Vr2dDisplayProperties.class != obj.getClass()) {
            return false;
        }
        Vr2dDisplayProperties vr2dDisplayProperties = (Vr2dDisplayProperties) obj;
        return getFlags() == vr2dDisplayProperties.getFlags() && getRemovedFlags() == vr2dDisplayProperties.getRemovedFlags() && getWidth() == vr2dDisplayProperties.getWidth() && getHeight() == vr2dDisplayProperties.getHeight() && getDpi() == vr2dDisplayProperties.getDpi();
    }

    public int getDpi() {
        return this.mDpi;
    }

    public int getFlags() {
        return this.mAddedFlags;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getRemovedFlags() {
        return this.mRemovedFlags;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int hashCode() {
        return getDpi() + ((getHeight() + (getWidth() * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Vr2dDisplayProperties{mWidth=");
        sb.append(this.mWidth);
        sb.append(", mHeight=");
        sb.append(this.mHeight);
        sb.append(", mDpi=");
        sb.append(this.mDpi);
        sb.append(", flags=");
        sb.append(toReadableFlags(this.mAddedFlags));
        sb.append(", removed_flags=");
        return android.accessibilityservice.c.n(sb, toReadableFlags(this.mRemovedFlags), "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mWidth);
        parcel.writeInt(this.mHeight);
        parcel.writeInt(this.mDpi);
        parcel.writeInt(this.mAddedFlags);
        parcel.writeInt(this.mRemovedFlags);
    }

    public Vr2dDisplayProperties(int i2, int i3, int i4) {
        this(i2, i3, i4, 0, 0);
    }

    private Vr2dDisplayProperties(int i2, int i3, int i4, int i5, int i6) {
        this.mWidth = i2;
        this.mHeight = i3;
        this.mDpi = i4;
        this.mAddedFlags = i5;
        this.mRemovedFlags = i6;
    }

    private Vr2dDisplayProperties(Parcel parcel) {
        this.mWidth = parcel.readInt();
        this.mHeight = parcel.readInt();
        this.mDpi = parcel.readInt();
        this.mAddedFlags = parcel.readInt();
        this.mRemovedFlags = parcel.readInt();
    }
}
