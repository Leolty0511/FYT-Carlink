package com.syu.carlink.fragment;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.media.MediaCodec;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.util.Log;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.carplay.CarplayView;
import e.v;
import e.w;
import h.c;
import h.h;
import h.i;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import t.b;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class CarplayFragment extends Fragment {
    public static final /* synthetic */ int m = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public CarplayView f710g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View f711h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f712i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ObjectAnimator f714k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Size f715l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f706b = 2;
    public final int[] c = new int[6];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f707d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f708e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p f709f = new p() { // from class: com.syu.carlink.fragment.CarplayFragment$touchHandle$1
        {
            super(2);
        }

        @Override // z.p
        public final Boolean invoke(MotionEvent motionEvent, View view) {
            c cVar;
            c cVar2;
            c cVar3;
            c cVar4;
            c cVar5;
            b.h(motionEvent, "event");
            b.h(view, "view");
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink.f();
            float f2 = (carLinkServiceF == null || (cVar5 = carLinkServiceF.A) == null) ? 0.0f : cVar5.c;
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF2 = carLink2.f();
            float f3 = (carLinkServiceF2 == null || (cVar4 = carLinkServiceF2.A) == null) ? 0.0f : cVar4.f914b;
            float width = f3 / view.getWidth();
            float height = f2 / view.getHeight();
            int actionIndex = motionEvent.getActionIndex();
            int pointerId = motionEvent.getPointerId(actionIndex);
            StringBuilder sb = new StringBuilder("-------onTouchEvent =>> view : [");
            sb.append(view.getWidth());
            sb.append("  ");
            sb.append(view.getHeight());
            sb.append("]  display:[");
            CarLink carLink3 = CarLink.f562i;
            if (carLink3 == null) {
                b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF3 = carLink3.f();
            sb.append((carLinkServiceF3 == null || (cVar3 = carLinkServiceF3.A) == null) ? null : Integer.valueOf(cVar3.f914b));
            sb.append("  ");
            CarLink carLink4 = CarLink.f562i;
            if (carLink4 == null) {
                b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF4 = carLink4.f();
            sb.append((carLinkServiceF4 == null || (cVar2 = carLinkServiceF4.A) == null) ? null : Integer.valueOf(cVar2.c));
            sb.append(']');
            n.b.a("Touch", sb.toString());
            n.b.a("Touch", "-------onTouchEvent =>> touchHandle it.actionMasked: " + motionEvent.getActionMasked() + " touchHandle  index: " + actionIndex + "  id: " + pointerId + " pointerCount: " + motionEvent.getPointerCount() + " - [" + motionEvent.getX(actionIndex) + "  " + motionEvent.getY(actionIndex) + ']');
            boolean z2 = width == 0.0f;
            CarplayFragment carplayFragment = this.f716b;
            if (!z2) {
                if (!(height == 0.0f)) {
                    int actionMasked = motionEvent.getActionMasked();
                    if (actionMasked != 0) {
                        if (actionMasked == 1) {
                            int i2 = carplayFragment.f707d;
                            int[] iArr = carplayFragment.c;
                            if (pointerId == i2) {
                                iArr[0] = Math.max(0, Math.min((int) f3, (int) (motionEvent.getX(actionIndex) * width)));
                                iArr[1] = Math.max(0, Math.min((int) f2, (int) (motionEvent.getY(actionIndex) * height)));
                                iArr[2] = 0;
                                carplayFragment.f707d = -1;
                                int i3 = carplayFragment.f708e;
                                if (i3 >= 0) {
                                    carplayFragment.f707d = i3;
                                    iArr[0] = iArr[3];
                                    iArr[1] = iArr[4];
                                    iArr[2] = iArr[5];
                                    carplayFragment.f708e = -1;
                                }
                            } else if (pointerId == carplayFragment.f708e) {
                                iArr[3] = Math.max(0, Math.min((int) f3, (int) (motionEvent.getX(actionIndex) * width)));
                                iArr[4] = Math.max(0, Math.min((int) f2, (int) (motionEvent.getY(actionIndex) * height)));
                                iArr[5] = 0;
                                carplayFragment.f708e = -1;
                            }
                        } else if (actionMasked == 2) {
                            int pointerCount = motionEvent.getPointerCount();
                            int i4 = carplayFragment.f706b;
                            if (pointerCount > i4) {
                                pointerCount = i4;
                            }
                            for (int i5 = 0; i5 < pointerCount; i5++) {
                                int pointerId2 = motionEvent.getPointerId(i5);
                                int x2 = (int) (motionEvent.getX(i5) * width);
                                int y2 = (int) (motionEvent.getY(i5) * height);
                                int i6 = carplayFragment.f707d;
                                int[] iArr2 = carplayFragment.c;
                                if (pointerId2 == i6) {
                                    iArr2[0] = Math.max(0, Math.min((int) f3, x2));
                                    iArr2[1] = Math.max(0, Math.min((int) f2, y2));
                                    iArr2[2] = carplayFragment.isResumed() ? 1 : 0;
                                } else if (pointerId2 == carplayFragment.f708e) {
                                    iArr2[3] = Math.max(0, Math.min((int) f3, x2));
                                    iArr2[4] = Math.max(0, Math.min((int) f2, y2));
                                    iArr2[5] = carplayFragment.isResumed() ? 1 : 0;
                                }
                            }
                        } else if (actionMasked == 3) {
                            int[] iArr3 = carplayFragment.c;
                            iArr3[2] = 0;
                            iArr3[5] = 0;
                            carplayFragment.f707d = -1;
                            carplayFragment.f708e = -1;
                        } else if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                int i7 = carplayFragment.f708e;
                                int[] iArr4 = carplayFragment.c;
                                if (pointerId == i7) {
                                    iArr4[3] = Math.max(0, Math.min((int) f3, (int) (motionEvent.getX(actionIndex) * width)));
                                    iArr4[4] = Math.max(0, Math.min((int) f2, (int) (motionEvent.getY(actionIndex) * height)));
                                    iArr4[5] = 0;
                                    carplayFragment.f708e = -1;
                                } else if (pointerId == carplayFragment.f707d) {
                                    iArr4[0] = Math.max(0, Math.min((int) f3, (int) (motionEvent.getX(actionIndex) * width)));
                                    iArr4[1] = Math.max(0, Math.min((int) f2, (int) (motionEvent.getY(actionIndex) * height)));
                                    iArr4[2] = 0;
                                    carplayFragment.f707d = carplayFragment.f708e;
                                    iArr4[5] = 0;
                                    carplayFragment.f708e = -1;
                                }
                            }
                        } else if (carplayFragment.f708e < 0 && pointerId != carplayFragment.f707d) {
                            carplayFragment.f708e = pointerId;
                            int iMax = Math.max(0, Math.min((int) f3, (int) (motionEvent.getX(actionIndex) * width)));
                            int[] iArr5 = carplayFragment.c;
                            iArr5[3] = iMax;
                            iArr5[4] = Math.max(0, Math.min((int) f2, (int) (motionEvent.getY(actionIndex) * height)));
                            iArr5[5] = carplayFragment.isResumed() ? 1 : 0;
                        }
                    } else if (carplayFragment.f707d < 0) {
                        carplayFragment.f707d = pointerId;
                        int iMax2 = Math.max(0, Math.min((int) f3, (int) (motionEvent.getX(actionIndex) * width)));
                        int[] iArr6 = carplayFragment.c;
                        iArr6[0] = iMax2;
                        iArr6[1] = Math.max(0, Math.min((int) f2, (int) (motionEvent.getY(actionIndex) * height)));
                        iArr6[2] = carplayFragment.isResumed() ? 1 : 0;
                        iArr6[3] = iArr6[0];
                        iArr6[4] = iArr6[1];
                        iArr6[5] = 0;
                    }
                }
            }
            StringBuilder sb2 = new StringBuilder("Event: ");
            String string = Arrays.toString(carplayFragment.c);
            b.g(string, "toString(this)");
            sb2.append(string);
            sb2.append(" pointers: ");
            sb2.append(motionEvent.getPointerCount());
            sb2.append(" event.actionMasked:");
            sb2.append(motionEvent.getActionMasked());
            Log.e("Touch", sb2.toString());
            CarLink carLink5 = CarLink.f562i;
            if (carLink5 == null) {
                b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF5 = carLink5.f();
            if (carLinkServiceF5 != null && (cVar = carLinkServiceF5.A) != null) {
                int[] iArr7 = carplayFragment.c;
                b.h(iArr7, "coords");
                cVar.n(202, null, Arrays.copyOf(iArr7, iArr7.length));
            }
            return Boolean.TRUE;
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f713j = new AtomicBoolean(false);

    public final View a() {
        View view = this.f711h;
        if (view != null) {
            return view;
        }
        b.B(Context.OVERLAY_SERVICE);
        throw null;
    }

    public final void b(int i2, int i3, boolean z2) {
        c cVar;
        CarplayView carplayView = this.f710g;
        if (carplayView != null) {
            if (z2) {
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    b.B("me");
                    throw null;
                }
                CarLinkService carLinkServiceF = carLink.f();
                if (carLinkServiceF != null && (cVar = carLinkServiceF.A) != null) {
                    int[] iArrC = cVar.c(cVar.f914b, cVar.c, i2, i3);
                    int i4 = iArrC[0];
                    int i5 = iArrC[1];
                    String string = Arrays.toString(iArrC);
                    b.g(string, "toString(this)");
                    n.b.a("HDL", "----------->> ".concat(string));
                    n.b.a("HDL", "fixCarplayVideoSize updateSurfaceViewLayout 01 ----------->> " + i4 + ' ' + i5);
                    ViewGroup.LayoutParams layoutParams = carplayView.getLayoutParams();
                    b.f(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                    layoutParams2.width = i4;
                    layoutParams2.height = i5;
                    carplayView.setLayoutParams(layoutParams2);
                    carplayView.requestLayout();
                }
            } else {
                ViewGroup.LayoutParams layoutParams3 = carplayView.getLayoutParams();
                b.f(layoutParams3, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams3;
                layoutParams4.width = i2;
                layoutParams4.height = i3;
                n.b.a("HDL", "fixCarplayVideoSize updateSurfaceViewLayout ----------->> " + i2 + ' ' + i3);
                carplayView.setLayoutParams(layoutParams4);
                carplayView.requestLayout();
            }
        }
        if (this.f710g == null) {
            this.f715l = new Size(i2, i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        b.h(layoutInflater, "inflater");
        this.f712i = new Handler(Looper.getMainLooper());
        return layoutInflater.inflate(w.carplay_layout, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() throws InterruptedException {
        MediaCodec mediaCodec;
        n.b.a("HDL", "Carplay onDestroy");
        CarplayView carplayView = this.f710g;
        if (carplayView != null) {
            h hVar = carplayView.f673b;
            if (hVar != null) {
                hVar.b();
            }
            i iVar = carplayView.f674d;
            if (iVar != null && (mediaCodec = iVar.c) != null) {
                iVar.f949d = false;
                try {
                    mediaCodec.stop();
                } catch (Exception unused) {
                }
                MediaCodec mediaCodec2 = iVar.c;
                if (mediaCodec2 != null) {
                    mediaCodec2.release();
                }
                iVar.c = null;
            }
        }
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0058  */
    /* JADX WARN: Code duplicated, block: B:18:0x005c  */
    /* JADX WARN: Code duplicated, block: B:44:0x00bc  */
    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z2) {
        CarLink carLink;
        CarLinkService carLinkServiceF;
        c cVar;
        super.onHiddenChanged(z2);
        n.b.a("HDL", "Carplay onHiddenChanged " + z2 + " carplay_preview : " + this.f710g);
        this.f713j.set(z2 ^ true);
        if (z2) {
            a().setVisibility(0);
            a().setAlpha(1.0f);
            return;
        }
        if (CarLink.f562i == null) {
            b.B("me");
            throw null;
        }
        if (CarLink.F()) {
            carLink = CarLink.f562i;
            if (carLink != null) {
                b.B("me");
                throw null;
            }
            carLinkServiceF = carLink.f();
            if (carLinkServiceF != null && (cVar = carLinkServiceF.A) != null) {
                cVar.m();
            }
        } else {
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                b.B("me");
                throw null;
            }
            if (carLink2.t()) {
                carLink = CarLink.f562i;
                if (carLink != null) {
                    b.B("me");
                    throw null;
                }
                carLinkServiceF = carLink.f();
                if (carLinkServiceF != null) {
                    cVar.m();
                }
            }
        }
        ObjectAnimator objectAnimator = this.f714k;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f714k = null;
        }
        CarplayView carplayView = this.f710g;
        if (carplayView != null) {
            carplayView.requestLayout();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(a(), "alpha", a().getAlpha(), 0.0f);
        this.f714k = objectAnimatorOfFloat;
        if (objectAnimatorOfFloat != null) {
            objectAnimatorOfFloat.setDuration(800L);
        }
        ObjectAnimator objectAnimator2 = this.f714k;
        if (objectAnimator2 != null) {
            objectAnimator2.addListener(new i.c(this, 0));
        }
        ObjectAnimator objectAnimator3 = this.f714k;
        if (objectAnimator3 != null) {
            objectAnimator3.setStartDelay(500L);
        }
        ObjectAnimator objectAnimator4 = this.f714k;
        if (objectAnimator4 != null) {
            objectAnimator4.start();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        c cVar;
        int[] iArr = this.c;
        String string = Arrays.toString(iArr);
        b.g(string, "toString(this)");
        n.b.a("Touch", "onPause =======>>> ".concat(string));
        if (iArr[2] != 0 || iArr[5] != 0) {
            iArr[2] = 0;
            iArr[5] = 0;
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink.f();
            if (carLinkServiceF != null && (cVar = carLinkServiceF.A) != null) {
                cVar.n(202, null, Arrays.copyOf(iArr, iArr.length));
            }
            StringBuilder sb = new StringBuilder("onPause Event: ");
            String string2 = Arrays.toString(iArr);
            b.g(string2, "toString(this)");
            sb.append(string2);
            sb.append("    \n\n\n\n");
            n.b.a("Touch", sb.toString());
        }
        n.b.a("HDL", "Carplay onPause");
        ObjectAnimator objectAnimator = this.f714k;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f714k = null;
        }
        a().setVisibility(0);
        a().setAlpha(1.0f);
        this.f713j.set(false);
        super.onPause();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        CarLink carLink;
        CarLinkService carLinkServiceF;
        c cVar;
        n.b.a("HDL", "Carplay onResume isHidden: " + isHidden());
        a().setAlpha(1.0f);
        a().setVisibility(0);
        this.f713j.set(true);
        if (!isHidden()) {
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                b.B("me");
                throw null;
            }
            if (carLink2.p()) {
                if (CarLink.f562i == null) {
                    b.B("me");
                    throw null;
                }
                if (CarLink.F()) {
                    carLink = CarLink.f562i;
                    if (carLink != null) {
                        b.B("me");
                        throw null;
                    }
                    carLinkServiceF = carLink.f();
                    if (carLinkServiceF != null && (cVar = carLinkServiceF.A) != null) {
                        cVar.m();
                    }
                } else {
                    CarLink carLink3 = CarLink.f562i;
                    if (carLink3 == null) {
                        b.B("me");
                        throw null;
                    }
                    if (carLink3.t()) {
                        carLink = CarLink.f562i;
                        if (carLink != null) {
                            b.B("me");
                            throw null;
                        }
                        carLinkServiceF = carLink.f();
                        if (carLinkServiceF != null) {
                            cVar.m();
                        }
                    }
                }
            }
        }
        super.onResume();
        ObjectAnimator objectAnimator = this.f714k;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f714k = null;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(a(), "alpha", a().getAlpha(), 0.0f);
        this.f714k = objectAnimatorOfFloat;
        if (objectAnimatorOfFloat != null) {
            objectAnimatorOfFloat.setDuration(800L);
        }
        ObjectAnimator objectAnimator2 = this.f714k;
        if (objectAnimator2 != null) {
            objectAnimator2.addListener(new i.c(this, 1));
        }
        ObjectAnimator objectAnimator3 = this.f714k;
        if (objectAnimator3 != null) {
            objectAnimator3.setStartDelay(500L);
        }
        ObjectAnimator objectAnimator4 = this.f714k;
        if (objectAnimator4 != null) {
            objectAnimator4.start();
        }
        String strValueOf = String.valueOf(1);
        b.h(strValueOf, "value");
        SystemProperties.set("sys.carlink.type", strValueOf);
        Handler handler = this.f712i;
        if (handler != null) {
            handler.postDelayed(new android.net.b(this, 12), 500L);
        } else {
            b.B("handler");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        b.h(view, "view");
        super.onViewCreated(view, bundle);
        this.f710g = (CarplayView) view.findViewById(v.carplay_preview);
        View viewFindViewById = view.findViewById(v.carplay_overlay);
        b.g(viewFindViewById, "view.findViewById(R.id.carplay_overlay)");
        this.f711h = viewFindViewById;
        CarplayView carplayView = this.f710g;
        if (carplayView != null) {
            CarLink carLink = CarLink.f562i;
            if (carLink == null) {
                b.B("me");
                throw null;
            }
            CarLinkService carLinkServiceF = carLink.f();
            carplayView.setReceiver(carLinkServiceF != null ? carLinkServiceF.f606z : null);
        }
        CarplayView carplayView2 = this.f710g;
        if (carplayView2 != null) {
            carplayView2.setTouchCallback(this.f709f);
        }
        Size size = this.f715l;
        if (size != null) {
            b(size.getWidth(), size.getHeight(), true);
        }
        this.f715l = null;
    }
}
