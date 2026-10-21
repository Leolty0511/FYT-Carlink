.class public Landroid/text/style/IconMarginSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPad:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    iput p2, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/text/Spanned;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ne p3, p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 16
    .line 17
    add-int p3, p5, p2

    .line 18
    .line 19
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 20
    .line 21
    sub-int/2addr p3, v0

    .line 22
    sub-int/2addr p3, p4

    .line 23
    sub-int p3, p1, p3

    .line 24
    .line 25
    if-lez p3, :cond_0

    .line 26
    .line 27
    add-int/2addr p2, p3

    .line 28
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 29
    .line 30
    :cond_0
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 31
    .line 32
    add-int/2addr p5, p2

    .line 33
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 34
    .line 35
    sub-int/2addr p5, p3

    .line 36
    sub-int/2addr p5, p4

    .line 37
    sub-int/2addr p1, p5

    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    add-int/2addr p2, p1

    .line 41
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 1
    check-cast p8, Landroid/text/Spanned;

    .line 2
    .line 3
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    invoke-virtual {p12, p5}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 8
    .line 9
    .line 10
    move-result p5

    .line 11
    invoke-virtual {p12, p5}, Landroid/text/Layout;->getLineTop(I)I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    if-gez p4, :cond_0

    .line 16
    .line 17
    iget-object p4, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    sub-int/2addr p3, p4

    .line 24
    :cond_0
    iget-object p4, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    int-to-float p3, p3

    .line 27
    int-to-float p5, p5

    .line 28
    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    iget-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    add-int/2addr p1, v0

    return p1
.end method
