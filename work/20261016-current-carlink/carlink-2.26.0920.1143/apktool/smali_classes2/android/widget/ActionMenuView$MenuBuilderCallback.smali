.class Landroid/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/ActionMenuView;->access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/widget/ActionMenuView;->access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p2}, Landroid/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/ActionMenuView;->access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/widget/ActionMenuView;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/widget/ActionMenuView;->access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
