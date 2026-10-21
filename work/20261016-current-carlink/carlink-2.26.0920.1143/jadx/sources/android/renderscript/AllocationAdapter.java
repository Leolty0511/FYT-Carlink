package android.renderscript;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes.dex */
public class AllocationAdapter extends Allocation {
    Type mWindow;

    public AllocationAdapter(long j2, RenderScript renderScript, Allocation allocation, Type type) {
        super(j2, renderScript, allocation.mType, allocation.mUsage);
        this.mAdaptedAllocation = allocation;
        this.mWindow = type;
    }

    public static AllocationAdapter create1D(RenderScript renderScript, Allocation allocation) {
        renderScript.validate();
        return createTyped(renderScript, allocation, Type.createX(renderScript, allocation.getElement(), allocation.getType().getX()));
    }

    public static AllocationAdapter create2D(RenderScript renderScript, Allocation allocation) {
        renderScript.validate();
        return createTyped(renderScript, allocation, Type.createXY(renderScript, allocation.getElement(), allocation.getType().getX(), allocation.getType().getY()));
    }

    public static AllocationAdapter createTyped(RenderScript renderScript, Allocation allocation, Type type) {
        renderScript.validate();
        if (allocation.mAdaptedAllocation != null) {
            throw new RSInvalidStateException("Adapters cannot be nested.");
        }
        if (!allocation.getType().getElement().equals(type.getElement())) {
            throw new RSInvalidStateException("Element must match Allocation type.");
        }
        if (type.hasFaces() || type.hasMipmaps()) {
            throw new RSInvalidStateException("Adapters do not support window types with Mipmaps or Faces.");
        }
        Type type2 = allocation.getType();
        if (type.getX() > type2.getX() || type.getY() > type2.getY() || type.getZ() > type2.getZ() || type.getArrayCount() > type2.getArrayCount()) {
            throw new RSInvalidStateException("Type cannot have dimension larger than the source allocation.");
        }
        if (type.getArrayCount() > 0) {
            for (int i2 = 0; i2 < type.getArray(i2); i2++) {
                if (type.getArray(i2) > type2.getArray(i2)) {
                    throw new RSInvalidStateException("Type cannot have dimension larger than the source allocation.");
                }
            }
        }
        long jNAllocationAdapterCreate = renderScript.nAllocationAdapterCreate(allocation.getID(renderScript), type.getID(renderScript));
        if (jNAllocationAdapterCreate != 0) {
            return new AllocationAdapter(jNAllocationAdapterCreate, renderScript, allocation, type);
        }
        throw new RSRuntimeException("AllocationAdapter creation failed.");
    }

