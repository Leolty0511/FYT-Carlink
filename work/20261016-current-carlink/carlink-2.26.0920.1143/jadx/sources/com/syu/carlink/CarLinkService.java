package com.syu.carlink;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.hardware.Camera;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.mtp.MtpConstants;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemProperties;
import android.provider.SettingsStringUtil;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Size;
import android.view.ThreadedRenderer;
import androidx.lifecycle.LifecycleService;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.android.internal.inputmethod.InputMethodUtils;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.transition.EpicenterTranslateClipReveal;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;
import com.syu.carlink.auto.AutoFragment;
import e.f;
import e.g;
import e.h;
import e.j;
import e.m;
import f.k;
import h.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.NoSuchElementException;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public final class CarLinkService extends LifecycleService {
    public static final ArrayList n0 = t.b.b("com.syu.hicar", "com.zjinnova.zlink", "net.easyconn");
    public static final ArrayList o0 = t.b.b("com.syu.music", "com.syu.video");
    public static final int[] p0 = {0, 1, 50, 43, 4, 138, 133, 60, 166, 167, 168, 186, 197};
    public static final int[] q0 = {64, 6, 61, 62, 7, 15, 14, 31, 13, 9};
    public static final int[] r0 = {1003};
    public h.c A;
    public AudioManager B;
    public l.b C;
    public g D;
    public z.a E;
    public volatile int G;
    public final e.d K;
    public final android.os.b L;
    public final a M;
    public final e.d N;
    public final e.d O;
    public final e.d P;
    public final e.d Q;
    public final b R;
    public final a S;
    public final c V;
    public final e.d W;
    public final b Y;
    public final c Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final e.d f573a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f574b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final e.d f575b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final e.e f576c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final e.e f578d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final e.d f580e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final e.d f582f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final e.d f584g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f585h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final b f586h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Integer f587i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final a f588i0;
    public boolean j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public g.d f590k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o.e f592l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final a f593l0;
    public boolean m;
    public final b m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f594n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Size f596p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f597q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f598r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public z.a f599s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public z.a f600t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f602v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f603w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public i f606z;
    public final s.a c = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLinkService$mDevices$2
        @Override // z.a
        public final List<com.syu.carlink.utils.a> invoke() {
            return new ArrayList();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f577d = WifiEnterpriseConfig.ENGINE_DISABLE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f579e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Handler f581f = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f583g = "com.fyt.systemui.remove";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final s.a f589j = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLinkService$mHandle$2
        @Override // z.a
        public final Handler invoke() {
            HandlerThread handlerThread = new HandlerThread("Carlink-Service");
            handlerThread.start();
            return new Handler(handlerThread.getLooper());
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f595o = 15000;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f601u = 2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final long f604x = 200;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f605y = 25;
    public final s.a F = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLinkService$locationManager$2
        {
            super(0);
        }

        @Override // z.a
        public final LocationManager invoke() {
            Object systemService = this.f612b.getSystemService("location");
            t.b.f(systemService, "null cannot be cast to non-null type android.location.LocationManager");
            return (LocationManager) systemService;
        }
    });
    public final e.c H = new e.c(this);
    public final e.c I = new e.c(this);
    public final e.i J = new e.i(this);
    public final s.a T = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLinkService$wirelessLink$2
        {
            super(0);
        }

        @Override // z.a
        public final d invoke() {
            return new d(this.f619b);
        }
    });
    public final s.a U = kotlin.a.c(new z.a() { // from class: com.syu.carlink.CarLinkService$carplayBluetoothMsg$2
        {
            super(0);
        }

        @Override // z.a
        public final h invoke() {
            return new h(this.f607b);
        }
    });
    public final j X = new j(this);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final CarLinkService$killedReceiver$1 f591k0 = new BroadcastReceiver() { // from class: com.syu.carlink.CarLinkService$killedReceiver$1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            Bundle extras;
            StringBuilder sb = new StringBuilder("===================>>  killedReceiver  intent: ");
            sb.append(intent != null ? intent.getAction() : null);
            n.b.a("HDL", sb.toString());
            if (intent == null || (extras = intent.getExtras()) == null) {
                return;
            }
            String string = extras.getString("pkg");
            CarLinkService carLinkService = this.f610a;
            if (carLinkService.getPackageName().equals(string)) {
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink.p()) {
                    carLinkService.b(false);
                }
                carLinkService.e();
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                try {
                    o.e eVarL = carLinkService.l();
                    o.e.f1093i = false;
                    if (eVarL.f1098g) {
                        eVarL.f1094b.unbindService(eVarL);
                    }
                } catch (Exception unused) {
                }
            }
        }
    };

    /* JADX WARN: Type inference failed for: r0v4, types: [e.d] */
    /* JADX WARN: Type inference failed for: r0v5, types: [e.d] */
    /* JADX WARN: Type inference failed for: r0v6, types: [e.d] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.syu.carlink.CarLinkService$killedReceiver$1] */
    /* JADX WARN: Type inference failed for: r2v11, types: [e.d] */
    /* JADX WARN: Type inference failed for: r2v12, types: [e.d] */
    /* JADX WARN: Type inference failed for: r2v13, types: [e.d] */
    /* JADX WARN: Type inference failed for: r2v14, types: [e.d] */
    /* JADX WARN: Type inference failed for: r2v22, types: [e.d] */
    /* JADX WARN: Type inference failed for: r2v26, types: [e.d] */
    /* JADX WARN: Type inference failed for: r2v27, types: [e.d] */
    /* JADX WARN: Type inference failed for: r2v28, types: [e.e] */
    /* JADX WARN: Type inference failed for: r2v29, types: [e.e] */
    /* JADX WARN: Type inference failed for: r2v8, types: [e.d] */
    public CarLinkService() {
        final int i2 = 1;
        final int i3 = 2;
        final int i4 = 6;
        this.K = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i5 = i4;
                CarLinkService carLinkService = this.f761b;
                switch (i5) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        this.L = new android.os.b(i3);
        final int i5 = 5;
        this.M = new a(this, i5);
        final int i6 = 7;
        this.N = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i7 = i6;
                CarLinkService carLinkService = this.f761b;
                switch (i7) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        final int i7 = 8;
        this.O = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i8 = i7;
                CarLinkService carLinkService = this.f761b;
                switch (i8) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        final int i8 = 9;
        this.P = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i9 = i8;
                CarLinkService carLinkService = this.f761b;
                switch (i9) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        final int i9 = 10;
        this.Q = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i10 = i9;
                CarLinkService carLinkService = this.f761b;
                switch (i10) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        this.R = new b(this, i2);
        this.S = new a(this, i4);
        this.V = new c(this, i2);
        final int i10 = 0;
        this.W = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i11 = i10;
                CarLinkService carLinkService = this.f761b;
                switch (i11) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        final int i11 = 3;
        this.Y = new b(this, i11);
        this.Z = new c(this, i10);
        this.f573a0 = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i12 = i2;
                CarLinkService carLinkService = this.f761b;
                switch (i12) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        this.f575b0 = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i12 = i3;
                CarLinkService carLinkService = this.f761b;
                switch (i12) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        this.f576c0 = new Observer() { // from class: e.e
            /* JADX WARN: Code duplicated, block: B:16:0x0052  */
            /* JADX WARN: Code duplicated, block: B:32:0x00a4  */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                boolean z2;
                switch (i10) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        n.b.a("HDL", "handleScreenOn -------- xxxxxxx  ---- screenOn: " + bool);
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        MutableLiveData mutableLiveData = carLink.j().c;
                        t.b.g(bool, "screenOn");
                        if (bool.booleanValue()) {
                            CarLink carLink2 = CarLink.f562i;
                            if (carLink2 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            z2 = t.b.a(carLink2.j().f885d.getValue(), Boolean.TRUE);
                        }
                        mutableLiveData.postValue(Boolean.valueOf(z2));
                        return;
                    default:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        n.b.a("HDL", "handleMcuOn -------- xxxxxxx  ---- mcuOn: " + bool2);
                        CarLink carLink3 = CarLink.f562i;
                        if (carLink3 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        MutableLiveData mutableLiveData2 = carLink3.j().c;
                        t.b.g(bool2, "mcuOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink4 = CarLink.f562i;
                            if (carLink4 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            z2 = t.b.a(carLink4.j().f886e.getValue(), Boolean.TRUE);
                        }
                        mutableLiveData2.postValue(Boolean.valueOf(z2));
                        return;
                }
            }
        };
        this.f578d0 = new Observer() { // from class: e.e
            /* JADX WARN: Code duplicated, block: B:16:0x0052  */
            /* JADX WARN: Code duplicated, block: B:32:0x00a4  */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                boolean z2;
                switch (i2) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        n.b.a("HDL", "handleScreenOn -------- xxxxxxx  ---- screenOn: " + bool);
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        MutableLiveData mutableLiveData = carLink.j().c;
                        t.b.g(bool, "screenOn");
                        if (bool.booleanValue()) {
                            CarLink carLink2 = CarLink.f562i;
                            if (carLink2 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            z2 = t.b.a(carLink2.j().f885d.getValue(), Boolean.TRUE);
                        }
                        mutableLiveData.postValue(Boolean.valueOf(z2));
                        return;
                    default:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        n.b.a("HDL", "handleMcuOn -------- xxxxxxx  ---- mcuOn: " + bool2);
                        CarLink carLink3 = CarLink.f562i;
                        if (carLink3 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        MutableLiveData mutableLiveData2 = carLink3.j().c;
                        t.b.g(bool2, "mcuOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink4 = CarLink.f562i;
                            if (carLink4 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            z2 = t.b.a(carLink4.j().f886e.getValue(), Boolean.TRUE);
                        }
                        mutableLiveData2.postValue(Boolean.valueOf(z2));
                        return;
                }
            }
        };
        this.f580e0 = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i12 = i11;
                CarLinkService carLinkService = this.f761b;
                switch (i12) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        final int i12 = 4;
        this.f582f0 = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i13 = i12;
                CarLinkService carLinkService = this.f761b;
                switch (i13) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        this.f584g0 = new Observer(this) { // from class: e.d

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CarLinkService f761b;

            {
                this.f761b = this;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioManager audioManager;
                h.c cVar;
                Size size;
                AudioManager audioManager2;
                int i13 = i5;
                CarLinkService carLinkService = this.f761b;
                switch (i13) {
                    case 0:
                        Boolean bool = (Boolean) obj;
                        ArrayList arrayList = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb = new StringBuilder("mediaPlaying ----------------->>CarLink.me.appId(): ");
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink.a());
                        sb.append(" isMediaPlaying  : ");
                        sb.append(bool);
                        sb.append("  isUIShowing: ");
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb.append(carLink2.f564d);
                        sb.append(' ');
                        n.b.a("HDL", sb.toString());
                        t.b.g(bool, "it");
                        String strValueOf = String.valueOf(bool.booleanValue());
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("sys.carlink.7731_cp_media", strValueOf);
                        if (bool.booleanValue()) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink3.B() != 5) {
                                return;
                            }
                            String strValueOf2 = String.valueOf(1);
                            t.b.h(strValueOf2, "value");
                            SystemProperties.set("sys.carlink.type", strValueOf2);
                            carLinkService.i();
                            return;
                        }
                        return;
                    case 1:
                        Boolean bool2 = (Boolean) obj;
                        ArrayList arrayList2 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb2 = new StringBuilder("handleBtOn ------------ bt: ");
                        sb2.append(bool2);
                        sb2.append(" CarLink.me.isPowerOn() : ");
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb2.append(carLink4.v());
                        n.b.a("HDL", sb2.toString());
                        t.b.g(bool2, "btOn");
                        if (bool2.booleanValue()) {
                            CarLink carLink5 = CarLink.f562i;
                            if (carLink5 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink5.v()) {
                                carLinkService.f581f.postDelayed(new android.os.b(5), 1000L);
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        Boolean bool3 = (Boolean) obj;
                        ArrayList arrayList3 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        n.b.a("HDL", "handleActivation -------- xxxxxxx  ---- activated: " + bool3);
                        t.b.g(bool3, "activated");
                        boolean zBooleanValue = bool3.booleanValue();
                        Handler handler = carLinkService.f581f;
                        if (zBooleanValue) {
                            CarLink carLink6 = CarLink.f562i;
                            if (carLink6 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink6.p()) {
                                String strValueOf3 = String.valueOf(1);
                                t.b.h(strValueOf3, "value");
                                SystemProperties.set("sys.carlink.type", strValueOf3);
                            } else {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink7.l()) {
                                    String strValueOf4 = String.valueOf(2);
                                    t.b.h(strValueOf4, "value");
                                    SystemProperties.set("sys.carlink.type", strValueOf4);
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink8.n()) {
                                handler.postDelayed(new android.os.b(3), 1000L);
                            }
                        }
                        if (!bool3.booleanValue()) {
                            CarLink carLink9 = CarLink.f562i;
                            if (carLink9 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink9.l()) {
                                f.g gVar = f.k.f825y.f834k;
                                if (gVar != null) {
                                    ((MainActivity) gVar).e().g();
                                    f.k.f825y.e(10L);
                                    return;
                                }
                                return;
                            }
                            CarLink carLink10 = CarLink.f562i;
                            if (carLink10 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink10.p() || (cVar = carLinkService.A) == null) {
                                return;
                            }
                            h.c.i(cVar);
                            return;
                        }
                        CarLink carLink11 = CarLink.f562i;
                        if (carLink11 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink11.B() == 3) {
                            CarLink carLink12 = CarLink.f562i;
                            if (carLink12 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (carLink12.J()) {
                                return;
                            }
                            CarLink carLink13 = CarLink.f562i;
                            if (carLink13 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink13.f564d && !carLink13.y()) {
                                CarLink carLink14 = CarLink.f562i;
                                if (carLink14 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink14.z()) {
                                    return;
                                }
                            }
                            handler.postDelayed(new com.syu.carlink.a(carLinkService, 8), 800L);
                            return;
                        }
                        return;
                    case 3:
                        Boolean bool4 = (Boolean) obj;
                        ArrayList arrayList4 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        CarLink carLink15 = CarLink.f562i;
                        if (carLink15 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink15.l()) {
                            AutoFragment autoFragment = f.k.f825y.f830g;
                            if (autoFragment != null) {
                                autoFragment.h();
                                return;
                            }
                            return;
                        }
                        CarLink carLink16 = CarLink.f562i;
                        if (carLink16 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink16.p()) {
                            t.b.g(bool4, Camera.Parameters.SCENE_MODE_NIGHT);
                            boolean zBooleanValue2 = bool4.booleanValue();
                            n.b.a("HDL", "CARPLAY_C2S_NIGHTMODE state: " + (zBooleanValue2 ? 1 : 0));
                            h.c cVar2 = carLinkService.A;
                            if (cVar2 != null) {
                                cVar2.n(223, null, new int[]{zBooleanValue2 ? 1 : 0});
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        Integer num = (Integer) obj;
                        ArrayList arrayList5 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        StringBuilder sb3 = new StringBuilder("===================>>  phoneStateHandler CarLink.me.isCarplay():: ");
                        CarLink carLink17 = CarLink.f562i;
                        if (carLink17 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink17.p());
                        sb3.append(" LinkType: ");
                        CarLink carLink18 = CarLink.f562i;
                        if (carLink18 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink18.C());
                        sb3.append("  LinkState: ");
                        CarLink carLink19 = CarLink.f562i;
                        if (carLink19 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        sb3.append(carLink19.B());
                        n.b.a("HDL", sb3.toString());
                        CarLink carLink20 = CarLink.f562i;
                        if (carLink20 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink20.p()) {
                            if (num != null && num.intValue() == 0) {
                                return;
                            }
                            if (num != null && num.intValue() == 6) {
                                return;
                            }
                            if (num != null && num.intValue() == 1) {
                                return;
                            }
                            n.b.a("HDL", "===================>>  C_LINK_CUT : 1");
                            o.e.b(carLinkService.l(), 2, 13, new int[]{1}, null, 24);
                            return;
                        }
                        return;
                    case 5:
                        Integer num2 = (Integer) obj;
                        ArrayList arrayList6 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(num2, "it");
                        if (num2.intValue() < 0) {
                            return;
                        }
                        n.b.a("HDL", "=================>>>initRunner  " + carLinkService.f597q + ' ' + carLinkService.f598r + ' ');
                        if (carLinkService.f597q == 0 || carLinkService.f598r == 0) {
                            return;
                        }
                        Handler handlerP = carLinkService.p();
                        com.syu.carlink.b bVar = carLinkService.f586h0;
                        handlerP.removeCallbacks(bVar);
                        carLinkService.p().postDelayed(bVar, 2000L);
                        return;
                    case 6:
                        ArrayList arrayList7 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler2 = carLinkService.f581f;
                        i iVar = carLinkService.J;
                        handler2.removeCallbacks(iVar);
                        handler2.postDelayed(iVar, 200L);
                        return;
                    case 7:
                        Integer num3 = (Integer) obj;
                        ArrayList arrayList8 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        Handler handler3 = carLinkService.f581f;
                        com.syu.carlink.a aVar = carLinkService.M;
                        handler3.removeCallbacks(aVar);
                        handler3.postDelayed(aVar, 200L);
                        if (num3 == null || num3.intValue() != 254) {
                            n.b.a("HDL", "=== > link Handler ============>>> H.removeCallbacks(carplayConnTimeout)");
                            handler3.removeCallbacks(carLinkService.L);
                            if (num3 != null && num3.intValue() == 5) {
                                carLinkService.i();
                            }
                        }
                        if (num3 == null || num3.intValue() != 3 || (size = carLinkService.f596p) == null) {
                            return;
                        }
                        int width = size.getWidth();
                        Size size2 = carLinkService.f596p;
                        t.b.e(size2);
                        int height = size2.getHeight();
                        CarLink carLink21 = CarLink.f562i;
                        if (carLink21 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLinkService.v(width, height, 1 ^ (carLink21.s() ? 1 : 0));
                        carLinkService.f596p = null;
                        return;
                    case 8:
                        Boolean bool5 = (Boolean) obj;
                        ArrayList arrayList9 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool5, InputMethodUtils.SUBTYPE_MODE_VOICE);
                        if (bool5.booleanValue()) {
                            h.c cVar3 = carLinkService.A;
                            if (cVar3 != null && cVar3.f929s != 2) {
                                CarLink carLink22 = CarLink.f562i;
                                if (carLink22 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink22.C() == 1) {
                                    CarLink carLink23 = CarLink.f562i;
                                    if (carLink23 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF = carLink23.f();
                                    int iRequestAudioFocus = (carLinkServiceF == null || (audioManager2 = carLinkServiceF.B) == null) ? -1 : audioManager2.requestAudioFocus(cVar3.f930t, 0, 2);
                                    cVar3.f929s = iRequestAudioFocus;
                                    StringBuilder sb4 = new StringBuilder("===========================>>>>  requestVoiceFocus  type:: ");
                                    CarLink carLink24 = CarLink.f562i;
                                    if (carLink24 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb4.append(carLink24.C());
                                    sb4.append("  ");
                                    sb4.append(iRequestAudioFocus);
                                    n.b.a("HDL", sb4.toString());
                                }
                            }
                        } else {
                            h.c cVar4 = carLinkService.A;
                            if (cVar4 != null) {
                                cVar4.l();
                            }
                        }
                        CarLink carLink25 = CarLink.f562i;
                        if (carLink25 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink25.f564d && bool5.booleanValue()) {
                            carLinkService.j(true);
                        }
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (CarLink.F()) {
                            return;
                        }
                        o.e.b(carLinkService.l(), 0, 156, new int[]{bool5.booleanValue() ? 1 : 0}, null, 24);
                        return;
                    case 9:
                        Boolean bool6 = (Boolean) obj;
                        ArrayList arrayList10 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        if (CarLink.f562i == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!CarLink.F()) {
                            o.e eVarL = carLinkService.l();
                            t.b.g(bool6, "calling");
                            o.e.b(eVarL, 0, 159, new int[]{bool6.booleanValue() ? 1 : 0}, null, 24);
                        }
                        t.b.g(bool6, "calling");
                        if (bool6.booleanValue()) {
                            CarLink carLink26 = CarLink.f562i;
                            if (carLink26 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink26.f564d) {
                                carLinkService.j(true);
                                return;
                            }
                        }
                        if (bool6.booleanValue()) {
                            return;
                        }
                        CarLink carLink27 = CarLink.f562i;
                        if (carLink27 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink27.f564d) {
                            return;
                        }
                        carLinkService.f(true);
                        return;
                    default:
                        Boolean bool7 = (Boolean) obj;
                        ArrayList arrayList11 = CarLinkService.n0;
                        t.b.h(carLinkService, "this$0");
                        t.b.g(bool7, "navi");
                        if (bool7.booleanValue()) {
                            h.c cVar5 = carLinkService.A;
                            if (cVar5 != null && cVar5.f927q != 3) {
                                CarLink carLink28 = CarLink.f562i;
                                if (carLink28 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (carLink28.C() == 1) {
                                    CarLink carLink29 = CarLink.f562i;
                                    if (carLink29 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    CarLinkService carLinkServiceF2 = carLink29.f();
                                    int iRequestAudioFocus2 = (carLinkServiceF2 == null || (audioManager = carLinkServiceF2.B) == null) ? -1 : audioManager.requestAudioFocus(cVar5.f928r, 1, 3);
                                    cVar5.f927q = iRequestAudioFocus2;
                                    StringBuilder sb5 = new StringBuilder("===========================>>>>  requestNaviFocus  type:: ");
                                    CarLink carLink30 = CarLink.f562i;
                                    if (carLink30 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    sb5.append(carLink30.C());
                                    sb5.append("  ");
                                    sb5.append(iRequestAudioFocus2);
                                    n.b.a("HDL", sb5.toString());
                                }
                            }
                        } else {
                            h.c cVar6 = carLinkService.A;
                            if (cVar6 != null) {
                                cVar6.k();
                            }
                        }
                        Handler handlerP2 = carLinkService.p();
                        com.syu.carlink.b bVar2 = carLinkService.R;
                        handlerP2.removeCallbacks(bVar2);
                        carLinkService.p().postDelayed(bVar2, bool7.booleanValue() ? 0L : 3000L);
                        return;
                }
            }
        };
        this.f586h0 = new b(this, i10);
        this.f588i0 = new a(this, i11);
        this.f593l0 = new a(this, i12);
        this.m0 = new b(this, i3);
    }

    public static final boolean a(CarLinkService carLinkService) {
        Size size;
        z.a aVar = carLinkService.E;
        return aVar != null && (size = (Size) aVar.invoke()) != null && size.getWidth() > 0 && size.getHeight() > 0;
    }

    public static CarLink m() {
        CarLink carLink = CarLink.f562i;
        if (carLink != null) {
            return carLink;
        }
        t.b.B("me");
        throw null;
    }

    public static boolean s() {
        String strQ = t.b.q("ro.board.platform");
        String strQ2 = t.b.q("ro.fyt.platform");
        return f0.h.K(strQ, "9863") || f0.h.K(strQ, "ums9620") || f0.h.K(strQ2, "823") || f0.h.K(strQ2, "818") || f0.h.K(strQ2, "818") || f0.h.K(strQ2, "855");
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0099 A[Catch: all -> 0x00b7, TryCatch #2 {all -> 0x00b7, blocks: (B:10:0x000e, B:12:0x0016, B:13:0x001e, B:15:0x0024, B:17:0x0033, B:18:0x0037, B:19:0x003e, B:21:0x0041, B:22:0x004e, B:24:0x0057, B:25:0x005f, B:27:0x0065, B:29:0x0074, B:30:0x0078, B:31:0x007f, B:35:0x0085, B:37:0x008e, B:42:0x0099, B:44:0x00a3, B:47:0x00b9, B:49:0x00bd, B:50:0x00c1, B:52:0x00ca, B:54:0x00d6), top: B:64:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a3 A[Catch: all -> 0x00b7, TryCatch #2 {all -> 0x00b7, blocks: (B:10:0x000e, B:12:0x0016, B:13:0x001e, B:15:0x0024, B:17:0x0033, B:18:0x0037, B:19:0x003e, B:21:0x0041, B:22:0x004e, B:24:0x0057, B:25:0x005f, B:27:0x0065, B:29:0x0074, B:30:0x0078, B:31:0x007f, B:35:0x0085, B:37:0x008e, B:42:0x0099, B:44:0x00a3, B:47:0x00b9, B:49:0x00bd, B:50:0x00c1, B:52:0x00ca, B:54:0x00d6), top: B:64:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00bd A[Catch: all -> 0x00b7, TryCatch #2 {all -> 0x00b7, blocks: (B:10:0x000e, B:12:0x0016, B:13:0x001e, B:15:0x0024, B:17:0x0033, B:18:0x0037, B:19:0x003e, B:21:0x0041, B:22:0x004e, B:24:0x0057, B:25:0x005f, B:27:0x0065, B:29:0x0074, B:30:0x0078, B:31:0x007f, B:35:0x0085, B:37:0x008e, B:42:0x0099, B:44:0x00a3, B:47:0x00b9, B:49:0x00bd, B:50:0x00c1, B:52:0x00ca, B:54:0x00d6), top: B:64:0x000e }] */
    public static void y(CarLinkService carLinkService, MutableLiveData mutableLiveData, String str, String str2, l lVar, int i2) {
        Object next;
        Object next2;
        com.syu.carlink.utils.a aVar = null;
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        if ((i2 & 8) != 0) {
            lVar = null;
        }
        synchronized (carLinkService) {
            if (str2 != null) {
                try {
                    if (!t.b.a(str2, "000000000000")) {
                        try {
                            Iterator it = carLinkService.o().iterator();
                            do {
                                if (!it.hasNext()) {
                                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                }
                                next = it.next();
                            } while (!t.b.a(((com.syu.carlink.utils.a) next).f740b, str2));
                            aVar = (com.syu.carlink.utils.a) next;
                        } catch (Exception unused) {
                        }
                        if (aVar == null) {
                            aVar = new com.syu.carlink.utils.a(str, str2);
                            carLinkService.o().add(aVar);
                        } else {
                            t.b.h(str, "<set-?>");
                            aVar.f739a = str;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (aVar == null) {
                try {
                    Iterator it2 = carLinkService.o().iterator();
                    do {
                        if (!it2.hasNext()) {
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        next2 = it2.next();
                    } while (!t.b.a(((com.syu.carlink.utils.a) next2).f739a, str));
                    aVar = (com.syu.carlink.utils.a) next2;
                } catch (Exception unused2) {
                }
            }
            if (aVar != null) {
                if (str2 != null) {
                    if (t.b.a(str2, "000000000000")) {
                        aVar.f741d = "";
                        aVar.f742e = false;
                        if (aVar.f744g != 1) {
                            aVar.f744g = 1;
                            t.c.I((Integer[]) aVar.c.getValue(), Integer.valueOf(aVar.f744g));
                        }
                        if (aVar.f745h != 1) {
                            aVar.f745h = 1;
                            aVar.f743f = false;
                        }
                        carLinkService.o().remove(aVar);
                    } else {
                        if (str2.length() == 0) {
                            aVar.f741d = "";
                            aVar.f742e = false;
                            if (aVar.f744g != 1) {
                                aVar.f744g = 1;
                                t.c.I((Integer[]) aVar.c.getValue(), Integer.valueOf(aVar.f744g));
                            }
                            if (aVar.f745h != 1) {
                                aVar.f745h = 1;
                                aVar.f743f = false;
                            }
                            carLinkService.o().remove(aVar);
                        }
                    }
                }
                if (lVar == null || ((Boolean) lVar.invoke(aVar)).booleanValue()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(" ===>> update SlaveDevice ");
                    Object[] array = carLinkService.o().toArray(new com.syu.carlink.utils.a[0]);
                    t.b.f(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    String string = Arrays.toString(array);
                    t.b.g(string, "toString(this)");
                    sb.append(string);
                    Log.e("Bt", sb.toString());
                    List listO = carLinkService.o();
                    t.b.h(listO, "<this>");
                    mutableLiveData.postValue(new ArrayList(listO));
                }
            }
        }
    }

    public final void b(boolean z2) {
        if (!z2 && this.f594n != 0) {
            this.f594n = 0;
            Class cls = Boolean.TYPE;
            t.b.e(cls);
            Boolean bool = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls}, "persist.carlink.disconn_debug", Boolean.FALSE);
            if (bool != null ? bool.booleanValue() : false) {
                return;
            }
            if (this.f574b) {
                if (m().b().length() > 0) {
                    l().c(2, 24, null, null, new String[]{""});
                }
            } else {
                o.e.b(l(), 2, 13, new int[]{0}, null, 24);
            }
            n.b.a("HDL", "BT C_LINK_CUT ============>>> 0");
            return;
        }
        if (z2) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink.c() != 0) {
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                this.f594n = carLink2.c();
                StringBuilder sb = new StringBuilder("BT C_LINK_CUT ============>>> 1 lastPhoneState : ");
                sb.append(this.f594n);
                sb.append("  bt state : ");
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                sb.append(carLink3.c());
                n.b.a("HDL", sb.toString());
                if (this.f594n != 0) {
                    if (!this.f574b) {
                        o.e.b(l(), 2, 13, new int[]{1}, null, 24);
                        return;
                    }
                    if (m().b().length() > 0) {
                        o.e.b(l(), 2, 13, new int[]{1}, new String[]{f0.g.J(m().b(), SettingsStringUtil.DELIMITER, "")}, 8);
                    }
                }
            }
        }
    }

    public final void c() {
        this.f599s = null;
        this.f600t = null;
        this.f603w = 0;
        this.f602v = 0;
        p().removeCallbacks(this.Y);
    }

    public final void d(long j2) {
        CarLinkService carLinkServiceF;
        if (e.b.b().v()) {
            n.b.a("HDL", " checkDevice isMcuOn : " + e.b.b().v() + "  CarLink.me.linkState(): " + e.b.b().B() + ' ');
            boolean zY = e.b.b().y();
            boolean z2 = e.b.b().z();
            n.b.a("HDL", " checkDevice autoWired: " + zY + " autoWireless: " + z2 + " isUIShowing: " + e.b.b().f564d + ' ' + this.A);
            if (((!e.b.b().J() && (zY || z2)) || e.b.b().f564d) && e.b.b().v() && e.b.b().B() == 3) {
                h.c cVar = this.A;
                if (cVar != null) {
                    n.b.a("HDL", "==============>>>>  cleanDelay");
                    cVar.m = 0L;
                    cVar.f924n = 0L;
                }
                if ((zY && z2) || e.b.b().f564d) {
                    if (UsbScanner.f635j.a() <= 0) {
                        Handler handler = this.f581f;
                        a aVar = this.S;
                        handler.removeCallbacks(aVar);
                        handler.postDelayed(aVar, j2);
                        return;
                    }
                    return;
                }
                if (zY) {
                    UsbScanner.f635j.a();
                    return;
                }
                if (!z2 || (carLinkServiceF = e.b.b().f()) == null) {
                    return;
                }
                Handler handler2 = carLinkServiceF.f581f;
                a aVar2 = carLinkServiceF.S;
                handler2.removeCallbacks(aVar2);
                handler2.postDelayed(aVar2, j2);
            }
        }
    }

    public final void e() {
        if (e.b.b().C() == 1) {
            MutableLiveData mutableLiveData = e.b.b().j().f902v;
            Boolean bool = Boolean.FALSE;
            mutableLiveData.postValue(bool);
            e.b.b().j().f904x.postValue(bool);
            e.b.b().j().f905y.postValue(bool);
            e.b.b().j().H.postValue(Integer.MIN_VALUE);
            m().j().B.postValue(bool);
            e.b.b().j().f903w.postValue(0);
            Class cls = Integer.TYPE;
            t.b.e(cls);
            Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, "sys.carlink.type", 0);
            int iIntValue = num != null ? num.intValue() : 0;
            if (iIntValue == 1 || iIntValue == 2) {
                String strValueOf = String.valueOf(0);
                t.b.h(strValueOf, "value");
                SystemProperties.set("sys.carlink.type", strValueOf);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001e A[PHI: r3
  0x001e: PHI (r3v4 java.lang.String) = (r3v0 java.lang.String), (r3v1 java.lang.String), (r3v2 java.lang.String) binds: [B:12:0x001c, B:17:0x002a, B:22:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    public final void f(boolean z2) {
        CarLink carLink = CarLink.f562i;
        String str = null;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        boolean z3 = !carLink.o() && z2;
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        String str2 = "com.txzing.voiceassistant";
        if (carLink2.r("com.txzing.voiceassistant")) {
            str = str2;
        } else {
            CarLink carLink3 = CarLink.f562i;
            if (carLink3 == null) {
                t.b.B("me");
                throw null;
            }
            str2 = "com.txznet.adapter";
            if (carLink3.r("com.txznet.adapter")) {
                str = str2;
            } else {
                CarLink carLink4 = CarLink.f562i;
                if (carLink4 == null) {
                    t.b.B("me");
                    throw null;
                }
                str2 = "com.txznet.smartadapter";
                if (carLink4.r("com.txznet.smartadapter")) {
                    str = str2;
                } else {
                    CarLink carLink5 = CarLink.f562i;
                    if (carLink5 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (carLink5.r("com.syu.voice")) {
                        str = "com.syu.voice";
                    }
                }
            }
        }
        if (str != null) {
            Intent intent = new Intent("com.syu.voice.forbidvoice");
            intent.setPackage(str);
            intent.putExtra(ThreadedRenderer.OVERDRAW_PROPERTY_SHOW, z3);
            startService(intent);
            Intent intent2 = new Intent("com.syu.voice.setfloat");
            intent2.setPackage(str);
            intent2.putExtra(ThreadedRenderer.OVERDRAW_PROPERTY_SHOW, z3);
            startService(intent2);
        }
    }

    public final void g() {
        h.c cVar;
        int i2;
        int i3;
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink.B() == 3 && (cVar = this.A) != null) {
            z.a aVar = this.E;
            Size size = aVar != null ? (Size) aVar.invoke() : null;
            if (size == null) {
                n.b.a("HDL", "ensureCarplayDisplaySize no viewport value, skip check");
                return;
            }
            int width = size.getWidth();
            int height = size.getHeight();
            if (width <= 0 || height <= 0 || (i2 = cVar.f914b) <= 0 || (i3 = cVar.c) <= 0) {
                n.b.a("HDL", "ensureCarplayDisplaySize invalid size, viewport: " + width + EpicenterTranslateClipReveal.StateProperty.TARGET_X + height + " negotiated: " + cVar.f914b + EpicenterTranslateClipReveal.StateProperty.TARGET_X + cVar.c + ", skip check");
                return;
            }
            float f2 = i2 / i3;
            float f3 = width / height;
            if (Math.abs(f2 - f3) / f3 <= 0.01f) {
                return;
            }
            n.b.a("HDL", "ensureCarplayDisplaySize aspect mismatch, negotiated: " + cVar.f914b + EpicenterTranslateClipReveal.StateProperty.TARGET_X + cVar.c + ", viewport: " + width + EpicenterTranslateClipReveal.StateProperty.TARGET_X + height + ", re-negotiate before link");
            this.f596p = null;
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 != null) {
                v(width, height, !carLink2.s() ? 1 : 0);
            } else {
                t.b.B("me");
                throw null;
            }
        }
    }

    public final void h(int i2, boolean z2) {
        if (l().f1098g) {
            Integer num = this.f585h;
            if (num != null && num.intValue() == i2) {
                return;
            }
            this.f587i = z2 ? Integer.valueOf(i2) : null;
            o.e.b(l(), 0, 0, new int[]{i2}, null, 24);
        }
    }

    public final void i() {
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink.p()) {
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink2.t()) {
                if (CarLink.f562i == null) {
                    t.b.B("me");
                    throw null;
                }
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink3.a() != 10) {
                    CarLink carLink4 = CarLink.f562i;
                    if (carLink4 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (carLink4.a() != 0) {
                        j(true);
                    }
                    h(10, true);
                }
                this.f581f.postDelayed(new a(this, 7), 100L);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0022  */
    /* JADX WARN: Code duplicated, block: B:19:0x0026  */
    /* JADX WARN: Code duplicated, block: B:21:0x002a  */
    /* JADX WARN: Code duplicated, block: B:22:0x002c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0050  */
    public final void j(boolean z2) {
        CarLink carLink;
        boolean z3;
        Intent launchIntentForPackage;
        if (z2) {
            carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink.f564d) {
                z3 = false;
            } else {
                z3 = true;
            }
        } else {
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink2.z()) {
                carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink.f564d) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            } else {
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink3.y()) {
                    carLink = CarLink.f562i;
                    if (carLink == null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (carLink.f564d) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                } else {
                    z3 = false;
                }
            }
        }
        if (z3 && (launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName())) != null) {
            launchIntentForPackage.setFlags(270532608);
            CarLink carLink4 = CarLink.f562i;
            if (carLink4 != null) {
                carLink4.startActivity(launchIntentForPackage);
            } else {
                t.b.B("me");
                throw null;
            }
        }
    }

    public final void k(Size size) {
        h.c cVar = this.A;
        int i2 = cVar != null ? cVar.f914b : 0;
        int i3 = cVar != null ? cVar.c : 0;
        if (size.getWidth() == 0 || size.getHeight() == 0) {
            return;
        }
        if (i2 == size.getWidth() && i3 == size.getHeight() && this.f596p != null) {
            this.f596p = null;
        } else {
            this.f596p = size;
        }
    }

    public final o.e l() {
        o.e eVar = this.f592l;
        if (eVar != null) {
            return eVar;
        }
        t.b.B("autoServer");
        throw null;
    }

    public final g.d n() {
        g.d dVar = this.f590k;
        if (dVar != null) {
            return dVar;
        }
        t.b.B("controller");
        throw null;
    }

    public final List o() {
        return (List) this.c.getValue();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final IBinder onBind(Intent intent) {
        t.b.h(intent, "intent");
        super.onBind(intent);
        return new f(this);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        t.b.h(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        if (m().B() == 3) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            v(t.b.p(displayMetrics.widthPixels, "sys.carlink.size.width"), t.b.p(displayMetrics.heightPixels, "sys.carlink.size.height"), !m().s() ? 1 : 0);
        }
    }

    @Subscribe(threadMode = ThreadMode.BACKGROUND)
    public final void onConnected(o.a aVar) {
        t.b.h(aVar, "event");
        if (t.b.a("conn", aVar.f1084a) && aVar.f1085b) {
            o.e eVarL = l();
            int[] iArr = p0;
            eVarL.d(0, Arrays.copyOf(iArr, iArr.length));
            o.e eVarL2 = l();
            int[] iArr2 = q0;
            eVarL2.d(2, Arrays.copyOf(iArr2, iArr2.length));
            o.e eVarL3 = l();
            int[] iArr3 = r0;
            eVarL3.d(7, Arrays.copyOf(iArr3, iArr3.length));
        }
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        e.b.b().j().G.postValue(this);
        EventBus.getDefault().register(this);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        Object systemService = getSystemService("audio");
        t.b.f(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.B = (AudioManager) systemService;
        UsbScanner usbScanner = UsbScanner.f635j;
        usbScanner.getClass();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(UsbManager.ACTION_USB_DEVICE_ATTACHED);
        intentFilter.addAction(UsbManager.ACTION_USB_DEVICE_DETACHED);
        intentFilter.addAction(UsbManager.ACTION_USB_ACCESSORY_ATTACHED);
        intentFilter.addAction(UsbManager.ACTION_USB_ACCESSORY_DETACHED);
        if (!usbScanner.f638d) {
            usbScanner.b().registerReceiver(usbScanner, intentFilter);
            usbScanner.f638d = true;
        }
        this.f590k = new g.d();
        n.b.a("HDL", "CarLink Start!!");
        LinkedHashMap linkedHashMap = o.d.f1092a;
        o.e eVar = (o.e) linkedHashMap.get("com.syu.ms#com.syu.ms.toolkit");
        if (eVar == null) {
            eVar = new o.e(this, "com.syu.ms.toolkit", "com.syu.ms");
            linkedHashMap.put("com.syu.ms#com.syu.ms.toolkit", eVar);
        }
        this.f592l = eVar;
        t.b.g(getResources().getConfiguration().locale, "resources.configuration.locale");
        if (!this.j0) {
            registerReceiver(this.f591k0, new IntentFilter(this.f583g));
            this.j0 = true;
        }
        p().post(new a(this, 0));
        s.a aVar = com.syu.carlink.base.a.c;
        e.b.a().a(7, this.Z);
        e.b.b().j().f899s.observe(this, this.X);
        w(t.b.p(displayMetrics.widthPixels, "sys.carlink.size.width"), t.b.p(displayMetrics.heightPixels, "sys.carlink.size.height"));
        e.b.b().j().A.observe(this, this.W);
        e.b.b().j().f901u.observe(this, this.N);
        e.b.b().j().f903w.observe(this, new e.a(new l() { // from class: com.syu.carlink.CarLinkService.onCreate.2
            @Override // z.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Integer) obj);
                return s.c.f1105a;
            }

            public final void invoke(Integer num) {
                o.e eVarL = CarLinkService.this.l();
                t.b.g(num, "it");
                o.e.b(eVarL, 0, 170, new int[]{num.intValue()}, null, 24);
            }
        }, 2));
        e.b.b().j().f902v.observe(this, this.P);
        e.b.b().j().f905y.observe(this, this.Q);
        e.b.b().j().f904x.observe(this, this.O);
        e.b.b().j().f890i.observe(this, this.f573a0);
        e.b.a().a(3, (d) this.T.getValue());
        e.b.a().a(4, this.V);
        e.b.a().f670b = (h) this.U.getValue();
        e.b.b().j().c.observe(this, this.f575b0);
        e.b.b().j().f885d.observe(this, this.f578d0);
        e.b.b().j().f886e.observe(this, this.f576c0);
        e.b.b().j().f889h.observe(this, this.f580e0);
        e.b.b().j().f894n.observe(this, this.f582f0);
        m().j().B.observe(this, this.K);
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        UsbScanner usbScanner = UsbScanner.f635j;
        if (usbScanner.f638d) {
            usbScanner.b().unregisterReceiver(usbScanner);
            usbScanner.f638d = false;
        }
        h.c cVar = this.A;
        if (cVar != null) {
            cVar.n(220, null, new int[0]);
        }
        if (this.j0) {
            unregisterReceiver(this.f591k0);
        }
        this.j0 = false;
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:160:0x0217  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v47 */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHandle(o.b bVar) {
        CarLinkService carLinkServiceF;
        h.c cVar;
        boolean z2;
        char c;
        t.b.h(bVar, "msg");
        String[] strArr = bVar.f1089e;
        boolean z3 = true;
        boolean z4 = false;
        int i2 = bVar.f1086a;
        Integer num = bVar.f1087b;
        int[] iArr = bVar.c;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 == 7 && num != null && num.intValue() == 1003) {
                    if (iArr != null && iArr.length > 0) {
                        StringBuilder sb = new StringBuilder("FinalCanbus.U_DRIVER_ON_RIGHT isLeftHandDrive : ");
                        t.b.e(iArr);
                        sb.append(iArr[0]);
                        n.b.a("HDL", sb.toString());
                        CarLink carLink = CarLink.f562i;
                        if (carLink != null) {
                            carLink.j().f898r.setValue(Integer.valueOf(iArr[0]));
                            return;
                        } else {
                            t.b.B("me");
                            throw null;
                        }
                    }
                    return;
                }
                return;
            }
            Log.e("HDL", "BT ==>> " + bVar);
            if (num == null || num.intValue() != 64) {
                boolean z5 = this.f574b;
                if (z5) {
                    u(bVar);
                } else if (!z5) {
                    if (num != null && num.intValue() == 31) {
                        t.b.e(iArr);
                        String string = Arrays.toString(iArr);
                        t.b.g(string, "toString(this)");
                        n.b.a("HDL", "=== > FinalMain.Options.U_BT_POWER_ON : ".concat(string));
                        if (iArr.length > 0) {
                            CarLink carLink2 = CarLink.f562i;
                            if (carLink2 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            carLink2.j().f890i.postValue(Boolean.valueOf(iArr[0] == 1));
                        }
                    } else if (num != null && num.intValue() == 7) {
                        if (strArr != null && strArr.length > 0) {
                            CarLink carLink3 = CarLink.f562i;
                            if (carLink3 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            MutableLiveData mutableLiveData = carLink3.j().f893l;
                            t.b.e(strArr);
                            mutableLiveData.postValue(strArr[0]);
                        }
                    } else if (num == null || num.intValue() != 15) {
                        String string2 = "";
                        if (num != null && num.intValue() == 14) {
                            if (strArr != null && strArr.length > 0) {
                                t.b.e(strArr);
                                if (f0.h.K(strArr[0], SettingsStringUtil.DELIMITER)) {
                                    CarLink carLink4 = CarLink.f562i;
                                    if (carLink4 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    carLink4.j().f892k.postValue(strArr[0]);
                                } else {
                                    String str = strArr[0];
                                    int length = str.length();
                                    int i3 = 0;
                                    while (i3 < length) {
                                        if (string2.length() <= 0) {
                                            z3 = false;
                                        }
                                        if (z3 && i3 % 2 == 0) {
                                            string2 = string2.concat(SettingsStringUtil.DELIMITER);
                                        }
                                        StringBuilder sbR = android.accessibilityservice.c.r(string2);
                                        sbR.append(str.charAt(i3));
                                        string2 = sbR.toString();
                                        i3++;
                                        z3 = true;
                                    }
                                    CarLink carLink5 = CarLink.f562i;
                                    if (carLink5 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    carLink5.j().f892k.postValue(string2);
                                }
                            }
                        } else if (num != null && num.intValue() == 9) {
                            if (iArr != null && iArr.length > 0) {
                                t.b.e(iArr);
                                int i4 = iArr[0];
                                CarLink carLink6 = CarLink.f562i;
                                if (carLink6 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                carLink6.j().f894n.postValue(Integer.valueOf(i4));
                            }
                        } else if (num != null && num.intValue() == 6) {
                            if (strArr != null && strArr.length > 0) {
                                t.b.e(strArr);
                                String str2 = strArr[0];
                                if (str2 == null) {
                                    z2 = true;
                                } else if (str2.length() == 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (!z2) {
                                    if (f0.h.K(strArr[0], SettingsStringUtil.DELIMITER)) {
                                        CarLink carLink7 = CarLink.f562i;
                                        if (carLink7 == null) {
                                            t.b.B("me");
                                            throw null;
                                        }
                                        carLink7.j().m.setValue(strArr[0]);
                                    } else {
                                        String str3 = strArr[0];
                                        int length2 = str3.length();
                                        for (int i5 = 0; i5 < length2; i5++) {
                                            if ((string2.length() > 0) && i5 % 2 == 0) {
                                                string2 = string2.concat(SettingsStringUtil.DELIMITER);
                                            }
                                            StringBuilder sbR2 = android.accessibilityservice.c.r(string2);
                                            sbR2.append(str3.charAt(i5));
                                            string2 = sbR2.toString();
                                        }
                                        CarLink carLink8 = CarLink.f562i;
                                        if (carLink8 == null) {
                                            t.b.B("me");
                                            throw null;
                                        }
                                        carLink8.j().m.setValue(string2);
                                    }
                                }
                            }
                        } else if (num != null && num.intValue() == 13) {
                            if (iArr != null && iArr.length > 0) {
                                CarLink carLink9 = CarLink.f562i;
                                if (carLink9 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                MutableLiveData mutableLiveData2 = carLink9.j().I;
                                t.b.e(iArr);
                                mutableLiveData2.postValue(Integer.valueOf(iArr[0]));
                            }
                        }
                    } else if (strArr != null && strArr.length > 0) {
                        CarLink carLink10 = CarLink.f562i;
                        if (carLink10 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        MutableLiveData mutableLiveData3 = carLink10.j().f891j;
                        t.b.e(strArr);
                        mutableLiveData3.postValue(strArr[0]);
                    }
                }
            } else if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                this.f574b = iArr[0] == 1;
            }
            if (num != null && num.intValue() == 13) {
                return;
            }
            boolean z6 = this.f574b;
            Handler handler = this.f581f;
            a aVar = this.S;
            if (!z6) {
                if (!z6 && i2 == 2) {
                    if ((num != null && num.intValue() == 15) || (num != null && num.intValue() == 14)) {
                        if (this.f579e) {
                            return;
                        }
                        handler.removeCallbacks(aVar);
                        handler.postDelayed(aVar, 600L);
                        return;
                    }
                    if (num != null && num.intValue() == 6) {
                        if (this.f579e) {
                            return;
                        }
                        handler.removeCallbacks(aVar);
                        handler.postDelayed(aVar, 600L);
                        return;
                    }
                    if (num != null && num.intValue() == 9) {
                        if (iArr != null && iArr.length > 0) {
                            t.b.e(iArr);
                            int i6 = iArr[0];
                            if (i6 != 0 && i6 != 6 && i6 != 1) {
                                z4 = true;
                            }
                            if (z4 != this.m) {
                                this.m = z4;
                                if (z4) {
                                    if (this.f579e) {
                                        return;
                                    }
                                    CarLink carLink11 = CarLink.f562i;
                                    if (carLink11 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    if (carLink11.B() == 3) {
                                        handler.removeCallbacks(aVar);
                                        handler.postDelayed(aVar, 600L);
                                        return;
                                    }
                                    return;
                                }
                                handler.removeCallbacks(aVar);
                                CarLink carLink12 = CarLink.f562i;
                                if (carLink12 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                if (!carLink12.q() || this.C == null) {
                                    return;
                                }
                                n.b.a("BluetoothUtils", "=======>>> btDisconnected()");
                                l.b.a("IA");
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (z6 && i2 == 2) {
                boolean z7 = ((num != null && num.intValue() == 15) || (num != null && num.intValue() == 6)) || (num != null && num.intValue() == 14);
                String str4 = this.f577d;
                if (z7) {
                    if (this.f579e) {
                        return;
                    }
                    if (strArr != null && strArr.length > 1) {
                        t.b.e(strArr);
                        if (t.b.a(strArr[0], str4)) {
                            handler.removeCallbacks(aVar);
                            handler.postDelayed(aVar, 600L);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (num != null && num.intValue() == 9) {
                    if (strArr != null && strArr.length > 1) {
                        t.b.e(strArr);
                        if (t.b.a(strArr[0], str4)) {
                            if (iArr != null && iArr.length > 0) {
                                t.b.e(iArr);
                                int i7 = iArr[0];
                                if (i7 == 2) {
                                    c = 1;
                                } else if (i7 == 3) {
                                    c = 2;
                                } else if (i7 == 4) {
                                    c = 3;
                                } else if (i7 != 5) {
                                    c = i7 != 6 ? (char) 0 : (char) 5;
                                } else {
                                    c = 4;
                                }
                                if (c != 0 && c != 1) {
                                    z4 = true;
                                }
                                if (z4 != this.m) {
                                    this.m = z4;
                                    if (z4) {
                                        if (this.f579e) {
                                            return;
                                        }
                                        CarLink carLink13 = CarLink.f562i;
                                        if (carLink13 == null) {
                                            t.b.B("me");
                                            throw null;
                                        }
                                        if (carLink13.B() == 3) {
                                            handler.removeCallbacks(aVar);
                                            handler.postDelayed(aVar, 600L);
                                            return;
                                        }
                                        return;
                                    }
                                    handler.removeCallbacks(aVar);
                                    CarLink carLink14 = CarLink.f562i;
                                    if (carLink14 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    if (!carLink14.q() || this.C == null) {
                                        return;
                                    }
                                    n.b.a("BluetoothUtils", "=======>>> btDisconnected()");
                                    l.b.a("IA");
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        a aVar2 = this.f588i0;
        if (num != null && num.intValue() == 0) {
            if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                int i8 = iArr[0];
                n.b.a("HDL", "===================>>  APPID: " + this.f585h + "  request: " + this.f587i + "  id: " + i8);
                Integer num2 = this.f587i;
                if (num2 != null && num2.intValue() != i8) {
                    p().postDelayed(new a(this, 1), 200L);
                    n.b.a("HDL", "===================>>  request appid: " + this.f587i);
                    return;
                }
                Integer num3 = this.f587i;
                if (num3 != null && num3.intValue() == i8) {
                    n.b.a("HDL", "===================>>  request appid: " + this.f587i + " finish!!");
                    this.f587i = null;
                    this.f585h = Integer.valueOf(i8);
                    p().removeCallbacks(aVar2);
                    return;
                }
                if (this.f587i == null) {
                    Integer num4 = this.f585h;
                    if (num4 != null && i8 == num4.intValue()) {
                        return;
                    }
                    n.b.a("HDL", "===================>>  exit appid: " + this.f585h + ' ' + e.b.b().j().b());
                    this.f585h = Integer.valueOf(i8);
                    p().removeCallbacks(aVar2);
                    if (e.b.b().j().b() || s() || e.b.b().A() || !(i8 == 9 || i8 == 8)) {
                        if (i8 != 10 && e.b.b().p() && e.b.b().t() && !e.b.b().o() && (carLinkServiceF = e.b.b().f()) != null && (cVar = carLinkServiceF.A) != null) {
                            cVar.j(false);
                        }
                        if (i8 == 10 || !e.b.b().l() || e.b.b().c() == 3 || e.b.b().c() == 4 || e.b.b().c() == 4) {
                            return;
                        }
                        k.f825y.j(127);
                        if (i8 == 4 || i8 == 5) {
                            k.f825y.c();
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 1) {
            if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                boolean z8 = iArr[0] == 1;
                CarLink carLink15 = CarLink.f562i;
                if (carLink15 == null) {
                    t.b.B("me");
                    throw null;
                }
                boolean zV = carLink15.v();
                n.b.a("Usb", "============>> MCUON " + zV + "   to State : " + z8);
                if (zV != z8) {
                    this.f594n = 0;
                    CarLink carLink16 = CarLink.f562i;
                    if (carLink16 != null) {
                        carLink16.j().f885d.postValue(Boolean.valueOf(z8));
                        return;
                    } else {
                        t.b.B("me");
                        throw null;
                    }
                }
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 50) {
            if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                z4 = iArr[0] == 1;
                CarLink carLink17 = CarLink.f562i;
                if (carLink17 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (t.b.a(carLink17.j().f887f.getValue(), Boolean.TRUE) != z4) {
                    CarLink carLink18 = CarLink.f562i;
                    if (carLink18 != null) {
                        carLink18.j().f887f.postValue(Boolean.valueOf(z4));
                        return;
                    } else {
                        t.b.B("me");
                        throw null;
                    }
                }
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 43) {
            if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                z4 = iArr[0] == 1;
                CarLink carLink19 = CarLink.f562i;
                if (carLink19 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (z4 != carLink19.x()) {
                    CarLink carLink20 = CarLink.f562i;
                    if (carLink20 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    carLink20.j().f888g.postValue(Boolean.valueOf(z4));
                    if (z4) {
                        return;
                    }
                    s.a aVar3 = com.syu.carlink.base.a.c;
                    e.b.a().b(new g.a(1, 0, 2, null, null, 24));
                    return;
                }
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 4) {
            if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                z4 = iArr[0] == 1;
                CarLink carLink21 = CarLink.f562i;
                if (carLink21 == null) {
                    t.b.B("me");
                    throw null;
                }
                boolean zU = carLink21.u();
                n.b.a("HDL", "===================>>  isNightMode last: " + zU + " to : " + z4);
                if (z4 != zU) {
                    CarLink carLink22 = CarLink.f562i;
                    if (carLink22 != null) {
                        carLink22.j().f889h.postValue(Boolean.valueOf(z4));
                        return;
                    } else {
                        t.b.B("me");
                        throw null;
                    }
                }
                return;
            }
            return;
        }
        int i9 = MtpConstants.OPERATION_GET_THUMB;
        if (num != null && num.intValue() == 133) {
            if (iArr != null && iArr.length > 0) {
                StringBuilder sb2 = new StringBuilder("   TO UI  ======>>>  ");
                t.b.e(iArr);
                sb2.append(iArr[0]);
                n.b.a("HDL", sb2.toString());
                t.b.e(iArr);
                int i10 = iArr[0];
                if (i10 == 5) {
                    i9 = 4099;
                } else if (i10 == 6) {
                    i9 = 4100;
                } else if (i10 == 85) {
                    i9 = MtpConstants.OPERATION_GET_OBJECT_INFO;
                } else if (i10 == 547) {
                    i9 = 4107;
                } else if (i10 == 87) {
                    i9 = 4097;
                } else if (i10 == 88) {
                    i9 = 4098;
                } else if (i10 == 126) {
                    i9 = 4102;
                } else if (i10 == 127) {
                    i9 = MtpConstants.OPERATION_GET_OBJECT_HANDLES;
                } else if (i10 == 550) {
                    i9 = 4105;
                } else if (i10 != 551) {
                    if (i10 == 587) {
                        i9 = MtpConstants.OPERATION_FORMAT_STORE;
                    } else if (i10 != 588) {
                        switch (i10) {
                            case MetricsProto.MetricsEvent.DIALOG_PROXY_SELECTOR_ERROR /* 574 */:
                                i9 = MtpConstants.OPERATION_SEND_OBJECT;
                                break;
                            case MetricsProto.MetricsEvent.DIALOG_WIFI_P2P_DISCONNECT /* 575 */:
                                i9 = MtpConstants.OPERATION_SEND_OBJECT_INFO;
                                break;
                            case MetricsProto.MetricsEvent.DIALOG_WIFI_P2P_CANCEL_CONNECT /* 576 */:
                                i9 = 4101;
                                break;
                            default:
                                i9 = -65535;
                                break;
                        }
                    } else {
                        i9 = MtpConstants.OPERATION_INITIATE_CAPTURE;
                    }
                }
                n().a(i9);
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 138) {
            if (strArr != null && strArr.length > 0) {
                CarLink carLink23 = CarLink.f562i;
                if (carLink23 == null) {
                    t.b.B("me");
                    throw null;
                }
                MutableLiveData mutableLiveData4 = carLink23.j().f897q;
                t.b.e(strArr);
                mutableLiveData4.postValue(strArr[0]);
                t.b.e(strArr);
                boolean zContains = n0.contains(strArr[0]);
                if (!zContains) {
                    t.b.e(strArr);
                    if (o0.contains(strArr[0])) {
                        if (!s()) {
                            CarLink carLink24 = CarLink.f562i;
                            if (carLink24 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            if (!carLink24.A()) {
                                z4 = true;
                            }
                        }
                        zContains = z4;
                    }
                }
                if (zContains) {
                    p().removeCallbacks(aVar2);
                    CarLink carLink25 = CarLink.f562i;
                    if (carLink25 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (!carLink25.p()) {
                        CarLink carLink26 = CarLink.f562i;
                        if (carLink26 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (!carLink26.l()) {
                            return;
                        }
                    }
                    p().post(aVar2);
                    return;
                }
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 60) {
            if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                switch (iArr[0]) {
                    case 0:
                        n().a(MtpConstants.OPERATION_DELETE_OBJECT);
                        return;
                    case 1:
                    case 3:
                    case 5:
                        n().a(MtpConstants.OPERATION_GET_OBJECT);
                        return;
                    case 2:
                    case 4:
                    case 6:
                        n().a(MtpConstants.OPERATION_GET_THUMB);
                        return;
                    default:
                        return;
                }
            }
            return;
        }
        if (num != null && num.intValue() == 166) {
            if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                ?? r1 = iArr[0] == 1 ? 1 : 0;
                StringBuilder sb3 = new StringBuilder("FinalMain.Options.CARLINK_WIRELESSED_AUTO_CONN  : ");
                t.b.e(iArr);
                sb3.append(iArr[0]);
                n.b.a("HDL", sb3.toString());
                CarLink carLink27 = CarLink.f562i;
                if (carLink27 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (r1 != carLink27.z()) {
                    CarLink carLink28 = CarLink.f562i;
                    if (carLink28 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    carLink28.j().D.postValue(Boolean.valueOf((boolean) r1));
                    Integer[] numArr = {112, 140};
                    CarLink carLink29 = CarLink.f562i;
                    if (carLink29 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (t.c.I(numArr, Integer.valueOf(carLink29.h()))) {
                        return;
                    }
                    n.b.a("HDL", "=============>>  FinalMain.Options.CARLINK_WIRED_AUTO_CONN TO ON");
                    o.e.b(l(), 0, 167, new int[]{r1}, null, 24);
                    return;
                }
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 167) {
            if (iArr != null && iArr.length > 0) {
                t.b.e(iArr);
                boolean z9 = iArr[0] == 1;
                StringBuilder sb4 = new StringBuilder("FinalMain.Options.CARLINK_WIRED_AUTO_CONN  : ");
                t.b.e(iArr);
                sb4.append(iArr[0]);
                n.b.a("HDL", sb4.toString());
                CarLink carLink30 = CarLink.f562i;
                if (carLink30 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (z9 != carLink30.y()) {
                    CarLink carLink31 = CarLink.f562i;
                    if (carLink31 != null) {
                        carLink31.j().C.postValue(Boolean.valueOf(z9));
                        return;
                    } else {
                        t.b.B("me");
                        throw null;
                    }
                }
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 168) {
            if (iArr != null && iArr.length > 0) {
                StringBuilder sb5 = new StringBuilder("=== > FinalMain.Options.SCREEN_ON : ");
                t.b.e(iArr);
                sb5.append(iArr[0]);
                n.b.a("HDL", sb5.toString());
                CarLink carLink32 = CarLink.f562i;
                if (carLink32 == null) {
                    t.b.B("me");
                    throw null;
                }
                MutableLiveData mutableLiveData5 = carLink32.j().f886e;
                t.b.e(iArr);
                mutableLiveData5.postValue(Boolean.valueOf(iArr[0] == 1));
                return;
            }
            return;
        }
        if (num == null || num.intValue() != 186) {
            if (num != null && num.intValue() == 197) {
                if (iArr != null && iArr.length > 0) {
                    MutableLiveData mutableLiveData6 = m().j().J;
                    t.b.e(iArr);
                    mutableLiveData6.postValue(Integer.valueOf(iArr[0]));
                    return;
                }
                return;
            }
            return;
        }
        if (strArr != null && strArr.length > 0) {
            StringBuilder sb6 = new StringBuilder("=== > FinalMain.Options.APP_BE_KILLED : ");
            t.b.e(strArr);
            sb6.append(strArr[0]);
            n.b.a("HDL", sb6.toString());
            String packageName = getPackageName();
            t.b.e(strArr);
            if (packageName.equals(strArr[0])) {
                p().post(new a(this, 2));
            }
        }
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        f.g gVar;
        if (intent != null && t.b.a(intent.getAction(), "com.syu.carlink.disconnect")) {
            e();
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink.p()) {
                h.c cVar = this.A;
                if (cVar != null) {
                    h.c.i(cVar);
                }
            } else {
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink2.l() && (gVar = k.f825y.f834k) != null) {
                    ((MainActivity) gVar).e().g();
                    k.f825y.e(10L);
                }
            }
        }
        return super.onStartCommand(intent, i2, i3);
    }

    public final Handler p() {
        return (Handler) this.f589j.getValue();
    }

    public final void q(int i2, int i3, int i4, l lVar) {
        if (i2 == 0 || i3 == 0) {
            return;
        }
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink.p()) {
            h.c cVar = this.A;
            if (cVar != null) {
                h.c.i(cVar);
            }
            h.c cVar2 = this.A;
            if (cVar2 != null) {
                cVar2.n(220, null, new int[0]);
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        n.b.a("HDL", "initRunner size: " + i2 + "  " + i3);
        Object objE = p.a.e("android.os.SystemProperties", null, "get", "sys.syu.carlink.logo_label", "");
        t.b.g(objE, "invoke(\"android.os.Syste…erties\", \"get\", key, def)");
        String str = (String) objE;
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        int i5 = ((SharedPreferences) carLink2.k().f1102b).getInt("fps", m.f777a);
        int i6 = i4 == 1 ? 1 : 0;
        if (t.b.a(str, "")) {
            str = null;
        }
        n.b.a("HDL", "=================>>> Carplay setup 00");
        e.k kVar = new e.k(this, i5, i6, str, lVar);
        n.b.a("HDL", "=================>>> Carplay setup 11");
        h.c cVar3 = this.A;
        if (cVar3 == null) {
            this.A = new h.c(kVar);
            return;
        }
        if (cVar3.f921j != null) {
            kVar.a(cVar3);
        }
    }

    public final void r() {
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (!((Boolean) carLink.f567g.getValue()).booleanValue() && this.f606z == null) {
            i iVar = new i();
            iVar.start();
            this.f606z = iVar;
        }
    }

    public final void t(g.e eVar) {
        n();
        n().f907b = eVar;
    }

    /* JADX WARN: Code duplicated, block: B:166:0x024b A[PHI: r2
  0x024b: PHI (r2v5 char) = (r2v4 char), (r2v6 char) binds: [B:159:0x023f, B:163:0x0245] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    public final void u(final o.b bVar) {
        if (this.f574b) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            final g.b bVarJ = carLink.j();
            Integer num = bVar.f1087b;
            char c = 1;
            int[] iArr = bVar.c;
            if (num != null && num.intValue() == 31) {
                t.b.e(iArr);
                String string = Arrays.toString(iArr);
                t.b.g(string, "toString(this)");
                n.b.a("HDL", "=== > FinalMain.Options.U_BT_POWER_ON : ".concat(string));
                if ((iArr.length > 0) == true) {
                    CarLink carLink2 = CarLink.f562i;
                    if (carLink2 != null) {
                        carLink2.j().f890i.postValue(Boolean.valueOf(iArr[0] == 1));
                        return;
                    } else {
                        t.b.B("me");
                        throw null;
                    }
                }
                return;
            }
            String[] strArr = bVar.f1089e;
            if (num != null && num.intValue() == 15) {
                if (((strArr == null || strArr.length <= 0) ? 0 : 1) != 0) {
                    CarLink carLink3 = CarLink.f562i;
                    if (carLink3 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    MutableLiveData mutableLiveData = carLink3.j().f891j;
                    t.b.e(strArr);
                    mutableLiveData.postValue(strArr[0]);
                    return;
                }
                return;
            }
            String string2 = "";
            if (num != null && num.intValue() == 14) {
                if ((strArr != null && strArr.length > 0) == true) {
                    t.b.e(strArr);
                    if (f0.h.K(strArr[0], SettingsStringUtil.DELIMITER)) {
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 != null) {
                            carLink4.j().f892k.postValue(strArr[0]);
                            return;
                        } else {
                            t.b.B("me");
                            throw null;
                        }
                    }
                    String str = strArr[0];
                    int length = str.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        if ((string2.length() > 0) != false && i2 % 2 == 0) {
                            string2 = string2.concat(SettingsStringUtil.DELIMITER);
                        }
                        StringBuilder sbR = android.accessibilityservice.c.r(string2);
                        sbR.append(str.charAt(i2));
                        string2 = sbR.toString();
                    }
                    CarLink carLink5 = CarLink.f562i;
                    if (carLink5 != null) {
                        carLink5.j().f892k.postValue(string2);
                        return;
                    } else {
                        t.b.B("me");
                        throw null;
                    }
                }
                return;
            }
            String str2 = this.f577d;
            if (num != null && num.intValue() == 7) {
                if ((strArr != null && strArr.length > 1) == true) {
                    MutableLiveData mutableLiveData2 = bVarJ.f895o;
                    t.b.e(strArr);
                    y(this, mutableLiveData2, strArr[0], null, new l() { // from class: com.syu.carlink.CarLinkService$multiBluetoothPlatform$1
                        {
                            super(1);
                        }

                        @Override // z.l
                        public final Boolean invoke(com.syu.carlink.utils.a aVar) {
                            t.b.h(aVar, "it");
                            String[] strArr2 = bVar.f1089e;
                            t.b.e(strArr2);
                            boolean z2 = true;
                            String str3 = strArr2[1];
                            if (str3 == null) {
                                str3 = "";
                            }
                            if (t.b.a(aVar.f741d, str3)) {
                                z2 = false;
                            } else {
                                aVar.f741d = str3;
                            }
                            return Boolean.valueOf(z2);
                        }
                    }, 4);
                    if (t.b.a(strArr[0], str2)) {
                        bVarJ.f893l.postValue(strArr[1]);
                        return;
                    }
                    return;
                }
                return;
            }
            if (num != null && num.intValue() == 6) {
                if ((strArr != null && strArr.length > 1) == true) {
                    MutableLiveData mutableLiveData3 = bVarJ.f895o;
                    t.b.e(strArr);
                    y(this, mutableLiveData3, strArr[0], strArr[1], null, 8);
                    if (t.b.a(strArr[0], str2)) {
                        boolean zK = f0.h.K(strArr[1], SettingsStringUtil.DELIMITER);
                        MutableLiveData mutableLiveData4 = bVarJ.m;
                        if (zK) {
                            mutableLiveData4.postValue(strArr[1]);
                            return;
                        }
                        String str3 = strArr[1];
                        int length2 = str3.length();
                        for (int i3 = 0; i3 < length2; i3++) {
                            if ((string2.length() > 0) != false && i3 % 2 == 0) {
                                string2 = string2.concat(SettingsStringUtil.DELIMITER);
                            }
                            StringBuilder sbR2 = android.accessibilityservice.c.r(string2);
                            sbR2.append(str3.charAt(i3));
                            string2 = sbR2.toString();
                        }
                        mutableLiveData4.postValue(string2);
                        return;
                    }
                    return;
                }
                return;
            }
            if (num != null && num.intValue() == 13) {
                if ((strArr != null && strArr.length > 0) == true) {
                    if (((iArr == null || iArr.length <= 0) ? 0 : 1) != 0) {
                        MutableLiveData mutableLiveData5 = bVarJ.f895o;
                        t.b.e(strArr);
                        y(this, mutableLiveData5, strArr[0], null, new l() { // from class: com.syu.carlink.CarLinkService$multiBluetoothPlatform$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // z.l
                            public final Boolean invoke(com.syu.carlink.utils.a aVar) {
                                t.b.h(aVar, "it");
                                o.b bVar2 = bVar;
                                int[] iArr2 = bVar2.c;
                                t.b.e(iArr2);
                                boolean z2 = true;
                                boolean z3 = iArr2[0] == 1;
                                if (aVar.f742e != z3) {
                                    aVar.f742e = z3;
                                } else {
                                    z2 = false;
                                }
                                MutableLiveData mutableLiveData6 = bVarJ.I;
                                int[] iArr3 = bVar2.c;
                                t.b.e(iArr3);
                                mutableLiveData6.postValue(Integer.valueOf(iArr3[0]));
                                return Boolean.valueOf(z2);
                            }
                        }, 4);
                        return;
                    }
                    return;
                }
                return;
            }
            if (num == null || num.intValue() != 61) {
                if (num != null && num.intValue() == 62) {
                    if ((iArr != null && iArr.length > 0) == true) {
                        if (((strArr == null || strArr.length <= 0) ? 0 : 1) != 0) {
                            MutableLiveData mutableLiveData6 = bVarJ.f895o;
                            t.b.e(strArr);
                            y(this, mutableLiveData6, strArr[0], null, new l() { // from class: com.syu.carlink.CarLinkService$multiBluetoothPlatform$4
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // z.l
                                public final Boolean invoke(com.syu.carlink.utils.a aVar) {
                                    t.b.h(aVar, "it");
                                    int[] iArr2 = bVar.c;
                                    t.b.e(iArr2);
                                    boolean z2 = false;
                                    int i4 = iArr2[0];
                                    int i5 = aVar.f745h;
                                    if (i5 != i4) {
                                        if (i5 != i4) {
                                            aVar.f745h = i4;
                                            aVar.f743f = i4 > 1;
                                        }
                                        z2 = true;
                                    }
                                    Log.e("Bt", "it a2dpState: " + aVar.f745h + "  isA2dp: " + aVar.f743f + " result: " + z2 + ' ');
                                    bVarJ.f896p.postValue(Boolean.valueOf(aVar.f743f));
                                    return Boolean.valueOf(z2);
                                }
                            }, 4);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if ((iArr != null && iArr.length > 0) == true) {
                if ((strArr != null && strArr.length > 0) == true) {
                    MutableLiveData mutableLiveData7 = bVarJ.f895o;
                    t.b.e(strArr);
                    y(this, mutableLiveData7, strArr[0], null, new l() { // from class: com.syu.carlink.CarLinkService$multiBluetoothPlatform$3
                        {
                            super(1);
                        }

                        @Override // z.l
                        public final Boolean invoke(com.syu.carlink.utils.a aVar) {
                            t.b.h(aVar, "it");
                            int[] iArr2 = bVar.c;
                            t.b.e(iArr2);
                            boolean z2 = false;
                            int i4 = iArr2[0];
                            int i5 = aVar.f744g;
                            if (i5 != i4) {
                                if (i5 != i4) {
                                    aVar.f744g = i4;
                                    t.c.I((Integer[]) aVar.c.getValue(), Integer.valueOf(aVar.f744g));
                                }
                                z2 = true;
                            }
                            return Boolean.valueOf(z2);
                        }
                    }, 4);
                    if (t.b.a(strArr[0], str2)) {
                        CarLink carLink6 = CarLink.f562i;
                        if (carLink6 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        MutableLiveData mutableLiveData8 = carLink6.j().f894n;
                        t.b.e(iArr);
                        int i4 = iArr[0];
                        char c2 = 2;
                        if (i4 != 2) {
                            c = 3;
                            if (i4 != 3) {
                                c2 = 4;
                                if (i4 != 4) {
                                    c = 5;
                                    if (i4 == 5) {
                                        c = c2;
                                    } else if (i4 != 6) {
                                        c = 0;
                                    }
                                }
                            } else {
                                c = c2;
                            }
                        }
                        mutableLiveData8.postValue(Integer.valueOf(c));
                    }
                }
            }
        }
    }

    public final void v(int i2, int i3, int i4) {
        StringBuilder sbT = android.accessibilityservice.c.t("reinitCarplay size: ", i2, "  x  ", i3, "  driveMode: ");
        sbT.append(i4);
        n.b.a("HDL", sbT.toString());
        if (i2 == 0 || i3 == 0) {
            return;
        }
        this.f597q = i2;
        this.f598r = i3;
        p().removeCallbacks(this.f586h0);
        q(this.f597q, this.f598r, i4, null);
    }

    public final void w(int i2, int i3) {
        h.c cVar;
        n.b.a("HDL", "setCarPlaySize size: " + i2 + "  x  " + i3);
        if (i2 == 0 || i3 == 0) {
            return;
        }
        if (this.f597q == i2 && this.f598r == i3) {
            return;
        }
        this.f597q = i2;
        this.f598r = i3;
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink.p()) {
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                t.b.B("me");
                throw null;
            }
            if (!carLink2.f564d && (cVar = this.A) != null) {
                k(cVar.b(i2, i3));
            }
        }
        CarLink carLink3 = CarLink.f562i;
        if (carLink3 != null) {
            carLink3.j().f898r.observe(this, this.f584g0);
        } else {
            t.b.B("me");
            throw null;
        }
    }

    public final void x(z.a aVar, z.a aVar2) {
        c();
        Class cls = Boolean.TYPE;
        t.b.e(cls);
        Boolean bool = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls}, "persist.carlink.cp_link.enter_ui", Boolean.FALSE);
        if (bool != null ? bool.booleanValue() : false) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            if (!carLink.f564d) {
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                if (!carLink.z()) {
                    CarLink carLink2 = CarLink.f562i;
                    if (carLink2 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (!carLink2.y()) {
                        n.b.a("HDL", "startLinkAfterUi =====>> ui will not launch, link now");
                        aVar2.invoke();
                        return;
                    }
                }
                j(false);
                this.f603w = 0;
                this.f600t = aVar;
                this.f599s = aVar2;
                p().postDelayed(this.Y, this.f604x);
                return;
            }
        }
        g();
        aVar2.invoke();
    }
}
