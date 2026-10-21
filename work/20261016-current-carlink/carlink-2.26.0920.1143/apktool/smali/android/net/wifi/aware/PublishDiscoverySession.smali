.class public Landroid/net/wifi/aware/PublishDiscoverySession;
.super Landroid/net/wifi/aware/DiscoverySession;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PublishDiscoverySession"


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/aware/DiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    return-void
.end method


# virtual methods
.method public updatePublish(Landroid/net/wifi/aware/PublishConfig;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 2
    .line 3
    const-string v1, "PublishDiscoverySession"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p1, "updatePublish: called on terminated session"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string/jumbo p1, "updatePublish: called post GC on WifiAwareManager"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 32
    .line 33
    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, p1}, Landroid/net/wifi/aware/WifiAwareManager;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
