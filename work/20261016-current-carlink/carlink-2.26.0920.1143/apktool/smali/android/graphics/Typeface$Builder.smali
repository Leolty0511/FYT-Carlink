.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final BOLD_WEIGHT:I = 0x2bc

.field public static final NORMAL_WEIGHT:I = 0x190

.field private static final sLock:Ljava/lang/Object;

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mFallbackFamilyName:Ljava/lang/String;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFontBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mFonts:[Landroid/provider/FontsContract$FontInfo;

.field private mItalic:I

.field private mPath:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/util/LongSparseArray;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 15
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 16
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetManager;

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 17
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 3
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 7
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 8
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 11
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 12
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/provider/FontsContract$FontInfo;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 20
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 21
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    .line 22
    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    const-string v4, "-"

    .line 17
    .line 18
    if-ge v3, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    if-eqz p3, :cond_1

    .line 72
    .line 73
    array-length p0, p3

    .line 74
    :goto_1
    if-ge v2, p0, :cond_1

    .line 75
    .line 76
    aget-object p1, p3, v2

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method

.method private resolveFallbackTypeface()Landroid/graphics/Typeface;
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/Typeface;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 18
    .line 19
    :cond_1
    iget v2, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    if-ne v2, v3, :cond_2

    .line 23
    .line 24
    iget v4, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 25
    .line 26
    if-ne v4, v3, :cond_2

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_2
    if-ne v2, v3, :cond_3

    .line 30
    .line 31
    invoke-static {v0}, Landroid/graphics/Typeface;->access$100(Landroid/graphics/Typeface;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_3
    iget v4, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    if-ne v4, v3, :cond_4

    .line 40
    .line 41
    invoke-static {v0}, Landroid/graphics/Typeface;->access$200(Landroid/graphics/Typeface;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    and-int/lit8 v3, v3, 0x2

    .line 46
    .line 47
    if-eqz v3, :cond_5

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    if-ne v4, v6, :cond_5

    .line 51
    .line 52
    :goto_0
    move v5, v6

    .line 53
    :cond_5
    shl-int/lit8 v3, v2, 0x1

    .line 54
    .line 55
    or-int/2addr v3, v5

    .line 56
    sget-object v4, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v4

    .line 59
    :try_start_0
    sget-object v6, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 60
    .line 61
    iget-wide v7, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 62
    .line 63
    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Landroid/util/SparseArray;

    .line 68
    .line 69
    if-eqz v7, :cond_6

    .line 70
    .line 71
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    check-cast v8, Landroid/graphics/Typeface;

    .line 76
    .line 77
    if-eqz v8, :cond_6

    .line 78
    .line 79
    monitor-exit v4

    .line 80
    return-object v8

    .line 81
    :cond_6
    new-instance v8, Landroid/graphics/Typeface;

    .line 82
    .line 83
    iget-wide v9, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 84
    .line 85
    invoke-static {v9, v10, v2, v5}, Landroid/graphics/Typeface;->access$300(JIZ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    invoke-direct {v8, v9, v10, v1}, Landroid/graphics/Typeface;-><init>(JLandroid/graphics/Typeface$1;)V

    .line 90
    .line 91
    .line 92
    if-nez v7, :cond_7

    .line 93
    .line 94
    new-instance v7, Landroid/util/SparseArray;

    .line 95
    .line 96
    const/4 v1, 0x4

    .line 97
    invoke-direct {v7, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iget-wide v0, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 101
    .line 102
    invoke-virtual {v6, v0, v1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-virtual {v7, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    monitor-exit v4

    .line 109
    return-object v8

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw v0
.end method


# virtual methods
.method public build()Landroid/graphics/Typeface;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 10
    .line 11
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    .line 12
    .line 13
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    .line 21
    .line 22
    .line 23
    move-result-wide v9

    .line 24
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 25
    .line 26
    const-wide/16 v7, 0x0

    .line 27
    .line 28
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v12

    .line 32
    new-instance v0, Landroid/graphics/FontFamily;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 35
    .line 36
    .line 37
    iget v13, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    .line 38
    .line 39
    iget-object v14, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 40
    .line 41
    iget v15, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 42
    .line 43
    iget v5, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 44
    .line 45
    move-object v11, v0

    .line 46
    move/from16 v16, v5

    .line 47
    .line 48
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 55
    .line 56
    .line 57
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    .line 72
    .line 73
    .line 74
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_1
    :try_start_5
    new-array v2, v2, [Landroid/graphics/FontFamily;

    .line 80
    .line 81
    aput-object v0, v2, v3

    .line 82
    .line 83
    iget v0, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 84
    .line 85
    iget v3, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 86
    .line 87
    invoke-static {v2, v0, v3}, Landroid/graphics/Typeface;->access$500([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 91
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    move-object v2, v0

    .line 97
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    move-object v3, v0

    .line 100
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_2
    move-exception v0

    .line 105
    move-object v4, v0

    .line 106
    :try_start_9
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 110
    :catch_0
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    return-object v0

    .line 115
    :cond_2
    iget-object v4, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 116
    .line 117
    if-eqz v4, :cond_6

    .line 118
    .line 119
    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 120
    .line 121
    iget v6, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    .line 122
    .line 123
    iget-object v7, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 124
    .line 125
    iget v8, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 126
    .line 127
    iget v9, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 128
    .line 129
    invoke-static/range {v4 .. v9}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sget-object v4, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter v4

    .line 136
    :try_start_a
    invoke-static {}, Landroid/graphics/Typeface;->access$600()Landroid/util/LruCache;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v5, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Landroid/graphics/Typeface;

    .line 145
    .line 146
    if-eqz v5, :cond_3

    .line 147
    .line 148
    monitor-exit v4

    .line 149
    return-object v5

    .line 150
    :cond_3
    new-instance v5, Landroid/graphics/FontFamily;

    .line 151
    .line 152
    invoke-direct {v5}, Landroid/graphics/FontFamily;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v7, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 156
    .line 157
    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 158
    .line 159
    iget v11, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    .line 160
    .line 161
    const/4 v10, 0x1

    .line 162
    iget v12, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 163
    .line 164
    iget v13, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 165
    .line 166
    iget-object v14, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 167
    .line 168
    move-object v6, v5

    .line 169
    move v9, v11

    .line 170
    invoke-virtual/range {v6 .. v14}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-nez v6, :cond_4

    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 177
    .line 178
    .line 179
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    monitor-exit v4

    .line 184
    return-object v0

    .line 185
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/FontFamily;->freeze()Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-nez v6, :cond_5

    .line 190
    .line 191
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    monitor-exit v4

    .line 196
    return-object v0

    .line 197
    :cond_5
    new-array v2, v2, [Landroid/graphics/FontFamily;

    .line 198
    .line 199
    aput-object v5, v2, v3

    .line 200
    .line 201
    iget v3, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 202
    .line 203
    iget v5, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 204
    .line 205
    invoke-static {v2, v3, v5}, Landroid/graphics/Typeface;->access$500([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {}, Landroid/graphics/Typeface;->access$600()Landroid/util/LruCache;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v3, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    monitor-exit v4

    .line 217
    return-object v2

    .line 218
    :catchall_3
    move-exception v0

    .line 219
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 220
    throw v0

    .line 221
    :cond_6
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 222
    .line 223
    if-eqz v0, :cond_9

    .line 224
    .line 225
    new-instance v0, Landroid/graphics/FontFamily;

    .line 226
    .line 227
    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 228
    .line 229
    .line 230
    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 231
    .line 232
    iget v6, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    .line 233
    .line 234
    iget-object v7, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 235
    .line 236
    iget v8, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 237
    .line 238
    iget v9, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 239
    .line 240
    move-object v4, v0

    .line 241
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-nez v4, :cond_7

    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 248
    .line 249
    .line 250
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    return-object v0

    .line 255
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-nez v4, :cond_8

    .line 260
    .line 261
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    return-object v0

    .line 266
    :cond_8
    new-array v2, v2, [Landroid/graphics/FontFamily;

    .line 267
    .line 268
    aput-object v0, v2, v3

    .line 269
    .line 270
    iget v0, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 271
    .line 272
    iget v3, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 273
    .line 274
    invoke-static {v2, v0, v3}, Landroid/graphics/Typeface;->access$500([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    return-object v0

    .line 279
    :cond_9
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    .line 280
    .line 281
    if-eqz v0, :cond_e

    .line 282
    .line 283
    new-instance v0, Landroid/graphics/FontFamily;

    .line 284
    .line 285
    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 286
    .line 287
    .line 288
    iget-object v10, v1, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    .line 289
    .line 290
    array-length v11, v10

    .line 291
    move v4, v3

    .line 292
    move v12, v4

    .line 293
    :goto_1
    const/4 v13, 0x0

    .line 294
    if-ge v12, v11, :cond_c

    .line 295
    .line 296
    aget-object v5, v10, v12

    .line 297
    .line 298
    iget-object v6, v1, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    .line 299
    .line 300
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 309
    .line 310
    if-nez v6, :cond_a

    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_a
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    move-object v4, v0

    .line 330
    move-object v5, v6

    .line 331
    move v6, v7

    .line 332
    move-object v7, v8

    .line 333
    move v8, v9

    .line 334
    move v9, v14

    .line 335
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_b

    .line 340
    .line 341
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 342
    .line 343
    .line 344
    return-object v13

    .line 345
    :cond_b
    move v4, v2

    .line 346
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_c
    if-nez v4, :cond_d

    .line 350
    .line 351
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 352
    .line 353
    .line 354
    return-object v13

    .line 355
    :cond_d
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    .line 356
    .line 357
    .line 358
    new-array v2, v2, [Landroid/graphics/FontFamily;

    .line 359
    .line 360
    aput-object v0, v2, v3

    .line 361
    .line 362
    iget v0, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 363
    .line 364
    iget v3, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 365
    .line 366
    invoke-static {v2, v0, v3}, Landroid/graphics/Typeface;->access$500([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    return-object v0

    .line 371
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 372
    .line 373
    const-string v2, "No source was set."

    .line 374
    .line 375
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v0
.end method

.method public setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 0

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    return-object p0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Font variation settings are already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Font variation settings can not be specified for FontResult source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Font variation settings are already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Font variation settings can not be specified for FontResult source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setItalic(Z)Landroid/graphics/Typeface$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    return-object p0
.end method

.method public setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "TTC index can not be specified for FontResult source."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setWeight(I)Landroid/graphics/Typeface$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    return-object p0
.end method
