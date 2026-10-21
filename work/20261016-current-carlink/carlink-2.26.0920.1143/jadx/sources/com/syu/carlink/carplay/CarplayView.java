package com.syu.carlink.carplay;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import h.d;
import h.f;
import h.g;
import h.h;
import h.i;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class CarplayView extends SurfaceView implements SurfaceHolder.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h f673b;
    public p c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public i f674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s.a f675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final s.a f676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final d f677g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarplayView(Context context) {
        super(context);
        t.b.h(context, "context");
        this.f675e = kotlin.a.c(CarplayView$mHandler$2.INSTANCE);
        this.f676f = kotlin.a.c(CarplayView$defSurfaceCodec$2.INSTANCE);
        this.f677g = new d();
        getHolder().addCallback(this);
    }

    public final boolean getDefSurfaceCodec() {
        return ((Boolean) this.f676f.getValue()).booleanValue();
    }

    public final Handler getMHandler() {
        return (Handler) this.f675e.getValue();
    }

    public final i getReceiver() {
        return this.f674d;
    }

    public final p getTouchCallback() {
        return this.c;
    }

    @Override // android.view.SurfaceView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        requestFocus();
        n.b.a("HDL", "onAttachedToWindow CarplayView ============>>>");
    }

    @Override // android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() throws Throwable {
        super.onDetachedFromWindow();
        getMHandler().removeCallbacks(this.f677g);
        n.b.a("HDL", "onDetachedFromWindow CarplayView ============>>>");
    }

    @Override // android.view.View
    public final void onDisplayHint(int i2) {
        super.onDisplayHint(i2);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        t.b.h(motionEvent, "event");
        p pVar = this.c;
        return pVar != null ? ((Boolean) pVar.invoke(motionEvent, this)).booleanValue() : super.onTouchEvent(motionEvent);
    }

    public final void setReceiver(i iVar) {
        this.f674d = iVar;
    }

    public final void setTouchCallback(p pVar) {
        this.c = pVar;
    }

    public void setup(int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        i iVar;
        t.b.h(surfaceHolder, "holder");
        StringBuilder sb = new StringBuilder("------->>  CarPlay CarplayView surfaceChanged ");
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        sb.append(carLink);
        sb.append("   ");
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF = carLink2.f();
        sb.append((carLinkServiceF == null || (iVar = carLinkServiceF.f606z) == null) ? null : Boolean.valueOf(iVar.f951f));
        n.b.a("HDL", sb.toString());
        CarLink carLink3 = CarLink.f562i;
        if (carLink3 == null) {
            t.b.B("me");
            throw null;
        }
        if (carLink3.f565e) {
            CarLink carLink4 = CarLink.f562i;
            if (carLink4 == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink4.p()) {
                CarLink carLink5 = CarLink.f562i;
                if (carLink5 != null) {
                    carLink5.f564d = true;
                } else {
                    t.b.B("me");
                    throw null;
                }
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        SurfaceHolder holder;
        h.c cVar;
        t.b.h(surfaceHolder, "holder");
        n.b.a("HDL", "------->>  CarPlay CarplayView surfaceCreated " + this + "  receiver: " + this.f674d);
        if (getDefSurfaceCodec()) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink.f();
            if (carLinkServiceF != null && (cVar = carLinkServiceF.A) != null) {
                cVar.o(surfaceHolder.getSurface());
            }
        } else {
            i iVar = this.f674d;
            if (iVar != null) {
                n.b.a("HDL", "------- surfaceCreated liveCodec " + this);
                this.f673b = new h(iVar);
            }
            h hVar = this.f673b;
            if (hVar != null && (holder = getHolder()) != null) {
                hVar.f939d = holder.getSurface();
            }
            h hVar2 = this.f673b;
            if (hVar2 != null) {
                synchronized (hVar2) {
                    StringBuilder sb = new StringBuilder("000 ----------->>>  mediaCodec start suface: ");
                    sb.append(hVar2.f939d);
                    sb.append(" carplay link: ");
                    CarLink carLink2 = CarLink.f562i;
                    if (carLink2 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    sb.append(carLink2.p());
                    sb.append("  link state ");
                    CarLink carLink3 = CarLink.f562i;
                    if (carLink3 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    sb.append(carLink3.B());
                    n.b.a("HDL", sb.toString());
                    if (hVar2.f939d != null) {
                        CarLink carLink4 = CarLink.f562i;
                        if (carLink4 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        if (carLink4.p()) {
                            hVar2.a();
                            if (hVar2.f946k == null) {
                                n.b.a("HDL", "00 ----------->>>  mediaCodec start");
                                f fVar = new f(hVar2);
                                hVar2.f945j.set(true);
                                fVar.start();
                                hVar2.f946k = fVar;
                                if (hVar2.f947l == null) {
                                    g gVar = new g(hVar2);
                                    gVar.start();
                                    hVar2.f947l = gVar;
                                }
                                if (!hVar2.f940e.isAlive()) {
                                    hVar2.f940e.start();
                                }
                            }
                            if (hVar2.c) {
                                hVar2.c = false;
                                f fVar2 = hVar2.f946k;
                                if (fVar2 != null) {
                                    fVar2.f935b = false;
                                }
                            }
                        }
                    }
                }
            }
        }
        StringBuilder sb2 = new StringBuilder("------- CarplayView start  00 ");
        CarLink carLink5 = CarLink.f562i;
        if (carLink5 == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF2 = carLink5.f();
        sb2.append(carLinkServiceF2 != null ? carLinkServiceF2.A : null);
        n.b.a("HDL", sb2.toString());
        Handler mHandler = getMHandler();
        d dVar = this.f677g;
        mHandler.removeCallbacks(dVar);
        getMHandler().postDelayed(dVar, 250L);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) throws InterruptedException {
        h hVar;
        h.c cVar;
        h.c cVar2;
        t.b.h(surfaceHolder, "holder");
        if (getDefSurfaceCodec()) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                t.b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink.f();
            if (carLinkServiceF != null && (cVar2 = carLinkServiceF.A) != null) {
                cVar2.o(null);
            }
        }
        n.b.a("HDL", "------->>  CarPlay CarplayView surfaceDestroyed start!! " + this);
        getMHandler().removeCallbacks(this.f677g);
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF2 = carLink2.f();
        if (carLinkServiceF2 != null && (cVar = carLinkServiceF2.A) != null) {
            cVar.p(false);
        }
        if (!getDefSurfaceCodec() && (hVar = this.f673b) != null) {
            hVar.b();
        }
        n.b.a("HDL", "------- surfaceDestroyed end!! " + this);
    }

    public CarplayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f675e = kotlin.a.c(CarplayView$mHandler$2.INSTANCE);
        this.f676f = kotlin.a.c(CarplayView$defSurfaceCodec$2.INSTANCE);
        this.f677g = new d();
        getHolder().addCallback(this);
    }

    public CarplayView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f675e = kotlin.a.c(CarplayView$mHandler$2.INSTANCE);
        this.f676f = kotlin.a.c(CarplayView$defSurfaceCodec$2.INSTANCE);
        this.f677g = new d();
        getHolder().addCallback(this);
    }
}
