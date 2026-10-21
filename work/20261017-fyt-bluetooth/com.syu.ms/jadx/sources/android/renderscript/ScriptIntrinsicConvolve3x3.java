package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public final class ScriptIntrinsicConvolve3x3 extends ScriptIntrinsic {
    private Allocation mInput;
    private final float[] mValues;

    private ScriptIntrinsicConvolve3x3(int i2, RenderScript renderScript) {
        super(i2, renderScript);
        this.mValues = new float[9];
    }

    public static ScriptIntrinsicConvolve3x3 create(RenderScript renderScript, Element element) {
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
        if (!element.isCompatible(Element.U8(renderScript)) && !element.isCompatible(Element.U8_2(renderScript)) && !element.isCompatible(Element.U8_3(renderScript)) && !element.isCompatible(Element.U8_4(renderScript)) && !element.isCompatible(Element.F32(renderScript)) && !element.isCompatible(Element.F32_2(renderScript)) && !element.isCompatible(Element.F32_3(renderScript)) && !element.isCompatible(Element.F32_4(renderScript))) {
            throw new RSIllegalArgumentException("Unsuported element type.");
        }
        ScriptIntrinsicConvolve3x3 scriptIntrinsicConvolve3x3 = new ScriptIntrinsicConvolve3x3(renderScript.nScriptIntrinsicCreate(1, element.getID(renderScript)), renderScript);
        scriptIntrinsicConvolve3x3.setCoefficients(fArr);
        return scriptIntrinsicConvolve3x3;
    }

    public void forEach(Allocation allocation) {
        forEach(0, null, allocation, null);
    }

    public Script.FieldID getFieldID_Input() {
        return createFieldID(1, null);
    }

    public Script.KernelID getKernelID() {
        return createKernelID(0, 2, null, null);
    }

    public void setCoefficients(float[] fArr) {
        FieldPacker fieldPacker = new FieldPacker(36);
        int i2 = 0;
        while (true) {
            float[] fArr2 = this.mValues;
            if (i2 >= fArr2.length) {
                setVar(0, fieldPacker);
                return;
            } else {
                fArr2[i2] = fArr[i2];
                fieldPacker.addF32(fArr2[i2]);
                i2++;
            }
        }
    }

    public void setInput(Allocation allocation) {
        this.mInput = allocation;
        setVar(1, allocation);
    }
}
