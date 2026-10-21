.class public final Landroidx/core/util/LruCacheKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final lruCache(ILz/p;Lz/l;Lz/r;)Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lz/p;",
            "Lz/l;",
            "Lz/r;",
            ")",
            "Landroid/util/LruCache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "sizeOf"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "create"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "onEntryRemoved"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroidx/core/util/LruCacheKt$lruCache$4;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/util/LruCacheKt$lruCache$4;-><init>(ILz/p;Lz/l;Lz/r;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static synthetic lruCache$default(ILz/p;Lz/l;Lz/r;ILjava/lang/Object;)Landroid/util/LruCache;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/core/util/LruCacheKt$lruCache$1;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$1;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    sget-object p2, Landroidx/core/util/LruCacheKt$lruCache$2;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$2;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x8

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    sget-object p3, Landroidx/core/util/LruCacheKt$lruCache$3;->INSTANCE:Landroidx/core/util/LruCacheKt$lruCache$3;

    .line 18
    .line 19
    :cond_2
    const-string/jumbo p4, "sizeOf"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p4, "create"

    .line 26
    .line 27
    invoke-static {p2, p4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p4, "onEntryRemoved"

    .line 31
    .line 32
    invoke-static {p3, p4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p4, Landroidx/core/util/LruCacheKt$lruCache$4;

    .line 36
    .line 37
    invoke-direct {p4, p0, p1, p2, p3}, Landroidx/core/util/LruCacheKt$lruCache$4;-><init>(ILz/p;Lz/l;Lz/r;)V

    .line 38
    .line 39
    .line 40
    return-object p4
.end method
