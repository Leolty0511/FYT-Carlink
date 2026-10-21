.class Landroid/media/Cea608CCWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 6
    .line 7
    const/high16 v0, -0x1000000

    .line 8
    .line 9
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 13
    .line 14
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 15
    .line 16
    const/16 v1, 0x11

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x4

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const v0, 0x105016d

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-float v0, v0

    .line 52
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 53
    .line 54
    const v0, 0x105016f

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-float v0, v0

    .line 62
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 63
    .line 64
    const v0, 0x105016e

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    int-to-float p1, p1

    .line 72
    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 73
    .line 74
    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 30
    .line 31
    .line 32
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    .line 39
    .line 40
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 56
    .line 57
    .line 58
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    .line 60
    .line 61
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 62
    .line 63
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v4

    .line 23
    :goto_0
    const/4 v3, -0x1

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move v5, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget v5, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 29
    .line 30
    :goto_1
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 33
    .line 34
    :cond_2
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 35
    .line 36
    const/high16 v6, 0x40000000    # 2.0f

    .line 37
    .line 38
    div-float v6, v2, v6

    .line 39
    .line 40
    neg-float v7, v6

    .line 41
    invoke-virtual {p0, v2, v7, v7, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 42
    .line 43
    .line 44
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 48
    .line 49
    .line 50
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 51
    .line 52
    invoke-virtual {p0, v2, v6, v6, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    .line 60
    .line 61
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 62
    .line 63
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private setBackgroundSpans(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/text/Spannable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/text/Spannable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-class v2, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    .line 23
    .line 24
    :goto_0
    array-length v1, v0

    .line 25
    if-ge v3, v1, :cond_0

    .line 26
    .line 27
    aget-object v1, v0, v3

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f400000    # 0.75f

    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    .line 12
    .line 13
    const v2, 0x3dcccccd    # 0.1f

    .line 14
    .line 15
    .line 16
    mul-float/2addr v2, v0

    .line 17
    const/high16 v3, 0x3f800000    # 1.0f

    .line 18
    .line 19
    add-float/2addr v2, v3

    .line 20
    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 21
    .line 22
    const v2, 0x3d4ccccd    # 0.05f

    .line 23
    .line 24
    .line 25
    mul-float/2addr v0, v2

    .line 26
    add-float/2addr v0, v3

    .line 27
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 28
    .line 29
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/16 v2, 0x22

    .line 39
    .line 40
    invoke-static {}, Landroid/media/Cea608CCWidget;->access$000()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "1234567890123456789012345678901234"

    .line 45
    .line 46
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/media/Cea608CCWidget;->access$000()Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-float v0, v0

    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-float v1, v1

    .line 63
    div-float/2addr v1, v0

    .line 64
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 65
    .line 66
    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 2
    .line 3
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 4
    .line 5
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 6
    .line 7
    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 8
    .line 9
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 10
    .line 11
    iput v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 12
    .line 13
    iget p1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 14
    .line 15
    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 26
    .line 27
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 28
    .line 29
    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
