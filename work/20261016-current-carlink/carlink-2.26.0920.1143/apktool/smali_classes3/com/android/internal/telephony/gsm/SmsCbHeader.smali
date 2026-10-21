.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FORMAT_ETWS_PRIMARY:I = 0x3

.field static final FORMAT_GSM:I = 0x1

.field static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_LENGTH_ETWS:I = 0x38

.field private static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field private final mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mDataCodingScheme:I

.field private final mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mFormat:I

.field private final mGeographicalScope:I

.field private final mMessageIdentifier:I

.field private final mNrOfPages:I

.field private final mPageIndex:I

.field private final mSerialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x6

    .line 12
    if-lt v2, v3, :cond_a

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    const/16 v4, 0x58

    .line 16
    .line 17
    const/4 v5, 0x5

    .line 18
    const/4 v6, 0x3

    .line 19
    const/4 v7, 0x2

    .line 20
    const/4 v8, 0x4

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x1

    .line 24
    if-gt v2, v4, :cond_6

    .line 25
    .line 26
    aget-byte v2, v1, v9

    .line 27
    .line 28
    and-int/lit16 v4, v2, 0xc0

    .line 29
    .line 30
    ushr-int/2addr v4, v3

    .line 31
    iput v4, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    .line 32
    .line 33
    and-int/lit16 v2, v2, 0xff

    .line 34
    .line 35
    shl-int/lit8 v2, v2, 0x8

    .line 36
    .line 37
    aget-byte v4, v1, v11

    .line 38
    .line 39
    and-int/lit16 v4, v4, 0xff

    .line 40
    .line 41
    or-int/2addr v2, v4

    .line 42
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    .line 43
    .line 44
    aget-byte v2, v1, v7

    .line 45
    .line 46
    and-int/lit16 v2, v2, 0xff

    .line 47
    .line 48
    shl-int/lit8 v2, v2, 0x8

    .line 49
    .line 50
    aget-byte v4, v1, v6

    .line 51
    .line 52
    and-int/lit16 v4, v4, 0xff

    .line 53
    .line 54
    or-int/2addr v2, v4

    .line 55
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    .line 56
    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    array-length v2, v1

    .line 64
    const/16 v4, 0x38

    .line 65
    .line 66
    if-gt v2, v4, :cond_3

    .line 67
    .line 68
    iput v6, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 69
    .line 70
    const/4 v2, -0x1

    .line 71
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 72
    .line 73
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 74
    .line 75
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 76
    .line 77
    aget-byte v2, v1, v8

    .line 78
    .line 79
    and-int/lit8 v4, v2, 0x1

    .line 80
    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    move v14, v11

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move v14, v9

    .line 86
    :goto_0
    aget-byte v4, v1, v5

    .line 87
    .line 88
    and-int/lit16 v4, v4, 0x80

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    move v15, v11

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move v15, v9

    .line 95
    :goto_1
    and-int/lit16 v2, v2, 0xfe

    .line 96
    .line 97
    ushr-int/lit8 v13, v2, 0x1

    .line 98
    .line 99
    array-length v2, v1

    .line 100
    if-le v2, v3, :cond_2

    .line 101
    .line 102
    array-length v2, v1

    .line 103
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    move-object/from16 v17, v1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move-object/from16 v17, v10

    .line 111
    .line 112
    :goto_2
    new-instance v1, Landroid/telephony/SmsCbEtwsInfo;

    .line 113
    .line 114
    const/16 v16, 0x1

    .line 115
    .line 116
    move-object v12, v1

    .line 117
    invoke-direct/range {v12 .. v17}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    .line 118
    .line 119
    .line 120
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 121
    .line 122
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 126
    .line 127
    aget-byte v2, v1, v8

    .line 128
    .line 129
    and-int/lit16 v2, v2, 0xff

    .line 130
    .line 131
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 132
    .line 133
    aget-byte v1, v1, v5

    .line 134
    .line 135
    and-int/lit16 v2, v1, 0xf0

    .line 136
    .line 137
    ushr-int/2addr v2, v8

    .line 138
    and-int/lit8 v1, v1, 0xf

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    if-le v2, v1, :cond_4

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    move v11, v2

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    :goto_3
    move v1, v11

    .line 150
    :goto_4
    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 151
    .line 152
    iput v1, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_6
    iput v7, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    .line 156
    .line 157
    aget-byte v2, v1, v9

    .line 158
    .line 159
    if-ne v2, v11, :cond_9

    .line 160
    .line 161
    aget-byte v2, v1, v11

    .line 162
    .line 163
    and-int/lit16 v2, v2, 0xff

    .line 164
    .line 165
    shl-int/lit8 v2, v2, 0x8

    .line 166
    .line 167
    aget-byte v3, v1, v7

    .line 168
    .line 169
    and-int/lit16 v3, v3, 0xff

    .line 170
    .line 171
    or-int/2addr v2, v3

    .line 172
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    .line 173
    .line 174
    aget-byte v2, v1, v6

    .line 175
    .line 176
    and-int/lit16 v3, v2, 0xc0

    .line 177
    .line 178
    ushr-int/lit8 v3, v3, 0x6

    .line 179
    .line 180
    iput v3, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    .line 181
    .line 182
    and-int/lit16 v2, v2, 0xff

    .line 183
    .line 184
    shl-int/lit8 v2, v2, 0x8

    .line 185
    .line 186
    aget-byte v3, v1, v8

    .line 187
    .line 188
    and-int/lit16 v3, v3, 0xff

    .line 189
    .line 190
    or-int/2addr v2, v3

    .line 191
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    .line 192
    .line 193
    aget-byte v1, v1, v5

    .line 194
    .line 195
    and-int/lit16 v1, v1, 0xff

    .line 196
    .line 197
    iput v1, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 198
    .line 199
    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 200
    .line 201
    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 202
    .line 203
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_7

    .line 208
    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    new-instance v1, Landroid/telephony/SmsCbEtwsInfo;

    .line 222
    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v7, 0x0

    .line 225
    move-object v2, v1

    .line 226
    invoke-direct/range {v2 .. v7}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    .line 227
    .line 228
    .line 229
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 230
    .line 231
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_8

    .line 239
    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 257
    .line 258
    new-instance v1, Landroid/telephony/SmsCbCmasInfo;

    .line 259
    .line 260
    const/4 v4, -0x1

    .line 261
    const/4 v5, -0x1

    .line 262
    move-object v2, v1

    .line 263
    invoke-direct/range {v2 .. v8}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    .line 264
    .line 265
    .line 266
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_8
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 270
    .line 271
    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 272
    .line 273
    :goto_6
    return-void

    .line 274
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    const-string v3, "Unsupported message type "

    .line 277
    .line 278
    invoke-static {v3, v2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v1

    .line 286
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 287
    .line 288
    const-string v2, "Illegal PDU"

    .line 289
    .line 290
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v1
.end method

.method private getCmasCertainty()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1120
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCmasSeverity()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1120
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1120
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    add-int/lit16 v0, v0, -0x1100

    return v0
.end method

.method private isCmasMessage()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v1, 0x1112

    if-lt v0, v1, :cond_0

    const/16 v1, 0x112f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEtwsEmergencyUserAlert()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEtwsMessage()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const v1, 0xfff8

    and-int/2addr v0, v1

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEtwsPopupAlert()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCmasInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method public getDataCodingScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    return v0
.end method

.method public getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method public getGeographicalScope()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    return v0
.end method

.method public getNumberOfPages()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    return v0
.end method

.method public getSerialNumber()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    return v0
.end method

.method public isEmergencyMessage()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v1, 0x1100

    if-lt v0, v1, :cond_0

    const/16 v1, 0x18ff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEtwsPrimaryNotification()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUmtsFormat()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SmsCbHeader{GS="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", serialNumber=0x"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    .line 19
    .line 20
    const-string v2, ", messageIdentifier=0x"

    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    .line 26
    .line 27
    const-string v2, ", DCS=0x"

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    .line 33
    .line 34
    const-string v2, ", page "

    .line 35
    .line 36
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, " of "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    .line 50
    .line 51
    const/16 v2, 0x7d

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Landroid/app/m;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
