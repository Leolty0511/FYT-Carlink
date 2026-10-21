.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final ACCENT_ACUTE:I = 0xb4

.field private static final ACCENT_BREVE:I = 0x2d8

.field private static final ACCENT_CARON:I = 0x2c7

.field private static final ACCENT_CEDILLA:I = 0xb8

.field private static final ACCENT_CIRCUMFLEX:I = 0x2c6

.field private static final ACCENT_CIRCUMFLEX_LEGACY:I = 0x5e

.field private static final ACCENT_COMMA_ABOVE:I = 0x1fbd

.field private static final ACCENT_COMMA_ABOVE_RIGHT:I = 0x2bc

.field private static final ACCENT_DOT_ABOVE:I = 0x2d9

.field private static final ACCENT_DOT_BELOW:I = 0x2e

.field private static final ACCENT_DOUBLE_ACUTE:I = 0x2dd

.field private static final ACCENT_GRAVE:I = 0x2cb

.field private static final ACCENT_GRAVE_LEGACY:I = 0x60

.field private static final ACCENT_HOOK_ABOVE:I = 0x2c0

.field private static final ACCENT_HORN:I = 0x27

.field private static final ACCENT_MACRON:I = 0xaf

.field private static final ACCENT_MACRON_BELOW:I = 0x2cd

.field private static final ACCENT_OGONEK:I = 0x2db

.field private static final ACCENT_REVERSED_COMMA_ABOVE:I = 0x2bd

.field private static final ACCENT_RING_ABOVE:I = 0x2da

.field private static final ACCENT_STROKE:I = 0x2d

.field private static final ACCENT_TILDE:I = 0x2dc

.field private static final ACCENT_TILDE_LEGACY:I = 0x7e

.field private static final ACCENT_TURNED_COMMA_ABOVE:I = 0x2bb

.field private static final ACCENT_UMLAUT:I = 0xa8

.field private static final ACCENT_VERTICAL_LINE_ABOVE:I = 0x2c8

.field private static final ACCENT_VERTICAL_LINE_BELOW:I = 0x2cc

.field public static final ALPHA:I = 0x3

.field public static final BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHAR_SPACE:I = 0x20

.field public static final COMBINING_ACCENT:I = -0x80000000

.field public static final COMBINING_ACCENT_MASK:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULL:I = 0x4

.field public static final HEX_INPUT:C = '\uef00'

.field public static final MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final NUMERIC:I = 0x1

.field public static final PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final PREDICTIVE:I = 0x2

.field public static final SPECIAL_FUNCTION:I = 0x5

.field public static final VIRTUAL_KEYBOARD:I = -0x1

.field private static final sAccentToCombining:Landroid/util/SparseIntArray;

.field private static final sCombiningToAccent:Landroid/util/SparseIntArray;

.field private static final sDeadKeyBuilder:Ljava/lang/StringBuilder;

.field private static final sDeadKeyCache:Landroid/util/SparseIntArray;


