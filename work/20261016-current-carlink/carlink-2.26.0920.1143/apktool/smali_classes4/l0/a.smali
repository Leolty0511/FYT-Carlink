.class public abstract Ll0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ll0/a;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v1, "ac"

    .line 10
    .line 11
    const-string v2, "co"

    .line 12
    .line 13
    const-string v3, "com"

    .line 14
    .line 15
    const-string v4, "ed"

    .line 16
    .line 17
    const-string v5, "edu"

    .line 18
    .line 19
    const-string v6, "go"

    .line 20
    .line 21
    const-string v7, "gouv"

    .line 22
    .line 23
    const-string v8, "gov"

    .line 24
    .line 25
    const-string v9, "info"

    .line 26
    .line 27
    const-string v10, "lg"

    .line 28
    .line 29
    const-string v11, "ne"

    .line 30
    .line 31
    const-string v12, "net"

    .line 32
    .line 33
    const-string v13, "or"

    .line 34
    .line 35
    const-string v14, "org"

    .line 36
    .line 37
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Ll0/a;->b:[Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    array-length v2, p1

    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    aget-object p1, p1, v1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    if-eqz p2, :cond_2

    .line 20
    .line 21
    array-length p1, p2

    .line 22
    move v2, v1

    .line 23
    :goto_0
    if-ge v2, p1, :cond_2

    .line 24
    .line 25
    aget-object v3, p2, v2

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_11

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move v2, v1

    .line 61
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_f

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/String;

    .line 72
    .line 73
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, " <"

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    const/16 v3, 0x3e

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    const-string v3, " OR"

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    :cond_4
    const-string v3, "*."

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const/16 v4, 0x2e

    .line 110
    .line 111
    const/4 v5, 0x1

    .line 112
    if-eqz v3, :cond_7

    .line 113
    .line 114
    const/4 v3, 0x2

    .line 115
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(II)I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    const/4 v7, -0x1

    .line 120
    if-eq v6, v7, :cond_7

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const/4 v7, 0x7

    .line 127
    if-lt v6, v7, :cond_6

    .line 128
    .line 129
    const/16 v7, 0x9

    .line 130
    .line 131
    if-gt v6, v7, :cond_6

    .line 132
    .line 133
    add-int/lit8 v6, v6, -0x3

    .line 134
    .line 135
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-ne v7, v4, :cond_6

    .line 140
    .line 141
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sget-object v6, Ll0/a;->b:[Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v6, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-gez v3, :cond_5

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    move v3, v1

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    :goto_1
    move v3, v5

    .line 157
    :goto_2
    if-eqz v3, :cond_7

    .line 158
    .line 159
    sget-object v3, Ll0/a;->a:Ljava/util/regex/Pattern;

    .line 160
    .line 161
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_7

    .line 170
    .line 171
    move v3, v5

    .line 172
    goto :goto_3

    .line 173
    :cond_7
    move v3, v1

    .line 174
    :goto_3
    if-eqz v3, :cond_e

    .line 175
    .line 176
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_d

    .line 185
    .line 186
    if-eqz p3, :cond_d

    .line 187
    .line 188
    move v3, v1

    .line 189
    move v6, v3

    .line 190
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-ge v3, v7, :cond_9

    .line 195
    .line 196
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-ne v7, v4, :cond_8

    .line 201
    .line 202
    add-int/lit8 v6, v6, 0x1

    .line 203
    .line 204
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    move v3, v1

    .line 208
    move v7, v3

    .line 209
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    if-ge v3, v8, :cond_b

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-ne v8, v4, :cond_a

    .line 220
    .line 221
    add-int/lit8 v7, v7, 0x1

    .line 222
    .line 223
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_b
    if-ne v6, v7, :cond_c

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_c
    move v5, v1

    .line 230
    :goto_6
    move v2, v5

    .line 231
    goto :goto_7

    .line 232
    :cond_d
    move v2, v3

    .line 233
    goto :goto_7

    .line 234
    :cond_e
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    :goto_7
    if-eqz v2, :cond_3

    .line 239
    .line 240
    :cond_f
    if-eqz v2, :cond_10

    .line 241
    .line 242
    return-void

    .line 243
    :cond_10
    new-instance p2, Ljavax/net/ssl/SSLException;

    .line 244
    .line 245
    new-instance p3, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v0, "hostname in certificate didn\'t match: <"

    .line 248
    .line 249
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string p0, "> !="

    .line 256
    .line 257
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p2

    .line 271
    :cond_11
    const-string p1, "Certificate for <"

    .line 272
    .line 273
    const-string p2, "> doesn\'t contain CN or DNS subjectAlt"

    .line 274
    .line 275
    invoke-static {p1, p0, p2}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    new-instance p1, Ljavax/net/ssl/SSLException;

    .line 280
    .line 281
    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p1
.end method


# virtual methods
.method public final b(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    new-instance v0, Ll0/c;

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2}, Ll0/c;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v0, Ll0/c;->c:I

    .line 14
    .line 15
    iput v2, v0, Ll0/c;->d:I

    .line 16
    .line 17
    iput v2, v0, Ll0/c;->e:I

    .line 18
    .line 19
    iput v2, v0, Ll0/c;->f:I

    .line 20
    .line 21
    iget-object v3, v0, Ll0/c;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iput-object v4, v0, Ll0/c;->g:[C

    .line 28
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v0}, Ll0/c;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v7, 0x1

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    goto/16 :goto_e

    .line 41
    .line 42
    :cond_0
    :goto_0
    iget v8, v0, Ll0/c;->c:I

    .line 43
    .line 44
    iget v9, v0, Ll0/c;->b:I

    .line 45
    .line 46
    if-ge v8, v9, :cond_1e

    .line 47
    .line 48
    iget-object v10, v0, Ll0/c;->g:[C

    .line 49
    .line 50
    aget-char v10, v10, v8

    .line 51
    .line 52
    const/16 v11, 0x5c

    .line 53
    .line 54
    const/16 v12, 0x2c

    .line 55
    .line 56
    const/16 v13, 0x20

    .line 57
    .line 58
    const-string v14, "Unexpected end of DN: "

    .line 59
    .line 60
    const/16 v15, 0x22

    .line 61
    .line 62
    const/16 v2, 0x3b

    .line 63
    .line 64
    const/16 v6, 0x2b

    .line 65
    .line 66
    if-eq v10, v15, :cond_12

    .line 67
    .line 68
    const/16 v15, 0x23

    .line 69
    .line 70
    if-eq v10, v15, :cond_9

    .line 71
    .line 72
    if-eq v10, v6, :cond_8

    .line 73
    .line 74
    if-eq v10, v12, :cond_8

    .line 75
    .line 76
    if-eq v10, v2, :cond_8

    .line 77
    .line 78
    iput v8, v0, Ll0/c;->d:I

    .line 79
    .line 80
    iput v8, v0, Ll0/c;->e:I

    .line 81
    .line 82
    :goto_1
    iget v8, v0, Ll0/c;->c:I

    .line 83
    .line 84
    if-lt v8, v9, :cond_1

    .line 85
    .line 86
    new-instance v8, Ljava/lang/String;

    .line 87
    .line 88
    iget-object v10, v0, Ll0/c;->g:[C

    .line 89
    .line 90
    iget v11, v0, Ll0/c;->d:I

    .line 91
    .line 92
    iget v13, v0, Ll0/c;->e:I

    .line 93
    .line 94
    sub-int/2addr v13, v11

    .line 95
    invoke-direct {v8, v10, v11, v13}, Ljava/lang/String;-><init>([CII)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_b

    .line 99
    .line 100
    :cond_1
    iget-object v10, v0, Ll0/c;->g:[C

    .line 101
    .line 102
    aget-char v14, v10, v8

    .line 103
    .line 104
    if-eq v14, v13, :cond_4

    .line 105
    .line 106
    if-eq v14, v2, :cond_3

    .line 107
    .line 108
    if-eq v14, v11, :cond_2

    .line 109
    .line 110
    if-eq v14, v6, :cond_3

    .line 111
    .line 112
    if-eq v14, v12, :cond_3

    .line 113
    .line 114
    iget v15, v0, Ll0/c;->e:I

    .line 115
    .line 116
    add-int/lit8 v11, v15, 0x1

    .line 117
    .line 118
    iput v11, v0, Ll0/c;->e:I

    .line 119
    .line 120
    aput-char v14, v10, v15

    .line 121
    .line 122
    add-int/lit8 v8, v8, 0x1

    .line 123
    .line 124
    iput v8, v0, Ll0/c;->c:I

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    iget v8, v0, Ll0/c;->e:I

    .line 128
    .line 129
    add-int/lit8 v11, v8, 0x1

    .line 130
    .line 131
    iput v11, v0, Ll0/c;->e:I

    .line 132
    .line 133
    invoke-virtual {v0}, Ll0/c;->b()C

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    aput-char v11, v10, v8

    .line 138
    .line 139
    iget v8, v0, Ll0/c;->c:I

    .line 140
    .line 141
    add-int/2addr v8, v7

    .line 142
    iput v8, v0, Ll0/c;->c:I

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_3
    new-instance v8, Ljava/lang/String;

    .line 146
    .line 147
    iget v11, v0, Ll0/c;->d:I

    .line 148
    .line 149
    iget v13, v0, Ll0/c;->e:I

    .line 150
    .line 151
    sub-int/2addr v13, v11

    .line 152
    invoke-direct {v8, v10, v11, v13}, Ljava/lang/String;-><init>([CII)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_b

    .line 156
    .line 157
    :cond_4
    iget v11, v0, Ll0/c;->e:I

    .line 158
    .line 159
    iput v11, v0, Ll0/c;->f:I

    .line 160
    .line 161
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    iput v8, v0, Ll0/c;->c:I

    .line 164
    .line 165
    add-int/lit8 v8, v11, 0x1

    .line 166
    .line 167
    iput v8, v0, Ll0/c;->e:I

    .line 168
    .line 169
    aput-char v13, v10, v11

    .line 170
    .line 171
    :goto_2
    iget v8, v0, Ll0/c;->c:I

    .line 172
    .line 173
    if-ge v8, v9, :cond_5

    .line 174
    .line 175
    iget-object v10, v0, Ll0/c;->g:[C

    .line 176
    .line 177
    aget-char v11, v10, v8

    .line 178
    .line 179
    if-ne v11, v13, :cond_5

    .line 180
    .line 181
    iget v11, v0, Ll0/c;->e:I

    .line 182
    .line 183
    add-int/lit8 v14, v11, 0x1

    .line 184
    .line 185
    iput v14, v0, Ll0/c;->e:I

    .line 186
    .line 187
    aput-char v13, v10, v11

    .line 188
    .line 189
    add-int/lit8 v8, v8, 0x1

    .line 190
    .line 191
    iput v8, v0, Ll0/c;->c:I

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    if-eq v8, v9, :cond_7

    .line 195
    .line 196
    iget-object v10, v0, Ll0/c;->g:[C

    .line 197
    .line 198
    aget-char v8, v10, v8

    .line 199
    .line 200
    if-eq v8, v12, :cond_7

    .line 201
    .line 202
    if-eq v8, v6, :cond_7

    .line 203
    .line 204
    if-ne v8, v2, :cond_6

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_6
    :goto_3
    const/16 v11, 0x5c

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_7
    :goto_4
    new-instance v8, Ljava/lang/String;

    .line 211
    .line 212
    iget-object v10, v0, Ll0/c;->g:[C

    .line 213
    .line 214
    iget v11, v0, Ll0/c;->d:I

    .line 215
    .line 216
    iget v13, v0, Ll0/c;->f:I

    .line 217
    .line 218
    sub-int/2addr v13, v11

    .line 219
    invoke-direct {v8, v10, v11, v13}, Ljava/lang/String;-><init>([CII)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_b

    .line 223
    .line 224
    :cond_8
    const-string v8, ""

    .line 225
    .line 226
    goto/16 :goto_b

    .line 227
    .line 228
    :cond_9
    add-int/lit8 v10, v8, 0x4

    .line 229
    .line 230
    if-ge v10, v9, :cond_11

    .line 231
    .line 232
    iput v8, v0, Ll0/c;->d:I

    .line 233
    .line 234
    add-int/lit8 v8, v8, 0x1

    .line 235
    .line 236
    iput v8, v0, Ll0/c;->c:I

    .line 237
    .line 238
    :goto_5
    iget v8, v0, Ll0/c;->c:I

    .line 239
    .line 240
    if-eq v8, v9, :cond_d

    .line 241
    .line 242
    iget-object v10, v0, Ll0/c;->g:[C

    .line 243
    .line 244
    aget-char v11, v10, v8

    .line 245
    .line 246
    if-eq v11, v6, :cond_d

    .line 247
    .line 248
    if-eq v11, v12, :cond_d

    .line 249
    .line 250
    if-ne v11, v2, :cond_a

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_a
    if-ne v11, v13, :cond_b

    .line 254
    .line 255
    iput v8, v0, Ll0/c;->e:I

    .line 256
    .line 257
    add-int/lit8 v8, v8, 0x1

    .line 258
    .line 259
    iput v8, v0, Ll0/c;->c:I

    .line 260
    .line 261
    :goto_6
    iget v8, v0, Ll0/c;->c:I

    .line 262
    .line 263
    if-ge v8, v9, :cond_e

    .line 264
    .line 265
    iget-object v10, v0, Ll0/c;->g:[C

    .line 266
    .line 267
    aget-char v10, v10, v8

    .line 268
    .line 269
    if-ne v10, v13, :cond_e

    .line 270
    .line 271
    add-int/lit8 v8, v8, 0x1

    .line 272
    .line 273
    iput v8, v0, Ll0/c;->c:I

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_b
    const/16 v15, 0x41

    .line 277
    .line 278
    if-lt v11, v15, :cond_c

    .line 279
    .line 280
    const/16 v15, 0x46

    .line 281
    .line 282
    if-gt v11, v15, :cond_c

    .line 283
    .line 284
    add-int/lit8 v11, v11, 0x20

    .line 285
    .line 286
    int-to-char v11, v11

    .line 287
    aput-char v11, v10, v8

    .line 288
    .line 289
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 290
    .line 291
    iput v8, v0, Ll0/c;->c:I

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_d
    :goto_7
    iput v8, v0, Ll0/c;->e:I

    .line 295
    .line 296
    :cond_e
    iget v8, v0, Ll0/c;->e:I

    .line 297
    .line 298
    iget v10, v0, Ll0/c;->d:I

    .line 299
    .line 300
    sub-int/2addr v8, v10

    .line 301
    const/4 v11, 0x5

    .line 302
    if-lt v8, v11, :cond_10

    .line 303
    .line 304
    and-int/lit8 v11, v8, 0x1

    .line 305
    .line 306
    if-eqz v11, :cond_10

    .line 307
    .line 308
    div-int/lit8 v11, v8, 0x2

    .line 309
    .line 310
    new-array v13, v11, [B

    .line 311
    .line 312
    add-int/lit8 v10, v10, 0x1

    .line 313
    .line 314
    const/4 v14, 0x0

    .line 315
    :goto_8
    if-ge v14, v11, :cond_f

    .line 316
    .line 317
    invoke-virtual {v0, v10}, Ll0/c;->a(I)I

    .line 318
    .line 319
    .line 320
    move-result v15

    .line 321
    int-to-byte v15, v15

    .line 322
    aput-byte v15, v13, v14

    .line 323
    .line 324
    const/4 v15, 0x2

    .line 325
    add-int/2addr v10, v15

    .line 326
    add-int/lit8 v14, v14, 0x1

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_f
    new-instance v10, Ljava/lang/String;

    .line 330
    .line 331
    iget-object v11, v0, Ll0/c;->g:[C

    .line 332
    .line 333
    iget v13, v0, Ll0/c;->d:I

    .line 334
    .line 335
    invoke-direct {v10, v11, v13, v8}, Ljava/lang/String;-><init>([CII)V

    .line 336
    .line 337
    .line 338
    move-object v8, v10

    .line 339
    goto :goto_b

    .line 340
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 341
    .line 342
    invoke-virtual {v14, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0

    .line 350
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 351
    .line 352
    invoke-virtual {v14, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 361
    .line 362
    iput v8, v0, Ll0/c;->c:I

    .line 363
    .line 364
    iput v8, v0, Ll0/c;->d:I

    .line 365
    .line 366
    iput v8, v0, Ll0/c;->e:I

    .line 367
    .line 368
    :goto_9
    iget v8, v0, Ll0/c;->c:I

    .line 369
    .line 370
    if-eq v8, v9, :cond_1d

    .line 371
    .line 372
    iget-object v10, v0, Ll0/c;->g:[C

    .line 373
    .line 374
    aget-char v11, v10, v8

    .line 375
    .line 376
    if-ne v11, v15, :cond_1b

    .line 377
    .line 378
    add-int/lit8 v8, v8, 0x1

    .line 379
    .line 380
    iput v8, v0, Ll0/c;->c:I

    .line 381
    .line 382
    :goto_a
    iget v8, v0, Ll0/c;->c:I

    .line 383
    .line 384
    if-ge v8, v9, :cond_13

    .line 385
    .line 386
    iget-object v10, v0, Ll0/c;->g:[C

    .line 387
    .line 388
    aget-char v10, v10, v8

    .line 389
    .line 390
    if-ne v10, v13, :cond_13

    .line 391
    .line 392
    add-int/lit8 v8, v8, 0x1

    .line 393
    .line 394
    iput v8, v0, Ll0/c;->c:I

    .line 395
    .line 396
    goto :goto_a

    .line 397
    :cond_13
    new-instance v8, Ljava/lang/String;

    .line 398
    .line 399
    iget-object v10, v0, Ll0/c;->g:[C

    .line 400
    .line 401
    iget v11, v0, Ll0/c;->d:I

    .line 402
    .line 403
    iget v13, v0, Ll0/c;->e:I

    .line 404
    .line 405
    sub-int/2addr v13, v11

    .line 406
    invoke-direct {v8, v10, v11, v13}, Ljava/lang/String;-><init>([CII)V

    .line 407
    .line 408
    .line 409
    :goto_b
    const-string v10, "cn"

    .line 410
    .line 411
    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    if-eqz v5, :cond_15

    .line 416
    .line 417
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_14

    .line 422
    .line 423
    new-instance v4, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    :cond_14
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    :cond_15
    iget v5, v0, Ll0/c;->c:I

    .line 432
    .line 433
    if-lt v5, v9, :cond_16

    .line 434
    .line 435
    goto :goto_e

    .line 436
    :cond_16
    iget-object v8, v0, Ll0/c;->g:[C

    .line 437
    .line 438
    aget-char v8, v8, v5

    .line 439
    .line 440
    const-string v9, "Malformed DN: "

    .line 441
    .line 442
    if-eq v8, v12, :cond_19

    .line 443
    .line 444
    if-ne v8, v2, :cond_17

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_17
    if-ne v8, v6, :cond_18

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 451
    .line 452
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw v0

    .line 460
    :cond_19
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 461
    .line 462
    iput v5, v0, Ll0/c;->c:I

    .line 463
    .line 464
    invoke-virtual {v0}, Ll0/c;->c()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    if-eqz v5, :cond_1a

    .line 469
    .line 470
    const/4 v2, 0x0

    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 474
    .line 475
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v0

    .line 483
    :cond_1b
    const/16 v8, 0x5c

    .line 484
    .line 485
    if-ne v11, v8, :cond_1c

    .line 486
    .line 487
    iget v11, v0, Ll0/c;->e:I

    .line 488
    .line 489
    invoke-virtual {v0}, Ll0/c;->b()C

    .line 490
    .line 491
    .line 492
    move-result v16

    .line 493
    aput-char v16, v10, v11

    .line 494
    .line 495
    goto :goto_d

    .line 496
    :cond_1c
    iget v2, v0, Ll0/c;->e:I

    .line 497
    .line 498
    aput-char v11, v10, v2

    .line 499
    .line 500
    :goto_d
    iget v2, v0, Ll0/c;->c:I

    .line 501
    .line 502
    add-int/2addr v2, v7

    .line 503
    iput v2, v0, Ll0/c;->c:I

    .line 504
    .line 505
    iget v2, v0, Ll0/c;->e:I

    .line 506
    .line 507
    add-int/2addr v2, v7

    .line 508
    iput v2, v0, Ll0/c;->e:I

    .line 509
    .line 510
    const/16 v2, 0x3b

    .line 511
    .line 512
    goto/16 :goto_9

    .line 513
    .line 514
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 515
    .line 516
    invoke-virtual {v14, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw v0

    .line 524
    :cond_1e
    :goto_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    const/4 v2, 0x0

    .line 529
    if-nez v0, :cond_1f

    .line 530
    .line 531
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    new-array v0, v0, [Ljava/lang/String;

    .line 536
    .line 537
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-object v3, v0

    .line 541
    goto :goto_f

    .line 542
    :cond_1f
    move-object v3, v2

    .line 543
    :goto_f
    new-instance v4, Ljava/util/LinkedList;

    .line 544
    .line 545
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 546
    .line 547
    .line 548
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    .line 549
    .line 550
    .line 551
    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    goto :goto_10

    .line 553
    :catch_0
    move-exception v0

    .line 554
    move-object v5, v0

    .line 555
    const-class v0, Ll0/a;

    .line 556
    .line 557
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 566
    .line 567
    const-string v8, "Error parsing certificate."

    .line 568
    .line 569
    invoke-virtual {v0, v6, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    .line 571
    .line 572
    move-object v0, v2

    .line 573
    :goto_10
    if-eqz v0, :cond_21

    .line 574
    .line 575
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    :cond_20
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 580
    .line 581
    .line 582
    move-result v5

    .line 583
    if-eqz v5, :cond_21

    .line 584
    .line 585
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v5

    .line 589
    check-cast v5, Ljava/util/List;

    .line 590
    .line 591
    const/4 v6, 0x0

    .line 592
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v8

    .line 596
    check-cast v8, Ljava/lang/Integer;

    .line 597
    .line 598
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    const/4 v8, 0x2

    .line 603
    if-ne v6, v8, :cond_20

    .line 604
    .line 605
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    check-cast v5, Ljava/lang/String;

    .line 610
    .line 611
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    goto :goto_11

    .line 615
    :cond_21
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    if-nez v0, :cond_22

    .line 620
    .line 621
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    new-array v2, v0, [Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    :cond_22
    move-object/from16 v0, p0

    .line 631
    .line 632
    check-cast v0, Ll0/b;

    .line 633
    .line 634
    iget v0, v0, Ll0/b;->c:I

    .line 635
    .line 636
    packed-switch v0, :pswitch_data_0

    .line 637
    .line 638
    .line 639
    goto :goto_12

    .line 640
    :pswitch_0
    const/4 v4, 0x0

    .line 641
    invoke-static {v1, v3, v2, v4}, Ll0/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 642
    .line 643
    .line 644
    goto :goto_13

    .line 645
    :goto_12
    invoke-static {v1, v3, v2, v7}, Ll0/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 646
    .line 647
    .line 648
    :goto_13
    :pswitch_1
    return-void

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    aget-object p2, p2, v0

    .line 7
    .line 8
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 9
    .line 10
    invoke-virtual {p0, p2, p1}, Ll0/a;->b(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :catch_0
    return v0
.end method
