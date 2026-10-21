.class public Lcom/lsec/core/sharememory/MemoryFileHelper;
.super Ljava/lang/Object;
.source "MemoryFileHelper.java"


# static fields
.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x3

.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMemoryFile(Ljava/lang/String;I)Landroid/os/MemoryFile;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Landroid/os/MemoryFile;

    invoke-direct {v1, p0, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .locals 3
    .param p0, "memoryFile"    # Landroid/os/MemoryFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "memoryFile is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    const-string v1, "getFileDescriptor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/lsec/core/sharememory/InvokeUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 106
    .local v0, "fd":Ljava/io/FileDescriptor;
    return-object v0
.end method

.method public static getParcelFileDescriptor(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p0, "memoryFile"    # Landroid/os/MemoryFile;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "memoryFile is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_0
    const/4 v2, 0x0

    .line 91
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p0}, Lcom/lsec/core/sharememory/MemoryFileHelper;->getFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 92
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-class v3, Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/lsec/core/sharememory/InvokeUtil;->newInstanceOrThrow(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    return-object v2

    .line 94
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "InvokeUtil.newInstanceOrThrow failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static openMemoryFile(Landroid/os/ParcelFileDescriptor;II)Landroid/os/MemoryFile;
    .locals 3
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "length"    # I
    .param p2, "mode"    # I

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ParcelFileDescriptor \u6d93\u5d88\u5158\u6d93\u8679\u2516"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 34
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {v0, p1, p2}, Lcom/lsec/core/sharememory/MemoryFileHelper;->openMemoryFile(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;

    move-result-object v1

    return-object v1
.end method

.method private static openMemoryFile(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "length"    # I
    .param p2, "mode"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid mode, only support OPEN_READONLY and OPEN_READWRITE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 42
    invoke-static {p0, p1, p2}, Lcom/lsec/core/sharememory/MemoryFileHelper;->openMemoryFileV26(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p2}, Lcom/lsec/core/sharememory/MemoryFileHelper;->openMemoryFileV27(Ljava/io/FileDescriptor;I)Landroid/os/MemoryFile;

    move-result-object v0

    goto :goto_0
.end method

.method public static openMemoryFileV26(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;
    .locals 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "length"    # I
    .param p2, "mode"    # I

    .prologue
    .line 48
    const/4 v4, 0x0

    .line 50
    .local v4, "memoryFile":Landroid/os/MemoryFile;
    :try_start_0
    new-instance v5, Landroid/os/MemoryFile;

    const-string v6, "service.remote"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v4    # "memoryFile":Landroid/os/MemoryFile;
    .local v5, "memoryFile":Landroid/os/MemoryFile;
    :try_start_1
    invoke-virtual {v5}, Landroid/os/MemoryFile;->close()V

    .line 52
    const-class v2, Landroid/os/MemoryFile;

    .line 53
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "mFD"

    invoke-static {v5, v6, p0}, Lcom/lsec/core/sharememory/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v6, "mLength"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/lsec/core/sharememory/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v6, "native_mmap"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v6, v7}, Lcom/lsec/core/sharememory/InvokeUtil;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 56
    .local v0, "address":J
    const-string v6, "mAddress"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/lsec/core/sharememory/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 61
    .end local v0    # "address":J
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v4    # "memoryFile":Landroid/os/MemoryFile;
    :goto_0
    return-object v4

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v5    # "memoryFile":Landroid/os/MemoryFile;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v4    # "memoryFile":Landroid/os/MemoryFile;
    goto :goto_1
.end method

.method private static openMemoryFileV27(Ljava/io/FileDescriptor;I)Landroid/os/MemoryFile;
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x1

    .line 65
    const/4 v3, 0x0

    .line 67
    .local v3, "memoryFile":Landroid/os/MemoryFile;
    :try_start_0
    new-instance v4, Landroid/os/MemoryFile;

    const-string v6, "service.remote"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v3    # "memoryFile":Landroid/os/MemoryFile;
    .local v4, "memoryFile":Landroid/os/MemoryFile;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/MemoryFile;->close()V

    .line 69
    const-string v6, "android.os.SharedMemory"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v0, v6}, Lcom/lsec/core/sharememory/InvokeUtil;->newInstanceOrThrow(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 71
    .local v5, "sharedMemory":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 72
    .local v2, "mapping":Ljava/nio/ByteBuffer;
    if-ne p1, v8, :cond_0

    .line 73
    const-string v6, "mapReadOnly"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/lsec/core/sharememory/InvokeUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mapping":Ljava/nio/ByteBuffer;
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 77
    .restart local v2    # "mapping":Ljava/nio/ByteBuffer;
    :goto_0
    const-string v6, "mSharedMemory"

    invoke-static {v4, v6, v5}, Lcom/lsec/core/sharememory/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    const-string v6, "mMapping"

    invoke-static {v4, v6, v2}, Lcom/lsec/core/sharememory/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-object v4

    .line 75
    :cond_0
    const-string v6, "mapReadWrite"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/lsec/core/sharememory/InvokeUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mapping":Ljava/nio/ByteBuffer;
    check-cast v2, Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2    # "mapping":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 80
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mapping":Ljava/nio/ByteBuffer;
    .end local v4    # "memoryFile":Landroid/os/MemoryFile;
    .end local v5    # "sharedMemory":Ljava/lang/Object;
    .restart local v3    # "memoryFile":Landroid/os/MemoryFile;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "openMemoryFile failed!"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v4    # "memoryFile":Landroid/os/MemoryFile;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v3    # "memoryFile":Landroid/os/MemoryFile;
    goto :goto_1
.end method
