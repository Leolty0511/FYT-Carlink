.class public final Landroid/hardware/SensorDirectChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorDirectChannel$RateLevel;,
        Landroid/hardware/SensorDirectChannel$MemoryType;
    }
.end annotation


# static fields
.field public static final RATE_FAST:I = 0x2

.field public static final RATE_NORMAL:I = 0x1

.field public static final RATE_STOP:I = 0x0

.field public static final RATE_VERY_FAST:I = 0x3

.field public static final TYPE_HARDWARE_BUFFER:I = 0x2

.field public static final TYPE_MEMORY_FILE:I = 0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManager:Landroid/hardware/SensorManager;

.field private final mNativeHandle:I

.field private final mSize:J

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;IIJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 16
    .line 17
    iput-object p1, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    .line 18
    .line 19
    iput p2, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    .line 20
    .line 21
    iput p3, p0, Landroid/hardware/SensorDirectChannel;->mType:I

    .line 22
    .line 23
    iput-wide p4, p0, Landroid/hardware/SensorDirectChannel;->mSize:J

    .line 24
    .line 25
    const-string p1, "SensorDirectChannel"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static encodeData(Landroid/os/MemoryFile;)[J
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    int-to-long v2, p0

    aput-wide v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 12
    .line 13
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public configure(Landroid/hardware/Sensor;I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

    move-result p1

    return p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public getNativeHandle()I
    .locals 1

    iget v0, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    return v0
.end method
