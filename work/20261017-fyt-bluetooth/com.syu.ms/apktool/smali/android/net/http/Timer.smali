.class Landroid/net/http/Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLast:J

.field private mStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/http/Timer;->mLast:J

    iput-wide v0, p0, Landroid/net/http/Timer;->mStart:J

    return-void
.end method


# virtual methods
.method public mark(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iput-wide v0, p0, Landroid/net/http/Timer;->mLast:J

    return-void
.end method
