.class Landroid/media/WebVttRenderingWidget;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttRenderingWidget$SpanLayout;,
        Landroid/media/WebVttRenderingWidget$CueLayout;,
        Landroid/media/WebVttRenderingWidget$RegionLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_CUE_BACKGROUND:I = -0x7f010000

.field private static final DEBUG_REGION_BACKGROUND:I = -0x7fffff01

.field private static final LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final mCueBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/TextTrackCue;",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mHasChangeListener:Z

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;

.field private final mRegionBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/TextTrackRegion;",
            "Landroid/media/WebVttRenderingWidget$RegionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    .line 5
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    .line 6
    new-instance p2, Landroid/media/WebVttRenderingWidget$1;

    invoke-direct {p2, p0}, Landroid/media/WebVttRenderingWidget$1;-><init>(Landroid/media/WebVttRenderingWidget;)V

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const-string p2, "captioning"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 9
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p2

    iput-object p2, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 10
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    const p2, 0x3d5a511a    # 0.0533f

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return-void
.end method

.method public static synthetic access$100(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method public static synthetic access$300(Landroid/media/WebVttRenderingWidget;)F
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return p0
.end method

.method public static synthetic access$400(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result p0

    return p0
.end method

.method private calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 3
    iget-boolean v0, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x64

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_2

    :cond_1
    return v4

    :cond_2
    if-nez v3, :cond_3

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    if-nez v0, :cond_4

    return v4

    .line 6
    :cond_4
    invoke-static {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->access$000(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result p1

    add-int/2addr p1, v2

    neg-int p1, p1

    return p1
.end method

.method private layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 3
    iget v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    invoke-static {v1, v2}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v2

    .line 4
    iget-boolean v3, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, p1

    const/16 v5, 0xcb

    if-eq v2, v5, :cond_1

    const/16 v5, 0xcc

    if-eq v2, v5, :cond_0

    .line 6
    iget v0, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 7
    :cond_0
    iget v0, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    sub-int/2addr v0, v4

    goto :goto_0

    .line 8
    :cond_1
    iget v0, v0, Landroid/media/TextTrackCue;->mTextPosition:I

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    rsub-int/lit8 v0, v0, 0x64

    :cond_2
    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, p1

    if-ge v0, v1, :cond_3

    add-int v3, v0, v4

    if-le v3, v1, :cond_3

    add-int/2addr v0, v1

    sub-int/2addr v4, v1

    :cond_3
    rsub-int/lit8 v1, v2, 0x64

    int-to-float v1, v1

    int-to-float v3, v0

    cmpg-float v3, v3, v1

    if-gez v3, :cond_4

    add-int v3, v0, v4

    int-to-float v3, v3

    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    sub-int/2addr v4, v2

    :cond_4
    mul-int/2addr v0, p1

    .line 11
    div-int/lit8 v0, v0, 0x64

    mul-int/2addr v4, p1

    .line 12
    div-int/lit8 v4, v4, 0x64

    .line 13
    invoke-direct {p0, p3}, Landroid/media/WebVttRenderingWidget;->calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result p1

    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gez p1, :cond_5

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    goto :goto_1

    :cond_5
    sub-int/2addr p2, v1

    mul-int/2addr p1, p2

    .line 15
    div-int/lit8 p2, p1, 0x64

    :goto_1
    add-int/2addr v4, v0

    add-int/2addr v1, p2

    .line 16
    invoke-virtual {p3, v0, p2, v4, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method private layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getRegion()Landroid/media/TextTrackRegion;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 4
    iget v3, v0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 5
    iget v0, v0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr v3, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v3, p1

    float-to-int v3, v3

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    div-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr v2, v3

    add-int/2addr v1, p1

    .line 6
    invoke-virtual {p3, v3, p1, v2, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method private manageChangeListener()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eq v1, v0, :cond_2

    .line 3
    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 5
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x3d5a511a    # 0.0533f

    mul-float/2addr v1, v2

    .line 7
    invoke-direct {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private prepForPrune()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 3
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prepForPrune()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 6
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private prune()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 3
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prune()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 7
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 8
    invoke-virtual {v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static resolveCueAlignment(II)I
    .locals 3

    const/16 v0, 0xc9

    const/16 v1, 0xcb

    const/16 v2, 0xcc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method private setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 2
    iput p2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 3
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 5
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 7
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 8
    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object p2, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    const p3, 0x3d5a511a    # 0.0533f

    mul-float/2addr p2, p3

    int-to-float p3, p5

    mul-float/2addr p2, p3

    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 2
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 4
    invoke-direct {p0, p4, p5, v0}, Landroid/media/WebVttRenderingWidget;->layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_1
    if-ge p2, p1, :cond_1

    .line 6
    iget-object p3, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 7
    invoke-direct {p0, p4, p5, p3}, Landroid/media/WebVttRenderingWidget;->layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 4
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measureForParent(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 7
    invoke-virtual {v2, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measureForParent(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 3
    iget v2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 4
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prepForPrune()V

    .line 5
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 6
    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TextTrackCue;

    .line 7
    iget-object v6, v5, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    const/4 v7, -0x2

    if-eqz v6, :cond_1

    .line 8
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/WebVttRenderingWidget$RegionLayout;

    if-nez v8, :cond_0

    .line 9
    new-instance v8, Landroid/media/WebVttRenderingWidget$RegionLayout;

    invoke-direct {v8, v0, v6, v1, v2}, Landroid/media/WebVttRenderingWidget$RegionLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 10
    iget-object v9, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v8, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 12
    :cond_0
    invoke-virtual {v8, v5}, Landroid/media/WebVttRenderingWidget$RegionLayout;->put(Landroid/media/TextTrackCue;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v6, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/WebVttRenderingWidget$CueLayout;

    if-nez v6, :cond_2

    .line 14
    new-instance v6, Landroid/media/WebVttRenderingWidget$CueLayout;

    invoke-direct {v6, v0, v5, v1, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 15
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, v6, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 17
    :cond_2
    invoke-virtual {v6}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 18
    invoke-virtual {v6, v4}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrder(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prune()V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;->setSize(II)V

    .line 23
    iget-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz p1, :cond_4

    .line 24
    invoke-interface {p1, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    :cond_4
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    return-void
.end method

.method public setSize(II)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :goto_0
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    return-void
.end method
