.class Landroid/net/lowpan/LowpanScanner$1;
.super Landroid/net/lowpan/ILowpanNetScanCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startNetScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanScanner;


# direct methods
.method public constructor <init>(Landroid/net/lowpan/LowpanScanner;)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanScanner$1;->lambda$onNetScanBeacon$0(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method

.method public static synthetic b(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0

    invoke-static {p0}, Landroid/net/lowpan/LowpanScanner$1;->lambda$onNetScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V

    return-void
.end method

.method private static synthetic lambda$onNetScanBeacon$0(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanScanner$Callback;->onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method

.method private static synthetic lambda$onNetScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method


# virtual methods
.method public onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/net/lowpan/LowpanScanner;->access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Landroid/net/lowpan/a;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-direct {v0, v1, p1, v3}, Landroid/net/lowpan/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/net/lowpan/a;->run()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public onNetScanFinished()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/net/lowpan/LowpanScanner;->access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Landroid/net/lowpan/h;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v0, v1, v3}, Landroid/net/lowpan/h;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/net/lowpan/h;->run()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v1
.end method
