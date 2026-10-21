.class public Landroid/graphics/NinePatch$InsetStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/NinePatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetStruct"
.end annotation


# instance fields
.field public final opticalRect:Landroid/graphics/Rect;

.field public final outlineAlpha:F

.field public final outlineRadius:F

.field public final outlineRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IIIIIIIIFIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0, p11}, Landroid/graphics/Rect;->scale(F)V

    .line 12
    .line 13
    .line 14
    invoke-static {p5, p6, p7, p8, p11}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    mul-float/2addr p9, p11

    .line 21
    iput p9, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    .line 22
    .line 23
    int-to-float p1, p10

    .line 24
    const/high16 p2, 0x437f0000    # 255.0f

    .line 25
    .line 26
    div-float/2addr p1, p2

    .line 27
    iput p1, p0, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    .line 28
    .line 29
    return-void
.end method

.method public static scaleInsets(IIIIF)Landroid/graphics/Rect;
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v0, p4, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p4, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {p4, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    .line 11
    .line 12
    return-object p4

    .line 13
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    int-to-float p0, p0

    .line 19
    mul-float/2addr p0, p4

    .line 20
    float-to-double v1, p0

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    double-to-int p0, v1

    .line 26
    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    int-to-float p0, p1

    .line 29
    mul-float/2addr p0, p4

    .line 30
    float-to-double p0, p0

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    double-to-int p0, p0

    .line 36
    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    int-to-float p0, p2

    .line 39
    mul-float/2addr p0, p4

    .line 40
    float-to-double p0, p0

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    double-to-int p0, p0

    .line 46
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    int-to-float p0, p3

    .line 49
    mul-float/2addr p0, p4

    .line 50
    float-to-double p0, p0

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    double-to-int p0, p0

    .line 56
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    return-object v0
.end method
