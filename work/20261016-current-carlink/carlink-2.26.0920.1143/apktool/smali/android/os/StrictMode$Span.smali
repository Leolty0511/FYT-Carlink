.class public Landroid/os/StrictMode$Span;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field private final mContainerState:Landroid/os/StrictMode$ThreadSpanState;

.field private mCreateMillis:J

.field private mName:Ljava/lang/String;

.field private mNext:Landroid/os/StrictMode$Span;

.field private mPrev:Landroid/os/StrictMode$Span;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    return-void
.end method

.method public constructor <init>(Landroid/os/StrictMode$ThreadSpanState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    return-void
.end method

.method public static synthetic access$2000(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iget-object p0, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method public static synthetic access$2002(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method public static synthetic access$2100(Landroid/os/StrictMode$Span;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2102(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2202(Landroid/os/StrictMode$Span;J)J
    .locals 0

    iput-wide p1, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    return-wide p1
.end method

.method public static synthetic access$2302(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 1
    const-string v0, "Span finished="

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 17
    .line 18
    iput-object v3, v2, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 19
    .line 20
    :cond_1
    iget-object v3, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    iput-object v2, v3, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    .line 25
    .line 26
    :cond_2
    iget-object v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 27
    .line 28
    if-ne v2, p0, :cond_3

    .line 29
    .line 30
    iput-object v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 31
    .line 32
    :cond_3
    iget v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 33
    .line 34
    add-int/lit8 v2, v2, -0x1

    .line 35
    .line 36
    iput v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 37
    .line 38
    invoke-static {}, Landroid/os/StrictMode;->access$900()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    const-string v2, "StrictMode"

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "; size="

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v0, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_4
    const-wide/16 v2, -0x1

    .line 74
    .line 75
    iput-wide v2, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v0, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    .line 81
    .line 82
    iput-object v0, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 83
    .line 84
    iget v0, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 85
    .line 86
    const/4 v2, 0x5

    .line 87
    if-ge v0, v2, :cond_5

    .line 88
    .line 89
    iget-object v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 90
    .line 91
    iput-object v2, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 92
    .line 93
    iput-object p0, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 94
    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    iput v0, v1, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 98
    .line 99
    :cond_5
    monitor-exit v1

    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw v0
.end method
