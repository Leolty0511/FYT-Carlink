.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueLayout"
.end annotation


# instance fields
.field private mActive:Z

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final mCue:Landroid/media/TextTrackCue;

.field private mFontSize:F

.field private mOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 5
    .line 6
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 7
    .line 8
    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 9
    .line 10
    iget p1, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 11
    .line 12
    const/16 p3, 0x64

    .line 13
    .line 14
    const/4 p4, 0x1

    .line 15
    if-ne p1, p3, :cond_0

    .line 16
    .line 17
    move p1, p4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    iget p2, p2, Landroid/media/TextTrackCue;->mAlignment:I

    .line 24
    .line 25
    packed-switch p2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :pswitch_0
    const/4 p1, 0x5

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :pswitch_1
    const/4 p1, 0x3

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :pswitch_2
    const p1, 0x800005

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :pswitch_3
    const p1, 0x800003

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :pswitch_4
    if-eqz p1, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/16 p4, 0x10

    .line 57
    .line 58
    :goto_1
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic access$000(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 0

    iget p0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return p0
.end method


# virtual methods
.method public getCue()Landroid/media/TextTrackCue;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return v0
.end method

.method public measureForParent(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/media/WebVttRenderingWidget;->access$400(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0xc8

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const/16 v2, 0xcb

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    const/16 v2, 0xcc

    .line 30
    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 39
    .line 40
    rsub-int/lit8 v1, v1, 0x64

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget v1, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 44
    .line 45
    const/16 v2, 0x32

    .line 46
    .line 47
    if-gt v1, v2, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    rsub-int/lit8 v1, v1, 0x64

    .line 51
    .line 52
    :goto_0
    mul-int/lit8 v1, v1, 0x2

    .line 53
    .line 54
    :goto_1
    iget v0, v0, Landroid/media/TextTrackCue;->mSize:I

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    mul-int/2addr v0, p1

    .line 61
    div-int/lit8 v0, v0, 0x64

    .line 62
    .line 63
    const/high16 p1, -0x80000000

    .line 64
    .line 65
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->measure(II)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public prepForPrune()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 2
    .line 3
    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    instance-of v3, v2, Landroid/media/WebVttRenderingWidget$SpanLayout;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    check-cast v2, Landroid/media/WebVttRenderingWidget$SpanLayout;

    .line 21
    .line 22
    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return-void
.end method

.method public update()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 12
    .line 13
    iget v1, v1, Landroid/media/TextTrackCue;->mAlignment:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/media/WebVttRenderingWidget;->access$400(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0xcb

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0xcc

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 34
    .line 35
    :goto_0
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 36
    .line 37
    iget v2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 38
    .line 39
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 40
    .line 41
    iget-object v3, v3, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 42
    .line 43
    array-length v4, v3

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_1
    if-ge v5, v4, :cond_2

    .line 46
    .line 47
    new-instance v6, Landroid/media/WebVttRenderingWidget$SpanLayout;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    aget-object v8, v3, v5

    .line 54
    .line 55
    invoke-direct {v6, v7, v8}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v1, v2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 62
    .line 63
    .line 64
    const/4 v7, -0x2

    .line 65
    invoke-virtual {p0, v6, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    return-void
.end method
