package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class BitmapShader extends Shader {
    public final Bitmap mBitmap;
    private Shader.TileMode mTileX;
    private Shader.TileMode mTileY;

    public BitmapShader(Bitmap bitmap, Shader.TileMode tileMode, Shader.TileMode tileMode2) {
        this.mBitmap = bitmap;
        this.mTileX = tileMode;
        this.mTileY = tileMode2;
        int iNi = bitmap.ni();
        int iNativeCreate = nativeCreate(iNi, tileMode.nativeInt, tileMode2.nativeInt);
        this.native_instance = iNativeCreate;
        this.native_shader = nativePostCreate(iNativeCreate, iNi, tileMode.nativeInt, tileMode2.nativeInt);
    }

    private static native int nativeCreate(int i2, int i3, int i4);

    private static native int nativePostCreate(int i2, int i3, int i4, int i5);

    @Override // android.graphics.Shader
    public Shader copy() {
        BitmapShader bitmapShader = new BitmapShader(this.mBitmap, this.mTileX, this.mTileY);
        copyLocalMatrix(bitmapShader);
        return bitmapShader;
    }
}
