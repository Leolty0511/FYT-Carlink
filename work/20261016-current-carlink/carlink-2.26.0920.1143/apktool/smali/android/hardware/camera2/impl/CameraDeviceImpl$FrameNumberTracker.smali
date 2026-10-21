.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameNumberTracker"
.end annotation


# instance fields
.field private mCompletedFrameNumber:J

.field private mCompletedReprocessFrameNumber:J

.field private final mFutureErrorMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartialResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSkippedRegularFrameNumbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    .line 9
    .line 10
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    .line 11
    .line 12
    new-instance p1, Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 18
    .line 19
    new-instance p1, Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 25
    .line 26
    new-instance p1, Ljava/util/TreeMap;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    .line 32
    .line 33
    new-instance p1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    .line 39
    .line 40
    return-void
.end method

.method private update()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_6

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    .line 34
    .line 35
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v4, 0x1

    .line 42
    const-wide/16 v5, 0x1

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    iget-wide v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    .line 51
    .line 52
    add-long/2addr v9, v5

    .line 53
    cmp-long v1, v7, v9

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    iput-wide v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eq v1, v4, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-ne v2, v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    iput-wide v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    .line 85
    .line 86
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    iget-wide v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    .line 100
    .line 101
    add-long/2addr v9, v5

    .line 102
    cmp-long v1, v7, v9

    .line 103
    .line 104
    if-nez v1, :cond_4

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    iput-wide v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eq v1, v4, :cond_5

    .line 120
    .line 121
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-ne v2, v1, :cond_5

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    iput-wide v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    .line 134
    .line 135
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    .line 143
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_6
    return-void
.end method

.method private updateCompletedFrameNumber(J)V
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    const-string v3, " is a repeat"

    .line 6
    .line 7
    const-string v4, "frame number "

    .line 8
    .line 9
    if-lez v2, :cond_4

    .line 10
    .line 11
    iget-wide v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    .line 12
    .line 13
    cmp-long v2, p1, v5

    .line 14
    .line 15
    if-gtz v2, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    cmp-long v0, p1, v0

    .line 39
    .line 40
    if-ltz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    cmp-long v0, p1, v0

    .line 55
    .line 56
    if-gtz v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string v1, " comes out of order. Expecting "

    .line 67
    .line 68
    invoke-static {v4, p1, p2, v1}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_2
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    const-wide/16 v2, 0x1

    .line 115
    .line 116
    :goto_0
    add-long/2addr v0, v2

    .line 117
    cmp-long v4, v0, p1

    .line 118
    .line 119
    if-gez v4, :cond_3

    .line 120
    .line 121
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 122
    .line 123
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    :goto_1
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    .line 132
    .line 133
    return-void

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0
.end method

.method private updateCompletedReprocessFrameNumber(J)V
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    const-string v3, " is a repeat"

    .line 6
    .line 7
    const-string v4, "frame number "

    .line 8
    .line 9
    if-ltz v2, :cond_4

    .line 10
    .line 11
    iget-wide v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    .line 12
    .line 13
    cmp-long v2, p1, v5

    .line 14
    .line 15
    if-gez v2, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    cmp-long v0, p1, v0

    .line 39
    .line 40
    if-ltz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    cmp-long v0, p1, v0

    .line 55
    .line 56
    if-gtz v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string v1, " comes out of order. Expecting "

    .line 67
    .line 68
    invoke-static {v4, p1, p2, v1}, Landroid/app/m;->l(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_2
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    const-wide/16 v2, 0x1

    .line 115
    .line 116
    :goto_0
    add-long/2addr v0, v2

    .line 117
    cmp-long v4, v0, p1

    .line 118
    .line 119
    if-gez v4, :cond_3

    .line 120
    .line 121
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    .line 122
    .line 123
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    :goto_1
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    .line 132
    .line 133
    return-void

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0
.end method


# virtual methods
.method public getCompletedFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    return-wide v0
.end method

.method public getCompletedReprocessFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    return-wide v0
.end method

.method public popPartialResults(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    .locals 0

    if-nez p4, :cond_0

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JZZ)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-nez p4, :cond_2

    .line 8
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateTracker(JZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateCompletedReprocessFrameNumber(J)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateCompletedFrameNumber(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->update()V

    return-void
.end method
