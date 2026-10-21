.class public Landroid/hardware/camera2/legacy/CaptureCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLAG_RECEIVED_ALL_JPEG:I = 0x3

.field private static final FLAG_RECEIVED_ALL_PREVIEW:I = 0xc

.field private static final FLAG_RECEIVED_JPEG:I = 0x1

.field private static final FLAG_RECEIVED_JPEG_TS:I = 0x2

.field private static final FLAG_RECEIVED_PREVIEW:I = 0x4

.field private static final FLAG_RECEIVED_PREVIEW_TS:I = 0x8

.field private static final MAX_JPEGS_IN_FLIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CaptureCollector"


# instance fields
.field private final mActiveRequests:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private mInFlight:I

.field private mInFlightPreviews:I

.field private final mIsEmpty:Ljava/util/concurrent/locks/Condition;

.field private final mJpegCaptureQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mJpegProduceQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMaxInFlight:I

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mPreviewCaptureQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewProduceQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(ILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    .line 20
    .line 21
    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    .line 22
    .line 23
    iput p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayDeque;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayDeque;

    .line 48
    .line 49
    invoke-direct {v1, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    new-instance p1, Ljava/util/TreeSet;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 78
    .line 79
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 80
    .line 81
    return-void
.end method

.method public static synthetic access$000(Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->onPreviewCompleted()V

    return-void
.end method

.method public static synthetic access$100(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->onRequestCompleted(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    return-void
.end method

.method private onPreviewCompleted()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "More preview captures completed than requests queued."

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method private onRequestCompleted(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    .line 9
    .line 10
    if-ltz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "More captures completed than requests queued."

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method private removeRequestIfCompleted(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/util/MutableLong;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 20
    .line 21
    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-static {v3}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p2, Landroid/util/MutableLong;->value:J

    .line 36
    .line 37
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return v1
.end method


# virtual methods
.method public failAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewFailed()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegFailed()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method public failNextJpeg()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-gtz v3, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move-object v1, v2

    .line 36
    :goto_1
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    .line 63
    .line 64
    throw v1
.end method

.method public failNextPreview()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-gtz v3, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move-object v1, v2

    .line 36
    :goto_1
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    .line 63
    .line 64
    throw v1
.end method

.method public hasPendingPreviewCaptures()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    throw v1
.end method

.method public jpegCaptured(J)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p1, "CaptureCollector"

    .line 17
    .line 18
    const-string/jumbo p2, "jpegCaptured called with no jpeg request on queue!"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegTimestamp(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public jpegProduced()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, "CaptureCollector"

    .line 17
    .line 18
    const-string/jumbo v2, "jpegProduced called with no jpeg request on queue!"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegProduced()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroid/util/Pair;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public previewCaptured(J)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewTimestamp(J)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Landroid/util/Pair;

    .line 25
    .line 26
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$400(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {p1, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public previewProduced()Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, "CaptureCollector"

    .line 17
    .line 18
    const-string/jumbo v2, "previewProduced called with no preview request on queue!"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewProduced()V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->access$300(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    .line 33
    .line 34
    .line 35
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method public queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;-><init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iget-object p3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-boolean p4, v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    .line 16
    .line 17
    if-nez p4, :cond_1

    .line 18
    .line 19
    iget-boolean p5, v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 20
    .line 21
    if-eqz p5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string p2, "Request must target at least one output surface!"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_0
    const/4 p5, 0x0

    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    if-eqz p4, :cond_4

    .line 36
    .line 37
    :goto_1
    iget p4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-lez p4, :cond_3

    .line 40
    .line 41
    cmp-long p4, p1, v1

    .line 42
    .line 43
    if-gtz p4, :cond_2

    .line 44
    .line 45
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    .line 47
    .line 48
    return p5

    .line 49
    :cond_2
    :try_start_1
    iget-object p4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 50
    .line 51
    invoke-interface {p4, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide p1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-object p4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    .line 57
    .line 58
    invoke-virtual {p4, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object p4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    .line 62
    .line 63
    invoke-virtual {p4, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-boolean p4, v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    if-eqz p4, :cond_7

    .line 70
    .line 71
    :goto_2
    iget p4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    .line 72
    .line 73
    iget v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    if-lt p4, v4, :cond_6

    .line 76
    .line 77
    cmp-long p4, p1, v1

    .line 78
    .line 79
    if-gtz p4, :cond_5

    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    .line 83
    .line 84
    return p5

    .line 85
    :cond_5
    :try_start_2
    iget-object p4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 86
    .line 87
    invoke-interface {p4, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    goto :goto_2

    .line 92
    :cond_6
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    .line 103
    .line 104
    add-int/2addr p1, v3

    .line 105
    iput p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    .line 106
    .line 107
    :cond_7
    iget-object p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    .line 113
    .line 114
    add-int/2addr p1, v3

    .line 115
    iput p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    .line 119
    .line 120
    return v3

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method public waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object p3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :goto_0
    :try_start_0
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v0, p1, v0

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object p3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :goto_0
    :try_start_0
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v0, p1, v0

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z
    .locals 2

    .line 1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object p4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p5}, Landroid/hardware/camera2/legacy/CaptureCollector;->removeRequestIfCompleted(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/util/MutableLong;)Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v0, p2, v0

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 28
    .line 29
    invoke-interface {v0, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
