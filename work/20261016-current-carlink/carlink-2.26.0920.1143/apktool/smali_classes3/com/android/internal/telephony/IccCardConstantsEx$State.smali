.class public final enum Lcom/android/internal/telephony/IccCardConstantsEx$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardConstantsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/IccCardConstantsEx$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum SIM_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum SIM_LOCKED_FOREVER:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum SIM_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCardConstantsEx$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 10
    .line 11
    new-instance v1, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 12
    .line 13
    const-string v3, "ABSENT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/internal/telephony/IccCardConstantsEx$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 20
    .line 21
    new-instance v3, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 22
    .line 23
    const-string v5, "PIN_REQUIRED"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 30
    .line 31
    new-instance v5, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 32
    .line 33
    const-string v7, "PUK_REQUIRED"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 40
    .line 41
    new-instance v7, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 42
    .line 43
    const-string v9, "NETWORK_LOCKED"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 50
    .line 51
    new-instance v9, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 52
    .line 53
    const-string v11, "READY"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/android/internal/telephony/IccCardConstantsEx$State;->READY:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 60
    .line 61
    new-instance v11, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 62
    .line 63
    const-string v13, "NOT_READY"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 70
    .line 71
    new-instance v13, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 72
    .line 73
    const-string v15, "PERM_DISABLED"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 80
    .line 81
    new-instance v15, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 82
    .line 83
    const-string v14, "CARD_IO_ERROR"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 91
    .line 92
    new-instance v14, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 93
    .line 94
    const-string v12, "NETWORK_SUBSET_LOCKED"

    .line 95
    .line 96
    const/16 v10, 0x9

    .line 97
    .line 98
    invoke-direct {v14, v12, v10}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v14, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 102
    .line 103
    new-instance v12, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 104
    .line 105
    const-string v10, "SERVICE_PROVIDER_LOCKED"

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v12, v10, v8}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 113
    .line 114
    new-instance v10, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 115
    .line 116
    const-string v8, "CORPORATE_LOCKED"

    .line 117
    .line 118
    const/16 v6, 0xb

    .line 119
    .line 120
    invoke-direct {v10, v8, v6}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v10, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 124
    .line 125
    new-instance v8, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 126
    .line 127
    const-string v6, "SIM_LOCKED"

    .line 128
    .line 129
    const/16 v4, 0xc

    .line 130
    .line 131
    invoke-direct {v8, v6, v4}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v8, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 135
    .line 136
    new-instance v6, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 137
    .line 138
    const-string v4, "NETWORK_LOCKED_PUK"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v6, v4, v2}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v6, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 146
    .line 147
    new-instance v4, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 148
    .line 149
    const-string v2, "NETWORK_SUBSET_LOCKED_PUK"

    .line 150
    .line 151
    move-object/from16 v17, v6

    .line 152
    .line 153
    const/16 v6, 0xe

    .line 154
    .line 155
    invoke-direct {v4, v2, v6}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    sput-object v4, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 159
    .line 160
    new-instance v2, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 161
    .line 162
    const-string v6, "SERVICE_PROVIDER_LOCKED_PUK"

    .line 163
    .line 164
    move-object/from16 v18, v4

    .line 165
    .line 166
    const/16 v4, 0xf

    .line 167
    .line 168
    invoke-direct {v2, v6, v4}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    sput-object v2, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 172
    .line 173
    new-instance v6, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 174
    .line 175
    const-string v4, "CORPORATE_LOCKED_PUK"

    .line 176
    .line 177
    move-object/from16 v19, v2

    .line 178
    .line 179
    const/16 v2, 0x10

    .line 180
    .line 181
    invoke-direct {v6, v4, v2}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    sput-object v6, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 185
    .line 186
    new-instance v4, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 187
    .line 188
    const-string v2, "SIM_LOCKED_PUK"

    .line 189
    .line 190
    move-object/from16 v20, v6

    .line 191
    .line 192
    const/16 v6, 0x11

    .line 193
    .line 194
    invoke-direct {v4, v2, v6}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    sput-object v4, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 198
    .line 199
    new-instance v2, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 200
    .line 201
    const-string v6, "SIM_LOCKED_FOREVER"

    .line 202
    .line 203
    move-object/from16 v21, v4

    .line 204
    .line 205
    const/16 v4, 0x12

    .line 206
    .line 207
    invoke-direct {v2, v6, v4}, Lcom/android/internal/telephony/IccCardConstantsEx$State;-><init>(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    sput-object v2, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED_FOREVER:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 211
    .line 212
    const/16 v6, 0x13

    .line 213
    .line 214
    new-array v6, v6, [Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 215
    .line 216
    const/16 v16, 0x0

    .line 217
    .line 218
    aput-object v0, v6, v16

    .line 219
    .line 220
    const/4 v0, 0x1

    .line 221
    aput-object v1, v6, v0

    .line 222
    .line 223
    const/4 v0, 0x2

    .line 224
    aput-object v3, v6, v0

    .line 225
    .line 226
    const/4 v0, 0x3

    .line 227
    aput-object v5, v6, v0

    .line 228
    .line 229
    const/4 v0, 0x4

    .line 230
    aput-object v7, v6, v0

    .line 231
    .line 232
    const/4 v0, 0x5

    .line 233
    aput-object v9, v6, v0

    .line 234
    .line 235
    const/4 v0, 0x6

    .line 236
    aput-object v11, v6, v0

    .line 237
    .line 238
    const/4 v0, 0x7

    .line 239
    aput-object v13, v6, v0

    .line 240
    .line 241
    const/16 v0, 0x8

    .line 242
    .line 243
    aput-object v15, v6, v0

    .line 244
    .line 245
    const/16 v0, 0x9

    .line 246
    .line 247
    aput-object v14, v6, v0

    .line 248
    .line 249
    const/16 v0, 0xa

    .line 250
    .line 251
    aput-object v12, v6, v0

    .line 252
    .line 253
    const/16 v0, 0xb

    .line 254
    .line 255
    aput-object v10, v6, v0

    .line 256
    .line 257
    const/16 v0, 0xc

    .line 258
    .line 259
    aput-object v8, v6, v0

    .line 260
    .line 261
    const/16 v0, 0xd

    .line 262
    .line 263
    aput-object v17, v6, v0

    .line 264
    .line 265
    const/16 v0, 0xe

    .line 266
    .line 267
    aput-object v18, v6, v0

    .line 268
    .line 269
    const/16 v0, 0xf

    .line 270
    .line 271
    aput-object v19, v6, v0

    .line 272
    .line 273
    const/16 v0, 0x10

    .line 274
    .line 275
    aput-object v20, v6, v0

    .line 276
    .line 277
    const/16 v0, 0x11

    .line 278
    .line 279
    aput-object v21, v6, v0

    .line 280
    .line 281
    aput-object v2, v6, v4

    .line 282
    .line 283
    sput-object v6, Lcom/android/internal/telephony/IccCardConstantsEx$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 284
    .line 285
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static intToState(I)Lcom/android/internal/telephony/IccCardConstantsEx$State;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0

    .line 10
    :pswitch_0
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED_FOREVER:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_1
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_4
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_5
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_6
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_7
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_8
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_9
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_a
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_b
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_c
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_d
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->READY:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_e
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_f
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_10
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_11
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_12
    sget-object p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstantsEx$State;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/IccCardConstantsEx$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardConstantsEx$State;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstantsEx$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardConstantsEx$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardConstantsEx$State;

    return-object v0
.end method


# virtual methods
.method public iccCardExist()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->READY:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED_FOREVER:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-ne p0, v0, :cond_0

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

.method public isPinLocked()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-ne p0, v0, :cond_0

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

.method public isSimlockLocked()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstantsEx$State;->SIM_LOCKED_FOREVER:Lcom/android/internal/telephony/IccCardConstantsEx$State;

    if-ne p0, v0, :cond_0

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
