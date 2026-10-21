.class public Landroid/graphics/EmbossMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>([FFFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/EmbossMaskFilter;->nativeConstructor([FFFF)I

    move-result p1

    iput p1, p0, Landroid/graphics/MaskFilter;->native_instance:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private static native nativeConstructor([FFFF)I
.end method
