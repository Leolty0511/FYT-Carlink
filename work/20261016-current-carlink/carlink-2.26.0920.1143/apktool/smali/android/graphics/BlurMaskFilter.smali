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
    .line 3
    .line 4
    iget p2, p2, Landroid/graphics/BlurMaskFilter$Blur;->native_int:I

    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/graphics/BlurMaskFilter;->nativeConstructor(FI)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iput-wide p1, p0, Landroid/graphics/MaskFilter;->native_instance:J

    .line 11
    .line 12
    return-void
.end method

.method private static native nativeConstructor(FI)J
.end method
