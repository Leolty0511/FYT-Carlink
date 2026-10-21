package android.view;

import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.util.ArraySet;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.util.FastPrintWriter;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class WindowManagerGlobal {
    public static final int ADD_APP_EXITING = -4;
    public static final int ADD_BAD_APP_TOKEN = -1;
    public static final int ADD_BAD_SUBWINDOW_TOKEN = -2;
    public static final int ADD_DUPLICATE_ADD = -5;
    public static final int ADD_FLAG_ALWAYS_CONSUME_NAV_BAR = 4;
    public static final int ADD_FLAG_APP_VISIBLE = 2;
    public static final int ADD_FLAG_IN_TOUCH_MODE = 1;
    public static final int ADD_INVALID_DISPLAY = -9;
    public static final int ADD_INVALID_TYPE = -10;
    public static final int ADD_MULTIPLE_SINGLETON = -7;
    public static final int ADD_NOT_APP_TOKEN = -3;
    public static final int ADD_OKAY = 0;
    public static final int ADD_PERMISSION_DENIED = -8;
    public static final int ADD_STARTING_NOT_NEEDED = -6;
    public static final int RELAYOUT_DEFER_SURFACE_DESTROY = 2;
    public static final int RELAYOUT_INSETS_PENDING = 1;
    public static final int RELAYOUT_RES_CONSUME_ALWAYS_NAV_BAR = 64;
    public static final int RELAYOUT_RES_DRAG_RESIZING_DOCKED = 8;
    public static final int RELAYOUT_RES_DRAG_RESIZING_FREEFORM = 16;
    public static final int RELAYOUT_RES_FIRST_TIME = 2;
    public static final int RELAYOUT_RES_IN_TOUCH_MODE = 1;
    public static final int RELAYOUT_RES_SURFACE_CHANGED = 4;
    public static final int RELAYOUT_RES_SURFACE_RESIZED = 32;
    private static final String TAG = "WindowManager";
    private static WindowManagerGlobal sDefaultWindowManager;
    private static IWindowManager sWindowManagerService;
    private static IWindowSession sWindowSession;
    private Runnable mSystemPropertyUpdater;
    private final Object mLock = new Object();
    private final ArrayList<View> mViews = new ArrayList<>();
    private final MyArrayList<ViewRootImpl> mRoots = new MyArrayList<>();
    private final ArrayList<WindowManager.LayoutParams> mParams = new ArrayList<>();
    private final ArraySet<View> mDyingViews = new ArraySet<>();

    public class MyArrayList<T> extends ArrayList<T> {
        public MyArrayList() {
        }
    }

    private WindowManagerGlobal() {
    }

    private void doTrimForeground() {
        boolean zDoTrimForeground;
        synchronized (this.mLock) {
            zDoTrimForeground = false;
            for (int size = this.mRoots.size() - 1; size >= 0; size--) {
                zDoTrimForeground |= this.mRoots.get(size).doTrimForeground();
            }
        }
        if (zDoTrimForeground) {
            return;
        }
        ThreadedRenderer.trimMemory(80);
    }

    private int findViewLocked(View view, boolean z2) {
        int iIndexOf = this.mViews.indexOf(view);
        if (!z2 || iIndexOf >= 0) {
            return iIndexOf;
        }
        throw new IllegalArgumentException("View=" + view + " not attached to window manager");
    }

    public static WindowManagerGlobal getInstance() {
        WindowManagerGlobal windowManagerGlobal;
        synchronized (WindowManagerGlobal.class) {
            if (sDefaultWindowManager == null) {
                sDefaultWindowManager = new WindowManagerGlobal();
            }
            windowManagerGlobal = sDefaultWindowManager;
        }
        return windowManagerGlobal;
    }

    public static IWindowManager getWindowManagerService() {
        IWindowManager iWindowManager;
        synchronized (WindowManagerGlobal.class) {
            if (sWindowManagerService == null) {
                IWindowManager iWindowManagerAsInterface = IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE));
                sWindowManagerService = iWindowManagerAsInterface;
                if (iWindowManagerAsInterface != null) {
                    try {
                        ValueAnimator.setDurationScale(iWindowManagerAsInterface.getCurrentAnimatorScale());
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
            iWindowManager = sWindowManagerService;
        }
        return iWindowManager;
    }

    private static String getWindowName(ViewRootImpl viewRootImpl) {
        return ((Object) viewRootImpl.mWindowAttributes.getTitle()) + "/" + viewRootImpl.getClass().getName() + '@' + Integer.toHexString(viewRootImpl.hashCode());
    }

    public static IWindowSession getWindowSession() {
        IWindowSession iWindowSession;
        synchronized (WindowManagerGlobal.class) {
            if (sWindowSession == null) {
                try {
                    InputMethodManager inputMethodManager = InputMethodManager.getInstance();
                    sWindowSession = getWindowManagerService().openSession(new IWindowSessionCallback.Stub() { // from class: android.view.WindowManagerGlobal.1
                        @Override // android.view.IWindowSessionCallback
                        public void onAnimatorScaleChanged(float f2) {
                            ValueAnimator.setDurationScale(f2);
                        }
                    }, inputMethodManager.getClient(), inputMethodManager.getInputContext());
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            iWindowSession = sWindowSession;
        }
        return iWindowSession;
    }

    public static void initialize() {
        getWindowManagerService();
    }

    public static IWindowSession peekWindowSession() {
        IWindowSession iWindowSession;
        synchronized (WindowManagerGlobal.class) {
            iWindowSession = sWindowSession;
        }
        return iWindowSession;
    }

    private void removeViewLocked(int i2, boolean z2) {
        InputMethodManager inputMethodManager;
        ViewRootImpl viewRootImpl = this.mRoots.get(i2);
        View view = viewRootImpl.getView();
        if (view != null && (inputMethodManager = InputMethodManager.getInstance()) != null) {
            inputMethodManager.windowDismissed(this.mViews.get(i2).getWindowToken());
        }
        boolean zDie = viewRootImpl.die(z2);
        if (view != null) {
            view.assignParent(null);
            if (zDie) {
                this.mDyingViews.add(view);
            }
        }
    }

    public static boolean shouldDestroyEglContext(int i2) {
        if (i2 >= 80) {
            return true;
        }
        return i2 >= 60 && !ActivityManager.isHighEndGfx();
    }

    public static void trimForeground() {
        if (ThreadedRenderer.sTrimForeground && ThreadedRenderer.isAvailable()) {
            getInstance().doTrimForeground();
        }
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams, Display display, Window window) {
        if (view == null) {
            throw new IllegalArgumentException("view must not be null");
        }
        if (display == null) {
            throw new IllegalArgumentException("display must not be null");
        }
        if (!(layoutParams instanceof WindowManager.LayoutParams)) {
            throw new IllegalArgumentException("Params must be WindowManager.LayoutParams");
        }
        WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
        if (window != null) {
            window.adjustLayoutParamsForSubWindow(layoutParams2);
        } else {
            Context context = view.getContext();
            if (context != null && (context.getApplicationInfo().flags & 536870912) != 0) {
                layoutParams2.flags |= 16777216;
            }
        }
        synchronized (this.mLock) {
            if (this.mSystemPropertyUpdater == null) {
                Runnable runnable = new Runnable() { // from class: android.view.WindowManagerGlobal.2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (WindowManagerGlobal.this.mLock) {
                            for (int size = WindowManagerGlobal.this.mRoots.size() - 1; size >= 0; size--) {
                                ((ViewRootImpl) WindowManagerGlobal.this.mRoots.get(size)).loadSystemProperties();
                            }
                        }
                    }
                };
                this.mSystemPropertyUpdater = runnable;
                SystemProperties.addChangeCallback(runnable);
            }
            int iFindViewLocked = findViewLocked(view, false);
            if (iFindViewLocked >= 0) {
                if (!this.mDyingViews.contains(view)) {
                    throw new IllegalStateException("View " + view + " has already been added to the window manager.");
                }
                this.mRoots.get(iFindViewLocked).doDie();
            }
            int i2 = layoutParams2.type;
            View view2 = null;
            if (i2 >= 1000 && i2 <= 1999) {
                int size = this.mViews.size();
                for (int i3 = 0; i3 < size; i3++) {
                    if (this.mRoots.get(i3).mWindow.asBinder() == layoutParams2.token) {
                        view2 = this.mViews.get(i3);
                    }
                }
            }
            SprdViewRootImpl sprdViewRootImpl = new SprdViewRootImpl(view.getContext(), display);
            view.setLayoutParams(layoutParams2);
            this.mViews.add(view);
            this.mRoots.add(sprdViewRootImpl);
            this.mParams.add(layoutParams2);
            try {
                sprdViewRootImpl.setView(view, layoutParams2, view2);
            } catch (RuntimeException e2) {
                if (iFindViewLocked >= 0) {
                    removeViewLocked(iFindViewLocked, true);
                }
                throw e2;
            }
        }
    }

    public void changeCanvasOpacity(IBinder iBinder, boolean z2) {
        if (iBinder == null) {
            return;
        }
        synchronized (this.mLock) {
            for (int size = this.mParams.size() - 1; size >= 0; size--) {
                if (this.mParams.get(size).token == iBinder) {
                    this.mRoots.get(size).changeCanvasOpacity(z2);
                    return;
                }
            }
        }
    }

    public void closeAll(IBinder iBinder, String str, String str2) {
        closeAllExceptView(iBinder, null, str, str2);
    }

    public void closeAllExceptView(IBinder iBinder, View view, String str, String str2) {
        synchronized (this.mLock) {
            int size = this.mViews.size();
            for (int i2 = 0; i2 < size; i2++) {
                if ((view == null || this.mViews.get(i2) != view) && (iBinder == null || this.mParams.get(i2).token == iBinder)) {
                    ViewRootImpl viewRootImpl = this.mRoots.get(i2);
                    if (str != null) {
                        WindowLeaked windowLeaked = new WindowLeaked(str2 + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + str + " has leaked window " + viewRootImpl.getView() + " that was originally added here");
                        windowLeaked.setStackTrace(viewRootImpl.getLocation().getStackTrace());
                        Log.e(TAG, "", windowLeaked);
                    }
                    removeViewLocked(i2, false);
                }
            }
        }
    }

    public void doRemoveView(ViewRootImpl viewRootImpl) {
        synchronized (this.mLock) {
            int iIndexOf = this.mRoots.indexOf(viewRootImpl);
            if (iIndexOf >= 0) {
                this.mRoots.remove(iIndexOf);
                this.mParams.remove(iIndexOf);
                this.mDyingViews.remove(this.mViews.remove(iIndexOf));
            }
        }
        if (ThreadedRenderer.sTrimForeground && ThreadedRenderer.isAvailable()) {
            doTrimForeground();
        }
    }

    public void dumpGfxInfo(FileDescriptor fileDescriptor, String[] strArr) {
        FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(fileDescriptor));
        try {
            synchronized (this.mLock) {
                int size = this.mViews.size();
                fastPrintWriter.println("Profile data in ms:");
                for (int i2 = 0; i2 < size; i2++) {
                    ViewRootImpl viewRootImpl = this.mRoots.get(i2);
                    fastPrintWriter.printf("\n\t%s (visibility=%d)", getWindowName(viewRootImpl), Integer.valueOf(viewRootImpl.getHostVisibility()));
                    ThreadedRenderer threadedRenderer = viewRootImpl.getView().mAttachInfo.mThreadedRenderer;
                    if (threadedRenderer != null) {
                        threadedRenderer.dumpGfxInfo(fastPrintWriter, fileDescriptor, strArr);
                    }
                }
                fastPrintWriter.println("\nView hierarchy:\n");
                int[] iArr = new int[2];
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < size; i5++) {
                    ViewRootImpl viewRootImpl2 = this.mRoots.get(i5);
                    viewRootImpl2.dumpGfxInfo(iArr);
                    fastPrintWriter.printf("  %s\n  %d views, %.2f kB of display lists", getWindowName(viewRootImpl2), Integer.valueOf(iArr[0]), Float.valueOf(iArr[1] / 1024.0f));
                    fastPrintWriter.printf("\n\n", new Object[0]);
                    i3 += iArr[0];
                    i4 += iArr[1];
                }
                fastPrintWriter.printf("\nTotal ViewRootImpl: %d\n", Integer.valueOf(size));
                fastPrintWriter.printf("Total Views:        %d\n", Integer.valueOf(i3));
                fastPrintWriter.printf("Total DisplayList:  %.2f kB\n\n", Float.valueOf(i4 / 1024.0f));
            }
            fastPrintWriter.flush();
        } catch (Throwable th) {
            fastPrintWriter.flush();
            throw th;
        }
    }

    public View getRootView(String str) {
        synchronized (this.mLock) {
            for (int size = this.mRoots.size() - 1; size >= 0; size--) {
                ViewRootImpl viewRootImpl = this.mRoots.get(size);
                if (str.equals(getWindowName(viewRootImpl))) {
                    return viewRootImpl.getView();
                }
            }
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0053 A[Catch: all -> 0x0061, TryCatch #0 {, blocks: (B:4:0x0008, B:6:0x0012, B:26:0x005c, B:10:0x0021, B:16:0x002e, B:18:0x0046, B:21:0x004c, B:25:0x0053, B:27:0x005f), top: B:32:0x0008 }] */
    public ArrayList<ViewRootImpl> getRootViews(IBinder iBinder) {
        boolean z2;
        ArrayList<ViewRootImpl> arrayList = new ArrayList<>();
        synchronized (this.mLock) {
            int size = this.mRoots.size();
            for (int i2 = 0; i2 < size; i2++) {
                WindowManager.LayoutParams layoutParams = this.mParams.get(i2);
                IBinder iBinder2 = layoutParams.token;
                if (iBinder2 != null) {
                    if (iBinder2 == iBinder) {
                        arrayList.add(this.mRoots.get(i2));
                    } else {
                        int i3 = layoutParams.type;
                        if (i3 < 1000 || i3 > 1999) {
                            z2 = false;
                            break;
                        }
                        int i4 = 0;
                        while (true) {
                            if (i4 >= size) {
                                z2 = false;
                                break;
                            }
                            View view = this.mViews.get(i4);
                            WindowManager.LayoutParams layoutParams2 = this.mParams.get(i4);
                            if (layoutParams.token == view.getWindowToken() && layoutParams2.token == iBinder) {
                                z2 = true;
                                break;
                            }
                            i4++;
                        }
                        if (z2) {
                            arrayList.add(this.mRoots.get(i2));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public String[] getViewRootNames() {
        String[] strArr;
        synchronized (this.mLock) {
            int size = this.mRoots.size();
            strArr = new String[size];
            for (int i2 = 0; i2 < size; i2++) {
                strArr[i2] = getWindowName(this.mRoots.get(i2));
            }
        }
        return strArr;
    }

    public View getWindowView(IBinder iBinder) {
        synchronized (this.mLock) {
            int size = this.mViews.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.mViews.get(i2);
                if (view.getWindowToken() == iBinder) {
                    return view;
                }
            }
            return null;
        }
    }

    public void removeView(View view, boolean z2) {
        if (view == null) {
            throw new IllegalArgumentException("view must not be null");
        }
        synchronized (this.mLock) {
            int iFindViewLocked = findViewLocked(view, true);
            View view2 = this.mRoots.get(iFindViewLocked).getView();
            removeViewLocked(iFindViewLocked, z2);
            if (view2 != view) {
                throw new IllegalStateException("Calling with view " + view + " but the ViewAncestor is attached to " + view2);
            }
        }
    }

    public void reportNewConfiguration(Configuration configuration) {
        synchronized (this.mLock) {
            int size = this.mViews.size();
            Configuration configuration2 = new Configuration(configuration);
            for (int i2 = 0; i2 < size; i2++) {
                this.mRoots.get(i2).requestUpdateConfiguration(configuration2);
            }
        }
    }

    public void setStoppedState(IBinder iBinder, boolean z2) {
        synchronized (this.mLock) {
            int size = this.mViews.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (iBinder == null || this.mParams.get(i2).token == iBinder) {
                    this.mRoots.get(i2).setWindowStopped(z2);
                }
            }
        }
    }

    public void trimMemory(int i2) {
        if (ThreadedRenderer.isAvailable()) {
            if (shouldDestroyEglContext(i2)) {
                synchronized (this.mLock) {
                    for (int size = this.mRoots.size() - 1; size >= 0; size--) {
                        this.mRoots.get(size).destroyHardwareResources();
                    }
                }
                i2 = 80;
            }
            ThreadedRenderer.trimMemory(i2);
            if (ThreadedRenderer.sTrimForeground) {
                doTrimForeground();
            }
        }
    }

    public void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams) {
        if (view == null) {
            throw new IllegalArgumentException("view must not be null");
        }
        if (!(layoutParams instanceof WindowManager.LayoutParams)) {
            throw new IllegalArgumentException("Params must be WindowManager.LayoutParams");
        }
        WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
        view.setLayoutParams(layoutParams2);
        synchronized (this.mLock) {
            int iFindViewLocked = findViewLocked(view, true);
            ViewRootImpl viewRootImpl = this.mRoots.get(iFindViewLocked);
            this.mParams.remove(iFindViewLocked);
            this.mParams.add(iFindViewLocked, layoutParams2);
            viewRootImpl.setLayoutParams(layoutParams2, false);
        }
    }
}
