.class Landroid/app/FragmentManagerImpl$5;
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
.field public final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field public final synthetic val$container:Landroid/view/ViewGroup;

.field public final synthetic val$fragment:Landroid/app/Fragment;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$5;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$5;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/FragmentManagerImpl$5;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    iget-object p1, p0, Landroid/app/FragmentManagerImpl$5;->val$container:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    iget-object p1, v2, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, v2, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$5;->this$0:Landroid/app/FragmentManagerImpl;

    iget v3, v2, Landroid/app/Fragment;->mStateAfterAnimating:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
