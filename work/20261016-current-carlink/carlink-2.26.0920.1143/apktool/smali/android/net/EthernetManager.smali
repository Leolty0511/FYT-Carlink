.class public Landroid/net/EthernetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetManager$Listener;
    }
.end annotation


# static fields
.field private static final MSG_AVAILABILITY_CHANGED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/EthernetManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IEthernetManager;

.field private final mServiceListener:Landroid/net/IEthernetServiceListener$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/net/EthernetManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/net/EthernetManager$1;-><init>(Landroid/net/EthernetManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroid/net/EthernetManager$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroid/net/EthernetManager$2;-><init>(Landroid/net/EthernetManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    .line 24
    .line 25
    iput-object p1, p0, Landroid/net/EthernetManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic access$000(Landroid/net/EthernetManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/net/EthernetManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public addListener(Landroid/net/EthernetManager$Listener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 18
    .line 19
    iget-object v0, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/net/IEthernetManager;->addListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string/jumbo v0, "listener must not be null"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public getConfiguration()Landroid/net/IpConfiguration;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/IEthernetManager;->getConfiguration()Landroid/net/IpConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/IEthernetManager;->isAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
.end method

.method public removeListener(Landroid/net/EthernetManager$Listener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/net/IEthernetManager;->removeListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string/jumbo v0, "listener must not be null"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->setConfiguration(Landroid/net/IpConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1
.end method
