package com.syu.ipc;

import com.syu.ipc.IRemoteModule;

/** Only transaction 1 is needed to obtain FYT's phone-Bluetooth module. */
interface IRemoteToolkit {
    IRemoteModule getRemoteModule(int moduleCode);
}
