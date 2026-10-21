package com.android.ims;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ImsSuppServiceNotification implements Parcelable {
    public static final Parcelable.Creator<ImsSuppServiceNotification> CREATOR = new Parcelable.Creator<ImsSuppServiceNotification>() { // from class: com.android.ims.ImsSuppServiceNotification.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsSuppServiceNotification createFromParcel(Parcel parcel) {
            return new ImsSuppServiceNotification(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImsSuppServiceNotification[] newArray(int i2) {
            return new ImsSuppServiceNotification[i2];
        }
    };
    private static final String TAG = "ImsSuppServiceNotification";
    public int code;
    public String[] history;
    public int index;
    public int notificationType;
    public String number;
    public int type;

    public ImsSuppServiceNotification() {
    }

    private void readFromParcel(Parcel parcel) {
        this.notificationType = parcel.readInt();
        this.code = parcel.readInt();
        this.index = parcel.readInt();
        this.type = parcel.readInt();
        this.number = parcel.readString();
        this.history = parcel.createStringArray();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{ notificationType=");
        sb.append(this.notificationType);
        sb.append(", code=");
        sb.append(this.code);
        sb.append(", index=");
        sb.append(this.index);
        sb.append(", type=");
        sb.append(this.type);
        sb.append(", number=");
        sb.append(this.number);
        sb.append(", history=");
        return c.n(sb, Arrays.toString(this.history), " }");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.notificationType);
        parcel.writeInt(this.code);
        parcel.writeInt(this.index);
        parcel.writeInt(this.type);
        parcel.writeString(this.number);
        parcel.writeStringArray(this.history);
    }

    public ImsSuppServiceNotification(Parcel parcel) {
        readFromParcel(parcel);
    }
}
