.class public final Landroid/view/FrameMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameMetrics$Index;,
        Landroid/view/FrameMetrics$Metric;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x2

.field public static final COMMAND_ISSUE_DURATION:I = 0x6

.field public static final DRAW_DURATION:I = 0x4

.field private static final DURATIONS:[I

.field public static final FIRST_DRAW_FRAME:I = 0x9

.field private static final FRAME_INFO_FLAG_FIRST_DRAW:I = 0x1

.field public static final INPUT_HANDLING_DURATION:I = 0x1

.field public static final INTENDED_VSYNC_TIMESTAMP:I = 0xa

.field public static final LAYOUT_MEASURE_DURATION:I = 0x3

.field public static final SWAP_BUFFERS_DURATION:I = 0x7

.field public static final SYNC_DURATION:I = 0x5

.field public static final TOTAL_DURATION:I = 0x8

.field public static final UNKNOWN_DELAY_DURATION:I = 0x0

.field public static final VSYNC_TIMESTAMP:I = 0xb


# instance fields
.field final mTimingData:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x1
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0x1
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [J

    .line 5
    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    return-void
.end method

.method public constructor <init>(Landroid/view/FrameMetrics;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [J

    .line 2
    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    .line 3
    iget-object p1, p1, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    return-void
.end method


# virtual methods
.method public getMetric(I)J
    .locals 6

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-ltz p1, :cond_6

    .line 4
    .line 5
    const/16 v2, 0xb

    .line 6
    .line 7
    if-le p1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v3, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    .line 11
    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_1
    const/16 v0, 0x9

    .line 16
    .line 17
    if-ne p1, v0, :cond_3

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    aget-wide v0, v3, p1

    .line 21
    .line 22
    const-wide/16 v2, 0x1

    .line 23
    .line 24
    and-long/2addr v0, v2

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long p1, v0, v4

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move-wide v2, v4

    .line 33
    :goto_0
    return-wide v2

    .line 34
    :cond_3
    const/16 v0, 0xa

    .line 35
    .line 36
    if-ne p1, v0, :cond_4

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    aget-wide v0, v3, p1

    .line 40
    .line 41
    return-wide v0

    .line 42
    :cond_4
    const/4 v0, 0x2

    .line 43
    if-ne p1, v2, :cond_5

    .line 44
    .line 45
    aget-wide v0, v3, v0

    .line 46
    .line 47
    return-wide v0

    .line 48
    :cond_5
    mul-int/2addr p1, v0

    .line 49
    sget-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    .line 50
    .line 51
    add-int/lit8 v1, p1, 0x1

    .line 52
    .line 53
    aget v1, v0, v1

    .line 54
    .line 55
    aget-wide v1, v3, v1

    .line 56
    .line 57
    aget p1, v0, p1

    .line 58
    .line 59
    aget-wide v4, v3, p1

    .line 60
    .line 61
    sub-long/2addr v1, v4

    .line 62
    return-wide v1

    .line 63
    :cond_6
    :goto_1
    return-wide v0
.end method
