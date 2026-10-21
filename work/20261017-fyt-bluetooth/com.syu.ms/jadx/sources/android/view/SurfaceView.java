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
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;
import v.b;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceView extends View {
    private static final boolean DEBUG = false;
    public static final int GET_NEW_SURFACE_MSG = 2;
    public static final int KEEP_SCREEN_ON_MSG = 1;
    private static final String TAG = "SurfaceView";
    public static final int UPDATE_WINDOW_MSG = 3;
    public final ArrayList<SurfaceHolder.Callback> mCallbacks;
    public final Configuration mConfiguration;
    public final Rect mContentInsets;
    private final ViewTreeObserver.OnPreDrawListener mDrawListener;
    public boolean mDrawingStopped;
    public int mFormat;
    private boolean mGlobalListenersAdded;
    public final Handler mHandler;
    public boolean mHaveFrame;
    public int mHeight;
    public boolean mIsCreating;
    public long mLastLockTime;
    public int mLastSurfaceHeight;
    public int mLastSurfaceWidth;
    public final WindowManager.LayoutParams mLayout;
    public int mLeft;
    public final int[] mLocation;
    public final Surface mNewSurface;
    public final Rect mOverscanInsets;
    public boolean mReportDrawNeeded;
    public int mRequestedFormat;
    public int mRequestedHeight;
    public boolean mRequestedVisible;
    public int mRequestedWidth;
    public final ViewTreeObserver.OnScrollChangedListener mScrollChangedListener;
    public IWindowSession mSession;
    public final Surface mSurface;
    public boolean mSurfaceCreated;
    public final Rect mSurfaceFrame;
    private final SurfaceHolder mSurfaceHolder;
    public final ReentrantLock mSurfaceLock;
    public int mTop;
    private CompatibilityInfo.Translator mTranslator;
    public boolean mUpdateWindowNeeded;
    public boolean mViewVisibility;
    public boolean mVisible;
    public final Rect mVisibleInsets;
    public int mWidth;
    public final Rect mWinFrame;
    public MyWindow mWindow;
    public int mWindowType;
    public boolean mWindowVisibility;

    public static class MyWindow extends b {
        private final WeakReference<SurfaceView> mSurfaceView;
        public int mCurWidth = -1;
        public int mCurHeight = -1;

        public MyWindow(SurfaceView surfaceView) {
            this.mSurfaceView = new WeakReference<>(surfaceView);
        }

        @Override // v.b, android.view.IWindow
        public void dispatchAppVisibility(boolean z2) {
        }

        @Override // v.b, android.view.IWindow
        public void dispatchGetNewSurface() {
            SurfaceView surfaceView = this.mSurfaceView.get();
            if (surfaceView != null) {
                surfaceView.mHandler.sendMessage(surfaceView.mHandler.obtainMessage(2));
            }
        }

        @Override // v.b, android.view.IWindow
        public void executeCommand(String str, String str2, ParcelFileDescriptor parcelFileDescriptor) {
        }

        @Override // v.b, android.view.IWindow
        public void resized(Rect rect, Rect rect2, Rect rect3, Rect rect4, boolean z2, Configuration configuration) {
            SurfaceView surfaceView = this.mSurfaceView.get();
            if (surfaceView != null) {
                surfaceView.mSurfaceLock.lock();
                try {
                    if (z2) {
                        surfaceView.mUpdateWindowNeeded = true;
                        surfaceView.mReportDrawNeeded = true;
                        surfaceView.mHandler.sendEmptyMessage(3);
                    } else if (surfaceView.mWinFrame.width() != rect.width() || surfaceView.mWinFrame.height() != rect.height()) {
                        surfaceView.mUpdateWindowNeeded = true;
                        surfaceView.mHandler.sendEmptyMessage(3);
                    }
                    surfaceView.mSurfaceLock.unlock();
                } catch (Throwable th) {
                    surfaceView.mSurfaceLock.unlock();
                    throw th;
                }
            }
        }

        @Override // v.b, android.view.IWindow
        public void windowFocusChanged(boolean z2, boolean z3) {
            Log.w(SurfaceView.TAG, "Unexpected focus in surface: focus=" + z2 + ", touchEnabled=" + z3);
        }
    }

    public SurfaceView(Context context) {
        super(context);
        this.mCallbacks = new ArrayList<>();
        this.mLocation = new int[2];
        this.mSurfaceLock = new ReentrantLock();
        this.mSurface = new Surface();
        this.mNewSurface = new Surface();
        this.mDrawingStopped = true;
        this.mLayout = new WindowManager.LayoutParams();
        this.mVisibleInsets = new Rect();
        this.mWinFrame = new Rect();
        this.mOverscanInsets = new Rect();
        this.mContentInsets = new Rect();
        this.mConfiguration = new Configuration();
        this.mWindowType = 1001;
        this.mIsCreating = false;
        this.mHandler = new Handler() { // from class: android.view.SurfaceView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    SurfaceView.this.setKeepScreenOn(message.arg1 != 0);
                } else if (i2 == 2) {
                    SurfaceView.this.handleGetNewSurface();
                } else {
                    if (i2 != 3) {
                        return;
                    }
                    SurfaceView.this.updateWindow(false, false);
                }
            }
        };
        this.mScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.view.SurfaceView.2
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                SurfaceView.this.updateWindow(false, false);
            }
        };
        this.mRequestedVisible = false;
        this.mWindowVisibility = false;
        this.mViewVisibility = false;
        this.mRequestedWidth = -1;
        this.mRequestedHeight = -1;
        this.mRequestedFormat = 4;
        this.mHaveFrame = false;
        this.mSurfaceCreated = false;
        this.mLastLockTime = 0L;
        this.mVisible = false;
        this.mLeft = -1;
        this.mTop = -1;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mFormat = -1;
        this.mSurfaceFrame = new Rect();
        this.mLastSurfaceWidth = -1;
        this.mLastSurfaceHeight = -1;
        this.mDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: android.view.SurfaceView.3
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                SurfaceView surfaceView = SurfaceView.this;
                surfaceView.mHaveFrame = surfaceView.getWidth() > 0 && SurfaceView.this.getHeight() > 0;
                SurfaceView.this.updateWindow(false, false);
                return true;
            }
        };
        this.mSurfaceHolder = new SurfaceHolder() { // from class: android.view.SurfaceView.4
            private static final String LOG_TAG = "SurfaceHolder";

            private final Canvas internalLockCanvas(Rect rect) {
                Canvas canvasLockCanvas;
                SurfaceView.this.mSurfaceLock.lock();
                SurfaceView surfaceView = SurfaceView.this;
                if (surfaceView.mDrawingStopped || surfaceView.mWindow == null) {
                    canvasLockCanvas = null;
                } else {
                    try {
                        canvasLockCanvas = surfaceView.mSurface.lockCanvas(rect);
                    } catch (Exception e2) {
                        Log.e(LOG_TAG, "Exception locking surface", e2);
                        canvasLockCanvas = null;
                    }
                }
                if (canvasLockCanvas != null) {
                    SurfaceView.this.mLastLockTime = SystemClock.uptimeMillis();
                    return canvasLockCanvas;
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
                return internalLockCanvas(null);
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
            public void setFormat(int i2) {
                if (i2 == -1) {
                    i2 = 4;
                }
                SurfaceView surfaceView = SurfaceView.this;
                surfaceView.mRequestedFormat = i2;
                if (surfaceView.mWindow != null) {
                    surfaceView.updateWindow(false, false);
                }
            }

            @Override // android.view.SurfaceHolder
            public void setKeepScreenOn(boolean z2) {
                Message messageObtainMessage = SurfaceView.this.mHandler.obtainMessage(1);
                messageObtainMessage.arg1 = z2 ? 1 : 0;
                SurfaceView.this.mHandler.sendMessage(messageObtainMessage);
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
                return internalLockCanvas(rect);
            }
        };
        init();
    }

    private SurfaceHolder.Callback[] getSurfaceCallbacks() {
        SurfaceHolder.Callback[] callbackArr;
        synchronized (this.mCallbacks) {
            callbackArr = new SurfaceHolder.Callback[this.mCallbacks.size()];
            this.mCallbacks.toArray(callbackArr);
        }
        return callbackArr;
    }

    private void init() {
        setWillNotDraw(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    public void updateWindow(boolean z2, boolean z3) {
        if (this.mHaveFrame) {
            ViewRootImpl viewRootImpl = getViewRootImpl();
            if (viewRootImpl != null) {
                this.mTranslator = viewRootImpl.mTranslator;
            }
            CompatibilityInfo.Translator translator = this.mTranslator;
            if (translator != null) {
                this.mSurface.setCompatibilityTranslator(translator);
            }
            int width = this.mRequestedWidth;
            if (width <= 0) {
                width = getWidth();
            }
            int height = this.mRequestedHeight;
            if (height <= 0) {
                height = getHeight();
            }
            getLocationInWindow(this.mLocation);
            boolean z4 = this.mWindow == null;
            int i2 = this.mFormat;
            int i3 = this.mRequestedFormat;
            boolean z5 = i2 != i3;
            boolean z6 = (this.mWidth == width && this.mHeight == height) ? false : true;
            boolean z7 = this.mVisible;
            boolean z8 = this.mRequestedVisible;
            boolean z9 = z7 != z8;
            if (!z2 && !z4 && !z5 && !z6 && !z9) {
                int i4 = this.mLeft;
                int[] iArr = this.mLocation;
                if (i4 == iArr[0] && this.mTop == iArr[1] && !this.mUpdateWindowNeeded && !this.mReportDrawNeeded && !z3) {
                    return;
                }
            }
            try {
                this.mVisible = z8;
                int[] iArr2 = this.mLocation;
                int i5 = iArr2[0];
                this.mLeft = i5;
                int i6 = iArr2[1];
                this.mTop = i6;
                this.mWidth = width;
                this.mHeight = height;
                this.mFormat = i3;
                WindowManager.LayoutParams layoutParams = this.mLayout;
                layoutParams.f206x = i5;
                layoutParams.f207y = i6;
                layoutParams.width = getWidth();
                this.mLayout.height = getHeight();
                CompatibilityInfo.Translator translator2 = this.mTranslator;
                if (translator2 != null) {
                    translator2.translateLayoutParamsInAppWindowToScreen(this.mLayout);
                }
                WindowManager.LayoutParams layoutParams2 = this.mLayout;
                layoutParams2.format = this.mRequestedFormat;
                layoutParams2.flags |= 16920;
                if (!getContext().getResources().getCompatibilityInfo().supportsScreen()) {
                    this.mLayout.privateFlags |= 128;
                }
                this.mLayout.privateFlags |= 64;
                if (this.mWindow == null) {
                    Display display = getDisplay();
                    MyWindow myWindow = new MyWindow(this);
                    this.mWindow = myWindow;
                    WindowManager.LayoutParams layoutParams3 = this.mLayout;
                    layoutParams3.type = this.mWindowType;
                    layoutParams3.gravity = 8388659;
                    this.mSession.addToDisplayWithoutInputChannel(myWindow, myWindow.mSeq, layoutParams3, this.mVisible ? 0 : 8, display.getDisplayId(), this.mContentInsets);
                }
                this.mSurfaceLock.lock();
                try {
                    this.mUpdateWindowNeeded = false;
                    boolean z10 = this.mReportDrawNeeded;
                    this.mReportDrawNeeded = false;
                    this.mDrawingStopped = !z8;
                    IWindowSession iWindowSession = this.mSession;
                    MyWindow myWindow2 = this.mWindow;
                    int i7 = width;
                    int i8 = height;
                    boolean z11 = z6;
                    boolean z12 = z5;
                    boolean z13 = z9;
                    int iRelayout = iWindowSession.relayout(myWindow2, myWindow2.mSeq, this.mLayout, this.mWidth, this.mHeight, z8 ? 0 : 8, 2, this.mWinFrame, this.mOverscanInsets, this.mContentInsets, this.mVisibleInsets, this.mConfiguration, this.mNewSurface);
                    if ((iRelayout & 2) != 0) {
                        this.mReportDrawNeeded = true;
                    }
                    Rect rect = this.mSurfaceFrame;
                    rect.left = 0;
                    rect.top = 0;
                    CompatibilityInfo.Translator translator3 = this.mTranslator;
                    if (translator3 == null) {
                        rect.right = this.mWinFrame.width();
                        this.mSurfaceFrame.bottom = this.mWinFrame.height();
                    } else {
                        float f2 = translator3.applicationInvertedScale;
                        rect.right = (int) ((this.mWinFrame.width() * f2) + 0.5f);
                        this.mSurfaceFrame.bottom = (int) ((this.mWinFrame.height() * f2) + 0.5f);
                    }
                    Rect rect2 = this.mSurfaceFrame;
                    int i9 = rect2.right;
                    int i10 = rect2.bottom;
                    boolean z14 = (this.mLastSurfaceWidth == i9 && this.mLastSurfaceHeight == i10) ? false : true;
                    this.mLastSurfaceWidth = i9;
                    this.mLastSurfaceHeight = i10;
                    this.mSurfaceLock.unlock();
                    boolean z15 = z3 | z4 | z10;
                    SurfaceHolder.Callback[] surfaceCallbacks = null;
                    boolean z16 = (iRelayout & 4) != 0;
                    try {
                        if (this.mSurfaceCreated && (z16 || (!z8 && z13))) {
                            this.mSurfaceCreated = false;
                            if (this.mSurface.isValid()) {
                                surfaceCallbacks = getSurfaceCallbacks();
                                for (SurfaceHolder.Callback callback : surfaceCallbacks) {
                                    callback.surfaceDestroyed(this.mSurfaceHolder);
                                }
                            }
                        }
                        this.mSurface.transferFrom(this.mNewSurface);
                        if (z8 && this.mSurface.isValid()) {
                            if (!this.mSurfaceCreated && (z16 || z13)) {
                                this.mSurfaceCreated = true;
                                this.mIsCreating = true;
                                if (surfaceCallbacks == null) {
                                    surfaceCallbacks = getSurfaceCallbacks();
                                }
                                for (SurfaceHolder.Callback callback2 : surfaceCallbacks) {
                                    callback2.surfaceCreated(this.mSurfaceHolder);
                                }
                            }
                            if (z4 || z12 || z11 || z13 || z14) {
                                if (surfaceCallbacks == null) {
                                    surfaceCallbacks = getSurfaceCallbacks();
                                }
                                int length = surfaceCallbacks.length;
                                int i11 = 0;
                                while (i11 < length) {
                                    int i12 = i7;
                                    int i13 = i8;
                                    surfaceCallbacks[i11].surfaceChanged(this.mSurfaceHolder, this.mFormat, i12, i13);
                                    i11++;
                                    i7 = i12;
                                    i8 = i13;
                                }
                            }
                            if (z15) {
                                if (surfaceCallbacks == null) {
                                    surfaceCallbacks = getSurfaceCallbacks();
                                }
                                for (SurfaceHolder.Callback callback3 : surfaceCallbacks) {
                                    if (callback3 instanceof SurfaceHolder.Callback2) {
                                        ((SurfaceHolder.Callback2) callback3).surfaceRedrawNeeded(this.mSurfaceHolder);
                                    }
                                }
                            }
                        }
                        boolean z17 = false;
                    } finally {
                        this.mIsCreating = false;
                        if (z15) {
                            this.mSession.finishDrawing(this.mWindow);
                        }
                        this.mSession.performDeferredDestroy(this.mWindow);
                    }
                } catch (Throwable th) {
                    this.mSurfaceLock.unlock();
                    throw th;
                }
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.mWindowType != 1000 && (this.mPrivateFlags & 128) == 128) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mWindowType != 1000 && (this.mPrivateFlags & 128) == 0) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        super.draw(canvas);
    }

    @Override // android.view.View
    public boolean gatherTransparentRegion(Region region) {
        if (this.mWindowType == 1000) {
            return super.gatherTransparentRegion(region);
        }
        boolean zGatherTransparentRegion = true;
        if ((this.mPrivateFlags & 128) == 0) {
            zGatherTransparentRegion = super.gatherTransparentRegion(region);
        } else if (region != null) {
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
        if (PixelFormat.formatHasAlpha(this.mRequestedFormat)) {
            return false;
        }
        return zGatherTransparentRegion;
    }

    public SurfaceHolder getHolder() {
        return this.mSurfaceHolder;
    }

    public void handleGetNewSurface() {
        updateWindow(false, false);
    }

    public void hideSurfaceView(boolean z2) {
        if (this.mSession == null || this.mWindow == null) {
            return;
        }
        try {
            this.mSurfaceLock.lock();
            this.mSession.hideWindowLayer(this.mWindow, z2);
            this.mSurfaceLock.unlock();
        } catch (RemoteException unused) {
        }
    }

    public boolean isFixedSize() {
        return (this.mRequestedWidth == -1 && this.mRequestedHeight == -1) ? false : true;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mParent.requestTransparentRegion(this);
        this.mSession = getWindowSession();
        this.mLayout.token = getWindowToken();
        this.mLayout.setTitle(TAG);
        this.mViewVisibility = getVisibility() == 0;
        if (this.mGlobalListenersAdded) {
            return;
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.addOnScrollChangedListener(this.mScrollChangedListener);
        viewTreeObserver.addOnPreDrawListener(this.mDrawListener);
        this.mGlobalListenersAdded = true;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        if (this.mGlobalListenersAdded) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            viewTreeObserver.removeOnScrollChangedListener(this.mScrollChangedListener);
            viewTreeObserver.removeOnPreDrawListener(this.mDrawListener);
            this.mGlobalListenersAdded = false;
        }
        this.mRequestedVisible = false;
        updateWindow(false, false);
        this.mHaveFrame = false;
        MyWindow myWindow = this.mWindow;
        if (myWindow != null) {
            try {
                this.mSession.remove(myWindow);
            } catch (RemoteException unused) {
            }
            this.mWindow = null;
        }
        this.mSession = null;
        this.mLayout.token = null;
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
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        boolean z2 = i2 == 0;
        this.mWindowVisibility = z2;
        this.mRequestedVisible = z2 && this.mViewVisibility;
        updateWindow(false, false);
    }

    @Override // android.view.View
    public boolean setFrame(int i2, int i3, int i4, int i5) {
        boolean frame = super.setFrame(i2, i3, i4, i5);
        updateWindow(false, false);
        return frame;
    }

    public void setSecure(boolean z2) {
        if (z2) {
            this.mLayout.flags |= 8192;
        } else {
            this.mLayout.flags &= -8193;
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        this.mViewVisibility = z2;
        boolean z3 = this.mWindowVisibility && z2;
        if (z3 != this.mRequestedVisible) {
            requestLayout();
        }
        this.mRequestedVisible = z3;
        updateWindow(false, false);
    }

    public void setWindowType(int i2) {
        this.mWindowType = i2;
    }

    public void setZOrderMediaOverlay(boolean z2) {
        this.mWindowType = z2 ? 1004 : 1001;
    }

    public void setZOrderOnTop(boolean z2) {
        if (z2) {
            this.mWindowType = 1000;
            this.mLayout.flags |= 131072;
        } else {
            this.mWindowType = 1001;
            this.mLayout.flags &= -131073;
        }
    }

    public void updateLayoutParams(int i2) {
        this.mLayout.windowAnimations = i2;
    }

    public void updatePositionAndSize(int i2, int i3, int i4, int i5) {
        if (this.mSession == null || this.mWindow == null) {
            return;
        }
        try {
            this.mSurfaceLock.lock();
            this.mSession.updatePositionAndSize(this.mWindow, i2, i3, i4, i5);
            this.mSurfaceLock.unlock();
        } catch (RemoteException unused) {
        }
    }

    public SurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCallbacks = new ArrayList<>();
        this.mLocation = new int[2];
        this.mSurfaceLock = new ReentrantLock();
        this.mSurface = new Surface();
        this.mNewSurface = new Surface();
        this.mDrawingStopped = true;
        this.mLayout = new WindowManager.LayoutParams();
        this.mVisibleInsets = new Rect();
        this.mWinFrame = new Rect();
        this.mOverscanInsets = new Rect();
        this.mContentInsets = new Rect();
        this.mConfiguration = new Configuration();
        this.mWindowType = 1001;
        this.mIsCreating = false;
        this.mHandler = new Handler() { // from class: android.view.SurfaceView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    SurfaceView.this.setKeepScreenOn(message.arg1 != 0);
                } else if (i2 == 2) {
                    SurfaceView.this.handleGetNewSurface();
                } else {
                    if (i2 != 3) {
                        return;
                    }
                    SurfaceView.this.updateWindow(false, false);
                }
            }
        };
        this.mScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.view.SurfaceView.2
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                SurfaceView.this.updateWindow(false, false);
            }
        };
        this.mRequestedVisible = false;
        this.mWindowVisibility = false;
        this.mViewVisibility = false;
        this.mRequestedWidth = -1;
        this.mRequestedHeight = -1;
        this.mRequestedFormat = 4;
        this.mHaveFrame = false;
        this.mSurfaceCreated = false;
        this.mLastLockTime = 0L;
        this.mVisible = false;
        this.mLeft = -1;
        this.mTop = -1;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mFormat = -1;
        this.mSurfaceFrame = new Rect();
        this.mLastSurfaceWidth = -1;
        this.mLastSurfaceHeight = -1;
        this.mDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: android.view.SurfaceView.3
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                SurfaceView surfaceView = SurfaceView.this;
                surfaceView.mHaveFrame = surfaceView.getWidth() > 0 && SurfaceView.this.getHeight() > 0;
                SurfaceView.this.updateWindow(false, false);
                return true;
            }
        };
        this.mSurfaceHolder = new SurfaceHolder() { // from class: android.view.SurfaceView.4
            private static final String LOG_TAG = "SurfaceHolder";

            private final Canvas internalLockCanvas(Rect rect) {
                Canvas canvasLockCanvas;
                SurfaceView.this.mSurfaceLock.lock();
                SurfaceView surfaceView = SurfaceView.this;
                if (surfaceView.mDrawingStopped || surfaceView.mWindow == null) {
                    canvasLockCanvas = null;
                } else {
                    try {
                        canvasLockCanvas = surfaceView.mSurface.lockCanvas(rect);
                    } catch (Exception e2) {
                        Log.e(LOG_TAG, "Exception locking surface", e2);
                        canvasLockCanvas = null;
                    }
                }
                if (canvasLockCanvas != null) {
                    SurfaceView.this.mLastLockTime = SystemClock.uptimeMillis();
                    return canvasLockCanvas;
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
                return internalLockCanvas(null);
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
            public void setFormat(int i2) {
                if (i2 == -1) {
                    i2 = 4;
                }
                SurfaceView surfaceView = SurfaceView.this;
                surfaceView.mRequestedFormat = i2;
                if (surfaceView.mWindow != null) {
                    surfaceView.updateWindow(false, false);
                }
            }

            @Override // android.view.SurfaceHolder
            public void setKeepScreenOn(boolean z2) {
                Message messageObtainMessage = SurfaceView.this.mHandler.obtainMessage(1);
                messageObtainMessage.arg1 = z2 ? 1 : 0;
                SurfaceView.this.mHandler.sendMessage(messageObtainMessage);
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
                return internalLockCanvas(rect);
            }
        };
        init();
    }

    public SurfaceView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mCallbacks = new ArrayList<>();
        this.mLocation = new int[2];
        this.mSurfaceLock = new ReentrantLock();
        this.mSurface = new Surface();
        this.mNewSurface = new Surface();
        this.mDrawingStopped = true;
        this.mLayout = new WindowManager.LayoutParams();
        this.mVisibleInsets = new Rect();
        this.mWinFrame = new Rect();
        this.mOverscanInsets = new Rect();
        this.mContentInsets = new Rect();
        this.mConfiguration = new Configuration();
        this.mWindowType = 1001;
        this.mIsCreating = false;
        this.mHandler = new Handler() { // from class: android.view.SurfaceView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i3 = message.what;
                if (i3 == 1) {
                    SurfaceView.this.setKeepScreenOn(message.arg1 != 0);
                } else if (i3 == 2) {
                    SurfaceView.this.handleGetNewSurface();
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    SurfaceView.this.updateWindow(false, false);
                }
            }
        };
        this.mScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.view.SurfaceView.2
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                SurfaceView.this.updateWindow(false, false);
            }
        };
        this.mRequestedVisible = false;
        this.mWindowVisibility = false;
        this.mViewVisibility = false;
        this.mRequestedWidth = -1;
        this.mRequestedHeight = -1;
        this.mRequestedFormat = 4;
        this.mHaveFrame = false;
        this.mSurfaceCreated = false;
        this.mLastLockTime = 0L;
        this.mVisible = false;
        this.mLeft = -1;
        this.mTop = -1;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mFormat = -1;
        this.mSurfaceFrame = new Rect();
        this.mLastSurfaceWidth = -1;
        this.mLastSurfaceHeight = -1;
        this.mDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: android.view.SurfaceView.3
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                SurfaceView surfaceView = SurfaceView.this;
                surfaceView.mHaveFrame = surfaceView.getWidth() > 0 && SurfaceView.this.getHeight() > 0;
                SurfaceView.this.updateWindow(false, false);
                return true;
            }
        };
        this.mSurfaceHolder = new SurfaceHolder() { // from class: android.view.SurfaceView.4
            private static final String LOG_TAG = "SurfaceHolder";

            private final Canvas internalLockCanvas(Rect rect) {
                Canvas canvasLockCanvas;
                SurfaceView.this.mSurfaceLock.lock();
                SurfaceView surfaceView = SurfaceView.this;
                if (surfaceView.mDrawingStopped || surfaceView.mWindow == null) {
                    canvasLockCanvas = null;
                } else {
                    try {
                        canvasLockCanvas = surfaceView.mSurface.lockCanvas(rect);
                    } catch (Exception e2) {
                        Log.e(LOG_TAG, "Exception locking surface", e2);
                        canvasLockCanvas = null;
                    }
                }
                if (canvasLockCanvas != null) {
                    SurfaceView.this.mLastLockTime = SystemClock.uptimeMillis();
                    return canvasLockCanvas;
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
                return internalLockCanvas(null);
            }

            @Override // android.view.SurfaceHolder
            public void removeCallback(SurfaceHolder.Callback callback) {
                synchronized (SurfaceView.this.mCallbacks) {
                    SurfaceView.this.mCallbacks.remove(callback);
                }
            }

            @Override // android.view.SurfaceHolder
            public void setFixedSize(int i3, int i4) {
                SurfaceView surfaceView = SurfaceView.this;
                if (surfaceView.mRequestedWidth == i3 && surfaceView.mRequestedHeight == i4) {
                    return;
                }
                surfaceView.mRequestedWidth = i3;
                surfaceView.mRequestedHeight = i4;
                surfaceView.requestLayout();
            }

            @Override // android.view.SurfaceHolder
            public void setFormat(int i3) {
                if (i3 == -1) {
                    i3 = 4;
                }
                SurfaceView surfaceView = SurfaceView.this;
                surfaceView.mRequestedFormat = i3;
                if (surfaceView.mWindow != null) {
                    surfaceView.updateWindow(false, false);
                }
            }

            @Override // android.view.SurfaceHolder
            public void setKeepScreenOn(boolean z2) {
                Message messageObtainMessage = SurfaceView.this.mHandler.obtainMessage(1);
                messageObtainMessage.arg1 = z2 ? 1 : 0;
                SurfaceView.this.mHandler.sendMessage(messageObtainMessage);
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
            public void setType(int i3) {
            }

            @Override // android.view.SurfaceHolder
            public void unlockCanvasAndPost(Canvas canvas) {
                SurfaceView.this.mSurface.unlockCanvasAndPost(canvas);
                SurfaceView.this.mSurfaceLock.unlock();
            }

            @Override // android.view.SurfaceHolder
            public Canvas lockCanvas(Rect rect) {
                return internalLockCanvas(rect);
            }
        };
        init();
    }
}
