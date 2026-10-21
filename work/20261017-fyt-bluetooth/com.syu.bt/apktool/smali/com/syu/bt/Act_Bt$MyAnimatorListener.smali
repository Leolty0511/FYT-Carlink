.class public Lcom/syu/bt/Act_Bt$MyAnimatorListener;
.super Ljava/lang/Object;
.source "Act_Bt.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/Act_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimatorListener"
.end annotation


# instance fields
.field private left:I

.field private page:Lcom/lsec/core/frame/ctrl/JPage;

.field final synthetic this$0:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/syu/bt/Act_Bt;Lcom/lsec/core/frame/ctrl/JPage;I)V
    .locals 0
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "left"    # I

    .prologue
    .line 265
    iput-object p1, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->this$0:Lcom/syu/bt/Act_Bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 267
    iput p3, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->left:I

    .line 268
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 291
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setScaleX(F)V

    .line 293
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setScaleY(F)V

    .line 294
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setAlpha(F)V

    .line 296
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 281
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget v1, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setX(F)V

    .line 283
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setScaleX(F)V

    .line 284
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setScaleY(F)V

    .line 285
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$MyAnimatorListener;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setAlpha(F)V

    .line 287
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 277
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 272
    return-void
.end method
