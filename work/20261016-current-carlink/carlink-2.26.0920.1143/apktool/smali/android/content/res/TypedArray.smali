.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field mData:[I

.field mDataAddress:J

.field mIndices:[I

.field mIndicesAddress:J

.field mLength:I

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mRecycled:Z

.field private final mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 24
    .line 25
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x0

    .line 4
    .line 5
    aget v1, v0, v1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 12
    .line 13
    add-int/lit8 v2, p1, 0x1

    .line 14
    .line 15
    aget v2, v0, v2

    .line 16
    .line 17
    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 18
    .line 19
    add-int/lit8 v2, p1, 0x2

    .line 20
    .line 21
    aget v2, v0, v2

    .line 22
    .line 23
    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 24
    .line 25
    add-int/lit8 v2, p1, 0x3

    .line 26
    .line 27
    aget v2, v0, v2

    .line 28
    .line 29
    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 30
    .line 31
    add-int/lit8 v2, p1, 0x4

    .line 32
    .line 33
    aget v2, v0, v2

    .line 34
    .line 35
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 40
    .line 41
    add-int/lit8 v2, p1, 0x5

    .line 42
    .line 43
    aget v0, v0, v2

    .line 44
    .line 45
    iput v0, p2, Landroid/util/TypedValue;->density:I

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    if-ne v1, v0, :cond_1

    .line 49
    .line 50
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_0
    iput-object p1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    return p1
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x2

    .line 4
    .line 5
    aget v1, v0, v1

    .line 6
    .line 7
    if-gez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    aget p1, v0, p1

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    aget p1, v0, p1

    .line 29
    .line 30
    invoke-virtual {v2, v1, p1}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public static obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/res/TypedArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/content/res/TypedArray;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iput-object p0, v0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Landroid/content/res/TypedArray;->resize(I)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method private resize(I)V
    .locals 6

    .line 1
    iput p1, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 2
    .line 3
    mul-int/lit8 v0, p1, 0x6

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v2, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 20
    .line 21
    array-length v2, v2

    .line 22
    if-ge v2, v0, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [I

    .line 31
    .line 32
    iput-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    iput-wide v3, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    .line 39
    .line 40
    invoke-virtual {v1, v2, p1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [I

    .line 45
    .line 46
    iput-object p1, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Landroid/content/res/TypedArray;->mIndicesAddress:J

    .line 53
    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public extractThemeAttrs([I)[I
    .locals 9

    .line 2
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_4

    mul-int/lit8 v5, v4, 0x6

    add-int/lit8 v6, v5, 0x0

    .line 5
    aget v7, v0, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    aput v2, v0, v6

    add-int/lit8 v5, v5, 0x1

    .line 7
    aget v5, v0, v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-nez v3, :cond_3

    if-eqz p1, :cond_2

    .line 8
    array-length v3, p1

    if-ne v3, v1, :cond_2

    .line 9
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    move-object v3, p1

    goto :goto_1

    .line 10
    :cond_2
    new-array v3, v1, [I

    .line 11
    :cond_3
    :goto_1
    aput v5, v3, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoolean(IZ)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    const/16 v2, 0x10

    .line 17
    .line 18
    if-lt v1, v2, :cond_2

    .line 19
    .line 20
    const/16 v2, 0x1f

    .line 21
    .line 22
    if-gt v1, v2, :cond_2

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    add-int/2addr p1, p2

    .line 26
    aget p1, v0, p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    :goto_0
    return p2

    .line 33
    :cond_2
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    invoke-static {v0}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "getBoolean of bad type: 0x"

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 71
    .line 72
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public getChangingConfigurations()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    mul-int/lit8 v4, v2, 0x6

    .line 16
    .line 17
    add-int/lit8 v5, v4, 0x0

    .line 18
    .line 19
    aget v5, v0, v5

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v4, v4, 0x4

    .line 25
    .line 26
    aget v4, v0, v4

    .line 27
    .line 28
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    or-int/2addr v3, v4

    .line 33
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v3

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v1, "Cannot make calls to a recycled instance!"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public getColor(II)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    mul-int/lit8 v0, p1, 0x6

    .line 6
    .line 7
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x0

    .line 10
    .line 11
    aget v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    const/16 v3, 0x10

    .line 17
    .line 18
    if-lt v2, v3, :cond_1

    .line 19
    .line 20
    const/16 v3, 0x1f

    .line 21
    .line 22
    if-gt v2, v3, :cond_1

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    aget p1, v1, v0

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    const/4 v1, 0x3

    .line 30
    if-ne v2, v1, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 33
    .line 34
    invoke-direct {p0, v0, p1}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 41
    .line 42
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 43
    .line 44
    iget-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 45
    .line 46
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :cond_2
    return p2

    .line 56
    :cond_3
    const/4 p2, 0x2

    .line 57
    if-ne v2, p2, :cond_4

    .line 58
    .line 59
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 60
    .line 61
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Failed to resolve attribute at index "

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, ": "

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_4
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 93
    .line 94
    const-string v0, "Can\'t convert value at index "

    .line 95
    .line 96
    const-string v1, " to color: type=0x"

    .line 97
    .line 98
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p2

    .line 110
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 111
    .line 112
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 6
    .line 7
    mul-int/lit8 v1, p1, 0x6

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 21
    .line 22
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 23
    .line 24
    iget-object v2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Failed to resolve attribute at index "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ": "

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :cond_1
    const/4 p1, 0x0

    .line 60
    return-object p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public getComplexColor(I)Landroid/content/res/ComplexColor;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 6
    .line 7
    mul-int/lit8 v1, p1, 0x6

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 21
    .line 22
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 23
    .line 24
    iget-object v2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Failed to resolve attribute at index "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ": "

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :cond_1
    const/4 p1, 0x0

    .line 60
    return-object p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public getDimension(IF)F
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 v0, p1, 0x6

    .line 6
    .line 7
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x0

    .line 10
    .line 11
    aget v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    const/4 p2, 0x5

    .line 17
    if-ne v2, p2, :cond_1

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    aget p1, v1, v0

    .line 22
    .line 23
    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p2, 0x2

    .line 31
    if-ne v2, p2, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 34
    .line 35
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Failed to resolve attribute at index "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ": "

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 67
    .line 68
    const-string v0, "Can\'t convert value at index "

    .line 69
    .line 70
    const-string v1, " to dimension: type=0x"

    .line 71
    .line 72
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public getDimensionPixelOffset(II)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 v0, p1, 0x6

    .line 6
    .line 7
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x0

    .line 10
    .line 11
    aget v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    const/4 p2, 0x5

    .line 17
    if-ne v2, p2, :cond_1

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    aget p1, v1, v0

    .line 22
    .line 23
    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p2, 0x2

    .line 31
    if-ne v2, p2, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 34
    .line 35
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Failed to resolve attribute at index "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ": "

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 67
    .line 68
    const-string v0, "Can\'t convert value at index "

    .line 69
    .line 70
    const-string v1, " to dimension: type=0x"

    .line 71
    .line 72
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public getDimensionPixelSize(II)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 v0, p1, 0x6

    .line 6
    .line 7
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x0

    .line 10
    .line 11
    aget v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    const/4 p2, 0x5

    .line 17
    if-ne v2, p2, :cond_1

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    aget p1, v1, v0

    .line 22
    .line 23
    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p2, 0x2

    .line 31
    if-ne v2, p2, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 34
    .line 35
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Failed to resolve attribute at index "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ": "

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 67
    .line 68
    const-string v0, "Can\'t convert value at index "

    .line 69
    .line 70
    const-string v1, " to dimension: type=0x"

    .line 71
    .line 72
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 6
    .line 7
    mul-int/lit8 v1, p1, 0x6

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    if-lez p2, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 23
    .line 24
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 31
    .line 32
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 33
    .line 34
    iget-object v2, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Failed to resolve attribute at index "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ": "

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p2

    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    return-object p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 72
    .line 73
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public getFloat(IF)F
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    const/4 p2, 0x4

    .line 17
    if-ne v1, p2, :cond_1

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    aget p1, v0, p1

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    const/16 p2, 0x10

    .line 29
    .line 30
    if-lt v1, p2, :cond_2

    .line 31
    .line 32
    const/16 p2, 0x1f

    .line 33
    .line 34
    if-gt v1, p2, :cond_2

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    aget p1, v0, p1

    .line 39
    .line 40
    int-to-float p1, p1

    .line 41
    return p1

    .line 42
    :cond_2
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-static {p2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "getFloat of bad type: 0x"

    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public getFont(I)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 6
    .line 7
    mul-int/lit8 v1, p1, 0x6

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 21
    .line 22
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getFont(Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Failed to resolve attribute at index "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ": "

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_1
    const/4 p1, 0x0

    .line 58
    return-object p1

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public getFraction(IIIF)F
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 v0, p1, 0x6

    .line 6
    .line 7
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x0

    .line 10
    .line 11
    aget v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return p4

    .line 16
    :cond_0
    const/4 p4, 0x6

    .line 17
    if-ne v2, p4, :cond_1

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    aget p1, v1, v0

    .line 22
    .line 23
    int-to-float p2, p2

    .line 24
    int-to-float p3, p3

    .line 25
    invoke-static {p1, p2, p3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p2, 0x2

    .line 31
    if-ne v2, p2, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 34
    .line 35
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 36
    .line 37
    .line 38
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    .line 39
    .line 40
    new-instance p4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "Failed to resolve attribute at index "

    .line 43
    .line 44
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ": "

    .line 51
    .line 52
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p3

    .line 66
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 67
    .line 68
    const-string p3, "Can\'t convert value at index "

    .line 69
    .line 70
    const-string p4, " to fraction: type=0x"

    .line 71
    .line 72
    invoke-static {p3, p1, p4}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public getIndex(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    aget p1, v0, p1

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public getIndexCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string v1, "Cannot make calls to a recycled instance!"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getInt(II)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    const/16 v2, 0x10

    .line 17
    .line 18
    if-lt v1, v2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x1f

    .line 21
    .line 22
    if-gt v1, v2, :cond_1

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    aget p1, v0, p1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-static {v0}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "getInt of bad type: 0x"

    .line 54
    .line 55
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public getInteger(II)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 v0, p1, 0x6

    .line 6
    .line 7
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x0

    .line 10
    .line 11
    aget v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    const/16 p2, 0x10

    .line 17
    .line 18
    if-lt v2, p2, :cond_1

    .line 19
    .line 20
    const/16 p2, 0x1f

    .line 21
    .line 22
    if-gt v2, p2, :cond_1

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    aget p1, v1, v0

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p2, 0x2

    .line 30
    if-ne v2, p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 33
    .line 34
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Failed to resolve attribute at index "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ": "

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 66
    .line 67
    const-string v0, "Can\'t convert value at index "

    .line 68
    .line 69
    const-string v1, " to integer: type=0x"

    .line 70
    .line 71
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 84
    .line 85
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method public getLayoutDimension(II)I
    .locals 3

    .line 11
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_2

    mul-int/lit8 p1, p1, 0x6

    .line 12
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    .line 13
    aget v1, v0, v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 14
    aget p1, v0, p1

    return p1

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 15
    aget p1, v0, p1

    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    :cond_1
    return p2

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3

    mul-int/lit8 v0, p1, 0x6

    .line 2
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v2, v0, 0x0

    .line 3
    aget v2, v1, v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    aget p1, v1, v0

    return p1

    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 5
    aget p1, v1, v0

    iget-object p2, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x2

    if-ne v2, v1, :cond_2

    .line 6
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 7
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to resolve attribute at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": You must supply a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot make calls to a recycled instance!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    add-int/lit8 v2, p1, 0x4

    .line 14
    .line 15
    aget v0, v0, v2

    .line 16
    .line 17
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    not-int p2, p2

    .line 22
    and-int/2addr p2, v0

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 p2, 0x3

    .line 31
    if-ne v1, p2, :cond_2

    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_2
    iget-object p2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3
    return-object v0

    .line 61
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "getNonConfigurationString of bad type: 0x"

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x2

    .line 17
    .line 18
    aget v1, v0, v1

    .line 19
    .line 20
    if-gez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    aget p1, v0, p1

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return-object p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "<internal>"

    .line 15
    .line 16
    :goto_0
    return-object v0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v1, "Cannot make calls to a recycled instance!"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public getResourceId(II)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x3

    .line 16
    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    return p2

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v1, "Cannot make calls to a recycled instance!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    const/4 v2, 0x3

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 30
    .line 31
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_2
    return-object v1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "getString of bad type: 0x"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 26
    .line 27
    invoke-direct {p0, p1, v1}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "getText of bad type: 0x"

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 6
    .line 7
    mul-int/lit8 p1, p1, 0x6

    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 16
    .line 17
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public getThemeAttributeId(II)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    aget p1, v0, p1

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    return p2

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public getType(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x0

    .line 10
    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string p2, "Cannot make calls to a recycled instance!"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public hasValue(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    add-int/2addr p1, v1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public hasValueOrEmpty(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x6

    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 8
    .line 9
    add-int/lit8 v1, p1, 0x0

    .line 10
    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    add-int/2addr p1, v2

    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :cond_1
    :goto_0
    return v2

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public length()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v1, "Cannot make calls to a recycled instance!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 6
    .line 7
    mul-int/lit8 p1, p1, 0x6

    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v0, "Cannot make calls to a recycled instance!"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public recycle()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 10
    .line 11
    iput-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 12
    .line 13
    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 14
    .line 15
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 16
    .line 17
    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " recycled twice!"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
