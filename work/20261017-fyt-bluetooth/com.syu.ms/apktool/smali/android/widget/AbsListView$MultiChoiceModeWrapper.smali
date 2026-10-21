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

.field public final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 3
    invoke-virtual {p1}, Landroid/widget/AbsListView;->clearChoices()V

    .line 4
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 5
    invoke-virtual {p1}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 6
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7
    iget-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2
    iget-object p2, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-void
.end method
