.class Lcom/android/internal/widget/ActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$500(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$002(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/16 v1, 0x8

    .line 53
    .line 54
    if-eq v0, v1, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$700(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$202(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method
