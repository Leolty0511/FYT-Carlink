.class Lcom/android/internal/widget/ActionBarOverlayLayout$4;
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

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

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
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$500(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    neg-int v2, v2

    .line 27
    int-to-float v2, v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$002(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/16 v1, 0x8

    .line 64
    .line 65
    if-eq v0, v1, :cond_0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    int-to-float v2, v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$700(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$202(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 103
    .line 104
    .line 105
    :cond_0
    return-void
.end method
