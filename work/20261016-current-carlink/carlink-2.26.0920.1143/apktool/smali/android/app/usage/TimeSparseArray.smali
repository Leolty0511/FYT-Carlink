.class public Landroid/app/usage/TimeSparseArray;
.super Landroid/util/LongSparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/util/LongSparseArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public closestIndexOnOrAfter(J)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    move v6, v3

    .line 12
    :goto_0
    if-gt v2, v1, :cond_2

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v1, v2, v4, v2}, Landroid/app/m;->b(IIII)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-virtual {p0, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmp-long v7, p1, v4

    .line 24
    .line 25
    if-lez v7, :cond_0

    .line 26
    .line 27
    add-int/lit8 v2, v6, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-gez v7, :cond_1

    .line 31
    .line 32
    add-int/lit8 v1, v6, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v6

    .line 36
    :cond_2
    cmp-long p1, p1, v4

    .line 37
    .line 38
    if-gez p1, :cond_3

    .line 39
    .line 40
    return v6

    .line 41
    :cond_3
    if-lez p1, :cond_4

    .line 42
    .line 43
    if-ge v2, v0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v3
.end method

.method public closestIndexOnOrBefore(J)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    cmp-long p1, v1, p1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    return v0
.end method
