.class Landroid/view/WindowId$FocusObserver$H;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowId$FocusObserver;


# direct methods
.method public constructor <init>(Landroid/view/WindowId$FocusObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Landroid/view/WindowId;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    .line 24
    .line 25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Landroid/view/WindowId;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
