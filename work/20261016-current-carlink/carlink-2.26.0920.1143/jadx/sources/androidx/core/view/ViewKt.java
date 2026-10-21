package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.hardware.Camera;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewKt {
    public static final void doOnAttach(final View view, final z.l lVar) {
        t.b.h(view, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        if (ViewCompat.isAttachedToWindow(view)) {
            lVar.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.ViewKt.doOnAttach.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    t.b.h(view2, "view");
                    view.removeOnAttachStateChangeListener(this);
                    lVar.invoke(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    t.b.h(view2, "view");
                }
            });
        }
    }

    public static final void doOnDetach(final View view, final z.l lVar) {
        t.b.h(view, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        if (ViewCompat.isAttachedToWindow(view)) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.ViewKt.doOnDetach.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    t.b.h(view2, "view");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    t.b.h(view2, "view");
                    view.removeOnAttachStateChangeListener(this);
                    lVar.invoke(view2);
                }
            });
        } else {
            lVar.invoke(view);
        }
    }

    public static final void doOnLayout(View view, final z.l lVar) {
        t.b.h(view, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        if (!ViewCompat.isLaidOut(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnLayout$$inlined$doOnNextLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    t.b.h(view2, "view");
                    view2.removeOnLayoutChangeListener(this);
                    lVar.invoke(view2);
                }
            });
        } else {
            lVar.invoke(view);
        }
    }

    public static final void doOnNextLayout(View view, final z.l lVar) {
        t.b.h(view, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt.doOnNextLayout.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                t.b.h(view2, "view");
                view2.removeOnLayoutChangeListener(this);
                lVar.invoke(view2);
            }
        });
    }

    public static final OneShotPreDrawListener doOnPreDraw(final View view, final z.l lVar) {
        t.b.h(view, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        OneShotPreDrawListener oneShotPreDrawListenerAdd = OneShotPreDrawListener.add(view, new Runnable() { // from class: androidx.core.view.ViewKt.doOnPreDraw.1
            @Override // java.lang.Runnable
            public final void run() {
                lVar.invoke(view);
            }
        });
        t.b.g(oneShotPreDrawListenerAdd, "View.doOnPreDraw(\n    cr…dd(this) { action(this) }");
        return oneShotPreDrawListenerAdd;
    }

    public static final Bitmap drawToBitmap(View view, Bitmap.Config config) {
        t.b.h(view, "<this>");
        t.b.h(config, "config");
        if (!ViewCompat.isLaidOut(view)) {
            throw new IllegalStateException("View needs to be laid out before calling drawToBitmap()");
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
        t.b.g(bitmapCreateBitmap, "createBitmap(width, height, config)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.translate(-view.getScrollX(), -view.getScrollY());
        view.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static /* synthetic */ Bitmap drawToBitmap$default(View view, Bitmap.Config config, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return drawToBitmap(view, config);
    }

    public static final e0.g getAllViews(View view) {
        t.b.h(view, "<this>");
        return new e0.j(new ViewKt$allViews$1(view, null), 0);
    }

    public static final e0.g getAncestors(View view) {
        t.b.h(view, "<this>");
        return kotlin.sequences.a.G(view.getParent(), ViewKt$ancestors$1.INSTANCE);
    }

    public static final int getMarginBottom(View view) {
        t.b.h(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.bottomMargin;
        }
        return 0;
    }

    public static final int getMarginEnd(View view) {
        t.b.h(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final int getMarginLeft(View view) {
        t.b.h(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.leftMargin;
        }
        return 0;
    }

    public static final int getMarginRight(View view) {
        t.b.h(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.rightMargin;
        }
        return 0;
    }

    public static final int getMarginStart(View view) {
        t.b.h(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final int getMarginTop(View view) {
        t.b.h(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.topMargin;
        }
        return 0;
    }

    public static final boolean isGone(View view) {
        t.b.h(view, "<this>");
        return view.getVisibility() == 8;
    }

    public static final boolean isInvisible(View view) {
        t.b.h(view, "<this>");
        return view.getVisibility() == 4;
    }

    public static final boolean isVisible(View view) {
        t.b.h(view, "<this>");
        return view.getVisibility() == 0;
    }

    public static final Runnable postDelayed(View view, long j2, final z.a aVar) {
        t.b.h(view, "<this>");
        t.b.h(aVar, Camera.Parameters.SCENE_MODE_ACTION);
        Runnable runnable = new Runnable() { // from class: androidx.core.view.ViewKt$postDelayed$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                aVar.invoke();
            }
        };
        view.postDelayed(runnable, j2);
        return runnable;
    }

    @RequiresApi(16)
    public static final Runnable postOnAnimationDelayed(View view, long j2, z.a aVar) {
        t.b.h(view, "<this>");
        t.b.h(aVar, Camera.Parameters.SCENE_MODE_ACTION);
        k kVar = new k(aVar, 1);
        Api16Impl.postOnAnimationDelayed(view, kVar, j2);
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: postOnAnimationDelayed$lambda-1, reason: not valid java name */
    public static final void m48postOnAnimationDelayed$lambda1(z.a aVar) {
        t.b.h(aVar, "$action");
        aVar.invoke();
    }

    public static final void setGone(View view, boolean z2) {
        t.b.h(view, "<this>");
        view.setVisibility(z2 ? 8 : 0);
    }

    public static final void setInvisible(View view, boolean z2) {
        t.b.h(view, "<this>");
        view.setVisibility(z2 ? 4 : 0);
    }

    public static final void setPadding(View view, @Px int i2) {
        t.b.h(view, "<this>");
        view.setPadding(i2, i2, i2, i2);
    }

    public static final void setVisible(View view, boolean z2) {
        t.b.h(view, "<this>");
        view.setVisibility(z2 ? 0 : 8);
    }

    public static final void updateLayoutParams(View view, z.l lVar) {
        t.b.h(view, "<this>");
        t.b.h(lVar, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        lVar.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }

    public static final /* synthetic */ <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(View view, z.l lVar) {
        t.b.h(view, "<this>");
        t.b.h(lVar, "block");
        view.getLayoutParams();
        t.b.w();
        throw null;
    }

    public static final void updatePadding(View view, @Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        t.b.h(view, "<this>");
        view.setPadding(i2, i3, i4, i5);
    }

    public static /* synthetic */ void updatePadding$default(View view, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i2 = view.getPaddingLeft();
        }
        if ((i6 & 2) != 0) {
            i3 = view.getPaddingTop();
        }
        if ((i6 & 4) != 0) {
            i4 = view.getPaddingRight();
        }
        if ((i6 & 8) != 0) {
            i5 = view.getPaddingBottom();
        }
        t.b.h(view, "<this>");
        view.setPadding(i2, i3, i4, i5);
    }

    @RequiresApi(17)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void updatePaddingRelative(View view, @Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        t.b.h(view, "<this>");
        view.setPaddingRelative(i2, i3, i4, i5);
    }

    public static /* synthetic */ void updatePaddingRelative$default(View view, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i2 = view.getPaddingStart();
        }
        if ((i6 & 2) != 0) {
            i3 = view.getPaddingTop();
        }
        if ((i6 & 4) != 0) {
            i4 = view.getPaddingEnd();
        }
        if ((i6 & 8) != 0) {
            i5 = view.getPaddingBottom();
        }
        t.b.h(view, "<this>");
        view.setPaddingRelative(i2, i3, i4, i5);
    }
}
