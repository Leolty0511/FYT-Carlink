.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 5

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    if-ltz p3, :cond_5

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    if-lt v0, p3, :cond_5

    .line 9
    .line 10
    array-length v0, p2

    .line 11
    if-lt v0, p3, :cond_5

    .line 12
    .line 13
    const/4 v0, -0x2

    .line 14
    const/4 v1, -0x1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq p0, v2, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq p0, v4, :cond_3

    .line 25
    .line 26
    :cond_0
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v1

    .line 31
    :cond_3
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    and-int/2addr p0, v2

    .line 36
    if-nez p0, :cond_4

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_4
    return v1

    .line 40
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_6
    const/4 p0, 0x0

    .line 47
    throw p0
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 16

    .line 1
    move/from16 v0, p5

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    move/from16 v3, p0

    .line 10
    .line 11
    if-ne v3, v2, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v3, v2

    .line 16
    :goto_0
    aget-byte v4, p1, p2

    .line 17
    .line 18
    add-int/lit8 v5, p2, 0x1

    .line 19
    .line 20
    add-int v6, p2, v0

    .line 21
    .line 22
    move v8, v2

    .line 23
    move v7, v4

    .line 24
    :goto_1
    if-ge v5, v6, :cond_3

    .line 25
    .line 26
    aget-byte v9, p1, v5

    .line 27
    .line 28
    if-eq v9, v7, :cond_2

    .line 29
    .line 30
    add-int/lit8 v8, v8, 0x1

    .line 31
    .line 32
    move v7, v9

    .line 33
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    and-int/lit8 v5, v7, 0x1

    .line 37
    .line 38
    and-int/lit8 v6, v3, 0x1

    .line 39
    .line 40
    if-eq v5, v6, :cond_7

    .line 41
    .line 42
    move v5, v0

    .line 43
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 44
    .line 45
    if-ltz v5, :cond_6

    .line 46
    .line 47
    add-int v6, p4, v5

    .line 48
    .line 49
    aget-char v6, p3, v6

    .line 50
    .line 51
    const/16 v7, 0xa

    .line 52
    .line 53
    if-ne v6, v7, :cond_5

    .line 54
    .line 55
    add-int/lit8 v5, v5, -0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    const/16 v7, 0x20

    .line 59
    .line 60
    if-eq v6, v7, :cond_4

    .line 61
    .line 62
    const/16 v7, 0x9

    .line 63
    .line 64
    if-eq v6, v7, :cond_4

    .line 65
    .line 66
    :cond_6
    :goto_2
    add-int/2addr v5, v2

    .line 67
    if-eq v5, v0, :cond_8

    .line 68
    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_7
    move v5, v0

    .line 73
    :cond_8
    :goto_3
    if-ne v8, v2, :cond_a

    .line 74
    .line 75
    if-ne v4, v3, :cond_a

    .line 76
    .line 77
    and-int/lit8 v0, v4, 0x1

    .line 78
    .line 79
    if-eqz v0, :cond_9

    .line 80
    .line 81
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_9
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_a
    mul-int/lit8 v6, v8, 0x2

    .line 88
    .line 89
    new-array v7, v6, [I

    .line 90
    .line 91
    shl-int/lit8 v9, v4, 0x1a

    .line 92
    .line 93
    add-int v10, p2, v5

    .line 94
    .line 95
    move/from16 v13, p2

    .line 96
    .line 97
    move v15, v13

    .line 98
    move v14, v2

    .line 99
    move v11, v4

    .line 100
    move v12, v9

    .line 101
    move v9, v11

    .line 102
    :goto_4
    if-ge v13, v10, :cond_e

    .line 103
    .line 104
    aget-byte v1, p1, v13

    .line 105
    .line 106
    if-eq v1, v4, :cond_d

    .line 107
    .line 108
    if-le v1, v11, :cond_b

    .line 109
    .line 110
    move v11, v1

    .line 111
    goto :goto_5

    .line 112
    :cond_b
    if-ge v1, v9, :cond_c

    .line 113
    .line 114
    move v9, v1

    .line 115
    :cond_c
    :goto_5
    add-int/lit8 v4, v14, 0x1

    .line 116
    .line 117
    sub-int v15, v13, v15

    .line 118
    .line 119
    or-int/2addr v12, v15

    .line 120
    aput v12, v7, v14

    .line 121
    .line 122
    add-int/lit8 v14, v4, 0x1

    .line 123
    .line 124
    sub-int v12, v13, p2

    .line 125
    .line 126
    aput v12, v7, v4

    .line 127
    .line 128
    shl-int/lit8 v4, v1, 0x1a

    .line 129
    .line 130
    move v12, v4

    .line 131
    move v15, v13

    .line 132
    move v4, v1

    .line 133
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_e
    sub-int/2addr v10, v15

    .line 137
    or-int v1, v10, v12

    .line 138
    .line 139
    aput v1, v7, v14

    .line 140
    .line 141
    if-ge v5, v0, :cond_f

    .line 142
    .line 143
    add-int/2addr v14, v2

    .line 144
    aput v5, v7, v14

    .line 145
    .line 146
    add-int/2addr v14, v2

    .line 147
    sub-int/2addr v0, v5

    .line 148
    shl-int/lit8 v1, v3, 0x1a

    .line 149
    .line 150
    or-int/2addr v0, v1

    .line 151
    aput v0, v7, v14

    .line 152
    .line 153
    :cond_f
    and-int/lit8 v0, v9, 0x1

    .line 154
    .line 155
    if-ne v0, v3, :cond_11

    .line 156
    .line 157
    add-int/lit8 v9, v9, 0x1

    .line 158
    .line 159
    if-le v11, v9, :cond_10

    .line 160
    .line 161
    :goto_6
    move v0, v2

    .line 162
    goto :goto_7

    .line 163
    :cond_10
    const/4 v0, 0x0

    .line 164
    goto :goto_7

    .line 165
    :cond_11
    if-le v8, v2, :cond_10

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :goto_7
    if-eqz v0, :cond_16

    .line 169
    .line 170
    sub-int/2addr v11, v2

    .line 171
    :goto_8
    if-lt v11, v9, :cond_16

    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    :goto_9
    if-ge v0, v6, :cond_15

    .line 175
    .line 176
    aget v1, v7, v0

    .line 177
    .line 178
    aget-byte v1, p1, v1

    .line 179
    .line 180
    if-lt v1, v11, :cond_14

    .line 181
    .line 182
    add-int/lit8 v1, v0, 0x2

    .line 183
    .line 184
    :goto_a
    if-ge v1, v6, :cond_12

    .line 185
    .line 186
    aget v2, v7, v1

    .line 187
    .line 188
    aget-byte v2, p1, v2

    .line 189
    .line 190
    if-lt v2, v11, :cond_12

    .line 191
    .line 192
    add-int/lit8 v1, v1, 0x2

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_12
    add-int/lit8 v2, v1, -0x2

    .line 196
    .line 197
    :goto_b
    if-ge v0, v2, :cond_13

    .line 198
    .line 199
    aget v3, v7, v0

    .line 200
    .line 201
    aget v4, v7, v2

    .line 202
    .line 203
    aput v4, v7, v0

    .line 204
    .line 205
    aput v3, v7, v2

    .line 206
    .line 207
    add-int/lit8 v3, v0, 0x1

    .line 208
    .line 209
    aget v4, v7, v3

    .line 210
    .line 211
    add-int/lit8 v5, v2, 0x1

    .line 212
    .line 213
    aget v8, v7, v5

    .line 214
    .line 215
    aput v8, v7, v3

    .line 216
    .line 217
    aput v4, v7, v5

    .line 218
    .line 219
    add-int/lit8 v0, v0, 0x2

    .line 220
    .line 221
    add-int/lit8 v2, v2, -0x2

    .line 222
    .line 223
    goto :goto_b

    .line 224
    :cond_13
    add-int/lit8 v0, v1, 0x2

    .line 225
    .line 226
    :cond_14
    add-int/lit8 v0, v0, 0x2

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_15
    add-int/lit8 v11, v11, -0x1

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_16
    new-instance v0, Landroid/text/Layout$Directions;

    .line 233
    .line 234
    invoke-direct {v0, v7}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 235
    .line 236
    .line 237
    return-object v0
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
