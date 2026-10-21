.class public Landroid/graphics/PaintFlagsDrawFilter;
.super Landroid/graphics/DrawFilter;
.source "SourceFile"


# instance fields
.field public final clearBits:I

.field public final setBits:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/DrawFilter;-><init>()V

    .line 2
    iput p1, p0, Landroid/graphics/PaintFlagsDrawFilter;->clearBits:I

    .line 3
    iput p2, p0, Landroid/graphics/PaintFlagsDrawFilter;->setBits:I

    .line 4
    invoke-static {p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;->nativeConstructor(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/DrawFilter;->mNativeInt:I

    return-void
.end method

.method private static native nativeConstructor(II)I
.end method
