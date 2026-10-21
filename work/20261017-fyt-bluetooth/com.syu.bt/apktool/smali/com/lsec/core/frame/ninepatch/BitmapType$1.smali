.class enum Lcom/lsec/core/frame/ninepatch/BitmapType$1;
.super Lcom/lsec/core/frame/ninepatch/BitmapType;
.source "BitmapType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ninepatch/BitmapType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lsec/core/frame/ninepatch/BitmapType;-><init>(Ljava/lang/String;ILcom/lsec/core/frame/ninepatch/BitmapType;)V

    .line 1
    return-void
.end method


# virtual methods
.method public createChunk(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    invoke-static {v0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->parse([B)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    move-result-object v0

    return-object v0
.end method
