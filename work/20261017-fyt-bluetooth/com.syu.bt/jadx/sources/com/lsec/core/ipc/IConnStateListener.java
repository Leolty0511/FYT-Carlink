package com.lsec.core.ipc;

import com.syu.ipc.IRemoteToolkit;

/* JADX INFO: loaded from: classes.dex */
public interface IConnStateListener {
    void onConnected(IRemoteToolkit iRemoteToolkit);

    void onDisconnected();

    void setRegisterModuleCallBack(IRegisterModuleCallBack iRegisterModuleCallBack);
}
