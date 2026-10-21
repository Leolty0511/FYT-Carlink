.class public Landroid/graphics/CornerPathEffect;
.super Landroid/graphics/PathEffect;
.source "SourceFile"


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/graphics/CornerPathEffect;->nativeCreate(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/PathEffect;->native_instance:I

    return-void
.end method

.method private static native nativeCreate(F)I
.end method
