.class public final Landroid/util/ArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field public static final EMPTY:Landroid/util/ArrayMap;

.field static final EMPTY_IMMUTABLE_INTS:[I

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    .line 5
    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p2, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-gez p1, :cond_0

    .line 5
    sget-object p1, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    iput-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 6
    sget-object p1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 8
    sget-object p1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    :goto_0
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Landroid/util/ArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 2
    .line 3
    sget-object v1, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    const-class v0, Landroid/util/ArrayMap;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v4, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object p1, v4, v2

    .line 24
    .line 25
    check-cast p1, [Ljava/lang/Object;

    .line 26
    .line 27
    sput-object p1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 28
    .line 29
    aget-object p1, v4, v3

    .line 30
    .line 31
    check-cast p1, [I

    .line 32
    .line 33
    iput-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 34
    .line 35
    aput-object v1, v4, v3

    .line 36
    .line 37
    aput-object v1, v4, v2

    .line 38
    .line 39
    sget p1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 40
    .line 41
    sub-int/2addr p1, v3

    .line 42
    sput p1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :cond_0
    monitor-exit v0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1

    .line 51
    :cond_1
    const/4 v0, 0x4

    .line 52
    if-ne p1, v0, :cond_3

    .line 53
    .line 54
    const-class v0, Landroid/util/ArrayMap;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_1
    sget-object v4, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 62
    .line 63
    aget-object p1, v4, v2

    .line 64
    .line 65
    check-cast p1, [Ljava/lang/Object;

    .line 66
    .line 67
    sput-object p1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 68
    .line 69
    aget-object p1, v4, v3

    .line 70
    .line 71
    check-cast p1, [I

    .line 72
    .line 73
    iput-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 74
    .line 75
    aput-object v1, v4, v3

    .line 76
    .line 77
    aput-object v1, v4, v2

    .line 78
    .line 79
    sget p1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 80
    .line 81
    sub-int/2addr p1, v3

    .line 82
    sput p1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :cond_2
    monitor-exit v0

    .line 87
    goto :goto_0

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    throw p1

    .line 91
    :cond_3
    :goto_0
    new-array v0, p1, [I

    .line 92
    .line 93
    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 94
    .line 95
    shl-int/2addr p1, v3

    .line 96
    new-array p1, p1, [Ljava/lang/Object;

    .line 97
    .line 98
    iput-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 102
    .line 103
    const-string v0, "ArrayMap is immutable"

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method private static binarySearchHashes([III)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0xa

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    const-class v0, Landroid/util/ArrayMap;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 16
    .line 17
    if-ge v1, v5, :cond_1

    .line 18
    .line 19
    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v1, p1, v4

    .line 22
    .line 23
    aput-object p0, p1, v6

    .line 24
    .line 25
    shl-int/lit8 p0, p2, 0x1

    .line 26
    .line 27
    sub-int/2addr p0, v6

    .line 28
    :goto_0
    if-lt p0, v3, :cond_0

    .line 29
    .line 30
    aput-object v2, p1, p0

    .line 31
    .line 32
    add-int/lit8 p0, p0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sput-object p1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 36
    .line 37
    sget p0, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 38
    .line 39
    add-int/2addr p0, v6

    .line 40
    sput p0, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 41
    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_2
    array-length v0, p0

    .line 48
    const/4 v1, 0x4

    .line 49
    if-ne v0, v1, :cond_5

    .line 50
    .line 51
    const-class v0, Landroid/util/ArrayMap;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_1
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 55
    .line 56
    if-ge v1, v5, :cond_4

    .line 57
    .line 58
    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v1, p1, v4

    .line 61
    .line 62
    aput-object p0, p1, v6

    .line 63
    .line 64
    shl-int/lit8 p0, p2, 0x1

    .line 65
    .line 66
    sub-int/2addr p0, v6

    .line 67
    :goto_1
    if-lt p0, v3, :cond_3

    .line 68
    .line 69
    aput-object v2, p1, p0

    .line 70
    .line 71
    add-int/lit8 p0, p0, -0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    sput-object p1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 75
    .line 76
    sget p0, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 77
    .line 78
    add-int/2addr p0, v6

    .line 79
    sput p0, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 80
    .line 81
    :cond_4
    monitor-exit v0

    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    throw p0

    .line 86
    :cond_5
    :goto_2
    return-void
.end method

.method private getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArrayMap$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/util/ArrayMap$1;-><init>(Landroid/util/ArrayMap;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v1, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-ge v0, v3, :cond_3

    .line 24
    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    add-int/lit8 v3, v0, -0x1

    .line 28
    .line 29
    aget v4, v2, v3

    .line 30
    .line 31
    if-le v4, v1, :cond_2

    .line 32
    .line 33
    new-instance v2, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    const-string v4, "here"

    .line 36
    .line 37
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    const-string v4, "New hash "

    .line 44
    .line 45
    const-string v5, " is before end of array hash "

    .line 46
    .line 47
    invoke-static {v4, v1, v5}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 52
    .line 53
    aget v3, v4, v3

    .line 54
    .line 55
    const-string v4, " at index "

    .line 56
    .line 57
    const-string v5, " key "

    .line 58
    .line 59
    invoke-static {v1, v3, v4, v0, v5}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "ArrayMap"

    .line 70
    .line 71
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 79
    .line 80
    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 81
    .line 82
    aput v1, v2, v0

    .line 83
    .line 84
    shl-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 87
    .line 88
    aput-object p1, v1, v0

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    aput-object p2, v1, v0

    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    const-string p2, "Array is full"

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public clear()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 6
    .line 7
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    .line 10
    .line 11
    iput-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 12
    .line 13
    sget-object v3, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 24
    .line 25
    if-gtz v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ensureCapacity(I)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v2, p1, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 11
    .line 12
    .line 13
    iget p1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 14
    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 24
    .line 25
    shl-int/lit8 v4, v0, 0x1

    .line 26
    .line 27
    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {v1, v2, v0}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget p1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

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
    instance-of v1, p1, Ljava/util/Map;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    check-cast p1, Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    move v1, v2

    .line 24
    :goto_0
    :try_start_0
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 25
    .line 26
    if-ge v1, v3, :cond_5

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_4

    .line 49
    .line 50
    :cond_2
    return v2

    .line 51
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    return v0

    .line 62
    :catch_0
    :cond_6
    return v2
.end method

.method public erase()V
    .locals 5

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v0, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v4, v1, v3

    .line 15
    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 8
    .line 9
    shl-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    aget-object p1, v0, p1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    move v5, v3

    .line 10
    move v6, v5

    .line 11
    :goto_0
    if-ge v5, v2, :cond_1

    .line 12
    .line 13
    aget-object v7, v1, v4

    .line 14
    .line 15
    aget v8, v0, v5

    .line 16
    .line 17
    if-nez v7, :cond_0

    .line 18
    .line 19
    move v7, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    :goto_1
    xor-int/2addr v7, v8

    .line 26
    add-int/2addr v6, v7

    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v6
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 5

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 8
    .line 9
    invoke-static {v1, v0, p2}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gez v1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 17
    .line 18
    shl-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    aget-object v2, v2, v3

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 30
    .line 31
    :goto_0
    if-ge v2, v0, :cond_4

    .line 32
    .line 33
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 34
    .line 35
    aget v3, v3, v2

    .line 36
    .line 37
    if-ne v3, p2, :cond_4

    .line 38
    .line 39
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 40
    .line 41
    shl-int/lit8 v4, v2, 0x1

    .line 42
    .line 43
    aget-object v3, v3, v4

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    :goto_1
    if-ltz v1, :cond_6

    .line 58
    .line 59
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 60
    .line 61
    aget v0, v0, v1

    .line 62
    .line 63
    if-ne v0, p2, :cond_6

    .line 64
    .line 65
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 66
    .line 67
    shl-int/lit8 v3, v1, 0x1

    .line 68
    .line 69
    aget-object v0, v0, v3

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    not-int p1, v2

    .line 82
    return p1
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v0, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    :goto_1
    return p1
.end method

.method public indexOfNull()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-gez v1, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 18
    .line 19
    shl-int/lit8 v3, v1, 0x1

    .line 20
    .line 21
    aget-object v2, v2, v3

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    :goto_0
    if-ge v2, v0, :cond_4

    .line 29
    .line 30
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 31
    .line 32
    aget v3, v3, v2

    .line 33
    .line 34
    if-nez v3, :cond_4

    .line 35
    .line 36
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 37
    .line 38
    shl-int/lit8 v4, v2, 0x1

    .line 39
    .line 40
    aget-object v3, v3, v4

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    return v2

    .line 45
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :goto_1
    if-ltz v1, :cond_6

    .line 51
    .line 52
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 53
    .line 54
    aget v0, v0, v1

    .line 55
    .line 56
    if-nez v0, :cond_6

    .line 57
    .line 58
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 59
    .line 60
    shl-int/lit8 v3, v1, 0x1

    .line 61
    .line 62
    aget-object v0, v0, v3

    .line 63
    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    return v1

    .line 67
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    not-int v0, v2

    .line 71
    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    move p1, v2

    .line 11
    :goto_0
    if-ge p1, v0, :cond_3

    .line 12
    .line 13
    aget-object v3, v1, p1

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    shr-int/2addr p1, v2

    .line 18
    return p1

    .line 19
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v3, v2

    .line 23
    :goto_1
    if-ge v3, v0, :cond_3

    .line 24
    .line 25
    aget-object v4, v1, v3

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    shr-int/lit8 p1, v3, 0x1

    .line 34
    .line 35
    return p1

    .line 36
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 p1, -0x1

    .line 40
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-boolean v2, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    move v8, v3

    .line 30
    move v3, v2

    .line 31
    move v2, v8

    .line 32
    :goto_1
    if-ltz v2, :cond_2

    .line 33
    .line 34
    shl-int/lit8 p1, v2, 0x1

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 39
    .line 40
    aget-object v1, v0, p1

    .line 41
    .line 42
    aput-object p2, v0, p1

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    not-int v2, v2

    .line 46
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 47
    .line 48
    array-length v5, v4

    .line 49
    if-lt v0, v5, :cond_7

    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    if-lt v0, v5, :cond_3

    .line 54
    .line 55
    shr-int/lit8 v5, v0, 0x1

    .line 56
    .line 57
    add-int/2addr v5, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/4 v6, 0x4

    .line 60
    if-lt v0, v6, :cond_4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move v5, v6

    .line 64
    :goto_2
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 65
    .line 66
    invoke-direct {p0, v5}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 67
    .line 68
    .line 69
    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    .line 70
    .line 71
    if-ne v0, v5, :cond_6

    .line 72
    .line 73
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 74
    .line 75
    array-length v7, v5

    .line 76
    if-lez v7, :cond_5

    .line 77
    .line 78
    array-length v7, v4

    .line 79
    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 83
    .line 84
    array-length v7, v6

    .line 85
    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-static {v4, v6, v0}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_7
    :goto_3
    if-ge v2, v0, :cond_8

    .line 99
    .line 100
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 101
    .line 102
    add-int/lit8 v4, v2, 0x1

    .line 103
    .line 104
    sub-int v5, v0, v2

    .line 105
    .line 106
    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 110
    .line 111
    shl-int/lit8 v5, v2, 0x1

    .line 112
    .line 113
    shl-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    .line 116
    .line 117
    sub-int/2addr v6, v2

    .line 118
    shl-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 124
    .line 125
    if-ne v0, v1, :cond_9

    .line 126
    .line 127
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 128
    .line 129
    array-length v4, v0

    .line 130
    if-ge v2, v4, :cond_9

    .line 131
    .line 132
    aput v3, v0, v2

    .line 133
    .line 134
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 135
    .line 136
    shl-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    aput-object p1, v0, v2

    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    aput-object p2, v0, v2

    .line 143
    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    iput v1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    return-object p1

    .line 150
    :cond_9
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 153
    .line 154
    .line 155
    throw p1
.end method

.method public putAll(Landroid/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/util/ArrayMap;->mSize:I

    .line 2
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 3
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    .line 4
    iget-object v1, p1, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 5
    iget-object p1, p1, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 8
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 2
    .line 3
    shl-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-object v2, v0, v2

    .line 8
    .line 9
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-gt v3, v5, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 16
    .line 17
    invoke-static {p1, v0, v3}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    .line 21
    .line 22
    iput-object p1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 23
    .line 24
    sget-object p1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v6, v3, -0x1

    .line 30
    .line 31
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 32
    .line 33
    array-length v8, v7

    .line 34
    const/16 v9, 0x8

    .line 35
    .line 36
    if-le v8, v9, :cond_4

    .line 37
    .line 38
    array-length v8, v7

    .line 39
    div-int/lit8 v8, v8, 0x3

    .line 40
    .line 41
    if-ge v3, v8, :cond_4

    .line 42
    .line 43
    if-le v3, v9, :cond_1

    .line 44
    .line 45
    shr-int/lit8 v8, v3, 0x1

    .line 46
    .line 47
    add-int v9, v3, v8

    .line 48
    .line 49
    :cond_1
    invoke-direct {p0, v9}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 50
    .line 51
    .line 52
    iget v8, p0, Landroid/util/ArrayMap;->mSize:I

    .line 53
    .line 54
    if-ne v3, v8, :cond_3

    .line 55
    .line 56
    if-lez p1, :cond_2

    .line 57
    .line 58
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 59
    .line 60
    invoke-static {v7, v4, v8, v4, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 61
    .line 62
    .line 63
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    :cond_2
    if-ge p1, v6, :cond_6

    .line 69
    .line 70
    add-int/lit8 v4, p1, 0x1

    .line 71
    .line 72
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 73
    .line 74
    sub-int v9, v6, p1

    .line 75
    .line 76
    invoke-static {v7, v4, v8, p1, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 77
    .line 78
    .line 79
    shl-int/lit8 p1, v4, 0x1

    .line 80
    .line 81
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 82
    .line 83
    shl-int/lit8 v5, v9, 0x1

    .line 84
    .line 85
    invoke-static {v0, p1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_4
    if-ge p1, v6, :cond_5

    .line 96
    .line 97
    add-int/lit8 v0, p1, 0x1

    .line 98
    .line 99
    sub-int v4, v6, p1

    .line 100
    .line 101
    invoke-static {v7, v0, v7, p1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 105
    .line 106
    shl-int/2addr v0, v5

    .line 107
    shl-int/2addr v4, v5

    .line 108
    invoke-static {p1, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    :cond_5
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 112
    .line 113
    shl-int/lit8 v0, v6, 0x1

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    aput-object v1, p1, v0

    .line 117
    .line 118
    add-int/2addr v0, v5

    .line 119
    aput-object v1, p1, v0

    .line 120
    .line 121
    :cond_6
    :goto_0
    move v4, v6

    .line 122
    :goto_1
    iget p1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 123
    .line 124
    if-ne v3, p1, :cond_7

    .line 125
    .line 126
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    .line 127
    .line 128
    return-object v2

    .line 129
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    shl-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v0, p1

    .line 8
    .line 9
    aput-object p2, v0, p1

    .line 10
    .line 11
    return-object v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "{}"

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 14
    .line 15
    mul-int/lit8 v1, v1, 0x1c

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x7b

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 27
    .line 28
    if-ge v1, v2, :cond_4

    .line 29
    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    const-string v2, ", "

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "(this Map)"

    .line 42
    .line 43
    if-eq v2, p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :goto_1
    const/16 v2, 0x3d

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eq v2, p0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/16 v1, 0x7d

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public validate()V
    .locals 8

    .line 1
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aget v2, v2, v3

    .line 11
    .line 12
    :goto_0
    if-ge v1, v0, :cond_6

    .line 13
    .line 14
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 15
    .line 16
    aget v4, v4, v1

    .line 17
    .line 18
    if-eq v4, v2, :cond_1

    .line 19
    .line 20
    move v3, v1

    .line 21
    move v2, v4

    .line 22
    goto :goto_3

    .line 23
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 24
    .line 25
    shl-int/lit8 v5, v1, 0x1

    .line 26
    .line 27
    aget-object v4, v4, v5

    .line 28
    .line 29
    add-int/lit8 v5, v1, -0x1

    .line 30
    .line 31
    :goto_1
    if-lt v5, v3, :cond_5

    .line 32
    .line 33
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 34
    .line 35
    shl-int/lit8 v7, v5, 0x1

    .line 36
    .line 37
    aget-object v6, v6, v7

    .line 38
    .line 39
    const-string v7, "Duplicate key in ArrayMap: "

    .line 40
    .line 41
    if-eq v4, v6, :cond_4

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    return-void
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
