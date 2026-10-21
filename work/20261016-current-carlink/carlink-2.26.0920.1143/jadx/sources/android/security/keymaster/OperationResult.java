package android.security.keymaster;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class OperationResult implements Parcelable {
    public static final Parcelable.Creator<OperationResult> CREATOR = new Parcelable.Creator<OperationResult>() { // from class: android.security.keymaster.OperationResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OperationResult createFromParcel(Parcel parcel) {
            return new OperationResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OperationResult[] newArray(int i2) {
            return new OperationResult[i2];
        }
    };
    public final int inputConsumed;
    public final long operationHandle;
    public final KeymasterArguments outParams;
    public final byte[] output;
    public final int resultCode;
    public final IBinder token;

    public OperationResult(int i2, IBinder iBinder, long j2, int i3, byte[] bArr, KeymasterArguments keymasterArguments) {
        this.resultCode = i2;
        this.token = iBinder;
        this.operationHandle = j2;
        this.inputConsumed = i3;
        this.output = bArr;
        this.outParams = keymasterArguments;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.resultCode);
        parcel.writeStrongBinder(this.token);
        parcel.writeLong(this.operationHandle);
        parcel.writeInt(this.inputConsumed);
        parcel.writeByteArray(this.output);
        this.outParams.writeToParcel(parcel, i2);
    }

    public OperationResult(Parcel parcel) {
        this.resultCode = parcel.readInt();
        this.token = parcel.readStrongBinder();
        this.operationHandle = parcel.readLong();
        this.inputConsumed = parcel.readInt();
        this.output = parcel.createByteArray();
        this.outParams = KeymasterArguments.CREATOR.createFromParcel(parcel);
    }
}
