package android.renderscript;

import android.app.m;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.SystemProperties;
import android.util.Log;
import android.view.Surface;
import java.io.File;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class RenderScript {
    public static final int CREATE_FLAG_LOW_LATENCY = 2;
    public static final int CREATE_FLAG_LOW_POWER = 4;
    public static final int CREATE_FLAG_NONE = 0;
    public static final int CREATE_FLAG_WAIT_FOR_ATTACH = 8;
    static final boolean DEBUG = false;
    static final boolean LOG_ENABLED = false;
    static final String LOG_TAG = "RenderScript_jni";
    static final long TRACE_TAG = 32768;
    private static String mCachePath = null;
    private static ArrayList<RenderScript> mProcessContextList = new ArrayList<>();
    static Method registerNativeAllocation = null;
    static Method registerNativeFree = null;
    static boolean sInitialized = false;
    static final long sMinorVersion = 1;
    static int sPointerSize;
    static Object sRuntime;
    private Context mApplicationContext;
    long mContext;
    volatile Element mElement_ALLOCATION;
    volatile Element mElement_A_8;
    volatile Element mElement_BOOLEAN;
    volatile Element mElement_CHAR_2;
    volatile Element mElement_CHAR_3;
    volatile Element mElement_CHAR_4;
    volatile Element mElement_DOUBLE_2;
    volatile Element mElement_DOUBLE_3;
    volatile Element mElement_DOUBLE_4;
    volatile Element mElement_ELEMENT;
    volatile Element mElement_F16;
    volatile Element mElement_F32;
    volatile Element mElement_F64;
    volatile Element mElement_FLOAT_2;
    volatile Element mElement_FLOAT_3;
    volatile Element mElement_FLOAT_4;
    volatile Element mElement_FONT;
    volatile Element mElement_HALF_2;
    volatile Element mElement_HALF_3;
    volatile Element mElement_HALF_4;
    volatile Element mElement_I16;
    volatile Element mElement_I32;
    volatile Element mElement_I64;
    volatile Element mElement_I8;
    volatile Element mElement_INT_2;
    volatile Element mElement_INT_3;
    volatile Element mElement_INT_4;
    volatile Element mElement_LONG_2;
    volatile Element mElement_LONG_3;
    volatile Element mElement_LONG_4;
    volatile Element mElement_MATRIX_2X2;
    volatile Element mElement_MATRIX_3X3;
    volatile Element mElement_MATRIX_4X4;
    volatile Element mElement_MESH;
    volatile Element mElement_PROGRAM_FRAGMENT;
    volatile Element mElement_PROGRAM_RASTER;
    volatile Element mElement_PROGRAM_STORE;
    volatile Element mElement_PROGRAM_VERTEX;
    volatile Element mElement_RGBA_4444;
    volatile Element mElement_RGBA_5551;
    volatile Element mElement_RGBA_8888;
    volatile Element mElement_RGB_565;
    volatile Element mElement_RGB_888;
    volatile Element mElement_SAMPLER;
    volatile Element mElement_SCRIPT;
    volatile Element mElement_SHORT_2;
    volatile Element mElement_SHORT_3;
    volatile Element mElement_SHORT_4;
    volatile Element mElement_TYPE;
    volatile Element mElement_U16;
    volatile Element mElement_U32;
    volatile Element mElement_U64;
    volatile Element mElement_U8;
    volatile Element mElement_UCHAR_2;
    volatile Element mElement_UCHAR_3;
    volatile Element mElement_UCHAR_4;
    volatile Element mElement_UINT_2;
    volatile Element mElement_UINT_3;
    volatile Element mElement_UINT_4;
    volatile Element mElement_ULONG_2;
    volatile Element mElement_ULONG_3;
    volatile Element mElement_ULONG_4;
    volatile Element mElement_USHORT_2;
    volatile Element mElement_USHORT_3;
    volatile Element mElement_USHORT_4;
    volatile Element mElement_YUV;
    MessageThread mMessageThread;
    ProgramRaster mProgramRaster_CULL_BACK;
    ProgramRaster mProgramRaster_CULL_FRONT;
    ProgramRaster mProgramRaster_CULL_NONE;
    ProgramStore mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH;
    ProgramStore mProgramStore_BLEND_ALPHA_DEPTH_TEST;
    ProgramStore mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH;
    ProgramStore mProgramStore_BLEND_NONE_DEPTH_TEST;
    ReentrantReadWriteLock mRWLock;
    volatile Sampler mSampler_CLAMP_LINEAR;
    volatile Sampler mSampler_CLAMP_LINEAR_MIP_LINEAR;
    volatile Sampler mSampler_CLAMP_NEAREST;
    volatile Sampler mSampler_MIRRORED_REPEAT_LINEAR;
    volatile Sampler mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR;
    volatile Sampler mSampler_MIRRORED_REPEAT_NEAREST;
    volatile Sampler mSampler_WRAP_LINEAR;
    volatile Sampler mSampler_WRAP_LINEAR_MIP_LINEAR;
    volatile Sampler mSampler_WRAP_NEAREST;
    private boolean mIsProcessContext = false;
    private int mContextFlags = 0;
    private int mContextSdkVersion = 0;
    private boolean mDestroyed = false;
    RSMessageHandler mMessageCallback = null;
    RSErrorHandler mErrorCallback = null;
    ContextType mContextType = ContextType.NORMAL;

    public enum ContextType {
        NORMAL(0),
        DEBUG(1),
        PROFILE(2);

        int mID;

        ContextType(int i2) {
            this.mID = i2;
        }
    }

    public static class MessageThread extends Thread {
        static final int RS_ERROR_FATAL_DEBUG = 2048;
        static final int RS_ERROR_FATAL_UNKNOWN = 4096;
        static final int RS_MESSAGE_TO_CLIENT_ERROR = 3;
        static final int RS_MESSAGE_TO_CLIENT_EXCEPTION = 1;
        static final int RS_MESSAGE_TO_CLIENT_NEW_BUFFER = 5;
        static final int RS_MESSAGE_TO_CLIENT_NONE = 0;
        static final int RS_MESSAGE_TO_CLIENT_RESIZE = 2;
        static final int RS_MESSAGE_TO_CLIENT_USER = 4;
        int[] mAuxData;
        RenderScript mRS;
        boolean mRun;

        public MessageThread(RenderScript renderScript) {
            super("RSMessageThread");
            this.mRun = true;
            this.mAuxData = new int[2];
            this.mRS = renderScript;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int[] iArr = new int[16];
            RenderScript renderScript = this.mRS;
            renderScript.nContextInitToClient(renderScript.mContext);
            while (this.mRun) {
                iArr[0] = 0;
                RenderScript renderScript2 = this.mRS;
                int iNContextPeekMessage = renderScript2.nContextPeekMessage(renderScript2.mContext, this.mAuxData);
                int[] iArr2 = this.mAuxData;
                int i2 = iArr2[1];
                int i3 = iArr2[0];
                if (iNContextPeekMessage == 4) {
                    if ((i2 >> 2) >= iArr.length) {
                        iArr = new int[(i2 + 3) >> 2];
                    }
                    RenderScript renderScript3 = this.mRS;
                    if (renderScript3.nContextGetUserMessage(renderScript3.mContext, iArr) != 4) {
                        throw new RSDriverException("Error processing message from RenderScript.");
                    }
                    RSMessageHandler rSMessageHandler = this.mRS.mMessageCallback;
                    if (rSMessageHandler == null) {
                        throw new RSInvalidStateException("Received a message from the script with no message handler installed.");
                    }
                    rSMessageHandler.mData = iArr;
                    rSMessageHandler.mID = i3;
                    rSMessageHandler.mLength = i2;
                    rSMessageHandler.run();
                } else {
                    if (iNContextPeekMessage == 3) {
                        RenderScript renderScript4 = this.mRS;
                        String strNContextGetErrorMessage = renderScript4.nContextGetErrorMessage(renderScript4.mContext);
                        if (i3 < 4096) {
                            if (i3 >= 2048) {
                                RenderScript renderScript5 = this.mRS;
                                if (renderScript5.mContextType != ContextType.DEBUG || renderScript5.mErrorCallback == null) {
                                }
                            }
                            RSErrorHandler rSErrorHandler = this.mRS.mErrorCallback;
                            if (rSErrorHandler != null) {
                                rSErrorHandler.mErrorMessage = strNContextGetErrorMessage;
                                rSErrorHandler.mErrorNum = i3;
                                rSErrorHandler.run();
                            } else {
                                m.r("non fatal RS error, ", strNContextGetErrorMessage, RenderScript.LOG_TAG);
                            }
                        }
                        throw new RSRuntimeException("Fatal error " + i3 + ", details: " + strNContextGetErrorMessage);
                    }
                    if (iNContextPeekMessage == 5) {
                        RenderScript renderScript6 = this.mRS;
                        if (renderScript6.nContextGetUserMessage(renderScript6.mContext, iArr) != 5) {
                            throw new RSDriverException("Error processing message from RenderScript.");
                        }
                        Allocation.sendBufferNotification((((long) iArr[1]) << 32) + (((long) iArr[0]) & 4294967295L));
                    } else {
                        try {
                            Thread.sleep(1L, 0);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public enum Priority {
        LOW(15),
        NORMAL(-8);

        int mID;

        Priority(int i2) {
            this.mID = i2;
        }
    }

    public static class RSErrorHandler implements Runnable {
        protected String mErrorMessage;
        protected int mErrorNum;

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public static class RSMessageHandler implements Runnable {
        protected int[] mData;
        protected int mID;
        protected int mLength;

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    static {
        sInitialized = false;
        if (SystemProperties.getBoolean("config.disable_renderscript", false)) {
            return;
        }
        try {
            Class<?> cls = Class.forName("dalvik.system.VMRuntime");
            sRuntime = cls.getDeclaredMethod("getRuntime", new Class[0]).invoke(null, new Object[0]);
            Class<?> cls2 = Integer.TYPE;
            registerNativeAllocation = cls.getDeclaredMethod("registerNativeAllocation", cls2);
            registerNativeFree = cls.getDeclaredMethod("registerNativeFree", cls2);
            try {
                System.loadLibrary("rs_jni");
                _nInit();
                sInitialized = true;
                sPointerSize = rsnSystemGetPointerSize();
            } catch (UnsatisfiedLinkError e2) {
                Log.e(LOG_TAG, "Error loading RS jni library: " + e2);
                throw new RSRuntimeException("Error loading RS jni library: " + e2);
            }
        } catch (Exception e3) {
            Log.e(LOG_TAG, "Error loading GC methods: " + e3);
            throw new RSRuntimeException("Error loading GC methods: " + e3);
        }
    }

    public RenderScript(Context context) {
        if (context != null) {
            this.mApplicationContext = context.getApplicationContext();
        }
        this.mRWLock = new ReentrantReadWriteLock();
        try {
            registerNativeAllocation.invoke(sRuntime, 4194304);
        } catch (Exception e2) {
            Log.e(LOG_TAG, "Couldn't invoke registerNativeAllocation:" + e2);
            throw new RSRuntimeException("Couldn't invoke registerNativeAllocation:" + e2);
        }
    }

    public static native void _nInit();

    public static RenderScript create(Context context) {
        return create(context, ContextType.NORMAL);
    }

    public static RenderScript createMultiContext(Context context, ContextType contextType, int i2, int i3) {
        return internalCreate(context, i3, contextType, i2);
    }

    public static synchronized String getCachePath() {
        if (mCachePath == null) {
            if (RenderScriptCacheDir.mCacheDir == null) {
                throw new RSRuntimeException("RenderScript code cache directory uninitialized.");
            }
            File file = new File(RenderScriptCacheDir.mCacheDir, "com.android.renderscript.cache");
            mCachePath = file.getAbsolutePath();
            file.mkdirs();
        }
        return mCachePath;
    }

    public static long getMinorID() {
        return 1L;
    }

    public static long getMinorVersion() {
        return 1L;
    }

    private void helpDestroy() {
        boolean z2;
        boolean z3;
        synchronized (this) {
            z2 = false;
            if (this.mDestroyed) {
                z3 = false;
            } else {
                this.mDestroyed = true;
                z3 = true;
            }
        }
        if (z3) {
            nContextFinish();
            nContextDeinitToClient(this.mContext);
            MessageThread messageThread = this.mMessageThread;
            messageThread.mRun = false;
            messageThread.interrupt();
            boolean z4 = false;
            while (!z2) {
                try {
                    this.mMessageThread.join();
                    z2 = true;
                } catch (InterruptedException unused) {
                    z4 = true;
                }
            }
            if (z4) {
                Log.v(LOG_TAG, "Interrupted during wait for MessageThread to join");
                Thread.currentThread().interrupt();
            }
            nContextDestroy();
        }
    }

    private static RenderScript internalCreate(Context context, int i2, ContextType contextType, int i3) {
        if (!sInitialized) {
            Log.e(LOG_TAG, "RenderScript.create() called when disabled; someone is likely to crash");
            return null;
        }
        if ((i3 & (-15)) != 0) {
            throw new RSIllegalArgumentException("Invalid flags passed.");
        }
        RenderScript renderScript = new RenderScript(context);
        long jNContextCreate = renderScript.nContextCreate(renderScript.nDeviceCreate(), i3, i2, contextType.mID);
        renderScript.mContext = jNContextCreate;
        renderScript.mContextType = contextType;
        renderScript.mContextFlags = i3;
        renderScript.mContextSdkVersion = i2;
        if (jNContextCreate == 0) {
            throw new RSDriverException("Failed to create RS context.");
        }
        renderScript.nContextSetCacheDir(getCachePath());
        MessageThread messageThread = new MessageThread(renderScript);
        renderScript.mMessageThread = messageThread;
        messageThread.start();
        return renderScript;
    }

    public static void releaseAllContexts() {
        ArrayList<RenderScript> arrayList;
        synchronized (mProcessContextList) {
            arrayList = mProcessContextList;
            mProcessContextList = new ArrayList<>();
        }
        for (RenderScript renderScript : arrayList) {
            renderScript.mIsProcessContext = false;
            renderScript.destroy();
        }
        arrayList.clear();
    }

    public static native int rsnSystemGetPointerSize();

    public void contextDump() {
        validate();
        nContextDump(0);
    }

    public void destroy() {
        if (this.mIsProcessContext) {
            return;
        }
        validate();
        helpDestroy();
    }

    public void finalize() throws Throwable {
        helpDestroy();
        super.finalize();
    }

    public void finish() {
        nContextFinish();
    }

    public final Context getApplicationContext() {
        return this.mApplicationContext;
    }

    public RSErrorHandler getErrorHandler() {
        return this.mErrorCallback;
    }

    public RSMessageHandler getMessageHandler() {
        return this.mMessageCallback;
    }

    public boolean isAlive() {
        return this.mContext != 0;
    }

    public synchronized long nAllocationAdapterCreate(long j2, long j3) {
        validate();
        return rsnAllocationAdapterCreate(this.mContext, j2, j3);
    }

    public synchronized void nAllocationAdapterOffset(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        validate();
        rsnAllocationAdapterOffset(this.mContext, j2, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    public synchronized void nAllocationCopyFromBitmap(long j2, Bitmap bitmap) {
        validate();
        rsnAllocationCopyFromBitmap(this.mContext, j2, bitmap);
    }

    public synchronized void nAllocationCopyToBitmap(long j2, Bitmap bitmap) {
        validate();
        rsnAllocationCopyToBitmap(this.mContext, j2, bitmap);
    }

    public synchronized long nAllocationCreateBitmapBackedAllocation(long j2, int i2, Bitmap bitmap, int i3) {
        validate();
        return rsnAllocationCreateBitmapBackedAllocation(this.mContext, j2, i2, bitmap, i3);
    }

    public synchronized long nAllocationCreateBitmapRef(long j2, Bitmap bitmap) {
        validate();
        return rsnAllocationCreateBitmapRef(this.mContext, j2, bitmap);
    }

    public synchronized long nAllocationCreateFromAssetStream(int i2, int i3, int i4) {
        validate();
        return rsnAllocationCreateFromAssetStream(this.mContext, i2, i3, i4);
    }

    public synchronized long nAllocationCreateFromBitmap(long j2, int i2, Bitmap bitmap, int i3) {
        validate();
        return rsnAllocationCreateFromBitmap(this.mContext, j2, i2, bitmap, i3);
    }

    public synchronized long nAllocationCreateTyped(long j2, int i2, int i3, long j3) {
        validate();
        return rsnAllocationCreateTyped(this.mContext, j2, i2, i3, j3);
    }

    public synchronized long nAllocationCubeCreateFromBitmap(long j2, int i2, Bitmap bitmap, int i3) {
        validate();
        return rsnAllocationCubeCreateFromBitmap(this.mContext, j2, i2, bitmap, i3);
    }

    public synchronized void nAllocationData1D(long j2, int i2, int i3, int i4, Object obj, int i5, Element.DataType dataType, int i6, boolean z2) {
        validate();
        rsnAllocationData1D(this.mContext, j2, i2, i3, i4, obj, i5, dataType.mID, i6, z2);
    }

    public synchronized void nAllocationData2D(long j2, int i2, int i3, int i4, int i5, int i6, int i7, long j3, int i8, int i9, int i10, int i11) {
        validate();
        rsnAllocationData2D(this.mContext, j2, i2, i3, i4, i5, i6, i7, j3, i8, i9, i10, i11);
    }

    public synchronized void nAllocationData3D(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j3, int i9, int i10, int i11, int i12) {
        validate();
        rsnAllocationData3D(this.mContext, j2, i2, i3, i4, i5, i6, i7, i8, j3, i9, i10, i11, i12);
    }

    public synchronized void nAllocationElementData(long j2, int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7) {
        validate();
        rsnAllocationElementData(this.mContext, j2, i2, i3, i4, i5, i6, bArr, i7);
    }

    public synchronized void nAllocationElementRead(long j2, int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7) {
        validate();
        rsnAllocationElementRead(this.mContext, j2, i2, i3, i4, i5, i6, bArr, i7);
    }

    public synchronized void nAllocationGenerateMipmaps(long j2) {
        validate();
        rsnAllocationGenerateMipmaps(this.mContext, j2);
    }

    public synchronized ByteBuffer nAllocationGetByteBuffer(long j2, long[] jArr, int i2, int i3, int i4) {
        validate();
        return rsnAllocationGetByteBuffer(this.mContext, j2, jArr, i2, i3, i4);
    }

    public synchronized Surface nAllocationGetSurface(long j2) {
        validate();
        return rsnAllocationGetSurface(this.mContext, j2);
    }

    public synchronized long nAllocationGetType(long j2) {
        validate();
        return rsnAllocationGetType(this.mContext, j2);
    }

    public synchronized long nAllocationIoReceive(long j2) {
        validate();
        return rsnAllocationIoReceive(this.mContext, j2);
    }

    public synchronized void nAllocationIoSend(long j2) {
        validate();
        rsnAllocationIoSend(this.mContext, j2);
    }

    public synchronized void nAllocationRead(long j2, Object obj, Element.DataType dataType, int i2, boolean z2) {
        validate();
        rsnAllocationRead(this.mContext, j2, obj, dataType.mID, i2, z2);
    }

    public synchronized void nAllocationRead1D(long j2, int i2, int i3, int i4, Object obj, int i5, Element.DataType dataType, int i6, boolean z2) {
        validate();
        rsnAllocationRead1D(this.mContext, j2, i2, i3, i4, obj, i5, dataType.mID, i6, z2);
    }

    public synchronized void nAllocationRead2D(long j2, int i2, int i3, int i4, int i5, int i6, int i7, Object obj, int i8, Element.DataType dataType, int i9, boolean z2) {
        validate();
        rsnAllocationRead2D(this.mContext, j2, i2, i3, i4, i5, i6, i7, obj, i8, dataType.mID, i9, z2);
    }

    public synchronized void nAllocationRead3D(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Object obj, int i9, Element.DataType dataType, int i10, boolean z2) {
        validate();
        rsnAllocationRead3D(this.mContext, j2, i2, i3, i4, i5, i6, i7, i8, obj, i9, dataType.mID, i10, z2);
    }

    public synchronized void nAllocationResize1D(long j2, int i2) {
        validate();
        rsnAllocationResize1D(this.mContext, j2, i2);
    }

    public synchronized void nAllocationSetSurface(long j2, Surface surface) {
        validate();
        rsnAllocationSetSurface(this.mContext, j2, surface);
    }

    public synchronized void nAllocationSetupBufferQueue(long j2, int i2) {
        validate();
        rsnAllocationSetupBufferQueue(this.mContext, j2, i2);
    }

    public synchronized void nAllocationShareBufferQueue(long j2, long j3) {
        validate();
        rsnAllocationShareBufferQueue(this.mContext, j2, j3);
    }

    public synchronized void nAllocationSyncAll(long j2, int i2) {
        validate();
        rsnAllocationSyncAll(this.mContext, j2, i2);
    }

    public synchronized void nAssignName(long j2, byte[] bArr) {
        validate();
        rsnAssignName(this.mContext, j2, bArr);
    }

    public synchronized long nClosureCreate(long j2, long j3, long[] jArr, long[] jArr2, int[] iArr, long[] jArr3, long[] jArr4) {
        long jRsnClosureCreate;
        validate();
        jRsnClosureCreate = rsnClosureCreate(this.mContext, j2, j3, jArr, jArr2, iArr, jArr3, jArr4);
        if (jRsnClosureCreate == 0) {
            throw new RSRuntimeException("Failed creating closure.");
        }
        return jRsnClosureCreate;
    }

    public synchronized void nClosureSetArg(long j2, int i2, long j3, int i3) {
        validate();
        rsnClosureSetArg(this.mContext, j2, i2, j3, i3);
    }

    public synchronized void nClosureSetGlobal(long j2, long j3, long j4, int i2) {
        validate();
        rsnClosureSetGlobal(this.mContext, j2, j3, j4, i2);
    }

    public synchronized void nContextBindProgramFragment(long j2) {
        validate();
        rsnContextBindProgramFragment(this.mContext, j2);
    }

    public synchronized void nContextBindProgramRaster(long j2) {
        validate();
        rsnContextBindProgramRaster(this.mContext, j2);
    }

    public synchronized void nContextBindProgramStore(long j2) {
        validate();
        rsnContextBindProgramStore(this.mContext, j2);
    }

    public synchronized void nContextBindProgramVertex(long j2) {
        validate();
        rsnContextBindProgramVertex(this.mContext, j2);
    }

    public synchronized void nContextBindRootScript(long j2) {
        validate();
        rsnContextBindRootScript(this.mContext, j2);
    }

    public synchronized void nContextBindSampler(int i2, int i3) {
        validate();
        rsnContextBindSampler(this.mContext, i2, i3);
    }

    public synchronized long nContextCreate(long j2, int i2, int i3, int i4) {
        return rsnContextCreate(j2, i2, i3, i4);
    }

    public synchronized long nContextCreateGL(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, float f2, int i14) {
        return rsnContextCreateGL(j2, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, f2, i14);
    }

    public native void nContextDeinitToClient(long j2);

    public synchronized void nContextDestroy() {
        validate();
        ReentrantReadWriteLock.WriteLock writeLock = this.mRWLock.writeLock();
        writeLock.lock();
        long j2 = this.mContext;
        this.mContext = 0L;
        writeLock.unlock();
        rsnContextDestroy(j2);
    }

    public synchronized void nContextDump(int i2) {
        validate();
        rsnContextDump(this.mContext, i2);
    }

    public synchronized void nContextFinish() {
        validate();
        rsnContextFinish(this.mContext);
    }

    public native String nContextGetErrorMessage(long j2);

    public native int nContextGetUserMessage(long j2, int[] iArr);

    public native void nContextInitToClient(long j2);

    public synchronized void nContextPause() {
        validate();
        rsnContextPause(this.mContext);
    }

    public native int nContextPeekMessage(long j2, int[] iArr);

    public synchronized void nContextResume() {
        validate();
        rsnContextResume(this.mContext);
    }

    public synchronized void nContextSendMessage(int i2, int[] iArr) {
        validate();
        rsnContextSendMessage(this.mContext, i2, iArr);
    }

    public synchronized void nContextSetCacheDir(String str) {
        validate();
        rsnContextSetCacheDir(this.mContext, str);
    }

    public synchronized void nContextSetPriority(int i2) {
        validate();
        rsnContextSetPriority(this.mContext, i2);
    }

    public synchronized void nContextSetSurface(int i2, int i3, Surface surface) {
        validate();
        rsnContextSetSurface(this.mContext, i2, i3, surface);
    }

    public synchronized void nContextSetSurfaceTexture(int i2, int i3, SurfaceTexture surfaceTexture) {
        validate();
        rsnContextSetSurfaceTexture(this.mContext, i2, i3, surfaceTexture);
    }

    public native long nDeviceCreate();

    public native void nDeviceDestroy(long j2);

    public native void nDeviceSetConfig(long j2, int i2, int i3);

    public synchronized long nElementCreate(long j2, int i2, boolean z2, int i3) {
        validate();
        return rsnElementCreate(this.mContext, j2, i2, z2, i3);
    }

    public synchronized long nElementCreate2(long[] jArr, String[] strArr, int[] iArr) {
        validate();
        return rsnElementCreate2(this.mContext, jArr, strArr, iArr);
    }

    public synchronized void nElementGetNativeData(long j2, int[] iArr) {
        validate();
        rsnElementGetNativeData(this.mContext, j2, iArr);
    }

    public synchronized void nElementGetSubElements(long j2, long[] jArr, String[] strArr, int[] iArr) {
        validate();
        rsnElementGetSubElements(this.mContext, j2, jArr, strArr, iArr);
    }

    public synchronized long nFileA3DCreateFromAsset(AssetManager assetManager, String str) {
        validate();
        return rsnFileA3DCreateFromAsset(this.mContext, assetManager, str);
    }

    public synchronized long nFileA3DCreateFromAssetStream(long j2) {
        validate();
        return rsnFileA3DCreateFromAssetStream(this.mContext, j2);
    }

    public synchronized long nFileA3DCreateFromFile(String str) {
        validate();
        return rsnFileA3DCreateFromFile(this.mContext, str);
    }

    public synchronized long nFileA3DGetEntryByIndex(long j2, int i2) {
        validate();
        return rsnFileA3DGetEntryByIndex(this.mContext, j2, i2);
    }

    public synchronized void nFileA3DGetIndexEntries(long j2, int i2, int[] iArr, String[] strArr) {
        validate();
        rsnFileA3DGetIndexEntries(this.mContext, j2, i2, iArr, strArr);
    }

    public synchronized int nFileA3DGetNumIndexEntries(long j2) {
        validate();
        return rsnFileA3DGetNumIndexEntries(this.mContext, j2);
    }

    public synchronized long nFontCreateFromAsset(AssetManager assetManager, String str, float f2, int i2) {
        validate();
        return rsnFontCreateFromAsset(this.mContext, assetManager, str, f2, i2);
    }

    public synchronized long nFontCreateFromAssetStream(String str, float f2, int i2, long j2) {
        validate();
        return rsnFontCreateFromAssetStream(this.mContext, str, f2, i2, j2);
    }

    public synchronized long nFontCreateFromFile(String str, float f2, int i2) {
        validate();
        return rsnFontCreateFromFile(this.mContext, str, f2, i2);
    }

    public synchronized String nGetName(long j2) {
        validate();
        return rsnGetName(this.mContext, j2);
    }

    public synchronized long nInvokeClosureCreate(long j2, byte[] bArr, long[] jArr, long[] jArr2, int[] iArr) {
        long jRsnInvokeClosureCreate;
        validate();
        jRsnInvokeClosureCreate = rsnInvokeClosureCreate(this.mContext, j2, bArr, jArr, jArr2, iArr);
        if (jRsnInvokeClosureCreate == 0) {
            throw new RSRuntimeException("Failed creating closure.");
        }
        return jRsnInvokeClosureCreate;
    }

    public synchronized long nMeshCreate(long[] jArr, long[] jArr2, int[] iArr) {
        validate();
        return rsnMeshCreate(this.mContext, jArr, jArr2, iArr);
    }

    public synchronized int nMeshGetIndexCount(long j2) {
        validate();
        return rsnMeshGetIndexCount(this.mContext, j2);
    }

    public synchronized void nMeshGetIndices(long j2, long[] jArr, int[] iArr, int i2) {
        validate();
        rsnMeshGetIndices(this.mContext, j2, jArr, iArr, i2);
    }

    public synchronized int nMeshGetVertexBufferCount(long j2) {
        validate();
        return rsnMeshGetVertexBufferCount(this.mContext, j2);
    }

    public synchronized void nMeshGetVertices(long j2, long[] jArr, int i2) {
        validate();
        rsnMeshGetVertices(this.mContext, j2, jArr, i2);
    }

    public void nObjDestroy(long j2) {
        long j3 = this.mContext;
        if (j3 != 0) {
            rsnObjDestroy(j3, j2);
        }
    }

    public synchronized void nProgramBindConstants(long j2, int i2, long j3) {
        validate();
        rsnProgramBindConstants(this.mContext, j2, i2, j3);
    }

    public synchronized void nProgramBindSampler(long j2, int i2, long j3) {
        validate();
        rsnProgramBindSampler(this.mContext, j2, i2, j3);
    }

    public synchronized void nProgramBindTexture(long j2, int i2, long j3) {
        validate();
        rsnProgramBindTexture(this.mContext, j2, i2, j3);
    }

    public synchronized long nProgramFragmentCreate(String str, String[] strArr, long[] jArr) {
        validate();
        return rsnProgramFragmentCreate(this.mContext, str, strArr, jArr);
    }

    public synchronized long nProgramRasterCreate(boolean z2, int i2) {
        validate();
        return rsnProgramRasterCreate(this.mContext, z2, i2);
    }

    public synchronized long nProgramStoreCreate(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i2, int i3, int i4) {
        validate();
        return rsnProgramStoreCreate(this.mContext, z2, z3, z4, z5, z6, z7, i2, i3, i4);
    }

    public synchronized long nProgramVertexCreate(String str, String[] strArr, long[] jArr) {
        validate();
        return rsnProgramVertexCreate(this.mContext, str, strArr, jArr);
    }

    public synchronized long nSamplerCreate(int i2, int i3, int i4, int i5, int i6, float f2) {
        validate();
        return rsnSamplerCreate(this.mContext, i2, i3, i4, i5, i6, f2);
    }

    public synchronized void nScriptBindAllocation(long j2, long j3, int i2) {
        validate();
        rsnScriptBindAllocation(this.mContext, j2, j3, i2);
    }

    public synchronized long nScriptCCreate(String str, String str2, byte[] bArr, int i2) {
        validate();
        return rsnScriptCCreate(this.mContext, str, str2, bArr, i2);
    }

    public synchronized long nScriptFieldIDCreate(long j2, int i2) {
        validate();
        return rsnScriptFieldIDCreate(this.mContext, j2, i2);
    }

    public synchronized void nScriptForEach(long j2, int i2, long[] jArr, long j3, byte[] bArr, int[] iArr) {
        validate();
        rsnScriptForEach(this.mContext, j2, i2, jArr, j3, bArr, iArr);
    }

    public synchronized double nScriptGetVarD(long j2, int i2) {
        validate();
        return rsnScriptGetVarD(this.mContext, j2, i2);
    }

    public synchronized float nScriptGetVarF(long j2, int i2) {
        validate();
        return rsnScriptGetVarF(this.mContext, j2, i2);
    }

    public synchronized int nScriptGetVarI(long j2, int i2) {
        validate();
        return rsnScriptGetVarI(this.mContext, j2, i2);
    }

    public synchronized long nScriptGetVarJ(long j2, int i2) {
        validate();
        return rsnScriptGetVarJ(this.mContext, j2, i2);
    }

    public synchronized void nScriptGetVarV(long j2, int i2, byte[] bArr) {
        validate();
        rsnScriptGetVarV(this.mContext, j2, i2, bArr);
    }

    public synchronized long nScriptGroup2Create(String str, String str2, long[] jArr) {
        long jRsnScriptGroup2Create;
        validate();
        jRsnScriptGroup2Create = rsnScriptGroup2Create(this.mContext, str, str2, jArr);
        if (jRsnScriptGroup2Create == 0) {
            throw new RSRuntimeException("Failed creating script group.");
        }
        return jRsnScriptGroup2Create;
    }

    public synchronized void nScriptGroup2Execute(long j2) {
        validate();
        rsnScriptGroup2Execute(this.mContext, j2);
    }

    public synchronized long nScriptGroupCreate(long[] jArr, long[] jArr2, long[] jArr3, long[] jArr4, long[] jArr5) {
        validate();
        return rsnScriptGroupCreate(this.mContext, jArr, jArr2, jArr3, jArr4, jArr5);
    }

    public synchronized void nScriptGroupExecute(long j2) {
        validate();
        rsnScriptGroupExecute(this.mContext, j2);
    }

    public synchronized void nScriptGroupSetInput(long j2, long j3, long j4) {
        validate();
        rsnScriptGroupSetInput(this.mContext, j2, j3, j4);
    }

    public synchronized void nScriptGroupSetOutput(long j2, long j3, long j4) {
        validate();
        rsnScriptGroupSetOutput(this.mContext, j2, j3, j4);
    }

    public synchronized void nScriptIntrinsicBLAS_BNNM(long j2, int i2, int i3, int i4, long j3, int i5, long j4, int i6, long j5, int i7, int i8) {
        validate();
        rsnScriptIntrinsicBLAS_BNNM(this.mContext, j2, i2, i3, i4, j3, i5, j4, i6, j5, i7, i8);
    }

    public synchronized void nScriptIntrinsicBLAS_Complex(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f2, float f3, long j3, long j4, float f4, float f5, long j5, int i11, int i12, int i13, int i14) {
        validate();
        rsnScriptIntrinsicBLAS_Complex(this.mContext, j2, i2, i3, i4, i5, i6, i7, i8, i9, i10, f2, f3, j3, j4, f4, f5, j5, i11, i12, i13, i14);
    }

    public synchronized void nScriptIntrinsicBLAS_Double(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, double d2, long j3, long j4, double d3, long j5, int i11, int i12, int i13, int i14) {
        validate();
        rsnScriptIntrinsicBLAS_Double(this.mContext, j2, i2, i3, i4, i5, i6, i7, i8, i9, i10, d2, j3, j4, d3, j5, i11, i12, i13, i14);
    }

    public synchronized void nScriptIntrinsicBLAS_Single(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f2, long j3, long j4, float f3, long j5, int i11, int i12, int i13, int i14) {
        validate();
        rsnScriptIntrinsicBLAS_Single(this.mContext, j2, i2, i3, i4, i5, i6, i7, i8, i9, i10, f2, j3, j4, f3, j5, i11, i12, i13, i14);
    }

    public synchronized void nScriptIntrinsicBLAS_Z(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, double d2, double d3, long j3, long j4, double d4, double d5, long j5, int i11, int i12, int i13, int i14) {
        validate();
        rsnScriptIntrinsicBLAS_Z(this.mContext, j2, i2, i3, i4, i5, i6, i7, i8, i9, i10, d2, d3, j3, j4, d4, d5, j5, i11, i12, i13, i14);
    }

    public synchronized long nScriptIntrinsicCreate(int i2, long j2) {
        validate();
        return rsnScriptIntrinsicCreate(this.mContext, i2, j2);
    }

    public synchronized void nScriptInvoke(long j2, int i2) {
        validate();
        rsnScriptInvoke(this.mContext, j2, i2);
    }

    public synchronized long nScriptInvokeIDCreate(long j2, int i2) {
        validate();
        return rsnScriptInvokeIDCreate(this.mContext, j2, i2);
    }

    public synchronized void nScriptInvokeV(long j2, int i2, byte[] bArr) {
        validate();
        rsnScriptInvokeV(this.mContext, j2, i2, bArr);
    }

    public synchronized long nScriptKernelIDCreate(long j2, int i2, int i3) {
        validate();
        return rsnScriptKernelIDCreate(this.mContext, j2, i2, i3);
    }

    public synchronized void nScriptReduce(long j2, int i2, long[] jArr, long j3, int[] iArr) {
        validate();
        rsnScriptReduce(this.mContext, j2, i2, jArr, j3, iArr);
    }

    public synchronized void nScriptSetTimeZone(long j2, byte[] bArr) {
        validate();
        rsnScriptSetTimeZone(this.mContext, j2, bArr);
    }

    public synchronized void nScriptSetVarD(long j2, int i2, double d2) {
        validate();
        rsnScriptSetVarD(this.mContext, j2, i2, d2);
    }

    public synchronized void nScriptSetVarF(long j2, int i2, float f2) {
        validate();
        rsnScriptSetVarF(this.mContext, j2, i2, f2);
    }

    public synchronized void nScriptSetVarI(long j2, int i2, int i3) {
        validate();
        rsnScriptSetVarI(this.mContext, j2, i2, i3);
    }

    public synchronized void nScriptSetVarJ(long j2, int i2, long j3) {
        validate();
        rsnScriptSetVarJ(this.mContext, j2, i2, j3);
    }

    public synchronized void nScriptSetVarObj(long j2, int i2, long j3) {
        validate();
        rsnScriptSetVarObj(this.mContext, j2, i2, j3);
    }

    public synchronized void nScriptSetVarV(long j2, int i2, byte[] bArr) {
        validate();
        rsnScriptSetVarV(this.mContext, j2, i2, bArr);
    }

    public synchronized void nScriptSetVarVE(long j2, int i2, byte[] bArr, long j3, int[] iArr) {
        validate();
        rsnScriptSetVarVE(this.mContext, j2, i2, bArr, j3, iArr);
    }

    public synchronized long nTypeCreate(long j2, int i2, int i3, int i4, boolean z2, boolean z3, int i5) {
        validate();
        return rsnTypeCreate(this.mContext, j2, i2, i3, i4, z2, z3, i5);
    }

    public synchronized void nTypeGetNativeData(long j2, long[] jArr) {
        validate();
        rsnTypeGetNativeData(this.mContext, j2, jArr);
    }

    public native long rsnAllocationAdapterCreate(long j2, long j3, long j4);

    public native void rsnAllocationAdapterOffset(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    public native void rsnAllocationCopyFromBitmap(long j2, long j3, Bitmap bitmap);

    public native void rsnAllocationCopyToBitmap(long j2, long j3, Bitmap bitmap);

    public native long rsnAllocationCreateBitmapBackedAllocation(long j2, long j3, int i2, Bitmap bitmap, int i3);

    public native long rsnAllocationCreateBitmapRef(long j2, long j3, Bitmap bitmap);

    public native long rsnAllocationCreateFromAssetStream(long j2, int i2, int i3, int i4);

    public native long rsnAllocationCreateFromBitmap(long j2, long j3, int i2, Bitmap bitmap, int i3);

    public native long rsnAllocationCreateTyped(long j2, long j3, int i2, int i3, long j4);

    public native long rsnAllocationCubeCreateFromBitmap(long j2, long j3, int i2, Bitmap bitmap, int i3);

    public native void rsnAllocationData1D(long j2, long j3, int i2, int i3, int i4, Object obj, int i5, int i6, int i7, boolean z2);

    public native void rsnAllocationData2D(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, long j4, int i8, int i9, int i10, int i11);

    public native void rsnAllocationData2D(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, Object obj, int i8, int i9, int i10, boolean z2);

    public native void rsnAllocationData2D(long j2, long j3, int i2, int i3, int i4, int i5, Bitmap bitmap);

    public native void rsnAllocationData3D(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j4, int i9, int i10, int i11, int i12);

    public native void rsnAllocationData3D(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Object obj, int i9, int i10, int i11, boolean z2);

    public native void rsnAllocationElementData(long j2, long j3, int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7);

    public native void rsnAllocationElementRead(long j2, long j3, int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7);

    public native void rsnAllocationGenerateMipmaps(long j2, long j3);

    public native ByteBuffer rsnAllocationGetByteBuffer(long j2, long j3, long[] jArr, int i2, int i3, int i4);

    public native Surface rsnAllocationGetSurface(long j2, long j3);

    public native long rsnAllocationGetType(long j2, long j3);

    public native long rsnAllocationIoReceive(long j2, long j3);

    public native void rsnAllocationIoSend(long j2, long j3);

    public native void rsnAllocationRead(long j2, long j3, Object obj, int i2, int i3, boolean z2);

    public native void rsnAllocationRead1D(long j2, long j3, int i2, int i3, int i4, Object obj, int i5, int i6, int i7, boolean z2);

    public native void rsnAllocationRead2D(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, Object obj, int i8, int i9, int i10, boolean z2);

    public native void rsnAllocationRead3D(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Object obj, int i9, int i10, int i11, boolean z2);

    public native void rsnAllocationResize1D(long j2, long j3, int i2);

    public native void rsnAllocationSetSurface(long j2, long j3, Surface surface);

    public native void rsnAllocationSetupBufferQueue(long j2, long j3, int i2);

    public native void rsnAllocationShareBufferQueue(long j2, long j3, long j4);

    public native void rsnAllocationSyncAll(long j2, long j3, int i2);

    public native void rsnAssignName(long j2, long j3, byte[] bArr);

    public native long rsnClosureCreate(long j2, long j3, long j4, long[] jArr, long[] jArr2, int[] iArr, long[] jArr3, long[] jArr4);

    public native void rsnClosureSetArg(long j2, long j3, int i2, long j4, int i3);

    public native void rsnClosureSetGlobal(long j2, long j3, long j4, long j5, int i2);

    public native void rsnContextBindProgramFragment(long j2, long j3);

    public native void rsnContextBindProgramRaster(long j2, long j3);

    public native void rsnContextBindProgramStore(long j2, long j3);

    public native void rsnContextBindProgramVertex(long j2, long j3);

    public native void rsnContextBindRootScript(long j2, long j3);

    public native void rsnContextBindSampler(long j2, int i2, int i3);

    public native long rsnContextCreate(long j2, int i2, int i3, int i4);

    public native long rsnContextCreateGL(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, float f2, int i14);

    public native void rsnContextDestroy(long j2);

    public native void rsnContextDump(long j2, int i2);

    public native void rsnContextFinish(long j2);

    public native void rsnContextPause(long j2);

    public native void rsnContextResume(long j2);

    public native void rsnContextSendMessage(long j2, int i2, int[] iArr);

    public native void rsnContextSetCacheDir(long j2, String str);

    public native void rsnContextSetPriority(long j2, int i2);

    public native void rsnContextSetSurface(long j2, int i2, int i3, Surface surface);

    public native void rsnContextSetSurfaceTexture(long j2, int i2, int i3, SurfaceTexture surfaceTexture);

    public native long rsnElementCreate(long j2, long j3, int i2, boolean z2, int i3);

    public native long rsnElementCreate2(long j2, long[] jArr, String[] strArr, int[] iArr);

    public native void rsnElementGetNativeData(long j2, long j3, int[] iArr);

    public native void rsnElementGetSubElements(long j2, long j3, long[] jArr, String[] strArr, int[] iArr);

    public native long rsnFileA3DCreateFromAsset(long j2, AssetManager assetManager, String str);

    public native long rsnFileA3DCreateFromAssetStream(long j2, long j3);

    public native long rsnFileA3DCreateFromFile(long j2, String str);

    public native long rsnFileA3DGetEntryByIndex(long j2, long j3, int i2);

    public native void rsnFileA3DGetIndexEntries(long j2, long j3, int i2, int[] iArr, String[] strArr);

    public native int rsnFileA3DGetNumIndexEntries(long j2, long j3);

    public native long rsnFontCreateFromAsset(long j2, AssetManager assetManager, String str, float f2, int i2);

    public native long rsnFontCreateFromAssetStream(long j2, String str, float f2, int i2, long j3);

    public native long rsnFontCreateFromFile(long j2, String str, float f2, int i2);

    public native String rsnGetName(long j2, long j3);

    public native long rsnInvokeClosureCreate(long j2, long j3, byte[] bArr, long[] jArr, long[] jArr2, int[] iArr);

    public native long rsnMeshCreate(long j2, long[] jArr, long[] jArr2, int[] iArr);

    public native int rsnMeshGetIndexCount(long j2, long j3);

    public native void rsnMeshGetIndices(long j2, long j3, long[] jArr, int[] iArr, int i2);

    public native int rsnMeshGetVertexBufferCount(long j2, long j3);

    public native void rsnMeshGetVertices(long j2, long j3, long[] jArr, int i2);

    public native void rsnObjDestroy(long j2, long j3);

    public native void rsnProgramBindConstants(long j2, long j3, int i2, long j4);

    public native void rsnProgramBindSampler(long j2, long j3, int i2, long j4);

    public native void rsnProgramBindTexture(long j2, long j3, int i2, long j4);

    public native long rsnProgramFragmentCreate(long j2, String str, String[] strArr, long[] jArr);

    public native long rsnProgramRasterCreate(long j2, boolean z2, int i2);

    public native long rsnProgramStoreCreate(long j2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i2, int i3, int i4);

    public native long rsnProgramVertexCreate(long j2, String str, String[] strArr, long[] jArr);

    public native long rsnSamplerCreate(long j2, int i2, int i3, int i4, int i5, int i6, float f2);

    public native void rsnScriptBindAllocation(long j2, long j3, long j4, int i2);

    public native long rsnScriptCCreate(long j2, String str, String str2, byte[] bArr, int i2);

    public native long rsnScriptFieldIDCreate(long j2, long j3, int i2);

    public native void rsnScriptForEach(long j2, long j3, int i2, long[] jArr, long j4, byte[] bArr, int[] iArr);

    public native double rsnScriptGetVarD(long j2, long j3, int i2);

    public native float rsnScriptGetVarF(long j2, long j3, int i2);

    public native int rsnScriptGetVarI(long j2, long j3, int i2);

    public native long rsnScriptGetVarJ(long j2, long j3, int i2);

    public native void rsnScriptGetVarV(long j2, long j3, int i2, byte[] bArr);

    public native long rsnScriptGroup2Create(long j2, String str, String str2, long[] jArr);

    public native void rsnScriptGroup2Execute(long j2, long j3);

    public native long rsnScriptGroupCreate(long j2, long[] jArr, long[] jArr2, long[] jArr3, long[] jArr4, long[] jArr5);

    public native void rsnScriptGroupExecute(long j2, long j3);

    public native void rsnScriptGroupSetInput(long j2, long j3, long j4, long j5);

    public native void rsnScriptGroupSetOutput(long j2, long j3, long j4, long j5);

    public native void rsnScriptIntrinsicBLAS_BNNM(long j2, long j3, int i2, int i3, int i4, long j4, int i5, long j5, int i6, long j6, int i7, int i8);

    public native void rsnScriptIntrinsicBLAS_Complex(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f2, float f3, long j4, long j5, float f4, float f5, long j6, int i11, int i12, int i13, int i14);

    public native void rsnScriptIntrinsicBLAS_Double(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, double d2, long j4, long j5, double d3, long j6, int i11, int i12, int i13, int i14);

    public native void rsnScriptIntrinsicBLAS_Single(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f2, long j4, long j5, float f3, long j6, int i11, int i12, int i13, int i14);

    public native void rsnScriptIntrinsicBLAS_Z(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, double d2, double d3, long j4, long j5, double d4, double d5, long j6, int i11, int i12, int i13, int i14);

    public native long rsnScriptIntrinsicCreate(long j2, int i2, long j3);

    public native void rsnScriptInvoke(long j2, long j3, int i2);

    public native long rsnScriptInvokeIDCreate(long j2, long j3, int i2);

    public native void rsnScriptInvokeV(long j2, long j3, int i2, byte[] bArr);

    public native long rsnScriptKernelIDCreate(long j2, long j3, int i2, int i3);

    public native void rsnScriptReduce(long j2, long j3, int i2, long[] jArr, long j4, int[] iArr);

    public native void rsnScriptSetTimeZone(long j2, long j3, byte[] bArr);

    public native void rsnScriptSetVarD(long j2, long j3, int i2, double d2);

    public native void rsnScriptSetVarF(long j2, long j3, int i2, float f2);

    public native void rsnScriptSetVarI(long j2, long j3, int i2, int i3);

    public native void rsnScriptSetVarJ(long j2, long j3, int i2, long j4);

    public native void rsnScriptSetVarObj(long j2, long j3, int i2, long j4);

    public native void rsnScriptSetVarV(long j2, long j3, int i2, byte[] bArr);

    public native void rsnScriptSetVarVE(long j2, long j3, int i2, byte[] bArr, long j4, int[] iArr);

    public native long rsnTypeCreate(long j2, long j3, int i2, int i3, int i4, boolean z2, boolean z3, int i5);

    public native void rsnTypeGetNativeData(long j2, long j3, long[] jArr);

    public long safeID(BaseObj baseObj) {
        if (baseObj != null) {
            return baseObj.getID(this);
        }
        return 0L;
    }

    public void sendMessage(int i2, int[] iArr) {
        nContextSendMessage(i2, iArr);
    }

    public void setErrorHandler(RSErrorHandler rSErrorHandler) {
        this.mErrorCallback = rSErrorHandler;
    }

    public void setMessageHandler(RSMessageHandler rSMessageHandler) {
        this.mMessageCallback = rSMessageHandler;
    }

    public void setPriority(Priority priority) {
        validate();
        nContextSetPriority(priority.mID);
    }

    public void validate() {
        if (this.mContext == 0) {
            throw new RSInvalidStateException("Calling RS with no Context active.");
        }
    }

    public void validateObject(BaseObj baseObj) {
        if (baseObj != null && baseObj.mRS != this) {
            throw new RSIllegalArgumentException("Attempting to use an object across contexts.");
        }
    }

    public static RenderScript create(Context context, ContextType contextType) {
        return create(context, contextType, 0);
    }

    public static RenderScript create(Context context, ContextType contextType, int i2) {
        return create(context, context.getApplicationInfo().targetSdkVersion, contextType, i2);
    }

    public synchronized void nAllocationData2D(long j2, int i2, int i3, int i4, int i5, int i6, int i7, Object obj, int i8, Element.DataType dataType, int i9, boolean z2) {
        validate();
        rsnAllocationData2D(this.mContext, j2, i2, i3, i4, i5, i6, i7, obj, i8, dataType.mID, i9, z2);
    }

    public synchronized void nAllocationData3D(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Object obj, int i9, Element.DataType dataType, int i10, boolean z2) {
        validate();
        rsnAllocationData3D(this.mContext, j2, i2, i3, i4, i5, i6, i7, i8, obj, i9, dataType.mID, i10, z2);
    }

    public static RenderScript create(Context context, int i2) {
        return create(context, i2, ContextType.NORMAL, 0);
    }

    private static RenderScript create(Context context, int i2, ContextType contextType, int i3) {
        if (i2 < 23) {
            return internalCreate(context, i2, contextType, i3);
        }
        synchronized (mProcessContextList) {
            for (RenderScript renderScript : mProcessContextList) {
                if (renderScript.mContextType == contextType && renderScript.mContextFlags == i3 && renderScript.mContextSdkVersion == i2) {
                    return renderScript;
                }
            }
            RenderScript renderScriptInternalCreate = internalCreate(context, i2, contextType, i3);
            renderScriptInternalCreate.mIsProcessContext = true;
            mProcessContextList.add(renderScriptInternalCreate);
            return renderScriptInternalCreate;
        }
    }

    public synchronized void nAllocationData2D(long j2, int i2, int i3, int i4, int i5, Bitmap bitmap) {
        validate();
        rsnAllocationData2D(this.mContext, j2, i2, i3, i4, i5, bitmap);
    }
}
