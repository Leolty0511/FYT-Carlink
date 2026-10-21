.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "SourceFile"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field private mTileX:I

.field private mTileY:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapShader;->mTileX:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapShader;->mTileY:I

    if-ne p3, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    .line 6
    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bitmap must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 0

    .line 1
    iget p2, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget p3, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private static native nativeCreate(JLandroid/graphics/Bitmap;II)J
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget v2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    .line 6
    .line 7
    iget v3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public createNativeInstance(J)J
    .locals 3

    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v2, p0, Landroid/graphics/BitmapShader;->mTileY:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/graphics/BitmapShader;->nativeCreate(JLandroid/graphics/Bitmap;II)J

    move-result-wide p1

    return-wide p1
.end method
