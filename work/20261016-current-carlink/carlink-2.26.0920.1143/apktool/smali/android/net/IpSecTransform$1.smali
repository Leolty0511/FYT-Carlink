.class Landroid/net/IpSecTransform$1;
.super Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/IpSecTransform;


# direct methods
.method public constructor <init>(Landroid/net/IpSecTransform;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 9
    .line 10
    invoke-static {v1, p1}, Landroid/net/IpSecTransform;->access$102(Landroid/net/IpSecTransform;I)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public onStarted()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2}, Landroid/net/IpSecTransform;->access$102(Landroid/net/IpSecTransform;I)I

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public onStopped()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-static {v1, v2}, Landroid/net/IpSecTransform;->access$102(Landroid/net/IpSecTransform;I)I

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method
