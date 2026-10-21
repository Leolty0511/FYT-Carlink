.class Lcom/android/internal/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 20
    .line 21
    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 22
    .line 23
    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 24
    .line 25
    invoke-virtual {v2, v0, v3, p1, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 32
    .line 33
    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 34
    .line 35
    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 46
    .line 47
    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 48
    .line 49
    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 58
    .line 59
    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 60
    .line 61
    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 62
    .line 63
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    return-object p1
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p1, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    .line 10
    .line 11
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p1, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 10
    .line 11
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p1, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 10
    .line 11
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 8
    .line 9
    iput-boolean v1, p1, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 12
    .line 13
    iget v0, p1, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 14
    .line 15
    add-int/2addr v0, p2

    .line 16
    iput v0, p1, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 17
    .line 18
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p1, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 11
    .line 12
    return-void
.end method

.method public onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$6;->dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method public onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$6;->dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method
