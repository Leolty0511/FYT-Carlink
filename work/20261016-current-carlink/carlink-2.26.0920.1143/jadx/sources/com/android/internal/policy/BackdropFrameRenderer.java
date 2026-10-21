package com.android.internal.policy;

import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.Choreographer;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import android.view.ThreadedRenderer;

/* JADX INFO: loaded from: classes2.dex */
public class BackdropFrameRenderer extends Thread implements Choreographer.FrameCallback {
    private Drawable mCaptionBackgroundDrawable;
    private Choreographer mChoreographer;
    private DecorView mDecorView;
    private RenderNode mFrameAndBackdropNode;
    private boolean mFullscreen;
    private int mLastCaptionHeight;
    private int mLastContentHeight;
    private int mLastContentWidth;
    private int mLastXOffset;
    private int mLastYOffset;
    private ColorDrawable mNavigationBarColor;
    private final Rect mNewTargetRect;
    private boolean mOldFullscreen;
    private final Rect mOldStableInsets;
    private final Rect mOldSystemInsets;
    private final Rect mOldTargetRect;
    private ThreadedRenderer mRenderer;
    private boolean mReportNextDraw;
    private final int mResizeMode;
    private Drawable mResizingBackgroundDrawable;
    private final Rect mStableInsets;
    private ColorDrawable mStatusBarColor;
    private RenderNode mSystemBarBackgroundNode;
    private final Rect mSystemInsets;
    private final Rect mTargetRect;
    private final Rect mTmpRect;
    private Drawable mUserCaptionBackgroundDrawable;

    public BackdropFrameRenderer(DecorView decorView, ThreadedRenderer threadedRenderer, Rect rect, Drawable drawable, Drawable drawable2, Drawable drawable3, int i2, int i3, boolean z2, Rect rect2, Rect rect3, int i4) {
        Rect rect4 = new Rect();
        this.mTargetRect = rect4;
        this.mOldTargetRect = new Rect();
        this.mNewTargetRect = new Rect();
        Rect rect5 = new Rect();
        this.mOldSystemInsets = rect5;
        Rect rect6 = new Rect();
        this.mOldStableInsets = rect6;
        Rect rect7 = new Rect();
        this.mSystemInsets = rect7;
        Rect rect8 = new Rect();
        this.mStableInsets = rect8;
        this.mTmpRect = new Rect();
        setName("ResizeFrame");
        this.mRenderer = threadedRenderer;
        onResourcesLoaded(decorView, drawable, drawable2, drawable3, i2, i3);
        RenderNode renderNodeCreate = RenderNode.create("FrameAndBackdropNode", null);
        this.mFrameAndBackdropNode = renderNodeCreate;
        this.mRenderer.addRenderNode(renderNodeCreate, true);
        rect4.set(rect);
        this.mFullscreen = z2;
        this.mOldFullscreen = z2;
        rect7.set(rect2);
        rect8.set(rect3);
        rect5.set(rect2);
        rect6.set(rect3);
        this.mResizeMode = i4;
        start();
    }

    private void addSystemBarNodeIfNeeded() {
        if (this.mSystemBarBackgroundNode != null) {
            return;
        }
        RenderNode renderNodeCreate = RenderNode.create("SystemBarBackgroundNode", null);
        this.mSystemBarBackgroundNode = renderNodeCreate;
        this.mRenderer.addRenderNode(renderNodeCreate, false);
    }

    private void doFrameUncheckedLocked() {
        this.mNewTargetRect.set(this.mTargetRect);
        if (this.mNewTargetRect.equals(this.mOldTargetRect) && this.mOldFullscreen == this.mFullscreen && this.mStableInsets.equals(this.mOldStableInsets) && this.mSystemInsets.equals(this.mOldSystemInsets) && !this.mReportNextDraw) {
            return;
        }
        this.mOldFullscreen = this.mFullscreen;
        this.mOldTargetRect.set(this.mNewTargetRect);
        this.mOldSystemInsets.set(this.mSystemInsets);
        this.mOldStableInsets.set(this.mStableInsets);
        redrawLocked(this.mNewTargetRect, this.mFullscreen, this.mSystemInsets, this.mStableInsets);
    }

