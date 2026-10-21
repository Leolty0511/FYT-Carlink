.class public Landroid/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 3
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 5
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    array-length v0, p1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 8
    array-length v0, p1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 9
    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 10
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    return-void
.end method

.method private add(Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Byte;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    check-cast p1, Ljava/lang/Short;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    check-cast p1, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    check-cast p1, Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    check-cast p1, Ljava/lang/Float;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    check-cast p1, Ljava/lang/Double;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_6
    instance-of v0, p1, Landroid/renderscript/Byte2;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    check-cast p1, Landroid/renderscript/Byte2;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte2;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_7
    instance-of v0, p1, Landroid/renderscript/Byte3;

    .line 110
    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    check-cast p1, Landroid/renderscript/Byte3;

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte3;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_8
    instance-of v0, p1, Landroid/renderscript/Byte4;

    .line 120
    .line 121
    if-eqz v0, :cond_9

    .line 122
    .line 123
    check-cast p1, Landroid/renderscript/Byte4;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte4;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_9
    instance-of v0, p1, Landroid/renderscript/Short2;

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    check-cast p1, Landroid/renderscript/Short2;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short2;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_a
    instance-of v0, p1, Landroid/renderscript/Short3;

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    check-cast p1, Landroid/renderscript/Short3;

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short3;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_b
    instance-of v0, p1, Landroid/renderscript/Short4;

    .line 150
    .line 151
    if-eqz v0, :cond_c

    .line 152
    .line 153
    check-cast p1, Landroid/renderscript/Short4;

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short4;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_c
    instance-of v0, p1, Landroid/renderscript/Int2;

    .line 160
    .line 161
    if-eqz v0, :cond_d

    .line 162
    .line 163
    check-cast p1, Landroid/renderscript/Int2;

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int2;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_d
    instance-of v0, p1, Landroid/renderscript/Int3;

    .line 170
    .line 171
    if-eqz v0, :cond_e

    .line 172
    .line 173
    check-cast p1, Landroid/renderscript/Int3;

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int3;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_e
    instance-of v0, p1, Landroid/renderscript/Int4;

    .line 180
    .line 181
    if-eqz v0, :cond_f

    .line 182
    .line 183
    check-cast p1, Landroid/renderscript/Int4;

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int4;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_f
    instance-of v0, p1, Landroid/renderscript/Long2;

    .line 190
    .line 191
    if-eqz v0, :cond_10

    .line 192
    .line 193
    check-cast p1, Landroid/renderscript/Long2;

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long2;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_10
    instance-of v0, p1, Landroid/renderscript/Long3;

    .line 200
    .line 201
    if-eqz v0, :cond_11

    .line 202
    .line 203
    check-cast p1, Landroid/renderscript/Long3;

    .line 204
    .line 205
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long3;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_11
    instance-of v0, p1, Landroid/renderscript/Long4;

    .line 210
    .line 211
    if-eqz v0, :cond_12

    .line 212
    .line 213
    check-cast p1, Landroid/renderscript/Long4;

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long4;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_12
    instance-of v0, p1, Landroid/renderscript/Float2;

    .line 220
    .line 221
    if-eqz v0, :cond_13

    .line 222
    .line 223
    check-cast p1, Landroid/renderscript/Float2;

    .line 224
    .line 225
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_13
    instance-of v0, p1, Landroid/renderscript/Float3;

    .line 230
    .line 231
    if-eqz v0, :cond_14

    .line 232
    .line 233
    check-cast p1, Landroid/renderscript/Float3;

    .line 234
    .line 235
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_14
    instance-of v0, p1, Landroid/renderscript/Float4;

    .line 240
    .line 241
    if-eqz v0, :cond_15

    .line 242
    .line 243
    check-cast p1, Landroid/renderscript/Float4;

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_15
    instance-of v0, p1, Landroid/renderscript/Double2;

    .line 250
    .line 251
    if-eqz v0, :cond_16

    .line 252
    .line 253
    check-cast p1, Landroid/renderscript/Double2;

    .line 254
    .line 255
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double2;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_16
    instance-of v0, p1, Landroid/renderscript/Double3;

    .line 260
    .line 261
    if-eqz v0, :cond_17

    .line 262
    .line 263
    check-cast p1, Landroid/renderscript/Double3;

    .line 264
    .line 265
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double3;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_17
    instance-of v0, p1, Landroid/renderscript/Double4;

    .line 270
    .line 271
    if-eqz v0, :cond_18

    .line 272
    .line 273
    check-cast p1, Landroid/renderscript/Double4;

    .line 274
    .line 275
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double4;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_18
    instance-of v0, p1, Landroid/renderscript/Matrix2f;

    .line 280
    .line 281
    if-eqz v0, :cond_19

    .line 282
    .line 283
    check-cast p1, Landroid/renderscript/Matrix2f;

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix2f;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_19
    instance-of v0, p1, Landroid/renderscript/Matrix3f;

    .line 290
    .line 291
    if-eqz v0, :cond_1a

    .line 292
    .line 293
    check-cast p1, Landroid/renderscript/Matrix3f;

    .line 294
    .line 295
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix3f;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_1a
    instance-of v0, p1, Landroid/renderscript/Matrix4f;

    .line 300
    .line 301
    if-eqz v0, :cond_1b

    .line 302
    .line 303
    check-cast p1, Landroid/renderscript/Matrix4f;

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_1b
    instance-of v0, p1, Landroid/renderscript/BaseObj;

    .line 310
    .line 311
    if-eqz v0, :cond_1c

    .line 312
    .line 313
    check-cast p1, Landroid/renderscript/BaseObj;

    .line 314
    .line 315
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 316
    .line 317
    .line 318
    :cond_1c
    return-void
.end method

.method private addSafely(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 2
    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/renderscript/FieldPacker;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 9
    .line 10
    iget v1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 11
    .line 12
    mul-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    invoke-direct {p0, v1}, Landroid/renderscript/FieldPacker;->resize(I)Z

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :goto_0
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void
.end method

.method public static createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;
    .locals 4

    .line 1
    new-instance v0, Landroid/renderscript/FieldPacker;

    .line 2
    .line 3
    sget v1, Landroid/renderscript/RenderScript;->sPointerSize:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x8

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 8
    .line 9
    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    aget-object v3, p0, v2

    .line 15
    .line 16
    invoke-direct {v0, v3}, Landroid/renderscript/FieldPacker;->addSafely(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p0, v0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 23
    .line 24
    invoke-direct {v0, p0}, Landroid/renderscript/FieldPacker;->resize(I)Z

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private resize(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-array v0, p1, [B

    .line 8
    .line 9
    iget-object v2, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 10
    .line 11
    iget v3, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 12
    .line 13
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 17
    .line 18
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addF32(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addF32(Landroid/renderscript/Float2;)V
    .locals 1

    .line 2
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 3
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroid/renderscript/Float3;)V
    .locals 1

    .line 4
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 5
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 6
    iget p1, p1, Landroid/renderscript/Float3;->z:F

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroid/renderscript/Float4;)V
    .locals 1

    .line 7
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 8
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 9
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 10
    iget p1, p1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF64(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addF64(Landroid/renderscript/Double2;)V
    .locals 2

    .line 2
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 3
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroid/renderscript/Double3;)V
    .locals 2

    .line 4
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 5
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 6
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroid/renderscript/Double4;)V
    .locals 2

    .line 7
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 8
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 9
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 10
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addI16(Landroid/renderscript/Short2;)V
    .locals 1

    .line 4
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 5
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroid/renderscript/Short3;)V
    .locals 1

    .line 6
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 7
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 8
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroid/renderscript/Short4;)V
    .locals 1

    .line 9
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 10
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 11
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 12
    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(S)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public addI32(I)V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public addI32(Landroid/renderscript/Int2;)V
    .locals 1

    .line 6
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 7
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroid/renderscript/Int3;)V
    .locals 1

    .line 8
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 9
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 10
    iget p1, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroid/renderscript/Int4;)V
    .locals 1

    .line 11
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 12
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 13
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 14
    iget p1, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI64(J)V
    .locals 8

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v3, 0x1

    shr-long v6, p1, v0

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    .line 3
    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x10

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x18

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 5
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x20

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 6
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x28

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 7
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x30

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 8
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 9
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method public addI64(Landroid/renderscript/Long2;)V
    .locals 2

    .line 10
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 11
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroid/renderscript/Long3;)V
    .locals 2

    .line 12
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 13
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 14
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroid/renderscript/Long4;)V
    .locals 2

    .line 15
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 16
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 17
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 18
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI8(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public addI8(Landroid/renderscript/Byte2;)V
    .locals 1

    .line 2
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 3
    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroid/renderscript/Byte3;)V
    .locals 1

    .line 4
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 5
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 6
    iget-byte p1, p1, Landroid/renderscript/Byte3;->z:B

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroid/renderscript/Byte4;)V
    .locals 1

    .line 7
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 8
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 9
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 10
    iget-byte p1, p1, Landroid/renderscript/Byte4;->w:B

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix2f;)V
    .locals 3

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 6
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix3f;)V
    .locals 3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addObj(Landroid/renderscript/BaseObj;)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    sget v3, Landroid/renderscript/RenderScript;->sPointerSize:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-ne v3, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-virtual {p0, v3, v4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    long-to-int p1, v0

    .line 34
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget p1, Landroid/renderscript/RenderScript;->sPointerSize:I

    .line 39
    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public addU16(I)V
    .locals 4

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldPacker.addU16( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "rs"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saving value out of range for type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU16(Landroid/renderscript/Int2;)V
    .locals 1

    .line 6
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 7
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroid/renderscript/Int3;)V
    .locals 1

    .line 8
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 9
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 10
    iget p1, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroid/renderscript/Int4;)V
    .locals 1

    .line 11
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 12
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 13
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 14
    iget p1, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU32(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x8

    shr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 3
    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v5, 0x10

    shr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 4
    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v1, 0x18

    shr-long/2addr p1, v1

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldPacker.addU32( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Saving value out of range for type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU32(Landroid/renderscript/Long2;)V
    .locals 2

    .line 8
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 9
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroid/renderscript/Long3;)V
    .locals 2

    .line 10
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 11
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 12
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroid/renderscript/Long4;)V
    .locals 2

    .line 13
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 14
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 15
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 16
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU64(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 2
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v3, 0x1

    shr-long v6, p1, v0

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    .line 3
    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x10

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x18

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 5
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x20

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 6
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x28

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 7
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x30

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    .line 8
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 9
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldPacker.addU64( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Saving value out of range for type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU64(Landroid/renderscript/Long2;)V
    .locals 2

    .line 12
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 13
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroid/renderscript/Long3;)V
    .locals 2

    .line 14
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 15
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 16
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroid/renderscript/Long4;)V
    .locals 2

    .line 17
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 18
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 19
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 20
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU8(Landroid/renderscript/Short2;)V
    .locals 1

    .line 4
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 5
    iget-short p1, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroid/renderscript/Short3;)V
    .locals 1

    .line 6
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 7
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 8
    iget-short p1, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroid/renderscript/Short4;)V
    .locals 1

    .line 9
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 10
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 11
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 12
    iget-short p1, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(S)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldPacker.addU8( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "rs"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saving value out of range for type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public align(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    add-int/lit8 v0, p1, -0x1

    .line 4
    .line 5
    and-int v1, p1, v0

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :goto_0
    iget p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 10
    .line 11
    and-int v1, p1, v0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/BitSet;->flip(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 21
    .line 22
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 23
    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    aput-byte v2, p1, v1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 34
    .line 35
    const-string v1, "argument must be a non-negative non-zero power of 2: "

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final getData()[B
    .locals 1

    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    return-object v0
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    return-void
.end method

.method public reset(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 2
    iget v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    if-gt p1, v0, :cond_0

    .line 3
    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "out of range argument: "

    .line 5
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo v1, "out of range argument: "

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public subBoolean()Z
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public subByte2()Landroid/renderscript/Byte2;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Byte2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 17
    .line 18
    return-object v0
.end method

.method public subByte3()Landroid/renderscript/Byte3;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Byte3;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 23
    .line 24
    return-object v0
.end method

.method public subByte4()Landroid/renderscript/Byte4;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Byte4;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 29
    .line 30
    return-object v0
.end method

.method public subDouble2()Landroid/renderscript/Double2;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Double2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 17
    .line 18
    return-object v0
.end method

.method public subDouble3()Landroid/renderscript/Double3;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Double3;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 23
    .line 24
    return-object v0
.end method

.method public subDouble4()Landroid/renderscript/Double4;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Double4;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 29
    .line 30
    return-object v0
.end method

.method public subF32()F
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public subF64()D
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public subFloat2()Landroid/renderscript/Float2;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Float2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 17
    .line 18
    return-object v0
.end method

.method public subFloat3()Landroid/renderscript/Float3;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Float3;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 23
    .line 24
    return-object v0
.end method

.method public subFloat4()Landroid/renderscript/Float4;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Float4;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 29
    .line 30
    return-object v0
.end method

.method public subI16()S
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 6
    .line 7
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    aget-byte v2, v0, v1

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x8

    .line 16
    .line 17
    int-to-short v2, v2

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 21
    .line 22
    aget-byte v0, v0, v1

    .line 23
    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 25
    .line 26
    int-to-short v0, v0

    .line 27
    or-int/2addr v0, v2

    .line 28
    int-to-short v0, v0

    .line 29
    return v0
.end method

.method public subI32()I
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 6
    .line 7
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    aget-byte v2, v0, v1

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x18

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    aget-byte v3, v0, v1

    .line 20
    .line 21
    and-int/lit16 v3, v3, 0xff

    .line 22
    .line 23
    shl-int/lit8 v3, v3, 0x10

    .line 24
    .line 25
    or-int/2addr v2, v3

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    aget-byte v3, v0, v1

    .line 29
    .line 30
    and-int/lit16 v3, v3, 0xff

    .line 31
    .line 32
    shl-int/lit8 v3, v3, 0x8

    .line 33
    .line 34
    or-int/2addr v2, v3

    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 38
    .line 39
    aget-byte v0, v0, v1

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    or-int/2addr v0, v2

    .line 44
    return v0
.end method

.method public subI64()J
    .locals 10

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 7
    .line 8
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 9
    .line 10
    add-int/lit8 v2, v2, -0x1

    .line 11
    .line 12
    aget-byte v3, v1, v2

    .line 13
    .line 14
    int-to-long v3, v3

    .line 15
    const-wide/16 v5, 0xff

    .line 16
    .line 17
    and-long/2addr v3, v5

    .line 18
    const/16 v7, 0x38

    .line 19
    .line 20
    shl-long/2addr v3, v7

    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    or-long/2addr v3, v7

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    aget-byte v7, v1, v2

    .line 27
    .line 28
    int-to-long v7, v7

    .line 29
    and-long/2addr v7, v5

    .line 30
    const/16 v9, 0x30

    .line 31
    .line 32
    shl-long/2addr v7, v9

    .line 33
    or-long/2addr v3, v7

    .line 34
    add-int/lit8 v2, v2, -0x1

    .line 35
    .line 36
    aget-byte v7, v1, v2

    .line 37
    .line 38
    int-to-long v7, v7

    .line 39
    and-long/2addr v7, v5

    .line 40
    const/16 v9, 0x28

    .line 41
    .line 42
    shl-long/2addr v7, v9

    .line 43
    or-long/2addr v3, v7

    .line 44
    add-int/lit8 v2, v2, -0x1

    .line 45
    .line 46
    aget-byte v7, v1, v2

    .line 47
    .line 48
    int-to-long v7, v7

    .line 49
    and-long/2addr v7, v5

    .line 50
    const/16 v9, 0x20

    .line 51
    .line 52
    shl-long/2addr v7, v9

    .line 53
    or-long/2addr v3, v7

    .line 54
    add-int/lit8 v2, v2, -0x1

    .line 55
    .line 56
    aget-byte v7, v1, v2

    .line 57
    .line 58
    int-to-long v7, v7

    .line 59
    and-long/2addr v7, v5

    .line 60
    const/16 v9, 0x18

    .line 61
    .line 62
    shl-long/2addr v7, v9

    .line 63
    or-long/2addr v3, v7

    .line 64
    add-int/lit8 v2, v2, -0x1

    .line 65
    .line 66
    aget-byte v7, v1, v2

    .line 67
    .line 68
    int-to-long v7, v7

    .line 69
    and-long/2addr v7, v5

    .line 70
    const/16 v9, 0x10

    .line 71
    .line 72
    shl-long/2addr v7, v9

    .line 73
    or-long/2addr v3, v7

    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    aget-byte v7, v1, v2

    .line 77
    .line 78
    int-to-long v7, v7

    .line 79
    and-long/2addr v7, v5

    .line 80
    shl-long/2addr v7, v0

    .line 81
    or-long/2addr v3, v7

    .line 82
    add-int/lit8 v2, v2, -0x1

    .line 83
    .line 84
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 85
    .line 86
    aget-byte v0, v1, v2

    .line 87
    .line 88
    int-to-long v0, v0

    .line 89
    and-long/2addr v0, v5

    .line 90
    or-long/2addr v0, v3

    .line 91
    return-wide v0
.end method

.method public subI8()B
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 6
    .line 7
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 8
    .line 9
    sub-int/2addr v2, v0

    .line 10
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 11
    .line 12
    aget-byte v0, v1, v2

    .line 13
    .line 14
    return v0
.end method

.method public subInt2()Landroid/renderscript/Int2;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Int2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 17
    .line 18
    return-object v0
.end method

.method public subInt3()Landroid/renderscript/Int3;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Int3;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 23
    .line 24
    return-object v0
.end method

.method public subInt4()Landroid/renderscript/Int4;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Int4;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 29
    .line 30
    return-object v0
.end method

.method public subLong2()Landroid/renderscript/Long2;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Long2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 17
    .line 18
    return-object v0
.end method

.method public subLong3()Landroid/renderscript/Long3;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Long3;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 23
    .line 24
    return-object v0
.end method

.method public subLong4()Landroid/renderscript/Long4;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Long4;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 29
    .line 30
    return-object v0
.end method

.method public subMatrix2f()Landroid/renderscript/Matrix2f;
    .locals 4

    .line 1
    new-instance v0, Landroid/renderscript/Matrix2f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aput v3, v2, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method public subMatrix3f()Landroid/renderscript/Matrix3f;
    .locals 4

    .line 1
    new-instance v0, Landroid/renderscript/Matrix3f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aput v3, v2, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method public subMatrix4f()Landroid/renderscript/Matrix4f;
    .locals 4

    .line 1
    new-instance v0, Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aput v3, v2, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method public subShort2()Landroid/renderscript/Short2;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Short2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 17
    .line 18
    return-object v0
.end method

.method public subShort3()Landroid/renderscript/Short3;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Short3;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 23
    .line 24
    return-object v0
.end method

.method public subShort4()Landroid/renderscript/Short4;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Short4;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 29
    .line 30
    return-object v0
.end method

.method public subalign(I)V
    .locals 2

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    and-int v1, p1, v0

    .line 4
    .line 5
    if-nez v1, :cond_2

    .line 6
    .line 7
    :goto_0
    iget p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 8
    .line 9
    and-int v1, p1, v0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-lez p1, :cond_1

    .line 19
    .line 20
    :goto_1
    iget-object p1, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 21
    .line 22
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, v1, :cond_1

    .line 31
    .line 32
    iget p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 33
    .line 34
    sub-int/2addr p1, v1

    .line 35
    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 36
    .line 37
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->flip(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 45
    .line 46
    const-string v1, "argument must be a non-negative non-zero power of 2: "

    .line 47
    .line 48
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method
