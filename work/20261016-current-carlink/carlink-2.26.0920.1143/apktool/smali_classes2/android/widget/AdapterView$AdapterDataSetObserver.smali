.class Landroid/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Landroid/widget/AdapterView;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 5
    .line 6
    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7
    .line 8
    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 37
    .line 38
    iget v2, v1, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    iget v2, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 43
    .line 44
    if-lez v2, :cond_0

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/widget/AdapterView;->access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/widget/AdapterView;->access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 25
    .line 26
    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 27
    .line 28
    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    iput v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 35
    .line 36
    const-wide/high16 v3, -0x8000000000000000L

    .line 37
    .line 38
    iput-wide v3, v0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 39
    .line 40
    iput v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 41
    .line 42
    iput-wide v3, v0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 43
    .line 44
    iput-boolean v1, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
