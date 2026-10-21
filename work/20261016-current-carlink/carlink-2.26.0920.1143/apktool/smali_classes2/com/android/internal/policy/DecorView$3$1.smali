.class Lcom/android/internal/policy/DecorView$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/DecorView$3;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DecorView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$3$1;->this$1:Lcom/android/internal/policy/DecorView$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$3$1;->this$1:Lcom/android/internal/policy/DecorView$3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->access$100(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$3$1;->this$1:Lcom/android/internal/policy/DecorView$3;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->access$402(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/policy/DecorView$3$1;->this$1:Lcom/android/internal/policy/DecorView$3;

    iget-object p1, p1, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->access$100(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method
