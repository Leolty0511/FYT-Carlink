.class public Landroid/text/style/DrawableMarginSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPad:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    iput p2, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

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
    iget-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

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
    move-result p2

    .line 7
    invoke-virtual {p12, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p12, p2}, Landroid/text/Layout;->getLineTop(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget-object p4, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    iget-object p5, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    iget-object p6, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    add-int/2addr p4, p3

    .line 30
    add-int/2addr p5, p2

    .line 31
    invoke-virtual {p6, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    iget-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget v0, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

    add-int/2addr p1, v0

    return p1
.end method
