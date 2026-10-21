package com.android.ims;

import android.accessibilityservice.c;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.telecom.Log;
import android.telephony.Rlog;

/* JADX INFO: loaded from: classes2.dex */
public class ImsExternalCallState implements Parcelable {
    public static final int CALL_STATE_CONFIRMED = 1;
    public static final int CALL_STATE_TERMINATED = 2;
    public static final Parcelable.Creator<ImsExternalCallState> CREATOR = new Parcelable.Creator<ImsExternalCallState>() { // from class: com.android.ims.ImsExternalCallState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsExternalCallState createFromParcel(Parcel parcel) {
            return new ImsExternalCallState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsExternalCallState[] newArray(int i2) {
            return new ImsExternalCallState[i2];
        }
    };
    private static final String TAG = "ImsExternalCallState";
    private Uri mAddress;
    private int mCallId;
    private int mCallState;
    private int mCallType;
    private boolean mIsHeld;
    private boolean mIsPullable;

    public ImsExternalCallState() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Uri getAddress() {
        return this.mAddress;
    }

    public int getCallId() {
        return this.mCallId;
    }

    public int getCallState() {
        return this.mCallState;
    }

    public int getCallType() {
        return this.mCallType;
    }

    public boolean isCallHeld() {
        return this.mIsHeld;
    }

    public boolean isCallPullable() {
        return this.mIsPullable;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ImsExternalCallState { mCallId = ");
        sb.append(this.mCallId);
        sb.append(", mAddress = ");
        sb.append(Log.pii(this.mAddress));
        sb.append(", mIsPullable = ");
        sb.append(this.mIsPullable);
        sb.append(", mCallState = ");
        sb.append(this.mCallState);
        sb.append(", mCallType = ");
        sb.append(this.mCallType);
        sb.append(", mIsHeld = ");
        return c.o(sb, this.mIsHeld, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCallId);
        parcel.writeParcelable(this.mAddress, 0);
        parcel.writeInt(this.mIsPullable ? 1 : 0);
        parcel.writeInt(this.mCallState);
        parcel.writeInt(this.mCallType);
        parcel.writeInt(this.mIsHeld ? 1 : 0);
        Rlog.d(TAG, "ImsExternalCallState writeToParcel = " + parcel.toString());
    }

    public ImsExternalCallState(int i2, Uri uri, boolean z2, int i3, int i4, boolean z3) {
        this.mCallId = i2;
        this.mAddress = uri;
        this.mIsPullable = z2;
        this.mCallState = i3;
        this.mCallType = i4;
        this.mIsHeld = z3;
        Rlog.d(TAG, "ImsExternalCallState = " + this);
    }

    public ImsExternalCallState(Parcel parcel) {
        this.mCallId = parcel.readInt();
        this.mAddress = (Uri) parcel.readParcelable(ImsExternalCallState.class.getClassLoader());
        this.mIsPullable = parcel.readInt() != 0;
        this.mCallState = parcel.readInt();
        this.mCallType = parcel.readInt();
        this.mIsHeld = parcel.readInt() != 0;
        Rlog.d(TAG, "ImsExternalCallState const = " + this);
    }
}
