package android.renderscript;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.SystemProperties;
import android.util.Log;
import android.view.Surface;
import java.io.File;
import java.lang.reflect.Method;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class RenderScript {
    public static final boolean DEBUG = false;
    public static final boolean LOG_ENABLED = false;
    public static final String LOG_TAG = "RenderScript_jni";
    public static final long TRACE_TAG = 32768;
    public static File mCacheDir = null;
    public static Method registerNativeAllocation = null;
    public static Method registerNativeFree = null;
    public static boolean sInitialized = false;
    public static final long sMinorID = 1;
    public static Object sRuntime;
    private Context mApplicationContext;
    public int mContext;
    public int mDev;
    public Element mElement_ALLOCATION;
    public Element mElement_A_8;
    public Element mElement_BOOLEAN;
    public Element mElement_CHAR_2;
    public Element mElement_CHAR_3;
    public Element mElement_CHAR_4;
    public Element mElement_DOUBLE_2;
    public Element mElement_DOUBLE_3;
    public Element mElement_DOUBLE_4;
    public Element mElement_ELEMENT;
    public Element mElement_F32;
    public Element mElement_F64;
    public Element mElement_FLOAT_2;
    public Element mElement_FLOAT_3;
    public Element mElement_FLOAT_4;
    public Element mElement_FONT;
    public Element mElement_I16;
    public Element mElement_I32;
    public Element mElement_I64;
    public Element mElement_I8;
    public Element mElement_INT_2;
    public Element mElement_INT_3;
    public Element mElement_INT_4;
    public Element mElement_LONG_2;
    public Element mElement_LONG_3;
    public Element mElement_LONG_4;
    public Element mElement_MATRIX_2X2;
    public Element mElement_MATRIX_3X3;
    public Element mElement_MATRIX_4X4;
    public Element mElement_MESH;
    public Element mElement_PROGRAM_FRAGMENT;
    public Element mElement_PROGRAM_RASTER;
    public Element mElement_PROGRAM_STORE;
    public Element mElement_PROGRAM_VERTEX;
    public Element mElement_RGBA_4444;
    public Element mElement_RGBA_5551;
    public Element mElement_RGBA_8888;
    public Element mElement_RGB_565;
    public Element mElement_RGB_888;
    public Element mElement_SAMPLER;
    public Element mElement_SCRIPT;
    public Element mElement_SHORT_2;
    public Element mElement_SHORT_3;
    public Element mElement_SHORT_4;
    public Element mElement_TYPE;
    public Element mElement_U16;
    public Element mElement_U32;
    public Element mElement_U64;
    public Element mElement_U8;
    public Element mElement_UCHAR_2;
    public Element mElement_UCHAR_3;
    public Element mElement_UCHAR_4;
    public Element mElement_UINT_2;
    public Element mElement_UINT_3;
    public Element mElement_UINT_4;
    public Element mElement_ULONG_2;
    public Element mElement_ULONG_3;
    public Element mElement_ULONG_4;
    public Element mElement_USHORT_2;
    public Element mElement_USHORT_3;
    public Element mElement_USHORT_4;
    public Element mElement_YUV;
    public MessageThread mMessageThread;
    public ProgramRaster mProgramRaster_CULL_BACK;
    public ProgramRaster mProgramRaster_CULL_FRONT;
    public ProgramRaster mProgramRaster_CULL_NONE;
    public ProgramStore mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH;
    public ProgramStore mProgramStore_BLEND_ALPHA_DEPTH_TEST;
    public ProgramStore mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH;
    public ProgramStore mProgramStore_BLEND_NONE_DEPTH_TEST;
    public ReentrantReadWriteLock mRWLock;
    public Sampler mSampler_CLAMP_LINEAR;
    public Sampler mSampler_CLAMP_LINEAR_MIP_LINEAR;
    public Sampler mSampler_CLAMP_NEAREST;
    public Sampler mSampler_MIRRORED_REPEAT_LINEAR;
    public Sampler mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR;
    public Sampler mSampler_MIRRORED_REPEAT_NEAREST;
    public Sampler mSampler_WRAP_LINEAR;
    public Sampler mSampler_WRAP_LINEAR_MIP_LINEAR;
    public Sampler mSampler_WRAP_NEAREST;
    public RSMessageHandler mMessageCallback = null;
    public RSErrorHandler mErrorCallback = null;
    public ContextType mContextType = ContextType.NORMAL;

    public enum ContextType {
        NORMAL(0),
        DEBUG(1),
        PROFILE(2);

        public int mID;

        ContextType(int i2) {
            this.mID = i2;
        }
    }

    public static class MessageThread extends Thread {
        public static final int RS_ERROR_FATAL_DEBUG = 2048;
        public static final int RS_ERROR_FATAL_UNKNOWN = 4096;
        public static final int RS_MESSAGE_TO_CLIENT_ERROR = 3;
        public static final int RS_MESSAGE_TO_CLIENT_EXCEPTION = 1;
        public static final int RS_MESSAGE_TO_CLIENT_NEW_BUFFER = 5;
        public static final int RS_MESSAGE_TO_CLIENT_NONE = 0;
        public static final int RS_MESSAGE_TO_CLIENT_RESIZE = 2;
        public static final int RS_MESSAGE_TO_CLIENT_USER = 4;
        public int[] mAuxData;
        public RenderScript mRS;
        public boolean mRun;

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
                                Log.e(RenderScript.LOG_TAG, "non fatal RS error, " + strNContextGetErrorMessage);
                            }
                        }
                        throw new RSRuntimeException("Fatal error " + i3 + ", details: " + strNContextGetErrorMessage);
                    }
                    if (iNContextPeekMessage == 5) {
                        Allocation.sendBufferNotification(i3);
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
        NORMAL(-4);

        public int mID;

        Priority(int i2) {
            this.mID = i2;
        }
    }

    public static class RSErrorHandler implements Runnable {
        public String mErrorMessage;
        public int mErrorNum;

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public static class RSMessageHandler implements Runnable {
        public int[] mData;
        public int mID;
        public int mLength;

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    static {
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
    }

    public static native void _nInit();

    public static RenderScript create(Context context, int i2) {
        return create(context, i2, ContextType.NORMAL);
    }

    public static long getMinorID() {
        return 1L;
    }

    public static void setupDiskCache(File file) {
        if (sInitialized) {
            mCacheDir = file;
        } else {
            Log.e(LOG_TAG, "RenderScript.setupDiskCache() called when disabled");
        }
    }

    public void contextDump() {
        validate();
        nContextDump(0);
    }

    public void destroy() {
        validate();
        nContextFinish();
        nContextDeinitToClient(this.mContext);
        MessageThread messageThread = this.mMessageThread;
        messageThread.mRun = false;
        try {
            messageThread.join();
        } catch (InterruptedException unused) {
        }
        nContextDestroy();
        nDeviceDestroy(this.mDev);
        this.mDev = 0;
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

    public synchronized void nAllocationCopyFromBitmap(int i2, Bitmap bitmap) {
        validate();
        rsnAllocationCopyFromBitmap(this.mContext, i2, bitmap);
    }

    public synchronized void nAllocationCopyToBitmap(int i2, Bitmap bitmap) {
        validate();
        rsnAllocationCopyToBitmap(this.mContext, i2, bitmap);
    }

    public synchronized int nAllocationCreateBitmapBackedAllocation(int i2, int i3, Bitmap bitmap, int i4) {
        validate();
        return rsnAllocationCreateBitmapBackedAllocation(this.mContext, i2, i3, bitmap, i4);
    }

    public synchronized int nAllocationCreateBitmapRef(int i2, Bitmap bitmap) {
        validate();
        return rsnAllocationCreateBitmapRef(this.mContext, i2, bitmap);
    }

    public synchronized int nAllocationCreateFromAssetStream(int i2, int i3, int i4) {
        validate();
        return rsnAllocationCreateFromAssetStream(this.mContext, i2, i3, i4);
    }

    public synchronized int nAllocationCreateFromBitmap(int i2, int i3, Bitmap bitmap, int i4) {
        validate();
        return rsnAllocationCreateFromBitmap(this.mContext, i2, i3, bitmap, i4);
    }

    public synchronized int nAllocationCreateTyped(int i2, int i3, int i4, int i5) {
        validate();
        return rsnAllocationCreateTyped(this.mContext, i2, i3, i4, i5);
    }

    public synchronized int nAllocationCubeCreateFromBitmap(int i2, int i3, Bitmap bitmap, int i4) {
        validate();
        return rsnAllocationCubeCreateFromBitmap(this.mContext, i2, i3, bitmap, i4);
    }

    public synchronized void nAllocationData1D(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        validate();
        rsnAllocationData1D(this.mContext, i2, i3, i4, i5, iArr, i6);
    }

    public synchronized void nAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        validate();
        rsnAllocationData2D(this.mContext, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13);
    }

    public synchronized void nAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
        validate();
        rsnAllocationData3D(this.mContext, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14);
    }

    public synchronized void nAllocationElementData1D(int i2, int i3, int i4, int i5, byte[] bArr, int i6) {
        validate();
        rsnAllocationElementData1D(this.mContext, i2, i3, i4, i5, bArr, i6);
    }

    public synchronized void nAllocationGenerateMipmaps(int i2) {
        validate();
        rsnAllocationGenerateMipmaps(this.mContext, i2);
    }

    public synchronized Surface nAllocationGetSurface(int i2) {
        validate();
        return rsnAllocationGetSurface(this.mContext, i2);
    }

    public synchronized int nAllocationGetType(int i2) {
        validate();
        return rsnAllocationGetType(this.mContext, i2);
    }

    public synchronized void nAllocationIoReceive(int i2) {
        validate();
        rsnAllocationIoReceive(this.mContext, i2);
    }

    public synchronized void nAllocationIoSend(int i2) {
        validate();
        rsnAllocationIoSend(this.mContext, i2);
    }

    public synchronized void nAllocationRead(int i2, byte[] bArr) {
        validate();
        rsnAllocationRead(this.mContext, i2, bArr);
    }

    public synchronized void nAllocationResize1D(int i2, int i3) {
        validate();
        rsnAllocationResize1D(this.mContext, i2, i3);
    }

    public synchronized void nAllocationSetSurface(int i2, Surface surface) {
        validate();
        rsnAllocationSetSurface(this.mContext, i2, surface);
    }

    public synchronized void nAllocationSyncAll(int i2, int i3) {
        validate();
        rsnAllocationSyncAll(this.mContext, i2, i3);
    }

    public synchronized void nAssignName(int i2, byte[] bArr) {
        validate();
        rsnAssignName(this.mContext, i2, bArr);
    }

    public synchronized void nContextBindProgramFragment(int i2) {
        validate();
        rsnContextBindProgramFragment(this.mContext, i2);
    }

    public synchronized void nContextBindProgramRaster(int i2) {
        validate();
        rsnContextBindProgramRaster(this.mContext, i2);
    }

    public synchronized void nContextBindProgramStore(int i2) {
        validate();
        rsnContextBindProgramStore(this.mContext, i2);
    }

    public synchronized void nContextBindProgramVertex(int i2) {
        validate();
        rsnContextBindProgramVertex(this.mContext, i2);
    }

    public synchronized void nContextBindRootScript(int i2) {
        validate();
        rsnContextBindRootScript(this.mContext, i2);
    }

    public synchronized void nContextBindSampler(int i2, int i3) {
        validate();
        rsnContextBindSampler(this.mContext, i2, i3);
    }

    public synchronized int nContextCreate(int i2, int i3, int i4, int i5) {
        return rsnContextCreate(i2, i3, i4, i5);
    }

    public synchronized int nContextCreateGL(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, float f2, int i15) {
        return rsnContextCreateGL(i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, f2, i15);
    }

    public native void nContextDeinitToClient(int i2);

    public synchronized void nContextDestroy() {
        validate();
        ReentrantReadWriteLock.WriteLock writeLock = this.mRWLock.writeLock();
        writeLock.lock();
        int i2 = this.mContext;
        this.mContext = 0;
        writeLock.unlock();
        rsnContextDestroy(i2);
    }

    public synchronized void nContextDump(int i2) {
        validate();
        rsnContextDump(this.mContext, i2);
    }

    public synchronized void nContextFinish() {
        validate();
        rsnContextFinish(this.mContext);
    }

    public native String nContextGetErrorMessage(int i2);

    public native int nContextGetUserMessage(int i2, int[] iArr);

    public native void nContextInitToClient(int i2);

    public synchronized void nContextPause() {
        validate();
        rsnContextPause(this.mContext);
    }

    public native int nContextPeekMessage(int i2, int[] iArr);

    public synchronized void nContextResume() {
        validate();
        rsnContextResume(this.mContext);
    }

    public synchronized void nContextSendMessage(int i2, int[] iArr) {
        validate();
        rsnContextSendMessage(this.mContext, i2, iArr);
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

    public native int nDeviceCreate();

    public native void nDeviceDestroy(int i2);

    public native void nDeviceSetConfig(int i2, int i3, int i4);

    public synchronized int nElementCreate(int i2, int i3, boolean z2, int i4) {
        validate();
        return rsnElementCreate(this.mContext, i2, i3, z2, i4);
    }

    public synchronized int nElementCreate2(int[] iArr, String[] strArr, int[] iArr2) {
        validate();
        return rsnElementCreate2(this.mContext, iArr, strArr, iArr2);
    }

    public synchronized void nElementGetNativeData(int i2, int[] iArr) {
        validate();
        rsnElementGetNativeData(this.mContext, i2, iArr);
    }

    public synchronized void nElementGetSubElements(int i2, int[] iArr, String[] strArr, int[] iArr2) {
        validate();
        rsnElementGetSubElements(this.mContext, i2, iArr, strArr, iArr2);
    }

    public synchronized int nFileA3DCreateFromAsset(AssetManager assetManager, String str) {
        validate();
        return rsnFileA3DCreateFromAsset(this.mContext, assetManager, str);
    }

    public synchronized int nFileA3DCreateFromAssetStream(int i2) {
        validate();
        return rsnFileA3DCreateFromAssetStream(this.mContext, i2);
    }

    public synchronized int nFileA3DCreateFromFile(String str) {
        validate();
        return rsnFileA3DCreateFromFile(this.mContext, str);
    }

    public synchronized int nFileA3DGetEntryByIndex(int i2, int i3) {
        validate();
        return rsnFileA3DGetEntryByIndex(this.mContext, i2, i3);
    }

    public synchronized void nFileA3DGetIndexEntries(int i2, int i3, int[] iArr, String[] strArr) {
        validate();
        rsnFileA3DGetIndexEntries(this.mContext, i2, i3, iArr, strArr);
    }

    public synchronized int nFileA3DGetNumIndexEntries(int i2) {
        validate();
        return rsnFileA3DGetNumIndexEntries(this.mContext, i2);
    }

    public synchronized int nFontCreateFromAsset(AssetManager assetManager, String str, float f2, int i2) {
        validate();
        return rsnFontCreateFromAsset(this.mContext, assetManager, str, f2, i2);
    }

    public synchronized int nFontCreateFromAssetStream(String str, float f2, int i2, int i3) {
        validate();
        return rsnFontCreateFromAssetStream(this.mContext, str, f2, i2, i3);
    }

    public synchronized int nFontCreateFromFile(String str, float f2, int i2) {
        validate();
        return rsnFontCreateFromFile(this.mContext, str, f2, i2);
    }

    public synchronized String nGetName(int i2) {
        validate();
        return rsnGetName(this.mContext, i2);
    }

    public synchronized int nMeshCreate(int[] iArr, int[] iArr2, int[] iArr3) {
        validate();
        return rsnMeshCreate(this.mContext, iArr, iArr2, iArr3);
    }

    public synchronized int nMeshGetIndexCount(int i2) {
        validate();
        return rsnMeshGetIndexCount(this.mContext, i2);
    }

    public synchronized void nMeshGetIndices(int i2, int[] iArr, int[] iArr2, int i3) {
        validate();
        rsnMeshGetIndices(this.mContext, i2, iArr, iArr2, i3);
    }

    public synchronized int nMeshGetVertexBufferCount(int i2) {
        validate();
        return rsnMeshGetVertexBufferCount(this.mContext, i2);
    }

    public synchronized void nMeshGetVertices(int i2, int[] iArr, int i3) {
        validate();
        rsnMeshGetVertices(this.mContext, i2, iArr, i3);
    }

    public void nObjDestroy(int i2) {
        int i3 = this.mContext;
        if (i3 != 0) {
            rsnObjDestroy(i3, i2);
        }
    }

    public synchronized int nPathCreate(int i2, boolean z2, int i3, int i4, float f2) {
        validate();
        return rsnPathCreate(this.mContext, i2, z2, i3, i4, f2);
    }

    public synchronized void nProgramBindConstants(int i2, int i3, int i4) {
        validate();
        rsnProgramBindConstants(this.mContext, i2, i3, i4);
    }

    public synchronized void nProgramBindSampler(int i2, int i3, int i4) {
        validate();
        rsnProgramBindSampler(this.mContext, i2, i3, i4);
    }

    public synchronized void nProgramBindTexture(int i2, int i3, int i4) {
        validate();
        rsnProgramBindTexture(this.mContext, i2, i3, i4);
    }

    public synchronized int nProgramFragmentCreate(String str, String[] strArr, int[] iArr) {
        validate();
        return rsnProgramFragmentCreate(this.mContext, str, strArr, iArr);
    }

    public synchronized int nProgramRasterCreate(boolean z2, int i2) {
        validate();
        return rsnProgramRasterCreate(this.mContext, z2, i2);
    }

    public synchronized int nProgramStoreCreate(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i2, int i3, int i4) {
        validate();
        return rsnProgramStoreCreate(this.mContext, z2, z3, z4, z5, z6, z7, i2, i3, i4);
    }

    public synchronized int nProgramVertexCreate(String str, String[] strArr, int[] iArr) {
        validate();
        return rsnProgramVertexCreate(this.mContext, str, strArr, iArr);
    }

    public synchronized int nSamplerCreate(int i2, int i3, int i4, int i5, int i6, float f2) {
        validate();
        return rsnSamplerCreate(this.mContext, i2, i3, i4, i5, i6, f2);
    }

    public synchronized void nScriptBindAllocation(int i2, int i3, int i4) {
        validate();
        rsnScriptBindAllocation(this.mContext, i2, i3, i4);
    }

    public synchronized int nScriptCCreate(String str, String str2, byte[] bArr, int i2) {
        validate();
        return rsnScriptCCreate(this.mContext, str, str2, bArr, i2);
    }

    public synchronized int nScriptFieldIDCreate(int i2, int i3) {
        validate();
        return rsnScriptFieldIDCreate(this.mContext, i2, i3);
    }

    public synchronized void nScriptForEach(int i2, int i3, int i4, int i5, byte[] bArr) {
        validate();
        if (bArr == null) {
            rsnScriptForEach(this.mContext, i2, i3, i4, i5);
        } else {
            rsnScriptForEach(this.mContext, i2, i3, i4, i5, bArr);
        }
    }

    public synchronized void nScriptForEachClipped(int i2, int i3, int i4, int i5, byte[] bArr, int i6, int i7, int i8, int i9, int i10, int i11) {
        validate();
        if (bArr == null) {
            rsnScriptForEachClipped(this.mContext, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11);
        } else {
            rsnScriptForEachClipped(this.mContext, i2, i3, i4, i5, bArr, i6, i7, i8, i9, i10, i11);
        }
    }

    public synchronized double nScriptGetVarD(int i2, int i3) {
        validate();
        return rsnScriptGetVarD(this.mContext, i2, i3);
    }

    public synchronized float nScriptGetVarF(int i2, int i3) {
        validate();
        return rsnScriptGetVarF(this.mContext, i2, i3);
    }

    public synchronized int nScriptGetVarI(int i2, int i3) {
        validate();
        return rsnScriptGetVarI(this.mContext, i2, i3);
    }

    public synchronized long nScriptGetVarJ(int i2, int i3) {
        validate();
        return rsnScriptGetVarJ(this.mContext, i2, i3);
    }

    public synchronized void nScriptGetVarV(int i2, int i3, byte[] bArr) {
        validate();
        rsnScriptGetVarV(this.mContext, i2, i3, bArr);
    }

    public synchronized int nScriptGroupCreate(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        validate();
        return rsnScriptGroupCreate(this.mContext, iArr, iArr2, iArr3, iArr4, iArr5);
    }

    public synchronized void nScriptGroupExecute(int i2) {
        validate();
        rsnScriptGroupExecute(this.mContext, i2);
    }

    public synchronized void nScriptGroupSetInput(int i2, int i3, int i4) {
        validate();
        rsnScriptGroupSetInput(this.mContext, i2, i3, i4);
    }

    public synchronized void nScriptGroupSetOutput(int i2, int i3, int i4) {
        validate();
        rsnScriptGroupSetOutput(this.mContext, i2, i3, i4);
    }

    public synchronized int nScriptIntrinsicCreate(int i2, int i3) {
        validate();
        return rsnScriptIntrinsicCreate(this.mContext, i2, i3);
    }

    public synchronized void nScriptInvoke(int i2, int i3) {
        validate();
        rsnScriptInvoke(this.mContext, i2, i3);
    }

    public synchronized void nScriptInvokeV(int i2, int i3, byte[] bArr) {
        validate();
        rsnScriptInvokeV(this.mContext, i2, i3, bArr);
    }

    public synchronized int nScriptKernelIDCreate(int i2, int i3, int i4) {
        validate();
        return rsnScriptKernelIDCreate(this.mContext, i2, i3, i4);
    }

    public synchronized void nScriptSetTimeZone(int i2, byte[] bArr) {
        validate();
        rsnScriptSetTimeZone(this.mContext, i2, bArr);
    }

    public synchronized void nScriptSetVarD(int i2, int i3, double d2) {
        validate();
        rsnScriptSetVarD(this.mContext, i2, i3, d2);
    }

    public synchronized void nScriptSetVarF(int i2, int i3, float f2) {
        validate();
        rsnScriptSetVarF(this.mContext, i2, i3, f2);
    }

    public synchronized void nScriptSetVarI(int i2, int i3, int i4) {
        validate();
        rsnScriptSetVarI(this.mContext, i2, i3, i4);
    }

    public synchronized void nScriptSetVarJ(int i2, int i3, long j2) {
        validate();
        rsnScriptSetVarJ(this.mContext, i2, i3, j2);
    }

    public synchronized void nScriptSetVarObj(int i2, int i3, int i4) {
        validate();
        rsnScriptSetVarObj(this.mContext, i2, i3, i4);
    }

    public synchronized void nScriptSetVarV(int i2, int i3, byte[] bArr) {
        validate();
        rsnScriptSetVarV(this.mContext, i2, i3, bArr);
    }

    public synchronized void nScriptSetVarVE(int i2, int i3, byte[] bArr, int i4, int[] iArr) {
        validate();
        rsnScriptSetVarVE(this.mContext, i2, i3, bArr, i4, iArr);
    }

    public synchronized int nTypeCreate(int i2, int i3, int i4, int i5, boolean z2, boolean z3, int i6) {
        validate();
        return rsnTypeCreate(this.mContext, i2, i3, i4, i5, z2, z3, i6);
    }

    public synchronized void nTypeGetNativeData(int i2, int[] iArr) {
        validate();
        rsnTypeGetNativeData(this.mContext, i2, iArr);
    }

    public native void rsnAllocationCopyFromBitmap(int i2, int i3, Bitmap bitmap);

    public native void rsnAllocationCopyToBitmap(int i2, int i3, Bitmap bitmap);

    public native int rsnAllocationCreateBitmapBackedAllocation(int i2, int i3, int i4, Bitmap bitmap, int i5);

    public native int rsnAllocationCreateBitmapRef(int i2, int i3, Bitmap bitmap);

    public native int rsnAllocationCreateFromAssetStream(int i2, int i3, int i4, int i5);

    public native int rsnAllocationCreateFromBitmap(int i2, int i3, int i4, Bitmap bitmap, int i5);

    public native int rsnAllocationCreateTyped(int i2, int i3, int i4, int i5, int i6);

    public native int rsnAllocationCubeCreateFromBitmap(int i2, int i3, int i4, Bitmap bitmap, int i5);

    public native void rsnAllocationData1D(int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7);

    public native void rsnAllocationData1D(int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7);

    public native void rsnAllocationData1D(int i2, int i3, int i4, int i5, int i6, int[] iArr, int i7);

    public native void rsnAllocationData1D(int i2, int i3, int i4, int i5, int i6, short[] sArr, int i7);

    public native void rsnAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14);

    public native void rsnAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, byte[] bArr, int i10);

    public native void rsnAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float[] fArr, int i10);

    public native void rsnAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, int i10);

    public native void rsnAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, short[] sArr, int i10);

    public native void rsnAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, Bitmap bitmap);

    public native void rsnAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15);

    public native void rsnAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, byte[] bArr, int i11);

    public native void rsnAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float[] fArr, int i11);

    public native void rsnAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int[] iArr, int i11);

    public native void rsnAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, short[] sArr, int i11);

    public native void rsnAllocationElementData1D(int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7);

    public native void rsnAllocationGenerateMipmaps(int i2, int i3);

    public native Surface rsnAllocationGetSurface(int i2, int i3);

    public native int rsnAllocationGetType(int i2, int i3);

    public native void rsnAllocationIoReceive(int i2, int i3);

    public native void rsnAllocationIoSend(int i2, int i3);

    public native void rsnAllocationRead(int i2, int i3, byte[] bArr);

    public native void rsnAllocationRead(int i2, int i3, float[] fArr);

    public native void rsnAllocationRead(int i2, int i3, int[] iArr);

    public native void rsnAllocationRead(int i2, int i3, short[] sArr);

    public native void rsnAllocationResize1D(int i2, int i3, int i4);

    public native void rsnAllocationSetSurface(int i2, int i3, Surface surface);

    public native void rsnAllocationSyncAll(int i2, int i3, int i4);

    public native void rsnAssignName(int i2, int i3, byte[] bArr);

    public native void rsnContextBindProgramFragment(int i2, int i3);

    public native void rsnContextBindProgramRaster(int i2, int i3);

    public native void rsnContextBindProgramStore(int i2, int i3);

    public native void rsnContextBindProgramVertex(int i2, int i3);

    public native void rsnContextBindRootScript(int i2, int i3);

    public native void rsnContextBindSampler(int i2, int i3, int i4);

    public native int rsnContextCreate(int i2, int i3, int i4, int i5);

    public native int rsnContextCreateGL(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, float f2, int i15);

    public native void rsnContextDestroy(int i2);

    public native void rsnContextDump(int i2, int i3);

    public native void rsnContextFinish(int i2);

    public native void rsnContextPause(int i2);

    public native void rsnContextResume(int i2);

    public native void rsnContextSendMessage(int i2, int i3, int[] iArr);

    public native void rsnContextSetPriority(int i2, int i3);

    public native void rsnContextSetSurface(int i2, int i3, int i4, Surface surface);

    public native void rsnContextSetSurfaceTexture(int i2, int i3, int i4, SurfaceTexture surfaceTexture);

    public native int rsnElementCreate(int i2, int i3, int i4, boolean z2, int i5);

    public native int rsnElementCreate2(int i2, int[] iArr, String[] strArr, int[] iArr2);

    public native void rsnElementGetNativeData(int i2, int i3, int[] iArr);

    public native void rsnElementGetSubElements(int i2, int i3, int[] iArr, String[] strArr, int[] iArr2);

    public native int rsnFileA3DCreateFromAsset(int i2, AssetManager assetManager, String str);

    public native int rsnFileA3DCreateFromAssetStream(int i2, int i3);

    public native int rsnFileA3DCreateFromFile(int i2, String str);

    public native int rsnFileA3DGetEntryByIndex(int i2, int i3, int i4);

    public native void rsnFileA3DGetIndexEntries(int i2, int i3, int i4, int[] iArr, String[] strArr);

    public native int rsnFileA3DGetNumIndexEntries(int i2, int i3);

    public native int rsnFontCreateFromAsset(int i2, AssetManager assetManager, String str, float f2, int i3);

    public native int rsnFontCreateFromAssetStream(int i2, String str, float f2, int i3, int i4);

    public native int rsnFontCreateFromFile(int i2, String str, float f2, int i3);

    public native String rsnGetName(int i2, int i3);

    public native int rsnMeshCreate(int i2, int[] iArr, int[] iArr2, int[] iArr3);

    public native int rsnMeshGetIndexCount(int i2, int i3);

    public native void rsnMeshGetIndices(int i2, int i3, int[] iArr, int[] iArr2, int i4);

    public native int rsnMeshGetVertexBufferCount(int i2, int i3);

    public native void rsnMeshGetVertices(int i2, int i3, int[] iArr, int i4);

    public native void rsnObjDestroy(int i2, int i3);

    public native int rsnPathCreate(int i2, int i3, boolean z2, int i4, int i5, float f2);

    public native void rsnProgramBindConstants(int i2, int i3, int i4, int i5);

    public native void rsnProgramBindSampler(int i2, int i3, int i4, int i5);

    public native void rsnProgramBindTexture(int i2, int i3, int i4, int i5);

    public native int rsnProgramFragmentCreate(int i2, String str, String[] strArr, int[] iArr);

    public native int rsnProgramRasterCreate(int i2, boolean z2, int i3);

    public native int rsnProgramStoreCreate(int i2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i3, int i4, int i5);

    public native int rsnProgramVertexCreate(int i2, String str, String[] strArr, int[] iArr);

    public native int rsnSamplerCreate(int i2, int i3, int i4, int i5, int i6, int i7, float f2);

    public native void rsnScriptBindAllocation(int i2, int i3, int i4, int i5);

    public native int rsnScriptCCreate(int i2, String str, String str2, byte[] bArr, int i3);

    public native int rsnScriptFieldIDCreate(int i2, int i3, int i4);

    public native void rsnScriptForEach(int i2, int i3, int i4, int i5, int i6);

    public native void rsnScriptForEach(int i2, int i3, int i4, int i5, int i6, byte[] bArr);

    public native void rsnScriptForEachClipped(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12);

    public native void rsnScriptForEachClipped(int i2, int i3, int i4, int i5, int i6, byte[] bArr, int i7, int i8, int i9, int i10, int i11, int i12);

    public native double rsnScriptGetVarD(int i2, int i3, int i4);

    public native float rsnScriptGetVarF(int i2, int i3, int i4);

    public native int rsnScriptGetVarI(int i2, int i3, int i4);

    public native long rsnScriptGetVarJ(int i2, int i3, int i4);

    public native void rsnScriptGetVarV(int i2, int i3, int i4, byte[] bArr);

    public native int rsnScriptGroupCreate(int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5);

    public native void rsnScriptGroupExecute(int i2, int i3);

    public native void rsnScriptGroupSetInput(int i2, int i3, int i4, int i5);

    public native void rsnScriptGroupSetOutput(int i2, int i3, int i4, int i5);

    public native int rsnScriptIntrinsicCreate(int i2, int i3, int i4);

    public native void rsnScriptInvoke(int i2, int i3, int i4);

    public native void rsnScriptInvokeV(int i2, int i3, int i4, byte[] bArr);

    public native int rsnScriptKernelIDCreate(int i2, int i3, int i4, int i5);

    public native void rsnScriptSetTimeZone(int i2, int i3, byte[] bArr);

    public native void rsnScriptSetVarD(int i2, int i3, int i4, double d2);

    public native void rsnScriptSetVarF(int i2, int i3, int i4, float f2);

    public native void rsnScriptSetVarI(int i2, int i3, int i4, int i5);

    public native void rsnScriptSetVarJ(int i2, int i3, int i4, long j2);

    public native void rsnScriptSetVarObj(int i2, int i3, int i4, int i5);

    public native void rsnScriptSetVarV(int i2, int i3, int i4, byte[] bArr);

    public native void rsnScriptSetVarVE(int i2, int i3, int i4, byte[] bArr, int i5, int[] iArr);

    public native int rsnTypeCreate(int i2, int i3, int i4, int i5, int i6, boolean z2, boolean z3, int i7);

    public native void rsnTypeGetNativeData(int i2, int i3, int[] iArr);

    public int safeID(BaseObj baseObj) {
        if (baseObj != null) {
            return baseObj.getID(this);
        }
        return 0;
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

    public static RenderScript create(Context context, int i2, ContextType contextType) {
        if (!sInitialized) {
            Log.e(LOG_TAG, "RenderScript.create() called when disabled; someone is likely to crash");
            return null;
        }
        RenderScript renderScript = new RenderScript(context);
        int iNDeviceCreate = renderScript.nDeviceCreate();
        renderScript.mDev = iNDeviceCreate;
        int iNContextCreate = renderScript.nContextCreate(iNDeviceCreate, 0, i2, contextType.mID);
        renderScript.mContext = iNContextCreate;
        renderScript.mContextType = contextType;
        if (iNContextCreate == 0) {
            throw new RSDriverException("Failed to create RS context.");
        }
        MessageThread messageThread = new MessageThread(renderScript);
        renderScript.mMessageThread = messageThread;
        messageThread.start();
        return renderScript;
    }

    public synchronized void nAllocationData1D(int i2, int i3, int i4, int i5, short[] sArr, int i6) {
        validate();
        rsnAllocationData1D(this.mContext, i2, i3, i4, i5, sArr, i6);
    }

    public synchronized void nAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, byte[] bArr, int i9) {
        validate();
        rsnAllocationData2D(this.mContext, i2, i3, i4, i5, i6, i7, i8, bArr, i9);
    }

    public synchronized void nAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, byte[] bArr, int i10) {
        validate();
        rsnAllocationData3D(this.mContext, i2, i3, i4, i5, i6, i7, i8, i9, bArr, i10);
    }

    public synchronized void nAllocationRead(int i2, short[] sArr) {
        validate();
        rsnAllocationRead(this.mContext, i2, sArr);
    }

    public synchronized void nAllocationData1D(int i2, int i3, int i4, int i5, byte[] bArr, int i6) {
        validate();
        rsnAllocationData1D(this.mContext, i2, i3, i4, i5, bArr, i6);
    }

    public synchronized void nAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, short[] sArr, int i9) {
        validate();
        rsnAllocationData2D(this.mContext, i2, i3, i4, i5, i6, i7, i8, sArr, i9);
    }

    public synchronized void nAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, short[] sArr, int i10) {
        validate();
        rsnAllocationData3D(this.mContext, i2, i3, i4, i5, i6, i7, i8, i9, sArr, i10);
    }

    public synchronized void nAllocationRead(int i2, int[] iArr) {
        validate();
        rsnAllocationRead(this.mContext, i2, iArr);
    }

    public synchronized void nAllocationData1D(int i2, int i3, int i4, int i5, float[] fArr, int i6) {
        validate();
        rsnAllocationData1D(this.mContext, i2, i3, i4, i5, fArr, i6);
    }

    public synchronized void nAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int[] iArr, int i9) {
        validate();
        rsnAllocationData2D(this.mContext, i2, i3, i4, i5, i6, i7, i8, iArr, i9);
    }

    public synchronized void nAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, int i10) {
        validate();
        rsnAllocationData3D(this.mContext, i2, i3, i4, i5, i6, i7, i8, i9, iArr, i10);
    }

    public synchronized void nAllocationRead(int i2, float[] fArr) {
        validate();
        rsnAllocationRead(this.mContext, i2, fArr);
    }

    public static RenderScript create(Context context) {
        return create(context, ContextType.NORMAL);
    }

    public static RenderScript create(Context context, ContextType contextType) {
        return create(context, context.getApplicationInfo().targetSdkVersion, contextType);
    }

    public synchronized void nAllocationData2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, float[] fArr, int i9) {
        validate();
        rsnAllocationData2D(this.mContext, i2, i3, i4, i5, i6, i7, i8, fArr, i9);
    }

    public synchronized void nAllocationData3D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float[] fArr, int i10) {
        validate();
        rsnAllocationData3D(this.mContext, i2, i3, i4, i5, i6, i7, i8, i9, fArr, i10);
    }

    public synchronized void nAllocationData2D(int i2, int i3, int i4, int i5, int i6, Bitmap bitmap) {
        validate();
        rsnAllocationData2D(this.mContext, i2, i3, i4, i5, i6, bitmap);
    }
}
