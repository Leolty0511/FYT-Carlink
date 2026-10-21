.class Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.super Ljava/lang/Object;
.source "C40Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .locals 3
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .param p3, "removed"    # Ljava/lang/StringBuilder;
    .param p4, "lastCharSize"    # I

    .prologue
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 104
    .local v1, "count":I
    sub-int v2, v1, p4

    invoke-virtual {p2, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 105
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 106
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v0

    .line 107
    .local v0, "c":C
    invoke-virtual {p0, v0, p3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p4

    .line 108
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    .line 109
    return p4
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8
    .param p0, "sb"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    mul-int/lit16 v3, v3, 0x640

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    mul-int/lit8 v4, v4, 0x28

    add-int/2addr v3, v4

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 207
    .local v2, "v":I
    div-int/lit16 v3, v2, 0x100

    int-to-char v0, v3

    .line 208
    .local v0, "cw1":C
    rem-int/lit16 v3, v2, 0x100

    int-to-char v1, v3

    .line 209
    .local v1, "cw2":C
    new-instance v3, Ljava/lang/String;

    new-array v4, v7, [C

    aput-char v0, v4, v5

    aput-char v1, v4, v6

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method static writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 113
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 115
    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 14
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v1, "buffer":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v2

    .line 66
    .local v2, "c":C
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 68
    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v5

    .line 70
    .local v5, "lastCharSize":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/lit8 v8, v9, 0x2

    .line 72
    .local v8, "unwritten":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v9

    add-int v4, v9, v8

    .line 73
    .local v4, "curCodewordCount":I
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 74
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v9

    sub-int v0, v9, v4

    .line 76
    .local v0, "available":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v9

    if-nez v9, :cond_3

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v7, "removed":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-ne v9, v13, :cond_1

    if-eq v0, v13, :cond_1

    .line 80
    invoke-direct {p0, p1, v1, v7, v5}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v5

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-ne v9, v12, :cond_4

    const/4 v9, 0x3

    if-gt v5, v9, :cond_2

    if-eq v0, v12, :cond_4

    .line 83
    :cond_2
    invoke-direct {p0, p1, v1, v7, v5}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v5

    goto :goto_0

    .line 88
    .end local v7    # "removed":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 89
    .local v3, "count":I
    rem-int/lit8 v9, v3, 0x3

    if-nez v9, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 91
    .local v6, "newMode":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v9

    if-eq v6, v9, :cond_0

    .line 93
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 98
    .end local v0    # "available":I
    .end local v2    # "c":C
    .end local v3    # "count":I
    .end local v4    # "curCodewordCount":I
    .end local v5    # "lastCharSize":I
    .end local v6    # "newMode":I
    .end local v8    # "unwritten":I
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 99
    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .locals 4
    .param p1, "c"    # C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 162
    if-ne p1, v3, :cond_0

    .line 163
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :goto_0
    return v0

    .line 166
    :cond_0
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1

    .line 167
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_1
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_2

    .line 171
    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0xe

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_2
    if-ge p1, v3, :cond_3

    .line 175
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 177
    goto :goto_0

    .line 179
    :cond_3
    const/16 v2, 0x2f

    if-gt p1, v2, :cond_4

    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v2, p1, -0x21

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 182
    goto :goto_0

    .line 184
    :cond_4
    const/16 v2, 0x40

    if-gt p1, v2, :cond_5

    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v2, p1, -0x3a

    add-int/lit8 v2, v2, 0xf

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_5
    const/16 v2, 0x5f

    if-gt p1, v2, :cond_6

    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v2, p1, -0x5b

    add-int/lit8 v2, v2, 0x16

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_6
    const/16 v2, 0x7f

    if-gt p1, v2, :cond_7

    .line 195
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 v2, p1, -0x60

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 197
    goto :goto_0

    .line 199
    :cond_7
    const-string v1, "\u0001\u001e"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v0, 0x2

    .line 201
    .local v0, "len":I
    add-int/lit8 v1, p1, -0x80

    int-to-char v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    goto :goto_0
.end method

.method encodeMaximal(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 12
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 29
    .local v6, "lastCharSize":I
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 30
    .local v2, "backtrackStartPosition":I
    const/4 v1, 0x0

    .line 31
    .local v1, "backtrackBufferLength":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v4

    .line 33
    .local v4, "c":C
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    invoke-virtual {p0, v4, v3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v6

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_0

    .line 36
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    goto :goto_0

    .line 40
    .end local v4    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eq v1, v9, :cond_4

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/lit8 v8, v9, 0x2

    .line 43
    .local v8, "unwritten":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v5, v9, 0x1

    .line 44
    .local v5, "curCodewordCount":I
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v9

    sub-int v0, v9, v5

    .line 46
    .local v0, "available":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    rem-int/lit8 v7, v9, 0x3

    .line 47
    .local v7, "rest":I
    if-ne v7, v11, :cond_2

    if-ne v0, v11, :cond_3

    :cond_2
    if-ne v7, v10, :cond_4

    const/4 v9, 0x3

    if-gt v6, v9, :cond_3

    if-eq v0, v10, :cond_4

    .line 49
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 53
    .end local v0    # "available":I
    .end local v5    # "curCodewordCount":I
    .end local v7    # "rest":I
    .end local v8    # "unwritten":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 54
    const/16 v9, 0xe6

    invoke-virtual {p1, v9}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 57
    :cond_5
    invoke-virtual {p0, p1, v3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 58
    return-void
.end method

.method public getEncodingMode()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xfe

    const/4 v5, 0x3

    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v3, v4, 0x2

    .line 125
    .local v3, "unwritten":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/lit8 v2, v4, 0x3

    .line 127
    .local v2, "rest":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    add-int v1, v4, v3

    .line 128
    .local v1, "curCodewordCount":I
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 129
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v4

    sub-int v0, v4, v1

    .line 131
    .local v0, "available":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 132
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 134
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 158
    :cond_1
    :goto_1
    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 159
    return-void

    .line 139
    :cond_2
    if-ne v0, v8, :cond_5

    if-ne v2, v8, :cond_5

    .line 140
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v5, :cond_3

    .line 141
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 147
    :cond_4
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_1

    .line 148
    :cond_5
    if-nez v2, :cond_8

    .line 149
    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v5, :cond_6

    .line 150
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 152
    :cond_6
    if-gtz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    :cond_7
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_1

    .line 156
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected case. Please report!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
