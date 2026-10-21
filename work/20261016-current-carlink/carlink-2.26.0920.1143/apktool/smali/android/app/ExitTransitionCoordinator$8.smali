.class Landroid/app/ExitTransitionCoordinator$8;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$8;->val$transitioningViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/ActivityTransitionCoordinator;->viewsTransitionComplete()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$1000(Landroid/app/ExitTransitionCoordinator;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->val$transitioningViews:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$1100(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$100(Landroid/app/ExitTransitionCoordinator;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
