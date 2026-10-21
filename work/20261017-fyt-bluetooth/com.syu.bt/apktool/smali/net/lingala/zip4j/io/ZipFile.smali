.class public Lnet/lingala/zip4j/io/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# instance fields
.field private context:Landroid/content/Context;

.field private fileHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/lingala/zip4j/io/ZipFileHeader;",
            ">;"
        }
    .end annotation
.end field

.field private strAsset:Ljava/lang/String;

.field private strZipFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strAsset"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/io/ZipFile;->strAsset:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lnet/lingala/zip4j/io/ZipFile;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lnet/lingala/zip4j/io/ZipFile;->strAsset:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/io/ZipFile;->strAsset:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/ZipFile;->strZipFile:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getFileHeaders()Ljava/util/HashMap;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/lingala/zip4j/io/ZipFileHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const/16 v23, 0x0

    .line 45
    .local v23, "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/io/ZipFile;->strAsset:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 46
    new-instance v24, Lnet/lingala/zip4j/io/ZipIn2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/io/ZipFile;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/io/ZipFile;->strAsset:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Lnet/lingala/zip4j/io/ZipIn2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .end local v23    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    .local v24, "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    move-object/from16 v23, v24

    .line 50
    .end local v24    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    .restart local v23    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    :goto_0
    if-eqz v23, :cond_3

    .line 51
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v7, v0, [B

    .line 52
    .local v7, "ebs":[B
    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/io/ZipIn;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x16

    sub-long v18, v26, v28

    .line 53
    .local v18, "pos":J
    const/4 v5, 0x0

    .local v5, "counter":I
    move-wide/from16 v20, v18

    .line 55
    .end local v18    # "pos":J
    .local v20, "pos":J
    :goto_1
    const-wide/16 v26, 0x1

    sub-long v18, v20, v26

    .end local v20    # "pos":J
    .restart local v18    # "pos":J
    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipIn;->seek(J)V

    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/io/ZipIn;->readLeInt([B)J

    move-result-wide v26

    sget-wide v28, Lnet/lingala/zip4j/io/ZipIn;->ENDSIG:J

    cmp-long v25, v26, v28

    if-eqz v25, :cond_0

    const/16 v25, 0xbb8

    .line 54
    move/from16 v0, v25

    if-le v5, v0, :cond_8

    .line 59
    :cond_0
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/io/ZipIn;->readLongLittleEndian([B)J

    move-result-wide v26

    sget-wide v28, Lnet/lingala/zip4j/io/ZipIn;->ENDSIG:J

    cmp-long v25, v26, v28

    if-eqz v25, :cond_2

    .line 60
    new-instance v25, Ljava/lang/Exception;

    const-string v26, "zip headers not found. probably not a zip file"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v5    # "counter":I
    .end local v7    # "ebs":[B
    .end local v18    # "pos":J
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    .line 129
    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/io/ZipIn;->close()V

    .line 130
    throw v25

    .line 48
    :cond_1
    :try_start_2
    new-instance v24, Lnet/lingala/zip4j/io/ZipIn1;

    new-instance v25, Ljava/io/RandomAccessFile;

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/io/ZipFile;->strZipFile:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v27, "r"

    invoke-direct/range {v25 .. v27}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v24 .. v25}, Lnet/lingala/zip4j/io/ZipIn1;-><init>(Ljava/io/RandomAccessFile;)V

    .end local v23    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    .restart local v24    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    move-object/from16 v23, v24

    .end local v24    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    .restart local v23    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    goto :goto_0

    .line 62
    .restart local v5    # "counter":I
    .restart local v7    # "ebs":[B
    .restart local v18    # "pos":J
    :cond_2
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 63
    .local v14, "intBuff":[B
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 64
    .local v22, "shortBuff":[B
    const/4 v4, 0x0

    .line 65
    .local v4, "centralDirEntryCount":I
    const-wide/16 v16, 0x0

    .line 67
    .local v16, "offSetStartCentralDir":J
    const-wide/16 v26, 0x6

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipIn;->skip(J)V

    .line 68
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 69
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v4

    .line 71
    const-wide/16 v26, 0x4

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipIn;->skip(J)V

    .line 72
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 73
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->readLongLittleEndian([B)J

    move-result-wide v16

    .line 75
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v9, "fileHeaderList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipIn;->seek(J)V

    .line 77
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-lt v13, v4, :cond_4

    .line 124
    move-object/from16 v0, p0

    iput-object v9, v0, Lnet/lingala/zip4j/io/ZipFile;->fileHeaders:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .end local v4    # "centralDirEntryCount":I
    .end local v5    # "counter":I
    .end local v7    # "ebs":[B
    .end local v9    # "fileHeaderList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .end local v13    # "i":I
    .end local v14    # "intBuff":[B
    .end local v16    # "offSetStartCentralDir":J
    .end local v18    # "pos":J
    .end local v22    # "shortBuff":[B
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/io/ZipIn;->close()V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/io/ZipFile;->fileHeaders:Ljava/util/HashMap;

    move-object/from16 v25, v0

    return-object v25

    .line 78
    .restart local v4    # "centralDirEntryCount":I
    .restart local v5    # "counter":I
    .restart local v7    # "ebs":[B
    .restart local v9    # "fileHeaderList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .restart local v13    # "i":I
    .restart local v14    # "intBuff":[B
    .restart local v16    # "offSetStartCentralDir":J
    .restart local v18    # "pos":J
    .restart local v22    # "shortBuff":[B
    :cond_4
    :try_start_3
    new-instance v8, Lnet/lingala/zip4j/io/ZipFileHeader;

    invoke-direct {v8}, Lnet/lingala/zip4j/io/ZipFileHeader;-><init>()V

    .line 79
    .local v8, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 80
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->readLongLittleEndian([B)J

    move-result-wide v26

    sget-wide v28, Lnet/lingala/zip4j/io/ZipIn;->CENSIG:J

    cmp-long v25, v26, v28

    if-eqz v25, :cond_5

    .line 81
    new-instance v25, Ljava/lang/Exception;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Expected central directory entry not found (#"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v27, v13, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 83
    :cond_5
    const/4 v12, 0x0

    .line 84
    .local v12, "fileNameLength":I
    const/4 v15, 0x0

    .line 86
    .local v15, "lenSkip":I
    const-wide/16 v26, 0x6

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipIn;->skip(J)V

    .line 87
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 88
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lnet/lingala/zip4j/io/ZipFileHeader;->setCompressionMethod(I)V

    .line 90
    const-wide/16 v26, 0x8

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipIn;->skip(J)V

    .line 91
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 92
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->readLongLittleEndian([B)J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Lnet/lingala/zip4j/io/ZipFileHeader;->setCompressedSize(J)V

    .line 94
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 95
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->readLongLittleEndian([B)J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Lnet/lingala/zip4j/io/ZipFileHeader;->setUncompressedSize(J)V

    .line 97
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 98
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v12

    .line 100
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 101
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v25

    add-int v15, v15, v25

    .line 103
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 104
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v25

    add-int v15, v15, v25

    .line 106
    const-wide/16 v26, 0x8

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipIn;->skip(J)V

    .line 107
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 108
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/io/ZipIn;->readLongLittleEndian([B)J

    move-result-wide v26

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Lnet/lingala/zip4j/io/ZipFileHeader;->setOffset(J)V

    .line 110
    const/4 v10, 0x0

    .line 111
    .local v10, "fileName":Ljava/lang/String;
    if-lez v12, :cond_6

    .line 112
    new-array v11, v12, [B

    .line 113
    .local v11, "fileNameBuf":[B
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 114
    new-instance v10, Ljava/lang/String;

    .end local v10    # "fileName":Ljava/lang/String;
    const-string v25, "gbk"

    move-object/from16 v0, v25

    invoke-direct {v10, v11, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 117
    .end local v11    # "fileNameBuf":[B
    .restart local v10    # "fileName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v8, v10}, Lnet/lingala/zip4j/io/ZipFileHeader;->setFileName(Ljava/lang/String;)V

    .line 118
    if-lez v15, :cond_7

    .line 119
    int-to-long v0, v15

    move-wide/from16 v26, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipIn;->skip(J)V

    .line 121
    :cond_7
    invoke-virtual {v8}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .end local v4    # "centralDirEntryCount":I
    .end local v8    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v9    # "fileHeaderList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v12    # "fileNameLength":I
    .end local v13    # "i":I
    .end local v14    # "intBuff":[B
    .end local v15    # "lenSkip":I
    .end local v16    # "offSetStartCentralDir":J
    .end local v22    # "shortBuff":[B
    :cond_8
    move-wide/from16 v20, v18

    .end local v18    # "pos":J
    .restart local v20    # "pos":J
    goto/16 :goto_1
.end method

.method public getInputStream(Lnet/lingala/zip4j/io/ZipFileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;
    .locals 24
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/io/ZipFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v4, 0x0

    .line 137
    .local v4, "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/io/ZipFile;->strAsset:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    new-instance v4, Lnet/lingala/zip4j/io/ZipIn2;

    .end local v4    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/io/ZipFile;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/lingala/zip4j/io/ZipFile;->strAsset:Ljava/lang/String;

    invoke-direct {v4, v3, v10}, Lnet/lingala/zip4j/io/ZipIn2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    .restart local v4    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getOffset()J

    move-result-wide v20

    .line 144
    .local v20, "locHdrOffset":J
    const-wide/16 v10, 0x0

    cmp-long v3, v20, v10

    if-gez v3, :cond_1

    .line 145
    new-instance v3, Ljava/lang/Exception;

    const-string v10, "invalid local header offset"

    invoke-direct {v3, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v20    # "locHdrOffset":J
    :catch_0
    move-exception v13

    .line 212
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Lnet/lingala/zip4j/io/ZipIn;->close()V

    .line 213
    const-string v3, "HJT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "e2:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    throw v13

    .line 140
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/io/ZipIn1;

    .end local v4    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/lingala/zip4j/io/ZipFile;->strZipFile:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v11, "r"

    invoke-direct {v3, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Lnet/lingala/zip4j/io/ZipIn1;-><init>(Ljava/io/RandomAccessFile;)V

    .restart local v4    # "zipIn":Lnet/lingala/zip4j/io/ZipIn;
    goto :goto_0

    .line 147
    .restart local v20    # "locHdrOffset":J
    :cond_1
    const/4 v15, 0x0

    .line 148
    .local v15, "fileNameLength":I
    const/4 v14, 0x0

    .line 149
    .local v14, "extraFieldLength":I
    const/4 v3, 0x2

    :try_start_1
    new-array v0, v3, [B

    move-object/from16 v19, v0

    .line 150
    .local v19, "shortBuff":[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 151
    .local v18, "intBuff":[B
    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->seek(J)V

    .line 152
    new-instance v5, Lnet/lingala/zip4j/io/ZipFileHeader;

    invoke-direct {v5}, Lnet/lingala/zip4j/io/ZipFileHeader;-><init>()V

    .line 153
    .local v5, "localFileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 154
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->readLongLittleEndian([B)J

    move-result-wide v10

    sget-wide v22, Lnet/lingala/zip4j/io/ZipIn;->LOCSIG:J

    cmp-long v3, v10, v22

    if-eqz v3, :cond_2

    .line 155
    new-instance v3, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "invalid local header signature for file: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 159
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v17

    .line 160
    .local v17, "iExtra":I
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 161
    const/4 v3, 0x0

    aget-byte v3, v19, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lnet/lingala/zip4j/io/ZipFileHeader;->setEncrypted(Z)V

    .line 164
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 165
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v3

    invoke-virtual {v5, v3}, Lnet/lingala/zip4j/io/ZipFileHeader;->setCompressionMethod(I)V

    .line 167
    const-wide/16 v10, 0x8

    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/io/ZipIn;->skip(J)V

    .line 168
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 169
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->readLongLittleEndian([B)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lnet/lingala/zip4j/io/ZipFileHeader;->setCompressedSize(J)V

    .line 171
    const-wide/16 v10, 0x4

    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/io/ZipIn;->skip(J)V

    .line 172
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 173
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v15

    .line 175
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->read([B)I

    .line 176
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lnet/lingala/zip4j/io/ZipIn;->readShortLittleEndian([B)I

    move-result v14

    .line 178
    const-wide/16 v10, 0x1e

    add-long v10, v10, v20

    int-to-long v0, v15

    move-wide/from16 v22, v0

    add-long v10, v10, v22

    int-to-long v0, v14

    move-wide/from16 v22, v0

    add-long v10, v10, v22

    invoke-virtual {v5, v10, v11}, Lnet/lingala/zip4j/io/ZipFileHeader;->setOffset(J)V

    .line 179
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/ZipFileHeader;->getCompressedSize()J

    move-result-wide v10

    const-wide/16 v22, 0x0

    cmp-long v3, v10, v22

    if-gtz v3, :cond_4

    .line 180
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getCompressedSize()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lnet/lingala/zip4j/io/ZipFileHeader;->setCompressedSize(J)V

    .line 182
    :cond_4
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/ZipFileHeader;->getCompressionMethod()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getCompressionMethod()I

    move-result v10

    if-eq v3, v10, :cond_5

    .line 183
    new-instance v3, Ljava/lang/Exception;

    const-string v10, "local header and file header do not match"

    invoke-direct {v3, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_5
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/ZipFileHeader;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 186
    const/16 v3, 0xc

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 187
    .local v16, "headerBytes":[B
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/ZipFileHeader;->getOffset()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/io/ZipIn;->seek(J)V

    .line 188
    const/4 v3, 0x0

    const/16 v10, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v3, v10}, Lnet/lingala/zip4j/io/ZipIn;->read([BII)I

    .line 189
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v3, v1}, Lnet/lingala/zip4j/io/ZipFileHeader;->initKeys([BLjava/lang/String;I)V

    .line 192
    .end local v16    # "headerBytes":[B
    :cond_6
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/ZipFileHeader;->getCompressedSize()J

    move-result-wide v8

    .line 193
    .local v8, "comprSize":J
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/ZipFileHeader;->getOffset()J

    move-result-wide v6

    .line 194
    .local v6, "offsetStartOfData":J
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/ZipFileHeader;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 195
    const-wide/16 v10, 0xc

    sub-long/2addr v8, v10

    .line 196
    const-wide/16 v10, 0xc

    add-long/2addr v6, v10

    .line 199
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getCompressionMethod()I

    move-result v2

    .line 200
    .local v2, "compressionMethod":I
    invoke-virtual {v4, v6, v7}, Lnet/lingala/zip4j/io/ZipIn;->seek(J)V

    .line 201
    sparse-switch v2, :sswitch_data_0

    .line 209
    new-instance v3, Ljava/lang/Exception;

    const-string v10, "compression type not supported"

    invoke-direct {v3, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :sswitch_0
    new-instance v3, Lnet/lingala/zip4j/io/ZipInputStream;

    .line 204
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getUncompressedSize()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 203
    invoke-direct/range {v3 .. v12}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/ZipIn;Lnet/lingala/zip4j/io/ZipFileHeader;JJJZ)V

    .line 206
    :goto_1
    return-object v3

    :sswitch_1
    new-instance v3, Lnet/lingala/zip4j/io/ZipInputStream;

    .line 207
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getUncompressedSize()J

    move-result-wide v10

    const/4 v12, 0x1

    .line 206
    invoke-direct/range {v3 .. v12}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/ZipIn;Lnet/lingala/zip4j/io/ZipFileHeader;JJJZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
