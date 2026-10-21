package com.lsec.core.ipc;

import android.content.Context;
import com.lsec.core.util.InterfaceApp;

/* JADX INFO: loaded from: classes.dex */
public class ConnClockServer extends Conn_Base {
    public ConnClockServer(InterfaceApp interfaceApp, Context context) {
        super("com.cn.daming.deskclock", "com.syu.app.ToolkitService", interfaceApp, context);
    }
}
