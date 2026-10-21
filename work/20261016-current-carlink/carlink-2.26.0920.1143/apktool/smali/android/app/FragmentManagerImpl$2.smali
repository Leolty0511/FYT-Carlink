.class Landroid/app/FragmentManagerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$f:Landroid/app/Fragment;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentManagerImpl$2;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/FragmentManagerImpl$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/app/FragmentManagerImpl$2;->val$f:Landroid/app/Fragment;

    iput-object p5, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    iget-object p1, p0, Landroid/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->val$view:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/app/FragmentManagerImpl$2;->val$f:Landroid/app/Fragment;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->val$f:Landroid/app/Fragment;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$2;->val$view:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Landroid/app/FragmentManagerImpl$2;->this$0:Landroid/app/FragmentManagerImpl;

    .line 34
    .line 35
    iget-object v3, p0, Landroid/app/FragmentManagerImpl$2;->val$fragment:Landroid/app/Fragment;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/app/Fragment;->getStateAfterAnimating()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
