.class public Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 9
    .line 10
    new-instance p1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    .line 4
    .line 5
    if-eq v1, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$700(Lcom/android/internal/app/WindowDecorActionBar;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/internal/app/WindowDecorActionBar;->access$800(Lcom/android/internal/app/WindowDecorActionBar;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/WindowDecorActionBar;->access$900(ZZZ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 26
    .line 27
    iput-object p0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 35
    .line 36
    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->closeMode()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/android/internal/app/WindowDecorActionBar;->access$1100(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/16 v2, 0x20

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/internal/app/WindowDecorActionBar;->access$600(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 78
    .line 79
    iget-boolean v2, v2, Lcom/android/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 85
    .line 86
    iput-object v0, v1, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    .line 87
    .line 88
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v2, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    .line 27
    .line 28
    .line 29
    return v1
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
