.class public Lcom/lsec/core/util/Runnable_AnimDrawable;
.super Ljava/lang/Object;
.source "Runnable_AnimDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field public bRunning:Z

.field private delay:I

.field private iCntFrame:I

.field private index:I

.field private v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p3, "delay"    # I

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->bRunning:Z

    .line 10
    const/16 v0, 0x50

    iput v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->delay:I

    .line 11
    iput v1, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->iCntFrame:I

    .line 20
    iput v1, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->index:I

    .line 21
    iput-object p1, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->v:Landroid/view/View;

    .line 22
    iput-object p2, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 23
    iput p3, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->delay:I

    .line 24
    if-eqz p2, :cond_0

    .line 25
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->iCntFrame:I

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->bRunning:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 32
    iget v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->iCntFrame:I

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget v2, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->index:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->index:I

    iget v1, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->iCntFrame:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 35
    iget v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->index:I

    .line 39
    :goto_0
    invoke-static {}, Lcom/lsec/core/util/HandlerUI;->getInstance()Lcom/lsec/core/util/HandlerUI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lsec/core/util/HandlerUI;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    invoke-static {}, Lcom/lsec/core/util/HandlerUI;->getInstance()Lcom/lsec/core/util/HandlerUI;

    move-result-object v0

    iget v1, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->delay:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/lsec/core/util/HandlerUI;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->index:I

    goto :goto_0
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/util/Runnable_AnimDrawable;->bRunning:Z

    .line 17
    return-void
.end method
