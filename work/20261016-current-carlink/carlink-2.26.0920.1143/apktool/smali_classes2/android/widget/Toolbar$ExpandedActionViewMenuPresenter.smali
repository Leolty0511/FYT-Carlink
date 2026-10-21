.class Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 4
    .line 5
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroid/view/CollapsibleActionView;

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 15
    .line 16
    iget-object v0, p1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/widget/Toolbar;->access$300(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 39
    .line 40
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p2, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/Toolbar;->access$200(Landroid/widget/Toolbar;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/widget/Toolbar;->access$300(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Landroid/widget/Toolbar;->access$300(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 34
    .line 35
    iput-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 36
    .line 37
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 38
    .line 39
    iget-object p1, p1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/widget/Toolbar;->access$400(Landroid/widget/Toolbar;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    and-int/lit8 v0, v0, 0x70

    .line 60
    .line 61
    const v1, 0x800003

    .line 62
    .line 63
    .line 64
    or-int/2addr v0, v1

    .line 65
    iput v0, p1, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    iput v0, p1, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 69
    .line 70
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 71
    .line 72
    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 78
    .line 79
    iget-object v0, p1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x1

    .line 95
    invoke-virtual {p2, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    .line 99
    .line 100
    iget-object p2, p2, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 101
    .line 102
    instance-of v0, p2, Landroid/view/CollapsibleActionView;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    check-cast p2, Landroid/view/CollapsibleActionView;

    .line 107
    .line 108
    invoke-interface {p2}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 109
    .line 110
    .line 111
    :cond_2
    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 13
    .line 14
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    move v1, v0

    .line 15
    :goto_0
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 35
    .line 36
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method
