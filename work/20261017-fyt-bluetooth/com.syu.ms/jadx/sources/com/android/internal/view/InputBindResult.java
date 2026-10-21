package com.android.internal.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.InputChannel;

/* JADX INFO: loaded from: classes.dex */
public final class InputBindResult implements Parcelable {
    public static final Parcelable.Creator<InputBindResult> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f1232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputChannel f1233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1235d;

    public static class a implements Parcelable.Creator<InputBindResult> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InputBindResult createFromParcel(Parcel parcel) {
            return new InputBindResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public InputBindResult[] newArray(int i2) {
            return new InputBindResult[i2];
        }
    }

    public InputBindResult(Parcel parcel) {
        this.f1232a = g.a.asInterface(parcel.readStrongBinder());
        if (parcel.readInt() != 0) {
            this.f1233b = InputChannel.CREATOR.createFromParcel(parcel);
        } else {
            this.f1233b = null;
        }
        this.f1234c = parcel.readString();
        this.f1235d = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        InputChannel inputChannel = this.f1233b;
        if (inputChannel != null) {
            return inputChannel.describeContents();
        }
        return 0;
    }

    public String toString() {
        return "InputBindResult{" + this.f1232a + " " + this.f1234c + " #" + this.f1235d + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongInterface(this.f1232a);
        if (this.f1233b != null) {
            parcel.writeInt(1);
            this.f1233b.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.f1234c);
        parcel.writeInt(this.f1235d);
    }
}
