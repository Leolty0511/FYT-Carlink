.class public final Landroid/net/ConnectivityThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityThread$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "ConnectivityThread"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000()Landroid/net/ConnectivityThread;
    .locals 1

    invoke-static {}, Landroid/net/ConnectivityThread;->createInstance()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method private static createInstance()Landroid/net/ConnectivityThread;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ConnectivityThread;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/ConnectivityThread;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static get()Landroid/net/ConnectivityThread;
    .locals 1

    invoke-static {}, Landroid/net/ConnectivityThread$Singleton;->access$100()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceLooper()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/net/ConnectivityThread$Singleton;->access$100()Landroid/net/ConnectivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
