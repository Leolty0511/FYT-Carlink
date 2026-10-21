.class Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 38
    .line 39
    iget v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 56
    .line 57
    iput v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 58
    .line 59
    iput p1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput p1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 63
    .line 64
    iput p1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 65
    .line 66
    iget-object p1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method
