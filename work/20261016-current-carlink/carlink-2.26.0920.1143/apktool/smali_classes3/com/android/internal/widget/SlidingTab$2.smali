.class Lcom/android/internal/widget/SlidingTab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTab;

.field final synthetic val$dx:I

.field final synthetic val$dy:I

.field final synthetic val$holdAfter:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SlidingTab;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab$2;->val$holdAfter:Z

    iput p3, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    iput p4, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/android/internal/widget/SlidingTab$2;->val$holdAfter:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 6
    .line 7
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dx:I

    .line 8
    .line 9
    int-to-float v1, v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget v2, p0, Lcom/android/internal/widget/SlidingTab$2;->val$dy:I

    .line 12
    .line 13
    int-to-float v3, v2

    .line 14
    int-to-float v2, v2

    .line 15
    invoke-direct {p1, v1, v0, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v0, 0x3e8

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTab;->access$202(Lcom/android/internal/widget/SlidingTab;Z)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 31
    .line 32
    const/high16 v0, 0x3f000000    # 0.5f

    .line 33
    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v0, 0xfa

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->access$300(Lcom/android/internal/widget/SlidingTab;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->access$400(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->access$500(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p1, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$2;->this$0:Lcom/android/internal/widget/SlidingTab;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->access$600(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p1, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
