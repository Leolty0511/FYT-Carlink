.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 2
    iget v0, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {p1, v0}, Landroid/graphics/PorterDuffColorFilter;->native_CreatePorterDuffFilter(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorFilter;->native_instance:I

    .line 3
    iget p2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;->nCreatePorterDuffFilter(III)I

    move-result p1

    iput p1, p0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    return-void
.end method

.method private static native nCreatePorterDuffFilter(III)I
.end method

.method private static native native_CreatePorterDuffFilter(II)I
.end method
