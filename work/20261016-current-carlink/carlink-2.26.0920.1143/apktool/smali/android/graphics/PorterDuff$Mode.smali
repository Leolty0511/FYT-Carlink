.class public final enum Landroid/graphics/PorterDuff$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PorterDuff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/PorterDuff$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/PorterDuff$Mode;

.field public static final enum ADD:Landroid/graphics/PorterDuff$Mode;

.field public static final enum CLEAR:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DARKEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum LIGHTEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum MULTIPLY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum OVERLAY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SCREEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum XOR:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public final nativeInt:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    const-string v1, "CLEAR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    const-string v3, "SRC"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 20
    .line 21
    new-instance v3, Landroid/graphics/PorterDuff$Mode;

    .line 22
    .line 23
    const-string v5, "DST"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    .line 30
    .line 31
    new-instance v5, Landroid/graphics/PorterDuff$Mode;

    .line 32
    .line 33
    const-string v7, "SRC_OVER"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 40
    .line 41
    new-instance v7, Landroid/graphics/PorterDuff$Mode;

    .line 42
    .line 43
    const-string v9, "DST_OVER"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 50
    .line 51
    new-instance v9, Landroid/graphics/PorterDuff$Mode;

    .line 52
    .line 53
    const-string v11, "SRC_IN"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 60
    .line 61
    new-instance v11, Landroid/graphics/PorterDuff$Mode;

    .line 62
    .line 63
    const-string v13, "DST_IN"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 70
    .line 71
    new-instance v13, Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    const-string v15, "SRC_OUT"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 80
    .line 81
    new-instance v15, Landroid/graphics/PorterDuff$Mode;

    .line 82
    .line 83
    const-string v14, "DST_OUT"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12, v12}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 91
    .line 92
    new-instance v14, Landroid/graphics/PorterDuff$Mode;

    .line 93
    .line 94
    const-string v12, "SRC_ATOP"

    .line 95
    .line 96
    const/16 v10, 0x9

    .line 97
    .line 98
    invoke-direct {v14, v12, v10, v10}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 102
    .line 103
    new-instance v12, Landroid/graphics/PorterDuff$Mode;

    .line 104
    .line 105
    const-string v10, "DST_ATOP"

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v12, v10, v8, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 113
    .line 114
    new-instance v10, Landroid/graphics/PorterDuff$Mode;

    .line 115
    .line 116
    const-string v8, "XOR"

    .line 117
    .line 118
    const/16 v6, 0xb

    .line 119
    .line 120
    invoke-direct {v10, v8, v6, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v10, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    .line 124
    .line 125
    new-instance v8, Landroid/graphics/PorterDuff$Mode;

    .line 126
    .line 127
    const-string v6, "DARKEN"

    .line 128
    .line 129
    const/16 v4, 0xc

    .line 130
    .line 131
    const/16 v2, 0x10

    .line 132
    .line 133
    invoke-direct {v8, v6, v4, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    sput-object v8, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 137
    .line 138
    new-instance v6, Landroid/graphics/PorterDuff$Mode;

    .line 139
    .line 140
    const-string v2, "LIGHTEN"

    .line 141
    .line 142
    const/16 v4, 0xd

    .line 143
    .line 144
    move-object/from16 v16, v8

    .line 145
    .line 146
    const/16 v8, 0x11

    .line 147
    .line 148
    invoke-direct {v6, v2, v4, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 149
    .line 150
    .line 151
    sput-object v6, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    .line 152
    .line 153
    new-instance v2, Landroid/graphics/PorterDuff$Mode;

    .line 154
    .line 155
    const-string v8, "MULTIPLY"

    .line 156
    .line 157
    move-object/from16 v17, v6

    .line 158
    .line 159
    const/16 v6, 0xe

    .line 160
    .line 161
    invoke-direct {v2, v8, v6, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 162
    .line 163
    .line 164
    sput-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 165
    .line 166
    new-instance v8, Landroid/graphics/PorterDuff$Mode;

    .line 167
    .line 168
    const-string v4, "SCREEN"

    .line 169
    .line 170
    move-object/from16 v18, v2

    .line 171
    .line 172
    const/16 v2, 0xf

    .line 173
    .line 174
    invoke-direct {v8, v4, v2, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 175
    .line 176
    .line 177
    sput-object v8, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    .line 178
    .line 179
    new-instance v4, Landroid/graphics/PorterDuff$Mode;

    .line 180
    .line 181
    const-string v6, "ADD"

    .line 182
    .line 183
    move-object/from16 v19, v8

    .line 184
    .line 185
    const/16 v2, 0xc

    .line 186
    .line 187
    const/16 v8, 0x10

    .line 188
    .line 189
    invoke-direct {v4, v6, v8, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 190
    .line 191
    .line 192
    sput-object v4, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 193
    .line 194
    new-instance v2, Landroid/graphics/PorterDuff$Mode;

    .line 195
    .line 196
    const-string v6, "OVERLAY"

    .line 197
    .line 198
    move-object/from16 v20, v4

    .line 199
    .line 200
    const/16 v4, 0xf

    .line 201
    .line 202
    const/16 v8, 0x11

    .line 203
    .line 204
    invoke-direct {v2, v6, v8, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 205
    .line 206
    .line 207
    sput-object v2, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    .line 208
    .line 209
    const/16 v4, 0x12

    .line 210
    .line 211
    new-array v4, v4, [Landroid/graphics/PorterDuff$Mode;

    .line 212
    .line 213
    const/4 v6, 0x0

    .line 214
    aput-object v0, v4, v6

    .line 215
    .line 216
    const/4 v0, 0x1

    .line 217
    aput-object v1, v4, v0

    .line 218
    .line 219
    const/4 v0, 0x2

    .line 220
    aput-object v3, v4, v0

    .line 221
    .line 222
    const/4 v0, 0x3

    .line 223
    aput-object v5, v4, v0

    .line 224
    .line 225
    const/4 v0, 0x4

    .line 226
    aput-object v7, v4, v0

    .line 227
    .line 228
    const/4 v0, 0x5

    .line 229
    aput-object v9, v4, v0

    .line 230
    .line 231
    const/4 v0, 0x6

    .line 232
    aput-object v11, v4, v0

    .line 233
    .line 234
    const/4 v0, 0x7

    .line 235
    aput-object v13, v4, v0

    .line 236
    .line 237
    const/16 v0, 0x8

    .line 238
    .line 239
    aput-object v15, v4, v0

    .line 240
    .line 241
    const/16 v0, 0x9

    .line 242
    .line 243
    aput-object v14, v4, v0

    .line 244
    .line 245
    const/16 v0, 0xa

    .line 246
    .line 247
    aput-object v12, v4, v0

    .line 248
    .line 249
    const/16 v0, 0xb

    .line 250
    .line 251
    aput-object v10, v4, v0

    .line 252
    .line 253
    const/16 v0, 0xc

    .line 254
    .line 255
    aput-object v16, v4, v0

    .line 256
    .line 257
    const/16 v0, 0xd

    .line 258
    .line 259
    aput-object v17, v4, v0

    .line 260
    .line 261
    const/16 v0, 0xe

    .line 262
    .line 263
    aput-object v18, v4, v0

    .line 264
    .line 265
    const/16 v0, 0xf

    .line 266
    .line 267
    aput-object v19, v4, v0

    .line 268
    .line 269
    const/16 v0, 0x10

    .line 270
    .line 271
    aput-object v20, v4, v0

    .line 272
    .line 273
    const/16 v0, 0x11

    .line 274
    .line 275
    aput-object v2, v4, v0

    .line 276
    .line 277
    sput-object v4, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

    .line 278
    .line 279
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const-class v0, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public static values()[Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, [Landroid/graphics/PorterDuff$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method
