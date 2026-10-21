.class Landroid/media/Cea708CCWidget;
.super Landroid/media/ClosedCaptionWidget;
.source "SourceFile"

# interfaces
.implements Landroid/media/Cea708CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$CCView;,
        Landroid/media/Cea708CCWidget$CCWindowLayout;,
        Landroid/media/Cea708CCWidget$CCHandler;,
        Landroid/media/Cea708CCWidget$CCLayout;,
        Landroid/media/Cea708CCWidget$ScaledLayout;
    }
.end annotation


# instance fields
.field private final mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Landroid/media/Cea708CCWidget$CCHandler;

    iget-object p2, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast p2, Landroid/media/Cea708CCWidget$CCLayout;

    invoke-direct {p1, p2}, Landroid/media/Cea708CCWidget$CCHandler;-><init>(Landroid/media/Cea708CCWidget$CCLayout;)V

    iput-object p1, p0, Landroid/media/Cea708CCWidget;->mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;

    return-void
.end method


# virtual methods
.method public createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
    .locals 1

    new-instance v0, Landroid/media/Cea708CCWidget$CCLayout;

    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$CCLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/media/ClosedCaptionWidget;->setSize(II)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    .line 5
    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
