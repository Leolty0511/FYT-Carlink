package com.syu.carlink.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;
import com.syu.carlink.fragment.LogoFragment;
import e.n;
import e.t;
import e.v;
import e.w;
import e.x;
import i.d;
import p.a;
import t.b;
import t.c;

/* JADX INFO: loaded from: classes4.dex */
public final class LogoFragment extends Fragment {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f717g = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f718b;
    public TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ImageView f719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n f721f;

    public LogoFragment() {
        new Handler();
        this.f720e = 95;
        this.f721f = new n(this, 1);
    }

    public final TextView a() {
        TextView textView = this.c;
        if (textView != null) {
            return textView;
        }
        b.B("msgTv");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        b.h(layoutInflater, "inflater");
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            b.B("me");
            throw null;
        }
        this.f720e = carLink.h();
        if (getActivity() instanceof MainActivity) {
            Class cls = Boolean.TYPE;
            b.e(cls);
            Boolean bool = (Boolean) a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls}, "sys.carlink.universal_skin", Boolean.FALSE);
            if (bool != null ? bool.booleanValue() : false) {
                i2 = w.logo_fragment;
            } else if (c.H(new int[]{131}, this.f720e)) {
                i2 = w.logo_fragment_dudu;
            } else if (c.H(new int[]{112, 140}, this.f720e)) {
                i2 = w.logo_fragment_yuf;
            } else {
                i2 = c.H(new int[]{95}, this.f720e) ? w.logo_fragment_tzy2 : w.logo_fragment;
            }
        } else {
            i2 = w.logo_fragment;
        }
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 != null) {
            carLink2.j().f901u.observe(this, this.f721f);
            return layoutInflater.inflate(i2, viewGroup, false);
        }
        b.B("me");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            b.B("me");
            throw null;
        }
        carLink.j().f901u.removeObserver(this.f721f);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        CarLink carLink = CarLink.f562i;
        if (carLink != null) {
            carLink.f564d = true;
        } else {
            b.B("me");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        b.h(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(v.logo_layout);
        final int i2 = 0;
        if ((b.o("sys.carlink.universal_skin", false) || !c.H(new int[]{95, 112, 140}, this.f720e)) && b.o("sys.carlink.solid_bk", false)) {
            viewFindViewById.setBackgroundResource(t.background_color_common);
        }
        this.f719d = (ImageView) view.findViewById(v.connecting_iv);
        View viewFindViewById2 = view.findViewById(v.msg_tv);
        b.g(viewFindViewById2, "view.findViewById(R.id.msg_tv)");
        this.c = (TextView) viewFindViewById2;
        a().setText(getString(x.link_waitting));
        View viewFindViewById3 = view.findViewById(v.setting_iv);
        viewFindViewById3.setOnClickListener(new d(this, i2));
        View viewFindViewById4 = view.findViewById(v.back_iv);
        final int i3 = 1;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(new d(this, i3));
        }
        TextView textView = (TextView) view.findViewById(v.support_msg);
        if (textView != null) {
            if (CarLink.f562i == null) {
                b.B("me");
                throw null;
            }
            boolean zH = CarLink.H();
            if (CarLink.f562i == null) {
                b.B("me");
                throw null;
            }
            boolean z2 = CarLink.I() && this.f720e != 41;
            String string = getString(x.android_auto_title);
            b.g(string, "if(supportAuto) getStrin…droid_auto_title) else \"\"");
            if (zH) {
                StringBuilder sbU = android.accessibilityservice.c.u(string, " + ");
                sbU.append(getString(x.wire_carplay_title));
                string = sbU.toString();
                if (z2) {
                    StringBuilder sbU2 = android.accessibilityservice.c.u(string, " + ");
                    sbU2.append(getString(x.wireless_carplay_title));
                    string = sbU2.toString();
                }
            }
            if (this.f720e == 128) {
                string = getString(x.wireless_carplay_title);
            }
            textView.setText(string);
            if (CarLink.f562i == null) {
                b.B("me");
                throw null;
            }
            if (!CarLink.w() && this.f720e != 41) {
                textView.setVisibility(8);
            }
        }
        if (this.f720e == 41) {
            viewFindViewById3.setVisibility(8);
        }
        View viewFindViewById5 = view.findViewById(v.textView11);
        TextView textView2 = viewFindViewById5 instanceof TextView ? (TextView) viewFindViewById5 : null;
        TextPaint paint = textView2 != null ? textView2.getPaint() : null;
        if (paint != null) {
            paint.setFakeBoldText(true);
        }
        final View viewFindViewById6 = view.findViewById(v.help_msg_layout);
        if (!(viewFindViewById6 instanceof View)) {
            viewFindViewById6 = null;
        }
        this.f718b = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setVisibility(8);
            view.findViewById(v.help_msg_close).setOnClickListener(new View.OnClickListener() { // from class: i.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i4 = i2;
                    View view3 = viewFindViewById6;
                    switch (i4) {
                        case 0:
                            int i5 = LogoFragment.f717g;
                            t.b.h(view3, "$layout");
                            if (view3.getVisibility() == 0) {
                                view3.setVisibility(8);
                            }
                            break;
                        default:
                            int i6 = LogoFragment.f717g;
                            t.b.h(view3, "$layout");
                            if (view3.getVisibility() != 8) {
                                view3.setVisibility(8);
                            } else {
                                view3.setVisibility(0);
                            }
                            break;
                    }
                }
            });
            view.findViewById(v.help_iv).setOnClickListener(new View.OnClickListener() { // from class: i.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i4 = i3;
                    View view3 = viewFindViewById6;
                    switch (i4) {
                        case 0:
                            int i5 = LogoFragment.f717g;
                            t.b.h(view3, "$layout");
                            if (view3.getVisibility() == 0) {
                                view3.setVisibility(8);
                            }
                            break;
                        default:
                            int i6 = LogoFragment.f717g;
                            t.b.h(view3, "$layout");
                            if (view3.getVisibility() != 8) {
                                view3.setVisibility(8);
                            } else {
                                view3.setVisibility(0);
                            }
                            break;
                    }
                }
            });
        }
        View viewFindViewById7 = view.findViewById(v.home_iv);
        ImageView imageView = viewFindViewById7 instanceof ImageView ? (ImageView) viewFindViewById7 : null;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: i.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i4 = LogoFragment.f717g;
                    CarLink carLink = CarLink.f562i;
                    if (carLink == null) {
                        t.b.B("me");
                        throw null;
                    }
                    CarLinkService carLinkServiceF = carLink.f();
                    if (carLinkServiceF != null) {
                        o.e.b(carLinkServiceF.l(), 0, 133, new int[]{3}, null, 24);
                    }
                }
            });
        }
        CarLink carLink = CarLink.f562i;
        if (carLink != null) {
            carLink.j().f901u.observe(this, this.f721f);
        } else {
            b.B("me");
            throw null;
        }
    }
}
