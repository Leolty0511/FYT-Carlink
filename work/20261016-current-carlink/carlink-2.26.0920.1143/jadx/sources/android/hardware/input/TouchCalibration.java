package android.hardware.input;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class TouchCalibration implements Parcelable {
    private final float mXOffset;
    private final float mXScale;
    private final float mXYMix;
    private final float mYOffset;
    private final float mYScale;
    private final float mYXMix;
    public static final TouchCalibration IDENTITY = new TouchCalibration();
    public static final Parcelable.Creator<TouchCalibration> CREATOR = new Parcelable.Creator<TouchCalibration>() { // from class: android.hardware.input.TouchCalibration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TouchCalibration createFromParcel(Parcel parcel) {
            return new TouchCalibration(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TouchCalibration[] newArray(int i2) {
            return new TouchCalibration[i2];
        }
    };

    public TouchCalibration() {
        this(1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TouchCalibration)) {
            return false;
        }
        TouchCalibration touchCalibration = (TouchCalibration) obj;
        return touchCalibration.mXScale == this.mXScale && touchCalibration.mXYMix == this.mXYMix && touchCalibration.mXOffset == this.mXOffset && touchCalibration.mYXMix == this.mYXMix && touchCalibration.mYScale == this.mYScale && touchCalibration.mYOffset == this.mYOffset;
    }

    public float[] getAffineTransform() {
        return new float[]{this.mXScale, this.mXYMix, this.mXOffset, this.mYXMix, this.mYScale, this.mYOffset};
    }

    public int hashCode() {
        return ((((Float.floatToIntBits(this.mXScale) ^ Float.floatToIntBits(this.mXYMix)) ^ Float.floatToIntBits(this.mXOffset)) ^ Float.floatToIntBits(this.mYXMix)) ^ Float.floatToIntBits(this.mYScale)) ^ Float.floatToIntBits(this.mYOffset);
    }

    public String toString() {
        return String.format("[%f, %f, %f, %f, %f, %f]", Float.valueOf(this.mXScale), Float.valueOf(this.mXYMix), Float.valueOf(this.mXOffset), Float.valueOf(this.mYXMix), Float.valueOf(this.mYScale), Float.valueOf(this.mYOffset));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.mXScale);
        parcel.writeFloat(this.mXYMix);
        parcel.writeFloat(this.mXOffset);
        parcel.writeFloat(this.mYXMix);
        parcel.writeFloat(this.mYScale);
        parcel.writeFloat(this.mYOffset);
    }

    public TouchCalibration(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.mXScale = f2;
        this.mXYMix = f3;
        this.mXOffset = f4;
        this.mYXMix = f5;
        this.mYScale = f6;
        this.mYOffset = f7;
    }

    public TouchCalibration(Parcel parcel) {
        this.mXScale = parcel.readFloat();
        this.mXYMix = parcel.readFloat();
        this.mXOffset = parcel.readFloat();
        this.mYXMix = parcel.readFloat();
        this.mYScale = parcel.readFloat();
        this.mYOffset = parcel.readFloat();
    }
}
