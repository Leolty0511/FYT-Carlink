package com.android.internal.util;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Slog;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Messenger f1230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Handler f1231b;

    public static final class a {
    }

    public abstract a a();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1230a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        a();
        throw null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        Slog.d("AsyncService", "onDestroy");
        Message messageObtainMessage = this.f1231b.obtainMessage();
        messageObtainMessage.what = 16777216;
        this.f1231b.sendMessage(messageObtainMessage);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        Slog.d("AsyncService", "onStartCommand");
        Message messageObtainMessage = this.f1231b.obtainMessage();
        messageObtainMessage.what = 16777215;
        messageObtainMessage.arg1 = i2;
        messageObtainMessage.arg2 = i3;
        messageObtainMessage.obj = intent;
        this.f1231b.sendMessage(messageObtainMessage);
        throw null;
    }
}
