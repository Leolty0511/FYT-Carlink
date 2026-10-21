.class final Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryMappedFileDataSource"
.end annotation


# static fields
.field private static final MEMORY_PAGE_SIZE_BYTES:J

.field private static final OS:Llibcore/io/Os;


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;

.field private final mFilePosition:J

.field private final mSize:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    .line 2
    .line 3
    sput-object v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    .line 4
    .line 5
    sget v1, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    .line 6
    .line 7
    invoke-interface {v0, v1}, Llibcore/io/Os;->sysconf(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sput-wide v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 5
    .line 6
    iput-wide p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFilePosition:J

    .line 7
    .line 8
    iput-wide p4, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mSize:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-wide v2, v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFilePosition:J

    .line 6
    .line 7
    add-long v2, v2, p2

    .line 8
    .line 9
    sget-wide v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    .line 10
    .line 11
    div-long v6, v2, v4

    .line 12
    .line 13
    mul-long v16, v6, v4

    .line 14
    .line 15
    sub-long v2, v2, v16

    .line 16
    .line 17
    long-to-int v2, v2

    .line 18
    add-int v3, p4, v2

    .line 19
    .line 20
    int-to-long v5, v3

    .line 21
    const-wide/16 v18, 0x0

    .line 22
    .line 23
    :try_start_0
    sget-object v8, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    .line 24
    .line 25
    const-wide/16 v9, 0x0

    .line 26
    .line 27
    sget v13, Landroid/system/OsConstants;->PROT_READ:I

    .line 28
    .line 29
    sget v3, Landroid/system/OsConstants;->MAP_SHARED:I

    .line 30
    .line 31
    sget v4, Landroid/system/OsConstants;->MAP_POPULATE:I

    .line 32
    .line 33
    or-int v14, v3, v4

    .line 34
    .line 35
    iget-object v15, v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 36
    .line 37
    move-wide v11, v5

    .line 38
    invoke-interface/range {v8 .. v17}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v10
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    new-instance v12, Ljava/nio/DirectByteBuffer;

    .line 43
    .line 44
    int-to-long v2, v2

    .line 45
    add-long v7, v10, v2

    .line 46
    .line 47
    iget-object v2, v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v13, 0x1

    .line 51
    move-object v3, v12

    .line 52
    move/from16 v4, p4

    .line 53
    .line 54
    move-wide v14, v5

    .line 55
    move-wide v5, v7

    .line 56
    move-object v7, v2

    .line 57
    move-object v8, v9

    .line 58
    move v9, v13

    .line 59
    :try_start_2
    invoke-direct/range {v3 .. v9}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    .line 60
    .line 61
    .line 62
    array-length v2, v0

    .line 63
    const/4 v3, 0x0

    .line 64
    move v4, v3

    .line 65
    :goto_0
    if-ge v4, v2, :cond_0

    .line 66
    .line 67
    aget-object v5, v0, v4

    .line 68
    .line 69
    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v12}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    cmp-long v0, v10, v18

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    :try_start_3
    sget-object v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    .line 83
    .line 84
    invoke-interface {v0, v10, v11, v14, v15}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    .line 85
    .line 86
    .line 87
    :catch_0
    :cond_1
    return-void

    .line 88
    :catch_1
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    move-wide v14, v5

    .line 92
    goto :goto_2

    .line 93
    :catch_2
    move-exception v0

    .line 94
    move-wide v14, v5

    .line 95
    goto :goto_1

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    move-wide v14, v5

    .line 98
    move-wide/from16 v10, v18

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_3
    move-exception v0

    .line 102
    move-wide v14, v5

    .line 103
    move-wide/from16 v10, v18

    .line 104
    .line 105
    :goto_1
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v4, "Failed to mmap "

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, " bytes"

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 133
    :catchall_2
    move-exception v0

    .line 134
    :goto_2
    cmp-long v2, v10, v18

    .line 135
    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    :try_start_5
    sget-object v2, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    .line 139
    .line 140
    invoke-interface {v2, v10, v11, v14, v15}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_4

    .line 141
    .line 142
    .line 143
    :catch_4
    :cond_2
    throw v0
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
