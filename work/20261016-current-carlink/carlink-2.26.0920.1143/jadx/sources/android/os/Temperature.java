package android.os;

/* JADX INFO: loaded from: classes.dex */
public class Temperature implements Parcelable {
    public static final Parcelable.Creator<Temperature> CREATOR = new Parcelable.Creator<Temperature>() { // from class: android.os.Temperature.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Temperature createFromParcel(Parcel parcel) {
            return new Temperature(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Temperature[] newArray(int i2) {
            return new Temperature[i2];
        }
    };
    private int mType;
    private float mValue;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getType() {
        return this.mType;
    }

    public float getValue() {
        return this.mValue;
    }

    public void readFromParcel(Parcel parcel) {
        this.mValue = parcel.readFloat();
        this.mType = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.mValue);
        parcel.writeInt(this.mType);
    }

    public Temperature() {
        this.mType = Integer.MIN_VALUE;
        this.mValue = -3.4028235E38f;
    }

    public Temperature(float f2, int i2) {
        this.mValue = f2;
        this.mType = i2;
    }

    private Temperature(Parcel parcel) {
        readFromParcel(parcel);
    }
}
