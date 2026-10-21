.class Landroidx/fragment/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enteringViews:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method
