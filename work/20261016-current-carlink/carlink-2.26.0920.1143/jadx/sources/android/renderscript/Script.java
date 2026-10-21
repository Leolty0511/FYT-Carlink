package android.renderscript;

import android.util.SparseArray;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class Script extends BaseObj {
    private final SparseArray<FieldID> mFIDs;
    private final SparseArray<InvokeID> mIIDs;
    long[] mInIdsBuffer;
    private final SparseArray<KernelID> mKIDs;

    public static class Builder {
        RenderScript mRS;

        public Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }
    }

    public static class FieldBase {
        protected Allocation mAllocation;
        protected Element mElement;

        public Allocation getAllocation() {
            return this.mAllocation;
        }

        public Element getElement() {
            return this.mElement;
        }

        public Type getType() {
            return this.mAllocation.getType();
        }

        public void init(RenderScript renderScript, int i2) {
            this.mAllocation = Allocation.createSized(renderScript, this.mElement, i2, 1);
        }

        public void updateAllocation() {
        }

        public void init(RenderScript renderScript, int i2, int i3) {
            this.mAllocation = Allocation.createSized(renderScript, this.mElement, i2, i3 | 1);
        }
    }

    public static final class FieldID extends BaseObj {
        Script mScript;
        int mSlot;

        public FieldID(long j2, RenderScript renderScript, Script script, int i2) {
            super(j2, renderScript);
            this.mScript = script;
            this.mSlot = i2;
        }
    }

    public static final class InvokeID extends BaseObj {
        Script mScript;
        int mSlot;

        public InvokeID(long j2, RenderScript renderScript, Script script, int i2) {
            super(j2, renderScript);
            this.mScript = script;
            this.mSlot = i2;
        }
    }

    public static final class KernelID extends BaseObj {
        Script mScript;
        int mSig;
        int mSlot;

        public KernelID(long j2, RenderScript renderScript, Script script, int i2, int i3) {
            super(j2, renderScript);
            this.mScript = script;
            this.mSlot = i2;
            this.mSig = i3;
        }
    }

    public static final class LaunchOptions {
        private int strategy;
        private int xstart = 0;
        private int ystart = 0;
        private int xend = 0;
        private int yend = 0;
        private int zstart = 0;
        private int zend = 0;

        public int getXEnd() {
            return this.xend;
        }

        public int getXStart() {
            return this.xstart;
        }

        public int getYEnd() {
            return this.yend;
        }

        public int getYStart() {
            return this.ystart;
        }

        public int getZEnd() {
            return this.zend;
        }

        public int getZStart() {
            return this.zstart;
        }

        public LaunchOptions setX(int i2, int i3) {
            if (i2 < 0 || i3 <= i2) {
                throw new RSIllegalArgumentException("Invalid dimensions");
            }
            this.xstart = i2;
            this.xend = i3;
            return this;
        }

        public LaunchOptions setY(int i2, int i3) {
            if (i2 < 0 || i3 <= i2) {
                throw new RSIllegalArgumentException("Invalid dimensions");
            }
            this.ystart = i2;
            this.yend = i3;
            return this;
        }

        public LaunchOptions setZ(int i2, int i3) {
            if (i2 < 0 || i3 <= i2) {
                throw new RSIllegalArgumentException("Invalid dimensions");
            }
            this.zstart = i2;
            this.zend = i3;
            return this;
        }
    }

    public Script(long j2, RenderScript renderScript) {
        super(j2, renderScript);
        this.mKIDs = new SparseArray<>();
        this.mIIDs = new SparseArray<>();
        this.mFIDs = new SparseArray<>();
        this.mInIdsBuffer = new long[1];
        this.guard.open("destroy");
    }

    public void bindAllocation(Allocation allocation, int i2) {
        this.mRS.validate();
        this.mRS.validateObject(allocation);
        if (allocation == null) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptBindAllocation(getID(renderScript), 0L, i2);
            return;
        }
        if (this.mRS.getApplicationContext().getApplicationInfo().targetSdkVersion >= 20) {
            Type type = allocation.mType;
            if (type.hasMipmaps() || type.hasFaces() || type.getY() != 0 || type.getZ() != 0) {
                throw new RSIllegalArgumentException("API 20+ only allows simple 1D allocations to be used with bind.");
            }
        }
        RenderScript renderScript2 = this.mRS;
        renderScript2.nScriptBindAllocation(getID(renderScript2), allocation.getID(this.mRS), i2);
    }

    public FieldID createFieldID(int i2, Element element) {
        FieldID fieldID = this.mFIDs.get(i2);
        if (fieldID != null) {
            return fieldID;
        }
        RenderScript renderScript = this.mRS;
        long jNScriptFieldIDCreate = renderScript.nScriptFieldIDCreate(getID(renderScript), i2);
        if (jNScriptFieldIDCreate == 0) {
            throw new RSDriverException("Failed to create FieldID");
        }
        FieldID fieldID2 = new FieldID(jNScriptFieldIDCreate, this.mRS, this, i2);
        this.mFIDs.put(i2, fieldID2);
        return fieldID2;
    }

    public InvokeID createInvokeID(int i2) {
        InvokeID invokeID = this.mIIDs.get(i2);
        if (invokeID != null) {
            return invokeID;
        }
        RenderScript renderScript = this.mRS;
        long jNScriptInvokeIDCreate = renderScript.nScriptInvokeIDCreate(getID(renderScript), i2);
        if (jNScriptInvokeIDCreate == 0) {
            throw new RSDriverException("Failed to create KernelID");
        }
        InvokeID invokeID2 = new InvokeID(jNScriptInvokeIDCreate, this.mRS, this, i2);
        this.mIIDs.put(i2, invokeID2);
        return invokeID2;
    }

    public KernelID createKernelID(int i2, int i3, Element element, Element element2) {
        KernelID kernelID = this.mKIDs.get(i2);
        if (kernelID != null) {
            return kernelID;
        }
        RenderScript renderScript = this.mRS;
        long jNScriptKernelIDCreate = renderScript.nScriptKernelIDCreate(getID(renderScript), i2, i3);
        if (jNScriptKernelIDCreate == 0) {
            throw new RSDriverException("Failed to create KernelID");
        }
        KernelID kernelID2 = new KernelID(jNScriptKernelIDCreate, this.mRS, this, i2, i3);
        this.mKIDs.put(i2, kernelID2);
        return kernelID2;
    }

    public void forEach(int i2, Allocation allocation, Allocation allocation2, FieldPacker fieldPacker) {
        forEach(i2, allocation, allocation2, fieldPacker, (LaunchOptions) null);
    }

    public boolean getVarB(int i2) {
        RenderScript renderScript = this.mRS;
        return renderScript.nScriptGetVarI(getID(renderScript), i2) > 0;
    }

    public double getVarD(int i2) {
        RenderScript renderScript = this.mRS;
        return renderScript.nScriptGetVarD(getID(renderScript), i2);
    }

    public float getVarF(int i2) {
        RenderScript renderScript = this.mRS;
        return renderScript.nScriptGetVarF(getID(renderScript), i2);
    }

    public int getVarI(int i2) {
        RenderScript renderScript = this.mRS;
        return renderScript.nScriptGetVarI(getID(renderScript), i2);
    }

    public long getVarJ(int i2) {
        RenderScript renderScript = this.mRS;
        return renderScript.nScriptGetVarJ(getID(renderScript), i2);
    }

    public void getVarV(int i2, FieldPacker fieldPacker) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptGetVarV(getID(renderScript), i2, fieldPacker.getData());
    }

    public void invoke(int i2) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptInvoke(getID(renderScript), i2);
    }

    public void reduce(int i2, Allocation[] allocationArr, Allocation allocation, LaunchOptions launchOptions) {
        this.mRS.validate();
        if (allocationArr == null || allocationArr.length < 1) {
            throw new RSIllegalArgumentException("At least one input is required.");
        }
        if (allocation == null) {
            throw new RSIllegalArgumentException("aout is required to be non-null.");
        }
        for (Allocation allocation2 : allocationArr) {
            this.mRS.validateObject(allocation2);
        }
        long[] jArr = new long[allocationArr.length];
        for (int i3 = 0; i3 < allocationArr.length; i3++) {
            jArr[i3] = allocationArr[i3].getID(this.mRS);
        }
        long id = allocation.getID(this.mRS);
        int[] iArr = launchOptions != null ? new int[]{launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend} : null;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptReduce(getID(renderScript), i2, jArr, id, iArr);
    }

    public void setTimeZone(String str) {
        this.mRS.validate();
        try {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptSetTimeZone(getID(renderScript), str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void setVar(int i2, float f2) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarF(getID(renderScript), i2, f2);
    }

    public void forEach(int i2, Allocation allocation, Allocation allocation2, FieldPacker fieldPacker, LaunchOptions launchOptions) {
        long[] jArr;
        this.mRS.validate();
        this.mRS.validateObject(allocation);
        this.mRS.validateObject(allocation2);
        if (allocation == null && allocation2 == null && launchOptions == null) {
            throw new RSIllegalArgumentException("At least one of input allocation, output allocation, or LaunchOptions is required to be non-null.");
        }
        if (allocation != null) {
            long[] jArr2 = this.mInIdsBuffer;
            jArr2[0] = allocation.getID(this.mRS);
            jArr = jArr2;
        } else {
            jArr = null;
        }
        long id = allocation2 != null ? allocation2.getID(this.mRS) : 0L;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        int[] iArr = launchOptions != null ? new int[]{launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend} : null;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptForEach(getID(renderScript), i2, jArr, id, data, iArr);
    }

    public void invoke(int i2, FieldPacker fieldPacker) {
        if (fieldPacker != null) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptInvokeV(getID(renderScript), i2, fieldPacker.getData());
        } else {
            RenderScript renderScript2 = this.mRS;
            renderScript2.nScriptInvoke(getID(renderScript2), i2);
        }
    }

    public void setVar(int i2, double d2) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarD(getID(renderScript), i2, d2);
    }

    public void setVar(int i2, int i3) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarI(getID(renderScript), i2, i3);
    }

    public void setVar(int i2, long j2) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarJ(getID(renderScript), i2, j2);
    }

    public void setVar(int i2, boolean z2) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarI(getID(renderScript), i2, z2 ? 1 : 0);
    }

    public void setVar(int i2, BaseObj baseObj) {
        this.mRS.validate();
        this.mRS.validateObject(baseObj);
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarObj(getID(renderScript), i2, baseObj == null ? 0L : baseObj.getID(this.mRS));
    }

    public void setVar(int i2, FieldPacker fieldPacker) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarV(getID(renderScript), i2, fieldPacker.getData());
    }

    public void setVar(int i2, FieldPacker fieldPacker, Element element, int[] iArr) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarVE(getID(renderScript), i2, fieldPacker.getData(), element.getID(this.mRS), iArr);
    }

    public void forEach(int i2, Allocation[] allocationArr, Allocation allocation, FieldPacker fieldPacker) {
        forEach(i2, allocationArr, allocation, fieldPacker, (LaunchOptions) null);
    }

    public void forEach(int i2, Allocation[] allocationArr, Allocation allocation, FieldPacker fieldPacker, LaunchOptions launchOptions) {
        long[] jArr;
        this.mRS.validate();
        if (allocationArr != null) {
            for (Allocation allocation2 : allocationArr) {
                this.mRS.validateObject(allocation2);
            }
        }
        this.mRS.validateObject(allocation);
        if (allocationArr == null && allocation == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        if (allocationArr != null) {
            long[] jArr2 = new long[allocationArr.length];
            for (int i3 = 0; i3 < allocationArr.length; i3++) {
                jArr2[i3] = allocationArr[i3].getID(this.mRS);
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        long id = allocation != null ? allocation.getID(this.mRS) : 0L;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        int[] iArr = launchOptions != null ? new int[]{launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend} : null;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptForEach(getID(renderScript), i2, jArr, id, data, iArr);
    }
}
