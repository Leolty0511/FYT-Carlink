.class final Landroid/os/SharedMemory$MemoryRegistration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryRegistration"
.end annotation


# instance fields
.field private mReferenceCount:I

.field private mSize:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 5
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object p1

    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {p1, v0}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/SharedMemory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()Landroid/os/SharedMemory$MemoryRegistration;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method
