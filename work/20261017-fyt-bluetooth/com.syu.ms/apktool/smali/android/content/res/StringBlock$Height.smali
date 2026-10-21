.class Landroid/content/res/StringBlock$Height;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/StringBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Height"
.end annotation


# static fields
.field private static sProportion:F


# instance fields
.field private mSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Landroid/content/res/StringBlock$Height;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 0

    .line 2
    iget p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    if-eqz p7, :cond_0

    int-to-float p1, p1

    .line 3
    iget p2, p7, Landroid/text/TextPaint;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 4
    :cond_0
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int p3, p2, p3

    if-ge p3, p1, :cond_1

    sub-int/2addr p2, p1

    .line 5
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 6
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    .line 7
    :cond_1
    sget p2, Landroid/content/res/StringBlock$Height;->sProportion:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/high16 p4, 0x42c80000    # 100.0f

    .line 9
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    const/4 p5, 0x7

    const-string p7, "ABCDEFG"

    .line 11
    invoke-virtual {p2, p7, p3, p5, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 12
    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    div-float/2addr p4, p2

    sput p4, Landroid/content/res/StringBlock$Height;->sProportion:F

    .line 13
    :cond_2
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int p2, p2

    int-to-float p2, p2

    sget p4, Landroid/content/res/StringBlock$Height;->sProportion:F

    mul-float/2addr p2, p4

    float-to-double p4, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p2, p4

    .line 14
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int p5, p1, p4

    if-lt p5, p2, :cond_3

    .line 15
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p4, p1

    .line 16
    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    :cond_3
    if-lt p1, p2, :cond_4

    neg-int p2, p2

    .line 17
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p2, p1

    .line 18
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_4
    neg-int p1, p1

    .line 19
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 20
    iput p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p3, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_0
    return-void
.end method
