package android.service.dreams;

import android.app.Service;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.ServiceManager;
import android.util.Slog;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityEvent;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p.b;

/* JADX INFO: loaded from: classes.dex */
public class DreamService extends Service implements Window.Callback {
    public static final String DREAM_META_DATA = "android.service.dream";
    public static final String DREAM_SERVICE = "dreams";
    public static final String SERVICE_INTERFACE = "android.service.dreams.DreamService";
    private boolean mFinished;
    private IDreamManager mSandman;
    private Window mWindow;
    private WindowManager mWindowManager;
    private IBinder mWindowToken;
    private final String TAG = DreamService.class.getSimpleName() + "[" + getClass().getSimpleName() + "]";
    private final Handler mHandler = new Handler();
    private boolean mInteractive = false;
    private boolean mLowProfile = true;
    private boolean mFullscreen = false;
    private boolean mScreenBright = true;
    private boolean mDebug = false;

    public class DreamServiceWrapper extends IDreamService.Stub {
        private DreamServiceWrapper() {
        }

        @Override // android.service.dreams.IDreamService
        public void attach(final IBinder iBinder) {
            DreamService.this.mHandler.post(new Runnable() { // from class: android.service.dreams.DreamService.DreamServiceWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    DreamService.this.attach(iBinder);
                }
            });
        }