    private void drawColorViews(int i2, int i3, int i4, int i5, boolean z2, Rect rect, Rect rect2) {
        RenderNode renderNode = this.mSystemBarBackgroundNode;
        if (renderNode == null) {
            return;
        }
        DisplayListCanvas displayListCanvasStart = renderNode.start(i4, i5);
        int i6 = i2 + i4;
        this.mSystemBarBackgroundNode.setLeftTopRightBottom(i2, i3, i6, i3 + i5);
        int colorViewTopInset = DecorView.getColorViewTopInset(this.mStableInsets.top, this.mSystemInsets.top);
        ColorDrawable colorDrawable = this.mStatusBarColor;
        if (colorDrawable != null) {
            colorDrawable.setBounds(0, 0, i6, colorViewTopInset);
            this.mStatusBarColor.draw(displayListCanvasStart);
        }
        if (this.mNavigationBarColor != null && z2) {
            DecorView.getNavigationBarRect(i4, i5, rect2, rect, this.mTmpRect);
            this.mNavigationBarColor.setBounds(this.mTmpRect);
            this.mNavigationBarColor.draw(displayListCanvasStart);
        }
        this.mSystemBarBackgroundNode.end(displayListCanvasStart);
        this.mRenderer.drawRenderNode(this.mSystemBarBackgroundNode);
    }

    private void pingRenderLocked(boolean z2) {
        Choreographer choreographer = this.mChoreographer;
        if (choreographer == null || z2) {
            doFrameUncheckedLocked();
        } else {
            choreographer.postFrameCallback(this);
        }
    }

    private void redrawLocked(Rect rect, boolean z2, Rect rect2, Rect rect3) {
        int captionHeight = this.mDecorView.getCaptionHeight();
        if (captionHeight != 0) {
            this.mLastCaptionHeight = captionHeight;
        }
        if ((this.mLastCaptionHeight == 0 && this.mDecorView.isShowingCaption()) || this.mLastContentWidth == 0 || this.mLastContentHeight == 0) {
            return;
        }
        int i2 = this.mLastXOffset + rect.left;
        int i3 = this.mLastYOffset + rect.top;
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i4 = i2 + iWidth;
        int i5 = i3 + iHeight;
        this.mFrameAndBackdropNode.setLeftTopRightBottom(i2, i3, i4, i5);
        DisplayListCanvas displayListCanvasStart = this.mFrameAndBackdropNode.start(iWidth, iHeight);
        Drawable drawable = this.mUserCaptionBackgroundDrawable;
        if (drawable == null) {
            drawable = this.mCaptionBackgroundDrawable;
        }
        if (drawable != null) {
            drawable.setBounds(0, 0, i4, this.mLastCaptionHeight + i3);
            drawable.draw(displayListCanvasStart);
        }
        Drawable drawable2 = this.mResizingBackgroundDrawable;
        if (drawable2 != null) {
            drawable2.setBounds(0, this.mLastCaptionHeight, i4, i5);
            this.mResizingBackgroundDrawable.draw(displayListCanvasStart);
        }
        this.mFrameAndBackdropNode.end(displayListCanvasStart);
        drawColorViews(i2, i3, iWidth, iHeight, z2, rect2, rect3);
        this.mRenderer.drawRenderNode(this.mFrameAndBackdropNode);
        reportDrawIfNeeded();
    }

