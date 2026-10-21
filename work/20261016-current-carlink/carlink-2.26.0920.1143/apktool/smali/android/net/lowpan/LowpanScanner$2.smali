.class Landroid/net/lowpan/LowpanScanner$2;
.super Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startEnergyScan()V
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

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/net/lowpan/LowpanScanner$Callback;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/net/lowpan/LowpanScanner$2;->lambda$onEnergyScanResult$0(Landroid/net/lowpan/LowpanScanner$Callback;II)V

    return-void
.end method

.method public static synthetic b(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0

    invoke-static {p0}, Landroid/net/lowpan/LowpanScanner$2;->lambda$onEnergyScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V

    return-void
.end method

.method private static synthetic lambda$onEnergyScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method

.method private static synthetic lambda$onEnergyScanResult$0(Landroid/net/lowpan/LowpanScanner$Callback;II)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/net/lowpan/LowpanEnergyScanResult;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/net/lowpan/LowpanEnergyScanResult;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanEnergyScanResult;->setChannel(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroid/net/lowpan/LowpanEnergyScanResult;->setMaxRssi(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanScanner$Callback;->onEnergyScanResult(Landroid/net/lowpan/LowpanEnergyScanResult;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public onEnergyScanFinished()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/lowpan/LowpanScanner;->access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v2, Landroid/net/lowpan/h;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, v0, v3}, Landroid/net/lowpan/h;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v2}, Landroid/net/lowpan/h;->run()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public onEnergyScanResult(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/lowpan/LowpanScanner;->access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v2, Landroid/net/lowpan/i;

    .line 17
    .line 18
    invoke-direct {v2, v0, p1, p2}, Landroid/net/lowpan/i;-><init>(Landroid/net/lowpan/LowpanScanner$Callback;II)V

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v2}, Landroid/net/lowpan/i;->run()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
