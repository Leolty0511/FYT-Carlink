.class public Landroid/graphics/LayerRasterizer;
.super Landroid/graphics/Rasterizer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/Rasterizer;-><init>()V

    .line 2
    invoke-static {}, Landroid/graphics/LayerRasterizer;->nativeConstructor()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rasterizer;->native_instance:I

    return-void
.end method

.method private static native nativeAddLayer(IIFF)V
.end method

.method private static native nativeConstructor()I
.end method


# virtual methods
.method public addLayer(Landroid/graphics/Paint;)V
    .locals 2

    .line 2
    iget v0, p0, Landroid/graphics/Rasterizer;->native_instance:I

    iget p1, p1, Landroid/graphics/Paint;->mNativePaint:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(IIFF)V

    return-void
.end method

.method public addLayer(Landroid/graphics/Paint;FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Rasterizer;->native_instance:I

    iget p1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(IIFF)V

    return-void
.end method
