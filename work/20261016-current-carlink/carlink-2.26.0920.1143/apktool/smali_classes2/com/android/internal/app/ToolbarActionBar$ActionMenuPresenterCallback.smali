.class final Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/android/internal/app/ToolbarActionBar;->access$400(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 39
    .line 40
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method
