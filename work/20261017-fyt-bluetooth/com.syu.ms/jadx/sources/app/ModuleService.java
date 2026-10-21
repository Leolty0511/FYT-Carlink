package app;

import a.g;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import o1.c;

/* JADX INFO: loaded from: classes.dex */
public class ModuleService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c<String> f235a;

    static {
        c<String> cVar = new c<>(-1);
        f235a = cVar;
        cVar.f("com.syu.ms.main", 0);
        cVar.f("com.syu.ms.radio", 1);
        cVar.f("com.syu.ms.bt", 2);
        cVar.f("com.syu.ms.dvd", 3);
        cVar.f("com.syu.ms.sound", 4);
        cVar.f("com.syu.ms.ipod", 5);
        cVar.f("com.syu.ms.tv", 6);
        cVar.f("com.syu.ms.canbus", 7);
        cVar.f("com.syu.ms.tpms", 8);
        cVar.f("com.syu.ms.dvr", 9);
        cVar.f("com.syu.ms.steer", 10);
        cVar.f("com.syu.ms.customer", 11);
        cVar.f("com.syu.ms.obd", 12);
        cVar.f("com.syu.ms.test", 13);
        cVar.f("com.syu.ms.can.up", 14);
        cVar.f("com.syu.ms.amp", 15);
        cVar.f("com.syu.ms.emitter", 16);
        cVar.f("com.syu.ms.gsensor", 17);
        cVar.f("com.syu.ms.gestrue", 18);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        try {
            return g.K2().p2(f235a.d(intent.getAction(), -1));
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
