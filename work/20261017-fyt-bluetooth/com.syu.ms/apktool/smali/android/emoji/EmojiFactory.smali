.class public final Landroid/emoji/EmojiFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNativeEmojiFactory:I

.field private sCacheSize:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    .line 3
    iput p1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    .line 4
    iput-object p2, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    .line 5
    new-instance p1, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {p1, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object p1, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Landroid/emoji/EmojiFactory;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    return p0
.end method

.method private native nativeDestructor(I)V
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificPua(II)I
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificSjis(IC)I
.end method

.method private native nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetMaximumAndroidPua(I)I
.end method

.method private native nativeGetMaximumVendorSpecificPua(I)I
.end method

.method private native nativeGetMinimumAndroidPua(I)I
.end method

.method private native nativeGetMinimumVendorSpecificPua(I)I
.end method

.method private native nativeGetVendorSpecificPuaFromAndroidPua(II)I
.end method

.method private native nativeGetVendorSpecificSjisFromAndroidPua(II)I
.end method

.method public static native newAvailableInstance()Landroid/emoji/EmojiFactory;
.end method

.method public static native newInstance(Ljava/lang/String;)Landroid/emoji/EmojiFactory;
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificPua(II)I

    move-result p1

    return p1
.end method

.method public getAndroidPuaFromVendorSpecificPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMinimumVendorSpecificPua(I)I

    move-result v0

    .line 3
    iget v1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v1}, Landroid/emoji/EmojiFactory;->nativeGetMaximumVendorSpecificPua(I)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    new-array v4, v4, [I

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_2

    .line 6
    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-gt v0, v7, :cond_1

    if-gt v7, v1, :cond_1

    .line 7
    invoke-virtual {p0, v7}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v8

    if-lez v8, :cond_1

    .line 8
    aput v8, v4, v6

    goto :goto_1

    .line 9
    :cond_1
    aput v7, v4, v6

    :goto_1
    const/4 v7, 0x1

    .line 10
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    return-object p1
.end method

.method public getAndroidPuaFromVendorSpecificSjis(C)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificSjis(IC)I

    move-result p1

    return p1
.end method

.method public declared-synchronized getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-object v0

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 6
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-object v0

    .line 9
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBitmapFromVendorSpecificPua(I)Landroid/graphics/Bitmap;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBitmapFromVendorSpecificSjis(C)Landroid/graphics/Bitmap;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificSjis(C)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMaximumAndroidPua()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getMinimumAndroidPua()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificPuaFromAndroidPua(II)I

    move-result p1

    return p1
.end method

.method public getVendorSpecificPuaFromAndroidPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v0

    .line 3
    iget v1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v1}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    new-array v4, v4, [I

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_2

    .line 6
    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-gt v0, v7, :cond_1

    if-gt v7, v1, :cond_1

    .line 7
    invoke-virtual {p0, v7}, Landroid/emoji/EmojiFactory;->getVendorSpecificPuaFromAndroidPua(I)I

    move-result v8

    if-lez v8, :cond_1

    .line 8
    aput v8, v4, v6

    goto :goto_1

    .line 9
    :cond_1
    aput v7, v4, v6

    :goto_1
    const/4 v7, 0x1

    .line 10
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4, v3, v6}, Ljava/lang/String;-><init>([III)V

    return-object p1
.end method

.method public getVendorSpecificSjisFromAndroidPua(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificSjisFromAndroidPua(II)I

    move-result p1

    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    return-object v0
.end method
