.class public Landroid/graphics/PixelXorXfermode;
.super Landroid/graphics/Xfermode;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/graphics/PixelXorXfermode;->nativeCreate(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Xfermode;->native_instance:I

    return-void
.end method

.method private static native nativeCreate(I)I
.end method
