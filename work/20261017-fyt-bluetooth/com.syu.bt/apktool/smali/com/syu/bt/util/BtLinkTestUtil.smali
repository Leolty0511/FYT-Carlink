.class public Lcom/syu/bt/util/BtLinkTestUtil;
.super Ljava/lang/Object;
.source "BtLinkTestUtil.java"


# static fields
.field private static mInstance:Lcom/syu/bt/util/BtLinkTestUtil;


# instance fields
.field private TAG:Ljava/lang/String;

.field private TESTFILE:Ljava/lang/String;

.field private TEST_PATH:[Ljava/lang/String;

.field private fileData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "bttest"

    iput-object v0, p0, Lcom/syu/bt/util/BtLinkTestUtil;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "BTAddr.txt"

    iput-object v0, p0, Lcom/syu/bt/util/BtLinkTestUtil;->TESTFILE:Ljava/lang/String;

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/external_sd0/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/mnt/external_sd1/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 19
    const-string v2, "/mnt/usb_storage1/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/mnt/usb_storage1/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/mnt/usb_storage2/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 20
    const-string v2, "/mnt/usb_storage3/"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/mnt/usb_storage4/"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/syu/bt/util/BtLinkTestUtil;->TEST_PATH:[Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/util/BtLinkTestUtil;->fileData:Ljava/lang/String;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/util/BtLinkTestUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/syu/bt/util/BtLinkTestUtil;->fileData:Ljava/lang/String;

    return-object v0
.end method

.method private checkTestFileExist()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    .local v4, "f":Ljava/io/File;
    const/4 v0, 0x0

    .line 35
    .local v0, "bFound":Z
    const/4 v1, 0x0

    .line 36
    .local v1, "bufReader":Ljava/io/BufferedReader;
    iget-object v8, p0, Lcom/syu/bt/util/BtLinkTestUtil;->TEST_PATH:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-lt v7, v9, :cond_2

    .line 44
    :goto_1
    if-eqz v0, :cond_1

    .line 46
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .local v2, "bufReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/syu/bt/util/BtLinkTestUtil;->fileData:Ljava/lang/String;

    .line 48
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-eqz v2, :cond_5

    .line 54
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .line 60
    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    const/4 v6, 0x1

    .line 62
    :cond_1
    return v6

    .line 36
    :cond_2
    aget-object v5, v8, v7

    .line 37
    .local v5, "str":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    .end local v4    # "f":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/syu/bt/util/BtLinkTestUtil;->TESTFILE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .restart local v4    # "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_1

    .line 36
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 49
    .end local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    if-eqz v1, :cond_0

    .line 54
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 55
    :catch_1
    move-exception v3

    .line 56
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 51
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 52
    :goto_4
    if-eqz v1, :cond_4

    .line 54
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 59
    :cond_4
    :goto_5
    throw v6

    .line 55
    :catch_2
    move-exception v3

    .line 56
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 55
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "bufReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 56
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    move-object v1, v2

    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 51
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 49
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getInstance()Lcom/syu/bt/util/BtLinkTestUtil;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/syu/bt/util/BtLinkTestUtil;->mInstance:Lcom/syu/bt/util/BtLinkTestUtil;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/syu/bt/util/BtLinkTestUtil;

    invoke-direct {v0}, Lcom/syu/bt/util/BtLinkTestUtil;-><init>()V

    sput-object v0, Lcom/syu/bt/util/BtLinkTestUtil;->mInstance:Lcom/syu/bt/util/BtLinkTestUtil;

    .line 29
    :cond_0
    sget-object v0, Lcom/syu/bt/util/BtLinkTestUtil;->mInstance:Lcom/syu/bt/util/BtLinkTestUtil;

    return-object v0
.end method


# virtual methods
.method public testLink()V
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/syu/bt/util/BtLinkTestUtil;->checkTestFileExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/syu/bt/util/BtLinkTestUtil;->fileData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/syu/bt/util/BtLinkTestUtil$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/util/BtLinkTestUtil$1;-><init>(Lcom/syu/bt/util/BtLinkTestUtil;)V

    .line 77
    const-wide/16 v2, 0xc8

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    :cond_0
    return-void
.end method
