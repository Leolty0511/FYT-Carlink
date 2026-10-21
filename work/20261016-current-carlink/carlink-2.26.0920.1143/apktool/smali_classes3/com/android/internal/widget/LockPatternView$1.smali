.class Lcom/android/internal/widget/LockPatternView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$endAlpha:F

.field final synthetic val$endScale:F

.field final synthetic val$endTranslationY:F

.field final synthetic val$startAlpha:F

.field final synthetic val$startScale:F

.field final synthetic val$startTranslationY:F


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    iput p3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startAlpha:F

    iput p4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endAlpha:F

    iput p5, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startTranslationY:F

    iput p6, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endTranslationY:F

    iput p7, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startScale:F

    iput p8, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    .line 12
    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    sub-float/2addr v1, p1

    .line 16
    iget v2, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startAlpha:F

    .line 17
    .line 18
    mul-float/2addr v2, v1

    .line 19
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endAlpha:F

    .line 20
    .line 21
    mul-float/2addr v3, p1

    .line 22
    add-float/2addr v3, v2

    .line 23
    iput v3, v0, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 24
    .line 25
    iget v2, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startTranslationY:F

    .line 26
    .line 27
    mul-float/2addr v2, v1

    .line 28
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endTranslationY:F

    .line 29
    .line 30
    mul-float/2addr v3, p1

    .line 31
    add-float/2addr v3, v2

    .line 32
    iput v3, v0, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->access$000(Lcom/android/internal/widget/LockPatternView;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    div-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    int-to-float v2, v2

    .line 43
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startScale:F

    .line 44
    .line 45
    mul-float/2addr v1, v3

    .line 46
    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endScale:F

    .line 47
    .line 48
    mul-float/2addr p1, v3

    .line 49
    add-float/2addr p1, v1

    .line 50
    mul-float/2addr p1, v2

    .line 51
    iput p1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
