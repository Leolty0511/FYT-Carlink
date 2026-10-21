.class Landroid/app/ExitTransitionCoordinator$9;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method public constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

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
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$9;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 15
    .line 16
    iget-object v1, v0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
