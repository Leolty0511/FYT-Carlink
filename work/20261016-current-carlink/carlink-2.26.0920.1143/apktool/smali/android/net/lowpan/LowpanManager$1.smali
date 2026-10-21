.class Landroid/net/lowpan/LowpanManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanManager;

.field final synthetic val$ifaceName:Ljava/lang/String;

.field final synthetic val$ifaceService:Landroid/net/lowpan/ILowpanInterface;


# direct methods
.method public constructor <init>(Landroid/net/lowpan/LowpanManager;Ljava/lang/String;Landroid/net/lowpan/ILowpanInterface;)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceService:Landroid/net/lowpan/ILowpanInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/net/lowpan/LowpanInterface;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/net/lowpan/LowpanInterface;->getService()Landroid/net/lowpan/ILowpanInterface;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceService:Landroid/net/lowpan/ILowpanInterface;

    .line 29
    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$1;->this$0:Landroid/net/lowpan/LowpanManager;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/net/lowpan/LowpanManager;->access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager$1;->val$ifaceName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v1
.end method
