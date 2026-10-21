package android.view.inputmethod;

import android.accessibilityservice.c;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class InputBinding implements Parcelable {
    public static final Parcelable.Creator<InputBinding> CREATOR = new Parcelable.Creator<InputBinding>() { // from class: android.view.inputmethod.InputBinding.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputBinding createFromParcel(Parcel parcel) {
            return new InputBinding(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputBinding[] newArray(int i2) {
            return new InputBinding[i2];
        }
    };
    static final String TAG = "InputBinding";
    final InputConnection mConnection;
    final IBinder mConnectionToken;
    final int mPid;
    final int mUid;

    public InputBinding(InputConnection inputConnection, IBinder iBinder, int i2, int i3) {
        this.mConnection = inputConnection;
        this.mConnectionToken = iBinder;
        this.mUid = i2;
        this.mPid = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public InputConnection getConnection() {
        return this.mConnection;
    }

    public IBinder getConnectionToken() {
        return this.mConnectionToken;
    }

    public int getPid() {
        return this.mPid;
    }

    public int getUid() {
        return this.mUid;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("InputBinding{");
        sb.append(this.mConnectionToken);
        sb.append(" / uid ");
        sb.append(this.mUid);
        sb.append(" / pid ");
        return c.m(sb, this.mPid, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.mConnectionToken);
        parcel.writeInt(this.mUid);
        parcel.writeInt(this.mPid);
    }

    public InputBinding(InputConnection inputConnection, InputBinding inputBinding) {
        this.mConnection = inputConnection;
        this.mConnectionToken = inputBinding.getConnectionToken();
        this.mUid = inputBinding.getUid();
        this.mPid = inputBinding.getPid();
    }

    public InputBinding(Parcel parcel) {
        this.mConnection = null;
        this.mConnectionToken = parcel.readStrongBinder();
        this.mUid = parcel.readInt();
        this.mPid = parcel.readInt();
    }
}
