.class Landroid/media/Cea608CCWidget$CCLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCLayout"
.end annotation


# static fields
.field private static final MAX_ROWS:I = 0xf

.field private static final SAFE_AREA_RATIO:F = 0.9f


# instance fields
.field private final mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0xf

    .line 5
    .line 6
    new-array v0, p1, [Landroid/media/Cea608CCWidget$CCLineBox;

    .line 7
    .line 8
    iput-object v0, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 9
    .line 10
    const v0, 0x800003

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-ge v0, p1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 24
    .line 25
    new-instance v2, Landroid/media/Cea608CCWidget$CCLineBox;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3}, Landroid/media/Cea608CCWidget$CCLineBox;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    aput-object v2, v1, v0

    .line 35
    .line 36
    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 37
    .line 38
    aget-object v1, v1, v0

    .line 39
    .line 40
    const/4 v2, -0x2

    .line 41
    invoke-virtual {p0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    mul-int/lit8 p1, p4, 0x3

    .line 4
    .line 5
    mul-int/lit8 p2, p5, 0x4

    .line 6
    .line 7
    if-lt p1, p2, :cond_0

    .line 8
    .line 9
    div-int/lit8 p2, p2, 0x3

    .line 10
    .line 11
    move p1, p5

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    div-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    move p2, p4

    .line 16
    :goto_0
    int-to-float p2, p2

    .line 17
    const p3, 0x3f666666    # 0.9f

    .line 18
    .line 19
    .line 20
    mul-float/2addr p2, p3

    .line 21
    float-to-int p2, p2

    .line 22
    int-to-float p1, p1

    .line 23
    mul-float/2addr p1, p3

    .line 24
    float-to-int p1, p1

    .line 25
    sub-int/2addr p4, p2

    .line 26
    div-int/lit8 p4, p4, 0x2

    .line 27
    .line 28
    sub-int/2addr p5, p1

    .line 29
    div-int/lit8 p5, p5, 0x2

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    :goto_1
    const/16 v0, 0xf

    .line 33
    .line 34
    if-ge p3, v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 37
    .line 38
    aget-object v1, v1, p3

    .line 39
    .line 40
    invoke-static {p1, p3, v0, p5}, Landroid/app/m;->z(IIII)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int v3, p4, p2

    .line 45
    .line 46
    add-int/lit8 p3, p3, 0x1

    .line 47
    .line 48
    mul-int v4, p1, p3

    .line 49
    .line 50
    div-int/2addr v4, v0

    .line 51
    add-int/2addr v4, p5

    .line 52
    invoke-virtual {v1, p4, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    mul-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    mul-int/lit8 v1, p2, 0x4

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    div-int/lit8 p1, v1, 0x3

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    div-int/lit8 p2, v0, 0x4

    .line 22
    .line 23
    :goto_0
    int-to-float p1, p1

    .line 24
    const v0, 0x3f666666    # 0.9f

    .line 25
    .line 26
    .line 27
    mul-float/2addr p1, v0

    .line 28
    float-to-int p1, p1

    .line 29
    int-to-float p2, p2

    .line 30
    mul-float/2addr p2, v0

    .line 31
    float-to-int p2, p2

    .line 32
    const/16 v0, 0xf

    .line 33
    .line 34
    div-int/2addr p2, v0

    .line 35
    const/high16 v1, 0x40000000    # 2.0f

    .line 36
    .line 37
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_1
    if-ge v1, v0, :cond_1

    .line 47
    .line 48
    iget-object v2, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 49
    .line 50
    aget-object v2, v2, v1

    .line 51
    .line 52
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 0

    return-void
.end method

.method public update([Landroid/text/SpannableStringBuilder;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0xf

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    aget-object v2, p1, v1

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 12
    .line 13
    aget-object v3, v3, v1

    .line 14
    .line 15
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 16
    .line 17
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 21
    .line 22
    aget-object v2, v2, v1

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v2, p0, Landroid/media/Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/media/Cea608CCWidget$CCLineBox;

    .line 29
    .line 30
    aget-object v2, v2, v1

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method
