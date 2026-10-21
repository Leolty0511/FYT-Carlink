.class Landroid/app/ExitTransitionCoordinator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V
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

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/app/ExitTransitionCoordinator;->access$802(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/app/ExitTransitionCoordinator;->access$500(Landroid/app/ExitTransitionCoordinator;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p1, v0}, Landroid/app/ExitTransitionCoordinator;->access$902(Landroid/app/ExitTransitionCoordinator;Z)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/ActivityTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
