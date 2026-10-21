.class public Lcom/google/zxing/oned/Code93Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code93Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static appendPattern([ZII)I
    .locals 6
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "a"    # I

    .prologue
    const/16 v5, 0x9

    const/4 v3, 0x1

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 96
    rsub-int/lit8 v2, v0, 0x8

    shl-int v2, v3, v2

    and-int v1, p2, v2

    .line 97
    .local v1, "temp":I
    add-int v4, p1, v0

    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    aput-boolean v2, p0, v4

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 99
    .end local v1    # "temp":I
    :cond_1
    return v5
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 6
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I
    .param p3, "startColor"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 88
    array-length v5, p2

    move v4, v3

    move v1, p1

    .end local p1    # "pos":I
    .local v1, "pos":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v0, p2, v4

    .line 89
    .local v0, "bit":I
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p0, v1

    .line 88
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, p1

    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0

    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :cond_0
    move v2, v3

    .line 89
    goto :goto_1

    .line 91
    .end local v0    # "bit":I
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    const/16 v2, 0x9

    return v2
.end method

.method private static computeChecksumIndex(Ljava/lang/String;I)I
    .locals 6
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "maxWeight"    # I

    .prologue
    .line 103
    const/4 v3, 0x1

    .line 104
    .local v3, "weight":I
    const/4 v2, 0x0

    .line 106
    .local v2, "total":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 107
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 108
    .local v1, "indexInString":I
    mul-int v4, v1, v3

    add-int/2addr v2, v4

    .line 109
    add-int/lit8 v3, v3, 0x1

    if-le v3, p1, :cond_0

    .line 110
    const/4 v3, 0x1

    .line 106
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    .end local v1    # "indexInString":I
    :cond_1
    rem-int/lit8 v4, v2, 0x2f

    return v4
.end method

.method static convertToExtended(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x62

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 118
    .local v3, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .local v1, "extendedContent":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_f

    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 122
    .local v0, "character":C
    if-nez v0, :cond_0

    .line 124
    const-string v4, "bU"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const/16 v4, 0x1a

    if-gt v0, v4, :cond_1

    .line 127
    const/16 v4, 0x61

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v4, v0, 0x41

    add-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :cond_1
    const/16 v4, 0x1f

    if-gt v0, v4, :cond_2

    .line 131
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v4, v0, 0x41

    add-int/lit8 v4, v4, -0x1b

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 133
    :cond_2
    const/16 v4, 0x20

    if-eq v0, v4, :cond_3

    const/16 v4, 0x24

    if-eq v0, v4, :cond_3

    const/16 v4, 0x25

    if-eq v0, v4, :cond_3

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_4

    .line 135
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 136
    :cond_4
    const/16 v4, 0x2c

    if-gt v0, v4, :cond_5

    .line 138
    const/16 v4, 0x63

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v4, v0, 0x41

    add-int/lit8 v4, v4, -0x21

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    :cond_5
    const/16 v4, 0x39

    if-gt v0, v4, :cond_6

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_6
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_7

    .line 144
    const-string v4, "cZ"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 145
    :cond_7
    const/16 v4, 0x3f

    if-gt v0, v4, :cond_8

    .line 147
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v4, v0, 0x46

    add-int/lit8 v4, v4, -0x3b

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    :cond_8
    const/16 v4, 0x40

    if-ne v0, v4, :cond_9

    .line 151
    const-string v4, "bV"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 152
    :cond_9
    const/16 v4, 0x5a

    if-gt v0, v4, :cond_a

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 155
    :cond_a
    const/16 v4, 0x5f

    if-gt v0, v4, :cond_b

    .line 157
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v4, v0, 0x4b

    add-int/lit8 v4, v4, -0x5b

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 159
    :cond_b
    const/16 v4, 0x60

    if-ne v0, v4, :cond_c

    .line 161
    const-string v4, "bW"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 162
    :cond_c
    const/16 v4, 0x7a

    if-gt v0, v4, :cond_d

    .line 164
    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v4, v0, 0x41

    add-int/lit8 v4, v4, -0x61

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 166
    :cond_d
    const/16 v4, 0x7f

    if-gt v0, v4, :cond_e

    .line 168
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v4, v0, 0x50

    add-int/lit8 v4, v4, -0x7b

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 171
    :cond_e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested content contains a non-encodable character: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    .end local v0    # "character":C
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 11
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1}, Lcom/google/zxing/oned/Code93Writer;->convertToExtended(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 41
    .local v5, "length":I
    const/16 v8, 0x50

    if-le v5, v8, :cond_0

    .line 42
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested contents should be less than 80 digits long after converting to extended encoding, but got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x9

    add-int/lit8 v2, v8, 0x1

    .line 49
    .local v2, "codeWidth":I
    new-array v7, v2, [Z

    .line 52
    .local v7, "result":[Z
    const/4 v8, 0x0

    sget v9, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    invoke-static {v7, v8, v9}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result v6

    .line 54
    .local v6, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 55
    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 56
    .local v4, "indexInString":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v4

    invoke-static {v7, v6, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result v8

    add-int/2addr v6, v8

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v4    # "indexInString":I
    :cond_1
    const/16 v8, 0x14

    invoke-static {p1, v8}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "check1":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v0

    invoke-static {v7, v6, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result v8

    add-int/2addr v6, v8

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    const/16 v8, 0xf

    invoke-static {p1, v8}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, "check2":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v1

    invoke-static {v7, v6, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result v8

    add-int/2addr v6, v8

    .line 70
    sget v8, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    invoke-static {v7, v6, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result v8

    add-int/2addr v6, v8

    .line 73
    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 75
    return-object v7
.end method

.method protected getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
