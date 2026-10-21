.class Landroid/widget/AbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/AbsListView;->clearChoices()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/AbsListView;->requestLayout()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    move v5, p5

    .line 7
    invoke-interface/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-void
.end method
