.class public Landroid/graphics/DiscretePathEffect;
.super Landroid/graphics/PathEffect;
.source "SourceFile"


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 2
    invoke-static {p1, p2}, Landroid/graphics/DiscretePathEffect;->nativeCreate(FF)I

    move-result p1

    iput p1, p0, Landroid/graphics/PathEffect;->native_instance:I

    return-void
.end method

.method private static native nativeCreate(FF)I
.end method
