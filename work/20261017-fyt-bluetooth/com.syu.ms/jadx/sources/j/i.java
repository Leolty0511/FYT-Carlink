package j;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.MediaRouter;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;

/* JADX INFO: loaded from: classes.dex */
public class i extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaRouter f2943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f2944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaRouter.RouteInfo f2945c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2946d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f2947e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f2948f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Drawable f2949g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2950h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f2951i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SeekBar f2952j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2953k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f2954l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Button f2955m;

    public class a implements SeekBar.OnSeekBarChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Runnable f2956a = new RunnableC0059a();

        /* JADX INFO: renamed from: j.i$a$a, reason: collision with other inner class name */
        public class RunnableC0059a implements Runnable {
            public RunnableC0059a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (i.this.f2953k) {
                    i.this.f2953k = false;
                    i.this.l();
                }
            }
        }

        public a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
            if (z2) {
                i.this.f2945c.requestSetVolume(i2);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            if (i.this.f2953k) {
                i.this.f2952j.removeCallbacks(this.f2956a);
            } else {
                i.this.f2953k = true;
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            i.this.f2952j.postDelayed(this.f2956a, 250L);
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (i.this.f2945c.isSelected()) {
                i.this.f2943a.getDefaultRoute().select();
            }
            i.this.dismiss();
        }
    }

    public final class c extends MediaRouter.SimpleCallback {
        public c() {
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            i.this.k();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteGrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i2) {
            i.this.k();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteUngrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
            i.this.k();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteUnselected(MediaRouter mediaRouter, int i2, MediaRouter.RouteInfo routeInfo) {
            i.this.k();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteVolumeChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            if (routeInfo == i.this.f2945c) {
                i.this.l();
            }
        }

        public /* synthetic */ c(i iVar, a aVar) {
            this();
        }
    }

    public i(Context context, int i2) {
        super(context, i2);
        this.f2950h = true;
        MediaRouter mediaRouter = (MediaRouter) context.getSystemService(Context.MEDIA_ROUTER_SERVICE);
        this.f2943a = mediaRouter;
        this.f2944b = new c(this, null);
        this.f2945c = mediaRouter.getSelectedRoute();
    }

    public final Drawable h() {
        if (this.f2945c.isConnecting()) {
            if (this.f2947e == null) {
                this.f2947e = getContext().getResources().getDrawable(17302303);
            }
            return this.f2947e;
        }
        if (this.f2948f == null) {
            this.f2948f = getContext().getResources().getDrawable(17302317);
        }
        return this.f2948f;
    }

    public final boolean i() {
        return this.f2950h && this.f2945c.getVolumeHandling() == 1;
    }

    public View j(Bundle bundle) {
        return null;
    }

    public final boolean k() {
        if (!this.f2945c.isSelected() || this.f2945c.isDefault()) {
            dismiss();
            return false;
        }
        setTitle(this.f2945c.getName());
        l();
        Drawable drawableH = h();
        if (drawableH == this.f2949g) {
            return true;
        }
        this.f2949g = drawableH;
        getWindow().setFeatureDrawable(3, drawableH);
        return true;
    }

    public final void l() {
        if (this.f2953k) {
            return;
        }
        if (!i()) {
            this.f2951i.setVisibility(8);
            return;
        }
        this.f2951i.setVisibility(0);
        this.f2952j.setMax(this.f2945c.getVolumeMax());
        this.f2952j.setProgress(this.f2945c.getVolume());
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2943a.addCallback(0, this.f2944b, 2);
        k();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().requestFeature(3);
        setContentView(17367133);
        this.f2951i = (LinearLayout) findViewById(16909020);
        SeekBar seekBar = (SeekBar) findViewById(16909021);
        this.f2952j = seekBar;
        seekBar.setOnSeekBarChangeListener(new a());
        Button button = (Button) findViewById(16909023);
        this.f2955m = button;
        button.setOnClickListener(new b());
        this.f2946d = true;
        if (k()) {
            this.f2954l = j(bundle);
            FrameLayout frameLayout = (FrameLayout) findViewById(16909022);
            View view = this.f2954l;
            if (view == null) {
                frameLayout.setVisibility(8);
            } else {
                frameLayout.addView(view);
                frameLayout.setVisibility(0);
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f2943a.removeCallback(this.f2944b);
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 25 && i2 != 24) {
            return super.onKeyDown(i2, keyEvent);
        }
        this.f2945c.requestUpdateVolume(i2 == 25 ? -1 : 1);
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 25 || i2 == 24) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }
}
