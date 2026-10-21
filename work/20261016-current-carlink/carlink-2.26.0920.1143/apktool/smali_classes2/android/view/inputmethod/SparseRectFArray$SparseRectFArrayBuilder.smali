.class public final Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/SparseRectFArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SparseRectFArrayBuilder"
.end annotation


# static fields
.field private static INITIAL_SIZE:I = 0x10


# instance fields
.field private mCoordinates:[F

.field private mCount:I

.field private mFlagsArray:[I

.field private mKeys:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 11
    .line 12
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$100(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    return p0
.end method

.method public static synthetic access$200(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    return-object p0
.end method

.method public static synthetic access$300(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    return-object p0
.end method

.method public static synthetic access$400(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    return-object p0
.end method

.method private checkIndex(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    aget v0, v1, v0

    .line 11
    .line 12
    if-ge v0, p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "key must be greater than all existing keys."

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method private ensureBufferSize()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x4

    .line 18
    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    sget v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    .line 28
    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 32
    .line 33
    :cond_2
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 34
    .line 35
    add-int/lit8 v1, v0, 0x1

    .line 36
    .line 37
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 38
    .line 39
    array-length v3, v2

    .line 40
    const/4 v4, 0x0

    .line 41
    if-gt v3, v1, :cond_3

    .line 42
    .line 43
    mul-int/lit8 v3, v1, 0x2

    .line 44
    .line 45
    new-array v3, v3, [I

    .line 46
    .line 47
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 51
    .line 52
    :cond_3
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 53
    .line 54
    add-int/lit8 v2, v0, 0x1

    .line 55
    .line 56
    mul-int/lit8 v2, v2, 0x4

    .line 57
    .line 58
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 59
    .line 60
    array-length v5, v3

    .line 61
    if-gt v5, v2, :cond_4

    .line 62
    .line 63
    mul-int/lit8 v2, v2, 0x2

    .line 64
    .line 65
    new-array v2, v2, [F

    .line 66
    .line 67
    mul-int/lit8 v0, v0, 0x4

    .line 68
    .line 69
    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 73
    .line 74
    :cond_4
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 75
    .line 76
    array-length v2, v0

    .line 77
    if-gt v2, v1, :cond_5

    .line 78
    .line 79
    mul-int/lit8 v1, v1, 0x2

    .line 80
    .line 81
    new-array v1, v1, [I

    .line 82
    .line 83
    iget v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 84
    .line 85
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 89
    .line 90
    :cond_5
    return-void
.end method


# virtual methods
.method public append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->checkIndex(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->ensureBufferSize()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 8
    .line 9
    mul-int/lit8 v1, v0, 0x4

    .line 10
    .line 11
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 12
    .line 13
    add-int/lit8 v3, v1, 0x0

    .line 14
    .line 15
    aput p2, v2, v3

    .line 16
    .line 17
    add-int/lit8 p2, v1, 0x1

    .line 18
    .line 19
    aput p3, v2, p2

    .line 20
    .line 21
    add-int/lit8 p2, v1, 0x2

    .line 22
    .line 23
    aput p4, v2, p2

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x3

    .line 26
    .line 27
    aput p5, v2, v1

    .line 28
    .line 29
    iget-object p2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 30
    .line 31
    aput p6, p2, v0

    .line 32
    .line 33
    iget-object p2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 34
    .line 35
    aput p1, p2, v0

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iput v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 40
    .line 41
    return-object p0
.end method

.method public build()Landroid/view/inputmethod/SparseRectFArray;
    .locals 2

    new-instance v0, Landroid/view/inputmethod/SparseRectFArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray$1;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 7
    .line 8
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 14
    .line 15
    return-void
.end method
