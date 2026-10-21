package com.syu.carlink.fragment;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Switch;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;
import com.syu.carlink.fragment.CarMarkFragment;
import com.syu.carlink.fragment.SettingsFragment;
import e.m;
import e.t;
import e.v;
import e.w;
import e.x;
import g.b;
import s.a;
import t.c;

/* JADX INFO: loaded from: classes4.dex */
public final class SettingsFragment extends Fragment {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f722e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f723b = 1;
    public final a c = kotlin.a.c(new z.a() { // from class: com.syu.carlink.fragment.SettingsFragment$mHandler$2
        @Override // z.a
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f724d = kotlin.a.c(new z.a() { // from class: com.syu.carlink.fragment.SettingsFragment$appModel$2
        @Override // z.a
        public final b invoke() {
            CarLink carLink = CarLink.f562i;
            if (carLink != null) {
                return carLink.j();
            }
            t.b.B("me");
            throw null;
        }
    });

    public final void a() {
        View view = getView();
        ImageView imageView = view != null ? (ImageView) view.findViewById(v.car_logo_iv) : null;
        ImageView imageView2 = imageView instanceof ImageView ? imageView : null;
        if (imageView2 != null) {
            ((Handler) this.c.getValue()).post(new android.net.b(imageView2, 13));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        t.b.h(layoutInflater, "inflater");
        if (getActivity() instanceof MainActivity) {
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
                i2 = w.settings_fragment_layout;
            } else if (c.H(new int[]{131}, iH)) {
                i2 = w.settings_fragment_layout_dudu;
            } else if (c.H(new int[]{112, 140}, iH)) {
                i2 = w.settings_fragment_layout_yuf;
            } else {
                i2 = c.H(new int[]{95}, iH) ? w.settings_fragment_layout_tzy : w.settings_fragment_layout;
            }
        } else {
            i2 = w.settings_fragment_layout;
        }
        return layoutInflater.inflate(i2, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z2) {
        super.onHiddenChanged(z2);
        if (z2) {
            return;
        }
        a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        int i2;
        int i3;
        int i4;
        CharSequence text;
        t.b.h(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(v.settings_root);
        final int i5 = 0;
        if ((t.b.o("sys.carlink.universal_skin", false) || !c.H(new int[]{95, 112, 140}, this.f723b)) && t.b.o("sys.carlink.solid_bk", false)) {
            viewFindViewById.setBackgroundResource(t.background_color_common);
        }
        int iP = t.b.p(2, "persist.lsec.cp.micLR");
        RadioGroup radioGroup = (RadioGroup) view.findViewById(v.noise_group);
        radioGroup.setOnCheckedChangeListener(new android.os.a(14));
        final int i6 = 1;
        if (iP == 0) {
            i2 = v.noise_null;
        } else if (iP != 1) {
            i2 = iP != 2 ? v.noise_left : v.noise_left;
        } else {
            i2 = v.noise_right;
        }
        radioGroup.check(i2);
        View viewFindViewById2 = view.findViewById(v.band_layout);
        e.b.b();
        viewFindViewById2.setVisibility(CarLink.G() ? 8 : 0);
        RadioGroup radioGroup2 = (RadioGroup) view.findViewById(v.ap_band_group);
        e.b.b();
        int iP2 = t.b.p(CarLink.i() ? 1 : 0, "persist.lsec.carlink.apband");
        radioGroup2.setOnCheckedChangeListener(new android.os.a(15));
        if (iP2 != 0) {
            i3 = iP2 != 1 ? v.apband_2_4g : v.apband_2_4g;
        } else {
            i3 = v.apband_5g;
        }
        radioGroup2.check(i3);
        RadioGroup radioGroup3 = (RadioGroup) view.findViewById(v.fps_group);
        radioGroup3.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener(this) { // from class: i.g
            public final /* synthetic */ SettingsFragment c;

            {
                this.c = this;
            }

            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup4, int i7) {
                int i8;
                h.c cVar;
                int i9 = i5;
                SettingsFragment settingsFragment = this.c;
                switch (i9) {
                    case 0:
                        int i10 = SettingsFragment.f722e;
                        t.b.h(settingsFragment, "this$0");
                        n.b.a("HDL", "  group : " + radioGroup4 + "    checkedId: " + i7);
                        if (i7 == v.fps_low) {
                            i8 = 20;
                        } else if (i7 == v.fps_medium) {
                            i8 = m.f777a;
                        } else {
                            i8 = i7 == v.fps_high ? 60 : -1;
                        }
                        if (i8 > 0) {
                            CarLink carLink = CarLink.f562i;
                            if (carLink == null) {
                                t.b.B("me");
                                throw null;
                            }
                            ((SharedPreferences) carLink.k().f1102b).edit().putInt("fps", i8).commit();
                            FragmentActivity activity = settingsFragment.getActivity();
                            if (activity != null) {
                                CarLink carLink2 = CarLink.f562i;
                                if (carLink2 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                CarLinkService carLinkServiceF = carLink2.f();
                                if (carLinkServiceF == null || (cVar = carLinkServiceF.A) == null || !(activity instanceof MainActivity)) {
                                    return;
                                }
                                CarLink carLink3 = CarLink.f562i;
                                if (carLink3 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                CarLinkService carLinkServiceF2 = carLink3.f();
                                if (carLinkServiceF2 != null) {
                                    carLinkServiceF2.k(new Size(cVar.f914b, cVar.c));
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        int i11 = SettingsFragment.f722e;
                        t.b.h(settingsFragment, "this$0");
                        n.b.a("HDL", "  group : " + radioGroup4 + "    checkedId: " + i7);
                        ((g.b) settingsFragment.f724d.getValue()).E.postValue(Integer.valueOf((i7 != v.resolution_hd && i7 == v.resolution_fhd) ? 1 : 0));
                        return;
                }
            }
        });
        int i7 = ((SharedPreferences) e.b.b().k().f1102b).getInt("fps", m.f777a);
        if (i7 == 20) {
            i4 = v.fps_low;
        } else {
            i4 = (i7 != m.f777a && i7 == 60) ? v.fps_high : v.fps_medium;
        }
        radioGroup3.check(i4);
        RadioGroup radioGroup4 = (RadioGroup) view.findViewById(v.resolution_group);
        radioGroup4.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener(this) { // from class: i.g
            public final /* synthetic */ SettingsFragment c;

            {
                this.c = this;
            }

            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup5, int i8) {
                int i9;
                h.c cVar;
                int i10 = i6;
                SettingsFragment settingsFragment = this.c;
                switch (i10) {
                    case 0:
                        int i11 = SettingsFragment.f722e;
                        t.b.h(settingsFragment, "this$0");
                        n.b.a("HDL", "  group : " + radioGroup5 + "    checkedId: " + i8);
                        if (i8 == v.fps_low) {
                            i9 = 20;
                        } else if (i8 == v.fps_medium) {
                            i9 = m.f777a;
                        } else {
                            i9 = i8 == v.fps_high ? 60 : -1;
                        }
                        if (i9 > 0) {
                            CarLink carLink = CarLink.f562i;
                            if (carLink == null) {
                                t.b.B("me");
                                throw null;
                            }
                            ((SharedPreferences) carLink.k().f1102b).edit().putInt("fps", i9).commit();
                            FragmentActivity activity = settingsFragment.getActivity();
                            if (activity != null) {
                                CarLink carLink2 = CarLink.f562i;
                                if (carLink2 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                CarLinkService carLinkServiceF = carLink2.f();
                                if (carLinkServiceF == null || (cVar = carLinkServiceF.A) == null || !(activity instanceof MainActivity)) {
                                    return;
                                }
                                CarLink carLink3 = CarLink.f562i;
                                if (carLink3 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                CarLinkService carLinkServiceF2 = carLink3.f();
                                if (carLinkServiceF2 != null) {
                                    carLinkServiceF2.k(new Size(cVar.f914b, cVar.c));
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        int i12 = SettingsFragment.f722e;
                        t.b.h(settingsFragment, "this$0");
                        n.b.a("HDL", "  group : " + radioGroup5 + "    checkedId: " + i8);
                        ((g.b) settingsFragment.f724d.getValue()).E.postValue(Integer.valueOf((i8 != v.resolution_hd && i8 == v.resolution_fhd) ? 1 : 0));
                        return;
                }
            }
        });
        Integer num = (Integer) ((b) this.f724d.getValue()).E.getValue();
        int i8 = ((num != null && num.intValue() == 0) || num == null || num.intValue() != 1) ? v.resolution_hd : v.resolution_fhd;
        radioGroup4.check(i8);
        Switch r12 = (Switch) view.findViewById(v.auto_switch);
        r12.setOnCheckedChangeListener(new android.os.a(16));
        r12.setChecked(e.b.b().z());
        View viewFindViewById3 = view.findViewById(v.active_layout);
        TextView textView = (TextView) view.findViewById(v.wireless_active_title);
        TextView textView2 = (TextView) view.findViewById(v.mode_tv);
        Context context = getContext();
        if (context != null) {
            e.b.b();
            boolean zH = CarLink.H();
            e.b.b();
            boolean zI = CarLink.I();
            viewFindViewById3.setEnabled(zH && !zI);
            textView.setEnabled(zH && !zI);
            textView2.setEnabled(zH && !zI);
            if (zH) {
                text = zI ? context.getText(x.activated_msg) : context.getText(x.inactivated_msg);
            } else {
                text = context.getText(x.not_supprot_carplay);
            }
            textView2.setText(text);
            int i9 = (!zH || zI) ? t.disenableitemColor : t.itemColor;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 23) {
                textView.setTextColor(context.getResources().getColor(i9, null));
            } else {
                textView.setTextColor(context.getResources().getColor(i9));
            }
            if (i10 >= 23) {
                textView2.setTextColor(context.getResources().getColor(i9, null));
            } else {
                textView2.setTextColor(context.getResources().getColor(i9));
            }
            ((TextView) view.findViewById(v.version_name_tv)).setText(String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName));
        }
        View viewFindViewById4 = view.findViewById(v.back_iv);
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(new View.OnClickListener(this) { // from class: i.h
                public final /* synthetic */ SettingsFragment c;

                {
                    this.c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i11 = i5;
                    SettingsFragment settingsFragment = this.c;
                    switch (i11) {
                        case 0:
                            int i12 = SettingsFragment.f722e;
                            t.b.h(settingsFragment, "this$0");
                            FragmentActivity activity = settingsFragment.getActivity();
                            MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
                            if (mainActivity != null) {
                                mainActivity.k();
                                return;
                            }
                            return;
                        default:
                            int i13 = SettingsFragment.f722e;
                            t.b.h(settingsFragment, "this$0");
                            FragmentActivity activity2 = settingsFragment.getActivity();
                            MainActivity mainActivity2 = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
                            if (mainActivity2 != null) {
                                CarMarkFragment carMarkFragment = mainActivity2.f621d;
                                if (carMarkFragment != null) {
                                    mainActivity2.m(carMarkFragment);
                                    return;
                                } else {
                                    t.b.B("carMarkFragment");
                                    throw null;
                                }
                            }
                            return;
                    }
                }
            });
        }
        View viewFindViewById5 = view.findViewById(v.car_mark_settings);
        if (viewFindViewById5 != null) {
            e.b.b();
            if (!CarLink.w()) {
                viewFindViewById5.setVisibility(8);
            }
            viewFindViewById5.setOnClickListener(new View.OnClickListener(this) { // from class: i.h
                public final /* synthetic */ SettingsFragment c;

                {
                    this.c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i11 = i6;
                    SettingsFragment settingsFragment = this.c;
                    switch (i11) {
                        case 0:
                            int i12 = SettingsFragment.f722e;
                            t.b.h(settingsFragment, "this$0");
                            FragmentActivity activity = settingsFragment.getActivity();
                            MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
                            if (mainActivity != null) {
                                mainActivity.k();
                                return;
                            }
                            return;
                        default:
                            int i13 = SettingsFragment.f722e;
                            t.b.h(settingsFragment, "this$0");
                            FragmentActivity activity2 = settingsFragment.getActivity();
                            MainActivity mainActivity2 = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
                            if (mainActivity2 != null) {
                                CarMarkFragment carMarkFragment = mainActivity2.f621d;
                                if (carMarkFragment != null) {
                                    mainActivity2.m(carMarkFragment);
                                    return;
                                } else {
                                    t.b.B("carMarkFragment");
                                    throw null;
                                }
                            }
                            return;
                    }
                }
            });
        }
        if (Build.VERSION.SDK_INT <= 23) {
            view.findViewById(v.band_layout).setVisibility(8);
        }
        if (getActivity() instanceof MainActivity) {
            if (e.b.b().h() == 128) {
                view.findViewById(v.constraintLayout).setVisibility(8);
                view.findViewById(v.car_mark_settings).setVisibility(8);
            } else if (!t.b.o("sys.carlink.logo_enable", true)) {
                view.findViewById(v.car_mark_settings).setVisibility(8);
            }
        }
        a();
    }
}
