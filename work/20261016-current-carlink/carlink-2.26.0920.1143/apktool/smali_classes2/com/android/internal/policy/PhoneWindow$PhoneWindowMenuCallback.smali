.class public final Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneWindowMenuCallback"
.end annotation


# static fields
.field private static final FEATURE_ID:I = 0x6


# instance fields
.field private mShowDialogForSubmenu:Z

.field private mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private final mWindow:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 5
    .line 6
    return-void
.end method

.method private onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p2, :cond_3

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 33
    .line 34
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 35
    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    invoke-static {p2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mShowDialogForSubmenu:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    return v0
.end method

.method public setShowDialogForSubmenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mShowDialogForSubmenu:Z

    return-void
.end method
