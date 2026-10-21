.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "FontFamily"

.field public static final synthetic a:I


# instance fields
.field private mBuilderPtr:J

.field public mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1, p2}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    return-void
.end method

.method private static native nAbort(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nAddAxisValue(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static nAddFont(JLjava/nio/ByteBuffer;I)Z
    .locals 6

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method

.method private static native nAddFont(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native nAddFontFromAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;IZIII)Z
.end method

.method private static native nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native nAllowUnsupportedFont(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nCreateFamily(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder(Ljava/lang/String;I)J
.end method

.method private static native nUnrefFamily(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public abortCreation()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAbort(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "This FontFamily is already frozen or abandoned"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    iget-wide v3, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 8
    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    cmp-long v3, v3, v5

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 17
    .line 18
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    .line 26
    .line 27
    .line 28
    move-result-wide v9

    .line 29
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 30
    .line 31
    const-wide/16 v7, 0x0

    .line 32
    .line 33
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    array-length v5, v0

    .line 40
    move v6, v3

    .line 41
    :goto_0
    if-ge v6, v5, :cond_0

    .line 42
    .line 43
    aget-object v7, v0, v6

    .line 44
    .line 45
    iget-wide v8, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 46
    .line 47
    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-static {v8, v9, v10, v7}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-wide v11, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 62
    .line 63
    move/from16 v14, p2

    .line 64
    .line 65
    move/from16 v15, p4

    .line 66
    .line 67
    move/from16 v16, p5

    .line 68
    .line 69
    invoke-static/range {v11 .. v16}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .line 75
    .line 76
    return v0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object v5, v0

    .line 79
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    move-object v6, v0

    .line 82
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_2
    move-exception v0

    .line 87
    move-object v4, v0

    .line 88
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 92
    :catch_0
    sget-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    const-string v4, "Error mapping font file "

    .line 95
    .line 96
    invoke-static {v4, v2, v0}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return v3

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v2, "Unable to call addFont after freezing."

    .line 103
    .line 104
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
.end method

.method public addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p8

    .line 3
    .line 4
    iget-wide v2, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v2, v2, v4

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_0

    .line 17
    .line 18
    aget-object v4, v1, v3

    .line 19
    .line 20
    iget-wide v5, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    invoke-virtual {v4}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v5, v6, v7, v4}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-wide v4, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 37
    .line 38
    move-object v6, p1

    .line 39
    move-object v7, p2

    .line 40
    move/from16 v8, p3

    .line 41
    .line 42
    move/from16 v9, p4

    .line 43
    .line 44
    move/from16 v10, p5

    .line 45
    .line 46
    move/from16 v11, p6

    .line 47
    .line 48
    move/from16 v12, p7

    .line 49
    .line 50
    invoke-static/range {v4 .. v12}, Landroid/graphics/FontFamily;->nAddFontFromAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;IZIII)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    return v1

    .line 55
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v2, "Unable to call addFontFromAsset after freezing."

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method public addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .locals 8

    .line 1
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    array-length v0, p3

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p3, v1

    .line 16
    .line 17
    iget-wide v3, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v3, v4, v5, v2}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 34
    .line 35
    move-object v4, p1

    .line 36
    move v5, p2

    .line 37
    move v6, p4

    .line 38
    move v7, p5

    .line 39
    invoke-static/range {v2 .. v7}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "Unable to call addFontWeightStyle after freezing."

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public allowUnsupportedFont()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAllowUnsupportedFont(J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Unable to allow unsupported font."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public finalize()V
    .locals 5

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nUnrefFamily(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAbort(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public freeze()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 14
    .line 15
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "This FontFamily is already frozen"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method
