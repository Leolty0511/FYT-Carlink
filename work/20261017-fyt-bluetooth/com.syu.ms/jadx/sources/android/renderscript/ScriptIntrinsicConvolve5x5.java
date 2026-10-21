package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public final class ScriptIntrinsicConvolve5x5 extends ScriptIntrinsic {
    private Allocation mInput;
    private final float[] mValues;

    private ScriptIntrinsicConvolve5x5(int i2, RenderScript renderScript) {
        super(i2, renderScript);
        this.mValues = new float[25];
    }

    public static ScriptIntrinsicConvolve5x5 create(RenderScript renderScript, Element element) {
        if (element.isCompatible(Element.U8(renderScript)) || element.isCompatible(Element.U8_2(renderScript)) || element.isCompatible(Element.U8_3(renderScript)) || element.isCompatible(Element.U8_4(renderScript)) || element.isCompatible(Element.F32(renderScript)) || element.isCompatible(Element.F32_2(renderScript)) || element.isCompatible(Element.F32_3(renderScript)) || element.isCompatible(Element.F32_4(renderScript))) {
            return new ScriptIntrinsicConvolve5x5(renderScript.nScriptIntrinsicCreate(4, element.getID(renderScript)), renderScript);
        }
        throw new RSIllegalArgumentException("Unsuported element type.");
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
        FieldPacker fieldPacker = new FieldPacker(100);
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
