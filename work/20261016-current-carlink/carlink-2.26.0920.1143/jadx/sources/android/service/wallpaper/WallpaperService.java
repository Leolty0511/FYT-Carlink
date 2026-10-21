package android.service.wallpaper;

import android.accessibilityservice.c;
import android.app.Service;
import android.app.WallpaperColors;
import android.content.Context;
import android.content.Intent;
import android.content.res.a;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.net.b;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.provider.SettingsStringUtil;
import android.util.Log;
import android.util.MergedConfiguration;
import android.view.Display;
import android.view.IWindowSession;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import com.android.internal.R;
import com.android.internal.os.HandlerCaller;
import com.android.internal.view.BaseIWindow;
import com.android.internal.view.BaseSurfaceHolder;
import com.google.android.material.badge.BadgeDrawable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public abstract class WallpaperService extends Service {
    static final boolean DEBUG = false;
    private static final int DO_ATTACH = 10;
    private static final int DO_DETACH = 20;
    private static final int DO_SET_DESIRED_SIZE = 30;
    private static final int DO_SET_DISPLAY_PADDING = 40;
    private static final int MSG_REQUEST_WALLPAPER_COLORS = 10050;
    private static final int MSG_TOUCH_EVENT = 10040;
    private static final int MSG_UPDATE_SURFACE = 10000;
    private static final int MSG_VISIBILITY_CHANGED = 10010;
    private static final int MSG_WALLPAPER_COMMAND = 10025;
    private static final int MSG_WALLPAPER_OFFSETS = 10020;
    private static final int MSG_WINDOW_MOVED = 10035;
    private static final int MSG_WINDOW_RESIZED = 10030;
    private static final int NOTIFY_COLORS_RATE_LIMIT_MS = 1000;
    public static final String SERVICE_INTERFACE = "android.service.wallpaper.WallpaperService";
    public static final String SERVICE_META_DATA = "android.service.wallpaper";
    static final String TAG = "WallpaperService";
    private final ArrayList<Engine> mActiveEngines = new ArrayList<>();

    public class Engine {
        final Rect mBackdropFrame;
        HandlerCaller mCaller;
        private final Supplier<Long> mClockFunction;
        IWallpaperConnection mConnection;
        final Rect mContentInsets;
        boolean mCreated;
        int mCurHeight;
        int mCurWidth;
        int mCurWindowFlags;
        int mCurWindowPrivateFlags;
        boolean mDestroyed;
        final Rect mDispatchedContentInsets;
        final Rect mDispatchedOutsets;
        final Rect mDispatchedOverscanInsets;
        final Rect mDispatchedStableInsets;
        Display mDisplay;
        private final DisplayManager.DisplayListener mDisplayListener;
        DisplayManager mDisplayManager;
        private int mDisplayState;
        boolean mDrawingAllowed;
        final Rect mFinalStableInsets;
        final Rect mFinalSystemInsets;
        boolean mFixedSizeAllowed;
        int mFormat;
        private final Handler mHandler;
        int mHeight;
        IWallpaperEngineWrapper mIWallpaperEngine;
        boolean mInitializing;
        InputChannel mInputChannel;
        WallpaperInputEventReceiver mInputEventReceiver;
        boolean mIsCreating;
        private long mLastColorInvalidation;
        final WindowManager.LayoutParams mLayout;
        final Object mLock;
        final MergedConfiguration mMergedConfiguration;
        private final Runnable mNotifyColorsChanged;
        boolean mOffsetMessageEnqueued;
        boolean mOffsetsChanged;
        final Rect mOutsets;
        final Rect mOverscanInsets;
        MotionEvent mPendingMove;
        boolean mPendingSync;
        float mPendingXOffset;
        float mPendingXOffsetStep;
        float mPendingYOffset;
        float mPendingYOffsetStep;
        boolean mReportedVisible;
        IWindowSession mSession;
        final Rect mStableInsets;
        boolean mSurfaceCreated;
        final BaseSurfaceHolder mSurfaceHolder;
        int mType;
        boolean mVisible;
        final Rect mVisibleInsets;
        int mWidth;
        final Rect mWinFrame;
        final BaseIWindow mWindow;
        int mWindowFlags;
        int mWindowPrivateFlags;
        IBinder mWindowToken;

        public final class WallpaperInputEventReceiver extends InputEventReceiver {
            public WallpaperInputEventReceiver(InputChannel inputChannel, Looper looper) {
                super(inputChannel, looper);
            }

            @Override // android.view.InputEventReceiver
            public void onInputEvent(InputEvent inputEvent, int i2) {
                boolean z2 = false;
                try {
                    if ((inputEvent instanceof MotionEvent) && (inputEvent.getSource() & 2) != 0) {
                        Engine.this.dispatchPointer(MotionEvent.obtainNoHistory((MotionEvent) inputEvent));
                        z2 = true;
                    }
                } finally {
                    finishInputEvent(inputEvent, false);
                }
            }
        }

        public Engine(WallpaperService wallpaperService) {
            this(new a(1), Handler.getMain());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dispatchPointer(MotionEvent motionEvent) {
            if (!motionEvent.isTouchEvent()) {
                motionEvent.recycle();
                return;
            }
            synchronized (this.mLock) {
                if (motionEvent.getAction() == 2) {
                    this.mPendingMove = motionEvent;
                } else {
                    this.mPendingMove = null;
                }
            }
            this.mCaller.sendMessage(this.mCaller.obtainMessageO(10040, motionEvent));
        }

        public void attach(IWallpaperEngineWrapper iWallpaperEngineWrapper) throws Throwable {
            if (this.mDestroyed) {
                return;
            }
            this.mIWallpaperEngine = iWallpaperEngineWrapper;
            this.mCaller = iWallpaperEngineWrapper.mCaller;
            this.mConnection = iWallpaperEngineWrapper.mConnection;
            this.mWindowToken = iWallpaperEngineWrapper.mWindowToken;
            this.mSurfaceHolder.setSizeFromLayout();
            this.mInitializing = true;
            IWindowSession windowSession = WindowManagerGlobal.getWindowSession();
            this.mSession = windowSession;
            this.mWindow.setSession(windowSession);
            this.mLayout.packageName = WallpaperService.this.getPackageName();
            DisplayManager displayManager = (DisplayManager) WallpaperService.this.getSystemService(Context.DISPLAY_SERVICE);
            this.mDisplayManager = displayManager;
            displayManager.registerDisplayListener(this.mDisplayListener, this.mCaller.getHandler());
            Display display = this.mDisplayManager.getDisplay(0);
            this.mDisplay = display;
            this.mDisplayState = display.getState();
            onCreate(this.mSurfaceHolder);
            this.mInitializing = false;
            this.mReportedVisible = false;
            updateSurface(false, false, false);
        }

        public void detach() {
            if (this.mDestroyed) {
                return;
            }
            this.mDestroyed = true;
            DisplayManager displayManager = this.mDisplayManager;
            if (displayManager != null) {
                displayManager.unregisterDisplayListener(this.mDisplayListener);
            }
            if (this.mVisible) {
                this.mVisible = false;
                onVisibilityChanged(false);
            }
            reportSurfaceDestroyed();
            onDestroy();
            if (this.mCreated) {
                try {
                    WallpaperInputEventReceiver wallpaperInputEventReceiver = this.mInputEventReceiver;
                    if (wallpaperInputEventReceiver != null) {
                        wallpaperInputEventReceiver.dispose();
                        this.mInputEventReceiver = null;
                    }
                    this.mSession.remove(this.mWindow);
                } catch (RemoteException unused) {
                }
                this.mSurfaceHolder.mSurface.release();
                this.mCreated = false;
                InputChannel inputChannel = this.mInputChannel;
                if (inputChannel != null) {
                    inputChannel.dispose();
                    this.mInputChannel = null;
                }
            }
        }

        public void doCommand(WallpaperCommand wallpaperCommand) {
            Bundle bundleOnCommand = !this.mDestroyed ? onCommand(wallpaperCommand.action, wallpaperCommand.f186x, wallpaperCommand.f187y, wallpaperCommand.f188z, wallpaperCommand.extras, wallpaperCommand.sync) : null;
            if (wallpaperCommand.sync) {
                try {
                    this.mSession.wallpaperCommandComplete(this.mWindow.asBinder(), bundleOnCommand);
                } catch (RemoteException unused) {
                }
            }
        }

        public void doDesiredSizeChanged(int i2, int i3) {
            if (this.mDestroyed) {
                return;
            }
            IWallpaperEngineWrapper iWallpaperEngineWrapper = this.mIWallpaperEngine;
            iWallpaperEngineWrapper.mReqWidth = i2;
            iWallpaperEngineWrapper.mReqHeight = i3;
            onDesiredSizeChanged(i2, i3);
            doOffsetsChanged(true);
        }

        public void doDisplayPaddingChanged(Rect rect) throws Throwable {
            if (this.mDestroyed || this.mIWallpaperEngine.mDisplayPadding.equals(rect)) {
                return;
            }
            this.mIWallpaperEngine.mDisplayPadding.set(rect);
            updateSurface(true, false, false);
        }

        public void doOffsetsChanged(boolean z2) {
            float f2;
            float f3;
            float f4;
            float f5;
            boolean z3;
            if (this.mDestroyed) {
                return;
            }
            if (z2 || this.mOffsetsChanged) {
                synchronized (this.mLock) {
                    f2 = this.mPendingXOffset;
                    f3 = this.mPendingYOffset;
                    f4 = this.mPendingXOffsetStep;
                    f5 = this.mPendingYOffsetStep;
                    z3 = this.mPendingSync;
                    this.mPendingSync = false;
                    this.mOffsetMessageEnqueued = false;
                }
                if (this.mSurfaceCreated) {
                    if (this.mReportedVisible) {
                        IWallpaperEngineWrapper iWallpaperEngineWrapper = this.mIWallpaperEngine;
                        int i2 = iWallpaperEngineWrapper.mReqWidth - this.mCurWidth;
                        int i3 = i2 > 0 ? -((int) ((i2 * f2) + 0.5f)) : 0;
                        int i4 = iWallpaperEngineWrapper.mReqHeight - this.mCurHeight;
                        onOffsetsChanged(f2, f3, f4, f5, i3, i4 > 0 ? -((int) ((i4 * f3) + 0.5f)) : 0);
                    } else {
                        this.mOffsetsChanged = true;
                    }
                }
                if (z3) {
                    try {
                        this.mSession.wallpaperOffsetsComplete(this.mWindow.asBinder());
                    } catch (RemoteException unused) {
                    }
                }
            }
        }

        public void doVisibilityChanged(boolean z2) throws Throwable {
            if (this.mDestroyed) {
                return;
            }
            this.mVisible = z2;
            reportVisibility();
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mInitializing=");
            printWriter.print(this.mInitializing);
            printWriter.print(" mDestroyed=");
            c.y(printWriter, this.mDestroyed, str, "mVisible=");
            printWriter.print(this.mVisible);
            printWriter.print(" mReportedVisible=");
            c.y(printWriter, this.mReportedVisible, str, "mDisplay=");
            printWriter.println(this.mDisplay);
            printWriter.print(str);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mSurfaceCreated=");
            printWriter.print(this.mSurfaceCreated);
            printWriter.print(" mIsCreating=");
            printWriter.print(this.mIsCreating);
            printWriter.print(" mDrawingAllowed=");
            c.y(printWriter, this.mDrawingAllowed, str, "mWidth=");
            printWriter.print(this.mWidth);
            printWriter.print(" mCurWidth=");
            printWriter.print(this.mCurWidth);
            printWriter.print(" mHeight=");
            printWriter.print(this.mHeight);
            printWriter.print(" mCurHeight=");
            printWriter.println(this.mCurHeight);
            printWriter.print(str);
            printWriter.print("mType=");
            printWriter.print(this.mType);
            printWriter.print(" mWindowFlags=");
            printWriter.print(this.mWindowFlags);
            printWriter.print(" mCurWindowFlags=");
            printWriter.println(this.mCurWindowFlags);
            printWriter.print(str);
            printWriter.print("mWindowPrivateFlags=");
            printWriter.print(this.mWindowPrivateFlags);
            printWriter.print(" mCurWindowPrivateFlags=");
            printWriter.println(this.mCurWindowPrivateFlags);
            printWriter.print(str);
            printWriter.print("mVisibleInsets=");
            printWriter.print(this.mVisibleInsets.toShortString());
            printWriter.print(" mWinFrame=");
            printWriter.print(this.mWinFrame.toShortString());
            printWriter.print(" mContentInsets=");
            printWriter.println(this.mContentInsets.toShortString());
            printWriter.print(str);
            printWriter.print("mConfiguration=");
            printWriter.println(this.mMergedConfiguration.getMergedConfiguration());
            printWriter.print(str);
            printWriter.print("mLayout=");
            printWriter.println(this.mLayout);
            synchronized (this.mLock) {
                printWriter.print(str);
                printWriter.print("mPendingXOffset=");
                printWriter.print(this.mPendingXOffset);
                printWriter.print(" mPendingXOffset=");
                printWriter.println(this.mPendingXOffset);
                printWriter.print(str);
                printWriter.print("mPendingXOffsetStep=");
                printWriter.print(this.mPendingXOffsetStep);
                printWriter.print(" mPendingXOffsetStep=");
                printWriter.println(this.mPendingXOffsetStep);
                printWriter.print(str);
                printWriter.print("mOffsetMessageEnqueued=");
                printWriter.print(this.mOffsetMessageEnqueued);
                printWriter.print(" mPendingSync=");
                printWriter.println(this.mPendingSync);
                if (this.mPendingMove != null) {
                    printWriter.print(str);
                    printWriter.print("mPendingMove=");
                    printWriter.println(this.mPendingMove);
                }
            }
        }

        public int getDesiredMinimumHeight() {
            return this.mIWallpaperEngine.mReqHeight;
        }

        public int getDesiredMinimumWidth() {
            return this.mIWallpaperEngine.mReqWidth;
        }

        public SurfaceHolder getSurfaceHolder() {
            return this.mSurfaceHolder;
        }

        public boolean isPreview() {
            return this.mIWallpaperEngine.mIsPreview;
        }

        public boolean isVisible() {
            return this.mReportedVisible;
        }

        public void notifyColorsChanged() {
            long jLongValue = ((Long) this.mClockFunction.get()).longValue();
            if (jLongValue - this.mLastColorInvalidation < 1000) {
                Log.w(WallpaperService.TAG, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds.");
                if (this.mHandler.hasCallbacks(this.mNotifyColorsChanged)) {
                    return;
                }
                this.mHandler.postDelayed(this.mNotifyColorsChanged, 1000L);
                return;
            }
            this.mLastColorInvalidation = jLongValue;
            this.mHandler.removeCallbacks(this.mNotifyColorsChanged);
            try {
                WallpaperColors wallpaperColorsOnComputeColors = onComputeColors();
                IWallpaperConnection iWallpaperConnection = this.mConnection;
                if (iWallpaperConnection != null) {
                    iWallpaperConnection.onWallpaperColorsChanged(wallpaperColorsOnComputeColors);
                } else {
                    Log.w(WallpaperService.TAG, "Can't notify system because wallpaper connection was not established.");
                }
            } catch (RemoteException e2) {
                Log.w(WallpaperService.TAG, "Can't notify system because wallpaper connection was lost.", e2);
            }
        }

        public void onApplyWindowInsets(WindowInsets windowInsets) {
        }

        public Bundle onCommand(String str, int i2, int i3, int i4, Bundle bundle, boolean z2) {
            return null;
        }

        public WallpaperColors onComputeColors() {
            return null;
        }

        public void onCreate(SurfaceHolder surfaceHolder) {
        }

        public void onDesiredSizeChanged(int i2, int i3) {
        }

        public void onDestroy() {
        }

        public void onOffsetsChanged(float f2, float f3, float f4, float f5, int i2, int i3) {
        }

        public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        }

        public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
        }

        public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
        }

        public void onSurfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
        }

        public void onTouchEvent(MotionEvent motionEvent) {
        }

        public void onVisibilityChanged(boolean z2) {
        }

        public void reportSurfaceDestroyed() {
            if (this.mSurfaceCreated) {
                this.mSurfaceCreated = false;
                this.mSurfaceHolder.ungetCallbacks();
                SurfaceHolder.Callback[] callbacks = this.mSurfaceHolder.getCallbacks();
                if (callbacks != null) {
                    for (SurfaceHolder.Callback callback : callbacks) {
                        callback.surfaceDestroyed(this.mSurfaceHolder);
                    }
                }
                onSurfaceDestroyed(this.mSurfaceHolder);
            }
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0019  */
        public void reportVisibility() throws Throwable {
            boolean z2;
            if (this.mDestroyed) {
                return;
            }
            Display display = this.mDisplay;
            int state = display == null ? 0 : display.getState();
            this.mDisplayState = state;
            if (this.mVisible) {
                z2 = state != 1;
            }
            if (this.mReportedVisible != z2) {
                this.mReportedVisible = z2;
                if (z2) {
                    doOffsetsChanged(false);
                    updateSurface(false, false, false);
                }
                onVisibilityChanged(z2);
            }
        }

        public void setFixedSizeAllowed(boolean z2) {
            this.mFixedSizeAllowed = z2;
        }

        public void setOffsetNotificationsEnabled(boolean z2) throws Throwable {
            this.mWindowPrivateFlags = z2 ? this.mWindowPrivateFlags | 4 : this.mWindowPrivateFlags & (-5);
            if (this.mCreated) {
                updateSurface(false, false, false);
            }
        }

        public void setTouchEventsEnabled(boolean z2) throws Throwable {
            this.mWindowFlags = z2 ? this.mWindowFlags & (-17) : this.mWindowFlags | 16;
            if (this.mCreated) {
                updateSurface(false, false, false);
            }
        }

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
        public void updateSurface(boolean z2, boolean z3, boolean z4) throws Throwable {
            boolean z5;
            boolean z6;
            boolean z7;
            boolean z8;
            boolean z9;
            if (this.mDestroyed) {
                Log.w(WallpaperService.TAG, "Ignoring updateSurface: destroyed");
            }
            int requestedWidth = this.mSurfaceHolder.getRequestedWidth();
            int i2 = -1;
            if (requestedWidth <= 0) {
                requestedWidth = -1;
                z5 = false;
            } else {
                z5 = true;
            }
            int requestedHeight = this.mSurfaceHolder.getRequestedHeight();
            if (requestedHeight > 0) {
                z5 = true;
                i2 = requestedHeight;
            }
            boolean z10 = !this.mCreated;
            boolean z11 = !this.mSurfaceCreated;
            boolean z12 = this.mFormat != this.mSurfaceHolder.getRequestedFormat();
            boolean z13 = (this.mWidth == requestedWidth && this.mHeight == i2) ? false : true;
            boolean z14 = !this.mCreated;
            boolean z15 = this.mType != this.mSurfaceHolder.getRequestedType();
            boolean z16 = (this.mCurWindowFlags == this.mWindowFlags && this.mCurWindowPrivateFlags == this.mWindowPrivateFlags) ? false : true;
            if (!z2 && !z10 && !z11 && !z12 && !z13 && !z15 && !z16 && !z4 && this.mIWallpaperEngine.mShownReported) {
                return;
            }
            try {
                this.mWidth = requestedWidth;
                this.mHeight = i2;
                this.mFormat = this.mSurfaceHolder.getRequestedFormat();
                int requestedType = this.mSurfaceHolder.getRequestedType();
                this.mType = requestedType;
                WindowManager.LayoutParams layoutParams = this.mLayout;
                layoutParams.f211x = 0;
                layoutParams.f212y = 0;
                layoutParams.width = requestedWidth;
                layoutParams.height = i2;
                layoutParams.format = this.mFormat;
                int i3 = this.mWindowFlags;
                this.mCurWindowFlags = i3;
                layoutParams.flags = i3 | 512 | 65536 | 256 | 8;
                int i4 = this.mWindowPrivateFlags;
                this.mCurWindowPrivateFlags = i4;
                layoutParams.privateFlags = i4;
                layoutParams.memoryType = requestedType;
                layoutParams.token = this.mWindowToken;
                if (!this.mCreated) {
                    WallpaperService.this.obtainStyledAttributes(R.styleable.Window).recycle();
                    WindowManager.LayoutParams layoutParams2 = this.mLayout;
                    layoutParams2.type = this.mIWallpaperEngine.mWindowType;
                    layoutParams2.gravity = BadgeDrawable.TOP_START;
                    layoutParams2.setTitle(WallpaperService.this.getClass().getName());
                    this.mLayout.windowAnimations = R.style.Animation_Wallpaper;
                    InputChannel inputChannel = new InputChannel();
                    this.mInputChannel = inputChannel;
                    IWindowSession iWindowSession = this.mSession;
                    BaseIWindow baseIWindow = this.mWindow;
                    if (iWindowSession.addToDisplay(baseIWindow, baseIWindow.mSeq, this.mLayout, 0, 0, this.mContentInsets, this.mStableInsets, this.mOutsets, inputChannel) < 0) {
                        Log.w(WallpaperService.TAG, "Failed to add window while updating wallpaper surface.");
                        return;
                    } else {
                        this.mCreated = true;
                        this.mInputEventReceiver = new WallpaperInputEventReceiver(this.mInputChannel, Looper.myLooper());
                    }
                }
                this.mSurfaceHolder.mSurfaceLock.lock();
                this.mDrawingAllowed = true;
                if (z5) {
                    this.mLayout.surfaceInsets.set(0, 0, 0, 0);
                } else {
                    this.mLayout.surfaceInsets.set(this.mIWallpaperEngine.mDisplayPadding);
                    Rect rect = this.mLayout.surfaceInsets;
                    int i5 = rect.left;
                    Rect rect2 = this.mOutsets;
                    rect.left = i5 + rect2.left;
                    rect.top += rect2.top;
                    rect.right += rect2.right;
                    rect.bottom += rect2.bottom;
                }
                IWindowSession iWindowSession2 = this.mSession;
                BaseIWindow baseIWindow2 = this.mWindow;
                boolean z17 = z13;
                boolean z18 = z12;
                boolean z19 = z5;
                int iRelayout = iWindowSession2.relayout(baseIWindow2, baseIWindow2.mSeq, this.mLayout, this.mWidth, this.mHeight, 0, 0, this.mWinFrame, this.mOverscanInsets, this.mContentInsets, this.mVisibleInsets, this.mStableInsets, this.mOutsets, this.mBackdropFrame, this.mMergedConfiguration, this.mSurfaceHolder.mSurface);
                int iWidth = this.mWinFrame.width();
                int iHeight = this.mWinFrame.height();
                if (!z19) {
                    Rect rect3 = this.mIWallpaperEngine.mDisplayPadding;
                    int i6 = rect3.left;
                    int i7 = rect3.right;
                    Rect rect4 = this.mOutsets;
                    iWidth += i6 + i7 + rect4.left + rect4.right;
                    int i8 = rect3.top;
                    int i9 = rect3.bottom;
                    iHeight += i8 + i9 + rect4.top + rect4.bottom;
                    Rect rect5 = this.mOverscanInsets;
                    rect5.left += i6;
                    rect5.top += i8;
                    rect5.right += i7;
                    rect5.bottom += i9;
                    Rect rect6 = this.mContentInsets;
                    rect6.left += rect3.left;
                    rect6.top += rect3.top;
                    rect6.right += rect3.right;
                    rect6.bottom += rect3.bottom;
                    Rect rect7 = this.mStableInsets;
                    rect7.left += rect3.left;
                    rect7.top += rect3.top;
                    rect7.right += rect3.right;
                    rect7.bottom += rect3.bottom;
                }
                if (this.mCurWidth != iWidth) {
                    this.mCurWidth = iWidth;
                    z6 = true;
                } else {
                    z6 = z17;
                }
                if (this.mCurHeight != iHeight) {
                    this.mCurHeight = iHeight;
                    z6 = true;
                }
                boolean z20 = z14 | (!this.mDispatchedOverscanInsets.equals(this.mOverscanInsets)) | (!this.mDispatchedContentInsets.equals(this.mContentInsets)) | (!this.mDispatchedStableInsets.equals(this.mStableInsets)) | (!this.mDispatchedOutsets.equals(this.mOutsets));
                this.mSurfaceHolder.setSurfaceFrameSize(iWidth, iHeight);
                this.mSurfaceHolder.mSurfaceLock.unlock();
                if (!this.mSurfaceHolder.mSurface.isValid()) {
                    reportSurfaceDestroyed();
                    return;
                }
                try {
                    this.mSurfaceHolder.ungetCallbacks();
                    if (z11) {
                        this.mIsCreating = true;
                        onSurfaceCreated(this.mSurfaceHolder);
                        SurfaceHolder.Callback[] callbacks = this.mSurfaceHolder.getCallbacks();
                        if (callbacks != null) {
                            for (SurfaceHolder.Callback callback : callbacks) {
                                callback.surfaceCreated(this.mSurfaceHolder);
                            }
                        }
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z7 = z4 | (z10 || (iRelayout & 2) != 0);
                    if (z3 || z10 || z11 || z18 || z6) {
                        try {
                            onSurfaceChanged(this.mSurfaceHolder, this.mFormat, this.mCurWidth, this.mCurHeight);
                            SurfaceHolder.Callback[] callbacks2 = this.mSurfaceHolder.getCallbacks();
                            if (callbacks2 != null) {
                                for (SurfaceHolder.Callback callback2 : callbacks2) {
                                    callback2.surfaceChanged(this.mSurfaceHolder, this.mFormat, this.mCurWidth, this.mCurHeight);
                                }
                            }
                            z8 = true;
                        } catch (Throwable th) {
                            th = th;
                            this.mIsCreating = false;
                            this.mSurfaceCreated = true;
                            if (z7) {
                                this.mSession.finishDrawing(this.mWindow);
                            }
                            this.mIWallpaperEngine.reportShown();
                            throw th;
                        }
                    }
                    if (z20) {
                        this.mDispatchedOverscanInsets.set(this.mOverscanInsets);
                        Rect rect8 = this.mDispatchedOverscanInsets;
                        int i10 = rect8.left;
                        Rect rect9 = this.mOutsets;
                        rect8.left = i10 + rect9.left;
                        rect8.top += rect9.top;
                        rect8.right += rect9.right;
                        rect8.bottom += rect9.bottom;
                        this.mDispatchedContentInsets.set(this.mContentInsets);
                        this.mDispatchedStableInsets.set(this.mStableInsets);
                        this.mDispatchedOutsets.set(this.mOutsets);
                        this.mFinalSystemInsets.set(this.mDispatchedOverscanInsets);
                        this.mFinalStableInsets.set(this.mDispatchedStableInsets);
                        onApplyWindowInsets(new WindowInsets(this.mFinalSystemInsets, null, this.mFinalStableInsets, WallpaperService.this.getResources().getConfiguration().isScreenRound(), false));
                    }
                    if (z7) {
                        onSurfaceRedrawNeeded(this.mSurfaceHolder);
                        SurfaceHolder.Callback[] callbacks3 = this.mSurfaceHolder.getCallbacks();
                        if (callbacks3 != null) {
                            for (SurfaceHolder.Callback callback3 : callbacks3) {
                                if (callback3 instanceof SurfaceHolder.Callback2) {
                                    ((SurfaceHolder.Callback2) callback3).surfaceRedrawNeeded(this.mSurfaceHolder);
                                }
                            }
                        }
                    }
                    if (!z8 || this.mReportedVisible) {
                        z9 = false;
                    } else {
                        if (this.mIsCreating) {
                            onVisibilityChanged(true);
                        }
                        z9 = false;
                        onVisibilityChanged(false);
                    }
                    this.mIsCreating = z9;
                    this.mSurfaceCreated = true;
                    if (z7) {
                        this.mSession.finishDrawing(this.mWindow);
                    }
                    this.mIWallpaperEngine.reportShown();
                } catch (Throwable th2) {
                    th = th2;
                    z7 = z4;
                }
            } catch (RemoteException unused) {
            }
        }

        public Engine(Supplier<Long> supplier, Handler handler) {
            this.mInitializing = true;
            this.mWindowFlags = 16;
            this.mWindowPrivateFlags = 4;
            this.mCurWindowFlags = 16;
            this.mCurWindowPrivateFlags = 4;
            this.mVisibleInsets = new Rect();
            this.mWinFrame = new Rect();
            this.mOverscanInsets = new Rect();
            this.mContentInsets = new Rect();
            this.mStableInsets = new Rect();
            this.mOutsets = new Rect();
            this.mDispatchedOverscanInsets = new Rect();
            this.mDispatchedContentInsets = new Rect();
            this.mDispatchedStableInsets = new Rect();
            this.mDispatchedOutsets = new Rect();
            this.mFinalSystemInsets = new Rect();
            this.mFinalStableInsets = new Rect();
            this.mBackdropFrame = new Rect();
            this.mMergedConfiguration = new MergedConfiguration();
            this.mLayout = new WindowManager.LayoutParams();
            this.mLock = new Object();
            this.mNotifyColorsChanged = new b(this, 3);
            this.mSurfaceHolder = new BaseSurfaceHolder() { // from class: android.service.wallpaper.WallpaperService.Engine.1
                {
                    this.mRequestedFormat = 2;
                }

                private void prepareToDraw() {
                    if (Engine.this.mDisplayState == 3 || Engine.this.mDisplayState == 4) {
                        try {
                            Engine engine = Engine.this;
                            engine.mSession.pokeDrawLock(engine.mWindow);
                        } catch (RemoteException unused) {
                        }
                    }
                }

                @Override // android.view.SurfaceHolder
                public boolean isCreating() {
                    return Engine.this.mIsCreating;
                }

                @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
                public Canvas lockCanvas() {
                    prepareToDraw();
                    return super.lockCanvas();
                }

                @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
                public Canvas lockHardwareCanvas() {
                    prepareToDraw();
                    return super.lockHardwareCanvas();
                }

                @Override // com.android.internal.view.BaseSurfaceHolder
                public boolean onAllowLockCanvas() {
                    return Engine.this.mDrawingAllowed;
                }

                @Override // com.android.internal.view.BaseSurfaceHolder
                public void onRelayoutContainer() {
                    Engine.this.mCaller.sendMessage(Engine.this.mCaller.obtainMessage(10000));
                }

                @Override // com.android.internal.view.BaseSurfaceHolder
                public void onUpdateSurface() {
                    Engine.this.mCaller.sendMessage(Engine.this.mCaller.obtainMessage(10000));
                }

                @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
                public void setFixedSize(int i2, int i3) {
                    if (!Engine.this.mFixedSizeAllowed) {
                        throw new UnsupportedOperationException("Wallpapers currently only support sizing from layout");
                    }
                    super.setFixedSize(i2, i3);
                }

                @Override // android.view.SurfaceHolder
                public void setKeepScreenOn(boolean z2) {
                    throw new UnsupportedOperationException("Wallpapers do not support keep screen on");
                }

                @Override // com.android.internal.view.BaseSurfaceHolder, android.view.SurfaceHolder
                public Canvas lockCanvas(Rect rect) {
                    prepareToDraw();
                    return super.lockCanvas(rect);
                }
            };
            this.mWindow = new BaseIWindow() { // from class: android.service.wallpaper.WallpaperService.Engine.2
                @Override // com.android.internal.view.BaseIWindow, android.view.IWindow
                public void dispatchAppVisibility(boolean z2) {
                    Engine engine = Engine.this;
                    if (engine.mIWallpaperEngine.mIsPreview) {
                        return;
                    }
                    Engine.this.mCaller.sendMessage(engine.mCaller.obtainMessageI(10010, z2 ? 1 : 0));
                }

                @Override // com.android.internal.view.BaseIWindow, android.view.IWindow
                public void dispatchWallpaperCommand(String str, int i2, int i3, int i4, Bundle bundle, boolean z2) {
                    synchronized (Engine.this.mLock) {
                        WallpaperCommand wallpaperCommand = new WallpaperCommand();
                        wallpaperCommand.action = str;
                        wallpaperCommand.f186x = i2;
                        wallpaperCommand.f187y = i3;
                        wallpaperCommand.f188z = i4;
                        wallpaperCommand.extras = bundle;
                        wallpaperCommand.sync = z2;
                        Message messageObtainMessage = Engine.this.mCaller.obtainMessage(10025);
                        messageObtainMessage.obj = wallpaperCommand;
                        Engine.this.mCaller.sendMessage(messageObtainMessage);
                    }
                }

                @Override // com.android.internal.view.BaseIWindow, android.view.IWindow
                public void dispatchWallpaperOffsets(float f2, float f3, float f4, float f5, boolean z2) {
                    synchronized (Engine.this.mLock) {
                        Engine engine = Engine.this;
                        engine.mPendingXOffset = f2;
                        engine.mPendingYOffset = f3;
                        engine.mPendingXOffsetStep = f4;
                        engine.mPendingYOffsetStep = f5;
                        if (z2) {
                            engine.mPendingSync = true;
                        }
                        if (!engine.mOffsetMessageEnqueued) {
                            engine.mOffsetMessageEnqueued = true;
                            Engine.this.mCaller.sendMessage(engine.mCaller.obtainMessage(10020));
                        }
                    }
                }

                @Override // com.android.internal.view.BaseIWindow, android.view.IWindow
                public void moved(int i2, int i3) {
                    Engine.this.mCaller.sendMessage(Engine.this.mCaller.obtainMessageII(10035, i2, i3));
                }

                @Override // com.android.internal.view.BaseIWindow, android.view.IWindow
                public void resized(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6, boolean z2, MergedConfiguration mergedConfiguration, Rect rect7, boolean z3, boolean z4, int i2) {
                    Engine.this.mCaller.sendMessage(Engine.this.mCaller.obtainMessageIO(10030, z2 ? 1 : 0, rect6));
                }
            };
            this.mDisplayListener = new DisplayManager.DisplayListener() { // from class: android.service.wallpaper.WallpaperService.Engine.3
                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayAdded(int i2) {
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayChanged(int i2) throws Throwable {
                    if (Engine.this.mDisplay.getDisplayId() == i2) {
                        Engine.this.reportVisibility();
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayRemoved(int i2) {
                }
            };
            this.mClockFunction = supplier;
            this.mHandler = handler;
        }
    }

    public class IWallpaperEngineWrapper extends IWallpaperEngine.Stub implements HandlerCaller.Callback {
        private final HandlerCaller mCaller;
        final IWallpaperConnection mConnection;
        final Rect mDisplayPadding;
        Engine mEngine;
        final boolean mIsPreview;
        int mReqHeight;
        int mReqWidth;
        boolean mShownReported;
        final IBinder mWindowToken;
        final int mWindowType;

        public IWallpaperEngineWrapper(WallpaperService wallpaperService, IWallpaperConnection iWallpaperConnection, IBinder iBinder, int i2, boolean z2, int i3, int i4, Rect rect) {
            Rect rect2 = new Rect();
            this.mDisplayPadding = rect2;
            HandlerCaller handlerCaller = new HandlerCaller(wallpaperService, wallpaperService.getMainLooper(), this, true);
            this.mCaller = handlerCaller;
            this.mConnection = iWallpaperConnection;
            this.mWindowToken = iBinder;
            this.mWindowType = i2;
            this.mIsPreview = z2;
            this.mReqWidth = i3;
            this.mReqHeight = i4;
            rect2.set(rect);
            handlerCaller.sendMessage(handlerCaller.obtainMessage(10));
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void destroy() {
            this.mCaller.sendMessage(this.mCaller.obtainMessage(20));
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void dispatchPointer(MotionEvent motionEvent) {
            Engine engine = this.mEngine;
            if (engine != null) {
                engine.dispatchPointer(motionEvent);
            } else {
                motionEvent.recycle();
            }
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void dispatchWallpaperCommand(String str, int i2, int i3, int i4, Bundle bundle) {
            Engine engine = this.mEngine;
            if (engine != null) {
                engine.mWindow.dispatchWallpaperCommand(str, i2, i3, i4, bundle, false);
            }
        }

        @Override // com.android.internal.os.HandlerCaller.Callback
        public void executeMessage(Message message) throws Throwable {
            boolean z2 = false;
            switch (message.what) {
                case 10:
                    try {
                        this.mConnection.attachEngine(this);
                        Engine engineOnCreateEngine = WallpaperService.this.onCreateEngine();
                        this.mEngine = engineOnCreateEngine;
                        WallpaperService.this.mActiveEngines.add(engineOnCreateEngine);
                        engineOnCreateEngine.attach(this);
                        return;
                    } catch (RemoteException e2) {
                        Log.w(WallpaperService.TAG, "Wallpaper host disappeared", e2);
                        return;
                    }
                case 20:
                    WallpaperService.this.mActiveEngines.remove(this.mEngine);
                    this.mEngine.detach();
                    return;
                case 30:
                    this.mEngine.doDesiredSizeChanged(message.arg1, message.arg2);
                    return;
                case 40:
                    this.mEngine.doDisplayPaddingChanged((Rect) message.obj);
                    break;
                case 10000:
                    break;
                case 10010:
                    this.mEngine.doVisibilityChanged(message.arg1 != 0);
                    return;
                case 10020:
                    this.mEngine.doOffsetsChanged(true);
                    return;
                case 10025:
                    this.mEngine.doCommand((WallpaperCommand) message.obj);
                    return;
                case 10030:
                    boolean z3 = message.arg1 != 0;
                    this.mEngine.mOutsets.set((Rect) message.obj);
                    this.mEngine.updateSurface(true, false, z3);
                    this.mEngine.doOffsetsChanged(true);
                    return;
                case 10035:
                    return;
                case 10040:
                    MotionEvent motionEvent = (MotionEvent) message.obj;
                    if (motionEvent.getAction() == 2) {
                        synchronized (this.mEngine.mLock) {
                            Engine engine = this.mEngine;
                            if (engine.mPendingMove == motionEvent) {
                                engine.mPendingMove = null;
                            } else {
                                z2 = true;
                            }
                            break;
                        }
                    }
                    if (!z2) {
                        this.mEngine.onTouchEvent(motionEvent);
                    }
                    motionEvent.recycle();
                    return;
                case 10050:
                    IWallpaperConnection iWallpaperConnection = this.mConnection;
                    if (iWallpaperConnection == null) {
                        return;
                    }
                    try {
                        iWallpaperConnection.onWallpaperColorsChanged(this.mEngine.onComputeColors());
                        return;
                    } catch (RemoteException unused) {
                        return;
                    }
                default:
                    c.A(new StringBuilder("Unknown message type "), message.what, WallpaperService.TAG);
                    return;
            }
            this.mEngine.updateSurface(true, false, false);
        }

        public void reportShown() {
            if (this.mShownReported) {
                return;
            }
            this.mShownReported = true;
            try {
                this.mConnection.engineShown(this);
            } catch (RemoteException e2) {
                Log.w(WallpaperService.TAG, "Wallpaper host disappeared", e2);
            }
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void requestWallpaperColors() {
            this.mCaller.sendMessage(this.mCaller.obtainMessage(10050));
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void setDesiredSize(int i2, int i3) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageII(30, i2, i3));
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void setDisplayPadding(Rect rect) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageO(40, rect));
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void setVisibility(boolean z2) {
            this.mCaller.sendMessage(this.mCaller.obtainMessageI(10010, z2 ? 1 : 0));
        }
    }

    public class IWallpaperServiceWrapper extends IWallpaperService.Stub {
        private final WallpaperService mTarget;

        public IWallpaperServiceWrapper(WallpaperService wallpaperService) {
            this.mTarget = wallpaperService;
        }

        @Override // android.service.wallpaper.IWallpaperService
        public void attach(IWallpaperConnection iWallpaperConnection, IBinder iBinder, int i2, boolean z2, int i3, int i4, Rect rect) {
            WallpaperService.this.new IWallpaperEngineWrapper(this.mTarget, iWallpaperConnection, iBinder, i2, z2, i3, i4, rect);
        }
    }

    public static final class WallpaperCommand {
        String action;
        Bundle extras;
        boolean sync;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        int f186x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        int f187y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        int f188z;
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print("State of wallpaper ");
        printWriter.print(this);
        printWriter.println(SettingsStringUtil.DELIMITER);
        for (int i2 = 0; i2 < this.mActiveEngines.size(); i2++) {
            Engine engine = this.mActiveEngines.get(i2);
            printWriter.print("  Engine ");
            printWriter.print(engine);
            printWriter.println(SettingsStringUtil.DELIMITER);
            engine.dump("    ", fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return new IWallpaperServiceWrapper(this);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    public abstract Engine onCreateEngine();

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        for (int i2 = 0; i2 < this.mActiveEngines.size(); i2++) {
            this.mActiveEngines.get(i2).detach();
        }
        this.mActiveEngines.clear();
    }
}
