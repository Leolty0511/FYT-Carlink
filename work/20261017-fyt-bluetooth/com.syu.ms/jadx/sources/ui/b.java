package ui;

import android.util.Log;
import o1.s0;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public interface b {

    public static abstract class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17569a;

        public a() {
            this.f17569a = true;
            this.f17569a = s0.l("ro.syu.enableVolBar", true);
        }

        @Override // ui.b
        public void a(boolean z2) {
            this.f17569a = s0.l("ro.syu.enableVolBar", true) && !z2;
        }

        public abstract void d();

        public abstract void e();

        public boolean f() {
            return this.f17569a;
        }

        @Override // ui.b
        public void hide() {
            Log.e("VOL", "=====>>> hide()isEnableVolBar() = " + f());
            if (f()) {
                d();
            } else {
                h.R(0);
            }
        }

        @Override // ui.b
        public void show() {
            Log.e("VOL", "=====>>> show() isEnableVolBar() = " + f());
            if (f()) {
                e();
            } else {
                h.R(1);
            }
        }
    }

    void a(boolean z2);

    void b(int i2);

    void c();

    void hide();

    boolean isShowing();

    void show();
}
