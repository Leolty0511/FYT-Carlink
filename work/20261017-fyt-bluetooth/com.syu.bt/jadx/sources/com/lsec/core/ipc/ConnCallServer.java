package com.lsec.core.ipc;

import android.content.Context;
import com.lsec.core.util.InterfaceApp;

/* JADX INFO: loaded from: classes.dex */
public class ConnCallServer extends Conn_Base {
    public ConnCallServer(InterfaceApp interfaceApp, Context context) {
        super("com.syu.call", "com.syu.app.ToolkitService", interfaceApp, context);
    }
}
