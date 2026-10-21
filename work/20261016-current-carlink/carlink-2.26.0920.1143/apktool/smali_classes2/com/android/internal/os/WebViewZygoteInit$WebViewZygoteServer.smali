.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;
.super Lcom/android/internal/os/ZygoteServer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewZygoteServer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/os/WebViewZygoteInit$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;-><init>()V

    return-void
.end method


# virtual methods
.method public createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1

    new-instance v0, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method
