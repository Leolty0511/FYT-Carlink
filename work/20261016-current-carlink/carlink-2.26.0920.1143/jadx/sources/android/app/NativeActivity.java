package android.app;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.MessageQueue;
import android.util.AttributeSet;
import android.view.InputQueue;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import dalvik.system.BaseDexClassLoader;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class NativeActivity extends Activity implements SurfaceHolder.Callback2, InputQueue.Callback, ViewTreeObserver.OnGlobalLayoutListener {
    private static final String KEY_NATIVE_SAVED_STATE = "android:native_state";
    public static final String META_DATA_FUNC_NAME = "android.app.func_name";
    public static final String META_DATA_LIB_NAME = "android.app.lib_name";
    private InputQueue mCurInputQueue;
    private SurfaceHolder mCurSurfaceHolder;
    private boolean mDestroyed;
    private boolean mDispatchingUnhandledKey;
    private InputMethodManager mIMM;
    int mLastContentHeight;
    int mLastContentWidth;
    int mLastContentX;
    int mLastContentY;
    final int[] mLocation = new int[2];
    private NativeContentView mNativeContentView;
    private long mNativeHandle;

    public static class NativeContentView extends View {
        NativeActivity mActivity;

        public NativeContentView(Context context) {
            super(context);
        }

        public NativeContentView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    private static String getAbsolutePath(File file) {
        if (file != null) {
            return file.getAbsolutePath();
        }
        return null;
    }

    private native String getDlError();

    private native long loadNativeCode(String str, String str2, MessageQueue messageQueue, String str3, String str4, String str5, int i2, AssetManager assetManager, byte[] bArr, ClassLoader classLoader, String str6);

    private native void onConfigurationChangedNative(long j2);

    private native void onContentRectChangedNative(long j2, int i2, int i3, int i4, int i5);

    private native void onInputQueueCreatedNative(long j2, long j3);

    private native void onInputQueueDestroyedNative(long j2, long j3);

    private native void onLowMemoryNative(long j2);

    private native void onPauseNative(long j2);

    private native void onResumeNative(long j2);

    private native byte[] onSaveInstanceStateNative(long j2);

    private native void onStartNative(long j2);

    private native void onStopNative(long j2);

    private native void onSurfaceChangedNative(long j2, Surface surface, int i2, int i3, int i4);

    private native void onSurfaceCreatedNative(long j2, Surface surface);

    private native void onSurfaceDestroyedNative(long j2);

    private native void onSurfaceRedrawNeededNative(long j2, Surface surface);

    private native void onWindowFocusChangedNative(long j2, boolean z2);

    private native void unloadNativeCode(long j2);

    public void hideIme(int i2) {
        this.mIMM.hideSoftInputFromWindow(this.mNativeContentView.getWindowToken(), i2);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mDestroyed) {
            return;
        }
        onConfigurationChangedNative(this.mNativeHandle);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mIMM = (InputMethodManager) getSystemService(InputMethodManager.class);
        getWindow().takeSurface(this);
        getWindow().takeInputQueue(this);
        getWindow().setFormat(4);
        getWindow().setSoftInputMode(16);
        NativeContentView nativeContentView = new NativeContentView(this);
        this.mNativeContentView = nativeContentView;
        nativeContentView.mActivity = this;
        setContentView(nativeContentView);
        this.mNativeContentView.requestFocus();
        this.mNativeContentView.getViewTreeObserver().addOnGlobalLayoutListener(this);
        try {
            ActivityInfo activityInfo = getPackageManager().getActivityInfo(getIntent().getComponent(), 128);
            Bundle bundle2 = activityInfo.metaData;
            String str = "main";
            String str2 = "ANativeActivity_onCreate";
            if (bundle2 != null) {
                String string = bundle2.getString(META_DATA_LIB_NAME);
                str = string != null ? string : "main";
                String string2 = activityInfo.metaData.getString(META_DATA_FUNC_NAME);
                if (string2 != null) {
                    str2 = string2;
                }
            }
            BaseDexClassLoader baseDexClassLoader = (BaseDexClassLoader) getClassLoader();
            String strFindLibrary = baseDexClassLoader.findLibrary(str);
            if (strFindLibrary == null) {
                StringBuilder sbV = android.accessibilityservice.c.v("Unable to find native library ", str, " using classloader: ");
                sbV.append(baseDexClassLoader.toString());
                throw new IllegalArgumentException(sbV.toString());
            }
            long jLoadNativeCode = loadNativeCode(strFindLibrary, str2, Looper.myQueue(), getAbsolutePath(getFilesDir()), getAbsolutePath(getObbDir()), getAbsolutePath(getExternalFilesDir(null)), Build.VERSION.SDK_INT, getAssets(), bundle != null ? bundle.getByteArray(KEY_NATIVE_SAVED_STATE) : null, baseDexClassLoader, baseDexClassLoader.getLdLibraryPath());
            this.mNativeHandle = jLoadNativeCode;
            if (jLoadNativeCode != 0) {
                super.onCreate(bundle);
            } else {
                StringBuilder sbV2 = android.accessibilityservice.c.v("Unable to load native library \"", strFindLibrary, "\": ");
                sbV2.append(getDlError());
                throw new UnsatisfiedLinkError(sbV2.toString());
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException("Error getting activity info", e2);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.mDestroyed = true;
        if (this.mCurSurfaceHolder != null) {
            onSurfaceDestroyedNative(this.mNativeHandle);
            this.mCurSurfaceHolder = null;
        }
        InputQueue inputQueue = this.mCurInputQueue;
        if (inputQueue != null) {
            onInputQueueDestroyedNative(this.mNativeHandle, inputQueue.getNativePtr());
            this.mCurInputQueue = null;
        }
        unloadNativeCode(this.mNativeHandle);
        super.onDestroy();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.mNativeContentView.getLocationInWindow(this.mLocation);
        int width = this.mNativeContentView.getWidth();
        int height = this.mNativeContentView.getHeight();
        int[] iArr = this.mLocation;
        int i2 = iArr[0];
        if (i2 == this.mLastContentX && iArr[1] == this.mLastContentY && width == this.mLastContentWidth && height == this.mLastContentHeight) {
            return;
        }
        this.mLastContentX = i2;
        int i3 = iArr[1];
        this.mLastContentY = i3;
        this.mLastContentWidth = width;
        this.mLastContentHeight = height;
        if (this.mDestroyed) {
            return;
        }
        onContentRectChangedNative(this.mNativeHandle, i2, i3, width, height);
    }

    @Override // android.view.InputQueue.Callback
    public void onInputQueueCreated(InputQueue inputQueue) {
        if (this.mDestroyed) {
            return;
        }
        this.mCurInputQueue = inputQueue;
        onInputQueueCreatedNative(this.mNativeHandle, inputQueue.getNativePtr());
    }

    @Override // android.view.InputQueue.Callback
    public void onInputQueueDestroyed(InputQueue inputQueue) {
        if (this.mDestroyed) {
            return;
        }
        onInputQueueDestroyedNative(this.mNativeHandle, inputQueue.getNativePtr());
        this.mCurInputQueue = null;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        if (this.mDestroyed) {
            return;
        }
        onLowMemoryNative(this.mNativeHandle);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        onPauseNative(this.mNativeHandle);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        onResumeNative(this.mNativeHandle);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        byte[] bArrOnSaveInstanceStateNative = onSaveInstanceStateNative(this.mNativeHandle);
        if (bArrOnSaveInstanceStateNative != null) {
            bundle.putByteArray(KEY_NATIVE_SAVED_STATE, bArrOnSaveInstanceStateNative);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        onStartNative(this.mNativeHandle);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        onStopNative(this.mNativeHandle);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (this.mDestroyed) {
            return;
        }
        onWindowFocusChangedNative(this.mNativeHandle, z2);
    }

    public void setWindowFlags(int i2, int i3) {
        getWindow().setFlags(i2, i3);
    }

    public void setWindowFormat(int i2) {
        getWindow().setFormat(i2);
    }

    public void showIme(int i2) {
        this.mIMM.showSoftInput(this.mNativeContentView, i2);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        if (this.mDestroyed) {
            return;
        }
        this.mCurSurfaceHolder = surfaceHolder;
        onSurfaceChangedNative(this.mNativeHandle, surfaceHolder.getSurface(), i2, i3, i4);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.mDestroyed) {
            return;
        }
        this.mCurSurfaceHolder = surfaceHolder;
        onSurfaceCreatedNative(this.mNativeHandle, surfaceHolder.getSurface());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mCurSurfaceHolder = null;
        if (this.mDestroyed) {
            return;
        }
        onSurfaceDestroyedNative(this.mNativeHandle);
    }

    @Override // android.view.SurfaceHolder.Callback2
    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
        if (this.mDestroyed) {
            return;
        }
        this.mCurSurfaceHolder = surfaceHolder;
        onSurfaceRedrawNeededNative(this.mNativeHandle, surfaceHolder.getSurface());
    }

    @Override // android.view.SurfaceHolder.Callback2
    public final /* synthetic */ void surfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, Runnable runnable) {
        android.view.d.a(this, surfaceHolder, runnable);
    }
}
