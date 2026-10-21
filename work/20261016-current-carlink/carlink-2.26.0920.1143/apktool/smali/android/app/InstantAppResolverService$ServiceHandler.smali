.class final Landroid/app/InstantAppResolverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/InstantAppResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_GET_INSTANT_APP_INTENT_FILTER:I = 0x2

.field public static final MSG_GET_INSTANT_APP_RESOLVE_INFO:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/app/InstantAppResolverService;


# direct methods
.method public constructor <init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

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
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroid/os/IRemoteCallback;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, [I

    .line 20
    .line 21
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    .line 30
    .line 31
    new-instance v4, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    invoke-direct {v4, v5, v0}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;-><init>(ILandroid/os/IRemoteCallback;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1, v2, p1, v4}, Landroid/app/InstantAppResolverService;->_onGetInstantAppIntentFilter([ILjava/lang/String;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "Unknown message: "

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Landroid/os/IRemoteCallback;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, [I

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 70
    .line 71
    iget-object v3, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    .line 72
    .line 73
    new-instance v4, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    .line 74
    .line 75
    invoke-direct {v4, p1, v1}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;-><init>(ILandroid/os/IRemoteCallback;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v2, v0, v4}, Landroid/app/InstantAppResolverService;->_onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method
