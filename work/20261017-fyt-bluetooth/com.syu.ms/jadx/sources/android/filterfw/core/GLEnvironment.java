package android.filterfw.core;

import android.graphics.SurfaceTexture;
import android.media.MediaRecorder;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public class GLEnvironment {
    private int glEnvId;
    private boolean mManageContext = true;

    static {
        System.loadLibrary("filterfw");
    }

    public GLEnvironment() {
        nativeAllocate();
    }

    public static boolean isAnyContextActive() {
        return nativeIsAnyContextActive();
    }

    private native boolean nativeActivate();

    private native boolean nativeActivateSurfaceId(int i2);

    private native int nativeAddSurface(Surface surface);

    private native int nativeAddSurfaceFromMediaRecorder(MediaRecorder mediaRecorder);

    private native int nativeAddSurfaceWidthHeight(Surface surface, int i2, int i3);

    private native boolean nativeAllocate();

    private native boolean nativeDeactivate();

    private native boolean nativeDeallocate();

    private native boolean nativeDisconnectSurfaceMediaSource(MediaRecorder mediaRecorder);

    private native boolean nativeInitWithCurrentContext();

    private native boolean nativeInitWithNewContext();

    private native boolean nativeIsActive();

    private static native boolean nativeIsAnyContextActive();

    private native boolean nativeIsContextActive();

    private native boolean nativeRemoveSurfaceId(int i2);

    private native boolean nativeSetSurfaceTimestamp(long j2);

    private native boolean nativeSwapBuffers();

    public void activate() {
        if (Looper.myLooper() != null && Looper.myLooper().equals(Looper.getMainLooper())) {
            Log.e("FilterFramework", "Activating GL context in UI thread!");
        }
        if (this.mManageContext && !nativeActivate()) {
            throw new RuntimeException("Could not activate GLEnvironment!");
        }
    }

    public void activateSurfaceWithId(int i2) {
        if (nativeActivateSurfaceId(i2)) {
            return;
        }
        throw new RuntimeException("Could not activate surface " + i2 + "!");
    }

    public void deactivate() {
        if (this.mManageContext && !nativeDeactivate()) {
            throw new RuntimeException("Could not deactivate GLEnvironment!");
        }
    }

    public void finalize() {
        tearDown();
    }

    public void initWithCurrentContext() {
        this.mManageContext = false;
        if (!nativeInitWithCurrentContext()) {
            throw new RuntimeException("Could not initialize GLEnvironment with current context!");
        }
    }

    public void initWithNewContext() {
        this.mManageContext = true;
        if (!nativeInitWithNewContext()) {
            throw new RuntimeException("Could not initialize GLEnvironment with new context!");
        }
    }

    public boolean isActive() {
        return nativeIsActive();
    }

    public boolean isContextActive() {
        return nativeIsContextActive();
    }

    public int registerSurface(Surface surface) {
        int iNativeAddSurface = nativeAddSurface(surface);
        if (iNativeAddSurface >= 0) {
            return iNativeAddSurface;
        }
        throw new RuntimeException("Error registering surface " + surface + "!");
    }

    public int registerSurfaceFromMediaRecorder(MediaRecorder mediaRecorder) {
        int iNativeAddSurfaceFromMediaRecorder = nativeAddSurfaceFromMediaRecorder(mediaRecorder);
        if (iNativeAddSurfaceFromMediaRecorder >= 0) {
            return iNativeAddSurfaceFromMediaRecorder;
        }
        throw new RuntimeException("Error registering surface from MediaRecorder" + mediaRecorder + "!");
    }

    public int registerSurfaceTexture(SurfaceTexture surfaceTexture, int i2, int i3) {
        Surface surface = new Surface(surfaceTexture);
        int iNativeAddSurfaceWidthHeight = nativeAddSurfaceWidthHeight(surface, i2, i3);
        surface.release();
        if (iNativeAddSurfaceWidthHeight >= 0) {
            return iNativeAddSurfaceWidthHeight;
        }
        throw new RuntimeException("Error registering surfaceTexture " + surfaceTexture + "!");
    }

    public void setSurfaceTimestamp(long j2) {
        if (!nativeSetSurfaceTimestamp(j2)) {
            throw new RuntimeException("Could not set timestamp for current surface!");
        }
    }

    public void swapBuffers() {
        if (!nativeSwapBuffers()) {
            throw new RuntimeException("Error swapping EGL buffers!");
        }
    }

    public synchronized void tearDown() {
        if (this.glEnvId != -1) {
            nativeDeallocate();
            this.glEnvId = -1;
        }
    }

    public void unregisterSurfaceId(int i2) {
        if (nativeRemoveSurfaceId(i2)) {
            return;
        }
        throw new RuntimeException("Could not unregister surface " + i2 + "!");
    }

    private GLEnvironment(NativeAllocatorTag nativeAllocatorTag) {
    }
}
