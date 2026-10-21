package android.renderscript;

import android.accessibilityservice.c;
import android.app.m;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Trace;
import android.util.Log;
import android.view.Surface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Allocation extends BaseObj {
    private static final int MAX_NUMBER_IO_INPUT_ALLOC = 16;
    public static final int USAGE_GRAPHICS_CONSTANTS = 8;
    public static final int USAGE_GRAPHICS_RENDER_TARGET = 16;
    public static final int USAGE_GRAPHICS_TEXTURE = 2;
    public static final int USAGE_GRAPHICS_VERTEX = 4;
    public static final int USAGE_IO_INPUT = 32;
    public static final int USAGE_IO_OUTPUT = 64;
    public static final int USAGE_SCRIPT = 1;
    public static final int USAGE_SHARED = 128;
    static HashMap<Long, Allocation> mAllocationMap = new HashMap<>();
    static BitmapFactory.Options mBitmapOptions;
    Allocation mAdaptedAllocation;
    boolean mAutoPadding;
    Bitmap mBitmap;
    OnBufferAvailableListener mBufferNotifier;
    private ByteBuffer mByteBuffer;
    private long mByteBufferStride;
    int mCurrentCount;
    int mCurrentDimX;
    int mCurrentDimY;
    int mCurrentDimZ;
    private Surface mGetSurfaceSurface;
    MipmapControl mMipmapControl;
    boolean mOwningType;
    boolean mReadAllowed;
    int[] mSelectedArray;
    Type.CubemapFace mSelectedFace;
    int mSelectedLOD;
    int mSelectedX;
    int mSelectedY;
    int mSelectedZ;
    int mSize;
    long mTimeStamp;
    Type mType;
    int mUsage;
    boolean mWriteAllowed;

    /* JADX INFO: renamed from: android.renderscript.Allocation$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum MipmapControl {
        MIPMAP_NONE(0),
        MIPMAP_FULL(1),
        MIPMAP_ON_SYNC_TO_TEXTURE(2);

        int mID;

        MipmapControl(int i2) {
            this.mID = i2;
        }
    }

    public interface OnBufferAvailableListener {
        void onBufferAvailable(Allocation allocation);
    }

    static {
        BitmapFactory.Options options = new BitmapFactory.Options();
        mBitmapOptions = options;
        options.inScaled = false;
    }

    public Allocation(long j2, RenderScript renderScript, Type type, int i2) {
        super(j2, renderScript);
        this.mOwningType = false;
        this.mTimeStamp = -1L;
        this.mReadAllowed = true;
        this.mWriteAllowed = true;
        this.mAutoPadding = false;
        this.mSelectedFace = Type.CubemapFace.POSITIVE_X;
        this.mGetSurfaceSurface = null;
        this.mByteBuffer = null;
        this.mByteBufferStride = -1L;
        if ((i2 & (-256)) != 0) {
            throw new RSIllegalArgumentException("Unknown usage specified.");
        }
        if ((i2 & 32) != 0) {
            this.mWriteAllowed = false;
            if ((i2 & (-36)) != 0) {
                throw new RSIllegalArgumentException("Invalid usage combination.");
            }
        }
        this.mType = type;
        this.mUsage = i2;
        if (type != null) {
            this.mSize = this.mType.getElement().getBytesSize() * type.getCount();
            updateCacheInfo(type);
        }
        try {
            RenderScript.registerNativeAllocation.invoke(RenderScript.sRuntime, Integer.valueOf(this.mSize));
            this.guard.open("destroy");
        } catch (Exception e2) {
            Log.e("RenderScript_jni", "Couldn't invoke registerNativeAllocation:" + e2);
            throw new RSRuntimeException("Couldn't invoke registerNativeAllocation:" + e2);
        }
    }

    private void copy1DRangeFromUnchecked(int i2, int i3, Object obj, Element.DataType dataType, int i4) {
        try {
            Trace.traceBegin(32768L, "copy1DRangeFromUnchecked");
            int bytesSize = this.mType.mElement.getBytesSize() * i3;
            boolean z2 = this.mAutoPadding && this.mType.getElement().getVectorSize() == 3;
            data1DChecks(i2, i3, i4 * dataType.mSize, bytesSize, z2);
            this.mRS.nAllocationData1D(getIDSafe(), i2, this.mSelectedLOD, i3, obj, bytesSize, dataType, this.mType.mElement.mType.mSize, z2);
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    private void copy1DRangeToUnchecked(int i2, int i3, Object obj, Element.DataType dataType, int i4) {
        try {
            Trace.traceBegin(32768L, "copy1DRangeToUnchecked");
            int bytesSize = this.mType.mElement.getBytesSize() * i3;
            boolean z2 = this.mAutoPadding && this.mType.getElement().getVectorSize() == 3;
            data1DChecks(i2, i3, i4 * dataType.mSize, bytesSize, z2);
            this.mRS.nAllocationRead1D(getIDSafe(), i2, this.mSelectedLOD, i3, obj, bytesSize, dataType, this.mType.mElement.mType.mSize, z2);
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    private void copy3DRangeFromUnchecked(int i2, int i3, int i4, int i5, int i6, int i7, Object obj, Element.DataType dataType, int i8) {
        boolean z2;
        try {
            Trace.traceBegin(32768L, "copy3DRangeFromUnchecked");
            this.mRS.validate();
            validate3DRange(i2, i3, i4, i5, i6, i7);
            int bytesSize = this.mType.mElement.getBytesSize() * i5 * i6 * i7;
            int i9 = dataType.mSize * i8;
            if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
                if ((bytesSize / 4) * 3 > i9) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                z2 = true;
            } else {
                if (bytesSize > i9) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                z2 = false;
                bytesSize = i9;
            }
            this.mRS.nAllocationData3D(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, i6, i7, obj, bytesSize, dataType, this.mType.mElement.mType.mSize, z2);
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    private void copy3DRangeToUnchecked(int i2, int i3, int i4, int i5, int i6, int i7, Object obj, Element.DataType dataType, int i8) {
        boolean z2;
        try {
            Trace.traceBegin(32768L, "copy3DRangeToUnchecked");
            this.mRS.validate();
            validate3DRange(i2, i3, i4, i5, i6, i7);
            int bytesSize = this.mType.mElement.getBytesSize() * i5 * i6 * i7;
            int i9 = dataType.mSize * i8;
            if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
                if ((bytesSize / 4) * 3 > i9) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                z2 = true;
            } else {
                if (bytesSize > i9) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                z2 = false;
                bytesSize = i9;
            }
            this.mRS.nAllocationRead3D(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, i6, i7, obj, bytesSize, dataType, this.mType.mElement.mType.mSize, z2);
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    private void copyFromUnchecked(Object obj, Element.DataType dataType, int i2) {
        try {
            Trace.traceBegin(32768L, "copyFromUnchecked");
            this.mRS.validate();
            int i3 = this.mCurrentDimZ;
            if (i3 > 0) {
                copy3DRangeFromUnchecked(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i3, obj, dataType, i2);
            } else {
                int i4 = this.mCurrentDimY;
                if (i4 > 0) {
                    copy2DRangeFromUnchecked(0, 0, this.mCurrentDimX, i4, obj, dataType, i2);
                } else {
                    copy1DRangeFromUnchecked(0, this.mCurrentCount, obj, dataType, i2);
                }
            }
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    public static Allocation[] createAllocations(RenderScript renderScript, Type type, int i2, int i3) {
        try {
            Trace.traceBegin(32768L, "createAllocations");
            renderScript.validate();
            if (type.getID(renderScript) == 0) {
                throw new RSInvalidStateException("Bad Type");
            }
            Allocation[] allocationArr = new Allocation[i3];
            Allocation allocationCreateTyped = createTyped(renderScript, type, i2);
            allocationArr[0] = allocationCreateTyped;
            if ((i2 & 32) != 0) {
                if (i3 > 16) {
                    allocationCreateTyped.destroy();
                    throw new RSIllegalArgumentException("Exceeds the max number of Allocations allowed: 16");
                }
                allocationCreateTyped.setupBufferQueue(i3);
            }
            for (int i4 = 1; i4 < i3; i4++) {
                allocationArr[i4] = createFromAllocation(renderScript, allocationArr[0]);
            }
            Trace.traceEnd(32768L);
            return allocationArr;
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public static Allocation createCubemapFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl, int i2) {
        renderScript.validate();
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        if (width % 6 != 0) {
            throw new RSIllegalArgumentException("Cubemap height must be multiple of 6");
        }
        if (width / 6 != height) {
            throw new RSIllegalArgumentException("Only square cube map faces supported");
        }
        if (!(((height + (-1)) & height) == 0)) {
            throw new RSIllegalArgumentException("Only power of 2 cube faces supported");
        }
        Element elementElementFromBitmap = elementFromBitmap(renderScript, bitmap);
        Type.Builder builder = new Type.Builder(renderScript, elementElementFromBitmap);
        builder.setX(height);
        builder.setY(height);
        builder.setFaces(true);
        builder.setMipmaps(mipmapControl == MipmapControl.MIPMAP_FULL);
        Type typeCreate = builder.create();
        long jNAllocationCubeCreateFromBitmap = renderScript.nAllocationCubeCreateFromBitmap(typeCreate.getID(renderScript), mipmapControl.mID, bitmap, i2);
        if (jNAllocationCubeCreateFromBitmap != 0) {
            return new Allocation(jNAllocationCubeCreateFromBitmap, renderScript, typeCreate, true, i2, mipmapControl);
        }
        throw new RSRuntimeException("Load failed for bitmap " + bitmap + " element " + elementElementFromBitmap);
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript renderScript, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6, MipmapControl mipmapControl, int i2) {
        int height = bitmap.getHeight();
        if (bitmap.getWidth() != height || bitmap2.getWidth() != height || bitmap2.getHeight() != height || bitmap3.getWidth() != height || bitmap3.getHeight() != height || bitmap4.getWidth() != height || bitmap4.getHeight() != height || bitmap5.getWidth() != height || bitmap5.getHeight() != height || bitmap6.getWidth() != height || bitmap6.getHeight() != height) {
            throw new RSIllegalArgumentException("Only square cube map faces supported");
        }
        if (!(((height + (-1)) & height) == 0)) {
            throw new RSIllegalArgumentException("Only power of 2 cube faces supported");
        }
        Type.Builder builder = new Type.Builder(renderScript, elementFromBitmap(renderScript, bitmap));
        builder.setX(height);
        builder.setY(height);
        builder.setFaces(true);
        builder.setMipmaps(mipmapControl == MipmapControl.MIPMAP_FULL);
        Allocation allocationCreateTyped = createTyped(renderScript, builder.create(), mipmapControl, i2);
        AllocationAdapter allocationAdapterCreate2D = AllocationAdapter.create2D(renderScript, allocationCreateTyped);
        allocationAdapterCreate2D.setFace(Type.CubemapFace.POSITIVE_X);
        allocationAdapterCreate2D.copyFrom(bitmap);
        allocationAdapterCreate2D.setFace(Type.CubemapFace.NEGATIVE_X);
        allocationAdapterCreate2D.copyFrom(bitmap2);
        allocationAdapterCreate2D.setFace(Type.CubemapFace.POSITIVE_Y);
        allocationAdapterCreate2D.copyFrom(bitmap3);
        allocationAdapterCreate2D.setFace(Type.CubemapFace.NEGATIVE_Y);
        allocationAdapterCreate2D.copyFrom(bitmap4);
        allocationAdapterCreate2D.setFace(Type.CubemapFace.POSITIVE_Z);
        allocationAdapterCreate2D.copyFrom(bitmap5);
        allocationAdapterCreate2D.setFace(Type.CubemapFace.NEGATIVE_Z);
        allocationAdapterCreate2D.copyFrom(bitmap6);
        return allocationCreateTyped;
    }

    public static Allocation createFromAllocation(RenderScript renderScript, Allocation allocation) {
        try {
            Trace.traceBegin(32768L, "createFromAllcation");
            renderScript.validate();
            if (allocation.getID(renderScript) == 0) {
                throw new RSInvalidStateException("Bad input Allocation");
            }
            Type type = allocation.getType();
            int usage = allocation.getUsage();
            MipmapControl mipmap = allocation.getMipmap();
            long jNAllocationCreateTyped = renderScript.nAllocationCreateTyped(type.getID(renderScript), mipmap.mID, usage, 0L);
            if (jNAllocationCreateTyped == 0) {
                throw new RSRuntimeException("Allocation creation failed.");
            }
            Allocation allocation2 = new Allocation(jNAllocationCreateTyped, renderScript, type, false, usage, mipmap);
            if ((usage & 32) != 0) {
                allocation2.shareBufferQueue(allocation);
            }
            Trace.traceEnd(32768L);
            return allocation2;
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public static Allocation createFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl, int i2) {
        try {
            Trace.traceBegin(32768L, "createFromBitmap");
            renderScript.validate();
            if (bitmap.getConfig() == null) {
                if ((i2 & 128) != 0) {
                    throw new RSIllegalArgumentException("USAGE_SHARED cannot be used with a Bitmap that has a null config.");
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                Allocation allocationCreateFromBitmap = createFromBitmap(renderScript, bitmapCreateBitmap, mipmapControl, i2);
                Trace.traceEnd(32768L);
                return allocationCreateFromBitmap;
            }
            Type typeTypeFromBitmap = typeFromBitmap(renderScript, bitmap, mipmapControl);
            if (mipmapControl != MipmapControl.MIPMAP_NONE || !typeTypeFromBitmap.getElement().isCompatible(Element.RGBA_8888(renderScript)) || i2 != 131) {
                long jNAllocationCreateFromBitmap = renderScript.nAllocationCreateFromBitmap(typeTypeFromBitmap.getID(renderScript), mipmapControl.mID, bitmap, i2);
                if (jNAllocationCreateFromBitmap == 0) {
                    throw new RSRuntimeException("Load failed.");
                }
                Allocation allocation = new Allocation(jNAllocationCreateFromBitmap, renderScript, typeTypeFromBitmap, true, i2, mipmapControl);
                Trace.traceEnd(32768L);
                return allocation;
            }
            long jNAllocationCreateBitmapBackedAllocation = renderScript.nAllocationCreateBitmapBackedAllocation(typeTypeFromBitmap.getID(renderScript), mipmapControl.mID, bitmap, i2);
            if (jNAllocationCreateBitmapBackedAllocation == 0) {
                throw new RSRuntimeException("Load failed.");
            }
            Allocation allocation2 = new Allocation(jNAllocationCreateBitmapBackedAllocation, renderScript, typeTypeFromBitmap, true, i2, mipmapControl);
            allocation2.setBitmap(bitmap);
            Trace.traceEnd(32768L);
            return allocation2;
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public static Allocation createFromBitmapResource(RenderScript renderScript, Resources resources, int i2, MipmapControl mipmapControl, int i3) {
        renderScript.validate();
        if ((i3 & 224) != 0) {
            throw new RSIllegalArgumentException("Unsupported usage specified.");
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, i2);
        Allocation allocationCreateFromBitmap = createFromBitmap(renderScript, bitmapDecodeResource, mipmapControl, i3);
        bitmapDecodeResource.recycle();
        return allocationCreateFromBitmap;
    }

    public static Allocation createFromString(RenderScript renderScript, String str, int i2) {
        renderScript.validate();
        try {
            byte[] bytes = str.getBytes("UTF-8");
            Allocation allocationCreateSized = createSized(renderScript, Element.U8(renderScript), bytes.length, i2);
            allocationCreateSized.copyFrom(bytes);
            return allocationCreateSized;
        } catch (Exception unused) {
            throw new RSRuntimeException("Could not convert string to utf-8.");
        }
    }

    public static Allocation createSized(RenderScript renderScript, Element element, int i2, int i3) {
        try {
            Trace.traceBegin(32768L, "createSized");
            renderScript.validate();
            Type.Builder builder = new Type.Builder(renderScript, element);
            builder.setX(i2);
            Type typeCreate = builder.create();
            long id = typeCreate.getID(renderScript);
            MipmapControl mipmapControl = MipmapControl.MIPMAP_NONE;
            long jNAllocationCreateTyped = renderScript.nAllocationCreateTyped(id, mipmapControl.mID, i3, 0L);
            if (jNAllocationCreateTyped == 0) {
                throw new RSRuntimeException("Allocation creation failed.");
            }
            Allocation allocation = new Allocation(jNAllocationCreateTyped, renderScript, typeCreate, true, i3, mipmapControl);
            Trace.traceEnd(32768L);
            return allocation;
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public static Allocation createTyped(RenderScript renderScript, Type type, MipmapControl mipmapControl, int i2) {
        try {
            Trace.traceBegin(32768L, "createTyped");
            renderScript.validate();
            if (type.getID(renderScript) == 0) {
                throw new RSInvalidStateException("Bad Type");
            }
            long jNAllocationCreateTyped = renderScript.nAllocationCreateTyped(type.getID(renderScript), mipmapControl.mID, i2, 0L);
            if (jNAllocationCreateTyped == 0) {
                throw new RSRuntimeException("Allocation creation failed.");
            }
            Allocation allocation = new Allocation(jNAllocationCreateTyped, renderScript, type, false, i2, mipmapControl);
            Trace.traceEnd(32768L);
            return allocation;
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    private void data1DChecks(int i2, int i3, int i4, int i5, boolean z2) {
        this.mRS.validate();
        if (i2 < 0) {
            throw new RSIllegalArgumentException("Offset must be >= 0.");
        }
        if (i3 < 1) {
            throw new RSIllegalArgumentException("Count must be >= 1.");
        }
        if (i2 + i3 > this.mCurrentCount) {
            StringBuilder sb = new StringBuilder("Overflow, Available count ");
            m.u(sb, this.mCurrentCount, ", got ", i3, " at offset ");
            throw new RSIllegalArgumentException(c.m(sb, i2, "."));
        }
        if (z2) {
            if (i4 < (i5 / 4) * 3) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
        } else if (i4 < i5) {
            throw new RSIllegalArgumentException("Array too small for allocation type.");
        }
    }

    public static Element elementFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        Bitmap.Config config = bitmap.getConfig();
        if (config == Bitmap.Config.ALPHA_8) {
            return Element.A_8(renderScript);
        }
        if (config == Bitmap.Config.ARGB_4444) {
            return Element.RGBA_4444(renderScript);
        }
        if (config == Bitmap.Config.ARGB_8888) {
            return Element.RGBA_8888(renderScript);
        }
        if (config == Bitmap.Config.RGB_565) {
            return Element.RGB_565(renderScript);
        }
        throw new RSInvalidStateException("Bad bitmap type: " + config);
    }

    private long getIDSafe() {
        Allocation allocation = this.mAdaptedAllocation;
        return allocation != null ? allocation.getID(this.mRS) : getID(this.mRS);
    }

    public static void sendBufferNotification(long j2) {
        OnBufferAvailableListener onBufferAvailableListener;
        synchronized (mAllocationMap) {
            Allocation allocation = mAllocationMap.get(new Long(j2));
            if (allocation != null && (onBufferAvailableListener = allocation.mBufferNotifier) != null) {
                onBufferAvailableListener.onBufferAvailable(allocation);
            }
        }
    }

    private void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    public static Type typeFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl) {
        Type.Builder builder = new Type.Builder(renderScript, elementFromBitmap(renderScript, bitmap));
        builder.setX(bitmap.getWidth());
        builder.setY(bitmap.getHeight());
        builder.setMipmaps(mipmapControl == MipmapControl.MIPMAP_FULL);
        return builder.create();
    }

    private void updateCacheInfo(Type type) {
        this.mCurrentDimX = type.getX();
        this.mCurrentDimY = type.getY();
        int z2 = type.getZ();
        this.mCurrentDimZ = z2;
        int i2 = this.mCurrentDimX;
        this.mCurrentCount = i2;
        int i3 = this.mCurrentDimY;
        if (i3 > 1) {
            this.mCurrentCount = i2 * i3;
        }
        if (z2 > 1) {
            this.mCurrentCount *= z2;
        }
    }

    private void validate2DRange(int i2, int i3, int i4, int i5) {
        if (this.mAdaptedAllocation != null) {
            return;
        }
        if (i2 < 0 || i3 < 0) {
            throw new RSIllegalArgumentException("Offset cannot be negative.");
        }
        if (i5 < 0 || i4 < 0) {
            throw new RSIllegalArgumentException("Height or width cannot be negative.");
        }
        if (i2 + i4 > this.mCurrentDimX || i3 + i5 > this.mCurrentDimY) {
            throw new RSIllegalArgumentException("Updated region larger than allocation.");
        }
    }

    private void validate3DRange(int i2, int i3, int i4, int i5, int i6, int i7) {
        if (this.mAdaptedAllocation != null) {
            return;
        }
        if (i2 < 0 || i3 < 0 || i4 < 0) {
            throw new RSIllegalArgumentException("Offset cannot be negative.");
        }
        if (i6 < 0 || i5 < 0 || i7 < 0) {
            throw new RSIllegalArgumentException("Height or width cannot be negative.");
        }
        if (i2 + i5 > this.mCurrentDimX || i3 + i6 > this.mCurrentDimY || i4 + i7 > this.mCurrentDimZ) {
            throw new RSIllegalArgumentException("Updated region larger than allocation.");
        }
    }

    private void validateBitmapFormat(Bitmap bitmap) {
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            throw new RSIllegalArgumentException("Bitmap has an unsupported format for this operation");
        }
        int i2 = AnonymousClass1.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
        if (i2 == 1) {
            if (this.mType.getElement().mKind == Element.DataKind.PIXEL_A) {
                return;
            }
            throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
        }
        if (i2 == 2) {
            if (this.mType.getElement().mKind == Element.DataKind.PIXEL_RGBA && this.mType.getElement().getBytesSize() == 4) {
                return;
            }
            throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
        }
        if (i2 == 3) {
            if (this.mType.getElement().mKind == Element.DataKind.PIXEL_RGB && this.mType.getElement().getBytesSize() == 2) {
                return;
            }
            throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
        }
        if (i2 != 4) {
            return;
        }
        if (this.mType.getElement().mKind == Element.DataKind.PIXEL_RGBA && this.mType.getElement().getBytesSize() == 2) {
            return;
        }
        throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
    }

    private void validateBitmapSize(Bitmap bitmap) {
        if (this.mCurrentDimX != bitmap.getWidth() || this.mCurrentDimY != bitmap.getHeight()) {
            throw new RSIllegalArgumentException("Cannot update allocation from bitmap, sizes mismatch");
        }
    }

    private void validateIsFloat32() {
        if (this.mType.mElement.mType == Element.DataType.FLOAT_32) {
            return;
        }
        throw new RSIllegalArgumentException("32 bit float source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsFloat64() {
        if (this.mType.mElement.mType == Element.DataType.FLOAT_64) {
            return;
        }
        throw new RSIllegalArgumentException("64 bit float source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt16OrFloat16() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_16 || dataType == Element.DataType.UNSIGNED_16 || dataType == Element.DataType.FLOAT_16) {
            return;
        }
        throw new RSIllegalArgumentException("16 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt32() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_32 || dataType == Element.DataType.UNSIGNED_32) {
            return;
        }
        throw new RSIllegalArgumentException("32 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt64() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_64 || dataType == Element.DataType.UNSIGNED_64) {
            return;
        }
        throw new RSIllegalArgumentException("64 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt8() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_8 || dataType == Element.DataType.UNSIGNED_8) {
            return;
        }
        throw new RSIllegalArgumentException("8 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsObject() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.RS_ELEMENT || dataType == Element.DataType.RS_TYPE || dataType == Element.DataType.RS_ALLOCATION || dataType == Element.DataType.RS_SAMPLER || dataType == Element.DataType.RS_SCRIPT || dataType == Element.DataType.RS_MESH || dataType == Element.DataType.RS_PROGRAM_FRAGMENT || dataType == Element.DataType.RS_PROGRAM_VERTEX || dataType == Element.DataType.RS_PROGRAM_RASTER || dataType == Element.DataType.RS_PROGRAM_STORE) {
            return;
        }
        throw new RSIllegalArgumentException("Object source does not match allocation type " + this.mType.mElement.mType);
    }

    private Element.DataType validateObjectIsPrimitiveArray(Object obj, boolean z2) {
        Class<?> cls = obj.getClass();
        if (!cls.isArray()) {
            throw new RSIllegalArgumentException("Object passed is not an array of primitives.");
        }
        Class<?> componentType = cls.getComponentType();
        if (!componentType.isPrimitive()) {
            throw new RSIllegalArgumentException("Object passed is not an Array of primitives.");
        }
        if (componentType == Long.TYPE) {
            if (!z2) {
                return Element.DataType.SIGNED_64;
            }
            validateIsInt64();
            return this.mType.mElement.mType;
        }
        if (componentType == Integer.TYPE) {
            if (!z2) {
                return Element.DataType.SIGNED_32;
            }
            validateIsInt32();
            return this.mType.mElement.mType;
        }
        if (componentType == Short.TYPE) {
            if (!z2) {
                return Element.DataType.SIGNED_16;
            }
            validateIsInt16OrFloat16();
            return this.mType.mElement.mType;
        }
        if (componentType == Byte.TYPE) {
            if (!z2) {
                return Element.DataType.SIGNED_8;
            }
            validateIsInt8();
            return this.mType.mElement.mType;
        }
        if (componentType == Float.TYPE) {
            if (z2) {
                validateIsFloat32();
            }
            return Element.DataType.FLOAT_32;
        }
        if (componentType == Double.TYPE) {
            if (z2) {
                validateIsFloat64();
            }
            return Element.DataType.FLOAT_64;
        }
        throw new RSIllegalArgumentException("Parameter of type " + componentType.getSimpleName() + "[] is not compatible with data type " + this.mType.mElement.mType.name() + " of allocation");
    }

    public void copy1DRangeFrom(int i2, int i3, Object obj) {
        copy1DRangeFromUnchecked(i2, i3, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy1DRangeTo(int i2, int i3, Object obj) {
        copy1DRangeToUnchecked(i2, i3, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, Object obj) throws Throwable {
        try {
            Trace.traceBegin(32768L, "copy2DRangeFrom");
            try {
                copy2DRangeFromUnchecked(i2, i3, i4, i5, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
                Trace.traceEnd(32768L);
            } catch (Throwable th) {
                th = th;
                Trace.traceEnd(32768L);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void copy2DRangeFromUnchecked(int i2, int i3, int i4, int i5, Object obj, Element.DataType dataType, int i6) {
        boolean z2;
        int i7;
        try {
            Trace.traceBegin(32768L, "copy2DRangeFromUnchecked");
            this.mRS.validate();
            validate2DRange(i2, i3, i4, i5);
            int bytesSize = this.mType.mElement.getBytesSize() * i4 * i5;
            int i8 = dataType.mSize * i6;
            if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
                if ((bytesSize / 4) * 3 > i8) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                i7 = bytesSize;
                z2 = true;
            } else {
                if (bytesSize > i8) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                z2 = false;
                i7 = i8;
            }
            this.mRS.nAllocationData2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, i4, i5, obj, i7, dataType, this.mType.mElement.mType.mSize, z2);
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public void copy2DRangeTo(int i2, int i3, int i4, int i5, Object obj) {
        copy2DRangeToUnchecked(i2, i3, i4, i5, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy2DRangeToUnchecked(int i2, int i3, int i4, int i5, Object obj, Element.DataType dataType, int i6) {
        boolean z2;
        int i7;
        try {
            Trace.traceBegin(32768L, "copy2DRangeToUnchecked");
            this.mRS.validate();
            validate2DRange(i2, i3, i4, i5);
            int bytesSize = this.mType.mElement.getBytesSize() * i4 * i5;
            int i8 = dataType.mSize * i6;
            if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
                if ((bytesSize / 4) * 3 > i8) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                i7 = bytesSize;
                z2 = true;
            } else {
                if (bytesSize > i8) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                }
                z2 = false;
                i7 = i8;
            }
            this.mRS.nAllocationRead2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, i4, i5, obj, i7, dataType, this.mType.mElement.mType.mSize, z2);
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public void copy3DRangeFrom(int i2, int i3, int i4, int i5, int i6, int i7, Object obj) throws Throwable {
        try {
            Trace.traceBegin(32768L, "copy3DRangeFrom");
            try {
                copy3DRangeFromUnchecked(i2, i3, i4, i5, i6, i7, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
                Trace.traceEnd(32768L);
            } catch (Throwable th) {
                th = th;
                Trace.traceEnd(32768L);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void copy3DRangeTo(int i2, int i3, int i4, int i5, int i6, int i7, Object obj) {
        copy3DRangeToUnchecked(i2, i3, i4, i5, i6, i7, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copyFrom(BaseObj[] baseObjArr) {
        try {
            Trace.traceBegin(32768L, "copyFrom");
            this.mRS.validate();
            validateIsObject();
            if (baseObjArr.length != this.mCurrentCount) {
                throw new RSIllegalArgumentException("Array size mismatch, allocation sizeX = " + this.mCurrentCount + ", array length = " + baseObjArr.length);
            }
            if (RenderScript.sPointerSize == 8) {
                long[] jArr = new long[baseObjArr.length * 4];
                for (int i2 = 0; i2 < baseObjArr.length; i2++) {
                    jArr[i2 * 4] = baseObjArr[i2].getID(this.mRS);
                }
                copy1DRangeFromUnchecked(0, this.mCurrentCount, (Object) jArr);
            } else {
                int[] iArr = new int[baseObjArr.length];
                for (int i3 = 0; i3 < baseObjArr.length; i3++) {
                    iArr[i3] = (int) baseObjArr[i3].getID(this.mRS);
                }
                copy1DRangeFromUnchecked(0, this.mCurrentCount, iArr);
            }
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public void copyTo(Bitmap bitmap) {
        try {
            Trace.traceBegin(32768L, "copyTo");
            this.mRS.validate();
            validateBitmapFormat(bitmap);
            validateBitmapSize(bitmap);
            RenderScript renderScript = this.mRS;
            renderScript.nAllocationCopyToBitmap(getID(renderScript), bitmap);
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    public void copyToFieldPacker(int i2, int i3, int i4, int i5, FieldPacker fieldPacker) {
        this.mRS.validate();
        if (i5 >= this.mType.mElement.mElements.length) {
            throw new RSIllegalArgumentException(c.e("Component_number ", i5, " out of range."));
        }
        if (i2 < 0) {
            throw new RSIllegalArgumentException("Offset x must be >= 0.");
        }
        if (i3 < 0) {
            throw new RSIllegalArgumentException("Offset y must be >= 0.");
        }
        if (i4 < 0) {
            throw new RSIllegalArgumentException("Offset z must be >= 0.");
        }
        byte[] data = fieldPacker.getData();
        int length = data.length;
        int bytesSize = this.mType.mElement.mElements[i5].getBytesSize() * this.mType.mElement.mArraySizes[i5];
        if (length != bytesSize) {
            throw new RSIllegalArgumentException(m.f("Field packer sizelength ", length, " does not match component size ", bytesSize, "."));
        }
        this.mRS.nAllocationElementRead(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, data, length);
    }

    @Override // android.renderscript.BaseObj
    public void destroy() {
        if ((this.mUsage & 64) != 0) {
            setSurface(null);
        }
        Type type = this.mType;
        if (type != null && this.mOwningType) {
            type.destroy();
        }
        super.destroy();
    }

    @Override // android.renderscript.BaseObj
    public void finalize() throws IllegalAccessException, InvocationTargetException {
        RenderScript.registerNativeFree.invoke(RenderScript.sRuntime, Integer.valueOf(this.mSize));
        super.finalize();
    }

    public void generateMipmaps() {
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationGenerateMipmaps(getID(renderScript));
    }

    public ByteBuffer getByteBuffer() {
        if (this.mType.hasFaces()) {
            throw new RSInvalidStateException("Cubemap is not supported for getByteBuffer().");
        }
        if (this.mType.getYuv() == 17 || this.mType.getYuv() == 842094169 || this.mType.getYuv() == 35) {
            throw new RSInvalidStateException("YUV format is not supported for getByteBuffer().");
        }
        if (this.mByteBuffer == null || (this.mUsage & 32) != 0) {
            int bytesSize = this.mType.getElement().getBytesSize() * this.mType.getX();
            long[] jArr = new long[1];
            RenderScript renderScript = this.mRS;
            this.mByteBuffer = renderScript.nAllocationGetByteBuffer(getID(renderScript), jArr, bytesSize, this.mType.getY(), this.mType.getZ());
            this.mByteBufferStride = jArr[0];
        }
        return (this.mUsage & 32) != 0 ? this.mByteBuffer.asReadOnlyBuffer() : this.mByteBuffer;
    }

    public int getBytesSize() {
        Type type = this.mType;
        if (type.mDimYuv != 0) {
            return (int) Math.ceil(((double) (this.mType.getElement().getBytesSize() * type.getCount())) * 1.5d);
        }
        return this.mType.getElement().getBytesSize() * type.getCount();
    }

    public Element getElement() {
        return this.mType.getElement();
    }

    public MipmapControl getMipmap() {
        return this.mMipmapControl;
    }

    public long getStride() {
        if (this.mByteBufferStride == -1) {
            getByteBuffer();
        }
        return this.mByteBufferStride;
    }

    public Surface getSurface() {
        if ((this.mUsage & 32) == 0) {
            throw new RSInvalidStateException("Allocation is not a surface texture.");
        }
        if (this.mGetSurfaceSurface == null) {
            RenderScript renderScript = this.mRS;
            this.mGetSurfaceSurface = renderScript.nAllocationGetSurface(getID(renderScript));
        }
        return this.mGetSurfaceSurface;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public Type getType() {
        return this.mType;
    }

    public int getUsage() {
        return this.mUsage;
    }

    public void ioReceive() {
        try {
            Trace.traceBegin(32768L, "ioReceive");
            if ((this.mUsage & 32) == 0) {
                throw new RSIllegalArgumentException("Can only receive if IO_INPUT usage specified.");
            }
            this.mRS.validate();
            RenderScript renderScript = this.mRS;
            this.mTimeStamp = renderScript.nAllocationIoReceive(getID(renderScript));
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public void ioSend() {
        try {
            Trace.traceBegin(32768L, "ioSend");
            if ((this.mUsage & 64) == 0) {
                throw new RSIllegalArgumentException("Can only send buffer if IO_OUTPUT usage specified.");
            }
            this.mRS.validate();
            RenderScript renderScript = this.mRS;
            renderScript.nAllocationIoSend(getID(renderScript));
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public synchronized void resize(int i2) {
        if (this.mRS.getApplicationContext().getApplicationInfo().targetSdkVersion >= 21) {
            throw new RSRuntimeException("Resize is not allowed in API 21+.");
        }
        if (this.mType.getY() > 0 || this.mType.getZ() > 0 || this.mType.hasFaces() || this.mType.hasMipmaps()) {
            throw new RSInvalidStateException("Resize only support for 1D allocations at this time.");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationResize1D(getID(renderScript), i2);
        this.mRS.finish();
        RenderScript renderScript2 = this.mRS;
        long jNAllocationGetType = renderScript2.nAllocationGetType(getID(renderScript2));
        this.mType.setID(0L);
        Type type = new Type(jNAllocationGetType, this.mRS);
        this.mType = type;
        type.updateFromNative();
        updateCacheInfo(this.mType);
    }

    public void setAutoPadding(boolean z2) {
        this.mAutoPadding = z2;
    }

    public void setFromFieldPacker(int i2, FieldPacker fieldPacker) {
        this.mRS.validate();
        int bytesSize = this.mType.mElement.getBytesSize();
        byte[] data = fieldPacker.getData();
        int pos = fieldPacker.getPos();
        int i3 = pos / bytesSize;
        if (bytesSize * i3 != pos) {
            throw new RSIllegalArgumentException(m.f("Field packer length ", pos, " not divisible by element size ", bytesSize, "."));
        }
        copy1DRangeFromUnchecked(i2, i3, data);
    }

    public void setOnBufferAvailableListener(OnBufferAvailableListener onBufferAvailableListener) {
        synchronized (mAllocationMap) {
            mAllocationMap.put(new Long(getID(this.mRS)), this);
            this.mBufferNotifier = onBufferAvailableListener;
        }
    }

    public void setSurface(Surface surface) {
        this.mRS.validate();
        if ((this.mUsage & 64) == 0) {
            throw new RSInvalidStateException("Allocation is not USAGE_IO_OUTPUT.");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationSetSurface(getID(renderScript), surface);
    }

    public void setupBufferQueue(int i2) {
        this.mRS.validate();
        if ((this.mUsage & 32) == 0) {
            throw new RSInvalidStateException("Allocation is not USAGE_IO_INPUT.");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationSetupBufferQueue(getID(renderScript), i2);
    }

    public void shareBufferQueue(Allocation allocation) {
        this.mRS.validate();
        if ((this.mUsage & 32) == 0) {
            throw new RSInvalidStateException("Allocation is not USAGE_IO_INPUT.");
        }
        this.mGetSurfaceSurface = allocation.getSurface();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationShareBufferQueue(getID(renderScript), allocation.getID(this.mRS));
    }

    public void syncAll(int i2) {
        try {
            Trace.traceBegin(32768L, "syncAll");
            if (i2 == 1 || i2 == 2) {
                if ((this.mUsage & 128) != 0) {
                    copyFrom(this.mBitmap);
                }
            } else if (i2 != 4 && i2 != 8) {
                if (i2 != 128) {
                    throw new RSIllegalArgumentException("Source must be exactly one usage type.");
                }
                if ((this.mUsage & 128) != 0) {
                    copyTo(this.mBitmap);
                }
            }
            this.mRS.validate();
            this.mRS.nAllocationSyncAll(getIDSafe(), i2);
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    @Override // android.renderscript.BaseObj
    public void updateFromNative() {
        super.updateFromNative();
        RenderScript renderScript = this.mRS;
        long jNAllocationGetType = renderScript.nAllocationGetType(getID(renderScript));
        if (jNAllocationGetType != 0) {
            Type type = new Type(jNAllocationGetType, this.mRS);
            this.mType = type;
            type.updateFromNative();
            updateCacheInfo(this.mType);
        }
    }

    public void copy1DRangeFrom(int i2, int i3, int[] iArr) {
        validateIsInt32();
        copy1DRangeFromUnchecked(i2, i3, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy1DRangeTo(int i2, int i3, int[] iArr) {
        validateIsInt32();
        copy1DRangeToUnchecked(i2, i3, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeTo(int i2, int i3, int i4, int i5, byte[] bArr) {
        validateIsInt8();
        copy2DRangeToUnchecked(i2, i3, i4, i5, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public static Allocation createFromBitmapResource(RenderScript renderScript, Resources resources, int i2) {
        if (renderScript.getApplicationContext().getApplicationInfo().targetSdkVersion >= 18) {
            return createFromBitmapResource(renderScript, resources, i2, MipmapControl.MIPMAP_NONE, 3);
        }
        return createFromBitmapResource(renderScript, resources, i2, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copy1DRangeFrom(int i2, int i3, short[] sArr) {
        validateIsInt16OrFloat16();
        copy1DRangeFromUnchecked(i2, i3, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy1DRangeTo(int i2, int i3, short[] sArr) {
        validateIsInt16OrFloat16();
        copy1DRangeToUnchecked(i2, i3, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, byte[] bArr) {
        validateIsInt8();
        copy2DRangeFromUnchecked(i2, i3, i4, i5, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeTo(int i2, int i3, int i4, int i5, short[] sArr) {
        validateIsInt16OrFloat16();
        copy2DRangeToUnchecked(i2, i3, i4, i5, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy3DRangeFrom(int i2, int i3, int i4, int i5, int i6, int i7, Allocation allocation, int i8, int i9, int i10) {
        this.mRS.validate();
        validate3DRange(i2, i3, i4, i5, i6, i7);
        this.mRS.nAllocationData3D(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, i6, i7, allocation.getID(this.mRS), i8, i9, i10, allocation.mSelectedLOD);
    }

    private void copyTo(Object obj, Element.DataType dataType, int i2) {
        try {
            Trace.traceBegin(32768L, "copyTo");
            this.mRS.validate();
            boolean z2 = this.mAutoPadding && this.mType.getElement().getVectorSize() == 3;
            if (z2) {
                if (dataType.mSize * i2 < (this.mSize / 4) * 3) {
                    throw new RSIllegalArgumentException("Size of output array cannot be smaller than size of allocation.");
                }
            } else if (dataType.mSize * i2 < this.mSize) {
                throw new RSIllegalArgumentException("Size of output array cannot be smaller than size of allocation.");
            }
            RenderScript renderScript = this.mRS;
            renderScript.nAllocationRead(getID(renderScript), obj, dataType, this.mType.mElement.mType.mSize, z2);
            Trace.traceEnd(32768L);
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, Object obj) {
        copy1DRangeFromUnchecked(i2, i3, obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
    }

    public void copy1DRangeToUnchecked(int i2, int i3, Object obj) {
        copy1DRangeToUnchecked(i2, i3, obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
    }

    public void copy1DRangeFrom(int i2, int i3, byte[] bArr) {
        validateIsInt8();
        copy1DRangeFromUnchecked(i2, i3, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeTo(int i2, int i3, byte[] bArr) {
        validateIsInt8();
        copy1DRangeToUnchecked(i2, i3, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, short[] sArr) {
        validateIsInt16OrFloat16();
        copy2DRangeFromUnchecked(i2, i3, i4, i5, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy2DRangeTo(int i2, int i3, int i4, int i5, int[] iArr) {
        validateIsInt32();
        copy2DRangeToUnchecked(i2, i3, i4, i5, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyFromUnchecked(Object obj) {
        try {
            Trace.traceBegin(32768L, "copyFromUnchecked");
            copyFromUnchecked(obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    public static Allocation createTyped(RenderScript renderScript, Type type, int i2) {
        return createTyped(renderScript, type, MipmapControl.MIPMAP_NONE, i2);
    }

    public void copy1DRangeFrom(int i2, int i3, float[] fArr) {
        validateIsFloat32();
        copy1DRangeFromUnchecked(i2, i3, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, int[] iArr) {
        copy1DRangeFromUnchecked(i2, i3, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy1DRangeTo(int i2, int i3, float[] fArr) {
        validateIsFloat32();
        copy1DRangeToUnchecked(i2, i3, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeToUnchecked(int i2, int i3, int[] iArr) {
        copy1DRangeToUnchecked(i2, i3, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, int[] iArr) {
        validateIsInt32();
        copy2DRangeFromUnchecked(i2, i3, i4, i5, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeTo(int i2, int i3, int i4, int i5, float[] fArr) {
        validateIsFloat32();
        copy2DRangeToUnchecked(i2, i3, i4, i5, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public static Allocation createSized(RenderScript renderScript, Element element, int i2) {
        return createSized(renderScript, element, i2, 1);
    }

    public static Allocation createTyped(RenderScript renderScript, Type type) {
        return createTyped(renderScript, type, MipmapControl.MIPMAP_NONE, 1);
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, short[] sArr) {
        copy1DRangeFromUnchecked(i2, i3, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy1DRangeToUnchecked(int i2, int i3, short[] sArr) {
        copy1DRangeToUnchecked(i2, i3, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy1DRangeFrom(int i2, int i3, Allocation allocation, int i4) {
        Trace.traceBegin(32768L, "copy1DRangeFrom");
        this.mRS.nAllocationData2D(getIDSafe(), i2, 0, this.mSelectedLOD, this.mSelectedFace.mID, i3, 1, allocation.getID(this.mRS), i4, 0, allocation.mSelectedLOD, allocation.mSelectedFace.mID);
        Trace.traceEnd(32768L);
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, byte[] bArr) {
        copy1DRangeFromUnchecked(i2, i3, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeToUnchecked(int i2, int i3, byte[] bArr) {
        copy1DRangeToUnchecked(i2, i3, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, float[] fArr) {
        validateIsFloat32();
        copy2DRangeFromUnchecked(i2, i3, i4, i5, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, float[] fArr) {
        copy1DRangeFromUnchecked(i2, i3, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeToUnchecked(int i2, int i3, float[] fArr) {
        copy1DRangeToUnchecked(i2, i3, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, Allocation allocation, int i6, int i7) {
        try {
            Trace.traceBegin(32768L, "copy2DRangeFrom");
            this.mRS.validate();
            validate2DRange(i2, i3, i4, i5);
            this.mRS.nAllocationData2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, i4, i5, allocation.getID(this.mRS), i6, i7, allocation.mSelectedLOD, allocation.mSelectedFace.mID);
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    public void copyFromUnchecked(int[] iArr) {
        copyFromUnchecked(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyFromUnchecked(short[] sArr) {
        copyFromUnchecked(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copyFromUnchecked(byte[] bArr) {
        copyFromUnchecked(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copyFrom(Object obj) {
        try {
            Trace.traceBegin(32768L, "copyFrom");
            copyFromUnchecked(obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    public void copyFromUnchecked(float[] fArr) {
        copyFromUnchecked(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyTo(Object obj) {
        copyTo(obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void setFromFieldPacker(int i2, int i3, FieldPacker fieldPacker) {
        setFromFieldPacker(i2, 0, 0, i3, fieldPacker);
    }

    public void setFromFieldPacker(int i2, int i3, int i4, int i5, FieldPacker fieldPacker) {
        this.mRS.validate();
        if (i5 >= this.mType.mElement.mElements.length) {
            throw new RSIllegalArgumentException(c.e("Component_number ", i5, " out of range."));
        }
        if (i2 < 0) {
            throw new RSIllegalArgumentException("Offset x must be >= 0.");
        }
        if (i3 < 0) {
            throw new RSIllegalArgumentException("Offset y must be >= 0.");
        }
        if (i4 >= 0) {
            byte[] data = fieldPacker.getData();
            int pos = fieldPacker.getPos();
            int bytesSize = this.mType.mElement.mElements[i5].getBytesSize() * this.mType.mElement.mArraySizes[i5];
            if (pos == bytesSize) {
                this.mRS.nAllocationElementData(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, data, pos);
                return;
            }
            throw new RSIllegalArgumentException(m.f("Field packer sizelength ", pos, " does not match component size ", bytesSize, "."));
        }
        throw new RSIllegalArgumentException("Offset z must be >= 0.");
    }

    public static Allocation createCubemapFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        return createCubemapFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copyTo(byte[] bArr) {
        validateIsInt8();
        copyTo(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeFrom(int i2, int i3, Bitmap bitmap) {
        try {
            Trace.traceBegin(32768L, "copy2DRangeFrom");
            this.mRS.validate();
            if (bitmap.getConfig() == null) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                copy2DRangeFrom(i2, i3, bitmapCreateBitmap);
            } else {
                validateBitmapFormat(bitmap);
                validate2DRange(i2, i3, bitmap.getWidth(), bitmap.getHeight());
                this.mRS.nAllocationData2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, bitmap);
            }
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    public Allocation(long j2, RenderScript renderScript, Type type, boolean z2, int i2, MipmapControl mipmapControl) {
        this(j2, renderScript, type, i2);
        this.mOwningType = z2;
        this.mMipmapControl = mipmapControl;
    }

    public void copyFrom(int[] iArr) {
        validateIsInt32();
        copyFromUnchecked(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyTo(short[] sArr) {
        validateIsInt16OrFloat16();
        copyTo(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public static Allocation createFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        if (renderScript.getApplicationContext().getApplicationInfo().targetSdkVersion >= 18) {
            return createFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 131);
        }
        return createFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copyFrom(short[] sArr) {
        validateIsInt16OrFloat16();
        copyFromUnchecked(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copyTo(int[] iArr) {
        validateIsInt32();
        copyTo(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyFrom(byte[] bArr) {
        validateIsInt8();
        copyFromUnchecked(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copyTo(float[] fArr) {
        validateIsFloat32();
        copyTo(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFrom(float[] fArr) {
        validateIsFloat32();
        copyFromUnchecked(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFrom(Bitmap bitmap) {
        try {
            Trace.traceBegin(32768L, "copyFrom");
            this.mRS.validate();
            if (bitmap.getConfig() == null) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                copyFrom(bitmapCreateBitmap);
            } else {
                validateBitmapSize(bitmap);
                validateBitmapFormat(bitmap);
                RenderScript renderScript = this.mRS;
                renderScript.nAllocationCopyFromBitmap(getID(renderScript), bitmap);
            }
        } finally {
            Trace.traceEnd(32768L);
        }
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript renderScript, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6) {
        return createCubemapFromCubeFaces(renderScript, bitmap, bitmap2, bitmap3, bitmap4, bitmap5, bitmap6, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copyFrom(Allocation allocation) {
        try {
            Trace.traceBegin(32768L, "copyFrom");
            this.mRS.validate();
            if (this.mType.equals(allocation.getType())) {
                copy2DRangeFrom(0, 0, this.mCurrentDimX, this.mCurrentDimY, allocation, 0, 0);
                Trace.traceEnd(32768L);
                return;
            }
            throw new RSIllegalArgumentException("Types of allocations must match.");
        } catch (Throwable th) {
            Trace.traceEnd(32768L);
            throw th;
        }
    }
}
