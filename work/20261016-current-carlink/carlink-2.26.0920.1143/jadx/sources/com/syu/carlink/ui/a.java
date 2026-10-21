package com.syu.carlink.ui;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.projection.logging.Log;
import com.syu.carlink.MainActivity;
import k.b;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f727a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f728b;
    public final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l f730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Handler f732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f734i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public FrameLayout f735j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final android.net.b f736k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final s.a f737l;
    public final s.a m;

    public a(MainActivity mainActivity, int i2, b bVar, int i3) {
        int i4 = (i3 & 4) != 0 ? 5 : 0;
        bVar = (i3 & 8) != 0 ? null : bVar;
        boolean z2 = (i3 & 16) != 0;
        this.f727a = mainActivity;
        this.f728b = i4;
        this.c = bVar;
        this.f729d = z2;
        this.f731f = 5;
        this.f732g = new Handler(Looper.getMainLooper());
        View viewInflate = View.inflate(mainActivity, i2, null);
        t.b.g(viewInflate, "inflate(context, layoutId, null)");
        this.f733h = viewInflate;
        this.f736k = new android.net.b(this, 14);
        this.f737l = kotlin.a.c(new z.a() { // from class: com.syu.carlink.ui.TimerWindow$widthPx$2
            {
                super(0);
            }

            @Override // z.a
            public final Integer invoke() {
                return Integer.valueOf((int) ((this.f726b.f727a.getResources().getDisplayMetrics().densityDpi * 480) / 160.0f));
            }
        });
        this.m = kotlin.a.c(new z.a() { // from class: com.syu.carlink.ui.TimerWindow$heightPx$2
            {
                super(0);
            }

            @Override // z.a
            public final Integer invoke() {
                return Integer.valueOf((int) ((this.f725b.f727a.getResources().getDisplayMetrics().densityDpi * 200) / 160.0f));
            }
        });
        if (bVar != null) {
            bVar.b(this, viewInflate);
        }
    }

    public final void a() {
        this.f732g.removeCallbacks(this.f736k);
        if (this.f734i) {
            this.f734i = false;
            try {
                FrameLayout frameLayout = this.f735j;
                ViewParent parent = frameLayout != null ? frameLayout.getParent() : null;
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(this.f735j);
                }
            } catch (Exception e2) {
                Log.e("HDL", "TimerWindow dismiss error: " + e2.getMessage());
            }
            this.f735j = null;
        }
    }

    public final void b(int i2) {
        if (this.f729d && this.f734i) {
            b bVar = this.c;
            if (bVar != null) {
                bVar.a(i2, this.f733h);
            }
            this.f731f = i2;
            if (i2 > 0) {
                this.f732g.postDelayed(this.f736k, 1000L);
            } else {
                a();
            }
        }
    }

    public final void c(View view) {
        ViewGroup viewGroup;
        if (this.f734i) {
            return;
        }
        Context context = this.f727a;
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null && (activity.isFinishing() || activity.isDestroyed())) {
            Log.e("HDL", "TimerWindow showAtLocation skipped: activity finishing/destroyed");
            return;
        }
        if (activity == null || (viewGroup = (ViewGroup) activity.findViewById(16908290)) == null) {
            viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
            if (viewGroup == null) {
                Log.e("HDL", "TimerWindow showAtLocation skipped: no container");
                return;
            }
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClickable(true);
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: k.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                com.syu.carlink.ui.a aVar = this.f978b;
                t.b.h(aVar, "this$0");
                t.b.h(motionEvent, "event");
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                aVar.a();
                return true;
            }
        });
        View view2 = this.f733h;
        view2.setClickable(true);
        ViewParent parent = view2.getParent();
        ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup2 != null) {
            viewGroup2.removeView(view2);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(((Number) this.f737l.getValue()).intValue(), ((Number) this.m.getValue()).intValue(), 17);
        layoutParams.leftMargin = 0;
        layoutParams.topMargin = 30;
        frameLayout.addView(view2, layoutParams);
        viewGroup.addView(frameLayout, new ViewGroup.LayoutParams(-1, -1));
        this.f735j = frameLayout;
        this.f734i = true;
        b(this.f728b);
    }
}
