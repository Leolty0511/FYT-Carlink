package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public final class ScriptIntrinsicBlur extends ScriptIntrinsic {
    private Allocation mInput;
    private final float[] mValues;

    private ScriptIntrinsicBlur(long j2, RenderScript renderScript) {
        super(j2, renderScript);
        this.mValues = new float[9];
    }

    public static ScriptIntrinsicBlur create(RenderScript renderScript, Element element) {
        if (!element.isCompatible(Element.U8_4(renderScript)) && !element.isCompatible(Element.U8(renderScript))) {
            throw new RSIllegalArgumentException("Unsupported element type.");
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = new ScriptIntrinsicBlur(renderScript.nScriptIntrinsicCreate(5, element.getID(renderScript)), renderScript);
        scriptIntrinsicBlur.setRadius(5.0f);
        return scriptIntrinsicBlur;
    }

    public void forEach(Allocation allocation) {
        if (allocation.getType().getY() == 0) {
            throw new RSIllegalArgumentException("Output is a 1D Allocation");
        }
        forEach(0, (Allocation) null, allocation, (FieldPacker) null);
    }

    public Script.FieldID getFieldID_Input() {
        return createFieldID(1, null);
    }

    public Script.KernelID getKernelID() {
        return createKernelID(0, 2, null, null);
    }

    public void setInput(Allocation allocation) {
        if (allocation.getType().getY() == 0) {
            throw new RSIllegalArgumentException("Input set to a 1D Allocation");
        }
        this.mInput = allocation;
        setVar(1, allocation);
    }

    public void setRadius(float f2) {
        if (f2 <= 0.0f || f2 > 25.0f) {
            throw new RSIllegalArgumentException("Radius out of range (0 < r <= 25).");
        }
        setVar(0, f2);
    }

    public void forEach(Allocation allocation, Script.LaunchOptions launchOptions) {
        if (allocation.getType().getY() != 0) {
            forEach(0, (Allocation) null, allocation, (FieldPacker) null, launchOptions);
            return;
        }
        throw new RSIllegalArgumentException("Output is a 1D Allocation");
    }
}
