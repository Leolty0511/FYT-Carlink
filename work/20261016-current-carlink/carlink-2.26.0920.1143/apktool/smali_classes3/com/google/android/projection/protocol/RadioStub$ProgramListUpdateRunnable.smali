.class Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;
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
    name = "ProgramListUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/protocol/RadioStub;


# direct methods
.method private constructor <init>(Lcom/google/android/projection/protocol/RadioStub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/protocol/RadioStub;Lcom/google/android/projection/protocol/RadioStub$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;-><init>(Lcom/google/android/projection/protocol/RadioStub;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$000(Lcom/google/android/projection/protocol/RadioStub;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/google/android/projection/protocol/RadioStub;->access$000(Lcom/google/android/projection/protocol/RadioStub;)Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/android/projection/protocol/RadioStub;->access$000(Lcom/google/android/projection/protocol/RadioStub;)Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/google/android/projection/protocol/RadioStub;->access$000(Lcom/google/android/projection/protocol/RadioStub;)Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 60
    .line 61
    invoke-static {v4}, Lcom/google/android/projection/protocol/RadioStub;->access$100(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iput-object v4, v3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->metaData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$200(Lcom/google/android/projection/protocol/RadioStub;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    monitor-enter v1

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$400(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/google/android/projection/protocol/RadioStub;->access$300(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget v2, v2, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 92
    .line 93
    iget-object v3, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/google/android/projection/protocol/RadioStub;->access$300(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v3, v3, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 100
    .line 101
    invoke-interface {v0, v2, v3}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    .line 102
    .line 103
    .line 104
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;->this$0:Lcom/google/android/projection/protocol/RadioStub;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/google/android/projection/protocol/RadioStub;->access$500(Lcom/google/android/projection/protocol/RadioStub;)Landroid/os/Handler;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-wide/16 v1, 0x4e20

    .line 112
    .line 113
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw v0

    .line 120
    :catchall_1
    move-exception v1

    .line 121
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    throw v1
.end method
