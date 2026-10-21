.class Landroid/widget/PopupMenu$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/widget/PopupMenu;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroid/widget/PopupMenu;->access$000(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->k()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method
