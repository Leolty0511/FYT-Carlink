.class final Landroid/os/SharedMemory$Closer;
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
    name = "Closer"
.end annotation


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/os/SharedMemory$Closer;->mFd:Ljava/io/FileDescriptor;

    .line 4
    iput-object p2, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/os/SharedMemory$Closer;-><init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/SharedMemory$Closer;->mFd:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 13
    .line 14
    return-void
.end method
