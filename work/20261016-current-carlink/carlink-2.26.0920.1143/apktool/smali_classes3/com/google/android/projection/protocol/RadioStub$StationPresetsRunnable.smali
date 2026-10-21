.class Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;
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
    name = "StationPresetsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/protocol/RadioStub;


# direct methods
.method private constructor <init>(Lcom/google/android/projection/protocol/RadioStub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/protocol/RadioStub;Lcom/google/android/projection/protocol/RadioStub$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;-><init>(Lcom/google/android/projection/protocol/RadioStub;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$300(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/projection/protocol/Radio$RadioState;->stationPresetLists:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$400(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/projection/protocol/RadioStub;->access$300(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/google/android/projection/protocol/Radio$RadioState;->stationPresetLists:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendStationPresetsResponse(Ljava/util/List;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$500(Lcom/google/android/projection/protocol/RadioStub;)Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v1, 0x2710

    .line 35
    .line 36
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
