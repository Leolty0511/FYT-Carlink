.class final Landroid/app/ContextImpl$39;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 2

    const-string v0, "ethernet"

    .line 1
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/net/ethernet/IEthernetManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ethernet/IEthernetManager;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/net/ethernet/EthernetManager;

    iget-object p1, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/net/ethernet/EthernetManager;-><init>(Landroid/net/ethernet/IEthernetManager;Landroid/os/Handler;)V

    return-object v1
.end method
