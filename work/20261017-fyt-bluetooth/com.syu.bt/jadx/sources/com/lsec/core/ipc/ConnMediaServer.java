package com.lsec.core.ipc;

import android.content.Context;
import com.lsec.core.util.InterfaceApp;

/* JADX INFO: loaded from: classes.dex */
public class ConnMediaServer extends Conn_Base {
    public ConnMediaServer(InterfaceApp interfaceApp, Context context) {
        super("com.syu.video", "com.syu.app.ToolkitService", interfaceApp, context);
    }
}
