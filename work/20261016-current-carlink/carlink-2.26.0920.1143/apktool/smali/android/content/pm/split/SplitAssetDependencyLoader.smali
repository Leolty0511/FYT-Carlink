.class public Landroid/content/pm/split/SplitAssetDependencyLoader;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "SourceFile"

# interfaces
.implements Landroid/content/pm/split/SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader<",
        "Landroid/content/pm/PackageParser$PackageParserException;",
        ">;",
        "Landroid/content/pm/split/SplitAssetLoader;"
    }
.end annotation


# instance fields
.field private mCachedAssetManagers:[Landroid/content/res/AssetManager;

.field private mCachedPaths:[[Ljava/lang/String;

.field private final mFlags:I

.field private final mSplitPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            "Landroid/util/SparseArray<",
            "[I>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 5
    .line 6
    array-length v0, p2

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v0, v2

    .line 17
    .line 18
    array-length p1, p2

    .line 19
    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iput p3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    .line 23
    .line 24
    array-length p1, v0

    .line 25
    new-array p1, p1, [[Ljava/lang/String;

    .line 26
    .line 27
    iput-object p1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    .line 28
    .line 29
    array-length p1, v0

    .line 30
    new-array p1, p1, [Landroid/content/res/AssetManager;

    .line 31
    .line 32
    iput-object p1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 33
    .line 34
    return-void
.end method

.method private static createAssetManagerWithPaths([Ljava/lang/String;I)Landroid/content/res/AssetManager;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v15, Landroid/content/res/AssetManager;

    .line 4
    .line 5
    invoke-direct {v15}, Landroid/content/res/AssetManager;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v14, 0x0

    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    const/16 v17, 0x0

    .line 24
    .line 25
    const/16 v18, 0x0

    .line 26
    .line 27
    const/16 v19, 0x0

    .line 28
    .line 29
    :try_start_0
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    .line 31
    move-object v1, v15

    .line 32
    move-object/from16 v21, v15

    .line 33
    .line 34
    move/from16 v15, v16

    .line 35
    .line 36
    move/from16 v16, v17

    .line 37
    .line 38
    move/from16 v17, v18

    .line 39
    .line 40
    move/from16 v18, v19

    .line 41
    .line 42
    move/from16 v19, v20

    .line 43
    .line 44
    :try_start_1
    invoke-virtual/range {v1 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 45
    .line 46
    .line 47
    array-length v1, v0

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_0
    if-ge v2, v1, :cond_3

    .line 50
    .line 51
    aget-object v3, v0, v2

    .line 52
    .line 53
    and-int/lit8 v4, p1, 0x4

    .line 54
    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-static {v3}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "Invalid package file: "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/16 v2, -0x64

    .line 84
    .line 85
    invoke-direct {v0, v2, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    :cond_1
    :goto_1
    move-object/from16 v4, v21

    .line 90
    .line 91
    :try_start_2
    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_2

    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    move-object/from16 v21, v4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "Failed adding asset path: "

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const/16 v2, -0x65

    .line 122
    .line 123
    invoke-direct {v0, v2, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    move-object/from16 v4, v21

    .line 130
    .line 131
    return-object v4

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    move-object/from16 v4, v21

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catchall_2
    move-exception v0

    .line 137
    move-object v4, v15

    .line 138
    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 139
    .line 140
    .line 141
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public constructSplit(I[II)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-ltz p3, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    .line 9
    .line 10
    aget-object p3, v1, p3

    .line 11
    .line 12
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    .line 16
    .line 17
    aget-object p3, p3, p1

    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    array-length p3, p2

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, p3, :cond_1

    .line 25
    .line 26
    aget v2, p2, v1

    .line 27
    .line 28
    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    .line 29
    .line 30
    aget-object v2, v3, v2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    new-array p3, p3, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    check-cast p3, [Ljava/lang/String;

    .line 51
    .line 52
    aput-object p3, p2, p1

    .line 53
    .line 54
    iget-object p2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 55
    .line 56
    iget-object p3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    .line 57
    .line 58
    aget-object p3, p3, p1

    .line 59
    .line 60
    iget v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    .line 61
    .line 62
    invoke-static {p3, v0}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createAssetManagerWithPaths([Ljava/lang/String;I)Landroid/content/res/AssetManager;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    aput-object p3, p2, p1

    .line 67
    .line 68
    return-void
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/split/SplitDependencyLoader;->loadDependenciesForSplit(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 6
    .line 7
    aget-object v0, v1, v0

    .line 8
    .line 9
    return-object v0
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->loadDependenciesForSplit(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    return-object p1
.end method

.method public isSplitCached(I)Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
