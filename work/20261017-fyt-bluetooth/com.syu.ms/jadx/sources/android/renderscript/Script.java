package android.renderscript;

import android.util.SparseArray;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class Script extends BaseObj {
    private final SparseArray<FieldID> mFIDs;
    private final SparseArray<KernelID> mKIDs;

    public static class Builder {
        public RenderScript mRS;

        public Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }
    }

    public static class FieldBase {
        public Allocation mAllocation;
        public Element mElement;

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
        public Script mScript;
        public int mSlot;

        public FieldID(int i2, RenderScript renderScript, Script script, int i3) {
            super(i2, renderScript);
            this.mScript = script;
            this.mSlot = i3;
        }
    }

    public static final class KernelID extends BaseObj {
        public Script mScript;
        public int mSig;
        public int mSlot;

        public KernelID(int i2, RenderScript renderScript, Script script, int i3, int i4) {
            super(i2, renderScript);
            this.mScript = script;
            this.mSlot = i3;
            this.mSig = i4;
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

    public Script(int i2, RenderScript renderScript) {
        super(i2, renderScript);
        this.mKIDs = new SparseArray<>();
        this.mFIDs = new SparseArray<>();
    }

    public void bindAllocation(Allocation allocation, int i2) {
        this.mRS.validate();
        if (allocation != null) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptBindAllocation(getID(renderScript), allocation.getID(this.mRS), i2);
        } else {
            RenderScript renderScript2 = this.mRS;
            renderScript2.nScriptBindAllocation(getID(renderScript2), 0, i2);
        }
    }

    public FieldID createFieldID(int i2, Element element) {
        FieldID fieldID = this.mFIDs.get(i2);
        if (fieldID != null) {
            return fieldID;
        }
        RenderScript renderScript = this.mRS;
        int iNScriptFieldIDCreate = renderScript.nScriptFieldIDCreate(getID(renderScript), i2);
        if (iNScriptFieldIDCreate == 0) {
            throw new RSDriverException("Failed to create FieldID");
        }
        FieldID fieldID2 = new FieldID(iNScriptFieldIDCreate, this.mRS, this, i2);
        this.mFIDs.put(i2, fieldID2);
        return fieldID2;
    }

    public KernelID createKernelID(int i2, int i3, Element element, Element element2) {
        KernelID kernelID = this.mKIDs.get(i2);
        if (kernelID != null) {
            return kernelID;
        }
        RenderScript renderScript = this.mRS;
        int iNScriptKernelIDCreate = renderScript.nScriptKernelIDCreate(getID(renderScript), i2, i3);
        if (iNScriptKernelIDCreate == 0) {
            throw new RSDriverException("Failed to create KernelID");
        }
        KernelID kernelID2 = new KernelID(iNScriptKernelIDCreate, this.mRS, this, i2, i3);
        this.mKIDs.put(i2, kernelID2);
        return kernelID2;
    }

    public void forEach(int i2, Allocation allocation, Allocation allocation2, FieldPacker fieldPacker) {
        if (allocation == null && allocation2 == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        int id = allocation != null ? allocation.getID(this.mRS) : 0;
        int id2 = allocation2 != null ? allocation2.getID(this.mRS) : 0;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptForEach(getID(renderScript), i2, id, id2, data);
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

    public void forEach(int i2, Allocation allocation, Allocation allocation2, FieldPacker fieldPacker, LaunchOptions launchOptions) {
        if (allocation == null && allocation2 == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        if (launchOptions == null) {
            forEach(i2, allocation, allocation2, fieldPacker);
            return;
        }
        int id = allocation != null ? allocation.getID(this.mRS) : 0;
        int id2 = allocation2 != null ? allocation2.getID(this.mRS) : 0;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptForEachClipped(getID(renderScript), i2, id, id2, data, launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend);
    }

    public void setVar(int i2, BaseObj baseObj) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarObj(getID(renderScript), i2, baseObj == null ? 0 : baseObj.getID(this.mRS));
    }

    public void setVar(int i2, FieldPacker fieldPacker) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarV(getID(renderScript), i2, fieldPacker.getData());
    }

    public void setVar(int i2, FieldPacker fieldPacker, Element element, int[] iArr) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarVE(getID(renderScript), i2, fieldPacker.getData(), element.getID(this.mRS), iArr);
    }
}
