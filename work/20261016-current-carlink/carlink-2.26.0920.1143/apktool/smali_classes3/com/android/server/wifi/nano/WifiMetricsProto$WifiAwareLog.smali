.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiAwareLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    }
.end annotation


# static fields
.field public static final ALREADY_ENABLED:I = 0xb

.field public static final FOLLOWUP_TX_QUEUE_FULL:I = 0xc

.field public static final INTERNAL_FAILURE:I = 0x2

.field public static final INVALID_ARGS:I = 0x6

.field public static final INVALID_NDP_ID:I = 0x8

.field public static final INVALID_PEER_ID:I = 0x7

.field public static final INVALID_SESSION_ID:I = 0x4

.field public static final NAN_NOT_ALLOWED:I = 0x9

.field public static final NO_OTA_ACK:I = 0xa

.field public static final NO_RESOURCES_AVAILABLE:I = 0x5

.field public static final PROTOCOL_FAILURE:I = 0x3

.field public static final SUCCESS:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field public static final UNKNOWN_HAL_STATUS:I = 0xe

.field public static final UNSUPPORTED_CONCURRENCY_NAN_DISABLED:I = 0xd

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;


# instance fields
.field public availableTimeMs:J

.field public enabledTimeMs:J

.field public histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public maxConcurrentAttachSessionsInApp:I

.field public maxConcurrentDiscoverySessionsInApp:I

.field public maxConcurrentDiscoverySessionsInSystem:I

.field public maxConcurrentNdiInApp:I

.field public maxConcurrentNdiInSystem:I

.field public maxConcurrentNdpInApp:I

.field public maxConcurrentNdpInSystem:I

.field public maxConcurrentNdpPerNdi:I

.field public maxConcurrentPublishInApp:I

.field public maxConcurrentPublishInSystem:I

.field public maxConcurrentSecureNdpInApp:I

.field public maxConcurrentSecureNdpInSystem:I

.field public maxConcurrentSubscribeInApp:I

.field public maxConcurrentSubscribeInSystem:I

.field public ndpCreationTimeMsMax:J

.field public ndpCreationTimeMsMin:J

.field public ndpCreationTimeMsNumSamples:J

.field public ndpCreationTimeMsSum:J

.field public ndpCreationTimeMsSumOfSq:J

.field public numApps:I

.field public numAppsUsingIdentityCallback:I

.field public numAppsWithDiscoverySessionFailureOutOfResources:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 14
    .line 15
    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 23
    .line 24
    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    .line 23
    .line 24
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 37
    .line 38
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 45
    .line 46
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 51
    .line 52
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    .line 53
    .line 54
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    .line 55
    .line 56
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    .line 57
    .line 58
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    .line 59
    .line 60
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    .line 61
    .line 62
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    .line 63
    .line 64
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    .line 65
    .line 66
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 71
    .line 72
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 77
    .line 78
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 83
    .line 84
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 95
    .line 96
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 101
    .line 102
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 107
    .line 108
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 113
    .line 114
    const-wide/16 v0, 0x0

    .line 115
    .line 116
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    .line 117
    .line 118
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    .line 119
    .line 120
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    .line 121
    .line 122
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    .line 123
    .line 124
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    .line 125
    .line 126
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    .line 127
    .line 128
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    .line 129
    .line 130
    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    .line 132
    .line 133
    return-object p0
.end method

