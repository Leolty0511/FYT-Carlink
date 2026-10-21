package com.android.internal.content;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ReferrerIntent extends Intent {
    public static final Parcelable.Creator<ReferrerIntent> CREATOR = new Parcelable.Creator<ReferrerIntent>() { // from class: com.android.internal.content.ReferrerIntent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReferrerIntent createFromParcel(Parcel parcel) {
            return new ReferrerIntent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReferrerIntent[] newArray(int i2) {
            return new ReferrerIntent[i2];
        }
    };
    public final String mReferrer;

    public ReferrerIntent(Intent intent, String str) {
        super(intent);
        this.mReferrer = str;
    }

    @Override // android.content.Intent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.mReferrer);
    }

    public ReferrerIntent(Parcel parcel) {
        readFromParcel(parcel);
        this.mReferrer = parcel.readString();
    }
}
