.class Landroid/app/EnterTransitionCoordinator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method public constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/app/EnterTransitionCoordinator;->access$400(Landroid/app/EnterTransitionCoordinator;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/app/EnterTransitionCoordinator$6;->this$0:Landroid/app/EnterTransitionCoordinator;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/ActivityTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
