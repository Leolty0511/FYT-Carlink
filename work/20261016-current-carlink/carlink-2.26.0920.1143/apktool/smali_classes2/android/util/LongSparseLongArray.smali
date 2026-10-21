.class public Landroid/util/LongSparseLongArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 4
    sget-object p1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 6
    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    :goto_0
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(JJ)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 6
    .line 7
    add-int/lit8 v2, v0, -0x1

    .line 8
    .line 9
    aget-wide v2, v1, v2

    .line 10
    .line 11
    cmp-long v1, p1, v2

    .line 12
    .line 13
    if-gtz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 20
    .line 21
    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 26
    .line 27
    iget-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 28
    .line 29
    iget p2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 30
    .line 31
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 36
    .line 37
    iget p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 42
    .line 43
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/LongSparseLongArray;
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseLongArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 4
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Landroid/util/LongSparseLongArray;->mValues:[J
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 2
    .line 3
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/LongSparseLongArray;->removeAt(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public get(J)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(JJ)J
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    if-gez p1, :cond_0

    return-wide p3

    .line 3
    :cond_0
    iget-object p2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public indexOfKey(J)I
    .locals 2

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    return p1
.end method

.method public indexOfValue(J)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 7
    .line 8
    aget-wide v2, v1, v0

    .line 9
    .line 10
    cmp-long v1, v2, p1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, -0x1

    .line 19
    return p1
.end method

.method public keyAt(I)J
    .locals 3

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public put(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 2
    .line 3
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 12
    .line 13
    aput-wide p3, p1, v0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    not-int v0, v0

    .line 17
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 18
    .line 19
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 20
    .line 21
    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 26
    .line 27
    iget-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 28
    .line 29
    iget p2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 30
    .line 31
    invoke-static {p1, p2, v0, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 36
    .line 37
    iget p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public removeAt(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 6
    .line 7
    sub-int/2addr v2, v1

    .line 8
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 12
    .line 13
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 14
    .line 15
    sub-int/2addr v2, v1

    .line 16
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 24
    .line 25
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

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
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

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
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 27
    .line 28
    if-ge v1, v2, :cond_2

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
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v2, 0x3d

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/16 v1, 0x7d

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public valueAt(I)J
    .locals 3

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
