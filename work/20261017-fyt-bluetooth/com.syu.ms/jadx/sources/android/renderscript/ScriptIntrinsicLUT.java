package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public final class ScriptIntrinsicLUT extends ScriptIntrinsic {
    private final byte[] mCache;
    private boolean mDirty;
    private final Matrix4f mMatrix;
    private Allocation mTables;

    private ScriptIntrinsicLUT(int i2, RenderScript renderScript) {
        super(i2, renderScript);
        this.mMatrix = new Matrix4f();
        this.mCache = new byte[1024];
        this.mDirty = true;
        this.mTables = Allocation.createSized(renderScript, Element.U8(renderScript), 1024);
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr = this.mCache;
            byte b2 = (byte) i3;
            bArr[i3] = b2;
            bArr[i3 + 256] = b2;
            bArr[i3 + 512] = b2;
            bArr[i3 + 768] = b2;
        }
        setVar(0, this.mTables);
    }

    public static ScriptIntrinsicLUT create(RenderScript renderScript, Element element) {
        return new ScriptIntrinsicLUT(renderScript.nScriptIntrinsicCreate(3, element.getID(renderScript)), renderScript);
    }

    private void validate(int i2, int i3) {
        if (i2 < 0 || i2 > 255) {
            throw new RSIllegalArgumentException("Index out of range (0-255).");
        }
        if (i3 < 0 || i3 > 255) {
            throw new RSIllegalArgumentException("Value out of range (0-255).");
        }
    }

    public void forEach(Allocation allocation, Allocation allocation2) {
        if (this.mDirty) {
            this.mDirty = false;
            this.mTables.copyFromUnchecked(this.mCache);
        }
        forEach(0, allocation, allocation2, null);
    }

    public Script.KernelID getKernelID() {
        return createKernelID(0, 3, null, null);
    }

    public void setAlpha(int i2, int i3) {
        validate(i2, i3);
        this.mCache[i2 + 768] = (byte) i3;
        this.mDirty = true;
    }

    public void setBlue(int i2, int i3) {
        validate(i2, i3);
        this.mCache[i2 + 512] = (byte) i3;
        this.mDirty = true;
    }

    public void setGreen(int i2, int i3) {
        validate(i2, i3);
        this.mCache[i2 + 256] = (byte) i3;
        this.mDirty = true;
    }

    public void setRed(int i2, int i3) {
        validate(i2, i3);
        this.mCache[i2] = (byte) i3;
        this.mDirty = true;
    }
}
