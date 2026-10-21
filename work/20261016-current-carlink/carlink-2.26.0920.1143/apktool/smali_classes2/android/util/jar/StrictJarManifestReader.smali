.class Landroid/util/jar/StrictJarManifestReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final attributeNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation
.end field

.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private final endOfMainSection:I

.field private name:Ljava/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>([BLjava/util/jar/Attributes;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 12
    .line 13
    const/16 v1, 0x50

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 22
    .line 23
    iput-object p1, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    .line 24
    .line 25
    :goto_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 32
    .line 33
    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p2, p1, v0}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget p1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 40
    .line 41
    iput p1, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    .line 42
    .line 43
    return-void
.end method

.method private readHeader()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-le v0, v2, :cond_0

    .line 6
    .line 7
    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readName()V

    .line 11
    .line 12
    .line 13
    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readValue()V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    move v1, v2

    .line 23
    :cond_1
    return v1
.end method

.method private readName()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 4
    .line 5
    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-ge v1, v3, :cond_3

    .line 9
    .line 10
    add-int/lit8 v3, v1, 0x1

    .line 11
    .line 12
    iput v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 13
    .line 14
    aget-byte v1, v2, v1

    .line 15
    .line 16
    const/16 v4, 0x3a

    .line 17
    .line 18
    if-eq v1, v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 22
    .line 23
    sub-int/2addr v3, v0

    .line 24
    const/4 v4, 0x1

    .line 25
    sub-int/2addr v3, v4

    .line 26
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-direct {v1, v2, v0, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    .line 32
    .line 33
    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 34
    .line 35
    add-int/lit8 v3, v2, 0x1

    .line 36
    .line 37
    iput v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 38
    .line 39
    aget-byte v0, v0, v2

    .line 40
    .line 41
    const/16 v2, 0x20

    .line 42
    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    :try_start_0
    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/jar/Attributes$Name;

    .line 52
    .line 53
    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    new-instance v0, Ljava/util/jar/Attributes$Name;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 63
    .line 64
    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/io/IOException;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 82
    .line 83
    new-array v2, v4, [Ljava/lang/Object;

    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    aput-object v1, v2, v3

    .line 87
    .line 88
    const-string v1, "Invalid value for attribute \'%s\'"

    .line 89
    .line 90
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_3
    return-void
.end method

.method private readValue()V
    .locals 9

    .line 1
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v0

    .line 10
    :goto_0
    move v3, v1

    .line 11
    :goto_1
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 12
    .line 13
    iget-object v5, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    .line 14
    .line 15
    array-length v6, v5

    .line 16
    if-ge v4, v6, :cond_7

    .line 17
    .line 18
    add-int/lit8 v6, v4, 0x1

    .line 19
    .line 20
    iput v6, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 21
    .line 22
    aget-byte v4, v5, v4

    .line 23
    .line 24
    if-eqz v4, :cond_6

    .line 25
    .line 26
    const/16 v7, 0xa

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-eq v4, v7, :cond_4

    .line 30
    .line 31
    const/16 v7, 0xd

    .line 32
    .line 33
    if-eq v4, v7, :cond_3

    .line 34
    .line 35
    const/16 v7, 0x20

    .line 36
    .line 37
    if-eq v4, v7, :cond_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 41
    .line 42
    if-ne v4, v8, :cond_1

    .line 43
    .line 44
    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    .line 45
    .line 46
    sub-int v6, v2, v0

    .line 47
    .line 48
    invoke-virtual {v4, v5, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 52
    .line 53
    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_2
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 57
    .line 58
    if-lt v4, v8, :cond_2

    .line 59
    .line 60
    sub-int/2addr v6, v8

    .line 61
    iput v6, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    move v2, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 67
    .line 68
    add-int/2addr v3, v8

    .line 69
    iput v3, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 70
    .line 71
    move v3, v8

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    if-eqz v3, :cond_5

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 77
    .line 78
    add-int/2addr v4, v8

    .line 79
    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 83
    .line 84
    const-string v1, "NUL character in a manifest"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_7
    :goto_3
    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    .line 91
    .line 92
    sub-int/2addr v2, v0

    .line 93
    invoke-virtual {v1, v5, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    .line 97
    .line 98
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public getEndOfMainSection()I
    .locals 1

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    return v0
.end method

.method public readEntries(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 2
    .line 3
    :goto_0
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    sget-object v1, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/util/jar/Attributes;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Ljava/util/jar/Attributes;

    .line 30
    .line 31
    const/16 v3, 0xc

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    .line 43
    .line 44
    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    new-instance v3, Landroid/util/jar/StrictJarManifest$Chunk;

    .line 59
    .line 60
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 61
    .line 62
    invoke-direct {v3, v0, v4}, Landroid/util/jar/StrictJarManifest$Chunk;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    const-string p2, "A jar verifier does not support more than one entry with the same name"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_3
    :goto_2
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 84
    .line 85
    const-string p2, "Entry is not named"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_5
    return-void
.end method
