.class public Landroid/graphics/BlurMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BlurMaskFilter$Blur;
    }
.end annotation


# direct methods
.method public constructor <init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 2
    iget p2, p2, Landroid/graphics/BlurMaskFilter$Blur;->native_int:I

    invoke-static {p1, p2}, Landroid/graphics/BlurMaskFilter;->nativeConstructor(FI)I

    move-result p1

    iput p1, p0, Landroid/graphics/MaskFilter;->native_instance:I

    return-void
.end method

.method private static native nativeConstructor(FI)I
.end method
