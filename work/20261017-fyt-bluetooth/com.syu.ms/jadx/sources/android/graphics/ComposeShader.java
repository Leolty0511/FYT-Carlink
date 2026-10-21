package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class ComposeShader extends Shader {
    private static final int TYPE_PORTERDUFFMODE = 2;
    private static final int TYPE_XFERMODE = 1;
    private PorterDuff.Mode mPorterDuffMode;
    private final Shader mShaderA;
    private final Shader mShaderB;
    private int mType = 2;
    private Xfermode mXferMode;

    public ComposeShader(Shader shader, Shader shader2, Xfermode xfermode) {
        this.mShaderA = shader;
        this.mShaderB = shader2;
        this.mXferMode = xfermode;
        int iNativeCreate1 = nativeCreate1(shader.native_instance, shader2.native_instance, xfermode != null ? xfermode.native_instance : 0);
        this.native_instance = iNativeCreate1;
        if (!(xfermode instanceof PorterDuffXfermode)) {
            this.native_shader = nativePostCreate1(iNativeCreate1, shader.native_shader, shader2.native_shader, xfermode != null ? xfermode.native_instance : 0);
        } else {
            PorterDuff.Mode mode = ((PorterDuffXfermode) xfermode).mode;
            this.native_shader = nativePostCreate2(iNativeCreate1, shader.native_shader, shader2.native_shader, mode != null ? mode.nativeInt : 0);
        }
    }

    private static native int nativeCreate1(int i2, int i3, int i4);

    private static native int nativeCreate2(int i2, int i3, int i4);

    private static native int nativePostCreate1(int i2, int i3, int i4, int i5);

    private static native int nativePostCreate2(int i2, int i3, int i4, int i5);

    @Override // android.graphics.Shader
    public Shader copy() {
        ComposeShader composeShader;
        int i2 = this.mType;
        if (i2 == 1) {
            composeShader = new ComposeShader(this.mShaderA.copy(), this.mShaderB.copy(), this.mXferMode);
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException("ComposeShader should be created with either Xfermode or PorterDuffMode");
            }
            composeShader = new ComposeShader(this.mShaderA.copy(), this.mShaderB.copy(), this.mPorterDuffMode);
        }
        copyLocalMatrix(composeShader);
        return composeShader;
    }

    public ComposeShader(Shader shader, Shader shader2, PorterDuff.Mode mode) {
        this.mShaderA = shader;
        this.mShaderB = shader2;
        this.mPorterDuffMode = mode;
        int iNativeCreate2 = nativeCreate2(shader.native_instance, shader2.native_instance, mode.nativeInt);
        this.native_instance = iNativeCreate2;
        this.native_shader = nativePostCreate2(iNativeCreate2, shader.native_shader, shader2.native_shader, mode.nativeInt);
    }
}
