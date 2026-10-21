.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z = false

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;


# instance fields
.field private mNumRefs:I

.field private mObject:J

.field private final mOffsets:[J

.field private mOpen:Z

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBlocks:[Landroid/content/res/StringBlock;

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 3
    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 6
    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 7
    monitor-enter p0

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->init(Z)V

    .line 9
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    const/4 p1, 0x2

    new-array p1, p1, [J

    .line 13
    iput-object p1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 16
    iput-boolean p1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 17
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->init(Z)V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/res/AssetManager;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$200(Landroid/content/res/AssetManager;J)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->readAssetChar(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroid/content/res/AssetManager;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetRemainingLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$400(Landroid/content/res/AssetManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->destroyAsset(J)V

    return-void
.end method

.method public static synthetic access$500(Landroid/content/res/AssetManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    return-void
.end method

.method public static synthetic access$600(Landroid/content/res/AssetManager;JJI)J
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->seekAsset(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$700(Landroid/content/res/AssetManager;J[BII)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->readAsset(J[BII)I

    move-result p0

    return p0
.end method

.method private final addAssetPathInternal(Ljava/lang/String;Z)I
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->addAssetPathNative(Ljava/lang/String;Z)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget-object p2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method private final native addAssetPathNative(Ljava/lang/String;Z)I
.end method

.method public static final native applyStyle(JIIJ[IIJJ)V
.end method

.method public static final native applyThemeStyle(JIZ)V
.end method

.method public static final native clearTheme(J)V
.end method

.method public static final native copyTheme(JJ)V
.end method

.method private final decRefsLocked(J)V
    .locals 0

    .line 1
    iget p1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final native deleteTheme(J)V
.end method

.method private final native destroy()V
.end method

.method private final native destroyAsset(J)V
.end method

.method public static final native dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static ensureSystemAssets()V
    .locals 3

    .line 1
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/content/res/AssetManager;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 19
    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method private final native getArrayStringInfo(I)[I
.end method

.method private final native getArrayStringResource(I)[Ljava/lang/String;
.end method

.method public static final native getAssetAllocations()Ljava/lang/String;
.end method

.method private final native getAssetLength(J)J
.end method

.method private final native getAssetRemainingLength(J)J
.end method

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)J
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 5
    .line 6
    return-object v0
.end method

.method public static final native getThemeChangingConfigurations(J)I
.end method

.method private final incRefsLocked(J)V
    .locals 0

    iget p1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    return-void
.end method

.method private final native init(Z)V
.end method

.method private final native loadResourceBagValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native loadResourceValue(ISLandroid/util/TypedValue;Z)I
.end method

.method public static final native loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I
.end method

.method private final native newTheme()J
.end method

.method private final native openAsset(Ljava/lang/String;I)J
.end method

.method private final native openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
.end method

.method private native openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
.end method

.method private final native openNonAssetNative(ILjava/lang/String;I)J
.end method

.method private final native openXmlAssetNative(ILjava/lang/String;)J
.end method

.method private final native readAsset(J[BII)I
.end method

.method private final native readAssetChar(J)I
.end method

.method public static final native resolveAttrs(JII[I[I[I[I)Z
.end method

.method private final native seekAsset(JJI)J
.end method


# virtual methods
.method public final addAssetPath(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public final addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public final addAssetPaths([Ljava/lang/String;)[I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    array-length v0, p1

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    aput v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-object v0
.end method

.method public final addOverlayPath(Ljava/lang/String;)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addOverlayPathNative(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final native addOverlayPathNative(Ljava/lang/String;)I
.end method

.method public close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-long v0, v0

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method public final createTheme()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    const-string v1, "Assetmanager has been closed"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method

.method public final ensureStringBlocks()[Landroid/content/res/StringBlock;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 7
    .line 8
    iget-object v0, v0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public final native getArrayIntResource(I)[I
.end method

.method public final native getArraySize(I)I
.end method

.method public final native getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native getCookieName(I)Ljava/lang/String;
.end method

.method public final native getLocales()[Ljava/lang/String;
.end method

.method public final native getNonSystemLocales()[Ljava/lang/String;
.end method

.method public final getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 3
    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method public final getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 15
    .line 16
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 21
    .line 22
    iget p2, v0, Landroid/util/TypedValue;->type:I

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-ne p2, v1, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 28
    .line 29
    aget-object p1, p2, p1

    .line 30
    .line 31
    iget p2, v0, Landroid/util/TypedValue;->data:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    monitor-exit p0

    .line 38
    return-object p1

    .line 39
    :cond_1
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    monitor-exit p0

    .line 44
    return-object p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public final native getResourceEntryName(I)Ljava/lang/String;
.end method

.method public final native getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final native getResourceName(I)Ljava/lang/String;
.end method

.method public final native getResourcePackageName(I)Ljava/lang/String;
.end method

.method public final getResourceStringArray(I)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResourceText(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :cond_0
    monitor-exit p0

    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v0

    .line 11
    :cond_0
    array-length v1, p1

    .line 12
    div-int/lit8 v2, v1, 0x2

    .line 13
    .line 14
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    .line 20
    aget v5, p1, v3

    .line 21
    .line 22
    add-int/lit8 v6, v3, 0x1

    .line 23
    .line 24
    aget v6, p1, v6

    .line 25
    .line 26
    if-ltz v6, :cond_1

    .line 27
    .line 28
    iget-object v7, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 29
    .line 30
    aget-object v5, v7, v5

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v5, v0

    .line 38
    :goto_1
    aput-object v5, v2, v4

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x2

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    monitor-exit p0

    .line 46
    return-object v2

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method public final native getResourceTypeName(I)Ljava/lang/String;
.end method

.method public final getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    int-to-short p2, p2

    .line 3
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    iget p2, p3, Landroid/util/TypedValue;->changingConfigurations:I

    .line 13
    .line 14
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput p2, p3, Landroid/util/TypedValue;->changingConfigurations:I

    .line 19
    .line 20
    iget p2, p3, Landroid/util/TypedValue;->type:I

    .line 21
    .line 22
    const/4 p4, 0x3

    .line 23
    if-ne p2, p4, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 26
    .line 27
    aget-object p1, p2, p1

    .line 28
    .line 29
    iget p2, p3, Landroid/util/TypedValue;->data:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 36
    .line 37
    :cond_1
    monitor-exit p0

    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1
.end method

.method public final native getSizeConfigurations()[Landroid/content/res/Configuration;
.end method

.method public final native getStyleAttributes(I)[I
.end method

.method public final getThemeValue(JILandroid/util/TypedValue;Z)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget p2, p4, Landroid/util/TypedValue;->changingConfigurations:I

    .line 10
    .line 11
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iput p2, p4, Landroid/util/TypedValue;->changingConfigurations:I

    .line 16
    .line 17
    iget p2, p4, Landroid/util/TypedValue;->type:I

    .line 18
    .line 19
    const/4 p3, 0x3

    .line 20
    if-ne p2, p3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()[Landroid/content/res/StringBlock;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    aget-object p1, p2, p1

    .line 27
    .line 28
    iget p2, p4, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 35
    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method public final native isUpToDate()Z
.end method

.method public final native list(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public final makeStringBlocks([Landroid/content/res/StringBlock;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-array v3, v2, [Landroid/content/res/StringBlock;

    .line 12
    .line 13
    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 14
    .line 15
    :goto_1
    if-ge v0, v2, :cond_2

    .line 16
    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 20
    .line 21
    aget-object v4, p1, v0

    .line 22
    .line 23
    aput-object v4, v3, v0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 27
    .line 28
    new-instance v4, Landroid/content/res/StringBlock;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getNativeStringBlock(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    const/4 v7, 0x1

    .line 35
    invoke-direct {v4, v5, v6, v7}, Landroid/content/res/StringBlock;-><init>(JZ)V

    .line 36
    .line 37
    .line 38
    aput-object v4, v3, v0

    .line 39
    .line 40
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    return-void
.end method

.method public final open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 4

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, v1, p2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 7
    monitor-exit p0

    return-object p1

    .line 8
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance p2, Ljava/io/FileNotFoundException;

    const-string v0, "Asset file: "

    .line 10
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Assetmanager has been closed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroid/content/res/AssetFileDescriptor;

    .line 15
    .line 16
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aget-wide v3, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aget-wide v5, v0, v1

    .line 23
    .line 24
    move-object v1, p1

    .line 25
    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object p1

    .line 30
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 32
    .line 33
    const-string v1, "Asset file: "

    .line 34
    .line 35
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    const-string v0, "Assetmanager has been closed"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p1
.end method

.method public final openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 4

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, v1, p2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p2, p2

    invoke-direct {p0, p2, p3}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 9
    monitor-exit p0

    return-object p1

    .line 10
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p3, "Asset absolute file: "

    .line 12
    invoke-static {p3, p2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Assetmanager has been closed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    new-instance p1, Landroid/content/res/AssetFileDescriptor;

    iget-object p2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v0, 0x0

    aget-wide v3, p2, v0

    const/4 v0, 0x1

    aget-wide v5, p2, v0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object p1

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "Asset absolute file: "

    .line 8
    invoke-static {v0, p2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Assetmanager has been closed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 4

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Landroid/content/res/XmlBlock;

    invoke-direct {p1, p0, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 7
    monitor-exit p0

    return-object p1

    .line 8
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "Asset XML file: "

    .line 10
    invoke-static {v0, p2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Assetmanager has been closed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object p1

    return-object p1
.end method

.method public final openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Landroid/content/res/XmlBlock;->close()V

    return-object p2
.end method

.method public final openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public final releaseTheme(J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->deleteTheme(J)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public final native retrieveArray(I[I)I
.end method

.method public final native retrieveAttributes(J[I[I[I)Z
.end method

.method public final native setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V
.end method

.method public xmlBlockGone(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    int-to-long v0, p1

    .line 3
    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method
