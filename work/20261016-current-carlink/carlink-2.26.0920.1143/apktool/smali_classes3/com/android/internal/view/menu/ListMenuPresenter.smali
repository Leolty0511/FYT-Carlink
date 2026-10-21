.class public Lcom/android/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 6
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/view/menu/ListMenuPresenter;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return p0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 13
    .line 14
    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method public getItemIndexOffset()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    const v1, 0x109005e

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 43
    .line 44
    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    .line 35
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p2, p3}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuPresenter;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "android:menu:list"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const-string v1, "android:menu:list"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mId:I

    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
