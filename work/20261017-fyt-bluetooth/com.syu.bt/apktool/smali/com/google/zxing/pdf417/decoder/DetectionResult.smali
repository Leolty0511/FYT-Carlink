.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# static fields
.field private static final ADJUST_ROW_NUMBER_SKIP:I = 0x2


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 1
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .param p2, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    .line 38
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 39
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 40
    return-void
.end method

.method private adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 1
    .param p1, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    check-cast p1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .end local p1    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 59
    :cond_0
    return-void
.end method

.method private static adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
    .locals 3
    .param p0, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p1, "otherCodeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    const/4 v0, 0x0

    .line 234
    if-nez p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 239
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .locals 3
    .param p0, "rowIndicatorRowNumber"    # I
    .param p1, "invalidRowCounts"    # I
    .param p2, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    .line 176
    if-nez p2, :cond_0

    move v0, p1

    .end local p1    # "invalidRowCounts":I
    .local v0, "invalidRowCounts":I
    move v1, p1

    .line 187
    .end local v0    # "invalidRowCounts":I
    .local v1, "invalidRowCounts":I
    :goto_0
    return v1

    .line 179
    .end local v1    # "invalidRowCounts":I
    .restart local p1    # "invalidRowCounts":I
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 182
    const/4 p1, 0x0

    :cond_1
    :goto_1
    move v0, p1

    .end local p1    # "invalidRowCounts":I
    .restart local v0    # "invalidRowCounts":I
    move v1, p1

    .line 187
    .end local v0    # "invalidRowCounts":I
    .restart local v1    # "invalidRowCounts":I
    goto :goto_0

    .line 184
    .end local v1    # "invalidRowCounts":I
    .restart local p1    # "invalidRowCounts":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private adjustRowNumbers()I
    .locals 5

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I

    move-result v3

    .line 70
    .local v3, "unadjustedCount":I
    if-nez v3, :cond_1

    .line 71
    const/4 v3, 0x0

    .line 84
    .end local v3    # "unadjustedCount":I
    :cond_0
    return v3

    .line 73
    .restart local v3    # "unadjustedCount":I
    :cond_1
    const/4 v0, 0x1

    .local v0, "barcodeColumn":I
    :goto_0
    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_0

    .line 74
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 75
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 76
    aget-object v4, v1, v2

    if-nez v4, :cond_3

    .line 75
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_3
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    invoke-direct {p0, v0, v2, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V

    goto :goto_2

    .line 73
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
    .locals 9
    .param p1, "barcodeColumn"    # I
    .param p2, "codewordsRow"    # I
    .param p3, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 191
    aget-object v0, p3, p2

    .line 192
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    .line 193
    .local v4, "previousColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v1, v4

    .line 194
    .local v1, "nextColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v7, p1, 0x1

    aget-object v6, v6, v7

    if-eqz v6, :cond_0

    .line 195
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v7, p1, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 198
    :cond_0
    const/16 v6, 0xe

    new-array v3, v6, [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 200
    .local v3, "otherCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v6, 0x2

    aget-object v7, v4, p2

    aput-object v7, v3, v6

    .line 201
    const/4 v6, 0x3

    aget-object v7, v1, p2

    aput-object v7, v3, v6

    .line 203
    if-lez p2, :cond_1

    .line 204
    add-int/lit8 v6, p2, -0x1

    aget-object v6, p3, v6

    aput-object v6, v3, v5

    .line 205
    const/4 v6, 0x4

    add-int/lit8 v7, p2, -0x1

    aget-object v7, v4, v7

    aput-object v7, v3, v6

    .line 206
    const/4 v6, 0x5

    add-int/lit8 v7, p2, -0x1

    aget-object v7, v1, v7

    aput-object v7, v3, v6

    .line 208
    :cond_1
    if-le p2, v8, :cond_2

    .line 209
    const/16 v6, 0x8

    add-int/lit8 v7, p2, -0x2

    aget-object v7, p3, v7

    aput-object v7, v3, v6

    .line 210
    const/16 v6, 0xa

    add-int/lit8 v7, p2, -0x2

    aget-object v7, v4, v7

    aput-object v7, v3, v6

    .line 211
    const/16 v6, 0xb

    add-int/lit8 v7, p2, -0x2

    aget-object v7, v1, v7

    aput-object v7, v3, v6

    .line 213
    :cond_2
    array-length v6, p3

    add-int/lit8 v6, v6, -0x1

    if-ge p2, v6, :cond_3

    .line 214
    add-int/lit8 v6, p2, 0x1

    aget-object v6, p3, v6

    aput-object v6, v3, v8

    .line 215
    const/4 v6, 0x6

    add-int/lit8 v7, p2, 0x1

    aget-object v7, v4, v7

    aput-object v7, v3, v6

    .line 216
    const/4 v6, 0x7

    add-int/lit8 v7, p2, 0x1

    aget-object v7, v1, v7

    aput-object v7, v3, v6

    .line 218
    :cond_3
    array-length v6, p3

    add-int/lit8 v6, v6, -0x2

    if-ge p2, v6, :cond_4

    .line 219
    const/16 v6, 0x9

    add-int/lit8 v7, p2, 0x2

    aget-object v7, p3, v7

    aput-object v7, v3, v6

    .line 220
    const/16 v6, 0xc

    add-int/lit8 v7, p2, 0x2

    aget-object v7, v4, v7

    aput-object v7, v3, v6

    .line 221
    const/16 v6, 0xd

    add-int/lit8 v7, p2, 0x2

    aget-object v7, v1, v7

    aput-object v7, v3, v6

    .line 223
    :cond_4
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v2, v3, v5

    .line 224
    .local v2, "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-static {v0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 228
    .end local v2    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_5
    return-void

    .line 223
    .restart local v2    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private adjustRowNumbersByRow()I
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()V

    .line 93
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I

    move-result v0

    .line 94
    .local v0, "unadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private adjustRowNumbersFromBothRI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 98
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v7

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_1

    .line 119
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 102
    .local v0, "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 103
    .local v1, "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v4, 0x0

    .local v4, "codewordsRow":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 104
    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    aget-object v5, v1, v4

    if-eqz v5, :cond_4

    aget-object v5, v0, v4

    .line 106
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 107
    const/4 v2, 0x1

    .local v2, "barcodeColumn":I
    :goto_1
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v2, v5, :cond_4

    .line 108
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v3, v5, v4

    .line 109
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v3, :cond_3

    .line 107
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_3
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 113
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v6, v5, v4

    goto :goto_2

    .line 103
    .end local v2    # "barcodeColumn":I
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private adjustRowNumbersFromLRI()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 149
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v8, v8, v7

    if-nez v8, :cond_1

    move v6, v7

    .line 172
    :cond_0
    return v6

    .line 152
    :cond_1
    const/4 v6, 0x0

    .line 153
    .local v6, "unadjustedCount":I
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v8, v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 154
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 155
    aget-object v7, v2, v3

    if-nez v7, :cond_3

    .line 154
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_3
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 159
    .local v5, "rowIndicatorRowNumber":I
    const/4 v4, 0x0

    .line 160
    .local v4, "invalidRowCounts":I
    const/4 v0, 0x1

    .line 161
    .local v0, "barcodeColumn":I
    :goto_1
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v7, v7, 0x1

    if-ge v0, v7, :cond_2

    const/4 v7, 0x2

    if-ge v4, v7, :cond_2

    .line 163
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v1, v7, v3

    .line 164
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_4

    .line 165
    invoke-static {v5, v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v4

    .line 166
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_4

    .line 167
    add-int/lit8 v6, v6, 0x1

    .line 162
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private adjustRowNumbersFromRRI()I
    .locals 9

    .prologue
    .line 122
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    if-nez v7, :cond_1

    .line 123
    const/4 v6, 0x0

    .line 145
    :cond_0
    return v6

    .line 125
    :cond_1
    const/4 v6, 0x0

    .line 126
    .local v6, "unadjustedCount":I
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 127
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 128
    aget-object v7, v2, v3

    if-nez v7, :cond_3

    .line 127
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_3
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 132
    .local v5, "rowIndicatorRowNumber":I
    const/4 v4, 0x0

    .line 133
    .local v4, "invalidRowCounts":I
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v0, v7, 0x1

    .line 134
    .local v0, "barcodeColumn":I
    :goto_1
    if-lez v0, :cond_2

    const/4 v7, 0x2

    if-ge v4, v7, :cond_2

    .line 136
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v1, v7, v3

    .line 137
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_4

    .line 138
    invoke-static {v5, v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v4

    .line 139
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_4

    .line 140
    add-int/lit8 v6, v6, 0x1

    .line 135
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return v0
.end method

.method getBarcodeECLevel()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method getBarcodeRowCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 1
    .param p1, "barcodeColumn"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 4

    .prologue
    .line 43
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 44
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 45
    const/16 v1, 0x3a0

    .line 48
    .local v1, "unadjustedCodewordCount":I
    :cond_0
    move v0, v1

    .line 49
    .local v0, "previousUnadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers()I

    move-result v1

    .line 50
    if-lez v1, :cond_1

    if-lt v1, v0, :cond_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object v2
.end method

.method setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 0
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 258
    return-void
.end method

.method setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 1
    .param p1, "barcodeColumn"    # I
    .param p2, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 274
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v5, v6

    .line 275
    .local v4, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-nez v4, :cond_0

    .line 276
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    aget-object v4, v5, v6

    .line 278
    :cond_0
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .local v3, "formatter":Ljava/util/Formatter;
    const/4 v7, 0x0

    .line 279
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 280
    const-string v5, "CW %3d:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 281
    const/4 v0, 0x0

    .local v0, "barcodeColumn":I
    :goto_1
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_4

    .line 282
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v0

    if-nez v5, :cond_1

    .line 283
    const-string v5, "    |   "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 281
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    :cond_1
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v1, v5, v2

    .line 287
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v1, :cond_3

    .line 288
    const-string v5, "    |   "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 278
    .end local v0    # "barcodeColumn":I
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :catch_0
    move-exception v5

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :catchall_0
    move-exception v6

    move-object v7, v5

    :goto_3
    if-eqz v3, :cond_2

    if-eqz v7, :cond_8

    :try_start_2
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_4
    throw v6

    .line 291
    .restart local v0    # "barcodeColumn":I
    .restart local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_3
    :try_start_3
    const-string v5, " %3d|%3d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 296
    .end local v0    # "barcodeColumn":I
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :catchall_1
    move-exception v5

    move-object v6, v5

    goto :goto_3

    .line 293
    .restart local v0    # "barcodeColumn":I
    :cond_4
    const-string v5, "%n"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "barcodeColumn":I
    :cond_5
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 296
    if-eqz v3, :cond_6

    if-eqz v7, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 295
    :cond_6
    :goto_5
    return-object v5

    .line 296
    :catch_1
    move-exception v6

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    goto :goto_5

    :catch_2
    move-exception v5

    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    goto :goto_4
.end method
