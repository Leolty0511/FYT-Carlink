package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class ComposeShader extends Shader {
    private long mNativeInstanceShaderA;
    private long mNativeInstanceShaderB;
    private int mPorterDuffMode;
    Shader mShaderA;
    Shader mShaderB;

    public ComposeShader(Shader shader, Shader shader2, Xfermode xfermode) {
        this(shader, shader2, xfermode.porterDuffMode);
    }

    private static native long nativeCreate(long j2, long j3, long j4, int i2);

    @Override // android.graphics.Shader
    public Shader copy() {
        ComposeShader composeShader = new ComposeShader(this.mShaderA.copy(), this.mShaderB.copy(), this.mPorterDuffMode);
        copyLocalMatrix(composeShader);
        return composeShader;
    }

    @Override // android.graphics.Shader
    public long createNativeInstance(long j2) {
        this.mNativeInstanceShaderA = this.mShaderA.getNativeInstance();
        this.mNativeInstanceShaderB = this.mShaderB.getNativeInstance();
        return nativeCreate(j2, this.mShaderA.getNativeInstance(), this.mShaderB.getNativeInstance(), this.mPorterDuffMode);
    }

    @Override // android.graphics.Shader
    public void verifyNativeInstance() {
        if (this.mShaderA.getNativeInstance() == this.mNativeInstanceShaderA && this.mShaderB.getNativeInstance() == this.mNativeInstanceShaderB) {
            return;
        }
        discardNativeInstance();
    }

    public ComposeShader(Shader shader, Shader shader2, PorterDuff.Mode mode) {
        this(shader, shader2, mode.nativeInt);
    }

    private ComposeShader(Shader shader, Shader shader2, int i2) {
        if (shader != null && shader2 != null) {
            this.mShaderA = shader;
            this.mShaderB = shader2;
            this.mPorterDuffMode = i2;
            return;
        }
        throw new IllegalArgumentException("Shader parameters must not be null");
    }
}
