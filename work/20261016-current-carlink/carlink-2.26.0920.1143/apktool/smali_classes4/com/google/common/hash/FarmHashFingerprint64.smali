.class final Lcom/google/common/hash/FarmHashFingerprint64;
.super Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

.field private static final K0:J = -0x3c5a37a36834ced9L

.field private static final K1:J = -0x4b6d499041670d8dL

.field private static final K2:J = -0x651e95c4d06fbfb1L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/hash/FarmHashFingerprint64;

    invoke-direct {v0}, Lcom/google/common/hash/FarmHashFingerprint64;-><init>()V

    sput-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;-><init>()V

    return-void
.end method

.method public static fingerprint([BII)J
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-gt p2, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-gt p2, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength0to16([BII)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0

    .line 14
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength17to32([BII)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0

    .line 19
    :cond_1
    const/16 v0, 0x40

    .line 20
    .line 21
    if-gt p2, v0, :cond_2

    .line 22
    .line 23
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength33To64([BII)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    return-wide p0

    .line 28
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength65Plus([BII)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    return-wide p0
.end method

.method private static hashLength0to16([BII)J
    .locals 12

    .line 1
    const-wide v0, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-lt p2, v2, :cond_0

    .line 9
    .line 10
    int-to-long v3, p2

    .line 11
    const-wide/16 v5, 0x2

    .line 12
    .line 13
    mul-long/2addr v3, v5

    .line 14
    add-long v9, v3, v0

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    add-long/2addr v3, v0

    .line 21
    add-int/2addr p1, p2

    .line 22
    sub-int/2addr p1, v2

    .line 23
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    const/16 p2, 0x25

    .line 28
    .line 29
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    mul-long/2addr v0, v9

    .line 34
    add-long v5, v0, v3

    .line 35
    .line 36
    const/16 p2, 0x19

    .line 37
    .line 38
    invoke-static {v3, v4, p2}, Ljava/lang/Long;->rotateRight(JI)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    add-long/2addr v0, p0

    .line 43
    mul-long v7, v0, v9

    .line 44
    .line 45
    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    return-wide p0

    .line 50
    :cond_0
    const/4 v3, 0x4

    .line 51
    if-lt p2, v3, :cond_1

    .line 52
    .line 53
    mul-int/lit8 v2, p2, 0x2

    .line 54
    .line 55
    int-to-long v4, v2

    .line 56
    add-long v10, v4, v0

    .line 57
    .line 58
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v0, v0

    .line 63
    const-wide v4, 0xffffffffL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    and-long/2addr v0, v4

    .line 69
    int-to-long v6, p2

    .line 70
    const/4 v2, 0x3

    .line 71
    shl-long/2addr v0, v2

    .line 72
    add-long/2addr v6, v0

    .line 73
    add-int/2addr p1, p2

    .line 74
    sub-int/2addr p1, v3

    .line 75
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    int-to-long p0, p0

    .line 80
    and-long v8, p0, v4

    .line 81
    .line 82
    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide p0

    .line 86
    return-wide p0

    .line 87
    :cond_1
    if-lez p2, :cond_2

    .line 88
    .line 89
    aget-byte v3, p0, p1

    .line 90
    .line 91
    shr-int/lit8 v4, p2, 0x1

    .line 92
    .line 93
    add-int/2addr v4, p1

    .line 94
    aget-byte v4, p0, v4

    .line 95
    .line 96
    add-int/lit8 v5, p2, -0x1

    .line 97
    .line 98
    add-int/2addr v5, p1

    .line 99
    aget-byte p0, p0, v5

    .line 100
    .line 101
    and-int/lit16 p1, v3, 0xff

    .line 102
    .line 103
    and-int/lit16 v3, v4, 0xff

    .line 104
    .line 105
    shl-int/lit8 v2, v3, 0x8

    .line 106
    .line 107
    add-int/2addr p1, v2

    .line 108
    and-int/lit16 p0, p0, 0xff

    .line 109
    .line 110
    shl-int/lit8 p0, p0, 0x2

    .line 111
    .line 112
    add-int/2addr p2, p0

    .line 113
    int-to-long p0, p1

    .line 114
    mul-long/2addr p0, v0

    .line 115
    int-to-long v2, p2

    .line 116
    const-wide v4, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    mul-long/2addr v2, v4

    .line 122
    xor-long/2addr p0, v2

    .line 123
    invoke-static {p0, p1}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    .line 124
    .line 125
    .line 126
    move-result-wide p0

    .line 127
    mul-long/2addr p0, v0

    .line 128
    return-wide p0

    .line 129
    :cond_2
    return-wide v0
.end method

.method private static hashLength16(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    return-wide p0
.end method

.method private static hashLength17to32([BII)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    int-to-long v2, v1

    .line 6
    const-wide/16 v4, 0x2

    .line 7
    .line 8
    mul-long/2addr v2, v4

    .line 9
    const-wide v4, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    add-long v10, v2, v4

    .line 15
    .line 16
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-wide v6, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-long/2addr v2, v6

    .line 26
    add-int/lit8 v6, p1, 0x8

    .line 27
    .line 28
    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    add-int v1, p1, v1

    .line 33
    .line 34
    add-int/lit8 v8, v1, -0x8

    .line 35
    .line 36
    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    mul-long/2addr v8, v10

    .line 41
    add-int/lit8 v1, v1, -0x10

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    mul-long/2addr v0, v4

    .line 48
    add-long v12, v2, v6

    .line 49
    .line 50
    const/16 v14, 0x2b

    .line 51
    .line 52
    invoke-static {v12, v13, v14}, Ljava/lang/Long;->rotateRight(JI)J

    .line 53
    .line 54
    .line 55
    move-result-wide v12

    .line 56
    const/16 v14, 0x1e

    .line 57
    .line 58
    invoke-static {v8, v9, v14}, Ljava/lang/Long;->rotateRight(JI)J

    .line 59
    .line 60
    .line 61
    move-result-wide v14

    .line 62
    add-long/2addr v14, v12

    .line 63
    add-long/2addr v0, v14

    .line 64
    add-long/2addr v6, v4

    .line 65
    const/16 v4, 0x12

    .line 66
    .line 67
    invoke-static {v6, v7, v4}, Ljava/lang/Long;->rotateRight(JI)J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    add-long/2addr v4, v2

    .line 72
    add-long/2addr v8, v4

    .line 73
    move-wide v6, v0

    .line 74
    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    return-wide v0
.end method

.method private static hashLength33To64([BII)J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    int-to-long v2, v1

    .line 6
    const-wide/16 v4, 0x2

    .line 7
    .line 8
    mul-long/2addr v2, v4

    .line 9
    const-wide v4, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    add-long/2addr v2, v4

    .line 15
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    mul-long v12, v6, v4

    .line 20
    .line 21
    add-int/lit8 v6, p1, 0x8

    .line 22
    .line 23
    invoke-static {v0, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    add-int v1, p1, v1

    .line 28
    .line 29
    add-int/lit8 v8, v1, -0x8

    .line 30
    .line 31
    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    mul-long/2addr v8, v2

    .line 36
    add-int/lit8 v10, v1, -0x10

    .line 37
    .line 38
    invoke-static {v0, v10}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 39
    .line 40
    .line 41
    move-result-wide v10

    .line 42
    mul-long/2addr v10, v4

    .line 43
    add-long v14, v12, v6

    .line 44
    .line 45
    const/16 v4, 0x2b

    .line 46
    .line 47
    invoke-static {v14, v15, v4}, Ljava/lang/Long;->rotateRight(JI)J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    const/16 v5, 0x1e

    .line 52
    .line 53
    invoke-static {v8, v9, v5}, Ljava/lang/Long;->rotateRight(JI)J

    .line 54
    .line 55
    .line 56
    move-result-wide v17

    .line 57
    add-long v17, v17, v14

    .line 58
    .line 59
    add-long v17, v17, v10

    .line 60
    .line 61
    const-wide v10, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    add-long/2addr v6, v10

    .line 67
    const/16 v14, 0x12

    .line 68
    .line 69
    invoke-static {v6, v7, v14}, Ljava/lang/Long;->rotateRight(JI)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    add-long/2addr v6, v12

    .line 74
    add-long/2addr v8, v6

    .line 75
    move-wide/from16 v6, v17

    .line 76
    .line 77
    move-wide v10, v2

    .line 78
    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    add-int/lit8 v8, p1, 0x10

    .line 83
    .line 84
    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    mul-long/2addr v8, v2

    .line 89
    add-int/lit8 v10, p1, 0x18

    .line 90
    .line 91
    invoke-static {v0, v10}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 92
    .line 93
    .line 94
    move-result-wide v10

    .line 95
    add-int/lit8 v15, v1, -0x20

    .line 96
    .line 97
    invoke-static {v0, v15}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 98
    .line 99
    .line 100
    move-result-wide v15

    .line 101
    add-long v17, v17, v15

    .line 102
    .line 103
    mul-long v14, v17, v2

    .line 104
    .line 105
    add-int/lit8 v1, v1, -0x18

    .line 106
    .line 107
    invoke-static {v0, v1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    add-long/2addr v6, v0

    .line 112
    mul-long/2addr v6, v2

    .line 113
    add-long v0, v8, v10

    .line 114
    .line 115
    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateRight(JI)J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    invoke-static {v14, v15, v5}, Ljava/lang/Long;->rotateRight(JI)J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    add-long/2addr v4, v0

    .line 124
    add-long/2addr v6, v4

    .line 125
    add-long/2addr v10, v12

    .line 126
    const/16 v0, 0x12

    .line 127
    .line 128
    invoke-static {v10, v11, v0}, Ljava/lang/Long;->rotateRight(JI)J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    add-long/2addr v0, v8

    .line 133
    add-long v8, v0, v14

    .line 134
    .line 135
    move-wide v10, v2

    .line 136
    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    return-wide v0
.end method

.method private static hashLength65Plus([BII)J
    .locals 24

    move-object/from16 v7, p0

    const/16 v0, 0x51

    int-to-long v0, v0

    const-wide v8, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long v2, v0, v8

    const-wide/16 v4, 0x71

    add-long/2addr v2, v4

    const-wide v10, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v12, v2, v10

    add-long/2addr v12, v4

    .line 1
    invoke-static {v12, v13}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v4

    mul-long/2addr v4, v10

    const/4 v6, 0x2

    new-array v12, v6, [J

    new-array v13, v6, [J

    mul-long/2addr v0, v10

    .line 2
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v10

    add-long/2addr v0, v10

    const/4 v10, 0x1

    add-int/lit8 v6, p2, -0x1

    .line 3
    div-int/lit8 v11, v6, 0x40

    mul-int/lit8 v11, v11, 0x40

    add-int v11, v11, p1

    and-int/lit8 v14, v6, 0x3f

    add-int v6, v11, v14

    add-int/lit8 v15, v6, -0x3f

    move/from16 v16, p1

    :goto_0
    add-long/2addr v0, v2

    const/16 v17, 0x0

    aget-wide v18, v12, v17

    add-long v0, v0, v18

    add-int/lit8 v6, v16, 0x8

    .line 4
    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v18

    add-long v0, v0, v18

    const/16 v6, 0x25

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long/2addr v0, v8

    aget-wide v18, v12, v10

    add-long v2, v2, v18

    add-int/lit8 v6, v16, 0x30

    .line 5
    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v18

    add-long v2, v2, v18

    const/16 v6, 0x2a

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long/2addr v2, v8

    aget-wide v18, v13, v10

    xor-long v18, v0, v18

    aget-wide v0, v12, v17

    add-int/lit8 v6, v16, 0x28

    .line 6
    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v20

    add-long v0, v0, v20

    add-long v20, v0, v2

    aget-wide v0, v13, v17

    add-long/2addr v4, v0

    const/16 v6, 0x21

    .line 7
    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v22, v0, v8

    aget-wide v0, v12, v10

    mul-long v2, v0, v8

    aget-wide v0, v13, v17

    add-long v4, v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v6, v12

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v1, v16, 0x20

    aget-wide v2, v13, v10

    add-long v2, v22, v2

    add-int/lit8 v0, v16, 0x10

    .line 9
    invoke-static {v7, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v4, v20, v4

    move-object/from16 v0, p0

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v0, v16, 0x40

    if-ne v0, v11, :cond_0

    const-wide/16 v0, 0xff

    and-long v0, v18, v0

    shl-long/2addr v0, v10

    add-long/2addr v8, v0

    aget-wide v0, v13, v17

    int-to-long v2, v14

    add-long/2addr v0, v2

    aput-wide v0, v13, v17

    aget-wide v2, v12, v17

    add-long/2addr v2, v0

    aput-wide v2, v12, v17

    aget-wide v0, v13, v17

    add-long/2addr v0, v2

    aput-wide v0, v13, v17

    add-long v22, v22, v20

    aget-wide v0, v12, v17

    add-long v22, v22, v0

    add-int/lit8 v0, v15, 0x8

    .line 10
    invoke-static {v7, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    add-long v0, v22, v0

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long/2addr v0, v8

    aget-wide v2, v12, v10

    add-long v20, v20, v2

    add-int/lit8 v2, v15, 0x30

    .line 11
    invoke-static {v7, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-long v2, v20, v2

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long/2addr v2, v8

    aget-wide v4, v13, v10

    const-wide/16 v20, 0x9

    mul-long v4, v4, v20

    xor-long v22, v0, v4

    aget-wide v0, v12, v17

    mul-long v0, v0, v20

    add-int/lit8 v4, v15, 0x28

    .line 12
    invoke-static {v7, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long v20, v0, v2

    aget-wide v0, v13, v17

    add-long v0, v18, v0

    const/16 v2, 0x21

    .line 13
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v18, v0, v8

    aget-wide v0, v12, v10

    mul-long v2, v0, v8

    aget-wide v0, v13, v17

    add-long v4, v22, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object v6, v12

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v1, v15, 0x20

    aget-wide v2, v13, v10

    add-long v2, v18, v2

    add-int/lit8 v15, v15, 0x10

    .line 15
    invoke-static {v7, v15}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v4, v20, v4

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    aget-wide v2, v12, v17

    aget-wide v4, v13, v17

    move-wide v6, v8

    .line 16
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    invoke-static/range {v20 .. v21}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v2

    const-wide v4, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    add-long v0, v2, v22

    aget-wide v2, v12, v10

    aget-wide v4, v13, v10

    .line 17
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    add-long v4, v2, v18

    move-wide v2, v0

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move/from16 v16, v0

    move-wide/from16 v4, v18

    move-wide/from16 v2, v20

    move-wide/from16 v0, v22

    goto/16 :goto_0
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
    const/16 v0, 0x15

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
    const/16 v0, 0x2c

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
    invoke-static {p1, p2, p3}, Lcom/google/common/hash/FarmHashFingerprint64;->fingerprint([BII)J

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

    const-string v0, "Hashing.farmHashFingerprint64()"

    return-object v0
.end method
