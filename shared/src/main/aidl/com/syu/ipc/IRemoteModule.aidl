package com.syu.ipc;

import com.syu.ipc.IModuleCallback;
import com.syu.ipc.ModuleObject;

/** FYT module Binder contract. Method order is part of the vendor wire protocol. */
interface IRemoteModule {
    void cmd(int cmdCode, in int[] ints, in float[] flts, in String[] strs);
    ModuleObject get(int getCode, in int[] ints, in float[] flts, in String[] strs);
    void register(IModuleCallback callback, int updateCode, int updateNow);
    void unregister(IModuleCallback callback, int updateCode);
}
