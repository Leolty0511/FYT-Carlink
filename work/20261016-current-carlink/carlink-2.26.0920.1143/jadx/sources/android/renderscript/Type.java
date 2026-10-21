package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Type extends BaseObj {
    static final int mMaxArrays = 4;
    int[] mArrays;
    boolean mDimFaces;
    boolean mDimMipmaps;
    int mDimX;
    int mDimY;
    int mDimYuv;
    int mDimZ;
    Element mElement;
    int mElementCount;

    public static class Builder {
        boolean mDimFaces;
        boolean mDimMipmaps;
        int mDimY;
        int mDimZ;
        Element mElement;
        RenderScript mRS;
        int mYuv;
        int mDimX = 1;
        int[] mArray = new int[4];

        public Builder(RenderScript renderScript, Element element) {
            element.checkValid();
            this.mRS = renderScript;
            this.mElement = element;
        }

        public Type create() {
            int i2 = this.mDimZ;
            if (i2 > 0) {
                if (this.mDimX < 1 || this.mDimY < 1) {
                    throw new RSInvalidStateException("Both X and Y dimension required when Z is present.");
                }
                if (this.mDimFaces) {
                    throw new RSInvalidStateException("Cube maps not supported with 3D types.");
                }
            }
            int i3 = this.mDimY;
            if (i3 > 0 && this.mDimX < 1) {
                throw new RSInvalidStateException("X dimension required when Y is present.");
            }
            boolean z2 = this.mDimFaces;
            if (z2 && i3 < 1) {
                throw new RSInvalidStateException("Cube maps require 2D Types.");
            }
            if (this.mYuv != 0 && (i2 != 0 || z2 || this.mDimMipmaps)) {
                throw new RSInvalidStateException("YUV only supports basic 2D.");
            }
            int[] iArr = null;
            for (int i4 = 3; i4 >= 0; i4--) {
                int i5 = this.mArray[i4];
                if (i5 != 0 && iArr == null) {
                    iArr = new int[i4];
                }
                if (i5 == 0 && iArr != null) {
                    throw new RSInvalidStateException("Array dimensions must be contigous from 0.");
                }
            }
            RenderScript renderScript = this.mRS;
            Type type = new Type(renderScript.nTypeCreate(this.mElement.getID(renderScript), this.mDimX, this.mDimY, this.mDimZ, this.mDimMipmaps, this.mDimFaces, this.mYuv), this.mRS);
            type.mElement = this.mElement;
            type.mDimX = this.mDimX;
            type.mDimY = this.mDimY;
            type.mDimZ = this.mDimZ;
            type.mDimMipmaps = this.mDimMipmaps;
            type.mDimFaces = this.mDimFaces;
            type.mDimYuv = this.mYuv;
            type.mArrays = iArr;
            type.calcElementCount();
            return type;
        }

        public Builder setArray(int i2, int i3) {
            if (i2 < 0 || i2 >= 4) {
                throw new RSIllegalArgumentException("Array dimension out of range.");
            }
            this.mArray[i2] = i3;
            return this;
        }

        public Builder setFaces(boolean z2) {
            this.mDimFaces = z2;
            return this;
        }

        public Builder setMipmaps(boolean z2) {
            this.mDimMipmaps = z2;
            return this;
        }

        public Builder setX(int i2) {
            if (i2 < 1) {
                throw new RSIllegalArgumentException("Values of less than 1 for Dimension X are not valid.");
            }
            this.mDimX = i2;
            return this;
        }

        public Builder setY(int i2) {
            if (i2 < 1) {
                throw new RSIllegalArgumentException("Values of less than 1 for Dimension Y are not valid.");
            }
            this.mDimY = i2;
            return this;
        }

        public Builder setYuvFormat(int i2) {
            if (i2 != 17 && i2 != 35 && i2 != 842094169) {
                throw new RSIllegalArgumentException("Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported..");
            }
            this.mYuv = i2;
            return this;
        }

        public Builder setZ(int i2) {
            if (i2 < 1) {
                throw new RSIllegalArgumentException("Values of less than 1 for Dimension Z are not valid.");
            }
            this.mDimZ = i2;
            return this;
        }
    }

    public enum CubemapFace {
        POSITIVE_X(0),
        NEGATIVE_X(1),
        POSITIVE_Y(2),
        NEGATIVE_Y(3),
        POSITIVE_Z(4),
        NEGATIVE_Z(5),
        POSITVE_X(0),
        POSITVE_Y(2),
        POSITVE_Z(4);

        int mID;

        CubemapFace(int i2) {
            this.mID = i2;
        }
    }

    public Type(long j2, RenderScript renderScript) {
        super(j2, renderScript);
    }

    public static Type createX(RenderScript renderScript, Element element, int i2) {
        if (i2 < 1) {
            throw new RSInvalidStateException("Dimension must be >= 1.");
        }
        Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i2, 0, 0, false, false, 0), renderScript);
        type.mElement = element;
        type.mDimX = i2;
        type.calcElementCount();
        return type;
    }

    public static Type createXY(RenderScript renderScript, Element element, int i2, int i3) {
        if (i2 < 1 || i3 < 1) {
            throw new RSInvalidStateException("Dimension must be >= 1.");
        }
        Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i2, i3, 0, false, false, 0), renderScript);
        type.mElement = element;
        type.mDimX = i2;
        type.mDimY = i3;
        type.calcElementCount();
        return type;
    }

    public static Type createXYZ(RenderScript renderScript, Element element, int i2, int i3, int i4) {
        if (i2 < 1 || i3 < 1 || i4 < 1) {
            throw new RSInvalidStateException("Dimension must be >= 1.");
        }
        Type type = new Type(renderScript.nTypeCreate(element.getID(renderScript), i2, i3, i4, false, false, 0), renderScript);
        type.mElement = element;
        type.mDimX = i2;
        type.mDimY = i3;
        type.mDimZ = i4;
        type.calcElementCount();
        return type;
    }

    public void calcElementCount() {
        boolean zHasMipmaps = hasMipmaps();
        int x2 = getX();
        int y2 = getY();
        int z2 = getZ();
        int i2 = hasFaces() ? 6 : 1;
        if (x2 == 0) {
            x2 = 1;
        }
        if (y2 == 0) {
            y2 = 1;
        }
        if (z2 == 0) {
            z2 = 1;
        }
        int i3 = x2 * y2 * z2 * i2;
        while (zHasMipmaps && (x2 > 1 || y2 > 1 || z2 > 1)) {
            if (x2 > 1) {
                x2 >>= 1;
            }
            if (y2 > 1) {
                y2 >>= 1;
            }
            if (z2 > 1) {
                z2 >>= 1;
            }
            i3 += x2 * y2 * z2 * i2;
        }
        if (this.mArrays != null) {
            int i4 = 0;
            while (true) {
                int[] iArr = this.mArrays;
                if (i4 >= iArr.length) {
                    break;
                }
                i3 *= iArr[i4];
                i4++;
            }
        }
        this.mElementCount = i3;
    }

    public int getArray(int i2) {
        if (i2 < 0 || i2 >= 4) {
            throw new RSIllegalArgumentException("Array dimension out of range.");
        }
        int[] iArr = this.mArrays;
        if (iArr == null || i2 >= iArr.length) {
            return 0;
        }
        return iArr[i2];
    }

    public int getArrayCount() {
        int[] iArr = this.mArrays;
        if (iArr != null) {
            return iArr.length;
        }
        return 0;
    }

    public int getCount() {
        return this.mElementCount;
    }

    public Element getElement() {
        return this.mElement;
    }

    public int getX() {
        return this.mDimX;
    }

    public int getY() {
        return this.mDimY;
    }

    public int getYuv() {
        return this.mDimYuv;
    }

    public int getZ() {
        return this.mDimZ;
    }

    public boolean hasFaces() {
        return this.mDimFaces;
    }

    public boolean hasMipmaps() {
        return this.mDimMipmaps;
    }

    @Override // android.renderscript.BaseObj
    public void updateFromNative() {
        long[] jArr = new long[6];
        RenderScript renderScript = this.mRS;
        renderScript.nTypeGetNativeData(getID(renderScript), jArr);
        this.mDimX = (int) jArr[0];
        this.mDimY = (int) jArr[1];
        this.mDimZ = (int) jArr[2];
        this.mDimMipmaps = jArr[3] == 1;
        this.mDimFaces = jArr[4] == 1;
        long j2 = jArr[5];
        if (j2 != 0) {
            Element element = new Element(j2, this.mRS);
            this.mElement = element;
            element.updateFromNative();
        }
        calcElementCount();
    }
}
