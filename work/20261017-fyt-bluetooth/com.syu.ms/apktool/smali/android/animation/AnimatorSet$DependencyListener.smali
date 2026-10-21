.class Landroid/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mNode:Landroid/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 3
    iput-object p2, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 4
    iput p3, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    return-void
.end method

.method private startIfReady(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-boolean v0, v0, Landroid/animation/AnimatorSet;->mTerminated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    iget-object v3, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Dependency;

    .line 4
    iget v4, v3, Landroid/animation/AnimatorSet$Dependency;->rule:I

    iget v5, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    if-ne v4, v5, :cond_1

    iget-object v4, v3, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    if-ne v4, p1, :cond_1

    .line 5
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object p1, p1, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object p1, p1, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object p1, p1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 9
    iget-object p1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$DependencyListener;->startIfReady(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$DependencyListener;->startIfReady(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
