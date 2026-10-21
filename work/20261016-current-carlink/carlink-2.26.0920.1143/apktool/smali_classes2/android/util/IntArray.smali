.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 4
    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    :goto_0
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method private constructor <init>([II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 3
    array-length p1, p1

    const-string/jumbo v0, "size"

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method private checkBounds(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 4
    .line 5
    if-le v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 9
    .line 10
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    if-lt p1, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0xc

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    shr-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    :goto_0
    add-int/2addr v1, v0

    .line 18
    if-le v1, p1, :cond_1

    .line 19
    .line 20
    move p1, v1

    .line 21
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public static fromArray([II)Landroid/util/IntArray;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-static {p0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([I)Landroid/util/IntArray;
    .locals 2

    new-instance v0, Landroid/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Landroid/util/IntArray;->add(II)V

    return-void
.end method

.method public add(II)V
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 3
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    sub-int v2, v1, p1

    add-int/2addr v1, v0

    .line 4
    iput v1, p0, Landroid/util/IntArray;->mSize:I

    .line 5
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    if-eqz v2, :cond_0

    .line 6
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    return-void
.end method

.method public addAll(Landroid/util/IntArray;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/util/IntArray;->mSize:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroid/util/IntArray;->mValues:[I

    .line 7
    .line 8
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    .line 9
    .line 10
    iget v2, p0, Landroid/util/IntArray;->mSize:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Landroid/util/IntArray;->mSize:I

    .line 17
    .line 18
    add-int/2addr p1, v0

    .line 19
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 20
    .line 21
    return-void
.end method

.method public binarySearch(I)I
    .locals 2

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/IntArray;
    .locals 2

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    .line 3
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/IntArray;->mValues:[I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    .line 5
    .line 6
    aget p1, v0, p1

    .line 7
    .line 8
    return p1
.end method

.method public indexOf(I)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    .line 7
    .line 8
    aget v2, v2, v1

    .line 9
    .line 10
    if-ne v2, p1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.method public remove(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    .line 5
    .line 6
    add-int/lit8 v1, p1, 0x1

    .line 7
    .line 8
    iget v2, p0, Landroid/util/IntArray;->mSize:I

    .line 9
    .line 10
    sub-int/2addr v2, p1

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Landroid/util/IntArray;->mSize:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    .line 20
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 21
    .line 22
    return-void
.end method

.method public resize(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 16
    .line 17
    sub-int v0, p1, v0

    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 23
    .line 24
    return-void
.end method

.method public set(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    .line 5
    .line 6
    aput p2, v0, p1

    .line 7
    .line 8
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/util/IntArray;->mSize:I

    return v0
.end method

.method public toArray()[I
    .locals 2

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
