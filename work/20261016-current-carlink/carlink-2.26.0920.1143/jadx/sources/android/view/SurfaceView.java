package android.view;

import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.util.Log;
import com.android.internal.view.SurfaceCallbackHelper;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class SurfaceView extends View implements ViewRootImpl.WindowStoppedCallback {
    private static boolean DEBUG = false;
    private static final String DEBUG_SURFACEVIEW = "debug.surfaceview";
    private static final String TAG = "SurfaceView";
    private boolean mAttachedToWindow;
    final ArrayList<SurfaceHolder.Callback> mCallbacks;
    final Configuration mConfiguration;
    SurfaceControl mDeferredDestroySurfaceControl;
    boolean mDrawFinished;
    private final ViewTreeObserver.OnPreDrawListener mDrawListener;
    boolean mDrawingStopped;
    int mFormat;
    private boolean mGlobalListenersAdded;
    boolean mHaveFrame;
    boolean mIsCreating;
    long mLastLockTime;
    int mLastSurfaceHeight;
    int mLastSurfaceWidth;
    boolean mLastWindowVisibility;
    final int[] mLocation;
    private int mPendingReportDraws;
    private Rect mRTLastReportedPosition;
    int mRequestedFormat;
    int mRequestedHeight;
    boolean mRequestedVisible;
    int mRequestedWidth;
    private volatile boolean mRtHandlingPositionUpdates;
    final Rect mScreenRect;
    private final ViewTreeObserver.OnScrollChangedListener mScrollChangedListener;
    int mSubLayer;
    final Surface mSurface;
    SurfaceControl mSurfaceControl;
    boolean mSurfaceCreated;
    private int mSurfaceFlags;
    final Rect mSurfaceFrame;
    int mSurfaceHeight;
    private final SurfaceHolder mSurfaceHolder;
    final ReentrantLock mSurfaceLock;
    SurfaceSession mSurfaceSession;
    int mSurfaceWidth;
    final Rect mTmpRect;
    private CompatibilityInfo.Translator mTranslator;
    boolean mViewVisibility;
    boolean mVisible;
    int mWindowSpaceLeft;
    int mWindowSpaceTop;
    boolean mWindowStopped;
    boolean mWindowVisibility;

    /* JADX INFO: renamed from: android.view.SurfaceView$3, reason: invalid class name */
    public class AnonymousClass3 implements SurfaceHolder {
        private static final String LOG_TAG = "SurfaceHolder";

        public AnonymousClass3() {
        }

        private Canvas internalLockCanvas(Rect rect, boolean z2) {
            Canvas canvasLockHardwareCanvas;
            SurfaceView.this.mSurfaceLock.lock();
            if (SurfaceView.DEBUG) {
                Log.i(SurfaceView.TAG, System.identityHashCode(this) + " Locking canvas... stopped=" + SurfaceView.this.mDrawingStopped + ", surfaceControl=" + SurfaceView.this.mSurfaceControl);
            }
            SurfaceView surfaceView = SurfaceView.this;
            if (surfaceView.mDrawingStopped || surfaceView.mSurfaceControl == null) {
                canvasLockHardwareCanvas = null;
            } else {
                try {
                    canvasLockHardwareCanvas = z2 ? surfaceView.mSurface.lockHardwareCanvas() : surfaceView.mSurface.lockCanvas(rect);
                } catch (Exception e2) {
                    Log.e(LOG_TAG, "Exception locking surface", e2);
                    canvasLockHardwareCanvas = null;
                }
            }
            if (SurfaceView.DEBUG) {
                Log.i(SurfaceView.TAG, System.identityHashCode(this) + " Returned canvas: " + canvasLockHardwareCanvas);
            }
            if (canvasLockHardwareCanvas != null) {
                SurfaceView.this.mLastLockTime = SystemClock.uptimeMillis();
                return canvasLockHardwareCanvas;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j2 = SurfaceView.this.mLastLockTime + 100;
            if (j2 > jUptimeMillis) {
                try {
                    Thread.sleep(j2 - jUptimeMillis);
                } catch (InterruptedException unused) {
                }
                jUptimeMillis = SystemClock.uptimeMillis();
            }
            SurfaceView surfaceView2 = SurfaceView.this;
            surfaceView2.mLastLockTime = jUptimeMillis;
            surfaceView2.mSurfaceLock.unlock();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setKeepScreenOn$0(boolean z2) {
            SurfaceView.this.setKeepScreenOn(z2);
        }

        @Override // android.view.SurfaceHolder
        public void addCallback(SurfaceHolder.Callback callback) {
            synchronized (SurfaceView.this.mCallbacks) {
                if (!SurfaceView.this.mCallbacks.contains(callback)) {
                    SurfaceView.this.mCallbacks.add(callback);
                }
            }
        }

        @Override // android.view.SurfaceHolder
        public Surface getSurface() {
            return SurfaceView.this.mSurface;
        }

        @Override // android.view.SurfaceHolder
        public Rect getSurfaceFrame() {
            return SurfaceView.this.mSurfaceFrame;
        }

        @Override // android.view.SurfaceHolder
        public boolean isCreating() {
            return SurfaceView.this.mIsCreating;
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockCanvas() {
            return internalLockCanvas(null, false);
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockHardwareCanvas() {
            return internalLockCanvas(null, true);
        }

        @Override // android.view.SurfaceHolder
        public void removeCallback(SurfaceHolder.Callback callback) {
            synchronized (SurfaceView.this.mCallbacks) {
                SurfaceView.this.mCallbacks.remove(callback);
            }
        }

        @Override // android.view.SurfaceHolder
        public void setFixedSize(int i2, int i3) {
            SurfaceView surfaceView = SurfaceView.this;
            if (surfaceView.mRequestedWidth == i2 && surfaceView.mRequestedHeight == i3) {
                return;
            }
            surfaceView.mRequestedWidth = i2;
            surfaceView.mRequestedHeight = i3;
            surfaceView.requestLayout();
        }

        @Override // android.view.SurfaceHolder
        public void setFormat(int i2) throws Throwable {
            if (i2 == -1) {
                i2 = 4;
            }
            SurfaceView surfaceView = SurfaceView.this;
            surfaceView.mRequestedFormat = i2;
            if (surfaceView.mSurfaceControl != null) {
                surfaceView.updateSurface();
            }
        }

        @Override // android.view.SurfaceHolder
        public void setKeepScreenOn(final boolean z2) {
            SurfaceView.this.runOnUiThread(new Runnable() { // from class: android.view.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f245b.lambda$setKeepScreenOn$0(z2);
                }
            });
        }

        @Override // android.view.SurfaceHolder
        public void setSizeFromLayout() {
            SurfaceView surfaceView = SurfaceView.this;
            if (surfaceView.mRequestedWidth == -1 && surfaceView.mRequestedHeight == -1) {
                return;
            }
            surfaceView.mRequestedHeight = -1;
            surfaceView.mRequestedWidth = -1;
            surfaceView.requestLayout();
        }

        @Override // android.view.SurfaceHolder
        @Deprecated
        public void setType(int i2) {
        }

        @Override // android.view.SurfaceHolder
        public void unlockCanvasAndPost(Canvas canvas) {
            SurfaceView.this.mSurface.unlockCanvasAndPost(canvas);
            SurfaceView.this.mSurfaceLock.unlock();
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockCanvas(Rect rect) {
            return internalLockCanvas(rect, false);
        }
    }

    public SurfaceView(Context context) {
        this(context, null);
    }

    private Rect getParentSurfaceInsets() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl == null) {
            return null;
        }
        return viewRootImpl.mWindowAttributes.surfaceInsets;
    }

    private SurfaceHolder.Callback[] getSurfaceCallbacks() {
        SurfaceHolder.Callback[] callbackArr;
        synchronized (this.mCallbacks) {
            callbackArr = new SurfaceHolder.Callback[this.mCallbacks.size()];
            this.mCallbacks.toArray(callbackArr);
        }
        return callbackArr;
    }

    private boolean isAboveParent() {
        return this.mSubLayer >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDrawFinished() {
        if (DEBUG) {
            Log.i(TAG, System.identityHashCode(this) + " finishedDrawing");
        }
        SurfaceControl surfaceControl = this.mDeferredDestroySurfaceControl;
        if (surfaceControl != null) {
            surfaceControl.destroy();
            this.mDeferredDestroySurfaceControl = null;
        }
        runOnUiThread(new e(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: performDrawFinished, reason: merged with bridge method [inline-methods] */
    public void lambda$onDrawFinished$0() {
        if (this.mPendingReportDraws <= 0) {
            Log.e(TAG, System.identityHashCode(this) + "finished drawing but no pending report draw (extra call to draw completion runnable?)");
            return;
        }
        this.mDrawFinished = true;
        if (this.mAttachedToWindow) {
            notifyDrawFinished();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnUiThread(Runnable runnable) {
        Handler handler = getHandler();
        if (handler == null || handler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    private void setParentSpaceRectangle(Rect rect, long j2) {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        SurfaceControl.openTransaction();
        if (j2 > 0) {
            try {
                this.mSurfaceControl.deferTransactionUntil(viewRootImpl.mSurface, j2);
            } finally {
                SurfaceControl.closeTransaction();
            }
        }
        this.mSurfaceControl.setPosition(rect.left, rect.top);
        this.mSurfaceControl.setMatrix(rect.width() / this.mSurfaceWidth, 0.0f, 0.0f, rect.height() / this.mSurfaceHeight);
    }

    private void updateOpaqueFlag() {
        if (PixelFormat.formatHasAlpha(this.mRequestedFormat)) {
            this.mSurfaceFlags &= -1025;
        } else {
            this.mSurfaceFlags |= 1024;
        }
    }

    private void updateRequestedVisibility() {
        this.mRequestedVisible = this.mViewVisibility && this.mWindowVisibility && !this.mWindowStopped;
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.mDrawFinished && !isAboveParent() && (this.mPrivateFlags & 128) == 128) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mDrawFinished && !isAboveParent() && (this.mPrivateFlags & 128) == 0) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        super.draw(canvas);
    }

    @Override // android.view.View
    public boolean gatherTransparentRegion(Region region) {
        boolean zGatherTransparentRegion;
        if (isAboveParent() || !this.mDrawFinished) {
            return super.gatherTransparentRegion(region);
        }
        if ((this.mPrivateFlags & 128) == 0) {
            zGatherTransparentRegion = super.gatherTransparentRegion(region);
        } else {
            if (region != null) {
                int width = getWidth();
                int height = getHeight();
                if (width > 0 && height > 0) {
                    getLocationInWindow(this.mLocation);
                    int[] iArr = this.mLocation;
                    int i2 = iArr[0];
                    int i3 = iArr[1];
                    region.op(i2, i3, i2 + width, i3 + height, Region.Op.UNION);
                }
            }
            zGatherTransparentRegion = true;
        }
        if (PixelFormat.formatHasAlpha(this.mRequestedFormat)) {
            return false;
        }
        return zGatherTransparentRegion;
    }

    public SurfaceHolder getHolder() {
        return this.mSurfaceHolder;
    }

    public boolean isFixedSize() {
        return (this.mRequestedWidth == -1 && this.mRequestedHeight == -1) ? false : true;
    }

    public void notifyDrawFinished() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.pendingDrawFinished();
        }
        this.mPendingReportDraws--;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewRootImpl().addWindowStoppedCallback(this);
        this.mWindowStopped = false;
        this.mViewVisibility = getVisibility() == 0;
        updateRequestedVisibility();
        this.mAttachedToWindow = true;
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.requestTransparentRegion(this);
        }
        if (this.mGlobalListenersAdded) {
            return;
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.addOnScrollChangedListener(this.mScrollChangedListener);
        viewTreeObserver.addOnPreDrawListener(this.mDrawListener);
        this.mGlobalListenersAdded = true;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() throws Throwable {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.removeWindowStoppedCallback(this);
        }
        this.mAttachedToWindow = false;
        if (this.mGlobalListenersAdded) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            viewTreeObserver.removeOnScrollChangedListener(this.mScrollChangedListener);
            viewTreeObserver.removeOnPreDrawListener(this.mDrawListener);
            this.mGlobalListenersAdded = false;
        }
        while (this.mPendingReportDraws > 0) {
            notifyDrawFinished();
        }
        this.mRequestedVisible = false;
        updateSurface();
        SurfaceControl surfaceControl = this.mSurfaceControl;
        if (surfaceControl != null) {
            surfaceControl.destroy();
        }
        this.mSurfaceControl = null;
        this.mHaveFrame = false;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4 = this.mRequestedWidth;
        int iResolveSizeAndState = i4 >= 0 ? View.resolveSizeAndState(i4, i2, 0) : View.getDefaultSize(0, i2);
        int i5 = this.mRequestedHeight;
        setMeasuredDimension(iResolveSizeAndState, i5 >= 0 ? View.resolveSizeAndState(i5, i3, 0) : View.getDefaultSize(0, i3));
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) throws Throwable {
        super.onWindowVisibilityChanged(i2);
        this.mWindowVisibility = i2 == 0;
        updateRequestedVisibility();
        updateSurface();
    }

    @Override // android.view.View
    public boolean setFrame(int i2, int i3, int i4, int i5) throws Throwable {
        boolean frame = super.setFrame(i2, i3, i4, i5);
        updateSurface();
        return frame;
    }

    public void setSecure(boolean z2) {
        if (z2) {
            this.mSurfaceFlags |= 128;
        } else {
            this.mSurfaceFlags &= -129;
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) throws Throwable {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        this.mViewVisibility = z2;
        boolean z3 = this.mWindowVisibility && z2 && !this.mWindowStopped;
        if (z3 != this.mRequestedVisible) {
            requestLayout();
        }
        this.mRequestedVisible = z3;
        updateSurface();
    }

    @Deprecated
    public void setWindowType(int i2) {
        if (getContext().getApplicationInfo().targetSdkVersion >= 26) {
            throw new UnsupportedOperationException("SurfaceView#setWindowType() has never been a public API.");
        }
        if (i2 != 1000) {
            Log.e(TAG, android.accessibilityservice.c.d("SurfaceView#setWindowType(int) is deprecated and now does nothing. type=", i2), new Throwable());
        } else {
            Log.e(TAG, "If you are calling SurfaceView#setWindowType(TYPE_APPLICATION_PANEL) just to make the SurfaceView to be placed on top of its window, you must call setZOrderOnTop(true) instead.", new Throwable());
            setZOrderOnTop(true);
        }
    }

    public void setZOrderMediaOverlay(boolean z2) {
        this.mSubLayer = z2 ? -1 : -2;
    }

    public void setZOrderOnTop(boolean z2) {
        if (z2) {
            this.mSubLayer = 1;
        } else {
            this.mSubLayer = -2;
        }
    }

    public final void surfacePositionLost_uiRtSync(long j2) {
        if (DEBUG) {
            Log.d(TAG, String.format("%d windowPositionLost, frameNr = %d", Integer.valueOf(System.identityHashCode(this)), Long.valueOf(j2)));
        }
        this.mRTLastReportedPosition.setEmpty();
        if (this.mSurfaceControl != null && this.mRtHandlingPositionUpdates) {
            this.mRtHandlingPositionUpdates = false;
            if (this.mScreenRect.isEmpty() || this.mScreenRect.equals(this.mRTLastReportedPosition)) {
                return;
            }
            try {
                if (DEBUG) {
                    Log.d(TAG, String.format("%d updateSurfacePosition, postion = [%d, %d, %d, %d]", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(this.mScreenRect.left), Integer.valueOf(this.mScreenRect.top), Integer.valueOf(this.mScreenRect.right), Integer.valueOf(this.mScreenRect.bottom)));
                }
                setParentSpaceRectangle(this.mScreenRect, j2);
            } catch (Exception e2) {
                Log.e(TAG, "Exception configuring surface", e2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:172:0x0397  */
    /* JADX WARN: Code duplicated, block: B:174:0x039a A[Catch: all -> 0x033f, TryCatch #8 {all -> 0x033f, blocks: (B:150:0x0339, B:156:0x0345, B:161:0x0350, B:163:0x035b, B:165:0x035f, B:166:0x0377, B:168:0x037f, B:169:0x0389, B:171:0x0391, B:174:0x039a, B:176:0x03a3, B:178:0x03b1, B:180:0x03ba, B:182:0x03c2, B:186:0x03ca, B:188:0x03d3, B:190:0x03ed, B:191:0x03f1, B:193:0x03f5, B:201:0x040d, B:203:0x0411), top: B:275:0x0339 }] */
    /* JADX WARN: Code duplicated, block: B:222:0x049a  */
    /* JADX WARN: Code duplicated, block: B:230:0x04b0 A[Catch: Exception -> 0x04e6, TryCatch #5 {Exception -> 0x04e6, blocks: (B:224:0x049d, B:226:0x04a3, B:228:0x04a7, B:230:0x04b0, B:231:0x04b8, B:233:0x04bf, B:235:0x04c3, B:237:0x04cc, B:238:0x04d3, B:247:0x04e0, B:248:0x04e5), top: B:271:0x0272 }] */
    /* JADX WARN: Code duplicated, block: B:237:0x04cc A[Catch: Exception -> 0x04e6, TryCatch #5 {Exception -> 0x04e6, blocks: (B:224:0x049d, B:226:0x04a3, B:228:0x04a7, B:230:0x04b0, B:231:0x04b8, B:233:0x04bf, B:235:0x04c3, B:237:0x04cc, B:238:0x04d3, B:247:0x04e0, B:248:0x04e5), top: B:271:0x0272 }] */
    /* JADX WARN: Code duplicated, block: B:259:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:285:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:259:0x04fa, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void updateSurface() throws Throwable {
        ViewRootImpl viewRootImpl;
        Surface surface;
        String str;
        Object obj;
        String str2;
        String str3;
        Object obj2;
        SurfaceHolder.Callback[] surfaceCallbacks;
        String str4;
        int i2;
        SurfaceHolder.Callback[] surfaceCallbacks2;
        if (!this.mHaveFrame || (viewRootImpl = getViewRootImpl()) == null || (surface = viewRootImpl.mSurface) == null || !surface.isValid()) {
            return;
        }
        CompatibilityInfo.Translator translator = viewRootImpl.mTranslator;
        this.mTranslator = translator;
        if (translator != null) {
            this.mSurface.setCompatibilityTranslator(translator);
        }
        int width = this.mRequestedWidth;
        if (width <= 0) {
            width = getWidth();
        }
        int i3 = width;
        int height = this.mRequestedHeight;
        if (height <= 0) {
            height = getHeight();
        }
        int i4 = height;
        boolean z2 = this.mFormat != this.mRequestedFormat;
        boolean z3 = this.mVisible;
        boolean z4 = this.mRequestedVisible;
        boolean z5 = z3 != z4;
        boolean z6 = (this.mSurfaceControl == null || z2 || z5) && z4;
        boolean z7 = (this.mSurfaceWidth == i3 && this.mSurfaceHeight == i4) ? false : true;
        boolean z8 = this.mWindowVisibility != this.mLastWindowVisibility;
        if (!z6 && !z2 && !z7 && !z5 && !z8) {
            getLocationInSurface(this.mLocation);
            int i5 = this.mWindowSpaceLeft;
            int[] iArr = this.mLocation;
            boolean z9 = (i5 == iArr[0] && this.mWindowSpaceTop == iArr[1]) ? false : true;
            boolean z10 = (getWidth() == this.mScreenRect.width() && getHeight() == this.mScreenRect.height()) ? false : true;
            if (z9 || z10) {
                int[] iArr2 = this.mLocation;
                this.mWindowSpaceLeft = iArr2[0];
                this.mWindowSpaceTop = iArr2[1];
                iArr2[0] = getWidth();
                this.mLocation[1] = getHeight();
                Rect rect = this.mScreenRect;
                int i6 = this.mWindowSpaceLeft;
                int i7 = this.mWindowSpaceTop;
                int[] iArr3 = this.mLocation;
                rect.set(i6, i7, iArr3[0] + i6, iArr3[1] + i7);
                CompatibilityInfo.Translator translator2 = this.mTranslator;
                if (translator2 != null) {
                    translator2.translateRectInAppWindowToScreen(this.mScreenRect);
                }
                if (this.mSurfaceControl == null) {
                    return;
                }
                if (isHardwareAccelerated() && this.mRtHandlingPositionUpdates) {
                    return;
                }
                try {
                    if (DEBUG) {
                        Log.d(TAG, String.format("%d updateSurfacePosition UI, postion = [%d, %d, %d, %d]", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(this.mScreenRect.left), Integer.valueOf(this.mScreenRect.top), Integer.valueOf(this.mScreenRect.right), Integer.valueOf(this.mScreenRect.bottom)));
                    }
                    setParentSpaceRectangle(this.mScreenRect, -1L);
                    return;
                } catch (Exception e2) {
                    Log.e(TAG, "Exception configuring surface", e2);
                    return;
                }
            }
            return;
        }
        getLocationInWindow(this.mLocation);
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append(System.identityHashCode(this));
            sb.append(" Changes: creating=");
            sb.append(z6);
            sb.append(" format=");
            sb.append(z2);
            sb.append(" size=");
            sb.append(z7);
            sb.append(" visible=");
            sb.append(z5);
            sb.append(" left=");
            sb.append(this.mWindowSpaceLeft != this.mLocation[0]);
            sb.append(" top=");
            sb.append(this.mWindowSpaceTop != this.mLocation[1]);
            Log.i(TAG, sb.toString());
        }
        try {
            boolean z11 = this.mRequestedVisible;
            this.mVisible = z11;
            int[] iArr4 = this.mLocation;
            int i8 = iArr4[0];
            this.mWindowSpaceLeft = i8;
            int i9 = iArr4[1];
            this.mWindowSpaceTop = i9;
            this.mSurfaceWidth = i3;
            this.mSurfaceHeight = i4 == true ? 1 : 0;
            this.mFormat = this.mRequestedFormat;
            this.mLastWindowVisibility = this.mWindowVisibility;
            Rect rect2 = this.mScreenRect;
            rect2.left = i8;
            rect2.top = i9;
            rect2.right = i8 + getWidth();
            this.mScreenRect.bottom = this.mWindowSpaceTop + getHeight();
            CompatibilityInfo.Translator translator3 = this.mTranslator;
            if (translator3 != null) {
                translator3.translateRectInAppWindowToScreen(this.mScreenRect);
            }
            Rect parentSurfaceInsets = getParentSurfaceInsets();
            Rect rect3 = this.mScreenRect;
            rect3.offset(parentSurfaceInsets.left, parentSurfaceInsets.top);
            try {
                if (z6) {
                    this.mSurfaceSession = new SurfaceSession(viewRootImpl.mSurface);
                    this.mDeferredDestroySurfaceControl = this.mSurfaceControl;
                    updateOpaqueFlag();
                    SurfaceSession surfaceSession = this.mSurfaceSession;
                    this.mSurfaceControl = new SurfaceControlWithBackground(surfaceSession, "SurfaceView - " + viewRootImpl.getTitle().toString(), this.mSurfaceWidth, this.mSurfaceHeight, this.mFormat, this.mSurfaceFlags);
                    obj2 = surfaceSession;
                } else if (this.mSurfaceControl == null) {
                    obj2 = rect3;
                    return;
                }
                obj2 = rect3;
                this.mSurfaceLock.lock();
                try {
                    try {
                        this.mDrawingStopped = !z11;
                        if (DEBUG) {
                            Log.i(TAG, System.identityHashCode(this) + " Cur surface: " + this.mSurface);
                        }
                        SurfaceControl.openTransaction();
                        try {
                            this.mSurfaceControl.setLayer(this.mSubLayer);
                            if (this.mViewVisibility) {
                                this.mSurfaceControl.show();
                            } else {
                                this.mSurfaceControl.hide();
                            }
                            if (z7 != 0 || z6 || !this.mRtHandlingPositionUpdates) {
                                SurfaceControl surfaceControl = this.mSurfaceControl;
                                Rect rect4 = this.mScreenRect;
                                surfaceControl.setPosition(rect4.left, rect4.top);
                                this.mSurfaceControl.setMatrix(this.mScreenRect.width() / this.mSurfaceWidth, 0.0f, 0.0f, this.mScreenRect.height() / this.mSurfaceHeight);
                            }
                            if (z7 != 0) {
                                this.mSurfaceControl.setSize(this.mSurfaceWidth, this.mSurfaceHeight);
                            }
                            SurfaceControl.closeTransaction();
                            boolean z12 = (z7 == 0 && z6 == 0) ? false : true;
                            Rect rect5 = this.mSurfaceFrame;
                            rect5.left = 0;
                            rect5.top = 0;
                            CompatibilityInfo.Translator translator4 = this.mTranslator;
                            if (translator4 == null) {
                                rect5.right = this.mSurfaceWidth;
                                rect5.bottom = this.mSurfaceHeight;
                            } else {
                                float f2 = translator4.applicationInvertedScale;
                                rect5.right = (int) ((this.mSurfaceWidth * f2) + 0.5f);
                                rect5.bottom = (int) ((this.mSurfaceHeight * f2) + 0.5f);
                            }
                            int i10 = rect5.right;
                            int i11 = rect5.bottom;
                            boolean z13 = (this.mLastSurfaceWidth == i10 && this.mLastSurfaceHeight == i11) ? false : true;
                            this.mLastSurfaceWidth = i10;
                            this.mLastSurfaceHeight = i11;
                            this.mSurfaceLock.unlock();
                            if (z11) {
                                try {
                                    boolean z14 = this.mDrawFinished ? false : true;
                                    boolean z15 = z14 | z12;
                                    if (this.mSurfaceCreated || (z6 == 0 && (z11 || !z5))) {
                                        surfaceCallbacks = null;
                                    } else {
                                        this.mSurfaceCreated = false;
                                        if (this.mSurface.isValid()) {
                                            if (DEBUG) {
                                                Log.i(i4, System.identityHashCode(this) + " visibleChanged -- surfaceDestroyed");
                                            }
                                            surfaceCallbacks2 = getSurfaceCallbacks();
                                            for (SurfaceHolder.Callback callback : surfaceCallbacks2) {
                                                callback.surfaceDestroyed(this.mSurfaceHolder);
                                            }
                                            surfaceCallbacks = surfaceCallbacks2;
                                            if (this.mSurface.isValid()) {
                                                this.mSurface.forceScopedDisconnect();
                                            }
                                        } else {
                                            surfaceCallbacks = null;
                                        }
                                    }
                                    if (z6 != 0) {
                                        surfaceCallbacks = surfaceCallbacks2;
                                        this.mSurface.copyFrom(this.mSurfaceControl);
                                    }
                                    if (z7 != 0 && getContext().getApplicationInfo().targetSdkVersion < 26) {
                                        this.mSurface.createFrom(this.mSurfaceControl);
                                    }
                                    if (z11 || !this.mSurface.isValid()) {
                                        str4 = r10;
                                    } else {
                                        if (!this.mSurfaceCreated && (z6 != 0 || z5 != 0)) {
                                            this.mSurfaceCreated = true;
                                            this.mIsCreating = true;
                                            if (DEBUG) {
                                                Log.i(i4, System.identityHashCode(this) + " visibleChanged -- surfaceCreated");
                                            }
                                            if (surfaceCallbacks == null) {
                                                surfaceCallbacks = getSurfaceCallbacks();
                                            }
                                            for (SurfaceHolder.Callback callback2 : surfaceCallbacks) {
                                                callback2.surfaceCreated(this.mSurfaceHolder);
                                            }
                                        }
                                        if (z6 != 0 || z2 || z7 || z5 != 0 || z13) {
                                            if (DEBUG) {
                                                StringBuilder sb2 = new StringBuilder();
                                                sb2.append(System.identityHashCode(this));
                                                sb2.append(" surfaceChanged -- format=");
                                                sb2.append(this.mFormat);
                                                sb2.append(" w=");
                                                sb2.append(i3);
                                                String str5 = r10;
                                                try {
                                                    sb2.append(str5);
                                                    int i12 = i4 == true ? 1 : 0;
                                                    sb2.append(i12 == true ? 1 : 0);
                                                    Log.i(i4, sb2.toString());
                                                    str4 = str5;
                                                    i2 = i12;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    this.mIsCreating = false;
                                                    if (this.mSurfaceControl != null && !this.mSurfaceCreated) {
                                                        this.mSurface.release();
                                                        if (!this.mWindowStopped) {
                                                            this.mSurfaceControl.destroy();
                                                            this.mSurfaceControl = null;
                                                        }
                                                    }
                                                    throw th;
                                                }
                                            } else {
                                                str4 = r10;
                                                i2 = i4;
                                            }
                                            if (surfaceCallbacks == null) {
                                                surfaceCallbacks = getSurfaceCallbacks();
                                            }
                                            for (SurfaceHolder.Callback callback3 : surfaceCallbacks) {
                                                callback3.surfaceChanged(this.mSurfaceHolder, this.mFormat, i3, i2);
                                            }
                                        } else {
                                            str4 = r10;
                                        }
                                        if (z15) {
                                            if (DEBUG) {
                                                Log.i(i4, System.identityHashCode(this) + " surfaceRedrawNeeded");
                                            }
                                            if (surfaceCallbacks == null) {
                                                surfaceCallbacks = getSurfaceCallbacks();
                                            }
                                            this.mPendingReportDraws++;
                                            viewRootImpl.drawPending();
                                            new SurfaceCallbackHelper(new e(this, 0)).dispatchSurfaceRedrawNeededAsync(this.mSurfaceHolder, surfaceCallbacks);
                                        }
                                    }
                                    this.mIsCreating = false;
                                    str3 = str4;
                                    str2 = i4;
                                    if (this.mSurfaceControl != null && !this.mSurfaceCreated) {
                                        this.mSurface.release();
                                        if (!this.mWindowStopped) {
                                            str3 = str4;
                                            str2 = i4;
                                            str3 = str4;
                                            str2 = i4;
                                            this.mSurfaceControl.destroy();
                                            this.mSurfaceControl = null;
                                            str3 = str4;
                                            str2 = i4;
                                        }
                                    }
                                    str3 = str4;
                                    str2 = i4;
                                    str3 = str4;
                                    str2 = i4;
                                    str3 = str4;
                                    str2 = i4;
                                    if (DEBUG) {
                                        Log.v(str2, "Layout: x=" + this.mScreenRect.left + " y=" + this.mScreenRect.top + " w=" + this.mScreenRect.width() + str3 + this.mScreenRect.height() + ", frame=" + this.mSurfaceFrame);
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    this.mIsCreating = false;
                                    if (this.mSurfaceControl != null) {
                                        this.mSurface.release();
                                        if (!this.mWindowStopped) {
                                            this.mSurfaceControl.destroy();
                                            this.mSurfaceControl = null;
                                        }
                                    }
                                    throw th;
                                }
                            }
                            boolean z16 = z14 | z12;
                            if (this.mSurfaceCreated) {
                                surfaceCallbacks = null;
                            } else {
                                surfaceCallbacks = null;
                            }
                            if (z6 != 0) {
                                surfaceCallbacks = surfaceCallbacks2;
                                this.mSurface.copyFrom(this.mSurfaceControl);
                            }
                            if (z7 != 0) {
                                this.mSurface.createFrom(this.mSurfaceControl);
                            }
                            if (z11) {
                                str4 = r10;
                            } else {
                                str4 = r10;
                            }
                            this.mIsCreating = false;
                            str3 = str4;
                            str2 = i4;
                            if (this.mSurfaceControl != null) {
                                this.mSurface.release();
                                if (!this.mWindowStopped) {
                                    str3 = str4;
                                    str2 = i4;
                                    str3 = str4;
                                    str2 = i4;
                                    this.mSurfaceControl.destroy();
                                    this.mSurfaceControl = null;
                                    str3 = str4;
                                    str2 = i4;
                                }
                            }
                        } catch (Throwable th3) {
                            try {
                                SurfaceControl.closeTransaction();
                                throw th3;
                            } catch (Throwable th4) {
                                th = th4;
                                this.mSurfaceLock.unlock();
                                throw th;
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                        obj = obj2;
                        str = i4;
                        Log.e(str, "Exception configuring surface", e);
                        str3 = obj;
                        str2 = str;
                    }
                    str3 = str4;
                    str2 = i4;
                    str3 = str4;
                    str2 = i4;
                    str3 = str4;
                    str2 = i4;
                    if (DEBUG) {
                        Log.v(str2, "Layout: x=" + this.mScreenRect.left + " y=" + this.mScreenRect.top + " w=" + this.mScreenRect.width() + str3 + this.mScreenRect.height() + ", frame=" + this.mSurfaceFrame);
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Exception e4) {
                e = e4;
                obj2 = r10;
            }
        } catch (Exception e5) {
            e = e5;
            str = TAG;
            obj = " h=";
        }
    }

    public final void updateSurfacePosition_renderWorker(long j2, int i2, int i3, int i4, int i5) {
        if (this.mSurfaceControl == null) {
            return;
        }
        this.mRtHandlingPositionUpdates = true;
        Rect rect = this.mRTLastReportedPosition;
        if (rect.left == i2 && rect.top == i3 && rect.right == i4 && rect.bottom == i5) {
            return;
        }
        try {
            if (DEBUG) {
                Log.d(TAG, String.format("%d updateSurfacePosition RenderWorker, frameNr = %d, postion = [%d, %d, %d, %d]", Integer.valueOf(System.identityHashCode(this)), Long.valueOf(j2), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)));
            }
            this.mRTLastReportedPosition.set(i2, i3, i4, i5);
            setParentSpaceRectangle(this.mRTLastReportedPosition, j2);
        } catch (Exception e2) {
            Log.e(TAG, "Exception from repositionChild", e2);
        }
    }

    @Override // android.view.ViewRootImpl.WindowStoppedCallback
    public void windowStopped(boolean z2) throws Throwable {
        this.mWindowStopped = z2;
        updateRequestedVisibility();
        updateSurface();
    }

    public class SurfaceControlWithBackground extends SurfaceControl {
        private SurfaceControl mBackgroundControl;
        private boolean mOpaque;
        public boolean mVisible;

        public SurfaceControlWithBackground(SurfaceSession surfaceSession, String str, int i2, int i3, int i4, int i5) {
            super(surfaceSession, str, i2, i3, i4, i5);
            this.mOpaque = true;
            this.mVisible = false;
            this.mBackgroundControl = new SurfaceControl(surfaceSession, android.accessibilityservice.c.j("Background for - ", str), i2, i3, -1, i5 | 131072);
            this.mOpaque = (i5 & 1024) != 0;
        }

        @Override // android.view.SurfaceControl
        public void deferTransactionUntil(IBinder iBinder, long j2) {
            super.deferTransactionUntil(iBinder, j2);
            this.mBackgroundControl.deferTransactionUntil(iBinder, j2);
        }

        @Override // android.view.SurfaceControl
        public void destroy() {
            super.destroy();
            this.mBackgroundControl.destroy();
        }

        @Override // android.view.SurfaceControl
        public void hide() {
            super.hide();
            this.mVisible = false;
            updateBackgroundVisibility();
        }

        @Override // android.view.SurfaceControl
        public void release() {
            super.release();
            this.mBackgroundControl.release();
        }

        @Override // android.view.SurfaceControl
        public void setAlpha(float f2) {
            super.setAlpha(f2);
            this.mBackgroundControl.setAlpha(f2);
        }

        @Override // android.view.SurfaceControl
        public void setFinalCrop(Rect rect) {
            super.setFinalCrop(rect);
            this.mBackgroundControl.setFinalCrop(rect);
        }

        @Override // android.view.SurfaceControl
        public void setLayer(int i2) {
            super.setLayer(i2);
            this.mBackgroundControl.setLayer(-3);
        }

        @Override // android.view.SurfaceControl
        public void setLayerStack(int i2) {
            super.setLayerStack(i2);
            this.mBackgroundControl.setLayerStack(i2);
        }

        @Override // android.view.SurfaceControl
        public void setMatrix(float f2, float f3, float f4, float f5) {
            super.setMatrix(f2, f3, f4, f5);
            this.mBackgroundControl.setMatrix(f2, f3, f4, f5);
        }

        @Override // android.view.SurfaceControl
        public void setOpaque(boolean z2) {
            super.setOpaque(z2);
            this.mOpaque = z2;
            updateBackgroundVisibility();
        }

        @Override // android.view.SurfaceControl
        public void setPosition(float f2, float f3) {
            super.setPosition(f2, f3);
            this.mBackgroundControl.setPosition(f2, f3);
        }

        @Override // android.view.SurfaceControl
        public void setSecure(boolean z2) {
            super.setSecure(z2);
        }

        @Override // android.view.SurfaceControl
        public void setSize(int i2, int i3) {
            super.setSize(i2, i3);
            this.mBackgroundControl.setSize(i2, i3);
        }

        @Override // android.view.SurfaceControl
        public void setTransparentRegionHint(Region region) {
            super.setTransparentRegionHint(region);
            this.mBackgroundControl.setTransparentRegionHint(region);
        }

        @Override // android.view.SurfaceControl
        public void setWindowCrop(Rect rect) {
            super.setWindowCrop(rect);
            this.mBackgroundControl.setWindowCrop(rect);
        }

        @Override // android.view.SurfaceControl
        public void show() {
            super.show();
            this.mVisible = true;
            updateBackgroundVisibility();
        }

        public void updateBackgroundVisibility() {
            if (this.mOpaque && this.mVisible) {
                this.mBackgroundControl.show();
            } else {
                this.mBackgroundControl.hide();
            }
        }

        @Override // android.view.SurfaceControl
        public void deferTransactionUntil(Surface surface, long j2) {
            super.deferTransactionUntil(surface, j2);
            this.mBackgroundControl.deferTransactionUntil(surface, j2);
        }
    }

    public SurfaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SurfaceView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public SurfaceView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mCallbacks = new ArrayList<>();
        this.mLocation = new int[2];
        this.mSurfaceLock = new ReentrantLock();
        this.mSurface = new Surface();
        this.mDrawingStopped = true;
        this.mDrawFinished = false;
        this.mScreenRect = new Rect();
        this.mTmpRect = new Rect();
        this.mConfiguration = new Configuration();
        this.mSubLayer = -2;
        this.mIsCreating = false;
        this.mRtHandlingPositionUpdates = false;
        this.mScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.view.SurfaceView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() throws Throwable {
                SurfaceView.this.updateSurface();
            }
        };
        this.mDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: android.view.SurfaceView.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() throws Throwable {
                SurfaceView surfaceView = SurfaceView.this;
                surfaceView.mHaveFrame = surfaceView.getWidth() > 0 && SurfaceView.this.getHeight() > 0;
                SurfaceView.this.updateSurface();
                return true;
            }
        };
        this.mRequestedVisible = false;
        this.mWindowVisibility = false;
        this.mLastWindowVisibility = false;
        this.mViewVisibility = false;
        this.mWindowStopped = false;
        this.mRequestedWidth = -1;
        this.mRequestedHeight = -1;
        this.mRequestedFormat = 4;
        this.mHaveFrame = false;
        this.mSurfaceCreated = false;
        this.mLastLockTime = 0L;
        this.mVisible = false;
        this.mWindowSpaceLeft = -1;
        this.mWindowSpaceTop = -1;
        this.mSurfaceWidth = -1;
        this.mSurfaceHeight = -1;
        this.mFormat = -1;
        this.mSurfaceFrame = new Rect();
        this.mLastSurfaceWidth = -1;
        this.mLastSurfaceHeight = -1;
        this.mSurfaceFlags = 4;
        this.mRTLastReportedPosition = new Rect();
        this.mSurfaceHolder = new AnonymousClass3();
        this.mRenderNode.requestPositionUpdates(this);
        setWillNotDraw(true);
        DEBUG = SystemProperties.getBoolean(DEBUG_SURFACEVIEW, false);
    }
}
