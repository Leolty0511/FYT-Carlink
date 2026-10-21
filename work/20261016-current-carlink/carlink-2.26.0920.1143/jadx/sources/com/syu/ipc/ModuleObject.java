package com.syu.ipc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public class ModuleObject implements Parcelable {
    public static final Parcelable.Creator<ModuleObject> CREATOR = new Parcelable.Creator<ModuleObject>() { // from class: com.syu.ipc.ModuleObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModuleObject createFromParcel(Parcel parcel) {
            return new ModuleObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModuleObject[] newArray(int i2) {
            return new ModuleObject[i2];
        }
    };
    public float[] flts;
    public int[] ints;
    public String[] strs;

    public ModuleObject() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.ints);
        parcel.writeFloatArray(this.flts);
        parcel.writeStringArray(this.strs);
    }

    public ModuleObject(int i2) {
        this.ints = new int[]{i2};
    }

    public ModuleObject(int i2, String str) {
        this.ints = new int[]{i2};
        this.strs = new String[]{str};
    }

    public ModuleObject(int[] iArr) {
        this.ints = iArr;
    }

    public ModuleObject(String str) {
        this.strs = new String[]{str};
    }

    private ModuleObject(Parcel parcel) {
        this.ints = parcel.createIntArray();
        this.flts = parcel.createFloatArray();
        this.strs = parcel.createStringArray();
    }
}
