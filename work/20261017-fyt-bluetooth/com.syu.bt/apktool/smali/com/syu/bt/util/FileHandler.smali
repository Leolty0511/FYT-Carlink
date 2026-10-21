.class public Lcom/syu/bt/util/FileHandler;
.super Ljava/lang/Object;
.source "FileHandler.java"


# static fields
.field public static final ProgressType_Copy:I = 0x1

.field public static final ProgressType_Delete:I = 0x2

.field public static final SIZE_PERTIME:I = 0x8000

.field private static mInstance:Lcom/syu/bt/util/FileHandler;


# instance fields
.field public bNoSpace:Z

.field public mIndexCopy:I

.field public mIsAction:Z

.field public mListCopyFailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mListDelFailFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public mListDelFailFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public mNumChildFile:J

.field public mNumChildFolder:J

.field public mNumFile:J

.field public mNumFolder:J

.field public mNumPathParent:J

.field public mNumPopExistDlg:I

.field public mNumStyle:J

.field public mPathParentLast:Ljava/lang/String;

.field public mPathSrc:Ljava/lang/String;

.field public mProgressType:I

.field public mSizeCurrent:J

.field public mSizeTotal:J

.field public mStartTimeMillis:J

.field public mStartTimeMillisReal:J

.field public mStyleLast:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v3, p0, Lcom/syu/bt/util/FileHandler;->mProgressType:I

    .line 24
    iput-boolean v3, p0, Lcom/syu/bt/util/FileHandler;->mIsAction:Z

    .line 25
    iput-boolean v2, p0, Lcom/syu/bt/util/FileHandler;->bNoSpace:Z

    .line 27
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mSizeCurrent:J

    .line 28
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mSizeTotal:J

    .line 30
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mNumStyle:J

    .line 33
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mNumPathParent:J

    .line 36
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mNumFolder:J

    .line 37
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mNumFile:J

    .line 38
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mNumChildFolder:J

    .line 39
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mNumChildFile:J

    .line 40
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mStartTimeMillis:J

    .line 41
    iput-wide v0, p0, Lcom/syu/bt/util/FileHandler;->mStartTimeMillisReal:J

    .line 42
    iput v2, p0, Lcom/syu/bt/util/FileHandler;->mIndexCopy:I

    .line 43
    iput v2, p0, Lcom/syu/bt/util/FileHandler;->mNumPopExistDlg:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/util/FileHandler;->mListDelFailFile:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/util/FileHandler;->mListDelFailFolder:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/util/FileHandler;->mListCopyFailMap:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/syu/bt/util/FileHandler;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/syu/bt/util/FileHandler;->mInstance:Lcom/syu/bt/util/FileHandler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/syu/bt/util/FileHandler;

    invoke-direct {v0}, Lcom/syu/bt/util/FileHandler;-><init>()V

    sput-object v0, Lcom/syu/bt/util/FileHandler;->mInstance:Lcom/syu/bt/util/FileHandler;

    .line 55
    :cond_0
    sget-object v0, Lcom/syu/bt/util/FileHandler;->mInstance:Lcom/syu/bt/util/FileHandler;

    return-object v0
.end method


