package com.android.internal.view;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.InputChannel;

/* JADX INFO: loaded from: classes3.dex */
public final class InputBindResult implements Parcelable {
    public static final Parcelable.Creator<InputBindResult> CREATOR = new Parcelable.Creator<InputBindResult>() { // from class: com.android.internal.view.InputBindResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputBindResult createFromParcel(Parcel parcel) {
            return new InputBindResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputBindResult[] newArray(int i2) {
            return new InputBindResult[i2];
        }
    };
    static final String TAG = "InputBindResult";
    public final InputChannel channel;
    public final String id;
    public final IInputMethodSession method;
    public final int sequence;
    public final int userActionNotificationSequenceNumber;

    public InputBindResult(IInputMethodSession iInputMethodSession, InputChannel inputChannel, String str, int i2, int i3) {
        this.method = iInputMethodSession;
        this.channel = inputChannel;
        this.id = str;
        this.sequence = i2;
        this.userActionNotificationSequenceNumber = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        InputChannel inputChannel = this.channel;
        if (inputChannel != null) {
            return inputChannel.describeContents();
        }
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("InputBindResult{");
        sb.append(this.method);
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sb.append(this.id);
        sb.append(" sequence:");
        sb.append(this.sequence);
        sb.append(" userActionNotificationSequenceNumber:");
        return c.m(sb, this.userActionNotificationSequenceNumber, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongInterface(this.method);
        if (this.channel != null) {
            parcel.writeInt(1);
            this.channel.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.id);
        parcel.writeInt(this.sequence);
        parcel.writeInt(this.userActionNotificationSequenceNumber);
    }

    public InputBindResult(Parcel parcel) {
        this.method = IInputMethodSession.Stub.asInterface(parcel.readStrongBinder());
        if (parcel.readInt() != 0) {
            this.channel = InputChannel.CREATOR.createFromParcel(parcel);
        } else {
            this.channel = null;
        }
        this.id = parcel.readString();
        this.sequence = parcel.readInt();
        this.userActionNotificationSequenceNumber = parcel.readInt();
    }
}
