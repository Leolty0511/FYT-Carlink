.class Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/RadioStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanRunnable"
.end annotation


# instance fields
.field private mRadioId:I

.field private mUp:Z

.field final synthetic this$0:Lcom/google/android/projection/protocol/RadioStub;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/RadioStub;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->mRadioId:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->mUp:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->mRadioId:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->mUp:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/projection/protocol/RadioStub;->access$600(Lcom/google/android/projection/protocol/RadioStub;IZZ)Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/projection/protocol/RadioStub;->access$200(Lcom/google/android/projection/protocol/RadioStub;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/android/projection/protocol/RadioStub;->access$300(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v3, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->mRadioId:I

    .line 28
    .line 29
    iput v3, v2, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/android/projection/protocol/RadioStub;->access$300(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v0, v2, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$400(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v2, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->mRadioId:I

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 48
    .line 49
    invoke-static {v3}, Lcom/google/android/projection/protocol/RadioStub;->access$300(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v3, v3, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 54
    .line 55
    invoke-interface {v0, v2, v3}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    .line 56
    .line 57
    .line 58
    monitor-exit v1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v0

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$500(Lcom/google/android/projection/protocol/RadioStub;)Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-wide/16 v1, 0x7d0

    .line 70
    .line 71
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method