        @Override // android.service.dreams.IDreamService
        public void detach() {
            DreamService.this.mHandler.post(new Runnable() { // from class: android.service.dreams.DreamService.DreamServiceWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    DreamService.this.detach();
                }
            });
        }
    }

    private int applyFlags(int i2, int i3, int i4) {
        return (i2 & (~i4)) | (i3 & i4);
    }

    private void applySystemUiVisibilityFlags(int i2, int i3) {
        Window window = this.mWindow;
        View decorView = window == null ? null : window.getDecorView();
        if (decorView != null) {
            decorView.setSystemUiVisibility(applyFlags(decorView.getSystemUiVisibility(), i2, i3));
        }
    }

    private void applyWindowFlags(int i2, int i3) {
        Window window = this.mWindow;
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags = applyFlags(attributes.flags, i2, i3);
            this.mWindow.setAttributes(attributes);
            this.mWindowManager.updateViewLayout(this.mWindow.getDecorView(), attributes);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void attach(IBinder iBinder) {
        if (this.mWindowToken != null) {
            Slog.e(this.TAG, "attach() called when already attached with token=" + this.mWindowToken);
            return;
        }
        if (this.mDebug) {
            Slog.v(this.TAG, "Attached on thread " + Thread.currentThread().getId());
        }
        if (this.mSandman == null) {
            loadSandman();
        }
        this.mWindowToken = iBinder;
        Window windowC = b.c(this);
        this.mWindow = windowC;
        windowC.setCallback(this);
        this.mWindow.requestFeature(1);
        this.mWindow.setBackgroundDrawable(new ColorDrawable(-16777216));
        this.mWindow.setFormat(-1);
        if (this.mDebug) {
            Slog.v(this.TAG, String.format("Attaching window token: %s to window of type %s", iBinder, Integer.valueOf(WindowManager.LayoutParams.TYPE_DREAM)));
        }
        WindowManager.LayoutParams attributes = this.mWindow.getAttributes();
        attributes.type = WindowManager.LayoutParams.TYPE_DREAM;
        attributes.token = iBinder;
        attributes.windowAnimations = 16974331;
        attributes.flags |= 4784385 | (this.mFullscreen ? 1024 : 0) | (this.mScreenBright ? 128 : 0);
        this.mWindow.setAttributes(attributes);
        if (this.mDebug) {
            Slog.v(this.TAG, "Created and attached window: " + this.mWindow);
        }
        this.mWindow.setWindowManager(null, iBinder, "dream", true);
        this.mWindowManager = this.mWindow.getWindowManager();
        if (this.mDebug) {
            Slog.v(this.TAG, "Window added on thread " + Thread.currentThread().getId());
        }
        try {
            applySystemUiVisibilityFlags(this.mLowProfile ? 1 : 0, 1);
            getWindowManager().addView(this.mWindow.getDecorView(), this.mWindow.getAttributes());
            this.mHandler.post(new Runnable() { // from class: android.service.dreams.DreamService.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        DreamService.this.onDreamingStarted();
                    } catch (Throwable th) {
                        Slog.w(DreamService.this.TAG, "Crashed in onDreamingStarted()", th);
                        DreamService.this.safelyFinish();
                    }
                }
            });
        } catch (Throwable th) {
            Slog.w(this.TAG, "Crashed adding window view", th);
            safelyFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void detach() {
        if (this.mWindow == null) {
            return;
        }
        try {
            onDreamingStopped();
        } catch (Throwable th) {
            Slog.w(this.TAG, "Crashed in onDreamingStopped()", th);
        }
        if (this.mDebug) {
            Slog.v(this.TAG, "detach(): Removing window from window manager");
        }
        try {
            this.mWindowManager.removeViewImmediate(this.mWindow.getDecorView());
            WindowManagerGlobal.getInstance().closeAll(this.mWindowToken, getClass().getName(), "Dream");
        } catch (Throwable th2) {
            Slog.w(this.TAG, "Crashed removing window view", th2);
        }
        this.mWindow = null;
        this.mWindowToken = null;
    }

    private void finishInternal() {
        if (this.mDebug) {
            Slog.v(this.TAG, "finishInternal() mFinished = " + this.mFinished);
        }
        if (this.mFinished) {
            return;
        }
        try {
            this.mFinished = true;
            IDreamManager iDreamManager = this.mSandman;
            if (iDreamManager != null) {
                iDreamManager.finishSelf(this.mWindowToken);
            } else {
                Slog.w(this.TAG, "No dream manager found");
            }
            stopSelf();
        } catch (Throwable th) {
            Slog.w(this.TAG, "Crashed in finishInternal()", th);
        }
    }

    private boolean getSystemUiVisibilityFlagValue(int i2, boolean z2) {
        Window window = this.mWindow;
        View decorView = window == null ? null : window.getDecorView();
        if (decorView == null) {
            return z2;
        }
        return (i2 & decorView.getSystemUiVisibility()) != 0;
    }

    private boolean getWindowFlagValue(int i2, boolean z2) {
        Window window = this.mWindow;
        if (window == null) {
            return z2;
        }
        return (i2 & window.getAttributes().flags) != 0;
    }

    private void loadSandman() {
        this.mSandman = IDreamManager.Stub.asInterface(ServiceManager.getService(DREAM_SERVICE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safelyFinish() {
        if (this.mDebug) {
            Slog.v(this.TAG, "safelyFinish()");
        }
        try {
            finish();
            if (this.mFinished) {
                return;
            }
            Slog.w(this.TAG, "Bad dream, did not call super.finish()");
            finishInternal();
        } catch (Throwable th) {
            Slog.w(this.TAG, "Crashed in safelyFinish()", th);
            finishInternal();
        }
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getWindow().addContentView(view, layoutParams);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if (this.mInteractive) {
            return this.mWindow.superDispatchGenericMotionEvent(motionEvent);
        }
        if (this.mDebug) {
            Slog.v(this.TAG, "Finishing on genericMotionEvent");
        }
        safelyFinish();
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.mInteractive) {
            if (this.mDebug) {
                Slog.v(this.TAG, "Finishing on keyEvent");
            }
            safelyFinish();
            return true;
        }
        if (keyEvent.getKeyCode() != 4) {
            return this.mWindow.superDispatchKeyEvent(keyEvent);
        }
        if (this.mDebug) {
            Slog.v(this.TAG, "Finishing on back key");
        }
        safelyFinish();
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (this.mInteractive) {
            return this.mWindow.superDispatchKeyShortcutEvent(keyEvent);
        }
        if (this.mDebug) {
            Slog.v(this.TAG, "Finishing on keyShortcutEvent");
        }
        safelyFinish();
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mInteractive) {
            return this.mWindow.superDispatchTouchEvent(motionEvent);
        }
        if (this.mDebug) {
            Slog.v(this.TAG, "Finishing on touchEvent");
        }
        safelyFinish();
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        if (this.mInteractive) {
            return this.mWindow.superDispatchTrackballEvent(motionEvent);
        }
        if (this.mDebug) {
            Slog.v(this.TAG, "Finishing on trackballEvent");
        }
        safelyFinish();
        return true;
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(fileDescriptor, printWriter, strArr);
        printWriter.print(this.TAG + ": ");
        if (this.mWindowToken == null) {
            printWriter.println("stopped");
        } else {
            printWriter.println("running (token=" + this.mWindowToken + ")");
        }
        printWriter.println("  window: " + this.mWindow);
        printWriter.print("  flags:");
        if (isInteractive()) {
            printWriter.print(" interactive");
        }
        if (isLowProfile()) {
            printWriter.print(" lowprofile");
        }
        if (isFullscreen()) {
            printWriter.print(" fullscreen");
        }
        if (isScreenBright()) {
            printWriter.print(" bright");
        }
        printWriter.println();
    }

    public View findViewById(int i2) {
        return getWindow().findViewById(i2);
    }

    public final void finish() {
        if (this.mDebug) {
            Slog.v(this.TAG, "finish()");
        }
        finishInternal();
    }

    public Window getWindow() {
        return this.mWindow;
    }

    public WindowManager getWindowManager() {
        return this.mWindowManager;
    }

    public boolean isFullscreen() {
        return this.mFullscreen;
    }

    public boolean isInteractive() {
        return this.mInteractive;
    }

    public boolean isLowProfile() {
        return getSystemUiVisibilityFlagValue(1, this.mLowProfile);
    }

    public boolean isScreenBright() {
        return getWindowFlagValue(128, this.mScreenBright);
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if (this.mDebug) {
            Slog.v(this.TAG, "onBind() intent = " + intent);
        }
        return new DreamServiceWrapper();
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
    }

    @Override // android.app.Service
    public void onCreate() {
        if (this.mDebug) {
            Slog.v(this.TAG, "onCreate() on thread " + Thread.currentThread().getId());
        }
        super.onCreate();
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, Menu menu) {
        return false;
    }

    @Override // android.view.Window.Callback
    public View onCreatePanelView(int i2) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (this.mDebug) {
            Slog.v(this.TAG, "onDestroy()");
        }
        detach();
        super.onDestroy();
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
    }

    public void onDreamingStarted() {
        if (this.mDebug) {
            Slog.v(this.TAG, "onDreamingStarted()");
        }
    }

    public void onDreamingStopped() {
        if (this.mDebug) {
            Slog.v(this.TAG, "onDreamingStopped()");
        }
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        return false;
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        return false;
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i2, View view, Menu menu) {
        return false;
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        return false;
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }

    public void setContentView(int i2) {
        getWindow().setContentView(i2);
    }

    public void setDebug(boolean z2) {
        this.mDebug = z2;
    }

    public void setFullscreen(boolean z2) {
        this.mFullscreen = z2;
        applyWindowFlags(z2 ? 1024 : 0, 1024);
    }

    public void setInteractive(boolean z2) {
        this.mInteractive = z2;
    }

    public void setLowProfile(boolean z2) {
        this.mLowProfile = z2;
        applySystemUiVisibilityFlags(z2 ? 1 : 0, 1);
    }

    public void setScreenBright(boolean z2) {
        this.mScreenBright = z2;
        applyWindowFlags(z2 ? 128 : 0, 128);
    }

    public void setContentView(View view) {
        getWindow().setContentView(view);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getWindow().setContentView(view, layoutParams);
    }
}
