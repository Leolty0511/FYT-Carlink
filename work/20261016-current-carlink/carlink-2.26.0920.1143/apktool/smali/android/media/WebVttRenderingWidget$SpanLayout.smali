.class Landroid/media/WebVttRenderingWidget$SpanLayout;
.super Lcom/android/internal/widget/SubtitleView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanLayout"
.end annotation


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private final mSpans:[Landroid/media/TextTrackCueSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 10
    .line 11
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mSpans:[Landroid/media/TextTrackCueSpan;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->update()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public update()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mSpans:[Landroid/media/TextTrackCueSpan;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 9
    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    iget-boolean v5, v4, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    iget-object v4, v4, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