    private void reportDrawIfNeeded() {
        if (this.mReportNextDraw) {
            if (this.mDecorView.isAttachedToWindow()) {
                this.mDecorView.getViewRootImpl().reportDrawFinish();
            }
            this.mReportNextDraw = false;
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j2) {
        synchronized (this) {
            if (this.mRenderer != null) {
                doFrameUncheckedLocked();
            } else {
                reportDrawIfNeeded();
                Looper.myLooper().quit();
            }
        }
    }

    public void onConfigurationChange() {
        synchronized (this) {
            if (this.mRenderer != null) {
                this.mOldTargetRect.set(0, 0, 0, 0);
                pingRenderLocked(false);
            }
        }
    }

    public boolean onContentDrawn(int i2, int i3, int i4, int i5) {
        boolean z2;
        synchronized (this) {
            z2 = true;
            boolean z3 = this.mLastContentWidth == 0;
            this.mLastContentWidth = i4;
            int i6 = this.mLastCaptionHeight;
            int i7 = i5 - i6;
            this.mLastContentHeight = i7;
            this.mLastXOffset = i2;
            this.mLastYOffset = i3;
            this.mRenderer.setContentDrawBounds(i2, i3, i4 + i2, i6 + i3 + i7);
            if (!z3 || (this.mLastCaptionHeight == 0 && this.mDecorView.isShowingCaption())) {
                z2 = false;
            }
        }
        return z2;
    }

    public void onRequestDraw(boolean z2) {
        synchronized (this) {
            this.mReportNextDraw = z2;
            this.mOldTargetRect.set(0, 0, 0, 0);
            pingRenderLocked(true);
        }
    }

    public void onResourcesLoaded(DecorView decorView, Drawable drawable, Drawable drawable2, Drawable drawable3, int i2, int i3) {
        this.mDecorView = decorView;
        this.mResizingBackgroundDrawable = (drawable == null || drawable.getConstantState() == null) ? null : drawable.getConstantState().newDrawable();
        this.mCaptionBackgroundDrawable = (drawable2 == null || drawable2.getConstantState() == null) ? null : drawable2.getConstantState().newDrawable();
        this.mUserCaptionBackgroundDrawable = (drawable3 == null || drawable3.getConstantState() == null) ? null : drawable3.getConstantState().newDrawable();
        if (this.mCaptionBackgroundDrawable == null) {
            this.mCaptionBackgroundDrawable = this.mResizingBackgroundDrawable;
        }
        if (i2 != 0) {
            this.mStatusBarColor = new ColorDrawable(i2);
            addSystemBarNodeIfNeeded();
        } else {
            this.mStatusBarColor = null;
        }
        if (i3 == 0) {
            this.mNavigationBarColor = null;
        } else {
            this.mNavigationBarColor = new ColorDrawable(i3);
            addSystemBarNodeIfNeeded();
        }
    }

    public void releaseRenderer() {
        synchronized (this) {
            ThreadedRenderer threadedRenderer = this.mRenderer;
            if (threadedRenderer != null) {
                threadedRenderer.setContentDrawBounds(0, 0, 0, 0);
                this.mRenderer.removeRenderNode(this.mFrameAndBackdropNode);
                RenderNode renderNode = this.mSystemBarBackgroundNode;
                if (renderNode != null) {
                    this.mRenderer.removeRenderNode(renderNode);
                }
                this.mRenderer = null;
                pingRenderLocked(false);
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            Looper.prepare();
            synchronized (this) {
                this.mChoreographer = Choreographer.getInstance();
            }
            Looper.loop();
            releaseRenderer();
            synchronized (this) {
                this.mChoreographer = null;
                Choreographer.releaseInstance();
            }
        } catch (Throwable th) {
            releaseRenderer();
            throw th;
        }
    }

    public void setTargetRect(Rect rect, boolean z2, Rect rect2, Rect rect3) {
        synchronized (this) {
            this.mFullscreen = z2;
            this.mTargetRect.set(rect);
            this.mSystemInsets.set(rect2);
            this.mStableInsets.set(rect3);
            pingRenderLocked(false);
        }
    }

    public void setUserCaptionBackgroundDrawable(Drawable drawable) {
        this.mUserCaptionBackgroundDrawable = drawable;
    }
}
