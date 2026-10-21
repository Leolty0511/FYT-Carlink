.class Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup$3;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$menu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup$3;Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    iput-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iput-object p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    iput-object p4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$502(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$nextInfo:Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->this$1:Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$502(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    .line 37
    .line 38
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;->val$item:Landroid/view/MenuItem;

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
