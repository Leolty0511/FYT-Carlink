.class public Lcom/lsec/core/sharememory/MyShareMemoryFile;
.super Ljava/lang/Object;
.source "MyShareMemoryFile.java"


# instance fields
.field public mBufferBean:Lcom/lsec/core/sharememory/BufferBean;

.field public mMemoryFile:Landroid/os/MemoryFile;

.field public mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initMemoryFile(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    .line 12
    new-instance v0, Lcom/lsec/core/sharememory/BufferBean;

    invoke-direct {v0, p2}, Lcom/lsec/core/sharememory/BufferBean;-><init>(I)V

    iput-object v0, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mBufferBean:Lcom/lsec/core/sharememory/BufferBean;

    .line 13
    iget-object v0, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mMemoryFile:Landroid/os/MemoryFile;

    if-nez v0, :cond_0

    .line 14
    invoke-static {p1, p2}, Lcom/lsec/core/sharememory/MemoryFileHelper;->createMemoryFile(Ljava/lang/String;I)Landroid/os/MemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mMemoryFile:Landroid/os/MemoryFile;

    .line 15
    iget-object v0, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mMemoryFile:Landroid/os/MemoryFile;

    invoke-static {v0}, Lcom/lsec/core/sharememory/MemoryFileHelper;->getParcelFileDescriptor(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 18
    :cond_0
    return-void
.end method

.method public writeBytes([BI)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 21
    iget-object v1, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v1, :cond_1

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mBufferBean:Lcom/lsec/core/sharememory/BufferBean;

    iget-object v2, v2, Lcom/lsec/core/sharememory/BufferBean;->isCanRead:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 24
    iget-object v1, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mBufferBean:Lcom/lsec/core/sharememory/BufferBean;

    iget-object v1, v1, Lcom/lsec/core/sharememory/BufferBean;->isCanRead:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mMemoryFile:Landroid/os/MemoryFile;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mBufferBean:Lcom/lsec/core/sharememory/BufferBean;

    iget-object v1, v1, Lcom/lsec/core/sharememory/BufferBean;->isCanRead:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 29
    iget-object v1, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/lsec/core/sharememory/MyShareMemoryFile;->mBufferBean:Lcom/lsec/core/sharememory/BufferBean;

    iget-object v2, v2, Lcom/lsec/core/sharememory/BufferBean;->isCanRead:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
