.class Landroid/animation/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/StateListAnimator;->initAnimatorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/StateListAnimator;


# direct methods
.method public constructor <init>(Landroid/animation/StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/animation/StateListAnimator;->access$000(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v1, p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/animation/StateListAnimator;->access$002(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
