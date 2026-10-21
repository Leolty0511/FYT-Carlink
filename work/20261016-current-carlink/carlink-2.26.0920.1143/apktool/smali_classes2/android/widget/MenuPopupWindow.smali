.class public Landroid/widget/MenuPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# instance fields
.field private mHoverListener:Landroid/widget/MenuItemHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroid/widget/MenuItemHoverListener;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroid/widget/MenuItemHoverListener;->onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public setHoverListener(Landroid/widget/MenuItemHoverListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MenuPopupWindow;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    return-void
.end method
