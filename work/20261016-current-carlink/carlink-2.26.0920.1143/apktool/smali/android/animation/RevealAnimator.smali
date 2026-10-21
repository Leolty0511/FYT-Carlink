.class public Landroid/animation/RevealAnimator;
.super Landroid/view/RenderNodeAnimator;
.source "SourceFile"


# instance fields
.field private mClipView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/RenderNodeAnimator;-><init>(IIFF)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/animation/RevealAnimator;->mClipView:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/animation/RevealAnimator;->mClipView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setRevealClip(ZFFF)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
