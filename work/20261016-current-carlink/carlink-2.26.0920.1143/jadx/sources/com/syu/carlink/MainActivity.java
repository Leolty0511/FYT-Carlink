package com.syu.carlink;

import android.Manifest;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.mtp.MtpConstants;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Size;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.MutableLiveData;
import com.google.android.projection.logging.Log;
import com.syu.carlink.auto.AutoFragment;
import com.syu.carlink.fragment.CarMarkFragment;
import com.syu.carlink.fragment.CarplayFragment;
import com.syu.carlink.fragment.LogoFragment;
import com.syu.carlink.fragment.SettingsFragment;
import e.f;
import e.g;
import e.j;
import e.m;
import e.n;
import e.t;
import e.u;
import e.v;
import e.w;
import f.k;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes4.dex */
public final class MainActivity extends AppCompatActivity implements ServiceConnection, g, f.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LogoFragment f620b;
    public CarplayFragment c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CarMarkFragment f621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AutoFragment f622e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SettingsFragment f623f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Configuration f624g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View f625h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Fragment f626i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Handler f627j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public com.syu.carlink.ui.a f628k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public com.syu.carlink.ui.a f629l;
    public boolean m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b f630n = new b(this, 4);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final n f631o = new n(this, 0);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final j f632p = new j(this);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final android.os.b f633q = new android.os.b(7);

    public static CarLinkService f() {
        CarLink carLink = CarLink.f562i;
        if (carLink != null) {
            return carLink.f();
        }
        t.b.B("me");
        throw null;
    }

    public final void c() {
        this.f620b = new LogoFragment();
        this.f621d = new CarMarkFragment();
        this.f623f = new SettingsFragment();
    }

    public final void d() {
        CarLinkService carLinkServiceF;
        h.c cVar;
        if (j().getWidth() <= 0 || j().getHeight() <= 0) {
            runOnUiThread(new e(this, 6));
            return;
        }
        int width = j().getWidth();
        int height = j().getHeight();
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink.B() != 3 || (carLinkServiceF = f()) == null || (cVar = carLinkServiceF.A) == null) {
            return;
        }
        Size sizeB = cVar.b(width, height);
        n.b.a("HDL", "setCarplayVideoSize  ============>>> window size : " + width + " x " + height + ' ');
        if (sizeB.getWidth() <= 0 || sizeB.getHeight() <= 0) {
            return;
        }
        int[] iArrC = cVar.c(sizeB.getWidth(), sizeB.getHeight(), width, height);
        g().b(iArrC[0], iArrC[1], false);
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        int i2 = ((SharedPreferences) carLink2.k().f1102b).getInt("fps", m.f777a);
        if (cVar.f914b == sizeB.getWidth() && cVar.c == sizeB.getHeight() && i2 == cVar.f919h) {
            return;
        }
        n.b.a("HDL", "setCarplayVideoSize  ============>>> old size : " + cVar.f914b + " x " + cVar.c + "  new size: " + sizeB.getWidth() + " x " + sizeB.getHeight());
        CarLinkService carLinkServiceF2 = f();
        t.b.e(carLinkServiceF2);
        int width2 = sizeB.getWidth();
        int height2 = sizeB.getHeight();
        CarLink carLink3 = CarLink.f562i;
        if (carLink3 != null) {
            carLinkServiceF2.v(width2, height2, !carLink3.s() ? 1 : 0);
        } else {
            t.b.B("me");
            throw null;
        }
    }

    public final AutoFragment e() {
        AutoFragment autoFragment = this.f622e;
        if (autoFragment != null) {
            return autoFragment;
        }
        t.b.B("autoFragment");
        throw null;
    }

    public final CarplayFragment g() {
        CarplayFragment carplayFragment = this.c;
        if (carplayFragment != null) {
            return carplayFragment;
        }
        t.b.B("carplayFragment");
        throw null;
    }

    public final Configuration h() {
        Configuration configuration = this.f624g;
        if (configuration != null) {
            return configuration;
        }
        t.b.B("lastConfig");
        throw null;
    }

    public final Handler i() {
        Handler handler = this.f627j;
        if (handler != null) {
            return handler;
        }
        t.b.B("mHandler");
        throw null;
    }

    public final View j() {
        View view = this.f625h;
        if (view != null) {
            return view;
        }
        t.b.B("root");
        throw null;
    }

    public final void k() {
        LogoFragment logoFragment = this.f620b;
        if (logoFragment != null) {
            m(logoFragment);
        } else {
            t.b.B("logoFragment");
            throw null;
        }
    }

    public final void l() {
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        boolean zR = carLink.r("com.syu.air");
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        boolean zR2 = carLink2.r("com.syu.window");
        boolean z2 = t.b.p(-1, "persist.launcher.toobar_height") > 0;
        boolean zO = t.b.o("persist.carlink.hide_systemui", true);
        int i2 = (zR || zR2 || z2) ? 4352 : 4866;
        Log.e("HDL", "MainActivity ============>>> onCreate flags: " + i2 + "  hideSystemUI: " + zO);
        if (zO) {
            i2 = i2 | 1024 | 4;
        }
        View decorView = getWindow().getDecorView();
        if ((decorView.getSystemUiVisibility() & i2) == i2) {
            return;
        }
        decorView.setSystemUiVisibility(i2);
    }

    public final void m(Fragment fragment) {
        h.c cVar;
        CarLinkService carLinkServiceF;
        if (t.b.a(this.f626i, fragment)) {
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        t.b.g(fragmentTransactionBeginTransaction, "supportFragmentManager.beginTransaction()");
        n.b.a("HDL", "to Fragment : " + fragment + "  " + fragment.isAdded() + "  currentFragment: " + this.f626i);
        if (fragment.isAdded()) {
            fragmentTransactionBeginTransaction.replace(v.fragment_container, fragment).setReorderingAllowed(true).setTransition(4097).commitAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.replace(v.fragment_container, fragment).setReorderingAllowed(true).setTransition(4097).commitAllowingStateLoss();
        }
        this.f626i = fragment;
        if (!t.b.a(fragment, g())) {
            if (t.b.a(this.f626i, e())) {
                CarLinkService carLinkServiceF2 = f();
                if (carLinkServiceF2 != null) {
                    carLinkServiceF2.t(k.f825y);
                    return;
                }
                return;
            }
            n.b.a("HDL", "====================>>> CarLink.me?.keyboardController(null, false)!!");
            CarLinkService carLinkServiceF3 = f();
            if (carLinkServiceF3 != null) {
                carLinkServiceF3.t(null);
                return;
            }
            return;
        }
        n.b.a("HDL", "====================>>> CarLink.me?.keyboardController(carplayFragment, true)!!");
        CarLinkService carLinkServiceF4 = f();
        if (carLinkServiceF4 != null && (cVar = carLinkServiceF4.A) != null && (carLinkServiceF = f()) != null) {
            carLinkServiceF.t(cVar);
        }
        int i2 = 2;
        Class cls = Integer.TYPE;
        t.b.e(cls);
        Integer num = (Integer) p.a.d("android.os.SystemProperties", null, "getInt", new Class[]{String.class, cls}, "persist.lsec.carlink.ionger", 0);
        if ((num != null ? num.intValue() : 0) == 0) {
            i().postDelayed(new e(this, i2), 300L);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        h.c cVar;
        com.syu.carlink.ui.a aVar = this.f628k;
        if (!(aVar != null && aVar.f734i)) {
            com.syu.carlink.ui.a aVar2 = this.f629l;
            if (!(aVar2 != null && aVar2.f734i)) {
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink.o()) {
                    return;
                }
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink2.p() || carLink2.l()) {
                    CarLinkService carLinkServiceF = carLink2.f();
                    if (carLinkServiceF != null) {
                        carLinkServiceF.n().a(MtpConstants.OPERATION_RESET_DEVICE);
                        return;
                    }
                    return;
                }
                CarLinkService carLinkServiceF2 = f();
                if (carLinkServiceF2 != null && (cVar = carLinkServiceF2.A) != null) {
                    Size sizeB = cVar.b(j().getWidth(), j().getHeight());
                    if (cVar.f914b != sizeB.getWidth() || sizeB.getHeight() != cVar.c) {
                        n.b.a("HDL", "onBackPressed  ============>>> old size : " + cVar.f914b + " x " + cVar.c + "  new size: " + sizeB.getWidth() + " x " + sizeB.getHeight());
                        CarLinkService carLinkServiceF3 = f();
                        if (carLinkServiceF3 != null) {
                            carLinkServiceF3.k(sizeB);
                        }
                    }
                }
                n.b.a("HDL", "MainActivity ============>>> onBackPressed");
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                carLink3.f565e = false;
                super.onBackPressed();
                if (Build.VERSION.SDK_INT >= 31) {
                    finish();
                    return;
                }
                return;
            }
        }
        if (aVar != null) {
            aVar.a();
        }
        com.syu.carlink.ui.a aVar3 = this.f629l;
        if (aVar3 != null) {
            aVar3.a();
        }
    }

    @Override // android.content.ServiceConnection
    public final /* synthetic */ void onBindingDied(ComponentName componentName) {
        android.content.a.a(this, componentName);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        t.b.h(configuration, "newConfig");
        n.b.a("HDL", " MainActivity ============>>> orientation: " + h().orientation + " -> " + configuration.orientation);
        n.b.a("HDL", " MainActivity ============>>> layoutDirection: " + h().getLayoutDirection() + " -> " + configuration.getLayoutDirection());
        StringBuilder sb = new StringBuilder("MainActivity ============>>> onConfigurationChanged \n");
        sb.append(h());
        sb.append(" \n");
        sb.append(configuration);
        sb.append("  \n");
        sb.append(!t.b.a(h(), configuration));
        n.b.a("HDL", sb.toString());
        if (!t.b.a(h(), configuration)) {
            n.b.a("HDL", "MainActivity ============>>> 11 onConfigurationChanged  " + configuration);
            if (!t.b.a(h().locale, configuration.locale)) {
                Fragment fragment = this.f626i;
                LogoFragment logoFragment = this.f620b;
                if (logoFragment == null) {
                    t.b.B("logoFragment");
                    throw null;
                }
                if (t.b.a(fragment, logoFragment)) {
                    c();
                    LogoFragment logoFragment2 = this.f620b;
                    if (logoFragment2 == null) {
                        t.b.B("logoFragment");
                        throw null;
                    }
                    m(logoFragment2);
                } else if (t.b.a(fragment, this.f623f)) {
                    c();
                    SettingsFragment settingsFragment = this.f623f;
                    t.b.e(settingsFragment);
                    m(settingsFragment);
                } else {
                    CarMarkFragment carMarkFragment = this.f621d;
                    if (carMarkFragment == null) {
                        t.b.B("carMarkFragment");
                        throw null;
                    }
                    if (t.b.a(fragment, carMarkFragment)) {
                        c();
                        CarMarkFragment carMarkFragment2 = this.f621d;
                        if (carMarkFragment2 == null) {
                            t.b.B("carMarkFragment");
                            throw null;
                        }
                        m(carMarkFragment2);
                    } else if (t.b.a(fragment, g())) {
                        c();
                    }
                }
            }
            if (h().orientation != configuration.orientation && h().orientation != configuration.orientation) {
                i().postDelayed(new e(this, 4), 300L);
            }
            this.f624g = new Configuration(configuration);
        }
        n.b.a("HDL", "MainActivity ============>>> 22 onConfigurationChanged  " + configuration);
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        l();
        this.f627j = new Handler(Looper.getMainLooper());
        this.f626i = null;
        this.f620b = new LogoFragment();
        this.c = new CarplayFragment();
        this.f622e = new AutoFragment();
        this.f621d = new CarMarkFragment();
        Configuration configuration = getResources().getConfiguration();
        t.b.g(configuration, "resources.configuration");
        this.f624g = configuration;
        n.b.a("HDL", "MainActivity ============>>> onCreate locale: " + h());
        this.f623f = new SettingsFragment();
        k.f825y.f830g = e();
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        int iH = carLink.h();
        Class cls = Boolean.TYPE;
        t.b.e(cls);
        Boolean bool = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls}, "sys.carlink.universal_skin", Boolean.FALSE);
        if (bool != null ? bool.booleanValue() : false) {
            getWindow().getDecorView().setBackgroundResource(u.logo_backgroud);
        } else if (t.c.H(new int[]{112, 140}, iH)) {
            getWindow().getDecorView().setBackgroundResource(t.background_color_yuf);
        } else if (t.c.H(new int[]{95, 107}, iH)) {
            getWindow().getDecorView().setBackgroundResource(u.bg_tzy);
        } else {
            getWindow().getDecorView().setBackgroundResource(u.logo_backgroud);
        }
        setContentView(w.activity_link);
        StringBuilder sb = new StringBuilder("MainActivity ============>>> start time -1: ");
        sb.append(SystemClock.elapsedRealtime());
        sb.append(' ');
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        sb.append(carLink2.B());
        n.b.a("HDL", sb.toString());
        View viewFindViewById = findViewById(v.root);
        t.b.g(viewFindViewById, "findViewById<View>(R.id.root)");
        setRoot(viewFindViewById);
        k.f825y.f834k = this;
        CarLink carLink3 = CarLink.f562i;
        if (carLink3 == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink3.B() != 5) {
            k();
        }
        if (Build.VERSION.SDK_INT >= 23) {
            boolean z2 = ((((((ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != 0) || ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != 0) || ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_WIFI_STATE) != 0) || ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_NETWORK_STATE) != 0) || ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != 0) || ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != 0) || ContextCompat.checkSelfPermission(this, Manifest.permission.RECORD_AUDIO) != 0;
            n.b.a("HDL", " MainActivity android.Manifest.permission.ACCESS_FINE_LOCATION -------->>  result:" + z2);
            if (z2) {
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_WIFI_STATE, Manifest.permission.ACCESS_NETWORK_STATE, Manifest.permission.ACCESS_COARSE_LOCATION, Manifest.permission.RECORD_AUDIO}, 101);
                n.b.a("HDL", " MainActivity requestPermissions -------->>  101");
            }
        }
        this.m = true;
        Intent intent = new Intent(CarLinkService.class.getName());
        intent.setPackage(getPackageName());
        bindService(intent, this, 1);
        n.b.a("HDL", "MainActivity onCreate ----------------->> " + getIntent() + ' ');
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        l.b bVar;
        CarLinkService carLinkServiceF;
        h.c cVar;
        n.b.a("HDL", "MainActivity ============>>> onDestroy");
        CarLinkService carLinkServiceF2 = f();
        if (carLinkServiceF2 != null) {
            carLinkServiceF2.e();
        }
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink.p() && (carLinkServiceF = f()) != null && (cVar = carLinkServiceF.A) != null) {
            h.c.i(cVar);
        }
        e().g();
        k.f825y.e(10L);
        CarLinkService carLinkServiceF3 = f();
        if (carLinkServiceF3 != null && (bVar = carLinkServiceF3.C) != null) {
            l.a aVar = bVar.f1054a;
            if (aVar != null) {
                aVar.f1051b.post(new android.accessibilityservice.a(aVar, aVar.f1053e, 8));
            }
            bVar.f1054a = null;
        }
        EventBus.getDefault().unregister(this);
        this.m = false;
        unbindService(this);
        String strValueOf = String.valueOf(0);
        t.b.h(strValueOf, "value");
        SystemProperties.set("sys.carlink.type", strValueOf);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        CarLinkService carLinkServiceF;
        e.b.b().j().f901u.removeObserver(this.f631o);
        e.b.b().f565e = false;
        super.onPause();
        i().removeCallbacks(this.f630n);
        CarLinkService carLinkServiceF2 = f();
        if (carLinkServiceF2 != null) {
            carLinkServiceF2.f(true);
        }
        MutableLiveData mutableLiveData = e.b.b().j().H;
        j jVar = this.f632p;
        mutableLiveData.removeObserver(jVar);
        com.syu.carlink.ui.a aVar = this.f629l;
        if (aVar != null) {
            aVar.a();
        }
        jVar.f768b = Integer.MIN_VALUE;
        com.syu.carlink.ui.a aVar2 = this.f628k;
        if (aVar2 != null) {
            aVar2.a();
        }
        n.b.a("HDL", "MainActivity ============>>> onPause " + e.b.b().C() + "  " + e.b.b().B() + ' ');
        if (e.b.b().C() == 1 && (carLinkServiceF = e.b.b().f()) != null) {
            int iB = e.b.b().B();
            StringBuilder sb = new StringBuilder("LinkStart handleCut =====>> topIsMainActivity : ");
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            sb.append(carLink.f564d);
            sb.append("  state: ");
            sb.append(iB);
            n.b.a("HDL", sb.toString());
            if (iB != 5 && iB != 7) {
                carLinkServiceF.f581f.removeCallbacks(carLinkServiceF.f593l0);
                carLinkServiceF.c();
                h.c cVar = carLinkServiceF.A;
                if (cVar != null) {
                    h.c.i(cVar);
                }
            }
        }
        if (e.b.b().B() == 3) {
            e.b.b().j().H.postValue(Integer.MIN_VALUE);
        }
        e.b.b().f564d = false;
        n.b.a("HDL", "MainActivity ============>>> onPause");
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        t.b.h(strArr, "permissions");
        t.b.h(iArr, "grantResults");
        n.b.a("HDL", "onRequestPermissionsResult  permissions: " + strArr + ' ' + i2 + ' ');
        super.onRequestPermissionsResult(i2, strArr, iArr);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        CarLinkService carLinkServiceF;
        CarLinkService carLinkServiceF2;
        n.b.a("HDL", "MainActivity ============>>> onResume START");
        e.b.b().j().f901u.observe(this, this.f631o);
        e.b.b().f565e = true;
        e.b.b().f564d = true;
        super.onResume();
        i().postDelayed(this.f630n, 200L);
        n.b.a("HDL", "MainActivity ============>>> onResume     " + e.b.b().B());
        int i2 = 3;
        if (e.b.b().B() != 3 && (carLinkServiceF2 = f()) != null) {
            carLinkServiceF2.f(false);
        }
        if (e.b.b().B() == 3) {
            String strValueOf = String.valueOf(0);
            t.b.h(strValueOf, "value");
            SystemProperties.set("sys.carlink.type", strValueOf);
            k();
            Handler handlerI = i();
            n.b.a("HDL", "MainActivity ============>>> onResume");
            handlerI.postDelayed(new e(this, i2), 1000L);
            if (e.b.b().v()) {
                handlerI.postDelayed(this.f633q, 1500L);
                return;
            }
            return;
        }
        if (!e.b.b().p()) {
            if (e.b.b().l()) {
                m(e());
                return;
            }
            return;
        }
        CarLinkService carLinkServiceF3 = f();
        if (carLinkServiceF3 != null) {
            carLinkServiceF3.f581f.removeCallbacks(carLinkServiceF3.m0);
            carLinkServiceF3.r();
        }
        e.b.b();
        if ((CarLink.F() || e.b.b().t()) && (carLinkServiceF = f()) != null) {
            carLinkServiceF.h(10, true);
        }
        m(g());
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        t.b.h(bundle, "outState");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder != null) {
            CarLinkService carLinkService = ((f) iBinder).f763b;
            carLinkService.D = this;
            carLinkService.E = new z.a() { // from class: com.syu.carlink.MainActivity$onServiceConnected$1$1
                {
                    super(0);
                }

                @Override // z.a
                public final Size invoke() {
                    MainActivity mainActivity = this.f634b;
                    if (mainActivity.j().getWidth() <= 0 || mainActivity.j().getHeight() <= 0) {
                        return null;
                    }
                    return new Size(mainActivity.j().getWidth(), mainActivity.j().getHeight());
                }
            };
            runOnUiThread(new e(this, 1));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (this.m) {
            i().postDelayed(new e(this, 0), 300L);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            l();
        }
        n.b.a("HDL", "onWindowFocusChanged ============>>> hasFocus: " + z2 + ' ' + hasWindowFocus());
    }

    public final void setRoot(View view) {
        t.b.h(view, "<set-?>");
        this.f625h = view;
    }
}
