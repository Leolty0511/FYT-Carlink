.class Landroid/media/Cea608CCParser$CCData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCData"
.end annotation


# static fields
.field private static final mCtrlCodeMap:[Ljava/lang/String;

.field private static final mProtugueseCharMap:[Ljava/lang/String;

.field private static final mSpanishCharMap:[Ljava/lang/String;

.field private static final mSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    const-string v0, "RCL"

    .line 2
    .line 3
    const-string v1, "BS"

    .line 4
    .line 5
    const-string v2, "AOF"

    .line 6
    .line 7
    const-string v3, "AON"

    .line 8
    .line 9
    const-string v4, "DER"

    .line 10
    .line 11
    const-string v5, "RU2"

    .line 12
    .line 13
    const-string v6, "RU3"

    .line 14
    .line 15
    const-string v7, "RU4"

    .line 16
    .line 17
    const-string v8, "FON"

    .line 18
    .line 19
    const-string v9, "RDC"

    .line 20
    .line 21
    const-string v10, "TR"

    .line 22
    .line 23
    const-string v11, "RTD"

    .line 24
    .line 25
    const-string v12, "EDM"

    .line 26
    .line 27
    const-string v13, "CR"

    .line 28
    .line 29
    const-string v14, "ENM"

    .line 30
    .line 31
    const-string v15, "EOC"

    .line 32
    .line 33
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    .line 38
    .line 39
    const-string/jumbo v1, "\u00ae"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "\u00b0"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "\u00bd"

    .line 46
    .line 47
    .line 48
    const-string/jumbo v4, "\u00bf"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v5, "\u2122"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v6, "\u00a2"

    .line 55
    .line 56
    .line 57
    const-string/jumbo v7, "\u00a3"

    .line 58
    .line 59
    .line 60
    const-string/jumbo v8, "\u266a"

    .line 61
    .line 62
    .line 63
    const-string/jumbo v9, "\u00e0"

    .line 64
    .line 65
    .line 66
    const-string/jumbo v10, "\u00a0"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v11, "\u00e8"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v12, "\u00e2"

    .line 73
    .line 74
    .line 75
    const-string/jumbo v13, "\u00ea"

    .line 76
    .line 77
    .line 78
    const-string/jumbo v14, "\u00ee"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v15, "\u00f4"

    .line 82
    .line 83
    .line 84
    const-string/jumbo v16, "\u00fb"

    .line 85
    .line 86
    .line 87
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    .line 92
    .line 93
    const-string/jumbo v1, "\u00c1"

    .line 94
    .line 95
    .line 96
    const-string/jumbo v2, "\u00c9"

    .line 97
    .line 98
    .line 99
    const-string/jumbo v3, "\u00d3"

    .line 100
    .line 101
    .line 102
    const-string/jumbo v4, "\u00da"

    .line 103
    .line 104
    .line 105
    const-string/jumbo v5, "\u00dc"

    .line 106
    .line 107
    .line 108
    const-string/jumbo v6, "\u00fc"

    .line 109
    .line 110
    .line 111
    const-string/jumbo v7, "\u2018"

    .line 112
    .line 113
    .line 114
    const-string/jumbo v8, "\u00a1"

    .line 115
    .line 116
    .line 117
    const-string v9, "*"

    .line 118
    .line 119
    const-string v10, "\'"

    .line 120
    .line 121
    const-string/jumbo v11, "\u2014"

    .line 122
    .line 123
    .line 124
    const-string/jumbo v12, "\u00a9"

    .line 125
    .line 126
    .line 127
    const-string/jumbo v13, "\u2120"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v14, "\u2022"

    .line 131
    .line 132
    .line 133
    const-string/jumbo v15, "\u201c"

    .line 134
    .line 135
    .line 136
    const-string/jumbo v16, "\u201d"

    .line 137
    .line 138
    .line 139
    const-string/jumbo v17, "\u00c0"

    .line 140
    .line 141
    .line 142
    const-string/jumbo v18, "\u00c2"

    .line 143
    .line 144
    .line 145
    const-string/jumbo v19, "\u00c7"

    .line 146
    .line 147
    .line 148
    const-string/jumbo v20, "\u00c8"

    .line 149
    .line 150
    .line 151
    const-string/jumbo v21, "\u00ca"

    .line 152
    .line 153
    .line 154
    const-string/jumbo v22, "\u00cb"

    .line 155
    .line 156
    .line 157
    const-string/jumbo v23, "\u00eb"

    .line 158
    .line 159
    .line 160
    const-string/jumbo v24, "\u00ce"

    .line 161
    .line 162
    .line 163
    const-string/jumbo v25, "\u00cf"

    .line 164
    .line 165
    .line 166
    const-string/jumbo v26, "\u00ef"

    .line 167
    .line 168
    .line 169
    const-string/jumbo v27, "\u00d4"

    .line 170
    .line 171
    .line 172
    const-string/jumbo v28, "\u00d9"

    .line 173
    .line 174
    .line 175
    const-string/jumbo v29, "\u00f9"

    .line 176
    .line 177
    .line 178
    const-string/jumbo v30, "\u00db"

    .line 179
    .line 180
    .line 181
    const-string/jumbo v31, "\u00ab"

    .line 182
    .line 183
    .line 184
    const-string/jumbo v32, "\u00bb"

    .line 185
    .line 186
    .line 187
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    .line 192
    .line 193
    const-string/jumbo v1, "\u00c3"

    .line 194
    .line 195
    .line 196
    const-string/jumbo v2, "\u00e3"

    .line 197
    .line 198
    .line 199
    const-string/jumbo v3, "\u00cd"

    .line 200
    .line 201
    .line 202
    const-string/jumbo v4, "\u00cc"

    .line 203
    .line 204
    .line 205
    const-string/jumbo v5, "\u00ec"

    .line 206
    .line 207
    .line 208
    const-string/jumbo v6, "\u00d2"

    .line 209
    .line 210
    .line 211
    const-string/jumbo v7, "\u00f2"

    .line 212
    .line 213
    .line 214
    const-string/jumbo v8, "\u00d5"

    .line 215
    .line 216
    .line 217
    const-string/jumbo v9, "\u00f5"

    .line 218
    .line 219
    .line 220
    const-string/jumbo v10, "{"

    .line 221
    .line 222
    .line 223
    const-string/jumbo v11, "}"

    .line 224
    .line 225
    .line 226
    const-string v12, "\\"

    .line 227
    .line 228
    const-string v13, "^"

    .line 229
    .line 230
    const-string v14, "_"

    .line 231
    .line 232
    const-string/jumbo v15, "|"

    .line 233
    .line 234
    .line 235
    const-string/jumbo v16, "~"

    .line 236
    .line 237
    .line 238
    const-string/jumbo v17, "\u00c4"

    .line 239
    .line 240
    .line 241
    const-string/jumbo v18, "\u00e4"

    .line 242
    .line 243
    .line 244
    const-string/jumbo v19, "\u00d6"

    .line 245
    .line 246
    .line 247
    const-string/jumbo v20, "\u00f6"

    .line 248
    .line 249
    .line 250
    const-string/jumbo v21, "\u00df"

    .line 251
    .line 252
    .line 253
    const-string/jumbo v22, "\u00a5"

    .line 254
    .line 255
    .line 256
    const-string/jumbo v23, "\u00a4"

    .line 257
    .line 258
    .line 259
    const-string/jumbo v24, "\u2502"

    .line 260
    .line 261
    .line 262
    const-string/jumbo v25, "\u00c5"

    .line 263
    .line 264
    .line 265
    const-string/jumbo v26, "\u00e5"

    .line 266
    .line 267
    .line 268
    const-string/jumbo v27, "\u00d8"

    .line 269
    .line 270
    .line 271
    const-string/jumbo v28, "\u00f8"

    .line 272
    .line 273
    .line 274
    const-string/jumbo v29, "\u250c"

    .line 275
    .line 276
    .line 277
    const-string/jumbo v30, "\u2510"

    .line 278
    .line 279
    .line 280
    const-string/jumbo v31, "\u2514"

    .line 281
    .line 282
    .line 283
    const-string/jumbo v32, "\u2518"

    .line 284
    .line 285
    .line 286
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    .line 291
    .line 292
    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-byte p1, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    .line 5
    .line 6
    iput-byte p2, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 7
    .line 8
    iput-byte p3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$000(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 0

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result p0

    return p0
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x20

    aget-object p1, v0, p1

    return-object p1
.end method

.method public static fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    div-int/lit8 v0, v0, 0x3

    .line 3
    .line 4
    new-array v1, v0, [Landroid/media/Cea608CCParser$CCData;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    new-instance v3, Landroid/media/Cea608CCParser$CCData;

    .line 10
    .line 11
    mul-int/lit8 v4, v2, 0x3

    .line 12
    .line 13
    aget-byte v5, p0, v4

    .line 14
    .line 15
    add-int/lit8 v6, v4, 0x1

    .line 16
    .line 17
    aget-byte v6, p0, v6

    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x2

    .line 20
    .line 21
    aget-byte v4, p0, v4

    .line 22
    .line 23
    invoke-direct {v3, v5, v6, v4}, Landroid/media/Cea608CCParser$CCData;-><init>(BBB)V

    .line 24
    .line 25
    .line 26
    aput-object v3, v1, v2

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v1
.end method

.method private getBasicChar(B)C
    .locals 1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    int-to-char p1, p1

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x2588

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xf1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xd1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xf7

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xe7

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xfa

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xf3

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xed

    goto :goto_0

    :cond_0
    const/16 p1, 0xe9

    goto :goto_0

    :cond_1
    const/16 p1, 0xe1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .locals 4

    .line 1
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v2, 0x7f

    .line 8
    .line 9
    if-gt v0, v2, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iget-byte v3, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 18
    .line 19
    invoke-direct {p0, v3}, Landroid/media/Cea608CCParser$CCData;->getBasicChar(B)C

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-byte v3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 27
    .line 28
    if-lt v3, v1, :cond_0

    .line 29
    .line 30
    if-gt v3, v2, :cond_0

    .line 31
    .line 32
    invoke-direct {p0, v3}, Landroid/media/Cea608CCParser$CCData;->getBasicChar(B)C

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    return-object v0
.end method

.method private getExtendedChar()Ljava/lang/String;
    .locals 4

    .line 1
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    const/16 v2, 0x3f

    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 16
    .line 17
    if-lt v1, v3, :cond_1

    .line 18
    .line 19
    if-gt v1, v2, :cond_1

    .line 20
    .line 21
    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    .line 22
    .line 23
    sub-int/2addr v1, v3

    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const/16 v1, 0x13

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x1b

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    :cond_2
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 36
    .line 37
    if-lt v0, v3, :cond_3

    .line 38
    .line 39
    if-gt v0, v2, :cond_3

    .line 40
    .line 41
    sget-object v1, Landroid/media/Cea608CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    .line 42
    .line 43
    sub-int/2addr v0, v3

    .line 44
    aget-object v0, v1, v0

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    const/4 v0, 0x0

    .line 48
    return-object v0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .locals 3

    .line 1
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 12
    .line 13
    const/16 v1, 0x30

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x3f

    .line 18
    .line 19
    if-gt v0, v2, :cond_1

    .line 20
    .line 21
    sget-object v2, Landroid/media/Cea608CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    aget-object v0, v2, v0

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

.method private isBasicChar()Z
    .locals 2

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isExtendedChar()Z
    .locals 2

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSpecialChar()Z
    .locals 2

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCtrlCode()I
    .locals 2

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getBasicChars()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    return-object v0
.end method

.method public getMidRow()Landroid/media/Cea608CCParser$StyleCode;
    .locals 2

    .line 1
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x2f

    .line 18
    .line 19
    if-gt v0, v1, :cond_1

    .line 20
    .line 21
    invoke-static {v0}, Landroid/media/Cea608CCParser$StyleCode;->fromByte(B)Landroid/media/Cea608CCParser$StyleCode;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getPAC()Landroid/media/Cea608CCParser$PAC;
    .locals 4

    .line 1
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x70

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x40

    .line 12
    .line 13
    const/16 v3, 0x40

    .line 14
    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    and-int/lit8 v2, v0, 0x7

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    and-int/lit8 v2, v1, 0x20

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-static {v0, v1}, Landroid/media/Cea608CCParser$PAC;->fromBytes(BB)Landroid/media/Cea608CCParser$PAC;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public getTabOffset()I
    .locals 2

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const/16 v1, 0x23

    if-gt v0, v1, :cond_1

    and-int/lit8 v0, v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayableChar()Z
    .locals 1

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isBasicChar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isSpecialChar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    const/16 v5, 0x10

    .line 8
    .line 9
    if-ge v0, v5, :cond_0

    .line 10
    .line 11
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 12
    .line 13
    if-ge v0, v5, :cond_0

    .line 14
    .line 15
    new-array v0, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    aput-object v1, v0, v3

    .line 24
    .line 25
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    aput-object v1, v0, v4

    .line 40
    .line 41
    const-string v1, "[%d]Null: %02x %02x"

    .line 42
    .line 43
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v5, -0x1

    .line 53
    if-eq v0, v5, :cond_1

    .line 54
    .line 55
    new-array v1, v4, [Ljava/lang/Object;

    .line 56
    .line 57
    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    .line 58
    .line 59
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    aput-object v4, v1, v3

    .line 64
    .line 65
    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aput-object v0, v1, v2

    .line 70
    .line 71
    const-string v0, "[%d]%s"

    .line 72
    .line 73
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-lez v0, :cond_2

    .line 83
    .line 84
    new-array v1, v4, [Ljava/lang/Object;

    .line 85
    .line 86
    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    aput-object v4, v1, v3

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    aput-object v0, v1, v2

    .line 99
    .line 100
    const-string v0, "[%d]Tab%d"

    .line 101
    .line 102
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :cond_2
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    new-array v1, v4, [Ljava/lang/Object;

    .line 114
    .line 115
    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    .line 116
    .line 117
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    aput-object v4, v1, v3

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$PAC;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    aput-object v0, v1, v2

    .line 128
    .line 129
    const-string v0, "[%d]PAC: %s"

    .line 130
    .line 131
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0

    .line 136
    :cond_3
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    new-array v1, v4, [Ljava/lang/Object;

    .line 143
    .line 144
    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    .line 145
    .line 146
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    aput-object v4, v1, v3

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    aput-object v0, v1, v2

    .line 157
    .line 158
    const-string v0, "[%d]Mid-row: %s"

    .line 159
    .line 160
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0

    .line 165
    :cond_4
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    const/4 v0, 0x4

    .line 172
    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    .line 174
    iget-byte v5, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    .line 175
    .line 176
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    aput-object v5, v0, v3

    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    aput-object v3, v0, v2

    .line 187
    .line 188
    iget-byte v2, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 189
    .line 190
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    aput-object v2, v0, v4

    .line 195
    .line 196
    iget-byte v2, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 197
    .line 198
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    aput-object v2, v0, v1

    .line 203
    .line 204
    const-string v1, "[%d]Displayable: %s (%02x %02x)"

    .line 205
    .line 206
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    return-object v0

    .line 211
    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    .line 212
    .line 213
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    .line 214
    .line 215
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    aput-object v1, v0, v3

    .line 220
    .line 221
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    .line 222
    .line 223
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    aput-object v1, v0, v2

    .line 228
    .line 229
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    aput-object v1, v0, v4

    .line 236
    .line 237
    const-string v1, "[%d]Invalid: %02x %02x"

    .line 238
    .line 239
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    return-object v0
.end method
