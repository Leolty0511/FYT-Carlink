.class public Landroid/animation/ValueAnimator$AnimationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationHandler"
.end annotation


# instance fields
.field private mAnimationScheduled:Z

.field public final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoreographer:Landroid/view/Choreographer;

.field public final mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    .line 9
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/animation/ValueAnimator$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method

.method private doAnimationFrame(J)V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    iget-object v2, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 6
    invoke-static {v3}, Landroid/animation/ValueAnimator;->access$000(Landroid/animation/ValueAnimator;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 7
    invoke-static {v3, p0}, Landroid/animation/ValueAnimator;->access$100(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    .line 10
    iget-object v3, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 11
    invoke-static {v3, p1, p2}, Landroid/animation/ValueAnimator;->access$200(Landroid/animation/ValueAnimator;J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    iget-object v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 13
    :cond_4
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_5

    .line 14
    iget-object v3, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 15
    invoke-static {v3, p0}, Landroid/animation/ValueAnimator;->access$100(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V

    const/4 v4, 0x1

    .line 16
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->access$302(Landroid/animation/ValueAnimator;Z)Z

    .line 17
    iget-object v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 18
    :cond_5
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_7

    .line 20
    iget-object v3, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_9

    .line 21
    iget-object v3, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 22
    iget-object v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 23
    iget-object v4, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 24
    :cond_9
    iget-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 25
    iget-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 26
    :goto_6
    iget-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 27
    iget-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-static {p1, p0}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 28
    :cond_a
    iget-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 29
    :cond_b
    iget-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 30
    :cond_c
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;->scheduleAnimation()V

    :cond_d
    return-void
.end method

.method private scheduleAnimation()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 3
    iput-boolean v2, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    .line 2
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator$AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;->scheduleAnimation()V

    return-void
.end method
