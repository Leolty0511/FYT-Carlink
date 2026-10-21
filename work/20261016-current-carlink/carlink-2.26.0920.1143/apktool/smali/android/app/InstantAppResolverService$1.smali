.class Landroid/app/InstantAppResolverService$1;
.super Landroid/app/IInstantAppResolver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/InstantAppResolverService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/InstantAppResolverService;


# direct methods
.method public constructor <init>(Landroid/app/InstantAppResolverService;)V
    .locals 0

    iput-object p1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    invoke-direct {p0}, Landroid/app/IInstantAppResolver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Landroid/os/IRemoteCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/InstantAppResolverService;->access$000()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "["

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "] Phase2 called; posting"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "PackageManager"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 38
    .line 39
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    .line 44
    .line 45
    iget-object p1, p1, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    const/4 p2, 0x2

    .line 48
    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public getInstantAppResolveInfoList([ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/InstantAppResolverService;->access$000()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "["

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "] Phase1 called; posting"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "PackageManager"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 38
    .line 39
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object p1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    .line 42
    .line 43
    iget-object p1, p1, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    const/4 p4, 0x0

    .line 47
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
