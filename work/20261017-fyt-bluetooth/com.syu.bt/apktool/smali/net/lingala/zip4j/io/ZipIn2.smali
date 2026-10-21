.class public Lnet/lingala/zip4j/io/ZipIn2;
.super Lnet/lingala/zip4j/io/ZipIn;
.source "ZipIn2.java"


# static fields
.field static mFieldMarkPos:Ljava/lang/reflect/Field;


# instance fields
.field inputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field lenInputStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lnet/lingala/zip4j/io/ZipIn2;->mFieldMarkPos:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strAsset"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lnet/lingala/zip4j/io/ZipIn;-><init>()V

    .line 33
    iput-object p2, p0, Lnet/lingala/zip4j/io/ZipIn2;->strAsset:Ljava/lang/String;

    .line 35
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 36
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 37
    iget-object v1, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->available()I

    move-result v1

    iput v1, p0, Lnet/lingala/zip4j/io/ZipIn2;->lenInputStream:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    sget-object v1, Lnet/lingala/zip4j/io/ZipIn2;->mFieldMarkPos:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 44
    :try_start_1
    const-class v1, Landroid/content/res/AssetManager$AssetInputStream;

    const-string v2, "mMarkPos"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lnet/lingala/zip4j/io/ZipIn2;->mFieldMarkPos:Ljava/lang/reflect/Field;

    .line 45
    sget-object v1, Lnet/lingala/zip4j/io/ZipIn2;->mFieldMarkPos:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    :cond_0
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v1

    goto :goto_1

    .line 38
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 98
    return-void
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager$AssetInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public readLeInt([B)J
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/AssetManager$AssetInputStream;->read([BII)I

    .line 92
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/ZipIn2;->readLongLittleEndian([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public seek(J)V
    .locals 5
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget v1, p0, Lnet/lingala/zip4j/io/ZipIn2;->lenInputStream:I

    iget-object v2, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v2}, Landroid/content/res/AssetManager$AssetInputStream;->available()I

    move-result v2

    sub-int v0, v1, v2

    .line 65
    .local v0, "curPos":I
    int-to-long v2, v0

    cmp-long v1, v2, p1

    if-gtz v1, :cond_1

    .line 66
    int-to-long v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Lnet/lingala/zip4j/io/ZipIn2;->skip(J)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_0
    sget-object v1, Lnet/lingala/zip4j/io/ZipIn2;->mFieldMarkPos:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lnet/lingala/zip4j/io/ZipIn2;->mFieldMarkPos:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public skip(J)V
    .locals 7
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v4, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v4, p1, p2}, Landroid/content/res/AssetManager$AssetInputStream;->skip(J)J

    move-result-wide v2

    .line 55
    .local v2, "nSkip":J
    sub-long v0, p1, v2

    .line 56
    .local v0, "dN":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 60
    return-void

    .line 57
    :cond_0
    iget-object v4, p0, Lnet/lingala/zip4j/io/ZipIn2;->inputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v4, v0, v1}, Landroid/content/res/AssetManager$AssetInputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 58
    sub-long v0, p1, v2

    goto :goto_0
.end method
