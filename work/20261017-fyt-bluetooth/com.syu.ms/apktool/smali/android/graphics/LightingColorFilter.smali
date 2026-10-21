.class public Landroid/graphics/LightingColorFilter;
.super Landroid/graphics/ColorFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 2
    invoke-static {p1, p2}, Landroid/graphics/LightingColorFilter;->native_CreateLightingFilter(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorFilter;->native_instance:I

    .line 3
    invoke-static {v0, p1, p2}, Landroid/graphics/LightingColorFilter;->nCreateLightingFilter(III)I

    move-result p1

    iput p1, p0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    return-void
.end method

.method private static native nCreateLightingFilter(III)I
.end method

.method private static native native_CreateLightingFilter(II)I
.end method
