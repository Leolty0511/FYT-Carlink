.class public Lcom/android/internal/util/ExponentiallyBucketedHistogram;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mData:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f

    .line 5
    .line 6
    const-string v1, "numBuckets"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-array p1, p1, [I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget v1, p1, v0

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    aput v1, p1, v0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    rsub-int/lit8 p1, p1, 0x20

    .line 23
    .line 24
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    aget v1, v0, p1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    aput v1, v0, p1

    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const/16 p2, 0x5b

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    if-ge p2, v1, :cond_2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const-string v1, ", "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    .line 25
    .line 26
    array-length v1, v1

    .line 27
    const/4 v2, 0x1

    .line 28
    sub-int/2addr v1, v2

    .line 29
    if-ge p2, v1, :cond_1

    .line 30
    .line 31
    const-string v1, "<"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    shl-int v1, v2, p2

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v1, ">="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, p2, -0x1

    .line 48
    .line 49
    shl-int v1, v2, v1

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :goto_1
    const-string v1, ": "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    .line 60
    .line 61
    aget v1, v1, p2

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    add-int/lit8 p2, p2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string p2, "]"

    .line 70
    .line 71
    invoke-static {v0, p2, p1}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
