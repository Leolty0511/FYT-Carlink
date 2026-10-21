.class public Landroid/content/pm/split/DefaultSplitAssetLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/pm/split/SplitAssetLoader;


# instance fields
.field private final mBaseCodePath:Ljava/lang/String;

.field private mCachedAssetManager:Landroid/content/res/AssetManager;

.field private final mFlags:I

.field private final mSplitCodePaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$PackageLite;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I

    .line 13
    .line 14
    return-void
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x4

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 13
    .line 14
    const-string p2, "Invalid package file: "

    .line 15
    .line 16
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 p2, -0x64

    .line 21
    .line 22
    invoke-direct {p0, p2, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 34
    .line 35
    const-string p2, "Failed adding asset path: "

    .line 36
    .line 37
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/16 p2, -0x65

    .line 42
    .line 43
    invoke-direct {p0, p2, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v15, Landroid/content/res/AssetManager;

    .line 9
    .line 10
    invoke-direct {v15}, Landroid/content/res/AssetManager;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v0, 0x0

    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    const/16 v18, 0x0

    .line 31
    .line 32
    const/16 v19, 0x0

    .line 33
    .line 34
    :try_start_0
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    .line 36
    move-object v2, v15

    .line 37
    move-object/from16 v21, v15

    .line 38
    .line 39
    move v15, v0

    .line 40
    :try_start_1
    invoke-virtual/range {v2 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Landroid/content/pm/split/DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    .line 44
    .line 45
    iget v2, v1, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    move-object/from16 v3, v21

    .line 48
    .line 49
    :try_start_2
    invoke-static {v3, v0, v2}, Landroid/content/pm/split/DefaultSplitAssetLoader;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v1, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, v1, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    .line 61
    .line 62
    array-length v2, v0

    .line 63
    const/4 v4, 0x0

    .line 64
    :goto_0
    if-ge v4, v2, :cond_1

    .line 65
    .line 66
    aget-object v5, v0, v4

    .line 67
    .line 68
    iget v6, v1, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I

    .line 69
    .line 70
    invoke-static {v3, v5, v6}, Landroid/content/pm/split/DefaultSplitAssetLoader;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iput-object v3, v1, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    return-object v3

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    move-object/from16 v3, v21

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_2
    move-exception v0

    .line 86
    move-object v3, v15

    .line 87
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/split/DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object p1

    return-object p1
.end method
