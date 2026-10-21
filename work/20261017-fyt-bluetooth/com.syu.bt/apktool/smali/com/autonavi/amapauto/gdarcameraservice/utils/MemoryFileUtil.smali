.class public Lcom/autonavi/amapauto/gdarcameraservice/utils/MemoryFileUtil;
.super Ljava/lang/Object;
.source "MemoryFileUtil.java"


# static fields
.field public static final MEMORY_NAME:Ljava/lang/String; = "CameraService"

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x3

.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openMemoryFile(Landroid/os/ParcelFileDescriptor;II)Landroid/os/MemoryFile;
    .locals 3
    .param p0, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "length"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 18
    if-nez p0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-object v1

    .line 21
    :cond_1
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 24
    :cond_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 25
    .local v0, "fileDescriptor":Ljava/io/FileDescriptor;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-gt v1, v2, :cond_3

    .line 26
    invoke-static {v0, p1, p2}, Lcom/autonavi/amapauto/gdarcameraservice/utils/MemoryFileUtil;->openMemoryFileV27(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;

    move-result-object v1

    goto :goto_0

    .line 28
    :cond_3
    invoke-static {v0, p2}, Lcom/autonavi/amapauto/gdarcameraservice/utils/MemoryFileUtil;->openMemoryFileV28(Ljava/io/FileDescriptor;I)Landroid/os/MemoryFile;

    move-result-object v1

    goto :goto_0
.end method

.method private static openMemoryFileV27(Ljava/io/FileDescriptor;II)Landroid/os/MemoryFile;
    .locals 9
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "length"    # I
    .param p2, "mode"    # I

    .prologue
    .line 32
    const/4 v3, 0x0

    .line 34
    .local v3, "memoryFile":Landroid/os/MemoryFile;
    :try_start_0
    new-instance v4, Landroid/os/MemoryFile;

    const-string v5, "CameraService"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v3    # "memoryFile":Landroid/os/MemoryFile;
    .local v4, "memoryFile":Landroid/os/MemoryFile;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/MemoryFile;->close()V

    .line 36
    const-class v2, Landroid/os/MemoryFile;

    .line 37
    .local v2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "mFD"

    invoke-static {v4, v5, p0}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v5, "mLength"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v5, "native_mmap"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 40
    .local v0, "address":J
    const-string v5, "mAddress"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 45
    .end local v0    # "address":J
    .end local v2    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v3    # "memoryFile":Landroid/os/MemoryFile;
    :goto_0
    return-object v3

    .line 41
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v3    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v4    # "memoryFile":Landroid/os/MemoryFile;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v3    # "memoryFile":Landroid/os/MemoryFile;
    goto :goto_0
.end method

.method private static openMemoryFileV28(Ljava/io/FileDescriptor;I)Landroid/os/MemoryFile;
    .locals 8
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x1

    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, "memoryFile":Landroid/os/MemoryFile;
    :try_start_0
    new-instance v3, Landroid/os/MemoryFile;

    const-string v5, "CameraService"

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2    # "memoryFile":Landroid/os/MemoryFile;
    .local v3, "memoryFile":Landroid/os/MemoryFile;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    .line 53
    const-string v5, "android.os.SharedMemory"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v0, v5}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->newInstanceOrThrow(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "sharedMemory":Ljava/lang/Object;
    if-ne p1, v7, :cond_0

    .line 57
    const-string v5, "mapReadOnly"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 61
    .local v1, "mapping":Ljava/nio/ByteBuffer;
    :goto_0
    const-string v5, "mSharedMemory"

    invoke-static {v3, v5, v4}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v5, "mMapping"

    invoke-static {v3, v5, v1}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v3

    .line 67
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "mapping":Ljava/nio/ByteBuffer;
    .end local v3    # "memoryFile":Landroid/os/MemoryFile;
    .end local v4    # "sharedMemory":Ljava/lang/Object;
    .restart local v2    # "memoryFile":Landroid/os/MemoryFile;
    :goto_1
    return-object v2

    .line 59
    .end local v2    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v4    # "sharedMemory":Ljava/lang/Object;
    :cond_0
    const-string v5, "mapReadWrite"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1    # "mapping":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 63
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "mapping":Ljava/nio/ByteBuffer;
    .end local v3    # "memoryFile":Landroid/os/MemoryFile;
    .end local v4    # "sharedMemory":Ljava/lang/Object;
    .restart local v2    # "memoryFile":Landroid/os/MemoryFile;
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v2    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v3    # "memoryFile":Landroid/os/MemoryFile;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "memoryFile":Landroid/os/MemoryFile;
    .restart local v2    # "memoryFile":Landroid/os/MemoryFile;
    goto :goto_1
.end method
