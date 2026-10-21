package com.syu.ipc;

/* JADX INFO: loaded from: classes.dex */
public class ModuleObject {
    public float[] flts;
    public int[] ints;
    public String[] strs;

    public ModuleObject() {
    }

    public ModuleObject(int value) {
        this.ints = new int[]{value};
    }

    public ModuleObject(int value, String strValue) {
        this.ints = new int[]{value};
        this.strs = new String[]{strValue};
    }

    public ModuleObject(int[] ints) {
        this.ints = ints;
    }

    public ModuleObject(String value) {
        this.strs = new String[]{value};
    }
}
