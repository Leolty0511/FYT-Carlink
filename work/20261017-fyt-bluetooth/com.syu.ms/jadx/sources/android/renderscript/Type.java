package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Type extends BaseObj {
    public boolean mDimFaces;
    public boolean mDimMipmaps;
    public int mDimX;
    public int mDimY;
    public int mDimYuv;
    public int mDimZ;
    public Element mElement;
    public int mElementCount;

    public static class Builder {
        public boolean mDimFaces;
        public boolean mDimMipmaps;
        public int mDimX = 1;
        public int mDimY;
        public int mDimZ;
        public Element mElement;
        public RenderScript mRS;
        public int mYuv;

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
            RenderScript renderScript = this.mRS;
            Type type = new Type(renderScript.nTypeCreate(this.mElement.getID(renderScript), this.mDimX, this.mDimY, this.mDimZ, this.mDimMipmaps, this.mDimFaces, this.mYuv), this.mRS);
            type.mElement = this.mElement;
            type.mDimX = this.mDimX;
            type.mDimY = this.mDimY;
            type.mDimZ = this.mDimZ;
            type.mDimMipmaps = this.mDimMipmaps;
            type.mDimFaces = this.mDimFaces;
            type.mDimYuv = this.mYuv;
            type.calcElementCount();
            return type;
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

        public int mID;

        CubemapFace(int i2) {
            this.mID = i2;
        }
    }

    public Type(int i2, RenderScript renderScript) {
        super(i2, renderScript);
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
        this.mElementCount = i3;
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
        int[] iArr = new int[6];
        RenderScript renderScript = this.mRS;
        renderScript.nTypeGetNativeData(getID(renderScript), iArr);
        this.mDimX = iArr[0];
        this.mDimY = iArr[1];
        this.mDimZ = iArr[2];
        this.mDimMipmaps = iArr[3] == 1;
        this.mDimFaces = iArr[4] == 1;
        int i2 = iArr[5];
        if (i2 != 0) {
            Element element = new Element(i2, this.mRS);
            this.mElement = element;
            element.updateFromNative();
        }
        calcElementCount();
    }
}
