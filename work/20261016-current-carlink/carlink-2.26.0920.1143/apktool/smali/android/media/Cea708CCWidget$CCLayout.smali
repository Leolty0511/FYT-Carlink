.class Landroid/media/Cea708CCWidget$CCLayout;
.super Landroid/media/Cea708CCWidget$ScaledLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCLayout"
.end annotation


# static fields
.field private static final SAFE_TITLE_AREA_SCALE_END_X:F = 0.9f

.field private static final SAFE_TITLE_AREA_SCALE_END_Y:F = 0.9f

.field private static final SAFE_TITLE_AREA_SCALE_START_X:F = 0.1f

.field private static final SAFE_TITLE_AREA_SCALE_START_Y:F = 0.1f


# instance fields
.field private final mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 10
    .line 11
    new-instance p1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    .line 12
    .line 13
    const v1, 0x3dcccccd    # 0.1f

    .line 14
    .line 15
    .line 16
    const v2, 0x3f666666    # 0.9f

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v1, v2, v1, v2}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V
    .locals 1

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setFontScale(F)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
