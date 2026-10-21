package com.syu.ipc;

import android.os.Parcel;
import android.os.Parcelable;

/** Parcelable returned by FYT module reads. Kept wire-compatible with com.syu.ms. */
public final class ModuleObject implements Parcelable {
    public static final Creator<ModuleObject> CREATOR = new Creator<ModuleObject>() {
        @Override public ModuleObject createFromParcel(Parcel source) {
            return new ModuleObject(source);
        }

        @Override public ModuleObject[] newArray(int size) {
            return new ModuleObject[size];
        }
    };

    public int[] ints;
    public float[] flts;
    public String[] strs;

    public ModuleObject() {}

    private ModuleObject(Parcel source) {
        ints = source.createIntArray();
        flts = source.createFloatArray();
        strs = source.createStringArray();
    }

    @Override public int describeContents() {
        return 0;
    }

    @Override public void writeToParcel(Parcel destination, int flags) {
        destination.writeIntArray(ints);
        destination.writeFloatArray(flts);
        destination.writeStringArray(strs);
    }
}
