.class Lcom/android/internal/widget/helper/ItemTouchHelper$3;
.super Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

.field final synthetic val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFFILcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput p9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    iput-object p10, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    .line 10
    .line 11
    if-gtz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    .line 38
    .line 39
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    .line 40
    .line 41
    if-lez p1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 49
    .line 50
    iget-object v0, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    .line 56
    if-ne v0, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method
