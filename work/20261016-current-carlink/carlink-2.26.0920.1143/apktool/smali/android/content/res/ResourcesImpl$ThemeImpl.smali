.class public Landroid/content/res/ResourcesImpl$ThemeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeImpl"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mKey:Landroid/content/res/Resources$ThemeKey;

.field private final mTheme:J

.field private mThemeResId:I

.field final synthetic this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method public constructor <init>(Landroid/content/res/ResourcesImpl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 15
    .line 16
    iget-object p1, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->createTheme()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$000(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;
    .locals 0

    iget-object p0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object p0
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 5
    .line 6
    invoke-static {v1, v2, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 10
    .line 11
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 12
    .line 13
    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 5
    .line 6
    invoke-static {v1, v2, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public finalize()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 5
    .line 6
    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getAllAttributes()[I
    .locals 2

    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAppliedStyleResId()I
    .locals 1

    iget v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 5
    .line 6
    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->getThemeChangingConfigurations(J)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    monitor-exit v0

    .line 15
    return v1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method public getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method

.method public getNativeTheme()J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    return-wide v0
.end method

.method public getTheme()[Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 5
    .line 6
    iget v1, v1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 7
    .line 8
    mul-int/lit8 v2, v1, 0x2

    .line 9
    .line 10
    new-array v3, v2, [Ljava/lang/String;

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v2, :cond_1

    .line 16
    .line 17
    iget-object v5, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 18
    .line 19
    iget-object v6, v5, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 20
    .line 21
    aget v6, v6, v1

    .line 22
    .line 23
    iget-object v5, v5, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 24
    .line 25
    aget-boolean v5, v5, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    :try_start_1
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    .line 28
    .line 29
    invoke-virtual {v7, v6}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    aput-object v6, v3, v4
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    aput-object v6, v3, v4

    .line 41
    .line 42
    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    const-string v5, "forced"

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    const-string/jumbo v5, "not forced"

    .line 50
    .line 51
    .line 52
    :goto_2
    aput-object v5, v3, v6

    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x2

    .line 55
    .line 56
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    monitor-exit v0

    .line 60
    return-object v3

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw v1
.end method

.method public obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    iget-object v14, v1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 6
    .line 7
    monitor-enter v14

    .line 8
    :try_start_0
    array-length v2, v0

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v3, v2}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object v15

    .line 17
    move-object/from16 v12, p2

    .line 18
    .line 19
    check-cast v12, Landroid/content/res/XmlBlock$Parser;

    .line 20
    .line 21
    iget-wide v2, v1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 22
    .line 23
    if-eqz v12, :cond_0

    .line 24
    .line 25
    iget-wide v4, v12, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    :goto_0
    move-wide v6, v4

    .line 31
    array-length v9, v0

    .line 32
    iget-wide v10, v15, Landroid/content/res/TypedArray;->mDataAddress:J

    .line 33
    .line 34
    iget-wide v4, v15, Landroid/content/res/TypedArray;->mIndicesAddress:J

    .line 35
    .line 36
    move-wide/from16 v16, v4

    .line 37
    .line 38
    move/from16 v4, p4

    .line 39
    .line 40
    move/from16 v5, p5

    .line 41
    .line 42
    move-object/from16 v8, p3

    .line 43
    .line 44
    move-object v0, v12

    .line 45
    move-wide/from16 v12, v16

    .line 46
    .line 47
    invoke-static/range {v2 .. v13}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[IIJJ)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v2, p1

    .line 51
    .line 52
    iput-object v2, v15, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 53
    .line 54
    iput-object v0, v15, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 55
    .line 56
    monitor-exit v14

    .line 57
    return-object v15

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw v0
.end method

.method public rebase()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 5
    .line 6
    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->clearTheme(J)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 11
    .line 12
    iget v3, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 13
    .line 14
    if-ge v1, v3, :cond_0

    .line 15
    .line 16
    iget-object v3, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 17
    .line 18
    aget v3, v3, v1

    .line 19
    .line 20
    iget-object v2, v2, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 21
    .line 22
    aget-boolean v2, v2, v1

    .line 23
    .line 24
    iget-wide v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 25
    .line 26
    invoke-static {v4, v5, v3, v2}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 5
    .line 6
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 7
    .line 8
    move v4, p1

    .line 9
    move-object v5, p2

    .line 10
    move v6, p3

    .line 11
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    monitor-exit v0

    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    array-length v1, p3

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    array-length v2, p2

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    iget-object v8, v1, Landroid/content/res/TypedArray;->mData:[I

    .line 23
    .line 24
    iget-object v9, v1, Landroid/content/res/TypedArray;->mIndices:[I

    .line 25
    .line 26
    move-object v6, p2

    .line 27
    move-object v7, p3

    .line 28
    invoke-static/range {v2 .. v9}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    .line 29
    .line 30
    .line 31
    iput-object p1, v1, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, v1, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-object v1

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p2, "Base attribute values must the same length as attrs"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method

.method public setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 8
    .line 9
    iget-wide v4, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->copyTheme(JJ)V

    .line 12
    .line 13
    .line 14
    iget v2, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 15
    .line 16
    iput v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 17
    .line 18
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v2, p1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :try_start_4
    throw p1

    .line 33
    :catchall_1
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35
    throw p1
.end method
