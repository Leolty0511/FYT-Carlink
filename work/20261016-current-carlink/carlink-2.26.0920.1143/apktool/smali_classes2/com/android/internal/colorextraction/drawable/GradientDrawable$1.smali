.class Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->access$000(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->access$002(Lcom/android/internal/colorextraction/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
