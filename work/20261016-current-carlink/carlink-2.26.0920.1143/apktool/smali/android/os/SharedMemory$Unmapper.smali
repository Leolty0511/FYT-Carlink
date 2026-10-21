.class final Landroid/os/SharedMemory$Unmapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unmapper"
.end annotation


# instance fields
.field private mAddress:J

.field private mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

.field private mSize:I


# direct methods
.method private constructor <init>(JILandroid/os/SharedMemory$MemoryRegistration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroid/os/SharedMemory$Unmapper;->mAddress:J

    .line 4
    iput p3, p0, Landroid/os/SharedMemory$Unmapper;->mSize:I

    .line 5
    iput-object p4, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    return-void
.end method

.method public synthetic constructor <init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/os/SharedMemory$Unmapper;->mAddress:J

    .line 2
    .line 3
    iget v2, p0, Landroid/os/SharedMemory$Unmapper;->mSize:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iget-object v0, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 16
    .line 17
    return-void
.end method
