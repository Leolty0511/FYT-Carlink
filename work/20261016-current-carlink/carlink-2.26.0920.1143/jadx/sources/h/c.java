package h;

import android.bluetooth.BluetoothClass;
import android.hardware.camera2.legacy.LegacyCameraDevice;
import android.media.AudioManager;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Size;
import android.view.Surface;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import e.k;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements IBinder.DeathRecipient, Runnable, g.e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f919h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f920i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public IBinder f921j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Handler f923l;
    public long m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f924n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f925o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f926p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final a f928r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final a f930t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final HashSet f932v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f914b = 1024;
    public int c = 600;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f915d = 1024;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f916e = 600;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f917f = 331;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f918g = 187;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final e f922k = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f927q = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f929s = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final b f931u = new b(this);

    /* JADX WARN: Type inference failed for: r0v5, types: [h.a] */
    /* JADX WARN: Type inference failed for: r1v1, types: [h.a] */
    public c(k kVar) {
        final int i2 = 0;
        this.f928r = new AudioManager.OnAudioFocusChangeListener(i2) { // from class: h.a
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i3) {
            }
        };
        final int i3 = 1;
        this.f930t = new AudioManager.OnAudioFocusChangeListener(i3) { // from class: h.a
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i4) {
            }
        };
        HashSet hashSet = new HashSet();
        this.f932v = hashSet;
        if (!hashSet.contains(kVar)) {
            hashSet.add(kVar);
        }
        StringBuilder sb = new StringBuilder("LinkServer-");
        kotlin.jvm.internal.g.f1006a.getClass();
        sb.append(new kotlin.jvm.internal.c(c.class));
        HandlerThread handlerThread = new HandlerThread(sb.toString());
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        t.b.g(looper, "it.looper");
        this.f923l = new Handler(looper);
        Handler handlerE = e();
        if (CarLink.f562i == null) {
            t.b.B("me");
            throw null;
        }
        Object objE = p.a.e("android.os.SystemProperties", null, "get", "ro.fyt.realplatform", "");
        t.b.g(objE, "invoke(\"android.os.Syste…erties\", \"get\", key, def)");
        handlerE.postDelayed(this, t.b.a((String) objE, "813CM") ? 2500L : 0L);
    }

    public static void i(c cVar) {
        n.b.a("HDL", "linkStop  =======>>   aync: 0  delay: true");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (!carLink.A()) {
            cVar.m = jElapsedRealtime;
        }
        cVar.f924n = jElapsedRealtime;
        cVar.n(201, null, new int[]{0});
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 != null) {
            carLink2.j().H.postValue(Integer.MIN_VALUE);
        } else {
            t.b.B("me");
            throw null;
        }
    }

    @Override // g.e
    public final void a(int i2) {
        CarLinkService carLinkServiceF;
        c cVar;
        c cVar2;
        n.b.a("HDL", "-------->>> onKey keyCode: " + i2);
        if (e.b.b().p()) {
            if ((!e.b.b().o() || i2 == 4100 || i2 == 4099 || i2 == 4109 || i2 == 4108 || i2 == 4111 || i2 == 4110) && (carLinkServiceF = e.b.b().f()) != null) {
                if (i2 == 4097) {
                    c cVar3 = carLinkServiceF.A;
                    if (cVar3 != null) {
                        cVar3.n(207, null, new int[]{4});
                        return;
                    }
                    return;
                }
                if (i2 == 4098) {
                    c cVar4 = carLinkServiceF.A;
                    if (cVar4 != null) {
                        cVar4.n(207, null, new int[]{5});
                        return;
                    }
                    return;
                }
                if (i2 == 4099) {
                    c cVar5 = carLinkServiceF.A;
                    if (cVar5 != null) {
                        cVar5.g(true);
                        return;
                    }
                    return;
                }
                if (i2 == 4100) {
                    c cVar6 = carLinkServiceF.A;
                    if (cVar6 != null) {
                        cVar6.g(false);
                        return;
                    }
                    return;
                }
                if (i2 == 4101) {
                    if (!e.b.b().f564d) {
                        carLinkServiceF.j(true);
                        e().postDelayed(new com.syu.carlink.a(carLinkServiceF, 10), 800L);
                        return;
                    } else {
                        c cVar7 = carLinkServiceF.A;
                        if (cVar7 != null) {
                            cVar7.q();
                            return;
                        }
                        return;
                    }
                }
                if (i2 == 4102) {
                    c cVar8 = carLinkServiceF.A;
                    if (cVar8 != null) {
                        cVar8.n(207, null, new int[]{1});
                        return;
                    }
                    return;
                }
                if (i2 == 4103) {
                    c cVar9 = carLinkServiceF.A;
                    if (cVar9 != null) {
                        cVar9.n(207, null, new int[]{2});
                        return;
                    }
                    return;
                }
                if (i2 == 4104) {
                    c cVar10 = carLinkServiceF.A;
                    if (cVar10 != null) {
                        cVar10.n(207, null, new int[]{3});
                        return;
                    }
                    return;
                }
                if (i2 == 4105) {
                    c cVar11 = carLinkServiceF.A;
                    if (cVar11 != null) {
                        cVar11.n(203, null, new int[]{3, -1});
                        return;
                    }
                    return;
                }
                if (i2 == 4106) {
                    c cVar12 = carLinkServiceF.A;
                    if (cVar12 != null) {
                        cVar12.n(203, null, new int[]{3, 1});
                        return;
                    }
                    return;
                }
                if (i2 == 4107) {
                    n.b.a("HDL", "=================>>> clickBtn action: 2");
                    CarLink carLink = CarLink.f562i;
                    if (carLink == null) {
                        t.b.B("me");
                        throw null;
                    }
                    CarLinkService carLinkServiceF2 = carLink.f();
                    if (carLinkServiceF2 != null && (cVar2 = carLinkServiceF2.A) != null) {
                        cVar2.n(203, null, new int[]{2, 1});
                    }
                    CarLink carLink2 = CarLink.f562i;
                    if (carLink2 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    CarLinkService carLinkServiceF3 = carLink2.f();
                    if (carLinkServiceF3 == null || (cVar = carLinkServiceF3.A) == null) {
                        return;
                    }
                    cVar.n(203, null, new int[]{2, 0});
                    return;
                }
                if (i2 == 4109) {
                    if (e.b.b().o()) {
                        c cVar13 = carLinkServiceF.A;
                        if (cVar13 != null) {
                            cVar13.g(false);
                            return;
                        }
                        return;
                    }
                    c cVar14 = carLinkServiceF.A;
                    if (cVar14 != null) {
                        cVar14.n(207, null, new int[]{4});
                        return;
                    }
                    return;
                }
                if (i2 == 4111) {
                    if (e.b.b().o()) {
                        c cVar15 = carLinkServiceF.A;
                        if (cVar15 != null) {
                            cVar15.g(false);
                            return;
                        }
                        return;
                    }
                    c cVar16 = carLinkServiceF.A;
                    if (cVar16 != null) {
                        cVar16.n(207, null, new int[]{5});
                        return;
                    }
                    return;
                }
                if (i2 == 4108) {
                    if (e.b.b().o()) {
                        c cVar17 = carLinkServiceF.A;
                        if (cVar17 != null) {
                            cVar17.g(true);
                            return;
                        }
                        return;
                    }
                    c cVar18 = carLinkServiceF.A;
                    if (cVar18 != null) {
                        cVar18.n(207, null, new int[]{5});
                        return;
                    }
                    return;
                }
                if (i2 != 4110) {
                    if (i2 == 4112) {
                        n(203, null, new int[]{0, 1});
                        n(203, null, new int[]{0, 0});
                        return;
                    }
                    return;
                }
                if (e.b.b().o()) {
                    c cVar19 = carLinkServiceF.A;
                    if (cVar19 != null) {
                        cVar19.g(true);
                        return;
                    }
                    return;
                }
                c cVar20 = carLinkServiceF.A;
                if (cVar20 != null) {
                    cVar20.n(207, null, new int[]{4});
                }
            }
        }
    }

    public final Size b(int i2, int i3) {
        int[] iArrC = ((((float) i2) / ((float) i3)) > 1.0f ? 1 : ((((float) i2) / ((float) i3)) == 1.0f ? 0 : -1)) <= 0 ? c(i2, i3, BluetoothClass.Device.AUDIO_VIDEO_VIDEO_MONITOR, LegacyCameraDevice.MAX_DIMEN_FOR_ROUNDING) : c(i2, i3, LegacyCameraDevice.MAX_DIMEN_FOR_ROUNDING, BluetoothClass.Device.AUDIO_VIDEO_VIDEO_MONITOR);
        int i4 = iArrC[0];
        int i5 = iArrC[1];
        return new Size(i4 - (i4 % 8), i5 - (i5 % 8));
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        n.b.a("HDL", "CarplayListener binderDied !!");
        for (k kVar : this.f932v) {
            kVar.getClass();
            n.b.a("HDL", "---------->>>  onDeath ");
            l lVar = kVar.f772e;
            if (lVar != null) {
                lVar.invoke(Boolean.FALSE);
            }
        }
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink.C() == 1) {
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                t.b.B("me");
                throw null;
            }
            carLink2.j().f901u.postValue(3);
        }
        this.f921j = null;
        e().postDelayed(this, 800L);
    }

    public final int[] c(int i2, int i3, int i4, int i5) {
        float f2 = i2;
        float f3 = i3;
        float fMin = Math.min(i4 / f2, i5 / f3);
        return new int[]{(int) ((f2 * fMin) + 0.5f), (int) ((f3 * fMin) + 0.5f)};
    }

    public final boolean d(int i2, Parcel parcel, Parcel parcel2) {
        IBinder iBinder = this.f921j;
        if (iBinder != null) {
            return iBinder.transact((i2 << 8) | 2, parcel, parcel2, 0);
        }
        return false;
    }

    public final Handler e() {
        Handler handler = this.f923l;
        if (handler != null) {
            return handler;
        }
        t.b.B("mHandler");
        throw null;
    }

    public final int f(int i2, int... iArr) {
        int i3;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("CarplayServer.ICarplayService");
                for (int i4 : iArr) {
                    parcelObtain.writeInt(i4);
                }
                t.b.g(parcelObtain2, "outparam");
                i3 = d(i2, parcelObtain, parcelObtain2) ? parcelObtain2.readInt() : -1;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return i3;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    public final void g(boolean z2) {
        if (z2) {
            n(208, null, new int[]{1});
            n(208, null, new int[]{0});
        } else {
            if (z2) {
                return;
            }
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink.o()) {
                n(208, null, new int[]{3});
                n(208, null, new int[]{0});
            }
        }
    }

    public final void h(int i2) {
        Class cls = Integer.TYPE;
        t.b.e(cls);
        Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, "persist.lsec.cp.audiooff", 0);
        String strValueOf = String.valueOf(num != null ? num.intValue() : 0);
        t.b.h(strValueOf, "value");
        SystemProperties.set("sys.lsec.cp.audiooff", strValueOf);
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        carLink.j().f899s.postValue(1);
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        carLink2.j().f901u.postValue(254);
        n(200, null, new int[]{i2});
    }

    public final void j(boolean z2) {
        StringBuilder sb = new StringBuilder("============================>>> CarPlay Music ");
        sb.append(z2 ? "Play" : "Pause");
        sb.append(" !!!");
        n.b.a("HDL", sb.toString());
        n(216, null, new int[]{z2 ? 1 : 0});
    }

    public final void k() {
        AudioManager audioManager;
        StringBuilder sb = new StringBuilder("===========================>>>>  releaseNaviFocus  type:: ");
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        sb.append(carLink.C());
        n.b.a("HDL", sb.toString());
        if (this.f927q == -1) {
            return;
        }
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink2.C() == 1) {
            CarLink carLink3 = CarLink.f562i;
            if (carLink3 == null) {
                t.b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink3.f();
            if (carLinkServiceF != null && (audioManager = carLinkServiceF.B) != null) {
                audioManager.abandonAudioFocus(this.f928r);
            }
        }
        this.f927q = -1;
    }

    public final void l() {
        AudioManager audioManager;
        StringBuilder sb = new StringBuilder("===========================>>>>  releaseVoiceFocus  type:: ");
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        sb.append(carLink.C());
        n.b.a("HDL", sb.toString());
        if (this.f929s == -1) {
            return;
        }
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink2.C() == 1) {
            CarLink carLink3 = CarLink.f562i;
            if (carLink3 == null) {
                t.b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink3.f();
            if (carLinkServiceF != null && (audioManager = carLinkServiceF.B) != null) {
                audioManager.abandonAudioFocus(this.f930t);
            }
        }
        this.f929s = -1;
    }

    public final void m() {
        AudioManager audioManager;
        StringBuilder sb = new StringBuilder("===========================>>>>  requestAudioFocus  type:: ");
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        sb.append(carLink.C());
        n.b.a("HDL", sb.toString());
        boolean z2 = this.f925o;
        b bVar = this.f931u;
        if (z2 && bVar.f912a == 1) {
            return;
        }
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink2.C() == 1) {
            CarLink carLink3 = CarLink.f562i;
            if (carLink3 == null) {
                t.b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink3.f();
            int iRequestAudioFocus = (carLinkServiceF == null || (audioManager = carLinkServiceF.B) == null) ? -1 : audioManager.requestAudioFocus(bVar, 3, 1);
            bVar.f912a = iRequestAudioFocus;
            this.f925o = true;
            StringBuilder sb2 = new StringBuilder("===========================>>>>  requestAudioFocus  type:: ");
            CarLink carLink4 = CarLink.f562i;
            if (carLink4 == null) {
                t.b.B("me");
                throw null;
            }
            sb2.append(carLink4.C());
            sb2.append("  ");
            sb2.append(iRequestAudioFocus);
            n.b.a("HDL", sb2.toString());
        }
    }

    public final boolean n(int i2, String[] strArr, int[] iArr) {
        t.b.h(iArr, "ints");
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        boolean z2 = false;
        try {
            try {
                parcelObtain.writeInterfaceToken("CarplayServer.ICarplayService");
                for (int i3 : iArr) {
                    parcelObtain.writeInt(i3);
                }
                if (strArr != null) {
                    int i4 = 0;
                    while (true) {
                        if (!(i4 < strArr.length)) {
                            break;
                        }
                        int i5 = i4 + 1;
                        try {
                            parcelObtain.writeString(strArr[i4]);
                            i4 = i5;
                        } catch (ArrayIndexOutOfBoundsException e2) {
                            throw new NoSuchElementException(e2.getMessage());
                        }
                    }
                }
                t.b.g(parcelObtain2, "outparam");
                if (d(i2, parcelObtain, parcelObtain2) && parcelObtain2.readInt() >= 0) {
                    z2 = true;
                }
            } catch (Throwable th) {
                parcelObtain.recycle();
                parcelObtain2.recycle();
                throw th;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return z2;
    }

    public final void o(Surface surface) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("CarplayServer.ICarplayService");
                if (surface != null) {
                    parcelObtain.writeInt(1);
                    surface.writeToParcel(parcelObtain, 0);
                } else {
                    parcelObtain.writeInt(0);
                }
                IBinder iBinder = this.f921j;
                if (iBinder != null ? iBinder.transact(4, parcelObtain, parcelObtain2, 0) : false) {
                    parcelObtain2.readInt();
                }
                parcelObtain2.readException();
                if (parcelObtain2.readInt() != 0 && surface != null) {
                    surface.readFromParcel(parcelObtain2);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    public final void p(boolean z2) {
        int i2 = z2 ? 3 : 2;
        if (i2 != this.f920i) {
            n.b.a("HDL", "============================>>> CarPlay videoPlay from " + this.f920i + " to " + i2);
            StringBuilder sb = new StringBuilder("============================>>> CarPlay linkstate: ");
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            sb.append(carLink.B());
            sb.append("  isUIShowing: ");
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                t.b.B("me");
                throw null;
            }
            sb.append(carLink2.f564d);
            sb.append(" video play: ");
            sb.append(z2 ? "Start" : "End");
            sb.append(" Projection !!!");
            n.b.a("HDL", sb.toString());
            n(210, null, new int[]{i2});
            this.f920i = i2;
        }
    }

    public final void q() {
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        T value = carLink.j().f904x.getValue();
        Boolean bool = Boolean.TRUE;
        boolean zA = t.b.a(value, bool);
        StringBuilder sb = new StringBuilder("vocie state: ");
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        sb.append(t.b.a(carLink2.j().f904x.getValue(), bool));
        sb.append(" to enable : ");
        sb.append(zA ? 1 : 0);
        n.b.a("HDL", sb.toString());
        n(205, null, new int[]{zA ? 1 : 0});
    }

    @Override // java.lang.Runnable
    public final void run() {
        e().removeCallbacks(this);
        boolean z2 = false;
        IBinder iBinder = (IBinder) p.a.e("android.os.ServiceManager", null, "getService", "CarplayServer");
        this.f921j = iBinder;
        if (iBinder != null) {
            iBinder.linkToDeath(this, 0);
            e eVar = this.f922k;
            t.b.h(eVar, "binder");
            IBinder iBinder2 = this.f921j;
            if (iBinder2 != null) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("CarplayServer.ICarplayService");
                    parcelObtain.writeStrongBinder(eVar);
                    iBinder2.transact(3, parcelObtain, parcelObtain2, 0);
                    z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.readException();
                } catch (Exception unused) {
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
            n.b.a("HDL", "CarplayListener register result:" + z2);
            Iterator it = this.f932v.iterator();
            while (it.hasNext()) {
                ((k) it.next()).a(this);
            }
        }
        n.b.a("HDL", "=================>>>  CarplayServer Start!! " + this.f921j);
        if (this.f921j == null && t.b.p(-1, "sys.fyt.carplay") == 1) {
            SystemProperties.set("sys.fyt.carplay", WifiEnterpriseConfig.ENGINE_DISABLE);
            try {
                Thread.sleep(20L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            SystemProperties.set("sys.fyt.carplay", WifiEnterpriseConfig.ENGINE_ENABLE);
            e().postDelayed(this, 800L);
        }
    }
}
