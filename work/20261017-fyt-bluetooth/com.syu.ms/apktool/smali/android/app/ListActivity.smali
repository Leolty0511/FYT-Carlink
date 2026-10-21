.class public Landroid/app/ListActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field public mList:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    .line 4
    new-instance v0, Landroid/app/ListActivity$1;

    invoke-direct {v0, p0}, Landroid/app/ListActivity$1;-><init>(Landroid/app/ListActivity;)V

    iput-object v0, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Landroid/app/ListActivity$2;

    invoke-direct {v0, p0}, Landroid/app/ListActivity$2;-><init>(Landroid/app/ListActivity;)V

    iput-object v0, p0, Landroid/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1090054

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    .line 2
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const v0, 0x1020004

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget-boolean v0, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/app/ListActivity;->mFinishedStart:Z

    return-void

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/app/ListActivity;->ensureList()V

    .line 3
    iput-object p1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 4
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSelection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
