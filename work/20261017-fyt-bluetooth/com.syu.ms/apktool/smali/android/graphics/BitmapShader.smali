.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "SourceFile"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field private mTileX:Landroid/graphics/Shader$TileMode;

.field private mTileY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    iput-object p2, p0, Landroid/graphics/BitmapShader;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 4
    iput-object p3, p0, Landroid/graphics/BitmapShader;->mTileY:Landroid/graphics/Shader$TileMode;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result p1

    .line 6
    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapShader;->nativeCreate(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 7
    iget p2, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget p3, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/BitmapShader;->nativePostCreate(IIII)I

    move-result p1

    iput p1, p0, Landroid/graphics/Shader;->native_shader:I

    return-void
.end method

.method private static native nativeCreate(III)I
.end method

.method private static native nativePostCreate(IIII)I
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/graphics/BitmapShader;->mTileX:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Landroid/graphics/BitmapShader;->mTileY:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method
