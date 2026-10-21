.class Landroidx/fragment/app/FragmentAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$signal:Landroidx/core/os/CancellationSignal;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$container:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$3;->val$viewToAnimate:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Landroidx/fragment/app/FragmentAnim$3;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iput-object p5, p0, Landroidx/fragment/app/FragmentAnim$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$container:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$3;->val$viewToAnimate:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$container:Landroid/view/ViewGroup;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$3;->val$viewToAnimate:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-gez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$signal:Landroidx/core/os/CancellationSignal;

    .line 37
    .line 38
    invoke-interface {p1, v0, v1}, Landroidx/fragment/app/FragmentTransition$Callback;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
