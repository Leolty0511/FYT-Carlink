package android.renderscript;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.os.Trace;
import android.util.Log;
import android.view.Surface;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Allocation extends BaseObj {
    public static final int USAGE_GRAPHICS_CONSTANTS = 8;
    public static final int USAGE_GRAPHICS_RENDER_TARGET = 16;
    public static final int USAGE_GRAPHICS_TEXTURE = 2;
    public static final int USAGE_GRAPHICS_VERTEX = 4;
    public static final int USAGE_IO_INPUT = 32;
    public static final int USAGE_IO_OUTPUT = 64;
    public static final int USAGE_SCRIPT = 1;
    public static final int USAGE_SHARED = 128;
    public static HashMap<Integer, Allocation> mAllocationMap = new HashMap<>();
    public static BitmapFactory.Options mBitmapOptions;
    public Allocation mAdaptedAllocation;
    public Bitmap mBitmap;
    public OnBufferAvailableListener mBufferNotifier;
    public boolean mConstrainedFace;
    public boolean mConstrainedLOD;
    public boolean mConstrainedY;
    public boolean mConstrainedZ;
    public int mCurrentCount;
    public int mCurrentDimX;
    public int mCurrentDimY;
    public int mCurrentDimZ;
    public boolean mReadAllowed;
    public Type.CubemapFace mSelectedFace;
    public int mSelectedLOD;
    public int mSelectedY;
    public int mSelectedZ;
    public int mSize;
    public Type mType;
    public int mUsage;
    public boolean mWriteAllowed;

    /* JADX INFO: renamed from: android.renderscript.Allocation$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

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

        public int mID;

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

    public Allocation(int i2, RenderScript renderScript, Type type, int i3) {
        super(i2, renderScript);
        this.mReadAllowed = true;
        this.mWriteAllowed = true;
        this.mSelectedFace = Type.CubemapFace.POSITIVE_X;
        if ((i3 & (-256)) != 0) {
            throw new RSIllegalArgumentException("Unknown usage specified.");
        }
        if ((i3 & 32) != 0) {
            this.mWriteAllowed = false;
            if ((i3 & (-36)) != 0) {
                throw new RSIllegalArgumentException("Invalid usage combination.");
            }
        }
        this.mType = type;
        this.mUsage = i3;
        if (type != null) {
            this.mSize = type.getCount() * this.mType.getElement().getBytesSize();
            updateCacheInfo(type);
        }
        try {
            RenderScript.registerNativeAllocation.invoke(RenderScript.sRuntime, Integer.valueOf(this.mSize));
        } catch (Exception e2) {
            Log.e(RenderScript.LOG_TAG, "Couldn't invoke registerNativeAllocation:" + e2);
            throw new RSRuntimeException("Couldn't invoke registerNativeAllocation:" + e2);
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
        int iNAllocationCubeCreateFromBitmap = renderScript.nAllocationCubeCreateFromBitmap(typeCreate.getID(renderScript), mipmapControl.mID, bitmap, i2);
        if (iNAllocationCubeCreateFromBitmap != 0) {
            return new Allocation(iNAllocationCubeCreateFromBitmap, renderScript, typeCreate, i2);
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

    public static Allocation createFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl, int i2) {
        Trace.traceBegin(32768L, "createFromBitmap");
        renderScript.validate();
        if (bitmap.getConfig() == null) {
            if ((i2 & 128) != 0) {
                throw new RSIllegalArgumentException("USAGE_SHARED cannot be used with a Bitmap that has a null config.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            return createFromBitmap(renderScript, bitmapCreateBitmap, mipmapControl, i2);
        }
        Type typeTypeFromBitmap = typeFromBitmap(renderScript, bitmap, mipmapControl);
        if (mipmapControl != MipmapControl.MIPMAP_NONE || !typeTypeFromBitmap.getElement().isCompatible(Element.RGBA_8888(renderScript)) || i2 != 131) {
            int iNAllocationCreateFromBitmap = renderScript.nAllocationCreateFromBitmap(typeTypeFromBitmap.getID(renderScript), mipmapControl.mID, bitmap, i2);
            if (iNAllocationCreateFromBitmap == 0) {
                throw new RSRuntimeException("Load failed.");
            }
            Trace.traceEnd(32768L);
            return new Allocation(iNAllocationCreateFromBitmap, renderScript, typeTypeFromBitmap, i2);
        }
        int iNAllocationCreateBitmapBackedAllocation = renderScript.nAllocationCreateBitmapBackedAllocation(typeTypeFromBitmap.getID(renderScript), mipmapControl.mID, bitmap, i2);
        if (iNAllocationCreateBitmapBackedAllocation == 0) {
            throw new RSRuntimeException("Load failed.");
        }
        Allocation allocation = new Allocation(iNAllocationCreateBitmapBackedAllocation, renderScript, typeTypeFromBitmap, i2);
        allocation.setBitmap(bitmap);
        return allocation;
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
        Trace.traceBegin(32768L, "createSized");
        renderScript.validate();
        Type.Builder builder = new Type.Builder(renderScript, element);
        builder.setX(i2);
        Type typeCreate = builder.create();
        int iNAllocationCreateTyped = renderScript.nAllocationCreateTyped(typeCreate.getID(renderScript), MipmapControl.MIPMAP_NONE.mID, i3, 0);
        if (iNAllocationCreateTyped == 0) {
            throw new RSRuntimeException("Allocation creation failed.");
        }
        Trace.traceEnd(32768L);
        return new Allocation(iNAllocationCreateTyped, renderScript, typeCreate, i3);
    }

    public static Allocation createTyped(RenderScript renderScript, Type type, MipmapControl mipmapControl, int i2) {
        Trace.traceBegin(32768L, "createTyped");
        renderScript.validate();
        if (type.getID(renderScript) == 0) {
            throw new RSInvalidStateException("Bad Type");
        }
        int iNAllocationCreateTyped = renderScript.nAllocationCreateTyped(type.getID(renderScript), mipmapControl.mID, i2, 0);
        if (iNAllocationCreateTyped == 0) {
            throw new RSRuntimeException("Allocation creation failed.");
        }
        Trace.traceEnd(32768L);
        return new Allocation(iNAllocationCreateTyped, renderScript, type, i2);
    }

    private void data1DChecks(int i2, int i3, int i4, int i5) {
        this.mRS.validate();
        if (i2 < 0) {
            throw new RSIllegalArgumentException("Offset must be >= 0.");
        }
        if (i3 < 1) {
            throw new RSIllegalArgumentException("Count must be >= 1.");
        }
        if (i2 + i3 <= this.mCurrentCount) {
            if (i4 < i5) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            return;
        }
        throw new RSIllegalArgumentException("Overflow, Available count " + this.mCurrentCount + ", got " + i3 + " at offset " + i2 + ".");
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

    private int getIDSafe() {
        Allocation allocation = this.mAdaptedAllocation;
        return allocation != null ? allocation.getID(this.mRS) : getID(this.mRS);
    }

    public static void sendBufferNotification(int i2) {
        OnBufferAvailableListener onBufferAvailableListener;
        synchronized (mAllocationMap) {
            Allocation allocation = mAllocationMap.get(new Integer(i2));
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

    private void validateIsInt16() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_16 || dataType == Element.DataType.UNSIGNED_16) {
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

    public void copy1DRangeFrom(int i2, int i3, int[] iArr) {
        Trace.traceBegin(32768L, "copy1DRangeFrom");
        validateIsInt32();
        copy1DRangeFromUnchecked(i2, i3, iArr);
        Trace.traceEnd(32768L);
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, int[] iArr) {
        Trace.traceBegin(32768L, "copy1DRangeFromUnchecked");
        int bytesSize = this.mType.mElement.getBytesSize() * i3;
        data1DChecks(i2, i3, iArr.length * 4, bytesSize);
        this.mRS.nAllocationData1D(getIDSafe(), i2, this.mSelectedLOD, i3, iArr, bytesSize);
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, byte[] bArr) {
        Trace.traceBegin(32768L, "copy2DRangeFrom");
        validateIsInt8();
        copy2DRangeFromUnchecked(i2, i3, i4, i5, bArr);
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFromUnchecked(int i2, int i3, int i4, int i5, byte[] bArr) {
        Trace.traceBegin(32768L, "copy2DRangeFromUnchecked");
        this.mRS.validate();
        validate2DRange(i2, i3, i4, i5);
        this.mRS.nAllocationData2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, i4, i5, bArr, bArr.length);
        Trace.traceEnd(32768L);
    }

    public void copy3DRangeFrom(int i2, int i3, int i4, int i5, int i6, int i7, byte[] bArr) {
        validateIsInt8();
        copy3DRangeFromUnchecked(i2, i3, i4, i5, i6, i7, bArr);
    }

    public void copy3DRangeFromUnchecked(int i2, int i3, int i4, int i5, int i6, int i7, byte[] bArr) {
        this.mRS.validate();
        validate3DRange(i2, i3, i4, i5, i6, i7);
        this.mRS.nAllocationData3D(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, i6, i7, bArr, bArr.length);
    }

    public void copyFrom(BaseObj[] baseObjArr) {
        Trace.traceBegin(32768L, "copyFrom");
        this.mRS.validate();
        validateIsObject();
        if (baseObjArr.length != this.mCurrentCount) {
            throw new RSIllegalArgumentException("Array size mismatch, allocation sizeX = " + this.mCurrentCount + ", array length = " + baseObjArr.length);
        }
        int[] iArr = new int[baseObjArr.length];
        for (int i2 = 0; i2 < baseObjArr.length; i2++) {
            iArr[i2] = baseObjArr[i2].getID(this.mRS);
        }
        copy1DRangeFromUnchecked(0, this.mCurrentCount, iArr);
        Trace.traceEnd(32768L);
    }

    public void copyFromUnchecked(int[] iArr) {
        Trace.traceBegin(32768L, "copyFromUnchecked");
        this.mRS.validate();
        int i2 = this.mCurrentDimZ;
        if (i2 > 0) {
            copy3DRangeFromUnchecked(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i2, iArr);
        } else {
            int i3 = this.mCurrentDimY;
            if (i3 > 0) {
                copy2DRangeFromUnchecked(0, 0, this.mCurrentDimX, i3, iArr);
            } else {
                copy1DRangeFromUnchecked(0, this.mCurrentCount, iArr);
            }
        }
        Trace.traceEnd(32768L);
    }

    public void copyTo(Bitmap bitmap) {
        Trace.traceBegin(32768L, "copyTo");
        this.mRS.validate();
        validateBitmapFormat(bitmap);
        validateBitmapSize(bitmap);
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationCopyToBitmap(getID(renderScript), bitmap);
        Trace.traceEnd(32768L);
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

    public int getBytesSize() {
        return this.mType.getCount() * this.mType.getElement().getBytesSize();
    }

    public Element getElement() {
        return this.mType.getElement();
    }

    public Surface getSurface() {
        if ((this.mUsage & 32) == 0) {
            throw new RSInvalidStateException("Allocation is not a surface texture.");
        }
        RenderScript renderScript = this.mRS;
        return renderScript.nAllocationGetSurface(getID(renderScript));
    }

    public Type getType() {
        return this.mType;
    }

    public int getUsage() {
        return this.mUsage;
    }

    public void ioReceive() {
        Trace.traceBegin(32768L, "ioReceive");
        if ((this.mUsage & 32) == 0) {
            throw new RSIllegalArgumentException("Can only receive if IO_INPUT usage specified.");
        }
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationIoReceive(getID(renderScript));
        Trace.traceEnd(32768L);
    }

    public void ioSend() {
        Trace.traceBegin(32768L, "ioSend");
        if ((this.mUsage & 64) == 0) {
            throw new RSIllegalArgumentException("Can only send buffer if IO_OUTPUT usage specified.");
        }
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationIoSend(getID(renderScript));
        Trace.traceEnd(32768L);
    }

    public void ioSendOutput() {
        ioSend();
    }

    public synchronized void resize(int i2) {
        if (this.mType.getY() > 0 || this.mType.getZ() > 0 || this.mType.hasFaces() || this.mType.hasMipmaps()) {
            throw new RSInvalidStateException("Resize only support for 1D allocations at this time.");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationResize1D(getID(renderScript), i2);
        this.mRS.finish();
        RenderScript renderScript2 = this.mRS;
        Type type = new Type(renderScript2.nAllocationGetType(getID(renderScript2)), this.mRS);
        this.mType = type;
        type.updateFromNative();
        updateCacheInfo(this.mType);
    }

    public void setFromFieldPacker(int i2, FieldPacker fieldPacker) {
        this.mRS.validate();
        int bytesSize = this.mType.mElement.getBytesSize();
        byte[] data = fieldPacker.getData();
        int length = data.length / bytesSize;
        if (bytesSize * length == data.length) {
            copy1DRangeFromUnchecked(i2, length, data);
            return;
        }
        throw new RSIllegalArgumentException("Field packer length " + data.length + " not divisible by element size " + bytesSize + ".");
    }

    public void setOnBufferAvailableListener(OnBufferAvailableListener onBufferAvailableListener) {
        synchronized (mAllocationMap) {
            mAllocationMap.put(new Integer(getID(this.mRS)), this);
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

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        setSurface(new Surface(surfaceTexture));
    }

    public void syncAll(int i2) {
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
    }

    @Override // android.renderscript.BaseObj
    public void updateFromNative() {
        super.updateFromNative();
        RenderScript renderScript = this.mRS;
        int iNAllocationGetType = renderScript.nAllocationGetType(getID(renderScript));
        if (iNAllocationGetType != 0) {
            Type type = new Type(iNAllocationGetType, this.mRS);
            this.mType = type;
            type.updateFromNative();
            updateCacheInfo(this.mType);
        }
    }

    public void copy3DRangeFrom(int i2, int i3, int i4, int i5, int i6, int i7, short[] sArr) {
        validateIsInt16();
        copy3DRangeFromUnchecked(i2, i3, i4, i5, i6, i7, sArr);
    }

    public void copy3DRangeFromUnchecked(int i2, int i3, int i4, int i5, int i6, int i7, short[] sArr) {
        this.mRS.validate();
        validate3DRange(i2, i3, i4, i5, i6, i7);
        this.mRS.nAllocationData3D(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, i6, i7, sArr, sArr.length * 2);
    }

    public void copy1DRangeFrom(int i2, int i3, short[] sArr) {
        Trace.traceBegin(32768L, "copy1DRangeFrom");
        validateIsInt16();
        copy1DRangeFromUnchecked(i2, i3, sArr);
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, short[] sArr) {
        Trace.traceBegin(32768L, "copy2DRangeFrom");
        validateIsInt16();
        copy2DRangeFromUnchecked(i2, i3, i4, i5, sArr);
        Trace.traceEnd(32768L);
    }

    public void copy3DRangeFrom(int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        validateIsInt32();
        copy3DRangeFromUnchecked(i2, i3, i4, i5, i6, i7, iArr);
    }

    public static Allocation createFromBitmapResource(RenderScript renderScript, Resources resources, int i2) {
        if (renderScript.getApplicationContext().getApplicationInfo().targetSdkVersion >= 18) {
            return createFromBitmapResource(renderScript, resources, i2, MipmapControl.MIPMAP_NONE, 3);
        }
        return createFromBitmapResource(renderScript, resources, i2, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, short[] sArr) {
        Trace.traceBegin(32768L, "copy1DRangeFromUnchecked");
        int bytesSize = this.mType.mElement.getBytesSize() * i3;
        data1DChecks(i2, i3, sArr.length * 2, bytesSize);
        this.mRS.nAllocationData1D(getIDSafe(), i2, this.mSelectedLOD, i3, sArr, bytesSize);
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFromUnchecked(int i2, int i3, int i4, int i5, short[] sArr) {
        Trace.traceBegin(32768L, "copy2DRangeFromUnchecked");
        this.mRS.validate();
        validate2DRange(i2, i3, i4, i5);
        this.mRS.nAllocationData2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, i4, i5, sArr, sArr.length * 2);
        Trace.traceEnd(32768L);
    }

    public void copy3DRangeFrom(int i2, int i3, int i4, int i5, int i6, int i7, float[] fArr) {
        validateIsFloat32();
        copy3DRangeFromUnchecked(i2, i3, i4, i5, i6, i7, fArr);
    }

    public void copy3DRangeFromUnchecked(int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        this.mRS.validate();
        validate3DRange(i2, i3, i4, i5, i6, i7);
        this.mRS.nAllocationData3D(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, i6, i7, iArr, iArr.length * 4);
    }

    public void copyTo(byte[] bArr) {
        Trace.traceBegin(32768L, "copyTo");
        validateIsInt8();
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationRead(getID(renderScript), bArr);
        Trace.traceEnd(32768L);
    }

    public void setFromFieldPacker(int i2, int i3, FieldPacker fieldPacker) {
        this.mRS.validate();
        if (i3 >= this.mType.mElement.mElements.length) {
            throw new RSIllegalArgumentException("Component_number " + i3 + " out of range.");
        }
        if (i2 >= 0) {
            byte[] data = fieldPacker.getData();
            int bytesSize = this.mType.mElement.mElements[i3].getBytesSize() * this.mType.mElement.mArraySizes[i3];
            if (data.length == bytesSize) {
                this.mRS.nAllocationElementData1D(getIDSafe(), i2, this.mSelectedLOD, i3, data, data.length);
                return;
            }
            throw new RSIllegalArgumentException("Field packer sizelength " + data.length + " does not match component size " + bytesSize + ".");
        }
        throw new RSIllegalArgumentException("Offset must be >= 0.");
    }

    public static Allocation createTyped(RenderScript renderScript, Type type, int i2) {
        return createTyped(renderScript, type, MipmapControl.MIPMAP_NONE, i2);
    }

    public void copy1DRangeFrom(int i2, int i3, byte[] bArr) {
        Trace.traceBegin(32768L, "copy1DRangeFrom");
        validateIsInt8();
        copy1DRangeFromUnchecked(i2, i3, bArr);
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, int[] iArr) {
        Trace.traceBegin(32768L, "copy2DRangeFrom");
        validateIsInt32();
        copy2DRangeFromUnchecked(i2, i3, i4, i5, iArr);
        Trace.traceEnd(32768L);
    }

    public void copy3DRangeFrom(int i2, int i3, int i4, int i5, int i6, int i7, Allocation allocation, int i8, int i9, int i10) {
        this.mRS.validate();
        validate3DRange(i2, i3, i4, i5, i6, i7);
        this.mRS.nAllocationData3D(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, i6, i7, allocation.getID(this.mRS), i8, i9, i10, allocation.mSelectedLOD);
    }

    public void copyFromUnchecked(short[] sArr) {
        Trace.traceBegin(32768L, "copyFromUnchecked");
        this.mRS.validate();
        int i2 = this.mCurrentDimZ;
        if (i2 > 0) {
            copy3DRangeFromUnchecked(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i2, sArr);
        } else {
            int i3 = this.mCurrentDimY;
            if (i3 > 0) {
                copy2DRangeFromUnchecked(0, 0, this.mCurrentDimX, i3, sArr);
            } else {
                copy1DRangeFromUnchecked(0, this.mCurrentCount, sArr);
            }
        }
        Trace.traceEnd(32768L);
    }

    public static Allocation createSized(RenderScript renderScript, Element element, int i2) {
        return createSized(renderScript, element, i2, 1);
    }

    public static Allocation createTyped(RenderScript renderScript, Type type) {
        return createTyped(renderScript, type, MipmapControl.MIPMAP_NONE, 1);
    }

    public void copy3DRangeFromUnchecked(int i2, int i3, int i4, int i5, int i6, int i7, float[] fArr) {
        this.mRS.validate();
        validate3DRange(i2, i3, i4, i5, i6, i7);
        this.mRS.nAllocationData3D(getIDSafe(), i2, i3, i4, this.mSelectedLOD, i5, i6, i7, fArr, fArr.length * 4);
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, byte[] bArr) {
        Trace.traceBegin(32768L, "copy1DRangeFromUnchecked");
        int bytesSize = this.mType.mElement.getBytesSize() * i3;
        data1DChecks(i2, i3, bArr.length, bytesSize);
        this.mRS.nAllocationData1D(getIDSafe(), i2, this.mSelectedLOD, i3, bArr, bytesSize);
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFromUnchecked(int i2, int i3, int i4, int i5, int[] iArr) {
        Trace.traceBegin(32768L, "copy2DRangeFromUnchecked");
        this.mRS.validate();
        validate2DRange(i2, i3, i4, i5);
        this.mRS.nAllocationData2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, i4, i5, iArr, iArr.length * 4);
        Trace.traceEnd(32768L);
    }

    public void copyFrom(int[] iArr) {
        Trace.traceBegin(32768L, "copyFrom");
        this.mRS.validate();
        int i2 = this.mCurrentDimZ;
        if (i2 > 0) {
            copy3DRangeFrom(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i2, iArr);
        } else {
            int i3 = this.mCurrentDimY;
            if (i3 > 0) {
                copy2DRangeFrom(0, 0, this.mCurrentDimX, i3, iArr);
            } else {
                copy1DRangeFrom(0, this.mCurrentCount, iArr);
            }
        }
        Trace.traceEnd(32768L);
    }

    public void copyTo(short[] sArr) {
        Trace.traceBegin(32768L, "copyTo");
        validateIsInt16();
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationRead(getID(renderScript), sArr);
        Trace.traceEnd(32768L);
    }

    public void copy1DRangeFrom(int i2, int i3, float[] fArr) {
        Trace.traceBegin(32768L, "copy1DRangeFrom");
        validateIsFloat32();
        copy1DRangeFromUnchecked(i2, i3, fArr);
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, float[] fArr) {
        Trace.traceBegin(32768L, "copy2DRangeFrom");
        validateIsFloat32();
        copy2DRangeFromUnchecked(i2, i3, i4, i5, fArr);
        Trace.traceEnd(32768L);
    }

    public void copy1DRangeFromUnchecked(int i2, int i3, float[] fArr) {
        Trace.traceBegin(32768L, "copy1DRangeFromUnchecked");
        int bytesSize = this.mType.mElement.getBytesSize() * i3;
        data1DChecks(i2, i3, fArr.length * 4, bytesSize);
        this.mRS.nAllocationData1D(getIDSafe(), i2, this.mSelectedLOD, i3, fArr, bytesSize);
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFromUnchecked(int i2, int i3, int i4, int i5, float[] fArr) {
        Trace.traceBegin(32768L, "copy2DRangeFromUnchecked");
        this.mRS.validate();
        validate2DRange(i2, i3, i4, i5);
        this.mRS.nAllocationData2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, i4, i5, fArr, fArr.length * 4);
        Trace.traceEnd(32768L);
    }

    public void copy1DRangeFrom(int i2, int i3, Allocation allocation, int i4) {
        Trace.traceBegin(32768L, "copy1DRangeFrom");
        this.mRS.nAllocationData2D(getIDSafe(), i2, 0, this.mSelectedLOD, this.mSelectedFace.mID, i3, 1, allocation.getID(this.mRS), i4, 0, allocation.mSelectedLOD, allocation.mSelectedFace.mID);
    }

    public void copy2DRangeFrom(int i2, int i3, int i4, int i5, Allocation allocation, int i6, int i7) {
        Trace.traceBegin(32768L, "copy2DRangeFrom");
        this.mRS.validate();
        validate2DRange(i2, i3, i4, i5);
        this.mRS.nAllocationData2D(getIDSafe(), i2, i3, this.mSelectedLOD, this.mSelectedFace.mID, i4, i5, allocation.getID(this.mRS), i6, i7, allocation.mSelectedLOD, allocation.mSelectedFace.mID);
        Trace.traceEnd(32768L);
    }

    public void copyFromUnchecked(byte[] bArr) {
        Trace.traceBegin(32768L, "copyFromUnchecked");
        this.mRS.validate();
        int i2 = this.mCurrentDimZ;
        if (i2 > 0) {
            copy3DRangeFromUnchecked(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i2, bArr);
        } else {
            int i3 = this.mCurrentDimY;
            if (i3 > 0) {
                copy2DRangeFromUnchecked(0, 0, this.mCurrentDimX, i3, bArr);
            } else {
                copy1DRangeFromUnchecked(0, this.mCurrentCount, bArr);
            }
        }
        Trace.traceEnd(32768L);
    }

    public void copyTo(int[] iArr) {
        Trace.traceBegin(32768L, "copyTo");
        validateIsInt32();
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationRead(getID(renderScript), iArr);
        Trace.traceEnd(32768L);
    }

    public static Allocation createCubemapFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        return createCubemapFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 2);
    }

    public static Allocation createFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        if (renderScript.getApplicationContext().getApplicationInfo().targetSdkVersion >= 18) {
            return createFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 131);
        }
        return createFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copyFrom(short[] sArr) {
        Trace.traceBegin(32768L, "copyFrom");
        this.mRS.validate();
        int i2 = this.mCurrentDimZ;
        if (i2 > 0) {
            copy3DRangeFrom(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i2, sArr);
        } else {
            int i3 = this.mCurrentDimY;
            if (i3 > 0) {
                copy2DRangeFrom(0, 0, this.mCurrentDimX, i3, sArr);
            } else {
                copy1DRangeFrom(0, this.mCurrentCount, sArr);
            }
        }
        Trace.traceEnd(32768L);
    }

    public void copy2DRangeFrom(int i2, int i3, Bitmap bitmap) {
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
            Trace.traceEnd(32768L);
        }
    }

    public void copyTo(float[] fArr) {
        Trace.traceBegin(32768L, "copyTo");
        validateIsFloat32();
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationRead(getID(renderScript), fArr);
        Trace.traceEnd(32768L);
    }

    public void copyFromUnchecked(float[] fArr) {
        Trace.traceBegin(32768L, "copyFromUnchecked");
        this.mRS.validate();
        int i2 = this.mCurrentDimZ;
        if (i2 > 0) {
            copy3DRangeFromUnchecked(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i2, fArr);
        } else {
            int i3 = this.mCurrentDimY;
            if (i3 > 0) {
                copy2DRangeFromUnchecked(0, 0, this.mCurrentDimX, i3, fArr);
            } else {
                copy1DRangeFromUnchecked(0, this.mCurrentCount, fArr);
            }
        }
        Trace.traceEnd(32768L);
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript renderScript, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6) {
        return createCubemapFromCubeFaces(renderScript, bitmap, bitmap2, bitmap3, bitmap4, bitmap5, bitmap6, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copyFrom(byte[] bArr) {
        Trace.traceBegin(32768L, "copyFrom");
        this.mRS.validate();
        int i2 = this.mCurrentDimZ;
        if (i2 > 0) {
            copy3DRangeFrom(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i2, bArr);
        } else {
            int i3 = this.mCurrentDimY;
            if (i3 > 0) {
                copy2DRangeFrom(0, 0, this.mCurrentDimX, i3, bArr);
            } else {
                copy1DRangeFrom(0, this.mCurrentCount, bArr);
            }
        }
        Trace.traceEnd(32768L);
    }

    public void copyFrom(float[] fArr) {
        Trace.traceBegin(32768L, "copyFrom");
        this.mRS.validate();
        int i2 = this.mCurrentDimZ;
        if (i2 > 0) {
            copy3DRangeFrom(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i2, fArr);
        } else {
            int i3 = this.mCurrentDimY;
            if (i3 > 0) {
                copy2DRangeFrom(0, 0, this.mCurrentDimX, i3, fArr);
            } else {
                copy1DRangeFrom(0, this.mCurrentCount, fArr);
            }
        }
        Trace.traceEnd(32768L);
    }

    public void copyFrom(Bitmap bitmap) {
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
            Trace.traceEnd(32768L);
        }
    }

    public void copyFrom(Allocation allocation) {
        Trace.traceBegin(32768L, "copyFrom");
        this.mRS.validate();
        if (this.mType.equals(allocation.getType())) {
            copy2DRangeFrom(0, 0, this.mCurrentDimX, this.mCurrentDimY, allocation, 0, 0);
            Trace.traceEnd(32768L);
            return;
        }
        throw new RSIllegalArgumentException("Types of allocations must match.");
    }
}
