.class public final Landroid/util/proto/ProtoOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELD_COUNT_MASK:J = 0xf0000000000L

.field public static final FIELD_COUNT_PACKED:J = 0x50000000000L

.field public static final FIELD_COUNT_REPEATED:J = 0x20000000000L

.field public static final FIELD_COUNT_SHIFT:I = 0x28

.field public static final FIELD_COUNT_SINGLE:J = 0x10000000000L

.field public static final FIELD_COUNT_UNKNOWN:J = 0x0L

.field public static final FIELD_ID_MASK:I = -0x8

.field public static final FIELD_ID_SHIFT:I = 0x3

.field public static final FIELD_TYPE_BOOL:J = 0xd00000000L

.field public static final FIELD_TYPE_BYTES:J = 0xf00000000L

.field public static final FIELD_TYPE_DOUBLE:J = 0x100000000L

.field public static final FIELD_TYPE_ENUM:J = 0x1000000000L

.field public static final FIELD_TYPE_FIXED32:J = 0x900000000L

.field public static final FIELD_TYPE_FIXED64:J = 0xa00000000L

.field public static final FIELD_TYPE_FLOAT:J = 0x200000000L

.field public static final FIELD_TYPE_INT32:J = 0x300000000L

.field public static final FIELD_TYPE_INT64:J = 0x400000000L

.field public static final FIELD_TYPE_MASK:J = 0xff00000000L

