.class public final Landroid/hardware/cas/V1_0/Status;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BAD_VALUE:I = 0x6

.field public static final ERROR_CAS_CANNOT_HANDLE:I = 0x4

.field public static final ERROR_CAS_DECRYPT:I = 0xd

.field public static final ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED:I = 0xc

.field public static final ERROR_CAS_DEVICE_REVOKED:I = 0xb

.field public static final ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x9

.field public static final ERROR_CAS_INVALID_STATE:I = 0x5

.field public static final ERROR_CAS_LICENSE_EXPIRED:I = 0x2

.field public static final ERROR_CAS_NOT_PROVISIONED:I = 0x7

.field public static final ERROR_CAS_NO_LICENSE:I = 0x1

.field public static final ERROR_CAS_RESOURCE_BUSY:I = 0x8

.field public static final ERROR_CAS_SESSION_NOT_OPENED:I = 0x3

.field public static final ERROR_CAS_TAMPER_DETECTED:I = 0xa

.field public static final ERROR_CAS_UNKNOWN:I = 0xe

.field public static final OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "OK"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p0, 0x1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const-string v1, "ERROR_CAS_NO_LICENSE"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    and-int/lit8 v1, p0, 0x2

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    const-string v1, "ERROR_CAS_LICENSE_EXPIRED"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    or-int/lit8 v2, v2, 0x2

    .line 34
    .line 35
    :cond_1
    and-int/lit8 v1, p0, 0x3

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-ne v1, v3, :cond_2

    .line 39
    .line 40
    const-string v1, "ERROR_CAS_SESSION_NOT_OPENED"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    or-int/lit8 v2, v2, 0x3

    .line 46
    .line 47
    :cond_2
    and-int/lit8 v1, p0, 0x4

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    if-ne v1, v3, :cond_3

    .line 51
    .line 52
    const-string v1, "ERROR_CAS_CANNOT_HANDLE"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    or-int/lit8 v2, v2, 0x4

    .line 58
    .line 59
    :cond_3
    and-int/lit8 v1, p0, 0x5

    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    if-ne v1, v3, :cond_4

    .line 63
    .line 64
    const-string v1, "ERROR_CAS_INVALID_STATE"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    or-int/lit8 v2, v2, 0x5

    .line 70
    .line 71
    :cond_4
    and-int/lit8 v1, p0, 0x6

    .line 72
    .line 73
    const/4 v3, 0x6

    .line 74
    if-ne v1, v3, :cond_5

    .line 75
    .line 76
    const-string v1, "BAD_VALUE"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    or-int/lit8 v2, v2, 0x6

    .line 82
    .line 83
    :cond_5
    and-int/lit8 v1, p0, 0x7

    .line 84
    .line 85
    const/4 v3, 0x7

    .line 86
    if-ne v1, v3, :cond_6

    .line 87
    .line 88
    const-string v1, "ERROR_CAS_NOT_PROVISIONED"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    or-int/lit8 v2, v2, 0x7

    .line 94
    .line 95
    :cond_6
    and-int/lit8 v1, p0, 0x8

    .line 96
    .line 97
    const/16 v3, 0x8

    .line 98
    .line 99
    if-ne v1, v3, :cond_7

    .line 100
    .line 101
    const-string v1, "ERROR_CAS_RESOURCE_BUSY"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    or-int/lit8 v2, v2, 0x8

    .line 107
    .line 108
    :cond_7
    and-int/lit8 v1, p0, 0x9

    .line 109
    .line 110
    const/16 v3, 0x9

    .line 111
    .line 112
    if-ne v1, v3, :cond_8

    .line 113
    .line 114
    const-string v1, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    or-int/lit8 v2, v2, 0x9

    .line 120
    .line 121
    :cond_8
    and-int/lit8 v1, p0, 0xa

    .line 122
    .line 123
    const/16 v3, 0xa

    .line 124
    .line 125
    if-ne v1, v3, :cond_9

    .line 126
    .line 127
    const-string v1, "ERROR_CAS_TAMPER_DETECTED"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    or-int/lit8 v2, v2, 0xa

    .line 133
    .line 134
    :cond_9
    and-int/lit8 v1, p0, 0xb

    .line 135
    .line 136
    const/16 v3, 0xb

    .line 137
    .line 138
    if-ne v1, v3, :cond_a

    .line 139
    .line 140
    const-string v1, "ERROR_CAS_DEVICE_REVOKED"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    or-int/lit8 v2, v2, 0xb

    .line 146
    .line 147
    :cond_a
    and-int/lit8 v1, p0, 0xc

    .line 148
    .line 149
    const/16 v3, 0xc

    .line 150
    .line 151
    if-ne v1, v3, :cond_b

    .line 152
    .line 153
    const-string v1, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    or-int/lit8 v2, v2, 0xc

    .line 159
    .line 160
    :cond_b
    and-int/lit8 v1, p0, 0xd

    .line 161
    .line 162
    const/16 v3, 0xd

    .line 163
    .line 164
    if-ne v1, v3, :cond_c

    .line 165
    .line 166
    const-string v1, "ERROR_CAS_DECRYPT"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    or-int/lit8 v2, v2, 0xd

    .line 172
    .line 173
    :cond_c
    and-int/lit8 v1, p0, 0xe

    .line 174
    .line 175
    const/16 v3, 0xe

    .line 176
    .line 177
    if-ne v1, v3, :cond_d

    .line 178
    .line 179
    const-string v1, "ERROR_CAS_UNKNOWN"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    or-int/lit8 v2, v2, 0xe

    .line 185
    .line 186
    :cond_d
    if-eq p0, v2, :cond_e

    .line 187
    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v3, "0x"

    .line 191
    .line 192
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    not-int v2, v2

    .line 196
    and-int/2addr p0, v2

    .line 197
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_f

    .line 225
    .line 226
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Ljava/lang/CharSequence;

    .line 231
    .line 232
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_f

    .line 240
    .line 241
    const-string v1, " | "

    .line 242
    .line 243
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "OK"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const-string p0, "ERROR_CAS_NO_LICENSE"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "ERROR_CAS_LICENSE_EXPIRED"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "ERROR_CAS_SESSION_NOT_OPENED"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "ERROR_CAS_CANNOT_HANDLE"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "ERROR_CAS_INVALID_STATE"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    const-string p0, "BAD_VALUE"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    const-string p0, "ERROR_CAS_NOT_PROVISIONED"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    const-string p0, "ERROR_CAS_RESOURCE_BUSY"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    const-string p0, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    const-string p0, "ERROR_CAS_TAMPER_DETECTED"

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0xb

    .line 70
    .line 71
    if-ne p0, v0, :cond_b

    .line 72
    .line 73
    const-string p0, "ERROR_CAS_DEVICE_REVOKED"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xc

    .line 77
    .line 78
    if-ne p0, v0, :cond_c

    .line 79
    .line 80
    const-string p0, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xd

    .line 84
    .line 85
    if-ne p0, v0, :cond_d

    .line 86
    .line 87
    const-string p0, "ERROR_CAS_DECRYPT"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_d
    const/16 v0, 0xe

    .line 91
    .line 92
    if-ne p0, v0, :cond_e

    .line 93
    .line 94
    const-string p0, "ERROR_CAS_UNKNOWN"

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "0x"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p0, v0}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method
