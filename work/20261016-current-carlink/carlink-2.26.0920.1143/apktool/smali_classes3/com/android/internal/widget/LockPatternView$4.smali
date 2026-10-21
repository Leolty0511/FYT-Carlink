.class Lcom/android/internal/widget/LockPatternView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$4;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->access$100(Lcom/android/internal/widget/LockPatternView;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->access$000(Lcom/android/internal/widget/LockPatternView;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    div-int/lit8 v2, v2, 0x2

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    const-wide/16 v3, 0xc0

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$4;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 22
    .line 23
    invoke-static {v5}, Lcom/android/internal/widget/LockPatternView;->access$200(Lcom/android/internal/widget/LockPatternView;)Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView$4;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-static/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->access$300(Lcom/android/internal/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
