.class Landroid/app/ExitTransitionCoordinator$2;
.super Landroid/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V
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

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/ActivityTransitionCoordinator;->isViewsTransitionComplete()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$2;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/app/ExitTransitionCoordinator;->access$100(Landroid/app/ExitTransitionCoordinator;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
