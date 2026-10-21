package com.lsec.core.ipc;

import android.content.Context;
import com.lsec.core.util.InterfaceApp;

/* JADX INFO: loaded from: classes.dex */
public class ConnStockServer extends Conn_Base {
    public ConnStockServer(InterfaceApp interfaceApp, Context context) {
        super("com.syu.stock", "com.syu.app.ToolkitService", interfaceApp, context);
    }
}
