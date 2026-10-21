.class final Landroid/app/FragmentTransition$5;
.super Landroid/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/TransitionSet;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentTransition$5;->val$enterTransition:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/app/FragmentTransition$5;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/app/FragmentTransition$5;->val$exitTransition:Landroid/transition/Transition;

    iput-object p4, p0, Landroid/app/FragmentTransition$5;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/FragmentTransition$5;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    iput-object p6, p0, Landroid/app/FragmentTransition$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/app/FragmentTransition$5;->val$enterTransition:Landroid/transition/Transition;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/FragmentTransition$5;->val$enteringViews:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Landroid/app/FragmentTransition$5;->val$exitTransition:Landroid/transition/Transition;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroid/app/FragmentTransition$5;->val$exitingViews:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {p1, v1, v0}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p1, p0, Landroid/app/FragmentTransition$5;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroid/app/FragmentTransition$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {p1, v1, v0}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method
