package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class AllocationAdapter extends Allocation {
    public AllocationAdapter(int i2, RenderScript renderScript, Allocation allocation) {
        super(i2, renderScript, allocation.mType, allocation.mUsage);
        this.mAdaptedAllocation = allocation;
    }

    public static AllocationAdapter create1D(RenderScript renderScript, Allocation allocation) {
        renderScript.validate();
        AllocationAdapter allocationAdapter = new AllocationAdapter(0, renderScript, allocation);
        allocationAdapter.mConstrainedLOD = true;
        allocationAdapter.mConstrainedFace = true;
        allocationAdapter.mConstrainedY = true;
        allocationAdapter.mConstrainedZ = true;
        allocationAdapter.initLOD(0);
        return allocationAdapter;
    }

    public static AllocationAdapter create2D(RenderScript renderScript, Allocation allocation) {
        renderScript.validate();
        AllocationAdapter allocationAdapter = new AllocationAdapter(0, renderScript, allocation);
        allocationAdapter.mConstrainedLOD = true;
        allocationAdapter.mConstrainedFace = true;
        allocationAdapter.mConstrainedY = false;
        allocationAdapter.mConstrainedZ = true;
        allocationAdapter.initLOD(0);
        return allocationAdapter;
    }

    @Override // android.renderscript.BaseObj
    public int getID(RenderScript renderScript) {
        throw new RSInvalidStateException("This operation is not supported with adapters at this time.");
    }

    public void initLOD(int i2) {
        if (i2 < 0) {
            throw new RSIllegalArgumentException("Attempting to set negative lod (" + i2 + ").");
        }
        int x2 = this.mAdaptedAllocation.mType.getX();
        int y2 = this.mAdaptedAllocation.mType.getY();
        int z2 = this.mAdaptedAllocation.mType.getZ();
        for (int i3 = 0; i3 < i2; i3++) {
            if (x2 == 1 && y2 == 1 && z2 == 1) {
                throw new RSIllegalArgumentException("Attempting to set lod (" + i2 + ") out of range.");
            }
            if (x2 > 1) {
                x2 >>= 1;
            }
            if (y2 > 1) {
                y2 >>= 1;
            }
            if (z2 > 1) {
                z2 >>= 1;
            }
        }
        this.mCurrentDimX = x2;
        this.mCurrentDimY = y2;
        this.mCurrentDimZ = z2;
        this.mCurrentCount = x2;
        if (y2 > 1) {
            this.mCurrentCount = x2 * y2;
        }
        if (z2 > 1) {
            this.mCurrentCount *= z2;
        }
        this.mSelectedY = 0;
        this.mSelectedZ = 0;
    }

    public void readData(int[] iArr) {
        super.copyTo(iArr);
    }

    @Override // android.renderscript.Allocation
    public synchronized void resize(int i2) {
        throw new RSInvalidStateException("Resize not allowed for Adapters.");
    }

    public void setFace(Type.CubemapFace cubemapFace) {
        if (!this.mAdaptedAllocation.getType().hasFaces()) {
            throw new RSInvalidStateException("Cannot set Face when the allocation type does not include faces.");
        }
        if (!this.mConstrainedFace) {
            throw new RSInvalidStateException("Cannot set LOD when the adapter includes mipmaps.");
        }
        if (cubemapFace == null) {
            throw new RSIllegalArgumentException("Cannot set null face.");
        }
        this.mSelectedFace = cubemapFace;
    }

    public void setLOD(int i2) {
        if (!this.mAdaptedAllocation.getType().hasMipmaps()) {
            throw new RSInvalidStateException("Cannot set LOD when the allocation type does not include mipmaps.");
        }
        if (!this.mConstrainedLOD) {
            throw new RSInvalidStateException("Cannot set LOD when the adapter includes mipmaps.");
        }
        initLOD(i2);
    }

    public void setY(int i2) {
        if (this.mAdaptedAllocation.getType().getY() == 0) {
            throw new RSInvalidStateException("Cannot set Y when the allocation type does not include Y dim.");
        }
        if (this.mAdaptedAllocation.getType().getY() <= i2) {
            throw new RSInvalidStateException("Cannot set Y greater than dimension of allocation.");
        }
        if (!this.mConstrainedY) {
            throw new RSInvalidStateException("Cannot set Y when the adapter includes Y.");
        }
        this.mSelectedY = i2;
    }

    public void setZ(int i2) {
        if (this.mAdaptedAllocation.getType().getZ() == 0) {
            throw new RSInvalidStateException("Cannot set Z when the allocation type does not include Z dim.");
        }
        if (this.mAdaptedAllocation.getType().getZ() <= i2) {
            throw new RSInvalidStateException("Cannot set Z greater than dimension of allocation.");
        }
        if (!this.mConstrainedZ) {
            throw new RSInvalidStateException("Cannot set Z when the adapter includes Z.");
        }
        this.mSelectedZ = i2;
    }

    public void subData(int i2, FieldPacker fieldPacker) {
        super.setFromFieldPacker(i2, fieldPacker);
    }

    public void subData1D(int i2, int i3, int[] iArr) {
        super.copy1DRangeFrom(i2, i3, iArr);
    }

    public void subData2D(int i2, int i3, int i4, int i5, int[] iArr) {
        super.copy2DRangeFrom(i2, i3, i4, i5, iArr);
    }

    public void subElementData(int i2, int i3, FieldPacker fieldPacker) {
        super.setFromFieldPacker(i2, i3, fieldPacker);
    }

    public void readData(float[] fArr) {
        super.copyTo(fArr);
    }

    public void subData1D(int i2, int i3, short[] sArr) {
        super.copy1DRangeFrom(i2, i3, sArr);
    }

    public void subData2D(int i2, int i3, int i4, int i5, float[] fArr) {
        super.copy2DRangeFrom(i2, i3, i4, i5, fArr);
    }

    public void subData1D(int i2, int i3, byte[] bArr) {
        super.copy1DRangeFrom(i2, i3, bArr);
    }

    public void subData1D(int i2, int i3, float[] fArr) {
        super.copy1DRangeFrom(i2, i3, fArr);
    }
}