    private void updateOffsets() {
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = this.mSelectedArray;
        if (iArr != null) {
            int i6 = iArr.length > 0 ? iArr[0] : 0;
            int i7 = iArr.length > 1 ? iArr[2] : 0;
            int i8 = iArr.length > 2 ? iArr[2] : 0;
            i5 = iArr.length > 3 ? iArr[3] : 0;
            i2 = i6;
            i3 = i7;
            i4 = i8;
        } else {
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationAdapterOffset(getID(renderScript), this.mSelectedX, this.mSelectedY, this.mSelectedZ, this.mSelectedLOD, this.mSelectedFace.mID, i2, i3, i4, i5);
    }

    public void initLOD(int i2) {
        if (i2 < 0) {
            throw new RSIllegalArgumentException(c.e("Attempting to set negative lod (", i2, ")."));
        }
        int x2 = this.mAdaptedAllocation.mType.getX();
        int y2 = this.mAdaptedAllocation.mType.getY();
        int z2 = this.mAdaptedAllocation.mType.getZ();
        for (int i3 = 0; i3 < i2; i3++) {
            if (x2 == 1 && y2 == 1 && z2 == 1) {
                throw new RSIllegalArgumentException(c.e("Attempting to set lod (", i2, ") out of range."));
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

    @Override // android.renderscript.Allocation
    public synchronized void resize(int i2) {
        throw new RSInvalidStateException("Resize not allowed for Adapters.");
    }

    public void setArray(int i2, int i3) {
        if (this.mAdaptedAllocation.getType().getArray(i2) == 0) {
            throw new RSInvalidStateException("Cannot set arrayNum when the allocation type does not include arrayNum dim.");
        }
        if (this.mAdaptedAllocation.getType().getArray(i2) <= i3) {
            throw new RSInvalidStateException("Cannot set arrayNum greater than dimension of allocation.");
        }
        if (this.mWindow.getArray(i2) == this.mAdaptedAllocation.getType().getArray(i2)) {
            throw new RSInvalidStateException("Cannot set arrayNum when the adapter includes arrayNum.");
        }
        if (this.mWindow.getArray(i2) + i3 >= this.mAdaptedAllocation.getType().getArray(i2)) {
            throw new RSInvalidStateException("Cannot set (arrayNum + window) which would be larger than dimension of allocation.");
        }
        this.mSelectedArray[i2] = i3;
        updateOffsets();
    }

    public void setFace(Type.CubemapFace cubemapFace) {
        if (!this.mAdaptedAllocation.getType().hasFaces()) {
            throw new RSInvalidStateException("Cannot set Face when the allocation type does not include faces.");
        }
        if (this.mWindow.hasFaces()) {
            throw new RSInvalidStateException("Cannot set face when the adapter includes faces.");
        }
        if (cubemapFace == null) {
            throw new RSIllegalArgumentException("Cannot set null face.");
        }
        this.mSelectedFace = cubemapFace;
        updateOffsets();
    }

    public void setLOD(int i2) {
        if (!this.mAdaptedAllocation.getType().hasMipmaps()) {
            throw new RSInvalidStateException("Cannot set LOD when the allocation type does not include mipmaps.");
        }
        if (this.mWindow.hasMipmaps()) {
            throw new RSInvalidStateException("Cannot set LOD when the adapter includes mipmaps.");
        }
        initLOD(i2);
        this.mSelectedLOD = i2;
        updateOffsets();
    }

    public void setX(int i2) {
        if (this.mAdaptedAllocation.getType().getX() <= i2) {
            throw new RSInvalidStateException("Cannot set X greater than dimension of allocation.");
        }
        if (this.mWindow.getX() == this.mAdaptedAllocation.getType().getX()) {
            throw new RSInvalidStateException("Cannot set X when the adapter includes X.");
        }
        if (this.mWindow.getX() + i2 >= this.mAdaptedAllocation.getType().getX()) {
            throw new RSInvalidStateException("Cannot set (X + window) which would be larger than dimension of allocation.");
        }
        this.mSelectedX = i2;
        updateOffsets();
    }

    public void setY(int i2) {
        if (this.mAdaptedAllocation.getType().getY() == 0) {
            throw new RSInvalidStateException("Cannot set Y when the allocation type does not include Y dim.");
        }
        if (this.mAdaptedAllocation.getType().getY() <= i2) {
            throw new RSInvalidStateException("Cannot set Y greater than dimension of allocation.");
        }
        if (this.mWindow.getY() == this.mAdaptedAllocation.getType().getY()) {
            throw new RSInvalidStateException("Cannot set Y when the adapter includes Y.");
        }
        if (this.mWindow.getY() + i2 >= this.mAdaptedAllocation.getType().getY()) {
            throw new RSInvalidStateException("Cannot set (Y + window) which would be larger than dimension of allocation.");
        }
        this.mSelectedY = i2;
        updateOffsets();
    }

    public void setZ(int i2) {
        if (this.mAdaptedAllocation.getType().getZ() == 0) {
            throw new RSInvalidStateException("Cannot set Z when the allocation type does not include Z dim.");
        }
        if (this.mAdaptedAllocation.getType().getZ() <= i2) {
            throw new RSInvalidStateException("Cannot set Z greater than dimension of allocation.");
        }
        if (this.mWindow.getZ() == this.mAdaptedAllocation.getType().getZ()) {
            throw new RSInvalidStateException("Cannot set Z when the adapter includes Z.");
        }
        if (this.mWindow.getZ() + i2 >= this.mAdaptedAllocation.getType().getZ()) {
            throw new RSInvalidStateException("Cannot set (Z + window) which would be larger than dimension of allocation.");
        }
        this.mSelectedZ = i2;
        updateOffsets();
    }
}
