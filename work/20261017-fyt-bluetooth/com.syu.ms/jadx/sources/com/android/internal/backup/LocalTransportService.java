package com.android.internal.backup;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import l.b;

/* JADX INFO: loaded from: classes.dex */
public class LocalTransportService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f967a;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return f967a;
    }

    @Override // android.app.Service
    public void onCreate() {
        if (f967a == null) {
            f967a = new b(this);
        }
    }
}
