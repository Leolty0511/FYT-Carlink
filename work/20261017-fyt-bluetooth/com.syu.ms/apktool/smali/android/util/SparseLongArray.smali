.class public Landroid/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Landroid/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 4
    sget-object p1, Landroid/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object p1, p0, Landroid/util/SparseLongArray;->mValues:[J

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lu/a;->i(I)I

    move-result p1

    .line 6
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 7
    new-array p1, p1, [J

    iput-object p1, p0, Landroid/util/SparseLongArray;->mValues:[J

    :goto_0
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method private growKeyAndValueArrays(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lu/a;->i(I)I

    move-result p1

    .line 2
    new-array v0, p1, [I

    .line 3
    new-array p1, p1, [J

    .line 4
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    array-length v2, v1

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 7
    iput-object p1, p0, Landroid/util/SparseLongArray;->mValues:[J

    return-void
.end method


# virtual methods
.method public append(IJ)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 4
    invoke-direct {p0, v1}, Landroid/util/SparseLongArray;->growKeyAndValueArrays(I)V

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aput p1, v1, v0

    .line 6
    iget-object p1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/SparseLongArray;
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Landroid/util/SparseLongArray;->mKeys:[I

    .line 4
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Landroid/util/SparseLongArray;->mValues:[J
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
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public get(I)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(IJ)J
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-gez p1, :cond_0

    return-wide p2

    .line 3
    :cond_0
    iget-object p2, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public indexOfKey(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    return p1
.end method

.method public indexOfValue(J)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public keyAt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, p1, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    .line 3
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-direct {p0, v1}, Landroid/util/SparseLongArray;->growKeyAndValueArrays(I)V

    .line 5
    :cond_1
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_2
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aput p1, v1, v0

    .line 9
    iget-object p1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, p1, v0

    .line 10
    iget p1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/SparseLongArray;->mSize:I

    :goto_0
    return-void
.end method

.method public removeAt(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
