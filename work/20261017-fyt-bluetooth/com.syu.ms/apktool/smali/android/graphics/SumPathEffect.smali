.class public Landroid/graphics/SumPathEffect;
.super Landroid/graphics/PathEffect;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 2
    iget p1, p1, Landroid/graphics/PathEffect;->native_instance:I

    iget p2, p2, Landroid/graphics/PathEffect;->native_instance:I

    invoke-static {p1, p2}, Landroid/graphics/SumPathEffect;->nativeCreate(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/PathEffect;->native_instance:I

    return-void
.end method

.method private static native nativeCreate(II)I
.end method
