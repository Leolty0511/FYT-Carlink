package com.syu.carlink.fragment;

import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.syu.carlink.CarLink;
import com.syu.carlink.MainActivity;
import e.v;
import e.w;
import j.d;
import p.a;
import t.b;
import t.c;

/* JADX INFO: loaded from: classes4.dex */
public final class CarMarkFragment extends Fragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f705b = 0;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        b.h(layoutInflater, "inflater");
        if (getActivity() instanceof MainActivity) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                b.B("me");
                throw null;
            }
            int iH = carLink.h();
            Class cls = Boolean.TYPE;
            b.e(cls);
            Boolean bool = (Boolean) a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls}, "sys.carlink.universal_skin", Boolean.FALSE);
            if (bool != null ? bool.booleanValue() : false) {
                i2 = w.car_logo_layout;
            } else if (c.H(new int[]{112, 140}, iH)) {
                i2 = w.car_logo_layout_yuf;
            } else {
                i2 = c.H(new int[]{95}, iH) ? w.car_logo_layout_tzy : w.car_logo_layout;
            }
        } else {
            i2 = w.car_logo_layout;
        }
        return layoutInflater.inflate(i2, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        b.h(view, "view");
        super.onViewCreated(view, bundle);
        Context context = getContext();
        if (context != null) {
            RecyclerView recyclerView = (RecyclerView) view.findViewById(v.mark_recyclerview);
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            float f2 = displayMetrics.widthPixels;
            float f3 = displayMetrics.density;
            int i2 = (int) (f2 - (48 * f3));
            int i3 = (int) ((120 * f3) + 0.5f);
            int i4 = i2 / i3;
            if (i2 % i3 < i4 * 3) {
                i4--;
            }
            recyclerView.setLayoutManager(new GridLayoutManager(context, i4));
            recyclerView.addItemDecoration(new d());
            j.c cVar = new j.c(context);
            cVar.c = new i.b(this, cVar);
            recyclerView.setAdapter(cVar);
        }
        View viewFindViewById = view.findViewById(v.back_iv);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new i.d(this, 2));
        }
    }
}
