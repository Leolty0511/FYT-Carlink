.class Lcom/android/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const v3, 0x102002c

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$100(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    move-object v0, v7

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iput-object v7, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$300(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
