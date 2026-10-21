.class Landroid/transition/ChangeTransform$GhostListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GhostListener"
.end annotation


# instance fields
.field private mGhostView:Landroid/view/GhostView;

.field private mStartView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 10
    .line 11
    const v0, 0x1020459

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 19
    .line 20
    const v0, 0x1020353

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mStartView:Landroid/view/View;

    .line 27
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/GhostView;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroid/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/view/GhostView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/GhostView;->setVisibility(I)V

    return-void
.end method
