package android.bluetooth.le;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class ResultStorageDescriptor implements Parcelable {
    public static final Parcelable.Creator<ResultStorageDescriptor> CREATOR = new Parcelable.Creator<ResultStorageDescriptor>() { // from class: android.bluetooth.le.ResultStorageDescriptor.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultStorageDescriptor createFromParcel(Parcel parcel) {
            return new ResultStorageDescriptor(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultStorageDescriptor[] newArray(int i2) {
            return new ResultStorageDescriptor[i2];
        }
    };
    private int mLength;
    private int mOffset;
    private int mType;

    private void ReadFromParcel(Parcel parcel) {
        this.mType = parcel.readInt();
        this.mOffset = parcel.readInt();
        this.mLength = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getLength() {
        return this.mLength;
    }

    public int getOffset() {
        return this.mOffset;
    }

    public int getType() {
        return this.mType;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mOffset);
        parcel.writeInt(this.mLength);
    }

    public ResultStorageDescriptor(int i2, int i3, int i4) {
        this.mType = i2;
        this.mOffset = i3;
        this.mLength = i4;
    }

    private ResultStorageDescriptor(Parcel parcel) {
        ReadFromParcel(parcel);
    }
}
