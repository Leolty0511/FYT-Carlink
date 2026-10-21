.class Lcom/android/internal/os/HandlerCaller$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/HandlerCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/HandlerCaller;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller$MyHandler;->this$0:Lcom/android/internal/os/HandlerCaller;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller$MyHandler;->this$0:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, v0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/os/HandlerCaller$Callback;->executeMessage(Landroid/os/Message;)V

    return-void
.end method
