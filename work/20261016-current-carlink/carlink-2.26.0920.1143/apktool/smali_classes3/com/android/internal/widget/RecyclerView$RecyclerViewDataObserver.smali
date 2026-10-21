.class Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;
.super Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeInserted(II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeMoved(III)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public triggerUpdateProcessor()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lcom/android/internal/widget/RecyclerView;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
