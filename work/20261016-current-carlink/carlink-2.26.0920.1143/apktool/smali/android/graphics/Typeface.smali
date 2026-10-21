.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$Builder;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final EMPTY_AXES:[I

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I = 0x0

.field public static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final STYLE_ITALIC:I = 0x1

.field private static final STYLE_NORMAL:I = 0x0

.field private static TAG:Ljava/lang/String; = "Typeface"

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field private static final sLock:Ljava/lang/Object;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
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
.field private mStyle:I

.field private mSupportedAxes:[I

.field private mWeight:I

.field public native_instance:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/LongSparseArray;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 8
    .line 9
    new-instance v0, Landroid/util/LruCache;

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroid/graphics/Typeface;->sLock:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    new-array v2, v0, [I

    .line 27
    .line 28
    sput-object v2, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    .line 29
    .line 30
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    sput-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sput-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 46
    .line 47
    const-string/jumbo v6, "sans-serif"

    .line 48
    .line 49
    .line 50
    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    sput-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 55
    .line 56
    const-string/jumbo v6, "serif"

    .line 57
    .line 58
    .line 59
    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sput-object v6, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 64
    .line 65
    const-string/jumbo v6, "monospace"

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    sput-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 73
    .line 74
    const/4 v6, 0x4

    .line 75
    new-array v6, v6, [Landroid/graphics/Typeface;

    .line 76
    .line 77
    aput-object v3, v6, v0

    .line 78
    .line 79
    aput-object v5, v6, v4

    .line 80
    .line 81
    const/4 v0, 0x2

    .line 82
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    aput-object v3, v6, v0

    .line 87
    .line 88
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    aput-object v0, v6, v1

    .line 93
    .line 94
    sput-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 95
    .line 96
    return-void
.end method

.method private constructor <init>(J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 4
    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 5
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 6
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 7
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result p1

    iput p1, p0, Landroid/graphics/Typeface;->mWeight:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "native typeface cannot be made"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JLandroid/graphics/Typeface$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/Typeface;-><init>(J)V

    return-void
.end method

.method public static synthetic access$100(Landroid/graphics/Typeface;)I
    .locals 0

    iget p0, p0, Landroid/graphics/Typeface;->mWeight:I

    return p0
.end method

.method public static synthetic access$200(Landroid/graphics/Typeface;)I
    .locals 0

    iget p0, p0, Landroid/graphics/Typeface;->mStyle:I

    return p0
.end method

.method public static synthetic access$300(JIZ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$500([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-eqz p0, :cond_3

    .line 3
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v0, p1, :cond_2

    return-object p0

    .line 4
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    sget-object p0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_4

    return-object v3

    .line 7
    :cond_4
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    if-nez v2, :cond_5

    .line 8
    new-instance v2, Landroid/util/SparseArray;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 9
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 10
    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    sget-object v0, Landroid/graphics/Typeface;->sLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    new-instance v1, Landroid/graphics/Typeface$Builder;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, -0x1

    .line 27
    const/4 v6, -0x1

    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    invoke-static/range {v1 .. v6}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/graphics/Typeface;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object v3

    .line 46
    :cond_1
    new-instance v12, Landroid/graphics/FontFamily;

    .line 47
    .line 48
    invoke-direct {v12}, Landroid/graphics/FontFamily;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, -0x1

    .line 55
    const/4 v10, -0x1

    .line 56
    const/4 v11, 0x0

    .line 57
    move-object v3, v12

    .line 58
    move-object v4, p0

    .line 59
    move-object v5, p1

    .line 60
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v12}, Landroid/graphics/FontFamily;->allowUnsupportedFont()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v12}, Landroid/graphics/FontFamily;->freeze()Z

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    new-array p0, p0, [Landroid/graphics/FontFamily;

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    aput-object v12, p0, p1

    .line 77
    .line 78
    const/4 p1, -0x1

    .line 79
    invoke-static {p0, p1, p1}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v2, v1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    monitor-exit v0

    .line 87
    return-object p0

    .line 88
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 89
    .line 90
    .line 91
    monitor-exit v0

    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0

    .line 96
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 97
    .line 98
    const-string v0, "Font asset not found "

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method private static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 11
    .line 12
    aput-wide v2, v0, v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Landroid/graphics/Typeface;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-static {v0, v1, v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/graphics/Typeface;-><init>(J)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    add-int/2addr v0, v1

    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    array-length v3, p0

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    iget-wide v3, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 16
    .line 17
    aput-wide v3, v0, v2

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    if-ge v1, v3, :cond_1

    .line 26
    .line 27
    array-length v3, p0

    .line 28
    add-int/2addr v3, v1

    .line 29
    aget-object v2, v2, v1

    .line 30
    .line 31
    iget-wide v4, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 32
    .line 33
    aput-wide v4, v0, v3

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p0, Landroid/graphics/Typeface;

    .line 39
    .line 40
    invoke-static {v0, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7

    .line 2
    sget-object v0, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    move-object v2, p0

    .line 4
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->allowUnsupportedFont()V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/FontFamily;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, -0x1

    .line 7
    invoke-static {p0, v0, v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Font not found "

    .line 10
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 13

    .line 1
    sget-object v0, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, p0

    move-object v3, p1

    .line 3
    :try_start_0
    invoke-static/range {v2 .. v7}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    .line 5
    monitor-exit v0

    return-object v3

    .line 6
    :cond_0
    new-instance v12, Landroid/graphics/FontFamily;

    invoke-direct {v12}, Landroid/graphics/FontFamily;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v3, v12

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    .line 7
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {v12}, Landroid/graphics/FontFamily;->freeze()Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    monitor-exit v0

    return-object v1

    :cond_1
    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/FontFamily;

    const/4 p1, 0x0

    aput-object v12, p0, p1

    const/4 p1, -0x1

    .line 10
    invoke-static {p0, p1, p1}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object p0

    .line 11
    invoke-virtual {v0, v2, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v0

    return-object p0

    .line 13
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 15

    move-object v0, p0

    .line 14
    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 15
    instance-of v1, v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 16
    check-cast v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    .line 17
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v1

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    move v4, v3

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 20
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v3

    .line 22
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 23
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25
    :cond_1
    new-instance v1, Landroid/provider/FontRequest;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 27
    invoke-static {v1}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 28
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_2
    return-object v0

    .line 29
    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    .line 30
    :cond_4
    check-cast v0, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 31
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 32
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v0

    array-length v13, v0

    move v14, v3

    :goto_2
    if-ge v14, v13, :cond_6

    aget-object v4, v0, v14

    .line 33
    invoke-virtual {v4}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 34
    invoke-virtual {v4}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v10

    invoke-virtual {v4}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v11

    const/4 v12, 0x0

    move-object v4, v1

    move-object/from16 v5, p1

    .line 35
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v4

    if-nez v4, :cond_5

    return-object v2

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v0

    if-nez v0, :cond_7

    return-object v2

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/FontFamily;

    aput-object v1, v0, v3

    const/4 v1, -0x1

    .line 37
    invoke-static {v0, v1, v1}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v0

    .line 38
    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 39
    :try_start_0
    invoke-static/range {v2 .. v7}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    return-object v2
.end method

.method public static createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 7
    .line 8
    :goto_0
    new-instance p0, Landroid/graphics/Typeface;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/graphics/Typeface;-><init>(J)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method private static createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "provider:"

    .line 2
    .line 3
    .line 4
    const-string v1, "-"

    .line 5
    .line 6
    invoke-static {v0, p0, v1, p1}, Landroid/accessibilityservice/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7

    .line 1
    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, -0x1

    .line 7
    const/4 v6, -0x1

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/graphics/Typeface$Builder;->access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/graphics/Typeface;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 11

    .line 1
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string v2, "fonts.xml"

    .line 8
    .line 9
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/text/FontConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_0
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    array-length v6, v6

    .line 38
    if-ge v5, v6, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    aget-object v6, v6, v5

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    :cond_0
    invoke-static {v6, v2}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    new-array v5, v5, [Landroid/graphics/FontFamily;

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, [Landroid/graphics/FontFamily;

    .line 77
    .line 78
    sput-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 79
    .line 80
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    move v5, v4

    .line 93
    :goto_1
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    array-length v6, v6

    .line 98
    if-ge v5, v6, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    aget-object v6, v6, v5

    .line 105
    .line 106
    invoke-virtual {v6}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    if-eqz v7, :cond_5

    .line 111
    .line 112
    if-nez v5, :cond_3

    .line 113
    .line 114
    sget-object v7, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {v6, v2}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-nez v7, :cond_4

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    const/4 v8, 0x1

    .line 125
    new-array v8, v8, [Landroid/graphics/FontFamily;

    .line 126
    .line 127
    aput-object v7, v8, v4

    .line 128
    .line 129
    const/4 v7, -0x1

    .line 130
    invoke-static {v8, v7, v7}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    :goto_2
    invoke-virtual {v6}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    invoke-virtual {v0}, Landroid/text/FontConfig;->getAliases()[Landroid/text/FontConfig$Alias;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    array-length v2, v0

    .line 149
    :goto_4
    if-ge v4, v2, :cond_8

    .line 150
    .line 151
    aget-object v5, v0, v4

    .line 152
    .line 153
    invoke-virtual {v5}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Landroid/graphics/Typeface;

    .line 162
    .line 163
    invoke-virtual {v5}, Landroid/text/FontConfig$Alias;->getWeight()I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    const/16 v8, 0x190

    .line 168
    .line 169
    if-eq v7, v8, :cond_7

    .line 170
    .line 171
    new-instance v8, Landroid/graphics/Typeface;

    .line 172
    .line 173
    iget-wide v9, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 174
    .line 175
    invoke-static {v9, v10, v7}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    .line 176
    .line 177
    .line 178
    move-result-wide v6

    .line 179
    invoke-direct {v8, v6, v7}, Landroid/graphics/Typeface;-><init>(J)V

    .line 180
    .line 181
    .line 182
    move-object v6, v8

    .line 183
    :cond_7
    invoke-virtual {v5}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_8
    sput-object v3, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 198
    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v4, "XML parse exception for "

    .line 202
    .line 203
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .line 215
    .line 216
    goto :goto_5

    .line 217
    :catch_1
    move-exception v0

    .line 218
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 219
    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v4, "Error reading "

    .line 223
    .line 224
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :catch_2
    move-exception v0

    .line 239
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 240
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v4, "Error opening "

    .line 244
    .line 245
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :catch_3
    move-exception v0

    .line 260
    sget-object v1, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 261
    .line 262
    const-string v2, "Didn\'t create default family (most likely, non-Minikin build)"

    .line 263
    .line 264
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .line 266
    .line 267
    :goto_5
    return-void
.end method

.method private static makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$Family;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    new-instance v8, Landroid/graphics/FontFamily;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getVariant()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v8, v0, v2}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    array-length v10, v9

    .line 21
    const/4 v0, 0x0

    .line 22
    move v11, v0

    .line 23
    :goto_0
    if-ge v11, v10, :cond_2

    .line 24
    .line 25
    aget-object v0, v9, v11

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "/system/fonts/"

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 54
    .line 55
    invoke-direct {v2, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    .line 63
    .line 64
    .line 65
    move-result-wide v17

    .line 66
    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 67
    .line 68
    const-wide/16 v15, 0x0

    .line 69
    .line 70
    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    move-object v3, v0

    .line 83
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    move-object v4, v0

    .line 86
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_2
    move-exception v0

    .line 91
    move-object v2, v0

    .line 92
    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 96
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 97
    .line 98
    const-string v2, "Error mapping font file "

    .line 99
    .line 100
    invoke-static {v2, v12, v0}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_0
    move-object v3, v2

    .line 105
    :goto_2
    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->getWeight()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->isItalic()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    move-object v2, v8

    .line 122
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_1

    .line 127
    .line 128
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    const-string v3, "Error creating font "

    .line 131
    .line 132
    const-string v4, "#"

    .line 133
    .line 134
    invoke-static {v3, v12, v4}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v0}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_3

    .line 161
    .line 162
    sget-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v2, "Unable to load Family: "

    .line 167
    .line 168
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v2, ":"

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getLanguage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    const/4 v0, 0x0

    .line 198
    return-object v0

    .line 199
    :cond_3
    return-object v8
.end method

.method private static native nativeCreateFromArray([JII)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeGetSupportedAxes(J)[I
.end method

.method private static native nativeGetWeight(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Landroid/graphics/Typeface;

    .line 20
    .line 21
    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 22
    .line 23
    iget v3, p1, Landroid/graphics/Typeface;->mStyle:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 28
    .line 29
    iget-wide v4, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 30
    .line 31
    cmp-long p1, v2, v4

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v1

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_3
    :goto_1
    return v1
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    const/16 v1, 0x20f

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    return v1
.end method

.method public final isBold()Z
    .locals 2

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isItalic()Z
    .locals 1

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportedAxes(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    .line 21
    .line 22
    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 30
    .line 31
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ltz p1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    :goto_1
    return p1
.end method
