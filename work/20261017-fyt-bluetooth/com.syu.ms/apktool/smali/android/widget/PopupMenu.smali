.class public Landroid/widget/PopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/c$a;
.implements Lcom/android/internal/view/menu/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupMenu$OnMenuItemClickListener;,
        Landroid/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private mMenu:Lcom/android/internal/view/menu/c;

.field private mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Lcom/android/internal/view/menu/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/android/internal/view/menu/c;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/c;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/c;->H(Lcom/android/internal/view/menu/c$a;)V

    .line 6
    iput-object p2, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/android/internal/view/menu/e;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/internal/view/menu/e;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/e;

    .line 8
    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/e;->q(I)V

    .line 9
    iget-object p1, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/e;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/e;->o(Lcom/android/internal/view/menu/f$a;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/e;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/e;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->j()V

    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/PopupMenu$1;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu$1;-><init>(Landroid/widget/PopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/c;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/c;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/PopupMenu;->mDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Landroid/widget/PopupMenu$OnDismissListener;->onDismiss(Landroid/widget/PopupMenu;)V

    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/h;)V
    .locals 0

    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/c;)V
    .locals 0

    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/c;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/e;

    iget-object v2, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3}, Lcom/android/internal/view/menu/e;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->r()V

    return v1
.end method

.method public setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/PopupMenu;->mDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/e;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->r()V

    return-void
.end method
