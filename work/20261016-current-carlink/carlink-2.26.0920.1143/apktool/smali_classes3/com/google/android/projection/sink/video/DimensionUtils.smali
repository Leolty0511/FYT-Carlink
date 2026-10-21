.class public Lcom/google/android/projection/sink/video/DimensionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;
    }
.end annotation


# static fields
.field private static mRecommended:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/sink/video/DimensionUtils;->mRecommended:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Landroid/util/Size;

    .line 9
    .line 10
    const/16 v2, 0x550

    .line 11
    .line 12
    const/16 v3, 0x320

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 15
    .line 16
    .line 17
    const/16 v2, -0xa

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRequestedVideoSize(IILcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->isNativeSize()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance p2, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {p2, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    .line 12
    .line 13
    return-object p2

    .line 14
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p2}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-direct {p0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static makeViewport(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 2
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "previewWidth = "

    const-string v3, "  previewHeight = "

    const-string v4, "  videoSize = "

    .line 3
    invoke-static {v2, p0, v3, p1, v4}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "AHU.Video"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int p2, v0

    float-to-int v0, v1

    sub-int/2addr p0, p2

    sub-int/2addr p1, v0

    const-string v1, "newWidth = "

    const-string v3, "  newHeight = "

    const-string v4, "  extraWidth = "

    .line 5
    invoke-static {v1, p2, v3, v0, v4}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " extraHeight = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p0, Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static makeViewport(IILandroid/graphics/Rect;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;)Landroid/graphics/Rect;
    .locals 8

    .line 20
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 21
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "surfaceWidth = "

    const-string v3, "  surfaceHeight = "

    const-string v4, "  videoSize = "

    .line 22
    invoke-static {v2, p0, v3, p1, v4}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AHU.Video"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget v2, p2, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    if-gt v2, p0, :cond_6

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    int-to-float p2, p0

    cmpl-float p3, p2, v0

    if-gtz p3, :cond_2

    int-to-float p3, p1

    cmpl-float p3, p3, v1

    if-lez p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    :goto_1
    float-to-int v0, v0

    float-to-int v1, v1

    if-eqz p3, :cond_3

    int-to-float p3, v0

    div-float/2addr p2, p3

    int-to-float v0, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 25
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float/2addr p3, p2

    float-to-int v0, p3

    mul-float/2addr v1, p2

    float-to-int v1, v1

    :cond_3
    sub-int p2, p0, v0

    sub-int p3, p1, v1

    if-ltz p2, :cond_4

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    const/high16 v2, -0x41000000    # -0.5f

    :goto_2
    int-to-float v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    float-to-int v5, v5

    int-to-float v7, p3

    div-float/2addr v7, v6

    add-float/2addr v7, v2

    float-to-int v2, v7

    .line 26
    sget-object v6, Lcom/google/android/projection/sink/video/DimensionUtils;->mRecommended:Ljava/util/HashMap;

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, p0, p1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_5

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_5
    const-string p1, "newWidth = "

    const-string v4, "  newHeight = "

    const-string v6, "  extraWidth = "

    .line 28
    invoke-static {p1, v0, v4, v1, v6}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extraHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int p2, v5, p2

    add-int/2addr v0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/2addr v1, v2

    invoke-direct {p1, p2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_6
    :goto_3
    int-to-float v0, p0

    .line 31
    invoke-virtual {p3}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    .line 32
    invoke-virtual {p3}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 34
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 35
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p0, v1

    .line 36
    div-int/lit8 p0, p0, 0x2

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr p1, p2

    .line 37
    div-int/lit8 p1, p1, 0x2

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "oversized canvas: content "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getHeight()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " scale="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " viewport="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance p3, Landroid/graphics/Rect;

    add-int/2addr v1, p0

    add-int/2addr p2, p1

    invoke-direct {p3, p0, p1, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3
.end method
