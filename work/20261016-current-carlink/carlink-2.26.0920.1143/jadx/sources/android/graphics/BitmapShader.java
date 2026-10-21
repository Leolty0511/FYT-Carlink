package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class BitmapShader extends Shader {
    public Bitmap mBitmap;
    private int mTileX;
    private int mTileY;

    public BitmapShader(Bitmap bitmap, Shader.TileMode tileMode, Shader.TileMode tileMode2) {
        this(bitmap, tileMode.nativeInt, tileMode2.nativeInt);
    }

    private static native long nativeCreate(long j2, Bitmap bitmap, int i2, int i3);

    @Override // android.graphics.Shader
    public Shader copy() {
        BitmapShader bitmapShader = new BitmapShader(this.mBitmap, this.mTileX, this.mTileY);
        copyLocalMatrix(bitmapShader);
        return bitmapShader;
    }

    @Override // android.graphics.Shader
    public long createNativeInstance(long j2) {
        return nativeCreate(j2, this.mBitmap, this.mTileX, this.mTileY);
    }

    private BitmapShader(Bitmap bitmap, int i2, int i3) {
        if (bitmap == null) {
            throw new IllegalArgumentException("Bitmap must be non-null");
        }
        if (bitmap == this.mBitmap && i2 == this.mTileX && i3 == this.mTileY) {
            return;
        }
        this.mBitmap = bitmap;
        this.mTileX = i2;
        this.mTileY = i3;
    }
}
