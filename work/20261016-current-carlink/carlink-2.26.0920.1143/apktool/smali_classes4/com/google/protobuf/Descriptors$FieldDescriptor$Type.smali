.class public final enum Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BOOL:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum DOUBLE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FLOAT:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

.field private static final types:[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;


# instance fields
.field private final javaType:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 4
    .line 5
    const-string v2, "DOUBLE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 12
    .line 13
    new-instance v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 14
    .line 15
    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 16
    .line 17
    const-string v4, "FLOAT"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 24
    .line 25
    new-instance v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 26
    .line 27
    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 28
    .line 29
    const-string v6, "INT64"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 36
    .line 37
    new-instance v6, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 38
    .line 39
    const-string v8, "UINT64"

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    invoke-direct {v6, v8, v9, v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 43
    .line 44
    .line 45
    sput-object v6, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 46
    .line 47
    new-instance v8, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 48
    .line 49
    sget-object v10, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 50
    .line 51
    const-string v11, "INT32"

    .line 52
    .line 53
    const/4 v12, 0x4

    .line 54
    invoke-direct {v8, v11, v12, v10}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 55
    .line 56
    .line 57
    sput-object v8, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 58
    .line 59
    new-instance v11, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 60
    .line 61
    const-string v13, "FIXED64"

    .line 62
    .line 63
    const/4 v14, 0x5

    .line 64
    invoke-direct {v11, v13, v14, v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 65
    .line 66
    .line 67
    sput-object v11, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 68
    .line 69
    new-instance v13, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 70
    .line 71
    const-string v15, "FIXED32"

    .line 72
    .line 73
    const/4 v14, 0x6

    .line 74
    invoke-direct {v13, v15, v14, v10}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 75
    .line 76
    .line 77
    sput-object v13, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 78
    .line 79
    new-instance v15, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 80
    .line 81
    sget-object v14, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 82
    .line 83
    const-string v12, "BOOL"

    .line 84
    .line 85
    const/4 v9, 0x7

    .line 86
    invoke-direct {v15, v12, v9, v14}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 87
    .line 88
    .line 89
    sput-object v15, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 90
    .line 91
    new-instance v12, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 92
    .line 93
    sget-object v14, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 94
    .line 95
    const-string v9, "STRING"

    .line 96
    .line 97
    const/16 v7, 0x8

    .line 98
    .line 99
    invoke-direct {v12, v9, v7, v14}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 100
    .line 101
    .line 102
    sput-object v12, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 103
    .line 104
    new-instance v9, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 105
    .line 106
    sget-object v14, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 107
    .line 108
    const-string v7, "GROUP"

    .line 109
    .line 110
    const/16 v5, 0x9

    .line 111
    .line 112
    invoke-direct {v9, v7, v5, v14}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 113
    .line 114
    .line 115
    sput-object v9, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 116
    .line 117
    new-instance v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 118
    .line 119
    const-string v5, "MESSAGE"

    .line 120
    .line 121
    const/16 v3, 0xa

    .line 122
    .line 123
    invoke-direct {v7, v5, v3, v14}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 124
    .line 125
    .line 126
    sput-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 127
    .line 128
    new-instance v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 129
    .line 130
    sget-object v14, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 131
    .line 132
    const-string v3, "BYTES"

    .line 133
    .line 134
    move-object/from16 v16, v7

    .line 135
    .line 136
    const/16 v7, 0xb

    .line 137
    .line 138
    invoke-direct {v5, v3, v7, v14}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 139
    .line 140
    .line 141
    sput-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 142
    .line 143
    new-instance v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 144
    .line 145
    const-string v14, "UINT32"

    .line 146
    .line 147
    const/16 v7, 0xc

    .line 148
    .line 149
    invoke-direct {v3, v14, v7, v10}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 150
    .line 151
    .line 152
    sput-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 153
    .line 154
    new-instance v14, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 155
    .line 156
    sget-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 157
    .line 158
    move-object/from16 v17, v3

    .line 159
    .line 160
    const-string v3, "ENUM"

    .line 161
    .line 162
    move-object/from16 v18, v5

    .line 163
    .line 164
    const/16 v5, 0xd

    .line 165
    .line 166
    invoke-direct {v14, v3, v5, v7}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 167
    .line 168
    .line 169
    sput-object v14, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 170
    .line 171
    new-instance v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 172
    .line 173
    const-string v7, "SFIXED32"

    .line 174
    .line 175
    const/16 v5, 0xe

    .line 176
    .line 177
    invoke-direct {v3, v7, v5, v10}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 178
    .line 179
    .line 180
    sput-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 181
    .line 182
    new-instance v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 183
    .line 184
    const-string v5, "SFIXED64"

    .line 185
    .line 186
    move-object/from16 v19, v3

    .line 187
    .line 188
    const/16 v3, 0xf

    .line 189
    .line 190
    invoke-direct {v7, v5, v3, v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 191
    .line 192
    .line 193
    sput-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 194
    .line 195
    new-instance v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 196
    .line 197
    const-string v3, "SINT32"

    .line 198
    .line 199
    move-object/from16 v20, v7

    .line 200
    .line 201
    const/16 v7, 0x10

    .line 202
    .line 203
    invoke-direct {v5, v3, v7, v10}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 204
    .line 205
    .line 206
    sput-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 207
    .line 208
    new-instance v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 209
    .line 210
    const-string v10, "SINT64"

    .line 211
    .line 212
    const/16 v7, 0x11

    .line 213
    .line 214
    invoke-direct {v3, v10, v7, v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    .line 215
    .line 216
    .line 217
    sput-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 218
    .line 219
    const/16 v4, 0x12

    .line 220
    .line 221
    new-array v4, v4, [Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 222
    .line 223
    const/4 v10, 0x0

    .line 224
    aput-object v0, v4, v10

    .line 225
    .line 226
    const/4 v0, 0x1

    .line 227
    aput-object v1, v4, v0

    .line 228
    .line 229
    const/4 v0, 0x2

    .line 230
    aput-object v2, v4, v0

    .line 231
    .line 232
    const/4 v0, 0x3

    .line 233
    aput-object v6, v4, v0

    .line 234
    .line 235
    const/4 v0, 0x4

    .line 236
    aput-object v8, v4, v0

    .line 237
    .line 238
    const/4 v0, 0x5

    .line 239
    aput-object v11, v4, v0

    .line 240
    .line 241
    const/4 v0, 0x6

    .line 242
    aput-object v13, v4, v0

    .line 243
    .line 244
    const/4 v0, 0x7

    .line 245
    aput-object v15, v4, v0

    .line 246
    .line 247
    const/16 v0, 0x8

    .line 248
    .line 249
    aput-object v12, v4, v0

    .line 250
    .line 251
    const/16 v0, 0x9

    .line 252
    .line 253
    aput-object v9, v4, v0

    .line 254
    .line 255
    const/16 v0, 0xa

    .line 256
    .line 257
    aput-object v16, v4, v0

    .line 258
    .line 259
    const/16 v0, 0xb

    .line 260
    .line 261
    aput-object v18, v4, v0

    .line 262
    .line 263
    const/16 v0, 0xc

    .line 264
    .line 265
    aput-object v17, v4, v0

    .line 266
    .line 267
    const/16 v0, 0xd

    .line 268
    .line 269
    aput-object v14, v4, v0

    .line 270
    .line 271
    const/16 v0, 0xe

    .line 272
    .line 273
    aput-object v19, v4, v0

    .line 274
    .line 275
    const/16 v0, 0xf

    .line 276
    .line 277
    aput-object v20, v4, v0

    .line 278
    .line 279
    const/16 v0, 0x10

    .line 280
    .line 281
    aput-object v5, v4, v0

    .line 282
    .line 283
    aput-object v3, v4, v7

    .line 284
    .line 285
    sput-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 286
    .line 287
    invoke-static {}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    sput-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->types:[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    .line 292
    .line 293
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$3000()[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->types:[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public static valueOf(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->types:[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object v0
.end method

.method public toProto()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    return-object v0
.end method
