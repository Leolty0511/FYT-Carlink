.class public final Landroid/os/SharedMemory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SharedMemory$MemoryRegistration;,
        Landroid/os/SharedMemory$Unmapper;,
        Landroid/os/SharedMemory$Closer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROT_MASK:I


# instance fields
.field private mCleaner:Lsun/misc/Cleaner;

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

.field private final mSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    .line 2
    .line 3
    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    sget v1, Landroid/system/OsConstants;->PROT_EXEC:I

    .line 7
    .line 8
    or-int/2addr v0, v1

    .line 9
    sget v1, Landroid/system/OsConstants;->PROT_NONE:I

    .line 10
    .line 11
    or-int/2addr v0, v1

    .line 12
    sput v0, Landroid/os/SharedMemory;->PROT_MASK:I

    .line 13
    .line 14
    new-instance v0, Landroid/os/SharedMemory$1;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/SharedMemory$1;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 5
    invoke-static {p1}, Landroid/os/SharedMemory;->nGetSize(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/os/SharedMemory;->mSize:I

    if-lez v0, :cond_0

    .line 6
    new-instance v1, Landroid/os/SharedMemory$MemoryRegistration;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(ILandroid/os/SharedMemory$1;)V

    iput-object v1, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    .line 7
    new-instance v0, Landroid/os/SharedMemory$Closer;

    invoke-direct {v0, p1, v1, v2}, Landroid/os/SharedMemory$Closer;-><init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$1;)V

    invoke-static {p1, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object p1

    iput-object p1, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FileDescriptor is not a valid ashmem fd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to create SharedMemory from closed FileDescriptor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to create SharedMemory from a null FileDescriptor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private checkOpen()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "SharedMemory is closed"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static create(Ljava/lang/String;I)Landroid/os/SharedMemory;
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/os/SharedMemory;

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/os/SharedMemory;->nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p1, "Size must be greater than zero"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private static native nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;
.end method

.method private static native nGetSize(Ljava/io/FileDescriptor;)I
.end method

.method private static native nSetProt(Ljava/io/FileDescriptor;I)I
.end method

.method public static unmap(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "ByteBuffer wasn\'t created by #map(int, int, int); can\'t unmap"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method private static validateProt(I)V
    .locals 1

    .line 1
    sget v0, Landroid/os/SharedMemory;->PROT_MASK:I

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Invalid prot value"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFd()I
    .locals 1

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    .line 5
    .line 6
    return v0
.end method

.method public map(III)Ljava/nio/ByteBuffer;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v7, p3

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 11
    .line 12
    .line 13
    if-ltz v1, :cond_3

    .line 14
    .line 15
    if-lez v7, :cond_2

    .line 16
    .line 17
    add-int v2, v1, v7

    .line 18
    .line 19
    iget v3, v0, Landroid/os/SharedMemory;->mSize:I

    .line 20
    .line 21
    if-gt v2, v3, :cond_1

    .line 22
    .line 23
    const-wide/16 v8, 0x0

    .line 24
    .line 25
    int-to-long v10, v7

    .line 26
    sget v13, Landroid/system/OsConstants;->MAP_SHARED:I

    .line 27
    .line 28
    iget-object v14, v0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 29
    .line 30
    int-to-long v1, v1

    .line 31
    move/from16 v12, p1

    .line 32
    .line 33
    move-wide v15, v1

    .line 34
    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    .line 39
    .line 40
    and-int v1, p1, v1

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    move v10, v1

    .line 48
    new-instance v11, Landroid/os/SharedMemory$Unmapper;

    .line 49
    .line 50
    iget-object v1, v0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/SharedMemory$MemoryRegistration;->acquire()Landroid/os/SharedMemory$MemoryRegistration;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/4 v6, 0x0

    .line 57
    move-object v1, v11

    .line 58
    move-wide v2, v8

    .line 59
    move/from16 v4, p3

    .line 60
    .line 61
    invoke-direct/range {v1 .. v6}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$1;)V

    .line 62
    .line 63
    .line 64
    new-instance v12, Ljava/nio/DirectByteBuffer;

    .line 65
    .line 66
    iget-object v5, v0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 67
    .line 68
    move-object v1, v12

    .line 69
    move/from16 v2, p3

    .line 70
    .line 71
    move-wide v3, v8

    .line 72
    move-object v6, v11

    .line 73
    move v7, v10

    .line 74
    invoke-direct/range {v1 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    .line 75
    .line 76
    .line 77
    return-object v12

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string/jumbo v2, "offset + length must not exceed getSize()"

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string v2, "Length must be > 0"

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v1

    .line 95
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string v2, "Offset must be >= 0"

    .line 98
    .line 99
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v1
.end method

.method public mapReadOnly()Ljava/nio/ByteBuffer;
    .locals 3

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mapReadWrite()Ljava/nio/ByteBuffer;
    .locals 3

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public setProtect(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/os/SharedMemory;->nSetProt(Ljava/io/FileDescriptor;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
