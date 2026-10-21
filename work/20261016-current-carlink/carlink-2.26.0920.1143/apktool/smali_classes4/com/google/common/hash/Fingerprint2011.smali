.class final Lcom/google/common/hash/Fingerprint2011;
.super Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final FINGERPRINT_2011:Lcom/google/common/hash/HashFunction;

.field private static final K0:J = -0x5a47a3a1e67127b7L

.field private static final K1:J = -0x72a753d9501ed1b9L

.field private static final K2:J = -0x3b849161c568f12dL

.field private static final K3:J = -0x395b586ca42e166bL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/hash/Fingerprint2011;

    invoke-direct {v0}, Lcom/google/common/hash/Fingerprint2011;-><init>()V

    sput-object v0, Lcom/google/common/hash/Fingerprint2011;->FINGERPRINT_2011:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;-><init>()V

    return-void
.end method

.method public static fingerprint([BII)J
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-gt p2, v0, :cond_0

    .line 4
    .line 5
    const-wide v0, -0x1364611973070723L    # -1.4877559216887398E215

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/hash/Fingerprint2011;->murmurHash64WithSeed([BIIJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, 0x40

    .line 16
    .line 17
    if-gt p2, v0, :cond_1

    .line 18
    .line 19
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/Fingerprint2011;->hashLength33To64([BII)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/Fingerprint2011;->fullFingerprint([BII)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    const-wide v2, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const/16 v4, 0x8

    .line 34
    .line 35
    if-lt p2, v4, :cond_2

    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-wide v5, v2

    .line 43
    :goto_1
    const/16 v7, 0x9

    .line 44
    .line 45
    if-lt p2, v7, :cond_3

    .line 46
    .line 47
    add-int/2addr p1, p2

    .line 48
    sub-int/2addr p1, v4

    .line 49
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    :cond_3
    add-long/2addr v0, v2

    .line 54
    invoke-static {v0, v1, v5, v6}, Lcom/google/common/hash/Fingerprint2011;->hash128to64(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    cmp-long p2, p0, v0

    .line 61
    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    const-wide/16 v0, 0x1

    .line 65
    .line 66
    cmp-long p2, p0, v0

    .line 67
    .line 68
    if-nez p2, :cond_5

    .line 69
    .line 70
    :cond_4
    const-wide/16 v0, -0x2

    .line 71
    .line 72
    add-long/2addr p0, v0

    .line 73
    :cond_5
    return-wide p0
.end method

.method private static fullFingerprint([BII)J
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 6
    .line 7
    .line 8
    move-result-wide v9

    .line 9
    add-int v11, p1, v8

    .line 10
    .line 11
    add-int/lit8 v0, v11, -0x10

    .line 12
    .line 13
    invoke-static {v7, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide v12, -0x72a753d9501ed1b9L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    xor-long v14, v0, v12

    .line 23
    .line 24
    add-int/lit8 v0, v11, -0x38

    .line 25
    .line 26
    invoke-static {v7, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const-wide v2, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    xor-long v16, v0, v2

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    new-array v6, v0, [J

    .line 39
    .line 40
    new-array v4, v0, [J

    .line 41
    .line 42
    add-int/lit8 v1, v11, -0x40

    .line 43
    .line 44
    int-to-long v2, v8

    .line 45
    move-object/from16 v0, p0

    .line 46
    .line 47
    move-wide/from16 v18, v2

    .line 48
    .line 49
    move-object/from16 v20, v4

    .line 50
    .line 51
    move-wide v4, v14

    .line 52
    move-object/from16 v21, v6

    .line 53
    .line 54
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/Fingerprint2011;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v1, v11, -0x20

    .line 58
    .line 59
    mul-long v2, v18, v12

    .line 60
    .line 61
    const-wide v4, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    move-object/from16 v6, v20

    .line 67
    .line 68
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/Fingerprint2011;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 69
    .line 70
    .line 71
    const/4 v11, 0x1

    .line 72
    aget-wide v0, v21, v11

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/google/common/hash/Fingerprint2011;->shiftMix(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    mul-long/2addr v0, v12

    .line 79
    add-long v0, v0, v16

    .line 80
    .line 81
    add-long/2addr v9, v0

    .line 82
    const/16 v2, 0x27

    .line 83
    .line 84
    invoke-static {v9, v10, v2}, Ljava/lang/Long;->rotateRight(JI)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    mul-long/2addr v2, v12

    .line 89
    const/16 v9, 0x21

    .line 90
    .line 91
    invoke-static {v14, v15, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    mul-long/2addr v4, v12

    .line 96
    add-int/lit8 v6, v8, -0x1

    .line 97
    .line 98
    and-int/lit8 v6, v6, -0x40

    .line 99
    .line 100
    move/from16 v8, p1

    .line 101
    .line 102
    move v10, v6

    .line 103
    :goto_0
    add-long/2addr v2, v4

    .line 104
    const/4 v14, 0x0

    .line 105
    aget-wide v15, v21, v14

    .line 106
    .line 107
    add-long/2addr v2, v15

    .line 108
    add-int/lit8 v6, v8, 0x10

    .line 109
    .line 110
    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 111
    .line 112
    .line 113
    move-result-wide v15

    .line 114
    add-long/2addr v2, v15

    .line 115
    const/16 v6, 0x25

    .line 116
    .line 117
    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    mul-long/2addr v2, v12

    .line 122
    aget-wide v15, v21, v11

    .line 123
    .line 124
    add-long/2addr v4, v15

    .line 125
    add-int/lit8 v6, v8, 0x30

    .line 126
    .line 127
    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 128
    .line 129
    .line 130
    move-result-wide v15

    .line 131
    add-long/2addr v4, v15

    .line 132
    const/16 v6, 0x2a

    .line 133
    .line 134
    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    mul-long/2addr v4, v12

    .line 139
    aget-wide v15, v20, v11

    .line 140
    .line 141
    xor-long/2addr v15, v2

    .line 142
    aget-wide v2, v21, v14

    .line 143
    .line 144
    xor-long v17, v4, v2

    .line 145
    .line 146
    aget-wide v2, v20, v14

    .line 147
    .line 148
    xor-long/2addr v0, v2

    .line 149
    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 150
    .line 151
    .line 152
    move-result-wide v22

    .line 153
    aget-wide v0, v21, v11

    .line 154
    .line 155
    mul-long v2, v0, v12

    .line 156
    .line 157
    aget-wide v0, v20, v14

    .line 158
    .line 159
    add-long v4, v15, v0

    .line 160
    .line 161
    move-object/from16 v0, p0

    .line 162
    .line 163
    move v1, v8

    .line 164
    move-object/from16 v6, v21

    .line 165
    .line 166
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/Fingerprint2011;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v1, v8, 0x20

    .line 170
    .line 171
    aget-wide v2, v20, v11

    .line 172
    .line 173
    add-long v2, v22, v2

    .line 174
    .line 175
    move-wide/from16 v4, v17

    .line 176
    .line 177
    move-object/from16 v6, v20

    .line 178
    .line 179
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/Fingerprint2011;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v8, v8, 0x40

    .line 183
    .line 184
    add-int/lit8 v10, v10, -0x40

    .line 185
    .line 186
    if-nez v10, :cond_0

    .line 187
    .line 188
    aget-wide v0, v21, v14

    .line 189
    .line 190
    aget-wide v2, v20, v14

    .line 191
    .line 192
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/hash/Fingerprint2011;->hash128to64(JJ)J

    .line 193
    .line 194
    .line 195
    move-result-wide v0

    .line 196
    invoke-static/range {v17 .. v18}, Lcom/google/common/hash/Fingerprint2011;->shiftMix(J)J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    mul-long/2addr v2, v12

    .line 201
    add-long/2addr v2, v0

    .line 202
    add-long/2addr v2, v15

    .line 203
    aget-wide v0, v21, v11

    .line 204
    .line 205
    aget-wide v4, v20, v11

    .line 206
    .line 207
    invoke-static {v0, v1, v4, v5}, Lcom/google/common/hash/Fingerprint2011;->hash128to64(JJ)J

    .line 208
    .line 209
    .line 210
    move-result-wide v0

    .line 211
    add-long v0, v0, v22

    .line 212
    .line 213
    invoke-static {v2, v3, v0, v1}, Lcom/google/common/hash/Fingerprint2011;->hash128to64(JJ)J

    .line 214
    .line 215
    .line 216
    move-result-wide v0

    .line 217
    return-wide v0

    .line 218
    :cond_0
    move-wide v0, v15

    .line 219
    move-wide/from16 v4, v17

    .line 220
    .line 221
    move-wide/from16 v2, v22

    .line 222
    .line 223
    goto :goto_0
.end method

.method public static hash128to64(JJ)J
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    xor-long/2addr p2, p0

    const-wide v0, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr p2, v0

    const/16 v2, 0x2f

    ushr-long v3, p2, v2

    xor-long/2addr p2, v3

    xor-long/2addr p0, p2

    mul-long/2addr p0, v0

    ushr-long p2, p0, v2

    xor-long/2addr p0, p2

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static hashLength33To64([BII)J
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int/lit8 v2, p1, 0x18

    .line 6
    .line 7
    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    int-to-long v6, v1

    .line 16
    add-int v1, p1, v1

    .line 17
    .line 18
    add-int/lit8 v8, v1, -0x10

    .line 19
    .line 20
    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 21
    .line 22
    .line 23
    move-result-wide v9

    .line 24
    add-long/2addr v6, v9

    .line 25
    const-wide v9, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    mul-long/2addr v6, v9

    .line 31
    add-long/2addr v6, v4

    .line 32
    add-long v4, v6, v2

    .line 33
    .line 34
    const/16 v11, 0x34

    .line 35
    .line 36
    invoke-static {v4, v5, v11}, Ljava/lang/Long;->rotateRight(JI)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    const/16 v12, 0x25

    .line 41
    .line 42
    invoke-static {v6, v7, v12}, Ljava/lang/Long;->rotateRight(JI)J

    .line 43
    .line 44
    .line 45
    move-result-wide v13

    .line 46
    add-int/lit8 v15, p1, 0x8

    .line 47
    .line 48
    invoke-static {v0, v15}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 49
    .line 50
    .line 51
    move-result-wide v15

    .line 52
    add-long/2addr v6, v15

    .line 53
    const/4 v15, 0x7

    .line 54
    invoke-static {v6, v7, v15}, Ljava/lang/Long;->rotateRight(JI)J

    .line 55
    .line 56
    .line 57
    move-result-wide v16

    .line 58
    add-long v16, v16, v13

    .line 59
    .line 60
    add-int/lit8 v13, p1, 0x10

    .line 61
    .line 62
    invoke-static {v0, v13}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 63
    .line 64
    .line 65
    move-result-wide v18

    .line 66
    add-long v6, v6, v18

    .line 67
    .line 68
    add-long/2addr v2, v6

    .line 69
    const/16 v14, 0x1f

    .line 70
    .line 71
    invoke-static {v6, v7, v14}, Ljava/lang/Long;->rotateRight(JI)J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    add-long/2addr v6, v4

    .line 76
    add-long v6, v6, v16

    .line 77
    .line 78
    invoke-static {v0, v13}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    add-int/lit8 v13, v1, -0x20

    .line 83
    .line 84
    invoke-static {v0, v13}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 85
    .line 86
    .line 87
    move-result-wide v16

    .line 88
    add-long v4, v4, v16

    .line 89
    .line 90
    add-int/lit8 v13, v1, -0x8

    .line 91
    .line 92
    invoke-static {v0, v13}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 93
    .line 94
    .line 95
    move-result-wide v16

    .line 96
    add-long v9, v4, v16

    .line 97
    .line 98
    invoke-static {v9, v10, v11}, Ljava/lang/Long;->rotateRight(JI)J

    .line 99
    .line 100
    .line 101
    move-result-wide v9

    .line 102
    invoke-static {v4, v5, v12}, Ljava/lang/Long;->rotateRight(JI)J

    .line 103
    .line 104
    .line 105
    move-result-wide v11

    .line 106
    add-int/lit8 v1, v1, -0x18

    .line 107
    .line 108
    invoke-static {v0, v1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 109
    .line 110
    .line 111
    move-result-wide v20

    .line 112
    add-long v4, v4, v20

    .line 113
    .line 114
    invoke-static {v4, v5, v15}, Ljava/lang/Long;->rotateRight(JI)J

    .line 115
    .line 116
    .line 117
    move-result-wide v20

    .line 118
    add-long v20, v20, v11

    .line 119
    .line 120
    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    add-long/2addr v4, v0

    .line 125
    add-long v16, v4, v16

    .line 126
    .line 127
    invoke-static {v4, v5, v14}, Ljava/lang/Long;->rotateRight(JI)J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    add-long/2addr v0, v9

    .line 132
    add-long v0, v0, v20

    .line 133
    .line 134
    add-long/2addr v0, v2

    .line 135
    const-wide v2, -0x3b849161c568f12dL    # -8.096527404817815E21

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    mul-long/2addr v0, v2

    .line 141
    add-long v16, v16, v6

    .line 142
    .line 143
    const-wide v4, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    mul-long v16, v16, v4

    .line 149
    .line 150
    add-long v16, v16, v0

    .line 151
    .line 152
    invoke-static/range {v16 .. v17}, Lcom/google/common/hash/Fingerprint2011;->shiftMix(J)J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    mul-long/2addr v0, v4

    .line 157
    add-long/2addr v0, v6

    .line 158
    invoke-static {v0, v1}, Lcom/google/common/hash/Fingerprint2011;->shiftMix(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    mul-long/2addr v0, v2

    .line 163
    return-wide v0
.end method

.method public static murmurHash64WithSeed([BIIJ)J
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 1
    and-int/lit8 v0, p2, -0x8

    .line 2
    .line 3
    and-int/lit8 v1, p2, 0x7

    .line 4
    .line 5
    int-to-long v2, p2

    .line 6
    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    mul-long/2addr v2, v4

    .line 12
    xor-long p2, p3, v2

    .line 13
    .line 14
    const/4 p4, 0x0

    .line 15
    :goto_0
    if-ge p4, v0, :cond_0

    .line 16
    .line 17
    add-int v2, p1, p4

    .line 18
    .line 19
    invoke-static {p0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    mul-long/2addr v2, v4

    .line 24
    invoke-static {v2, v3}, Lcom/google/common/hash/Fingerprint2011;->shiftMix(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    mul-long/2addr v2, v4

    .line 29
    xor-long/2addr p2, v2

    .line 30
    mul-long/2addr p2, v4

    .line 31
    add-int/lit8 p4, p4, 0x8

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-eqz v1, :cond_1

    .line 35
    .line 36
    add-int/2addr p1, v0

    .line 37
    invoke-static {p0, p1, v1}, Lcom/google/common/hash/LittleEndianByteArray;->load64Safely([BII)J

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    xor-long/2addr p0, p2

    .line 42
    mul-long p2, p0, v4

    .line 43
    .line 44
    :cond_1
    invoke-static {p2, p3}, Lcom/google/common/hash/Fingerprint2011;->shiftMix(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    mul-long/2addr p0, v4

    .line 49
    invoke-static {p0, p1}, Lcom/google/common/hash/Fingerprint2011;->shiftMix(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide p0

    .line 53
    return-wide p0
.end method

.method private static shiftMix(J)J
    .locals 2

    const/16 v0, 0x2f

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static weakHashLength32WithSeeds([BIJJ[J)V
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 v2, p1, 0x8

    .line 6
    .line 7
    invoke-static {p0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    add-int/lit8 v4, p1, 0x10

    .line 12
    .line 13
    invoke-static {p0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    add-int/lit8 p1, p1, 0x18

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    add-long/2addr p2, v0

    .line 24
    add-long/2addr p4, p2

    .line 25
    add-long/2addr p4, p0

    .line 26
    const/16 v0, 0x33

    .line 27
    .line 28
    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    .line 29
    .line 30
    .line 31
    move-result-wide p4

    .line 32
    add-long/2addr v2, p2

    .line 33
    add-long/2addr v2, v4

    .line 34
    const/16 v0, 0x17

    .line 35
    .line 36
    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    add-long/2addr v0, p4

    .line 41
    const/4 p4, 0x0

    .line 42
    add-long/2addr v2, p0

    .line 43
    aput-wide v2, p6, p4

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    add-long/2addr v0, p2

    .line 47
    aput-wide v0, p6, p0

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 2

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, p3}, Lcom/google/common/hash/Fingerprint2011;->fingerprint([BII)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-static {p1, p2}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Hashing.fingerprint2011()"

    return-object v0
.end method