.field private static final FIELD_TYPE_NAMES:[Ljava/lang/String;

.field public static final FIELD_TYPE_OBJECT:J = 0x1100000000L

.field public static final FIELD_TYPE_SFIXED32:J = 0xb00000000L

.field public static final FIELD_TYPE_SFIXED64:J = 0xc00000000L

.field public static final FIELD_TYPE_SHIFT:I = 0x20

.field public static final FIELD_TYPE_SINT32:J = 0x700000000L

.field public static final FIELD_TYPE_SINT64:J = 0x800000000L

.field public static final FIELD_TYPE_STRING:J = 0xe00000000L

.field public static final FIELD_TYPE_UINT32:J = 0x500000000L

.field public static final FIELD_TYPE_UINT64:J = 0x600000000L

.field public static final FIELD_TYPE_UNKNOWN:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "ProtoOutputStream"

.field public static final WIRE_TYPE_END_GROUP:I = 0x4

.field public static final WIRE_TYPE_FIXED32:I = 0x5

.field public static final WIRE_TYPE_FIXED64:I = 0x1

.field public static final WIRE_TYPE_LENGTH_DELIMITED:I = 0x2

.field public static final WIRE_TYPE_MASK:I = 0x7

.field public static final WIRE_TYPE_START_GROUP:I = 0x3

.field public static final WIRE_TYPE_VARINT:I


# instance fields
.field private mBuffer:Landroid/util/proto/EncodedBuffer;

.field private mCompacted:Z

.field private mCopyBegin:I

.field private mDepth:I

.field private mExpectedObjectToken:J

.field private mNextObjectId:I

.field private mStream:Ljava/io/OutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    const-string v0, "Double"

    .line 2
    .line 3
    const-string v1, "Float"

    .line 4
    .line 5
    const-string v2, "Int32"

    .line 6
    .line 7
    const-string v3, "Int64"

    .line 8
    .line 9
    const-string v4, "UInt32"

    .line 10
    .line 11
    const-string v5, "UInt64"

    .line 12
    .line 13
    const-string v6, "SInt32"

    .line 14
    .line 15
    const-string v7, "SInt64"

    .line 16
    .line 17
    const-string v8, "Fixed32"

    .line 18
    .line 19
    const-string v9, "Fixed64"

    .line 20
    .line 21
    const-string v10, "SFixed32"

    .line 22
    .line 23
    const-string v11, "SFixed64"

    .line 24
    .line 25
    const-string v12, "Bool"

    .line 26
    .line 27
    const-string v13, "String"

    .line 28
    .line 29
    const-string v14, "Bytes"

    .line 30
    .line 31
    const-string v15, "Enum"

    .line 32
    .line 33
    const-string v16, "Object"

    .line 34
    .line 35
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 4
    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 7
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 6
    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    return-void
.end method

.method private assertNotCompacted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string/jumbo v1, "write called after compact"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public static checkFieldId(JJ)I
    .locals 17

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    const-wide v2, 0xf0000000000L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long v4, v0, v2

    .line 9
    .line 10
    const-wide v6, 0xff00000000L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long v8, v0, v6

    .line 16
    .line 17
    and-long v2, p2, v2

    .line 18
    .line 19
    and-long v6, p2, v6

    .line 20
    .line 21
    long-to-int v10, v0

    .line 22
    if-eqz v10, :cond_7

    .line 23
    .line 24
    cmp-long v11, v8, v6

    .line 25
    .line 26
    const-wide v12, 0x50000000000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    if-nez v11, :cond_1

    .line 32
    .line 33
    cmp-long v11, v4, v2

    .line 34
    .line 35
    if-eqz v11, :cond_0

    .line 36
    .line 37
    cmp-long v11, v4, v12

    .line 38
    .line 39
    if-nez v11, :cond_1

    .line 40
    .line 41
    const-wide v11, 0x20000000000L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long v11, v2, v11

    .line 47
    .line 48
    if-eqz v11, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return v10

    .line 52
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    const-string/jumbo v13, "start"

    .line 61
    .line 62
    .line 63
    const-string/jumbo v14, "write"

    .line 64
    .line 65
    .line 66
    const-wide v15, 0x1100000000L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    if-eqz v12, :cond_5

    .line 72
    .line 73
    if-eqz v11, :cond_5

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    cmp-long v1, v6, v15

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, " called for field "

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, " which should be used with "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    cmp-long v1, v8, v15

    .line 119
    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-wide v1, 0x50000000000L

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    cmp-long v1, v4, v1

    .line 141
    .line 142
    if-nez v1, :cond_4

    .line 143
    .line 144
    const-string v1, " or writeRepeated"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :cond_4
    const/16 v1, 0x2e

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v1

    .line 167
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    cmp-long v5, v6, v15

    .line 173
    .line 174
    if-nez v5, :cond_6

    .line 175
    .line 176
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_6
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :goto_3
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v2, " called with an invalid fieldId: 0x"

    .line 198
    .line 199
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, ". The proto field ID might be "

    .line 210
    .line 211
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const/16 v0, 0x2e

    .line 218
    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 233
    .line 234
    const-string v3, "Invalid proto field "

    .line 235
    .line 236
    const-string v4, " fieldId="

    .line 237
    .line 238
    invoke-static {v3, v10, v4}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v2
.end method

.method private compactIfNecessary()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 32
    .line 33
    if-ge v1, v0, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 36
    .line 37
    sub-int/2addr v0, v1

    .line 38
    invoke-virtual {v2, v1, v0}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Trying to compact with "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 60
    .line 61
    const-string v3, " missing calls to endObject"

    .line 62
    .line 63
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method private compactSizes(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ge p1, v0, :cond_7

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    and-int/lit8 v2, v1, 0x7

    .line 21
    .line 22
    if-eqz v2, :cond_6

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq v2, v3, :cond_5

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v2, v3, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-eq v2, v3, :cond_2

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x5

    .line 37
    if-ne v2, p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p1, Landroid/util/proto/ProtoParseException;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "compactSizes Bad tag tag=0x"

    .line 50
    .line 51
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, " wireType="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " -- "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 92
    .line 93
    const-string v1, "groups not supported at index "

    .line 94
    .line 95
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_3
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 104
    .line 105
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 112
    .line 113
    sub-int/2addr v2, v3

    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iput v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    .line 141
    .line 142
    if-ltz p1, :cond_4

    .line 143
    .line 144
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_4
    neg-int p1, p1

    .line 152
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 158
    .line 159
    const/16 v1, 0x8

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_6
    :goto_1
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    and-int/lit16 p1, p1, 0x80

    .line 173
    .line 174
    if-eqz p1, :cond_0

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_7
    return-void
.end method

.method public static convertObjectIdToOrdinal(I)I
    .locals 1

    const v0, 0x7ffff

    sub-int/2addr v0, p0

    return v0
.end method

.method private editEncodedSize(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v1, v0, :cond_8

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/2addr v3, p1

    .line 26
    and-int/lit8 p1, v2, 0x7

    .line 27
    .line 28
    if-eqz p1, :cond_6

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    if-eq p1, v4, :cond_5

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq p1, v4, :cond_2

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    if-eq p1, v4, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    if-eq p1, v4, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x5

    .line 43
    if-ne p1, v1, :cond_0

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x4

    .line 46
    .line 47
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_0
    new-instance v0, Landroid/util/proto/ProtoParseException;

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "editEncodedSize Bad tag tag=0x"

    .line 59
    .line 60
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, " wireType="

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " -- "

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    const-string v0, "groups not supported at index "

    .line 103
    .line 104
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_2
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-ltz p1, :cond_4

    .line 131
    .line 132
    if-ne v2, p1, :cond_3

    .line 133
    .line 134
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 141
    .line 142
    const-string v3, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    .line 143
    .line 144
    const-string v4, " childEncodedSize="

    .line 145
    .line 146
    const-string v5, " childEncodedSizePos="

    .line 147
    .line 148
    invoke-static {v3, p1, v4, v2, v5}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_4
    neg-int p1, p1

    .line 164
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 169
    .line 170
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 171
    .line 172
    .line 173
    :goto_1
    invoke-static {v2}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    add-int/2addr p1, v2

    .line 178
    add-int/2addr p1, v3

    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_5
    add-int/lit8 v3, v3, 0x8

    .line 182
    .line 183
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 184
    .line 185
    const/16 v1, 0x8

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 192
    .line 193
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    and-int/lit16 p1, p1, 0x80

    .line 200
    .line 201
    if-eqz p1, :cond_7

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_7
    :goto_3
    move p1, v3

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_8
    return p1
.end method

.method private endObjectImpl(JZ)V
    .locals 10

    .line 1
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sub-int/2addr v3, v2

    .line 20
    add-int/lit8 v3, v3, -0x8

    .line 21
    .line 22
    if-eq p3, v1, :cond_1

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p2, "endRepeatedObject called where endObject should have been"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "endObject called where endRepeatedObject should have been"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 43
    .line 44
    and-int/lit16 v1, v1, 0x1ff

    .line 45
    .line 46
    if-ne v1, v0, :cond_4

    .line 47
    .line 48
    iget-wide v0, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 49
    .line 50
    cmp-long v0, v0, p1

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    int-to-long v0, v0

    .line 61
    const/16 v4, 0x20

    .line 62
    .line 63
    shl-long/2addr v0, v4

    .line 64
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 65
    .line 66
    add-int/lit8 v5, v2, 0x4

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    int-to-long v6, v4

    .line 73
    const-wide v8, 0xffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    and-long/2addr v6, v8

    .line 79
    or-long/2addr v0, v6

    .line 80
    iput-wide v0, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 81
    .line 82
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 83
    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 85
    .line 86
    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 87
    .line 88
    if-lez v3, :cond_2

    .line 89
    .line 90
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 91
    .line 92
    neg-int p2, v3

    .line 93
    invoke-virtual {p1, v2, p2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 97
    .line 98
    const/4 p2, -0x1

    .line 99
    invoke-virtual {p1, v5, p2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    if-eqz p3, :cond_3

    .line 104
    .line 105
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 106
    .line 107
    const/4 p2, 0x0

    .line 108
    invoke-virtual {p1, v2, p2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 112
    .line 113
    invoke-virtual {p1, v5, p2}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    iget-object p3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 118
    .line 119
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    sub-int/2addr v2, p1

    .line 124
    invoke-virtual {p3, v2}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-void

    .line 128
    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, "Mismatched startObject/endObject calls. Current depth "

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, " token="

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p1, " expectedToken="

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-wide p1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 160
    .line 161
    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p3
.end method

.method public static getDepthFromToken(J)I
    .locals 2

    const/16 v0, 0x33

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1ff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static getFieldCountString(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x10000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-wide v0, 0x20000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "Repeated"

    return-object p0

    :cond_1
    const-wide v0, 0x50000000000L

    cmp-long p0, p0, v0

    if-nez p0, :cond_2

    const-string p0, "Packed"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFieldIdString(J)Ljava/lang/String;
    .locals 5

    .line 1
    const-wide v0, 0xf0000000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr v0, p1

    .line 7
    invoke-static {v0, v1}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    const-wide v2, 0xff00000000L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long/2addr v2, p1

    .line 16
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    const-string v4, "fieldType="

    .line 23
    .line 24
    invoke-static {v4, v2, v3}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " "

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " tag="

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    long-to-int v0, p1

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, " fieldId=0x"

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method private static getFieldTypeString(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide v0, 0xff00000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    ushr-long/2addr p0, v0

    .line 10
    long-to-int p0, p0

    .line 11
    add-int/lit8 p0, p0, -0x1

    .line 12
    .line 13
    if-ltz p0, :cond_0

    .line 14
    .line 15
    sget-object p1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    if-ge p0, v0, :cond_0

    .line 19
    .line 20
    aget-object p0, p1, p0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static getObjectIdFromToken(J)I
    .locals 2

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    const-wide/32 v0, 0x7ffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getRepeatedFromToken(J)Z
    .locals 2

    const/16 v0, 0x3c

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSizePosFromToken(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private static getTagSize(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static getTagSizeFromToken(J)I
    .locals 2

    const/16 v0, 0x3d

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x7

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static makeFieldId(IJ)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0
.end method

.method public static makeToken(IZIII)J
    .locals 4

    const-wide/16 v0, 0x7

    int-to-long v2, p0

    and-long/2addr v0, v2

    const/16 p0, 0x3d

    shl-long/2addr v0, p0

    if-eqz p1, :cond_0

    const-wide/high16 p0, 0x1000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    or-long/2addr p0, v0

    const-wide/16 v0, 0x1ff

    int-to-long v2, p2

    and-long/2addr v0, v2

    const/16 p2, 0x33

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    const-wide/32 v0, 0x7ffff

    int-to-long p2, p3

    and-long/2addr p2, v0

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    const-wide p2, 0xffffffffL

    int-to-long v0, p4

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private readRawTag()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    long-to-int v0, v0

    .line 24
    return v0
.end method

.method private startObjectImpl(IZ)J
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 16
    .line 17
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 22
    .line 23
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 24
    .line 25
    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 26
    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    shr-long/2addr v2, v4

    .line 30
    long-to-int v2, v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 35
    .line 36
    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 37
    .line 38
    long-to-int v2, v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 47
    .line 48
    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    .line 49
    .line 50
    invoke-static {p1, p2, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    iput-wide p1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    .line 55
    .line 56
    return-wide p1
.end method

.method public static token2String(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Token(0)"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Token(val=0x"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " depth="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " object="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getObjectIdFromToken(J)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Landroid/util/proto/ProtoOutputStream;->convertObjectIdToOrdinal(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " tagSize="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " sizePos="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 p0, 0x29

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method private writeBoolImpl(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private writeBytesImpl(I[B)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    array-length v0, p2

    .line 7
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private writeDoubleImpl(ID)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v0, p2, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 12
    .line 13
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private writeEnumImpl(II)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private writeFixed32Impl(II)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private writeFixed64Impl(IJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private writeFloatImpl(IF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p2, v0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private writeInt32Impl(II)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private writeInt64Impl(IJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private writeKnownLengthHeader(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private writeRepeatedBoolImpl(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    int-to-byte p2, p2

    .line 8
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private writeRepeatedBytesImpl(I[B)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    array-length v0, p2

    .line 6
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private writeRepeatedDoubleImpl(ID)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private writeRepeatedEnumImpl(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private writeRepeatedFixed32Impl(II)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeRepeatedFixed64Impl(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeRepeatedFloatImpl(IF)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private writeRepeatedInt32Impl(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private writeRepeatedInt64Impl(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeRepeatedSFixed32Impl(II)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeRepeatedSFixed64Impl(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeRepeatedSInt32Impl(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeRepeatedSInt64Impl(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeRepeatedStringImpl(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 16
    .line 17
    .line 18
    :goto_1
    return-void
.end method

.method private writeRepeatedUInt32Impl(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeRepeatedUInt64Impl(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private writeSFixed32Impl(II)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private writeSFixed64Impl(IJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private writeSInt32Impl(II)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private writeSInt64Impl(IJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private writeStringImpl(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private writeUInt32Impl(II)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private writeUInt64Impl(IJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private writeUnsignedVarintFromSignedInt(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 10
    .line 11
    int-to-long v1, p1

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private writeUtf8String(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    array-length v0, p2

    .line 8
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string p2, "not possible"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public end(J)V
    .locals 1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public endObject(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public endRepeatedObject(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :try_start_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string v2, "Error flushing proto to stream"

    .line 44
    .line 45
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v1
.end method

.method public getBytes()[B
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public start(J)J
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    long-to-int v0, p1

    .line 5
    const-wide v1, 0xff00000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v1, p1

    .line 11
    const-wide v3, 0x1100000000L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    const-wide v1, 0xf0000000000L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v1, p1

    .line 26
    const-wide v3, 0x10000000000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmp-long v3, v1, v3

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    return-wide p1

    .line 41
    :cond_0
    const-wide v3, 0x20000000000L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long v3, v1, v3

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const-wide v3, 0x50000000000L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    cmp-long v1, v1, v3

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    :cond_1
    const/4 p1, 0x1

    .line 60
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    return-wide p1

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "Attempt to call start(long) with "

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public startObject(J)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x11100000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public startRepeatedObject(J)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x21100000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public write(JD)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x110

    if-eq v1, v2, :cond_3

    const/16 v2, 0x210

    if-eq v1, v2, :cond_2

    const/16 v2, 0x510

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Attempt to call write(long, double) with "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :pswitch_0
    cmpl-double p1, p3, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4
    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_2

    :pswitch_1
    double-to-long p1, p3

    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_2
    double-to-int p1, p3

    .line 6
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_2

    :pswitch_3
    double-to-long p1, p3

    .line 7
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_4
    double-to-int p1, p3

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_2

    :pswitch_5
    double-to-long p1, p3

    .line 9
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_6
    double-to-int p1, p3

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_2

    :pswitch_7
    double-to-long p1, p3

    .line 11
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_8
    double-to-int p1, p3

    .line 12
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_2

    :pswitch_9
    double-to-long p1, p3

    .line 13
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_a
    double-to-int p1, p3

    .line 14
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_2

    :pswitch_b
    double-to-float p1, p3

    .line 15
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_2

    .line 16
    :pswitch_c
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_2

    :pswitch_d
    cmpl-double p1, p3, v4

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 17
    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_2

    :pswitch_e
    double-to-long p1, p3

    .line 18
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_2

    :pswitch_f
    double-to-int p1, p3

    .line 19
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_2

    :pswitch_10
    double-to-long p1, p3

    .line 20
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_2

    :pswitch_11
    double-to-int p1, p3

    .line 21
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_2

    :pswitch_12
    double-to-long p1, p3

    .line 22
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_2

    :pswitch_13
    double-to-int p1, p3

    .line 23
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_2

    :pswitch_14
    double-to-long p1, p3

    .line 24
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_2

    :pswitch_15
    double-to-int p1, p3

    .line 25
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_2

    :pswitch_16
    double-to-long p1, p3

    .line 26
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_2

    :pswitch_17
    double-to-int p1, p3

    .line 27
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_2

    :pswitch_18
    double-to-float p1, p3

    .line 28
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_2

    .line 29
    :pswitch_19
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    goto :goto_2

    :cond_2
    double-to-int p1, p3

    .line 30
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto :goto_2

    :cond_3
    double-to-int p1, p3

    .line 31
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
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

    :pswitch_data_2
    .packed-switch 0x501
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

.method public write(JF)V
    .locals 5

    .line 32
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x110

    if-eq v1, v2, :cond_3

    const/16 v2, 0x210

    if-eq v1, v2, :cond_2

    const/16 v2, 0x510

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 33
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to call write(long, float) with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :pswitch_0
    cmpl-float p1, p3, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 35
    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_2

    :pswitch_1
    float-to-long p1, p3

    .line 36
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_2
    float-to-int p1, p3

    .line 37
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_2

    :pswitch_3
    float-to-long p1, p3

    .line 38
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_4
    float-to-int p1, p3

    .line 39
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_2

    :pswitch_5
    float-to-long p1, p3

    .line 40
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_6
    float-to-int p1, p3

    .line 41
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_2

    :pswitch_7
    float-to-long p1, p3

    .line 42
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_8
    float-to-int p1, p3

    .line 43
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_2

    :pswitch_9
    float-to-long p1, p3

    .line 44
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_a
    float-to-int p1, p3

    .line 45
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_2

    .line 46
    :pswitch_b
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_2

    :pswitch_c
    float-to-double p1, p3

    .line 47
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_2

    :pswitch_d
    cmpl-float p1, p3, v4

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 48
    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_2

    :pswitch_e
    float-to-long p1, p3

    .line 49
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_2

    :pswitch_f
    float-to-int p1, p3

    .line 50
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_2

    :pswitch_10
    float-to-long p1, p3

    .line 51
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_2

    :pswitch_11
    float-to-int p1, p3

    .line 52
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_2

    :pswitch_12
    float-to-long p1, p3

    .line 53
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_2

    :pswitch_13
    float-to-int p1, p3

    .line 54
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_2

    :pswitch_14
    float-to-long p1, p3

    .line 55
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_2

    :pswitch_15
    float-to-int p1, p3

    .line 56
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_2

    :pswitch_16
    float-to-long p1, p3

    .line 57
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_2

    :pswitch_17
    float-to-int p1, p3

    .line 58
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_2

    .line 59
    :pswitch_18
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_2

    :pswitch_19
    float-to-double p1, p3

    .line 60
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    goto :goto_2

    :cond_2
    float-to-int p1, p3

    .line 61
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto :goto_2

    :cond_3
    float-to-int p1, p3

    .line 62
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
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

    :pswitch_data_2
    .packed-switch 0x501
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

.method public write(JI)V
    .locals 4

    .line 63
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x110

    if-eq v1, v2, :cond_3

    const/16 v2, 0x210

    if-eq v1, v2, :cond_2

    const/16 v2, 0x510

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 64
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to call write(long, int) with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :pswitch_0
    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 66
    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_2

    :pswitch_1
    int-to-long p1, p3

    .line 67
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_2

    .line 68
    :pswitch_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_2

    :pswitch_3
    int-to-long p1, p3

    .line 69
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_2

    .line 70
    :pswitch_4
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_2

    :pswitch_5
    int-to-long p1, p3

    .line 71
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_2

    .line 72
    :pswitch_6
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_2

    :pswitch_7
    int-to-long p1, p3

    .line 73
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto/16 :goto_2

    .line 74
    :pswitch_8
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_2

    :pswitch_9
    int-to-long p1, p3

    .line 75
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_2

    .line 76
    :pswitch_a
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_2

    :pswitch_b
    int-to-float p1, p3

    .line 77
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_2

    :pswitch_c
    int-to-double p1, p3

    .line 78
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_2

    :pswitch_d
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 79
    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_2

    :pswitch_e
    int-to-long p1, p3

    .line 80
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_2

    .line 81
    :pswitch_f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_2

    :pswitch_10
    int-to-long p1, p3

    .line 82
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_2

    .line 83
    :pswitch_11
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_2

    :pswitch_12
    int-to-long p1, p3

    .line 84
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_2

    .line 85
    :pswitch_13
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_2

    :pswitch_14
    int-to-long p1, p3

    .line 86
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_2

    .line 87
    :pswitch_15
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_2

    :pswitch_16
    int-to-long p1, p3

    .line 88
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_2

    .line 89
    :pswitch_17
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_2

    :pswitch_18
    int-to-float p1, p3

    .line 90
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_2

    :pswitch_19
    int-to-double p1, p3

    .line 91
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    goto :goto_2

    .line 92
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto :goto_2

    .line 93
    :cond_3
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
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

    :pswitch_data_2
    .packed-switch 0x501
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

.method public write(JJ)V
    .locals 6

    .line 94
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x110

    if-eq v1, v2, :cond_3

    const/16 v2, 0x210

    if-eq v1, v2, :cond_2

    const/16 v2, 0x510

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 95
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Attempt to call write(long, long) with "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :pswitch_0
    cmp-long p1, p3, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 97
    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_2

    .line 98
    :pswitch_1
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_2
    long-to-int p1, p3

    .line 99
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_2

    .line 100
    :pswitch_3
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_4
    long-to-int p1, p3

    .line 101
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_2

    .line 102
    :pswitch_5
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_6
    long-to-int p1, p3

    .line 103
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_2

    .line 104
    :pswitch_7
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_8
    long-to-int p1, p3

    .line 105
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_2

    .line 106
    :pswitch_9
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto/16 :goto_2

    :pswitch_a
    long-to-int p1, p3

    .line 107
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_2

    :pswitch_b
    long-to-float p1, p3

    .line 108
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_2

    :pswitch_c
    long-to-double p1, p3

    .line 109
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_2

    :pswitch_d
    cmp-long p1, p3, v4

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 110
    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_2

    .line 111
    :pswitch_e
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_2

    :pswitch_f
    long-to-int p1, p3

    .line 112
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_2

    .line 113
    :pswitch_10
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_2

    :pswitch_11
    long-to-int p1, p3

    .line 114
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_2

    .line 115
    :pswitch_12
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_2

    :pswitch_13
    long-to-int p1, p3

    .line 116
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_2

    .line 117
    :pswitch_14
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_2

    :pswitch_15
    long-to-int p1, p3

    .line 118
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_2

    .line 119
    :pswitch_16
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_2

    :pswitch_17
    long-to-int p1, p3

    .line 120
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_2

    :pswitch_18
    long-to-float p1, p3

    .line 121
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_2

    :pswitch_19
    long-to-double p1, p3

    .line 122
    invoke-direct {p0, v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    goto :goto_2

    :cond_2
    long-to-int p1, p3

    .line 123
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto :goto_2

    :cond_3
    long-to-int p1, p3

    .line 124
    invoke-direct {p0, v0, p1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
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

    :pswitch_data_2
    .packed-switch 0x501
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

.method public write(JLjava/lang/String;)V
    .locals 4

    .line 130
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50e

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to call write(long, String) with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 133
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public write(JZ)V
    .locals 4

    .line 125
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x10d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50d

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to call write(long, boolean) with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 128
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_1

    .line 129
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    :goto_1
    return-void
.end method

.method public write(J[B)V
    .locals 4

    .line 135
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x10f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x111

    if-eq v1, v2, :cond_3

    const/16 v2, 0x20f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x211

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x511

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to call write(long, byte[]) with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 138
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    goto :goto_1

    .line 139
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    goto :goto_1

    .line 141
    :cond_4
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    :goto_1
    return-void
.end method

.method public writeBool(JZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10d00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeBytes(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10f00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeDouble(JD)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10100000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeEnum(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x11000000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10900000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10a00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeFloat(JF)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10200000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10300000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10400000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeObject(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x11100000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeObjectImpl(I[B)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v0, p2

    .line 7
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public writePackedBool(J[Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50d00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 22
    .line 23
    .line 24
    :goto_1
    if-ge p2, v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 27
    .line 28
    aget-boolean v1, p3, p2

    .line 29
    .line 30
    int-to-byte v1, v1

    .line 31
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    return-void
.end method

.method public writePackedDouble(J[D)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50100000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v1, v0, 0x8

    .line 22
    .line 23
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-ge p2, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 29
    .line 30
    aget-wide v1, p3, p2

    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 p2, p2, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    return-void
.end method

.method public writePackedEnum(J[I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x51000000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_3

    .line 20
    .line 21
    move v1, p2

    .line 22
    move v2, v1

    .line 23
    :goto_1
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    aget v3, p3, v1

    .line 26
    .line 27
    if-ltz v3, :cond_1

    .line 28
    .line 29
    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    const/16 v3, 0xa

    .line 35
    .line 36
    :goto_2
    add-int/2addr v2, v3

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 41
    .line 42
    .line 43
    :goto_3
    if-ge p2, v0, :cond_3

    .line 44
    .line 45
    aget p1, p3, p2

    .line 46
    .line 47
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 p2, p2, 0x1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    return-void
.end method

.method public writePackedFixed32(J[I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50900000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v1, v0, 0x4

    .line 22
    .line 23
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-ge p2, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 29
    .line 30
    aget v1, p3, p2

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-void
.end method

.method public writePackedFixed64(J[J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50a00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v1, v0, 0x8

    .line 22
    .line 23
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-ge p2, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 29
    .line 30
    aget-wide v1, p3, p2

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-void
.end method

.method public writePackedFloat(J[F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50200000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v1, v0, 0x4

    .line 22
    .line 23
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-ge p2, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 29
    .line 30
    aget v1, p3, p2

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 p2, p2, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    return-void
.end method

.method public writePackedInt32(J[I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50300000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_3

    .line 20
    .line 21
    move v1, p2

    .line 22
    move v2, v1

    .line 23
    :goto_1
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    aget v3, p3, v1

    .line 26
    .line 27
    if-ltz v3, :cond_1

    .line 28
    .line 29
    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    const/16 v3, 0xa

    .line 35
    .line 36
    :goto_2
    add-int/2addr v2, v3

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 41
    .line 42
    .line 43
    :goto_3
    if-ge p2, v0, :cond_3

    .line 44
    .line 45
    aget p1, p3, p2

    .line 46
    .line 47
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 p2, p2, 0x1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    return-void
.end method

.method public writePackedInt64(J[J)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50400000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_2

    .line 20
    .line 21
    move v1, p2

    .line 22
    move v2, v1

    .line 23
    :goto_1
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    aget-wide v3, p3, v1

    .line 26
    .line 27
    invoke-static {v3, v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 36
    .line 37
    .line 38
    :goto_2
    if-ge p2, v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 41
    .line 42
    aget-wide v1, p3, p2

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    return-void
.end method

.method public writePackedSFixed32(J[I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50b00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v1, v0, 0x4

    .line 22
    .line 23
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-ge p2, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 29
    .line 30
    aget v1, p3, p2

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-void
.end method

.method public writePackedSFixed64(J[J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50c00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_1

    .line 20
    .line 21
    mul-int/lit8 v1, v0, 0x8

    .line 22
    .line 23
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-ge p2, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 29
    .line 30
    aget-wide v1, p3, p2

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-void
.end method

.method public writePackedSInt32(J[I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50700000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_2

    .line 20
    .line 21
    move v1, p2

    .line 22
    move v2, v1

    .line 23
    :goto_1
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    aget v3, p3, v1

    .line 26
    .line 27
    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 36
    .line 37
    .line 38
    :goto_2
    if-ge p2, v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 41
    .line 42
    aget v1, p3, p2

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    return-void
.end method

.method public writePackedSInt64(J[J)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50800000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_2

    .line 20
    .line 21
    move v1, p2

    .line 22
    move v2, v1

    .line 23
    :goto_1
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    aget-wide v3, p3, v1

    .line 26
    .line 27
    invoke-static {v3, v4}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 36
    .line 37
    .line 38
    :goto_2
    if-ge p2, v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 41
    .line 42
    aget-wide v1, p3, p2

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    return-void
.end method

.method public writePackedUInt32(J[I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50500000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_2

    .line 20
    .line 21
    move v1, p2

    .line 22
    move v2, v1

    .line 23
    :goto_1
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    aget v3, p3, v1

    .line 26
    .line 27
    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 36
    .line 37
    .line 38
    :goto_2
    if-ge p2, v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 41
    .line 42
    aget v1, p3, p2

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    return-void
.end method

.method public writePackedUInt64(J[J)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x50600000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    array-length v0, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, p2

    .line 19
    :goto_0
    if-lez v0, :cond_2

    .line 20
    .line 21
    move v1, p2

    .line 22
    move v2, v1

    .line 23
    :goto_1
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    aget-wide v3, p3, v1

    .line 26
    .line 27
    invoke-static {v3, v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 36
    .line 37
    .line 38
    :goto_2
    if-ge p2, v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 41
    .line 42
    aget-wide v1, p3, p2

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    return-void
.end method

.method public writeRepeatedBool(JZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20d00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedBytes(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20f00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedDouble(JD)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20100000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedEnum(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x21000000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20900000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20a00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedFloat(JF)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20200000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20300000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20400000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedObject(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x21100000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedObjectImpl(I[B)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    array-length v0, p2

    .line 6
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public writeRepeatedSFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20b00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedSFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20c00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedSInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20700000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedSInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20800000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedString(JLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20e00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedUInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20500000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeRepeatedUInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x20600000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeSFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10b00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeSFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10c00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeSInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10700000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeSInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10800000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeString(JLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10e00000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeTag(II)V
    .locals 1

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10500000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeUInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x10600000000L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
