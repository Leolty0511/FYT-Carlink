.class public final Lcom/google/android/projection/sink/video/FrameCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field private static final MIN_UPDATE_PERIOD_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AHU.VIDEO"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private lastFrame:J

.field private final mFpsStringBuffer:Ljava/lang/StringBuffer;

.field private final mFpsTextView:Landroid/widget/TextView;

.field private measureStartTime:J

.field private numFramesMeasured:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/video/FrameCounter;->mFpsStringBuffer:Ljava/lang/StringBuffer;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/projection/sink/video/FrameCounter;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/projection/sink/video/FrameCounter;->mFpsTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/video/FrameCounter;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/video/FrameCounter;->mFpsTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public onRenderFrame(JJ)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/google/android/projection/sink/video/FrameCounter;->lastFrame:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v2, v2, v4

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/google/android/projection/sink/video/FrameCounter;->measureStartTime:J

    .line 14
    .line 15
    sub-long v2, v0, v2

    .line 16
    .line 17
    const-wide/16 v4, 0x1f4

    .line 18
    .line 19
    cmp-long v4, v2, v4

    .line 20
    .line 21
    if-ltz v4, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lcom/google/android/projection/sink/video/FrameCounter;->mFpsStringBuffer:Ljava/lang/StringBuffer;

    .line 24
    .line 25
    const-string v5, "FPS: "

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    iget v5, p0, Lcom/google/android/projection/sink/video/FrameCounter;->numFramesMeasured:I

    .line 31
    .line 32
    int-to-double v5, v5

    .line 33
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    mul-double/2addr v5, v7

    .line 39
    long-to-double v2, v2

    .line 40
    div-double/2addr v5, v2

    .line 41
    double-to-float v2, v5

    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    const-string v2, ", v-lat "

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    const-string p1, ", a-lat "

    .line 54
    .line 55
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/google/android/projection/sink/video/FrameCounter;->mFpsStringBuffer:Ljava/lang/StringBuffer;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    const/4 p4, 0x0

    .line 72
    invoke-virtual {p2, p4, p3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/google/android/projection/sink/video/FrameCounter;->handler:Landroid/os/Handler;

    .line 76
    .line 77
    new-instance p3, Lcom/google/android/projection/sink/video/FrameCounter$1;

    .line 78
    .line 79
    invoke-direct {p3, p0, p1}, Lcom/google/android/projection/sink/video/FrameCounter$1;-><init>(Lcom/google/android/projection/sink/video/FrameCounter;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    iput p4, p0, Lcom/google/android/projection/sink/video/FrameCounter;->numFramesMeasured:I

    .line 86
    .line 87
    :cond_0
    iget p1, p0, Lcom/google/android/projection/sink/video/FrameCounter;->numFramesMeasured:I

    .line 88
    .line 89
    if-nez p1, :cond_1

    .line 90
    .line 91
    iput-wide v0, p0, Lcom/google/android/projection/sink/video/FrameCounter;->measureStartTime:J

    .line 92
    .line 93
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 94
    .line 95
    iput p1, p0, Lcom/google/android/projection/sink/video/FrameCounter;->numFramesMeasured:I

    .line 96
    .line 97
    iput-wide v0, p0, Lcom/google/android/projection/sink/video/FrameCounter;->lastFrame:J

    .line 98
    .line 99
    return-void
.end method