# virtual methods
.method public RecursionDeleteFile(Ljava/io/File;ZZ)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bInDelHandler"    # Z
    .param p3, "bSaveFailList"    # Z

    .prologue
    .line 98
    iget-boolean v3, p0, Lcom/syu/bt/util/FileHandler;->mIsAction:Z

    if-nez v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 102
    .local v0, "bIsFolder":Z
    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 104
    .local v1, "childFile":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 105
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_3

    .line 111
    .end local v1    # "childFile":[Ljava/io/File;
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    if-eqz p3, :cond_0

    .line 113
    if-eqz v0, :cond_5

    .line 114
    iget-object v3, p0, Lcom/syu/bt/util/FileHandler;->mListDelFailFolder:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .restart local v1    # "childFile":[Ljava/io/File;
    :cond_3
    aget-object v2, v1, v3

    .line 106
    .local v2, "f":Ljava/io/File;
    invoke-virtual {p0, v2, p2, p3}, Lcom/syu/bt/util/FileHandler;->RecursionDeleteFile(Ljava/io/File;ZZ)V

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "childFile":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :cond_4
    if-eqz p2, :cond_2

    .line 109
    iget-wide v4, p0, Lcom/syu/bt/util/FileHandler;->mSizeCurrent:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/syu/bt/util/FileHandler;->mSizeCurrent:J

    goto :goto_2

    .line 116
    :cond_5
    iget-object v3, p0, Lcom/syu/bt/util/FileHandler;->mListDelFailFile:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 24
    .param p1, "strFileSrc"    # Ljava/lang/String;
    .param p2, "strFileDst"    # Ljava/lang/String;
    .param p3, "bSetSrc"    # Z
    .param p4, "bSaveFailList"    # Z

    .prologue
    .line 122
    if-eqz p3, :cond_0

    .line 123
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/util/FileHandler;->mPathSrc:Ljava/lang/String;

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/util/FileHandler;->mIsAction:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 126
    const/16 v20, 0x0

    .line 189
    :goto_0
    return v20

    .line 128
    :cond_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v11, "fileSrc":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_2

    .line 130
    const/16 v20, 0x2

    goto :goto_0

    .line 132
    :cond_2
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v9, "fileDst":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 134
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_3

    .line 135
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 137
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    .line 138
    .local v18, "listFiles":[Ljava/io/File;
    if-eqz v18, :cond_4

    .line 139
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 186
    .end local v16    # "i":I
    .end local v18    # "listFiles":[Ljava/io/File;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/util/FileHandler;->mIsAction:Z

    move/from16 v20, v0

    if-nez v20, :cond_12

    .line 187
    const/16 v20, 0x0

    goto :goto_0

    .line 140
    .restart local v16    # "i":I
    .restart local v18    # "listFiles":[Ljava/io/File;
    :cond_5
    aget-object v20, v18, v16

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v18, v16

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/syu/bt/util/FileHandler;->copy(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v20

    if-nez v20, :cond_6

    .line 141
    const/16 v20, 0x0

    goto :goto_0

    .line 139
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 145
    .end local v16    # "i":I
    .end local v18    # "listFiles":[Ljava/io/File;
    :cond_7
    const-string v20, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 146
    .local v17, "iPos":I
    if-lez v17, :cond_8

    .line 147
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, "pathParent":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v10, "fileParent":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_8

    .line 150
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 153
    .end local v10    # "fileParent":Ljava/io/File;
    .end local v19    # "pathParent":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    .line 154
    .local v12, "fosFrom":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 156
    .local v14, "fosTo":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v12    # "fosFrom":Ljava/io/FileInputStream;
    .local v13, "fosFrom":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    .end local v14    # "fosTo":Ljava/io/FileOutputStream;
    .local v15, "fosTo":Ljava/io/FileOutputStream;
    const v20, 0x8000

    :try_start_2
    move/from16 v0, v20

    new-array v6, v0, [B

    .line 160
    .local v6, "bt":[B
    :goto_3
    invoke-virtual {v13, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    .local v7, "c":I
    if-gtz v7, :cond_b

    .line 175
    :cond_9
    if-eqz v13, :cond_a

    .line 176
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 178
    :cond_a
    if-eqz v15, :cond_4

    .line 179
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 180
    :catch_0
    move-exception v8

    .line 181
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 161
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/util/FileHandler;->mIsAction:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 164
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 165
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/syu/bt/util/FileHandler;->mSizeCurrent:J

    move-wide/from16 v20, v0

    int-to-long v0, v7

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/syu/bt/util/FileHandler;->mSizeCurrent:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 167
    .end local v6    # "bt":[B
    .end local v7    # "c":I
    :catch_1
    move-exception v8

    move-object v14, v15

    .end local v15    # "fosTo":Ljava/io/FileOutputStream;
    .restart local v14    # "fosTo":Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 168
    .end local v13    # "fosFrom":Ljava/io/FileInputStream;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "fosFrom":Ljava/io/FileInputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    if-eqz p4, :cond_e

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/util/FileHandler;->mListCopyFailMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    if-eqz v12, :cond_c

    .line 176
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 178
    :cond_c
    if-eqz v14, :cond_d

    .line 179
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 171
    :cond_d
    :goto_5
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 180
    :catch_2
    move-exception v8

    .line 181
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 175
    :cond_e
    if-eqz v12, :cond_f

    .line 176
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 178
    :cond_f
    if-eqz v14, :cond_4

    .line 179
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 180
    :catch_3
    move-exception v8

    .line 181
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 173
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 175
    :goto_6
    if-eqz v12, :cond_10

    .line 176
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 178
    :cond_10
    if-eqz v14, :cond_11

    .line 179
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 183
    :cond_11
    :goto_7
    throw v20

    .line 180
    :catch_4
    move-exception v8

    .line 181
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 189
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "fosFrom":Ljava/io/FileInputStream;
    .end local v14    # "fosTo":Ljava/io/FileOutputStream;
    .end local v17    # "iPos":I
    :cond_12
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 173
    .restart local v13    # "fosFrom":Ljava/io/FileInputStream;
    .restart local v14    # "fosTo":Ljava/io/FileOutputStream;
    .restart local v17    # "iPos":I
    :catchall_1
    move-exception v20

    move-object v12, v13

    .end local v13    # "fosFrom":Ljava/io/FileInputStream;
    .restart local v12    # "fosFrom":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v12    # "fosFrom":Ljava/io/FileInputStream;
    .end local v14    # "fosTo":Ljava/io/FileOutputStream;
    .restart local v13    # "fosFrom":Ljava/io/FileInputStream;
    .restart local v15    # "fosTo":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v20

    move-object v14, v15

    .end local v15    # "fosTo":Ljava/io/FileOutputStream;
    .restart local v14    # "fosTo":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fosFrom":Ljava/io/FileInputStream;
    .restart local v12    # "fosFrom":Ljava/io/FileInputStream;
    goto :goto_6

    .line 167
    :catch_5
    move-exception v8

    goto :goto_4

    .end local v12    # "fosFrom":Ljava/io/FileInputStream;
    .restart local v13    # "fosFrom":Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    move-object v12, v13

    .end local v13    # "fosFrom":Ljava/io/FileInputStream;
    .restart local v12    # "fosFrom":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public delete(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bInDelHandler"    # Z
    .param p3, "bSetSrc"    # Z

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/syu/bt/util/FileHandler;->mIsAction:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 92
    iput-object p1, p0, Lcom/syu/bt/util/FileHandler;->mPathSrc:Ljava/lang/String;

    .line 94
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/syu/bt/util/FileHandler;->RecursionDeleteFile(Ljava/io/File;ZZ)V

    goto :goto_0
.end method

.method public scanFile(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "listFile":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    iget-boolean v8, p0, Lcom/syu/bt/util/FileHandler;->mIsAction:Z

    if-nez v8, :cond_1

    .line 84
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 63
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 65
    .local v0, "bIsFolder":Z
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 67
    .local v1, "childFile":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v8, v1

    if-lez v8, :cond_0

    .line 68
    array-length v9, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v3, v1, v8

    .line 69
    .local v3, "f":Ljava/io/File;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .local v2, "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "filePath":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 73
    .local v6, "iPosName":I
    if-ltz v6, :cond_2

    .line 74
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "ringName":Ljava/lang/String;
    const/16 v10, 0x290c

    invoke-virtual {v2, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    .end local v7    # "ringName":Ljava/lang/String;
    :cond_2
    const/16 v10, 0x290d

    invoke-virtual {v2, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
