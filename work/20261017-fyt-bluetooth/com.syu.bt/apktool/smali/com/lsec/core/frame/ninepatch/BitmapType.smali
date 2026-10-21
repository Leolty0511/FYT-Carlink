.class public enum Lcom/lsec/core/frame/ninepatch/BitmapType;
.super Ljava/lang/Enum;
.source "BitmapType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lsec/core/frame/ninepatch/BitmapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lsec/core/frame/ninepatch/BitmapType;

.field public static final enum NULL:Lcom/lsec/core/frame/ninepatch/BitmapType;

.field public static final enum NinePatch:Lcom/lsec/core/frame/ninepatch/BitmapType;

.field public static final enum PlainImage:Lcom/lsec/core/frame/ninepatch/BitmapType;

.field public static final enum RawNinePatch:Lcom/lsec/core/frame/ninepatch/BitmapType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/lsec/core/frame/ninepatch/BitmapType$1;

    const-string v1, "NinePatch"

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/frame/ninepatch/BitmapType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lsec/core/frame/ninepatch/BitmapType;->NinePatch:Lcom/lsec/core/frame/ninepatch/BitmapType;

    .line 17
    new-instance v0, Lcom/lsec/core/frame/ninepatch/BitmapType$2;

    const-string v1, "RawNinePatch"

    invoke-direct {v0, v1, v3}, Lcom/lsec/core/frame/ninepatch/BitmapType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lsec/core/frame/ninepatch/BitmapType;->RawNinePatch:Lcom/lsec/core/frame/ninepatch/BitmapType;

    .line 55
    new-instance v0, Lcom/lsec/core/frame/ninepatch/BitmapType$3;

    const-string v1, "PlainImage"

    invoke-direct {v0, v1, v4}, Lcom/lsec/core/frame/ninepatch/BitmapType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lsec/core/frame/ninepatch/BitmapType;->PlainImage:Lcom/lsec/core/frame/ninepatch/BitmapType;

    .line 61
    new-instance v0, Lcom/lsec/core/frame/ninepatch/BitmapType$4;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v5}, Lcom/lsec/core/frame/ninepatch/BitmapType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lsec/core/frame/ninepatch/BitmapType;->NULL:Lcom/lsec/core/frame/ninepatch/BitmapType;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lsec/core/frame/ninepatch/BitmapType;

    sget-object v1, Lcom/lsec/core/frame/ninepatch/BitmapType;->NinePatch:Lcom/lsec/core/frame/ninepatch/BitmapType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lsec/core/frame/ninepatch/BitmapType;->RawNinePatch:Lcom/lsec/core/frame/ninepatch/BitmapType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lsec/core/frame/ninepatch/BitmapType;->PlainImage:Lcom/lsec/core/frame/ninepatch/BitmapType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lsec/core/frame/ninepatch/BitmapType;->NULL:Lcom/lsec/core/frame/ninepatch/BitmapType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lsec/core/frame/ninepatch/BitmapType;->ENUM$VALUES:[Lcom/lsec/core/frame/ninepatch/BitmapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/lsec/core/frame/ninepatch/BitmapType;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/lsec/core/frame/ninepatch/BitmapType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static determineBitmapType(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/BitmapType;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    sget-object v1, Lcom/lsec/core/frame/ninepatch/BitmapType;->NULL:Lcom/lsec/core/frame/ninepatch/BitmapType;

    .line 87
    :goto_0
    return-object v1

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 81
    .local v0, "ninePatchChunk":[B
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/lsec/core/frame/ninepatch/BitmapType;->NinePatch:Lcom/lsec/core/frame/ninepatch/BitmapType;

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {p0}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->isRawNinePatchBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    sget-object v1, Lcom/lsec/core/frame/ninepatch/BitmapType;->RawNinePatch:Lcom/lsec/core/frame/ninepatch/BitmapType;

    goto :goto_0

    .line 87
    :cond_2
    sget-object v1, Lcom/lsec/core/frame/ninepatch/BitmapType;->PlainImage:Lcom/lsec/core/frame/ninepatch/BitmapType;

    goto :goto_0
.end method

.method public static getNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "srcName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Lcom/lsec/core/frame/ninepatch/BitmapType;->determineBitmapType(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/BitmapType;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/lsec/core/frame/ninepatch/BitmapType;->createNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lsec/core/frame/ninepatch/BitmapType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lsec/core/frame/ninepatch/BitmapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ninepatch/BitmapType;

    return-object v0
.end method

.method public static values()[Lcom/lsec/core/frame/ninepatch/BitmapType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lsec/core/frame/ninepatch/BitmapType;->ENUM$VALUES:[Lcom/lsec/core/frame/ninepatch/BitmapType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lsec/core/frame/ninepatch/BitmapType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected createChunk(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    invoke-static {}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->createEmptyChunk()Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    move-result-object v0

    return-object v0
.end method

.method protected createNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p2}, Lcom/lsec/core/frame/ninepatch/BitmapType;->createChunk(Landroid/graphics/Bitmap;)Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    move-result-object v6

    .line 96
    .local v6, "chunk":Lcom/lsec/core/frame/ninepatch/NinePatchChunk;
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0, p1, p2, v6}, Lcom/lsec/core/frame/ninepatch/BitmapType;->modifyBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v6}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->toBytes()[B

    move-result-object v3

    iget-object v4, v6, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0
.end method

.method protected modifyBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/lsec/core/frame/ninepatch/NinePatchChunk;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # Lcom/lsec/core/frame/ninepatch/NinePatchChunk;

    .prologue
    .line 73
    return-object p2
.end method
