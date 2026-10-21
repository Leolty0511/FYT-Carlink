.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x40

    .line 5
    .line 6
    new-array v0, v0, [C

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 9
    .line 10
    return-void
.end method

.method private reserve(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-le p1, v2, :cond_0

    .line 8
    .line 9
    mul-int/lit8 v2, v2, 0x2

    .line 10
    .line 11
    new-array p1, v2, [C

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 18
    .line 19
    :cond_0
    return v0
.end method


# virtual methods
.method public append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    mul-float/2addr p1, v1

    float-to-double v2, p1

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float p1, v2

    float-to-int v0, p1

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    if-eqz p2, :cond_1

    const-string v0, "."

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 21
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v2, p1

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    :cond_1
    return-object p0
.end method

.method public append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 7

    const/4 v0, 0x1

    if-gez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    neg-int p1, p1

    if-gez p1, :cond_1

    const-string p1, "-2147483648"

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    return-object p0

    :cond_1
    const/16 v2, 0xb

    .line 7
    invoke-direct {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/16 v4, 0x30

    if-nez p1, :cond_2

    .line 9
    aput-char v4, v3, v2

    .line 10
    iget p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x2d

    .line 11
    aput-char v1, v3, v2

    move v2, v0

    :cond_3
    const/16 v0, 0xa

    const v1, 0x3b9aca00

    move v5, v0

    :cond_4
    :goto_1
    if-ge p1, v1, :cond_5

    .line 12
    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v5, v5, -0x1

    if-ge v5, p2, :cond_4

    add-int/lit8 v6, v2, 0x1

    .line 13
    aput-char v4, v3, v2

    move v2, v6

    goto :goto_1

    .line 14
    :cond_5
    :goto_2
    div-int p2, p1, v1

    mul-int v5, p2, v1

    sub-int/2addr p1, v5

    .line 15
    div-int/2addr v1, v0

    add-int/lit8 v5, v2, 0x1

    add-int/2addr p2, v4

    int-to-char p2, p2

    .line 16
    aput-char p2, v3, v2

    if-nez v1, :cond_6

    .line 17
    iput v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0

    :cond_6
    move v2, v5

    goto :goto_2
.end method

.method public append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 4
    iget p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0
.end method

.method public clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
