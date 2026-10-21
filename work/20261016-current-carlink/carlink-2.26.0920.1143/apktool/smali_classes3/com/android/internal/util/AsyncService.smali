.class public abstract Lcom/android/internal/util/AsyncService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncService$AsyncServiceInfo;
    }
.end annotation


# static fields
.field public static final CMD_ASYNC_SERVICE_DESTROY:I = 0x1000000

.field public static final CMD_ASYNC_SERVICE_ON_START_INTENT:I = 0xffffff

.field protected static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AsyncService"


# instance fields
.field mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

.field mHandler:Landroid/os/Handler;

.field protected mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createHandler()Lcom/android/internal/util/AsyncService$AsyncServiceInfo;
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/android/internal/util/AsyncService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/util/AsyncService;->createHandler()Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/internal/util/AsyncService$AsyncServiceInfo;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v0, Landroid/os/Messenger;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/internal/util/AsyncService;->mMessenger:Landroid/os/Messenger;

    .line 22
    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const-string v0, "AsyncService"

    .line 2
    .line 3
    const-string v1, "onDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/high16 v1, 0x1000000

    .line 15
    .line 16
    iput v1, v0, Landroid/os/Message;->what:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    const-string v0, "AsyncService"

    .line 2
    .line 3
    const-string v1, "onStartCommand"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0xffffff

    .line 15
    .line 16
    .line 17
    iput v1, v0, Landroid/os/Message;->what:I

    .line 18
    .line 19
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 22
    .line 23
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/internal/util/AsyncService;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/internal/util/AsyncService;->mAsyncServiceInfo:Lcom/android/internal/util/AsyncService$AsyncServiceInfo;

    .line 31
    .line 32
    iget p1, p1, Lcom/android/internal/util/AsyncService$AsyncServiceInfo;->mRestartFlags:I

    .line 33
    .line 34
    return p1
.end method
