package android.service.wallpaper;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.util.Log;
import android.view.IWindowSession;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import o.b;
import v.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class WallpaperService extends Service {
    public static final boolean DEBUG = false;
    private static final int DO_ATTACH = 10;
    private static final int DO_DETACH = 20;
    private static final int DO_SET_DESIRED_SIZE = 30;
    private static final int MSG_TOUCH_EVENT = 10040;
    private static final int MSG_UPDATE_SURFACE = 10000;
    private static final int MSG_VISIBILITY_CHANGED = 10010;
    private static final int MSG_WALLPAPER_COMMAND = 10025;
    private static final int MSG_WALLPAPER_OFFSETS = 10020;
    private static final int MSG_WINDOW_MOVED = 10035;
    private static final int MSG_WINDOW_RESIZED = 10030;
    public static final String SERVICE_INTERFACE = "android.service.wallpaper.WallpaperService";
    public static final String SERVICE_META_DATA = "android.service.wallpaper";
    public static final String TAG = "WallpaperService";
    private final ArrayList<Engine> mActiveEngines = new ArrayList<>();

    public class Engine {
        public b mCaller;
        public IWallpaperConnection mConnection;
        public boolean mCreated;
        public int mCurHeight;
        public int mCurWidth;
        public boolean mDestroyed;
        public boolean mDrawingAllowed;
        public boolean mFixedSizeAllowed;
        public int mFormat;
        public int mHeight;
        public IWallpaperEngineWrapper mIWallpaperEngine;
        public InputChannel mInputChannel;
        public WallpaperInputEventReceiver mInputEventReceiver;
        public boolean mIsCreating;
        public boolean mOffsetMessageEnqueued;
        public boolean mOffsetsChanged;
        public MotionEvent mPendingMove;
        public boolean mPendingSync;
        public float mPendingXOffset;
        public float mPendingXOffsetStep;
        public float mPendingYOffset;
        public float mPendingYOffsetStep;
        public boolean mReportedVisible;
        public IWindowSession mSession;
        public boolean mSurfaceCreated;
        public int mType;
        public boolean mVisible;
        public int mWidth;
        public IBinder mWindowToken;
        public boolean mInitializing = true;
        public boolean mScreenOn = true;
        public int mWindowFlags = 16;
        public int mWindowPrivateFlags = 4;
        public int mCurWindowFlags = 16;
        public int mCurWindowPrivateFlags = 4;
        public final Rect mVisibleInsets = new Rect();
        public final Rect mWinFrame = new Rect();
        public final Rect mOverscanInsets = new Rect();
        public final Rect mContentInsets = new Rect();
        public final Configuration mConfiguration = new Configuration();
        public final WindowManager.LayoutParams mLayout = new WindowManager.LayoutParams();
        public final Object mLock = new Object();
        public final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: android.service.wallpaper.WallpaperService.Engine.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) throws Throwable {
                if (Intent.ACTION_SCREEN_ON.equals(intent.getAction())) {
                    Engine engine = Engine.this;
                    engine.mScreenOn = true;
                    engine.reportVisibility();
                } else if (Intent.ACTION_SCREEN_OFF.equals(intent.getAction())) {
                    Engine engine2 = Engine.this;
                    engine2.mScreenOn = false;
                    engine2.reportVisibility();
                }
            }
        };
        public final c mSurfaceHolder = new c() { // from class: android.service.wallpaper.WallpaperService.Engine.2
            {
                this.mRequestedFormat = 2;
            }

            @Override // android.view.SurfaceHolder
            public boolean isCreating() {
                return Engine.this.mIsCreating;
            }

            @Override // v.c
            public boolean onAllowLockCanvas() {
                return Engine.this.mDrawingAllowed;
            }

            @Override // v.c
            public void onRelayoutContainer() {
                Engine.this.mCaller.j(Engine.this.mCaller.b(10000));
            }

            @Override // v.c
            public void onUpdateSurface() {
                Engine.this.mCaller.j(Engine.this.mCaller.b(10000));
            }

            @Override // v.c, android.view.SurfaceHolder
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
        };
        public final v.b mWindow = new v.b() { // from class: android.service.wallpaper.WallpaperService.Engine.3
            @Override // v.b, android.view.IWindow
            public void dispatchAppVisibility(boolean z2) {
                Engine engine = Engine.this;
                if (engine.mIWallpaperEngine.mIsPreview) {
                    return;
                }
                Engine.this.mCaller.j(engine.mCaller.c(WallpaperService.MSG_VISIBILITY_CHANGED, z2 ? 1 : 0));
            }

            @Override // v.b, android.view.IWindow
            public void dispatchWallpaperCommand(String str, int i2, int i3, int i4, Bundle bundle, boolean z2) {
                synchronized (Engine.this.mLock) {
                    WallpaperCommand wallpaperCommand = new WallpaperCommand();
                    wallpaperCommand.action = str;
                    wallpaperCommand.f201x = i2;
                    wallpaperCommand.f202y = i3;
                    wallpaperCommand.f203z = i4;
                    wallpaperCommand.extras = bundle;
                    wallpaperCommand.sync = z2;
                    Message messageB = Engine.this.mCaller.b(WallpaperService.MSG_WALLPAPER_COMMAND);
                    messageB.obj = wallpaperCommand;
                    Engine.this.mCaller.j(messageB);
                }
            }

            @Override // v.b, android.view.IWindow
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
                        Engine.this.mCaller.j(engine.mCaller.b(WallpaperService.MSG_WALLPAPER_OFFSETS));
                    }
                }
            }

            @Override // v.b, android.view.IWindow
            public void moved(int i2, int i3) {
                Engine.this.mCaller.j(Engine.this.mCaller.d(WallpaperService.MSG_WINDOW_MOVED, i2, i3));
            }

            @Override // v.b, android.view.IWindow
            public void resized(Rect rect, Rect rect2, Rect rect3, Rect rect4, boolean z2, Configuration configuration) {
                Engine.this.mCaller.j(Engine.this.mCaller.c(WallpaperService.MSG_WINDOW_RESIZED, z2 ? 1 : 0));
            }
        };

        public final class WallpaperInputEventReceiver extends InputEventReceiver {
            public WallpaperInputEventReceiver(InputChannel inputChannel, Looper looper) {
                super(inputChannel, looper);
            }

            @Override // android.view.InputEventReceiver
            public void onInputEvent(InputEvent inputEvent) {
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

        public Engine() {
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
            this.mCaller.j(this.mCaller.g(WallpaperService.MSG_TOUCH_EVENT, motionEvent));
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
            this.mScreenOn = ((PowerManager) WallpaperService.this.getSystemService(Context.POWER_SERVICE)).isScreenOn();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(Intent.ACTION_SCREEN_ON);
            intentFilter.addAction(Intent.ACTION_SCREEN_OFF);
            WallpaperService.this.registerReceiver(this.mReceiver, intentFilter);
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
            if (this.mVisible) {
                this.mVisible = false;
                onVisibilityChanged(false);
            }
            reportSurfaceDestroyed();
            onDestroy();
            WallpaperService.this.unregisterReceiver(this.mReceiver);
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
            Bundle bundleOnCommand = !this.mDestroyed ? onCommand(wallpaperCommand.action, wallpaperCommand.f201x, wallpaperCommand.f202y, wallpaperCommand.f203z, wallpaperCommand.extras, wallpaperCommand.sync) : null;
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
            printWriter.println(this.mDestroyed);
            printWriter.print(str);
            printWriter.print("mVisible=");
            printWriter.print(this.mVisible);
            printWriter.print(" mScreenOn=");
            printWriter.print(this.mScreenOn);
            printWriter.print(" mReportedVisible=");
            printWriter.println(this.mReportedVisible);
            printWriter.print(str);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mSurfaceCreated=");
            printWriter.print(this.mSurfaceCreated);
            printWriter.print(" mIsCreating=");
            printWriter.print(this.mIsCreating);
            printWriter.print(" mDrawingAllowed=");
            printWriter.println(this.mDrawingAllowed);
            printWriter.print(str);
            printWriter.print("mWidth=");
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
            printWriter.print(" mWindowPrivateFlags=");
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
            printWriter.println(this.mConfiguration);
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

        public Bundle onCommand(String str, int i2, int i3, int i4, Bundle bundle, boolean z2) {
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

        public void reportVisibility() throws Throwable {
            if (this.mDestroyed) {
                return;
            }
            boolean z2 = this.mVisible && this.mScreenOn;
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
            if (this.mDestroyed) {
                Log.w(WallpaperService.TAG, "Ignoring updateSurface: destroyed");
            }
            int requestedWidth = this.mSurfaceHolder.getRequestedWidth();
            if (requestedWidth <= 0) {
                requestedWidth = -1;
            }
            int requestedHeight = this.mSurfaceHolder.getRequestedHeight();
            int i2 = requestedHeight > 0 ? requestedHeight : -1;
            boolean z9 = !this.mCreated;
            boolean z10 = !this.mSurfaceCreated;
            boolean z11 = this.mFormat != this.mSurfaceHolder.getRequestedFormat();
            boolean z12 = (this.mWidth == requestedWidth && this.mHeight == i2) ? false : true;
            boolean z13 = this.mType != this.mSurfaceHolder.getRequestedType();
            boolean z14 = (this.mCurWindowFlags == this.mWindowFlags && this.mCurWindowPrivateFlags == this.mWindowPrivateFlags) ? false : true;
            if (!z2 && !z9 && !z10 && !z11 && !z12 && !z13 && !z14 && !z4 && this.mIWallpaperEngine.mShownReported) {
                return;
            }
            try {
                this.mWidth = requestedWidth;
                this.mHeight = i2;
                this.mFormat = this.mSurfaceHolder.getRequestedFormat();
                int requestedType = this.mSurfaceHolder.getRequestedType();
                this.mType = requestedType;
                WindowManager.LayoutParams layoutParams = this.mLayout;
                layoutParams.f206x = 0;
                layoutParams.f207y = 0;
                layoutParams.width = requestedWidth;
                layoutParams.height = i2;
                layoutParams.format = this.mFormat;
                int i3 = this.mWindowFlags;
                this.mCurWindowFlags = i3;
                layoutParams.flags = i3 | 512 | 256 | 8;
                int i4 = this.mWindowPrivateFlags;
                this.mCurWindowPrivateFlags = i4;
                layoutParams.privateFlags = i4;
                layoutParams.memoryType = requestedType;
                layoutParams.token = this.mWindowToken;
                if (!this.mCreated) {
                    layoutParams.type = this.mIWallpaperEngine.mWindowType;
                    layoutParams.gravity = 8388659;
                    layoutParams.setTitle(WallpaperService.this.getClass().getName());
                    this.mLayout.windowAnimations = 16974326;
                    InputChannel inputChannel = new InputChannel();
                    this.mInputChannel = inputChannel;
                    IWindowSession iWindowSession = this.mSession;
                    v.b bVar = this.mWindow;
                    if (iWindowSession.addToDisplay(bVar, bVar.mSeq, this.mLayout, 0, 0, this.mContentInsets, inputChannel) < 0) {
                        Log.w(WallpaperService.TAG, "Failed to add window while updating wallpaper surface.");
                        return;
                    } else {
                        this.mCreated = true;
                        this.mInputEventReceiver = new WallpaperInputEventReceiver(this.mInputChannel, Looper.myLooper());
                    }
                }
                this.mSurfaceHolder.mSurfaceLock.lock();
                this.mDrawingAllowed = true;
                IWindowSession iWindowSession2 = this.mSession;
                v.b bVar2 = this.mWindow;
                boolean z15 = z12;
                int iRelayout = iWindowSession2.relayout(bVar2, bVar2.mSeq, this.mLayout, this.mWidth, this.mHeight, 0, 0, this.mWinFrame, this.mOverscanInsets, this.mContentInsets, this.mVisibleInsets, this.mConfiguration, this.mSurfaceHolder.mSurface);
                int iWidth = this.mWinFrame.width();
                if (this.mCurWidth != iWidth) {
                    this.mCurWidth = iWidth;
                    z5 = true;
                } else {
                    z5 = z15;
                }
                int iHeight = this.mWinFrame.height();
                if (this.mCurHeight != iHeight) {
                    this.mCurHeight = iHeight;
                    z5 = true;
                }
                this.mSurfaceHolder.setSurfaceFrameSize(iWidth, iHeight);
                this.mSurfaceHolder.mSurfaceLock.unlock();
                if (!this.mSurfaceHolder.mSurface.isValid()) {
                    reportSurfaceDestroyed();
                    return;
                }
                try {
                    this.mSurfaceHolder.ungetCallbacks();
                    if (z10) {
                        this.mIsCreating = true;
                        onSurfaceCreated(this.mSurfaceHolder);
                        SurfaceHolder.Callback[] callbacks = this.mSurfaceHolder.getCallbacks();
                        if (callbacks != null) {
                            for (SurfaceHolder.Callback callback : callbacks) {
                                callback.surfaceCreated(this.mSurfaceHolder);
                            }
                        }
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z6 = z4 | (z9 || (iRelayout & 2) != 0);
                    if (z3 || z9 || z10 || z11 || z5) {
                        try {
                            onSurfaceChanged(this.mSurfaceHolder, this.mFormat, this.mCurWidth, this.mCurHeight);
                            SurfaceHolder.Callback[] callbacks2 = this.mSurfaceHolder.getCallbacks();
                            if (callbacks2 != null) {
                                for (SurfaceHolder.Callback callback2 : callbacks2) {
                                    callback2.surfaceChanged(this.mSurfaceHolder, this.mFormat, this.mCurWidth, this.mCurHeight);
                                }
                            }
                            z7 = true;
                        } catch (Throwable th) {
                            th = th;
                            this.mIsCreating = false;
                            this.mSurfaceCreated = true;
                            if (z6) {
                                this.mSession.finishDrawing(this.mWindow);
                            }
                            this.mIWallpaperEngine.reportShown();
                            throw th;
                        }
                    }
                    if (z6) {
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
                    if (!z7 || this.mReportedVisible) {
                        z8 = false;
                    } else {
                        if (this.mIsCreating) {
                            onVisibilityChanged(true);
                        }
                        z8 = false;
                        onVisibilityChanged(false);
                    }
                    this.mIsCreating = z8;
                    this.mSurfaceCreated = true;
                    if (z6) {
                        this.mSession.finishDrawing(this.mWindow);
                    }
                    this.mIWallpaperEngine.reportShown();
                } catch (Throwable th2) {
                    th = th2;
                    z6 = z4;
                }
            } catch (RemoteException unused) {
            }
        }
    }

    public class IWallpaperEngineWrapper extends IWallpaperEngine.Stub implements b.a {
        private final b mCaller;
        public final IWallpaperConnection mConnection;
        public Engine mEngine;
        public final boolean mIsPreview;
        public int mReqHeight;
        public int mReqWidth;
        public boolean mShownReported;
        public final IBinder mWindowToken;
        public final int mWindowType;

        public IWallpaperEngineWrapper(WallpaperService wallpaperService, IWallpaperConnection iWallpaperConnection, IBinder iBinder, int i2, boolean z2, int i3, int i4) {
            b bVar = new b(wallpaperService, wallpaperService.getMainLooper(), this, true);
            this.mCaller = bVar;
            this.mConnection = iWallpaperConnection;
            this.mWindowToken = iBinder;
            this.mWindowType = i2;
            this.mIsPreview = z2;
            this.mReqWidth = i3;
            this.mReqHeight = i4;
            bVar.j(bVar.b(10));
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void destroy() {
            this.mCaller.j(this.mCaller.b(20));
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

        @Override // o.b.a
        public void executeMessage(Message message) throws Throwable {
            int i2 = message.what;
            if (i2 == 10) {
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
            }
            if (i2 == 20) {
                WallpaperService.this.mActiveEngines.remove(this.mEngine);
                this.mEngine.detach();
                return;
            }
            if (i2 == 30) {
                this.mEngine.doDesiredSizeChanged(message.arg1, message.arg2);
                return;
            }
            boolean z2 = false;
            if (i2 == 10000) {
                this.mEngine.updateSurface(true, false, false);
                return;
            }
            if (i2 == WallpaperService.MSG_VISIBILITY_CHANGED) {
                this.mEngine.doVisibilityChanged(message.arg1 != 0);
                return;
            }
            if (i2 == WallpaperService.MSG_WALLPAPER_OFFSETS) {
                this.mEngine.doOffsetsChanged(true);
                return;
            }
            if (i2 == WallpaperService.MSG_WALLPAPER_COMMAND) {
                this.mEngine.doCommand((WallpaperCommand) message.obj);
                return;
            }
            if (i2 == WallpaperService.MSG_WINDOW_RESIZED) {
                this.mEngine.updateSurface(true, false, message.arg1 != 0);
                this.mEngine.doOffsetsChanged(true);
                return;
            }
            if (i2 != WallpaperService.MSG_WINDOW_MOVED) {
                if (i2 != WallpaperService.MSG_TOUCH_EVENT) {
                    Log.w(WallpaperService.TAG, "Unknown message type " + message.what);
                    return;
                }
                MotionEvent motionEvent = (MotionEvent) message.obj;
                if (motionEvent.getAction() == 2) {
                    synchronized (this.mEngine.mLock) {
                        Engine engine = this.mEngine;
                        if (engine.mPendingMove == motionEvent) {
                            engine.mPendingMove = null;
                        } else {
                            z2 = true;
                        }
                    }
                }
                if (!z2) {
                    this.mEngine.onTouchEvent(motionEvent);
                }
                motionEvent.recycle();
            }
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
        public void setDesiredSize(int i2, int i3) {
            this.mCaller.j(this.mCaller.d(30, i2, i3));
        }

        @Override // android.service.wallpaper.IWallpaperEngine
        public void setVisibility(boolean z2) {
            this.mCaller.j(this.mCaller.c(WallpaperService.MSG_VISIBILITY_CHANGED, z2 ? 1 : 0));
        }
    }

    public class IWallpaperServiceWrapper extends IWallpaperService.Stub {
        private final WallpaperService mTarget;

        public IWallpaperServiceWrapper(WallpaperService wallpaperService) {
            this.mTarget = wallpaperService;
        }

        @Override // android.service.wallpaper.IWallpaperService
        public void attach(IWallpaperConnection iWallpaperConnection, IBinder iBinder, int i2, boolean z2, int i3, int i4) {
            WallpaperService.this.new IWallpaperEngineWrapper(this.mTarget, iWallpaperConnection, iBinder, i2, z2, i3, i4);
        }
    }

    public static final class WallpaperCommand {
        public String action;
        public Bundle extras;
        public boolean sync;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f201x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f202y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f203z;
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print("State of wallpaper ");
        printWriter.print(this);
        printWriter.println(":");
        for (int i2 = 0; i2 < this.mActiveEngines.size(); i2++) {
            Engine engine = this.mActiveEngines.get(i2);
            printWriter.print("  Engine ");
            printWriter.print(engine);
            printWriter.println(":");
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