# instance fields
.field private mPtr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    new-instance v1, Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    const/16 v2, 0x300

    .line 16
    .line 17
    const/16 v3, 0x2cb

    .line 18
    .line 19
    invoke-static {v2, v3}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 20
    .line 21
    .line 22
    const/16 v4, 0x301

    .line 23
    .line 24
    const/16 v5, 0xb4

    .line 25
    .line 26
    invoke-static {v4, v5}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 27
    .line 28
    .line 29
    const/16 v4, 0x2c6

    .line 30
    .line 31
    const/16 v6, 0x302

    .line 32
    .line 33
    invoke-static {v6, v4}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 34
    .line 35
    .line 36
    const/16 v4, 0x2dc

    .line 37
    .line 38
    const/16 v7, 0x303

    .line 39
    .line 40
    invoke-static {v7, v4}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 41
    .line 42
    .line 43
    const/16 v4, 0x304

    .line 44
    .line 45
    const/16 v8, 0xaf

    .line 46
    .line 47
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 48
    .line 49
    .line 50
    const/16 v4, 0x306

    .line 51
    .line 52
    const/16 v8, 0x2d8

    .line 53
    .line 54
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 55
    .line 56
    .line 57
    const/16 v4, 0x307

    .line 58
    .line 59
    const/16 v8, 0x2d9

    .line 60
    .line 61
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 62
    .line 63
    .line 64
    const/16 v4, 0x308

    .line 65
    .line 66
    const/16 v8, 0xa8

    .line 67
    .line 68
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 69
    .line 70
    .line 71
    const/16 v4, 0x309

    .line 72
    .line 73
    const/16 v8, 0x2c0

    .line 74
    .line 75
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 76
    .line 77
    .line 78
    const/16 v4, 0x30a

    .line 79
    .line 80
    const/16 v8, 0x2da

    .line 81
    .line 82
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 83
    .line 84
    .line 85
    const/16 v4, 0x30b

    .line 86
    .line 87
    const/16 v8, 0x2dd

    .line 88
    .line 89
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 90
    .line 91
    .line 92
    const/16 v4, 0x30c

    .line 93
    .line 94
    const/16 v8, 0x2c7

    .line 95
    .line 96
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 97
    .line 98
    .line 99
    const/16 v4, 0x30d

    .line 100
    .line 101
    const/16 v8, 0x2c8

    .line 102
    .line 103
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 104
    .line 105
    .line 106
    const/16 v4, 0x312

    .line 107
    .line 108
    const/16 v8, 0x2bb

    .line 109
    .line 110
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 111
    .line 112
    .line 113
    const/16 v4, 0x313

    .line 114
    .line 115
    const/16 v8, 0x1fbd

    .line 116
    .line 117
    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 118
    .line 119
    .line 120
    const/16 v4, 0x314

    .line 121
    .line 122
    const/16 v9, 0x2bd

    .line 123
    .line 124
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 125
    .line 126
    .line 127
    const/16 v4, 0x315

    .line 128
    .line 129
    const/16 v9, 0x2bc

    .line 130
    .line 131
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 132
    .line 133
    .line 134
    const/16 v4, 0x31b

    .line 135
    .line 136
    const/16 v9, 0x27

    .line 137
    .line 138
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 139
    .line 140
    .line 141
    const/16 v4, 0x323

    .line 142
    .line 143
    const/16 v9, 0x2e

    .line 144
    .line 145
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 146
    .line 147
    .line 148
    const/16 v4, 0x327

    .line 149
    .line 150
    const/16 v9, 0xb8

    .line 151
    .line 152
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 153
    .line 154
    .line 155
    const/16 v4, 0x328

    .line 156
    .line 157
    const/16 v9, 0x2db

    .line 158
    .line 159
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 160
    .line 161
    .line 162
    const/16 v4, 0x329

    .line 163
    .line 164
    const/16 v9, 0x2cc

    .line 165
    .line 166
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 167
    .line 168
    .line 169
    const/16 v4, 0x331

    .line 170
    .line 171
    const/16 v9, 0x2cd

    .line 172
    .line 173
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 174
    .line 175
    .line 176
    const/16 v4, 0x335

    .line 177
    .line 178
    const/16 v9, 0x2d

    .line 179
    .line 180
    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 181
    .line 182
    .line 183
    const/16 v4, 0x340

    .line 184
    .line 185
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 186
    .line 187
    .line 188
    const/16 v3, 0x341

    .line 189
    .line 190
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 191
    .line 192
    .line 193
    const/16 v3, 0x343

    .line 194
    .line 195
    invoke-virtual {v0, v3, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 196
    .line 197
    .line 198
    const/16 v0, 0x60

    .line 199
    .line 200
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 201
    .line 202
    .line 203
    const/16 v0, 0x5e

    .line 204
    .line 205
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 206
    .line 207
    .line 208
    const/16 v0, 0x7e

    .line 209
    .line 210
    invoke-virtual {v1, v0, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Landroid/util/SparseIntArray;

    .line 214
    .line 215
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 216
    .line 217
    .line 218
    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    .line 219
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const/16 v0, 0x44

    .line 228
    .line 229
    const/16 v1, 0x110

    .line 230
    .line 231
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 232
    .line 233
    .line 234
    const/16 v0, 0x47

    .line 235
    .line 236
    const/16 v1, 0x1e4

    .line 237
    .line 238
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 239
    .line 240
    .line 241
    const/16 v0, 0x48

    .line 242
    .line 243
    const/16 v1, 0x126

    .line 244
    .line 245
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 246
    .line 247
    .line 248
    const/16 v0, 0x49

    .line 249
    .line 250
    const/16 v1, 0x197

    .line 251
    .line 252
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 253
    .line 254
    .line 255
    const/16 v0, 0x4c

    .line 256
    .line 257
    const/16 v1, 0x141

    .line 258
    .line 259
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 260
    .line 261
    .line 262
    const/16 v0, 0x4f

    .line 263
    .line 264
    const/16 v1, 0xd8

    .line 265
    .line 266
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 267
    .line 268
    .line 269
    const/16 v0, 0x54

    .line 270
    .line 271
    const/16 v1, 0x166

    .line 272
    .line 273
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 274
    .line 275
    .line 276
    const/16 v0, 0x64

    .line 277
    .line 278
    const/16 v1, 0x111

    .line 279
    .line 280
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 281
    .line 282
    .line 283
    const/16 v0, 0x67

    .line 284
    .line 285
    const/16 v1, 0x1e5

    .line 286
    .line 287
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 288
    .line 289
    .line 290
    const/16 v0, 0x68

    .line 291
    .line 292
    const/16 v1, 0x127

    .line 293
    .line 294
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 295
    .line 296
    .line 297
    const/16 v0, 0x69

    .line 298
    .line 299
    const/16 v1, 0x268

    .line 300
    .line 301
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 302
    .line 303
    .line 304
    const/16 v0, 0x6c

    .line 305
    .line 306
    const/16 v1, 0x142

    .line 307
    .line 308
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 309
    .line 310
    .line 311
    const/16 v0, 0x6f

    .line 312
    .line 313
    const/16 v1, 0xf8

    .line 314
    .line 315
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 316
    .line 317
    .line 318
    const/16 v0, 0x74

    .line 319
    .line 320
    const/16 v1, 0x167

    .line 321
    .line 322
    invoke-static {v9, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 323
    .line 324
    .line 325
    new-instance v0, Landroid/view/KeyCharacterMap$1;

    .line 326
    .line 327
    invoke-direct {v0}, Landroid/view/KeyCharacterMap$1;-><init>()V

    .line 328
    .line 329
    .line 330
    sput-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 331
    .line 332
    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not read KeyCharacterMap from parcel."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parcel must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static addCombining(II)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->append(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static addDeadKey(III)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    shl-int/lit8 p0, p0, 0x10

    .line 10
    .line 11
    or-int/2addr p0, p1

    .line 12
    sget-object p1, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-virtual {p1, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p1, "Invalid dead key declaration."

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static deviceHasKey(I)Z
    .locals 3

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object p0

    aget-boolean p0, p0, v2

    return p0
.end method

.method public static deviceHasKeys([I)[Z
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object p0

    return-object p0
.end method

.method public static getDeadChar(II)I
    .locals 5

    .line 1
    if-eq p1, p0, :cond_4

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    shl-int/lit8 v1, p0, 0x10

    .line 19
    .line 20
    or-int/2addr v1, p1

    .line 21
    sget-object v2, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    const/4 v3, -0x1

    .line 25
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v4, v3, :cond_3

    .line 30
    .line 31
    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 34
    .line 35
    .line 36
    int-to-char p1, p1

    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    int-to-char p0, p0

    .line 41
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget-object p0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 45
    .line 46
    invoke-static {v3, p0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->codePointCount(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v3, 0x1

    .line 59
    if-ne p1, v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :cond_2
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    .line 67
    .line 68
    move v4, v0

    .line 69
    :cond_3
    monitor-exit v2

    .line 70
    return v4

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_4
    :goto_0
    return p0
.end method

.method public static load(I)Landroid/view/KeyCharacterMap;
    .locals 2

    .line 1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/view/KeyCharacterMap$UnavailableException;

    .line 20
    .line 21
    const-string v1, "Could not load key character map for device "

    .line 22
    .line 23
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Landroid/view/KeyCharacterMap$UnavailableException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetCharacter(JII)C
.end method

.method private static native nativeGetDisplayLabel(JI)C
.end method

.method private static native nativeGetEvents(J[C)[Landroid/view/KeyEvent;
.end method

.method private static native nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native nativeGetKeyboardType(J)I
.end method

.method private static native nativeGetMatch(JI[CI)C
.end method

.method private static native nativeGetNumber(JI)C
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeDispose(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public get(II)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 6
    .line 7
    invoke-static {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sget-object p2, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/high16 p1, -0x80000000

    .line 20
    .line 21
    or-int/2addr p1, p2

    .line 22
    :cond_0
    return p1
.end method

.method public getDisplayLabel(I)C
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result p1

    return p1
.end method

.method public getEvents([C)[Landroid/view/KeyEvent;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(J[C)[Landroid/view/KeyEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "chars must not be null."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 3

    .line 1
    invoke-static {}, Landroid/view/KeyCharacterMap$FallbackAction;->obtain()Landroid/view/KeyCharacterMap$FallbackAction;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 10
    .line 11
    invoke-static {v1, v2, p1, p2, v0}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget p1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 18
    .line 19
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x4

    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    .line 18
    .line 19
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 20
    .line 21
    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    .line 26
    .line 27
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 28
    .line 29
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 30
    .line 31
    invoke-static {v2, v3, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    aput-char v2, v0, v1

    .line 36
    .line 37
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 38
    .line 39
    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-static {v1, v2, p1, v3}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    aput-char v1, v0, v3

    .line 47
    .line 48
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 49
    .line 50
    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    invoke-static {v1, v2, p1, v4}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    aput-char v1, v0, v4

    .line 58
    .line 59
    iget-object p2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 60
    .line 61
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-static {v0, v1, p1, v2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    aput-char p1, p2, v2

    .line 69
    .line 70
    return v3

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 72
    .line 73
    const-string p2, "results.meta.length must be >= 4"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public getKeyboardType()I
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(J)I

    move-result v0

    return v0
.end method

.method public getMatch(I[C)C
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result p1

    return p1
.end method

.method public getMatch(I[CI)C
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    .line 3
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(JI[CI)C

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chars must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModifierBehavior()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumber(I)C
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result p1

    return p1
.end method

.method public isPrintingKey(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p2, "parcel must not be null"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method
