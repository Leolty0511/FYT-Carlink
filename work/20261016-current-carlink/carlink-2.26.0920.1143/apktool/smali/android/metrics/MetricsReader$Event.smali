.class public Landroid/metrics/MetricsReader$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/metrics/MetricsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field mData:Ljava/lang/Object;

.field mPid:I

.field mTimeMillis:J

.field mUid:I


# direct methods
.method public constructor <init>(JIILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    .line 3
    iput p3, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    .line 4
    iput p4, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    .line 5
    iput-object p5, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/util/EventLog$Event;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    .line 10
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v0

    iput v0, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    .line 11
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getUid()I

    move-result v0

    iput v0, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    .line 12
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getProcessId()I
    .locals 1

    iget v0, p0, Landroid/metrics/MetricsReader$Event;->mPid:I

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/metrics/MetricsReader$Event;->mTimeMillis:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/metrics/MetricsReader$Event;->mUid:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/metrics/MetricsReader$Event;->mData:Ljava/lang/Object;

    return-void
.end method
