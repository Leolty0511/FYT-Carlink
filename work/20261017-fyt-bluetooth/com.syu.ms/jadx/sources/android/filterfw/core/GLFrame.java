package android.filterfw.core;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLES20;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class GLFrame extends Frame {
    public static final int EXISTING_FBO_BINDING = 101;
    public static final int EXISTING_TEXTURE_BINDING = 100;
    public static final int EXTERNAL_TEXTURE = 104;
    public static final int NEW_FBO_BINDING = 103;
    public static final int NEW_TEXTURE_BINDING = 102;
    private int glFrameId;
    private GLEnvironment mGLEnvironment;
    private boolean mOwnsTexture;

    static {
        System.loadLibrary("filterfw");
    }

    public GLFrame(FrameFormat frameFormat, FrameManager frameManager) {
        super(frameFormat, frameManager);
        this.glFrameId = -1;
        this.mOwnsTexture = true;
    }

    private void assertGLEnvValid() {
        if (this.mGLEnvironment.isContextActive()) {
            return;
        }
        if (GLEnvironment.isAnyContextActive()) {
            throw new RuntimeException("Attempting to access " + this + " with foreign GL context active!");
        }
        throw new RuntimeException("Attempting to access " + this + " with no GL context  active!");
    }

    private native boolean generateNativeMipMap();

    private native boolean getNativeBitmap(Bitmap bitmap);

    private native byte[] getNativeData();

    private native int getNativeFboId();

    private native float[] getNativeFloats();

    private native int[] getNativeInts();

    private native int getNativeTextureId();

    private void initNew(boolean z2) {
        if (z2) {
            if (!nativeAllocateExternal(this.mGLEnvironment)) {
                throw new RuntimeException("Could not allocate external GL frame!");
            }
        } else if (!nativeAllocate(this.mGLEnvironment, getFormat().getWidth(), getFormat().getHeight())) {
            throw new RuntimeException("Could not allocate GL frame!");
        }
    }

    private void initWithFbo(int i2) {
        if (!nativeAllocateWithFbo(this.mGLEnvironment, i2, getFormat().getWidth(), getFormat().getHeight())) {
            throw new RuntimeException("Could not allocate FBO backed GL frame!");
        }
    }

    private void initWithTexture(int i2) {
        if (!nativeAllocateWithTexture(this.mGLEnvironment, i2, getFormat().getWidth(), getFormat().getHeight())) {
            throw new RuntimeException("Could not allocate texture backed GL frame!");
        }
        this.mOwnsTexture = false;
        markReadOnly();
    }

    private native boolean nativeAllocate(GLEnvironment gLEnvironment, int i2, int i3);

    private native boolean nativeAllocateExternal(GLEnvironment gLEnvironment);

    private native boolean nativeAllocateWithFbo(GLEnvironment gLEnvironment, int i2, int i3, int i4);

    private native boolean nativeAllocateWithTexture(GLEnvironment gLEnvironment, int i2, int i3, int i4);

    private native boolean nativeCopyFromGL(GLFrame gLFrame);

    private native boolean nativeCopyFromNative(NativeFrame nativeFrame);

    private native boolean nativeDeallocate();

    private native boolean nativeDetachTexFromFbo();

    private native boolean nativeFocus();

    private native boolean nativeReattachTexToFbo();

    private native boolean nativeResetParams();

    private native boolean setNativeBitmap(Bitmap bitmap, int i2);

    private native boolean setNativeData(byte[] bArr, int i2, int i3);

    private native boolean setNativeFloats(float[] fArr);

    private native boolean setNativeInts(int[] iArr);

    private native boolean setNativeTextureParam(int i2, int i3);

    private native boolean setNativeViewport(int i2, int i3, int i4, int i5);

    public void flushGPU(String str) {
        StopWatchMap stopWatchMap = GLFrameTimer.get();
        if (stopWatchMap.LOG_MFF_RUNNING_TIMES) {
            stopWatchMap.start("glFinish " + str);
            GLES20.glFinish();
            stopWatchMap.stop("glFinish " + str);
        }
    }

    public void focus() {
        if (!nativeFocus()) {
            throw new RuntimeException("Could not focus on GLFrame for drawing!");
        }
    }

    public void generateMipMap() {
        assertFrameMutable();
        assertGLEnvValid();
        if (!generateNativeMipMap()) {
            throw new RuntimeException("Could not generate mip-map for GL frame!");
        }
    }

    @Override // android.filterfw.core.Frame
    public Bitmap getBitmap() {
        assertGLEnvValid();
        flushGPU("getBitmap");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getFormat().getWidth(), getFormat().getHeight(), Bitmap.Config.ARGB_8888);
        if (getNativeBitmap(bitmapCreateBitmap)) {
            return bitmapCreateBitmap;
        }
        throw new RuntimeException("Could not get bitmap data from GL frame!");
    }

    @Override // android.filterfw.core.Frame
    public ByteBuffer getData() {
        assertGLEnvValid();
        flushGPU("getData");
        return ByteBuffer.wrap(getNativeData());
    }

    public int getFboId() {
        return getNativeFboId();
    }

    @Override // android.filterfw.core.Frame
    public float[] getFloats() {
        assertGLEnvValid();
        flushGPU("getFloats");
        return getNativeFloats();
    }

    public GLEnvironment getGLEnvironment() {
        return this.mGLEnvironment;
    }

    @Override // android.filterfw.core.Frame
    public int[] getInts() {
        assertGLEnvValid();
        flushGPU("getInts");
        return getNativeInts();
    }

    @Override // android.filterfw.core.Frame
    public Object getObjectValue() {
        assertGLEnvValid();
        return ByteBuffer.wrap(getNativeData());
    }

    public int getTextureId() {
        return getNativeTextureId();
    }

    @Override // android.filterfw.core.Frame
    public synchronized boolean hasNativeAllocation() {
        return this.glFrameId != -1;
    }

    public void init(GLEnvironment gLEnvironment) {
        FrameFormat format = getFormat();
        this.mGLEnvironment = gLEnvironment;
        if (format.getBytesPerSample() != 4) {
            throw new IllegalArgumentException("GL frames must have 4 bytes per sample!");
        }
        if (format.getDimensionCount() != 2) {
            throw new IllegalArgumentException("GL frames must be 2-dimensional!");
        }
        if (getFormat().getSize() < 0) {
            throw new IllegalArgumentException("Initializing GL frame with zero size!");
        }
        int bindingType = getBindingType();
        boolean z2 = false;
        if (bindingType != 0) {
            if (bindingType == 104) {
                initNew(true);
            } else if (bindingType == 100) {
                initWithTexture((int) getBindingId());
            } else if (bindingType == 101) {
                initWithFbo((int) getBindingId());
            } else if (bindingType == 102) {
                initWithTexture((int) getBindingId());
            } else {
                if (bindingType != 103) {
                    throw new RuntimeException("Attempting to create GL frame with unknown binding type " + bindingType + "!");
                }
                initWithFbo((int) getBindingId());
            }
            setReusable(z2);
        }
        initNew(false);
        z2 = true;
        setReusable(z2);
    }

    @Override // android.filterfw.core.Frame
    public void onFrameFetch() {
        if (this.mOwnsTexture) {
            return;
        }
        nativeReattachTexToFbo();
    }

    @Override // android.filterfw.core.Frame
    public void onFrameStore() {
        if (this.mOwnsTexture) {
            return;
        }
        nativeDetachTexFromFbo();
    }

    @Override // android.filterfw.core.Frame
    public synchronized void releaseNativeAllocation() {
        nativeDeallocate();
        this.glFrameId = -1;
    }

    @Override // android.filterfw.core.Frame
    public void reset(FrameFormat frameFormat) {
        if (!nativeResetParams()) {
            throw new RuntimeException("Could not reset GLFrame texture parameters!");
        }
        super.reset(frameFormat);
    }

    @Override // android.filterfw.core.Frame
    public void setBitmap(Bitmap bitmap) {
        assertFrameMutable();
        assertGLEnvValid();
        if (getFormat().getWidth() != bitmap.getWidth() || getFormat().getHeight() != bitmap.getHeight()) {
            throw new RuntimeException("Bitmap dimensions do not match GL frame dimensions!");
        }
        Bitmap bitmapConvertBitmapToRGBA = Frame.convertBitmapToRGBA(bitmap);
        if (!setNativeBitmap(bitmapConvertBitmapToRGBA, bitmapConvertBitmapToRGBA.getByteCount())) {
            throw new RuntimeException("Could not set GL frame bitmap data!");
        }
    }

    @Override // android.filterfw.core.Frame
    public void setData(ByteBuffer byteBuffer, int i2, int i3) {
        assertFrameMutable();
        assertGLEnvValid();
        byte[] bArrArray = byteBuffer.array();
        if (getFormat().getSize() != bArrArray.length) {
            throw new RuntimeException("Data size in setData does not match GL frame size!");
        }
        if (!setNativeData(bArrArray, i2, i3)) {
            throw new RuntimeException("Could not set GL frame data!");
        }
    }

    @Override // android.filterfw.core.Frame
    public void setDataFromFrame(Frame frame) {
        assertGLEnvValid();
        if (getFormat().getSize() < frame.getFormat().getSize()) {
            throw new RuntimeException("Attempting to assign frame of size " + frame.getFormat().getSize() + " to smaller GL frame of size " + getFormat().getSize() + "!");
        }
        if (frame instanceof NativeFrame) {
            nativeCopyFromNative((NativeFrame) frame);
            return;
        }
        if (frame instanceof GLFrame) {
            nativeCopyFromGL((GLFrame) frame);
        } else if (frame instanceof SimpleFrame) {
            setObjectValue(frame.getObjectValue());
        } else {
            super.setDataFromFrame(frame);
        }
    }

    @Override // android.filterfw.core.Frame
    public void setFloats(float[] fArr) {
        assertFrameMutable();
        assertGLEnvValid();
        if (!setNativeFloats(fArr)) {
            throw new RuntimeException("Could not set int values for GL frame!");
        }
    }

    @Override // android.filterfw.core.Frame
    public void setInts(int[] iArr) {
        assertFrameMutable();
        assertGLEnvValid();
        if (!setNativeInts(iArr)) {
            throw new RuntimeException("Could not set int values for GL frame!");
        }
    }

    public void setTextureParameter(int i2, int i3) {
        assertFrameMutable();
        assertGLEnvValid();
        if (setNativeTextureParam(i2, i3)) {
            return;
        }
        throw new RuntimeException("Could not set texture value " + i2 + " = " + i3 + " for GLFrame!");
    }

    public void setViewport(int i2, int i3, int i4, int i5) {
        assertFrameMutable();
        setNativeViewport(i2, i3, i4, i5);
    }

    public String toString() {
        return "GLFrame id: " + this.glFrameId + " (" + getFormat() + ") with texture ID " + getTextureId() + ", FBO ID " + getFboId();
    }

    public void setViewport(Rect rect) {
        assertFrameMutable();
        int i2 = rect.left;
        int i3 = rect.top;
        setNativeViewport(i2, i3, rect.right - i2, rect.bottom - i3);
    }

    public GLFrame(FrameFormat frameFormat, FrameManager frameManager, int i2, long j2) {
        super(frameFormat, frameManager, i2, j2);
        this.glFrameId = -1;
        this.mOwnsTexture = true;
    }
}
