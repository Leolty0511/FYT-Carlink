.class Lcom/android/internal/os/WebViewZygoteInit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;,
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViewZygoteInit"

.field private static sServer:Lcom/android/internal/os/ZygoteServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p0, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;-><init>(Lcom/android/internal/os/WebViewZygoteInit$1;)V

    .line 5
    .line 6
    .line 7
    sput-object p0, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    :try_start_0
    invoke-static {p0, p0}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    sget-object p0, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    .line 14
    .line 15
    const-string/jumbo v0, "webview_zygote"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/internal/os/ZygoteServer;->registerServerSocket(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    .line 22
    .line 23
    const-string v0, ","

    .line 24
    .line 25
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    sget-object v0, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 38
    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string v0, "WebViewZygoteInit"

    .line 50
    .line 51
    const-string v1, "Fatal exception:"

    .line 52
    .line 53
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :goto_0
    sget-object v0, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :catch_1
    move-exception p0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    const-string v1, "Failed to setpgid(0,0)"

    .line 67
    .line 68
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method
