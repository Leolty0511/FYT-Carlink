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

    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ne p3, p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 3
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int p3, p5, p2

    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p3, v0

    sub-int/2addr p3, p4

    sub-int p3, p1, p3

    if-lez p3, :cond_0

    add-int/2addr p2, p3

    .line 4
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 5
    :cond_0
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p5, p2

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p5, p3

    sub-int/2addr p5, p4

    sub-int/2addr p1, p5

    if-lez p1, :cond_1

    add-int/2addr p2, p1

    .line 6
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_1
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 1
    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p5

    .line 2
    invoke-virtual {p12, p5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p5

    invoke-virtual {p12, p5}, Landroid/text/Layout;->getLineTop(I)I

    move-result p5

    if-gez p4, :cond_0

    .line 3
    iget-object p4, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    .line 4
    :cond_0
    iget-object p4, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float p3, p3

    int-to-float p5, p5

    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    add-int/2addr p1, v0

    return p1
.end method
