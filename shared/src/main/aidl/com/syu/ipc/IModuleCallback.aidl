package com.syu.ipc;

/** Callback contract exposed by the FYT module service. */
interface IModuleCallback {
    void update(int updateCode, in int[] ints, in float[] flts, in String[] strs);
}
