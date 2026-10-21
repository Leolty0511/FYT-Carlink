.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "ReedSolomonDecoder.java"


# instance fields
.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 0
    .param p1, "field"    # Lcom/google/zxing/common/reedsolomon/GenericGF;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I
    .locals 6
    .param p1, "errorLocator"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 161
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    .line 162
    .local v2, "numErrors":I
    if-ne v2, v5, :cond_1

    .line 163
    new-array v3, v5, [I

    const/4 v4, 0x0

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v5

    aput v5, v3, v4

    .line 176
    :cond_0
    return-object v3

    .line 165
    :cond_1
    new-array v3, v2, [I

    .line 166
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 167
    .local v0, "e":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_3

    if-ge v0, v2, :cond_3

    .line 168
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 169
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v4

    aput v4, v3, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 167
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_3
    if-eq v0, v2, :cond_0

    .line 174
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v5, "Error locator degree does not match number of roots"

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I
    .locals 11
    .param p1, "errorEvaluator"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p2, "errorLocations"    # [I

    .prologue
    .line 181
    array-length v4, p2

    .line 182
    .local v4, "s":I
    new-array v3, v4, [I

    .line 183
    .local v3, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 184
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, p2, v1

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v7

    .line 185
    .local v7, "xiInverse":I
    const/4 v0, 0x1

    .line 186
    .local v0, "denominator":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 187
    if-eq v1, v2, :cond_0

    .line 192
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, p2, v2

    invoke-virtual {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v5

    .line 193
    .local v5, "term":I
    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_1

    or-int/lit8 v6, v5, 0x1

    .line 194
    .local v6, "termPlus1":I
    :goto_2
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v0

    .line 186
    .end local v5    # "term":I
    .end local v6    # "termPlus1":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    .restart local v5    # "term":I
    :cond_1
    and-int/lit8 v6, v5, -0x2

    goto :goto_2

    .line 197
    .end local v5    # "term":I
    :cond_2
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 198
    invoke-virtual {v10, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v10

    .line 197
    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    aput v8, v3, v1

    .line 199
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, v3, v1

    invoke-virtual {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    aput v8, v3, v1

    .line 183
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "denominator":I
    .end local v2    # "j":I
    .end local v7    # "xiInverse":I
    :cond_4
    return-object v3
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 21
    .param p1, "a"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p2, "b"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p3, "R"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 107
    move-object/from16 v17, p1

    .line 108
    .local v17, "temp":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 p1, p2

    .line 109
    move-object/from16 p2, v17

    .line 112
    .end local v17    # "temp":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    move-object/from16 v9, p1

    .line 113
    .local v9, "rLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v8, p2

    .line 114
    .local v8, "r":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v15

    .line 115
    .local v15, "tLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v14

    .line 118
    .local v14, "t":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_1
    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_4

    .line 119
    move-object v10, v9

    .line 120
    .local v10, "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v16, v15

    .line 121
    .local v16, "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v9, v8

    .line 122
    move-object v15, v14

    .line 125
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 127
    new-instance v18, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v19, "r_{i-1} was zero"

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 129
    :cond_2
    move-object v8, v10

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    .line 131
    .local v7, "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v3

    .line 132
    .local v3, "denominatorLeadingTerm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v4

    .line 133
    .local v4, "dltInverse":I
    :goto_0
    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v18

    if-nez v18, :cond_3

    .line 134
    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    sub-int v2, v18, v19

    .line 135
    .local v2, "degreeDiff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v11

    .line 136
    .local v11, "scale":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    .line 137
    invoke-virtual {v9, v2, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    .line 138
    goto :goto_0

    .line 140
    .end local v2    # "degreeDiff":I
    .end local v11    # "scale":I
    :cond_3
    invoke-virtual {v7, v15}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v14

    .line 142
    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 143
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Division algorithm failed to reduce polynomial? r: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", rLast: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 148
    .end local v3    # "denominatorLeadingTerm":I
    .end local v4    # "dltInverse":I
    .end local v7    # "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v10    # "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v16    # "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v13

    .line 149
    .local v13, "sigmaTildeAtZero":I
    if-nez v13, :cond_5

    .line 150
    new-instance v18, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v19, "sigmaTilde(0) was zero"

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 153
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v5

    .line 154
    .local v5, "inverse":I
    invoke-virtual {v14, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v12

    .line 155
    .local v12, "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v8, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    .line 156
    .local v6, "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    return-object v18
.end method


# virtual methods
.method public decode([II)V
    .locals 0
    .param p1, "received"    # [I
    .param p2, "twoS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount([II)I

    .line 60
    return-void
.end method

.method public decodeWithECCount([II)I
    .locals 17
    .param p1, "received"    # [I
    .param p2, "twoS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v0, p1

    invoke-direct {v8, v14, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 74
    .local v8, "poly":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move/from16 v0, p2

    new-array v13, v0, [I

    .line 75
    .local v13, "syndromeCoefficients":[I
    const/4 v6, 0x1

    .line 76
    .local v6, "noError":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v5, v0, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v4

    .line 78
    .local v4, "eval":I
    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    sub-int/2addr v14, v5

    aput v4, v13, v14

    .line 79
    if-eqz v4, :cond_0

    .line 80
    const/4 v6, 0x0

    .line 76
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "eval":I
    :cond_1
    if-eqz v6, :cond_2

    .line 84
    const/4 v14, 0x0

    .line 100
    :goto_1
    return v14

    .line 86
    :cond_2
    new-instance v12, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 87
    .local v12, "syndrome":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v15, 0x1

    .line 88
    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v12, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    .line 89
    .local v11, "sigmaOmega":[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    const/4 v14, 0x0

    aget-object v10, v11, v14

    .line 90
    .local v10, "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    const/4 v14, 0x1

    aget-object v7, v11, v14

    .line 91
    .local v7, "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I

    move-result-object v2

    .line 92
    .local v2, "errorLocations":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I

    move-result-object v3

    .line 93
    .local v3, "errorMagnitudes":[I
    const/4 v5, 0x0

    :goto_2
    array-length v14, v2

    if-ge v5, v14, :cond_4

    .line 94
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v16, v2, v5

    invoke-virtual/range {v15 .. v16}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v15

    sub-int v9, v14, v15

    .line 95
    .local v9, "position":I
    if-gez v9, :cond_3

    .line 96
    new-instance v14, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v15, "Bad error location"

    invoke-direct {v14, v15}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 98
    :cond_3
    aget v14, p1, v9

    aget v15, v3, v5

    invoke-static {v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v14

    aput v14, p1, v9

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 100
    .end local v9    # "position":I
    :cond_4
    array-length v14, v2

    goto :goto_1
.end method
