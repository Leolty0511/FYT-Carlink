.class Lcom/android/internal/app/WindowDecorActionBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$000(Lcom/android/internal/app/WindowDecorActionBar;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$100(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$100(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$200(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$400(Lcom/android/internal/app/WindowDecorActionBar;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v1, 0x1

    .line 53
    if-ne p1, v1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$200(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$200(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-static {p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$502(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/android/internal/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$600(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$600(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method