.method public computeSerializedSize()I
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    array-length v1, v1

    .line 41
    if-lez v1, :cond_4

    .line 42
    .line 43
    move v1, v2

    .line 44
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 45
    .line 46
    array-length v4, v3

    .line 47
    if-ge v1, v4, :cond_4

    .line 48
    .line 49
    aget-object v3, v3, v1

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/2addr v0, v3

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    const/4 v3, 0x5

    .line 67
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/2addr v0, v1

    .line 72
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    const/4 v3, 0x6

    .line 77
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    const/4 v3, 0x7

    .line 87
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_7
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    .line 93
    .line 94
    if-eqz v1, :cond_8

    .line 95
    .line 96
    const/16 v3, 0x8

    .line 97
    .line 98
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    add-int/2addr v0, v1

    .line 103
    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    .line 104
    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    const/16 v3, 0x9

    .line 108
    .line 109
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    add-int/2addr v0, v1

    .line 114
    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    .line 115
    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    const/16 v3, 0xa

    .line 119
    .line 120
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    add-int/2addr v0, v1

    .line 125
    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 126
    .line 127
    if-eqz v1, :cond_c

    .line 128
    .line 129
    array-length v1, v1

    .line 130
    if-lez v1, :cond_c

    .line 131
    .line 132
    move v1, v2

    .line 133
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 134
    .line 135
    array-length v4, v3

    .line 136
    if-ge v1, v4, :cond_c

    .line 137
    .line 138
    aget-object v3, v3, v1

    .line 139
    .line 140
    if-eqz v3, :cond_b

    .line 141
    .line 142
    const/16 v4, 0xb

    .line 143
    .line 144
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    add-int/2addr v0, v3

    .line 149
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 153
    .line 154
    if-eqz v1, :cond_e

    .line 155
    .line 156
    array-length v1, v1

    .line 157
    if-lez v1, :cond_e

    .line 158
    .line 159
    move v1, v2

    .line 160
    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 161
    .line 162
    array-length v4, v3

    .line 163
    if-ge v1, v4, :cond_e

    .line 164
    .line 165
    aget-object v3, v3, v1

    .line 166
    .line 167
    if-eqz v3, :cond_d

    .line 168
    .line 169
    const/16 v4, 0xc

    .line 170
    .line 171
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    add-int/2addr v0, v3

    .line 176
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    .line 180
    .line 181
    if-eqz v1, :cond_f

    .line 182
    .line 183
    const/16 v3, 0xd

    .line 184
    .line 185
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    add-int/2addr v0, v1

    .line 190
    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 191
    .line 192
    if-eqz v1, :cond_11

    .line 193
    .line 194
    array-length v1, v1

    .line 195
    if-lez v1, :cond_11

    .line 196
    .line 197
    move v1, v2

    .line 198
    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 199
    .line 200
    array-length v4, v3

    .line 201
    if-ge v1, v4, :cond_11

    .line 202
    .line 203
    aget-object v3, v3, v1

    .line 204
    .line 205
    if-eqz v3, :cond_10

    .line 206
    .line 207
    const/16 v4, 0xe

    .line 208
    .line 209
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    add-int/2addr v0, v3

    .line 214
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_11
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 218
    .line 219
    if-eqz v1, :cond_13

    .line 220
    .line 221
    array-length v1, v1

    .line 222
    if-lez v1, :cond_13

    .line 223
    .line 224
    move v1, v2

    .line 225
    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 226
    .line 227
    array-length v4, v3

    .line 228
    if-ge v1, v4, :cond_13

    .line 229
    .line 230
    aget-object v3, v3, v1

    .line 231
    .line 232
    if-eqz v3, :cond_12

    .line 233
    .line 234
    const/16 v4, 0xf

    .line 235
    .line 236
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    add-int/2addr v0, v3

    .line 241
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_13
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    .line 245
    .line 246
    if-eqz v1, :cond_14

    .line 247
    .line 248
    const/16 v3, 0x13

    .line 249
    .line 250
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    add-int/2addr v0, v1

    .line 255
    :cond_14
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    .line 256
    .line 257
    if-eqz v1, :cond_15

    .line 258
    .line 259
    const/16 v3, 0x14

    .line 260
    .line 261
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    add-int/2addr v0, v1

    .line 266
    :cond_15
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    .line 267
    .line 268
    if-eqz v1, :cond_16

    .line 269
    .line 270
    const/16 v3, 0x15

    .line 271
    .line 272
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    add-int/2addr v0, v1

    .line 277
    :cond_16
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    .line 278
    .line 279
    if-eqz v1, :cond_17

    .line 280
    .line 281
    const/16 v3, 0x16

    .line 282
    .line 283
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    add-int/2addr v0, v1

    .line 288
    :cond_17
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    .line 289
    .line 290
    if-eqz v1, :cond_18

    .line 291
    .line 292
    const/16 v3, 0x17

    .line 293
    .line 294
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    add-int/2addr v0, v1

    .line 299
    :cond_18
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    .line 300
    .line 301
    if-eqz v1, :cond_19

    .line 302
    .line 303
    const/16 v3, 0x18

    .line 304
    .line 305
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    add-int/2addr v0, v1

    .line 310
    :cond_19
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    .line 311
    .line 312
    if-eqz v1, :cond_1a

    .line 313
    .line 314
    const/16 v3, 0x19

    .line 315
    .line 316
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    add-int/2addr v0, v1

    .line 321
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 322
    .line 323
    if-eqz v1, :cond_1c

    .line 324
    .line 325
    array-length v1, v1

    .line 326
    if-lez v1, :cond_1c

    .line 327
    .line 328
    move v1, v2

    .line 329
    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 330
    .line 331
    array-length v4, v3

    .line 332
    if-ge v1, v4, :cond_1c

    .line 333
    .line 334
    aget-object v3, v3, v1

    .line 335
    .line 336
    if-eqz v3, :cond_1b

    .line 337
    .line 338
    const/16 v4, 0x1a

    .line 339
    .line 340
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    add-int/2addr v3, v0

    .line 345
    move v0, v3

    .line 346
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 350
    .line 351
    if-eqz v1, :cond_1e

    .line 352
    .line 353
    array-length v1, v1

    .line 354
    if-lez v1, :cond_1e

    .line 355
    .line 356
    move v1, v2

    .line 357
    :goto_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 358
    .line 359
    array-length v4, v3

    .line 360
    if-ge v1, v4, :cond_1e

    .line 361
    .line 362
    aget-object v3, v3, v1

    .line 363
    .line 364
    if-eqz v3, :cond_1d

    .line 365
    .line 366
    const/16 v4, 0x1b

    .line 367
    .line 368
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    add-int/2addr v3, v0

    .line 373
    move v0, v3

    .line 374
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 378
    .line 379
    if-eqz v1, :cond_20

    .line 380
    .line 381
    array-length v1, v1

    .line 382
    if-lez v1, :cond_20

    .line 383
    .line 384
    move v1, v2

    .line 385
    :goto_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 386
    .line 387
    array-length v4, v3

    .line 388
    if-ge v1, v4, :cond_20

    .line 389
    .line 390
    aget-object v3, v3, v1

    .line 391
    .line 392
    if-eqz v3, :cond_1f

    .line 393
    .line 394
    const/16 v4, 0x1c

    .line 395
    .line 396
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    add-int/2addr v3, v0

    .line 401
    move v0, v3

    .line 402
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    .line 403
    .line 404
    goto :goto_7

    .line 405
    :cond_20
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 406
    .line 407
    if-eqz v1, :cond_22

    .line 408
    .line 409
    array-length v1, v1

    .line 410
    if-lez v1, :cond_22

    .line 411
    .line 412
    move v1, v2

    .line 413
    :goto_8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 414
    .line 415
    array-length v4, v3

    .line 416
    if-ge v1, v4, :cond_22

    .line 417
    .line 418
    aget-object v3, v3, v1

    .line 419
    .line 420
    if-eqz v3, :cond_21

    .line 421
    .line 422
    const/16 v4, 0x1d

    .line 423
    .line 424
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    add-int/2addr v3, v0

    .line 429
    move v0, v3

    .line 430
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_22
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 434
    .line 435
    if-eqz v1, :cond_24

    .line 436
    .line 437
    array-length v1, v1

    .line 438
    if-lez v1, :cond_24

    .line 439
    .line 440
    move v1, v2

    .line 441
    :goto_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 442
    .line 443
    array-length v4, v3

    .line 444
    if-ge v1, v4, :cond_24

    .line 445
    .line 446
    aget-object v3, v3, v1

    .line 447
    .line 448
    if-eqz v3, :cond_23

    .line 449
    .line 450
    const/16 v4, 0x1e

    .line 451
    .line 452
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    add-int/2addr v3, v0

    .line 457
    move v0, v3

    .line 458
    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 459
    .line 460
    goto :goto_9

    .line 461
    :cond_24
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 462
    .line 463
    if-eqz v1, :cond_26

    .line 464
    .line 465
    array-length v1, v1

    .line 466
    if-lez v1, :cond_26

    .line 467
    .line 468
    move v1, v2

    .line 469
    :goto_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 470
    .line 471
    array-length v4, v3

    .line 472
    if-ge v1, v4, :cond_26

    .line 473
    .line 474
    aget-object v3, v3, v1

    .line 475
    .line 476
    if-eqz v3, :cond_25

    .line 477
    .line 478
    const/16 v4, 0x1f

    .line 479
    .line 480
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    add-int/2addr v3, v0

    .line 485
    move v0, v3

    .line 486
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 487
    .line 488
    goto :goto_a

    .line 489
    :cond_26
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 490
    .line 491
    if-eqz v1, :cond_28

    .line 492
    .line 493
    array-length v1, v1

    .line 494
    if-lez v1, :cond_28

    .line 495
    .line 496
    move v1, v2

    .line 497
    :goto_b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 498
    .line 499
    array-length v4, v3

    .line 500
    if-ge v1, v4, :cond_28

    .line 501
    .line 502
    aget-object v3, v3, v1

    .line 503
    .line 504
    if-eqz v3, :cond_27

    .line 505
    .line 506
    const/16 v4, 0x20

    .line 507
    .line 508
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    add-int/2addr v0, v3

    .line 513
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 514
    .line 515
    goto :goto_b

    .line 516
    :cond_28
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 517
    .line 518
    if-eqz v1, :cond_2a

    .line 519
    .line 520
    array-length v1, v1

    .line 521
    if-lez v1, :cond_2a

    .line 522
    .line 523
    :goto_c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 524
    .line 525
    array-length v3, v1

    .line 526
    if-ge v2, v3, :cond_2a

    .line 527
    .line 528
    aget-object v1, v1, v2

    .line 529
    .line 530
    if-eqz v1, :cond_29

    .line 531
    .line 532
    const/16 v3, 0x21

    .line 533
    .line 534
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    add-int/2addr v0, v1

    .line 539
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_2a
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    .line 543
    .line 544
    const-wide/16 v3, 0x0

    .line 545
    .line 546
    cmp-long v5, v1, v3

    .line 547
    .line 548
    if-eqz v5, :cond_2b

    .line 549
    .line 550
    const/16 v5, 0x22

    .line 551
    .line 552
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    add-int/2addr v0, v1

    .line 557
    :cond_2b
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    .line 558
    .line 559
    cmp-long v5, v1, v3

    .line 560
    .line 561
    if-eqz v5, :cond_2c

    .line 562
    .line 563
    const/16 v5, 0x23

    .line 564
    .line 565
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    add-int/2addr v0, v1

    .line 570
    :cond_2c
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    .line 571
    .line 572
    cmp-long v5, v1, v3

    .line 573
    .line 574
    if-eqz v5, :cond_2d

    .line 575
    .line 576
    const/16 v5, 0x24

    .line 577
    .line 578
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    add-int/2addr v0, v1

    .line 583
    :cond_2d
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    .line 584
    .line 585
    cmp-long v5, v1, v3

    .line 586
    .line 587
    if-eqz v5, :cond_2e

    .line 588
    .line 589
    const/16 v5, 0x25

    .line 590
    .line 591
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    add-int/2addr v0, v1

    .line 596
    :cond_2e
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    .line 597
    .line 598
    cmp-long v5, v1, v3

    .line 599
    .line 600
    if-eqz v5, :cond_2f

    .line 601
    .line 602
    const/16 v5, 0x26

    .line 603
    .line 604
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    add-int/2addr v0, v1

    .line 609
    :cond_2f
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    .line 610
    .line 611
    cmp-long v5, v1, v3

    .line 612
    .line 613
    if-eqz v5, :cond_30

    .line 614
    .line 615
    const/16 v5, 0x27

    .line 616
    .line 617
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    add-int/2addr v0, v1

    .line 622
    :cond_30
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    .line 623
    .line 624
    cmp-long v3, v1, v3

    .line 625
    .line 626
    if-eqz v3, :cond_31

    .line 627
    .line 628
    const/16 v3, 0x28

    .line 629
    .line 630
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    add-int/2addr v0, v1

    .line 635
    :cond_31
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 5

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 3
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    goto :goto_0

    .line 5
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    goto :goto_0

    .line 6
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    goto :goto_0

    .line 7
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    goto :goto_0

    .line 8
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    goto :goto_0

    .line 9
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    goto :goto_0

    .line 10
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x10a

    .line 11
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 13
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_2

    .line 14
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 15
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 16
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 18
    :cond_3
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 20
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x102

    .line 21
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 22
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v2, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    array-length v3, v2

    :goto_3
    add-int/2addr v0, v3

    .line 23
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_5

    .line 24
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6

    .line 25
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 26
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 27
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 28
    :cond_6
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 30
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xfa

    .line 31
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 32
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v2, :cond_7

    move v3, v1

    goto :goto_5

    :cond_7
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    .line 33
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_8

    .line 34
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9

    .line 35
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 36
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 38
    :cond_9
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 40
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0xf2

    .line 41
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 42
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v2, :cond_a

    move v3, v1

    goto :goto_7

    :cond_a
    array-length v3, v2

    :goto_7
    add-int/2addr v0, v3

    .line 43
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_b

    .line 44
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_c

    .line 45
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 46
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 47
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 48
    :cond_c
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 49
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 50
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0xea

    .line 51
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 52
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v2, :cond_d

    move v3, v1

    goto :goto_9

    :cond_d
    array-length v3, v2

    :goto_9
    add-int/2addr v0, v3

    .line 53
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_e

    .line 54
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_f

    .line 55
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 56
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 57
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 58
    :cond_f
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 60
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0xe2

    .line 61
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 62
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v2, :cond_10

    move v3, v1

    goto :goto_b

    :cond_10
    array-length v3, v2

    :goto_b
    add-int/2addr v0, v3

    .line 63
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_11

    .line 64
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_12

    .line 65
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 66
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 67
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 68
    :cond_12
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 70
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xda

    .line 71
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 72
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v2, :cond_13

    move v3, v1

    goto :goto_d

    :cond_13
    array-length v3, v2

    :goto_d
    add-int/2addr v0, v3

    .line 73
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_14

    .line 74
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_15

    .line 75
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 76
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 77
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 78
    :cond_15
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 79
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 80
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0xd2

    .line 81
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 82
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v2, :cond_16

    move v3, v1

    goto :goto_f

    :cond_16
    array-length v3, v2

    :goto_f
    add-int/2addr v0, v3

    .line 83
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_17

    .line 84
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_10
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_18

    .line 85
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 86
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 87
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 88
    :cond_18
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 90
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_0

    .line 91
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    goto/16 :goto_0

    .line 92
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    goto/16 :goto_0

    .line 93
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    goto/16 :goto_0

    .line 94
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    goto/16 :goto_0

    .line 95
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    goto/16 :goto_0

    .line 96
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    goto/16 :goto_0

    .line 97
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x7a

    .line 98
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 99
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v2, :cond_19

    move v3, v1

    goto :goto_11

    :cond_19
    array-length v3, v2

    :goto_11
    add-int/2addr v0, v3

    .line 100
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_1a

    .line 101
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_12
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1b

    .line 102
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 103
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 105
    :cond_1b
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 107
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x72

    .line 108
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 109
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v2, :cond_1c

    move v3, v1

    goto :goto_13

    :cond_1c
    array-length v3, v2

    :goto_13
    add-int/2addr v0, v3

    .line 110
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_1d

    .line 111
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    :goto_14
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1e

    .line 112
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 113
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 114
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 115
    :cond_1e
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 116
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 117
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_0

    .line 118
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0x62

    .line 119
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 120
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v2, :cond_1f

    move v3, v1

    goto :goto_15

    :cond_1f
    array-length v3, v2

    :goto_15
    add-int/2addr v0, v3

    .line 121
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_20

    .line 122
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    :goto_16
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_21

    .line 123
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 124
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 125
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 126
    :cond_21
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 127
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 128
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0x5a

    .line 129
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 130
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v2, :cond_22

    move v3, v1

    goto :goto_17

    :cond_22
    array-length v3, v2

    :goto_17
    add-int/2addr v0, v3

    .line 131
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_23

    .line 132
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    :goto_18
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_24

    .line 133
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 134
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 135
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 136
    :cond_24
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 137
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 138
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_0

    .line 139
    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    goto/16 :goto_0

    .line 140
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    goto/16 :goto_0

    .line 141
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    goto/16 :goto_0

    .line 142
    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    goto/16 :goto_0

    .line 143
    :sswitch_1f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    goto/16 :goto_0

    .line 144
    :sswitch_20
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    goto/16 :goto_0

    :sswitch_21
    const/16 v0, 0x22

    .line 145
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 146
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v2, :cond_25

    move v3, v1

    goto :goto_19

    :cond_25
    array-length v3, v2

    :goto_19
    add-int/2addr v0, v3

    .line 147
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_26

    .line 148
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    :goto_1a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_27

    .line 149
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 150
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 151
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 152
    :cond_27
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 153
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 154
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_0

    .line 155
    :sswitch_22
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    goto/16 :goto_0

    .line 156
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    goto/16 :goto_0

    .line 157
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    goto/16 :goto_0

    :sswitch_25
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_25
        0x8 -> :sswitch_24
        0x10 -> :sswitch_23
        0x18 -> :sswitch_22
        0x22 -> :sswitch_21
        0x28 -> :sswitch_20
        0x30 -> :sswitch_1f
        0x38 -> :sswitch_1e
        0x40 -> :sswitch_1d
        0x48 -> :sswitch_1c
        0x50 -> :sswitch_1b
        0x5a -> :sswitch_1a
        0x62 -> :sswitch_19
        0x68 -> :sswitch_18
        0x72 -> :sswitch_17
        0x7a -> :sswitch_16
        0x98 -> :sswitch_15
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_13
        0xb0 -> :sswitch_12
        0xb8 -> :sswitch_11
        0xc0 -> :sswitch_10
        0xc8 -> :sswitch_f
        0xd2 -> :sswitch_e
        0xda -> :sswitch_d
        0xe2 -> :sswitch_c
        0xea -> :sswitch_b
        0xf2 -> :sswitch_a
        0xfa -> :sswitch_9
        0x102 -> :sswitch_8
        0x10a -> :sswitch_7
        0x110 -> :sswitch_6
        0x118 -> :sswitch_5
        0x120 -> :sswitch_4
        0x128 -> :sswitch_3
        0x130 -> :sswitch_2
        0x138 -> :sswitch_1
        0x140 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    if-lez v0, :cond_4

    .line 32
    .line 33
    move v0, v1

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 35
    .line 36
    array-length v3, v2

    .line 37
    if-ge v0, v3, :cond_4

    .line 38
    .line 39
    aget-object v2, v2, v0

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    const/4 v2, 0x5

    .line 55
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    const/4 v2, 0x6

    .line 63
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 64
    .line 65
    .line 66
    :cond_6
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    const/4 v2, 0x7

    .line 71
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 72
    .line 73
    .line 74
    :cond_7
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    .line 75
    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    const/16 v2, 0x8

    .line 79
    .line 80
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 81
    .line 82
    .line 83
    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    .line 84
    .line 85
    if-eqz v0, :cond_9

    .line 86
    .line 87
    const/16 v2, 0x9

    .line 88
    .line 89
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 90
    .line 91
    .line 92
    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    .line 93
    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    const/16 v2, 0xa

    .line 97
    .line 98
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 99
    .line 100
    .line 101
    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 102
    .line 103
    if-eqz v0, :cond_c

    .line 104
    .line 105
    array-length v0, v0

    .line 106
    if-lez v0, :cond_c

    .line 107
    .line 108
    move v0, v1

    .line 109
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 110
    .line 111
    array-length v3, v2

    .line 112
    if-ge v0, v3, :cond_c

    .line 113
    .line 114
    aget-object v2, v2, v0

    .line 115
    .line 116
    if-eqz v2, :cond_b

    .line 117
    .line 118
    const/16 v3, 0xb

    .line 119
    .line 120
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 121
    .line 122
    .line 123
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 127
    .line 128
    if-eqz v0, :cond_e

    .line 129
    .line 130
    array-length v0, v0

    .line 131
    if-lez v0, :cond_e

    .line 132
    .line 133
    move v0, v1

    .line 134
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 135
    .line 136
    array-length v3, v2

    .line 137
    if-ge v0, v3, :cond_e

    .line 138
    .line 139
    aget-object v2, v2, v0

    .line 140
    .line 141
    if-eqz v2, :cond_d

    .line 142
    .line 143
    const/16 v3, 0xc

    .line 144
    .line 145
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 146
    .line 147
    .line 148
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    .line 152
    .line 153
    if-eqz v0, :cond_f

    .line 154
    .line 155
    const/16 v2, 0xd

    .line 156
    .line 157
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 158
    .line 159
    .line 160
    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 161
    .line 162
    if-eqz v0, :cond_11

    .line 163
    .line 164
    array-length v0, v0

    .line 165
    if-lez v0, :cond_11

    .line 166
    .line 167
    move v0, v1

    .line 168
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 169
    .line 170
    array-length v3, v2

    .line 171
    if-ge v0, v3, :cond_11

    .line 172
    .line 173
    aget-object v2, v2, v0

    .line 174
    .line 175
    if-eqz v2, :cond_10

    .line 176
    .line 177
    const/16 v3, 0xe

    .line 178
    .line 179
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 180
    .line 181
    .line 182
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 186
    .line 187
    if-eqz v0, :cond_13

    .line 188
    .line 189
    array-length v0, v0

    .line 190
    if-lez v0, :cond_13

    .line 191
    .line 192
    move v0, v1

    .line 193
    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    .line 194
    .line 195
    array-length v3, v2

    .line 196
    if-ge v0, v3, :cond_13

    .line 197
    .line 198
    aget-object v2, v2, v0

    .line 199
    .line 200
    if-eqz v2, :cond_12

    .line 201
    .line 202
    const/16 v3, 0xf

    .line 203
    .line 204
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 205
    .line 206
    .line 207
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_13
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    .line 211
    .line 212
    if-eqz v0, :cond_14

    .line 213
    .line 214
    const/16 v2, 0x13

    .line 215
    .line 216
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 217
    .line 218
    .line 219
    :cond_14
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    .line 220
    .line 221
    if-eqz v0, :cond_15

    .line 222
    .line 223
    const/16 v2, 0x14

    .line 224
    .line 225
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 226
    .line 227
    .line 228
    :cond_15
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    .line 229
    .line 230
    if-eqz v0, :cond_16

    .line 231
    .line 232
    const/16 v2, 0x15

    .line 233
    .line 234
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 235
    .line 236
    .line 237
    :cond_16
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    .line 238
    .line 239
    if-eqz v0, :cond_17

    .line 240
    .line 241
    const/16 v2, 0x16

    .line 242
    .line 243
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 244
    .line 245
    .line 246
    :cond_17
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    .line 247
    .line 248
    if-eqz v0, :cond_18

    .line 249
    .line 250
    const/16 v2, 0x17

    .line 251
    .line 252
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 253
    .line 254
    .line 255
    :cond_18
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    .line 256
    .line 257
    if-eqz v0, :cond_19

    .line 258
    .line 259
    const/16 v2, 0x18

    .line 260
    .line 261
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 262
    .line 263
    .line 264
    :cond_19
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    .line 265
    .line 266
    if-eqz v0, :cond_1a

    .line 267
    .line 268
    const/16 v2, 0x19

    .line 269
    .line 270
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 271
    .line 272
    .line 273
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 274
    .line 275
    if-eqz v0, :cond_1c

    .line 276
    .line 277
    array-length v0, v0

    .line 278
    if-lez v0, :cond_1c

    .line 279
    .line 280
    move v0, v1

    .line 281
    :goto_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 282
    .line 283
    array-length v3, v2

    .line 284
    if-ge v0, v3, :cond_1c

    .line 285
    .line 286
    aget-object v2, v2, v0

    .line 287
    .line 288
    if-eqz v2, :cond_1b

    .line 289
    .line 290
    const/16 v3, 0x1a

    .line 291
    .line 292
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 293
    .line 294
    .line 295
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 299
    .line 300
    if-eqz v0, :cond_1e

    .line 301
    .line 302
    array-length v0, v0

    .line 303
    if-lez v0, :cond_1e

    .line 304
    .line 305
    move v0, v1

    .line 306
    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 307
    .line 308
    array-length v3, v2

    .line 309
    if-ge v0, v3, :cond_1e

    .line 310
    .line 311
    aget-object v2, v2, v0

    .line 312
    .line 313
    if-eqz v2, :cond_1d

    .line 314
    .line 315
    const/16 v3, 0x1b

    .line 316
    .line 317
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 318
    .line 319
    .line 320
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 324
    .line 325
    if-eqz v0, :cond_20

    .line 326
    .line 327
    array-length v0, v0

    .line 328
    if-lez v0, :cond_20

    .line 329
    .line 330
    move v0, v1

    .line 331
    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 332
    .line 333
    array-length v3, v2

    .line 334
    if-ge v0, v3, :cond_20

    .line 335
    .line 336
    aget-object v2, v2, v0

    .line 337
    .line 338
    if-eqz v2, :cond_1f

    .line 339
    .line 340
    const/16 v3, 0x1c

    .line 341
    .line 342
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 343
    .line 344
    .line 345
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_20
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 349
    .line 350
    if-eqz v0, :cond_22

    .line 351
    .line 352
    array-length v0, v0

    .line 353
    if-lez v0, :cond_22

    .line 354
    .line 355
    move v0, v1

    .line 356
    :goto_8
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 357
    .line 358
    array-length v3, v2

    .line 359
    if-ge v0, v3, :cond_22

    .line 360
    .line 361
    aget-object v2, v2, v0

    .line 362
    .line 363
    if-eqz v2, :cond_21

    .line 364
    .line 365
    const/16 v3, 0x1d

    .line 366
    .line 367
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 368
    .line 369
    .line 370
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_22
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 374
    .line 375
    if-eqz v0, :cond_24

    .line 376
    .line 377
    array-length v0, v0

    .line 378
    if-lez v0, :cond_24

    .line 379
    .line 380
    move v0, v1

    .line 381
    :goto_9
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 382
    .line 383
    array-length v3, v2

    .line 384
    if-ge v0, v3, :cond_24

    .line 385
    .line 386
    aget-object v2, v2, v0

    .line 387
    .line 388
    if-eqz v2, :cond_23

    .line 389
    .line 390
    const/16 v3, 0x1e

    .line 391
    .line 392
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 393
    .line 394
    .line 395
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 396
    .line 397
    goto :goto_9

    .line 398
    :cond_24
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 399
    .line 400
    if-eqz v0, :cond_26

    .line 401
    .line 402
    array-length v0, v0

    .line 403
    if-lez v0, :cond_26

    .line 404
    .line 405
    move v0, v1

    .line 406
    :goto_a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 407
    .line 408
    array-length v3, v2

    .line 409
    if-ge v0, v3, :cond_26

    .line 410
    .line 411
    aget-object v2, v2, v0

    .line 412
    .line 413
    if-eqz v2, :cond_25

    .line 414
    .line 415
    const/16 v3, 0x1f

    .line 416
    .line 417
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 418
    .line 419
    .line 420
    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_26
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 424
    .line 425
    if-eqz v0, :cond_28

    .line 426
    .line 427
    array-length v0, v0

    .line 428
    if-lez v0, :cond_28

    .line 429
    .line 430
    move v0, v1

    .line 431
    :goto_b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 432
    .line 433
    array-length v3, v2

    .line 434
    if-ge v0, v3, :cond_28

    .line 435
    .line 436
    aget-object v2, v2, v0

    .line 437
    .line 438
    if-eqz v2, :cond_27

    .line 439
    .line 440
    const/16 v3, 0x20

    .line 441
    .line 442
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 443
    .line 444
    .line 445
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 446
    .line 447
    goto :goto_b

    .line 448
    :cond_28
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 449
    .line 450
    if-eqz v0, :cond_2a

    .line 451
    .line 452
    array-length v0, v0

    .line 453
    if-lez v0, :cond_2a

    .line 454
    .line 455
    :goto_c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 456
    .line 457
    array-length v2, v0

    .line 458
    if-ge v1, v2, :cond_2a

    .line 459
    .line 460
    aget-object v0, v0, v1

    .line 461
    .line 462
    if-eqz v0, :cond_29

    .line 463
    .line 464
    const/16 v2, 0x21

    .line 465
    .line 466
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 467
    .line 468
    .line 469
    :cond_29
    add-int/lit8 v1, v1, 0x1

    .line 470
    .line 471
    goto :goto_c

    .line 472
    :cond_2a
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    .line 473
    .line 474
    const-wide/16 v2, 0x0

    .line 475
    .line 476
    cmp-long v4, v0, v2

    .line 477
    .line 478
    if-eqz v4, :cond_2b

    .line 479
    .line 480
    const/16 v4, 0x22

    .line 481
    .line 482
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 483
    .line 484
    .line 485
    :cond_2b
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    .line 486
    .line 487
    cmp-long v4, v0, v2

    .line 488
    .line 489
    if-eqz v4, :cond_2c

    .line 490
    .line 491
    const/16 v4, 0x23

    .line 492
    .line 493
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 494
    .line 495
    .line 496
    :cond_2c
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    .line 497
    .line 498
    cmp-long v4, v0, v2

    .line 499
    .line 500
    if-eqz v4, :cond_2d

    .line 501
    .line 502
    const/16 v4, 0x24

    .line 503
    .line 504
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 505
    .line 506
    .line 507
    :cond_2d
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    .line 508
    .line 509
    cmp-long v4, v0, v2

    .line 510
    .line 511
    if-eqz v4, :cond_2e

    .line 512
    .line 513
    const/16 v4, 0x25

    .line 514
    .line 515
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 516
    .line 517
    .line 518
    :cond_2e
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    .line 519
    .line 520
    cmp-long v4, v0, v2

    .line 521
    .line 522
    if-eqz v4, :cond_2f

    .line 523
    .line 524
    const/16 v4, 0x26

    .line 525
    .line 526
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 527
    .line 528
    .line 529
    :cond_2f
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    .line 530
    .line 531
    cmp-long v4, v0, v2

    .line 532
    .line 533
    if-eqz v4, :cond_30

    .line 534
    .line 535
    const/16 v4, 0x27

    .line 536
    .line 537
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 538
    .line 539
    .line 540
    :cond_30
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    .line 541
    .line 542
    cmp-long v2, v0, v2

    .line 543
    .line 544
    if-eqz v2, :cond_31

    .line 545
    .line 546
    const/16 v2, 0x28

    .line 547
    .line 548
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 549
    .line 550
    .line 551
    :cond_31
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 552
    .line 553
    .line 554
    return-void
.end method
