package com.lsec.core.ipc;

import android.content.Context;
import com.lsec.core.util.InterfaceApp;

/* JADX INFO: loaded from: classes.dex */
public class ConnSys extends Conn_Base {
    public ConnSys(InterfaceApp interfaceApp, Context context) {
        super("com.syu.ss", "app.ToolkitService", interfaceApp, context);
    }

    public ConnSys(String pkgName, String clsName, InterfaceApp interfaceApp, Context context) {
        super(pkgName, clsName, interfaceApp, context);
    }
}
