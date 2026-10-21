.class public final Landroid/util/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Llibcore/internal/StringPool;

.field private token:Landroid/util/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Llibcore/internal/StringPool;

    .line 5
    .line 6
    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    .line 13
    .line 14
    const/16 v1, 0x400

    .line 15
    .line 16
    new-array v1, v1, [C

    .line 17
    .line 18
    iput-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    .line 19
    .line 20
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 21
    .line 22
    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 26
    .line 27
    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    .line 35
    .line 36
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    .line 37
    .line 38
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iput-object p1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 49
    .line 50
    const-string v0, "in == null"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method private advance()Landroid/util/JsonToken;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 8
    .line 9
    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method private checkLenient()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method private decodeLiteral()Landroid/util/JsonToken;
    .locals 11

    .line 1
    iget v0, p0, Landroid/util/JsonReader;->valuePos:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget v1, p0, Landroid/util/JsonReader;->valueLength:I

    .line 10
    .line 11
    const/16 v2, 0x55

    .line 12
    .line 13
    const/16 v3, 0x75

    .line 14
    .line 15
    const/16 v4, 0x4c

    .line 16
    .line 17
    const/16 v5, 0x6c

    .line 18
    .line 19
    const/4 v6, 0x4

    .line 20
    if-ne v1, v6, :cond_5

    .line 21
    .line 22
    iget-object v7, p0, Landroid/util/JsonReader;->buffer:[C

    .line 23
    .line 24
    aget-char v8, v7, v0

    .line 25
    .line 26
    const/16 v9, 0x6e

    .line 27
    .line 28
    if-eq v9, v8, :cond_1

    .line 29
    .line 30
    const/16 v9, 0x4e

    .line 31
    .line 32
    if-ne v9, v8, :cond_5

    .line 33
    .line 34
    :cond_1
    add-int/lit8 v8, v0, 0x1

    .line 35
    .line 36
    aget-char v8, v7, v8

    .line 37
    .line 38
    if-eq v3, v8, :cond_2

    .line 39
    .line 40
    add-int/lit8 v8, v0, 0x1

    .line 41
    .line 42
    aget-char v8, v7, v8

    .line 43
    .line 44
    if-ne v2, v8, :cond_5

    .line 45
    .line 46
    :cond_2
    add-int/lit8 v8, v0, 0x2

    .line 47
    .line 48
    aget-char v8, v7, v8

    .line 49
    .line 50
    if-eq v5, v8, :cond_3

    .line 51
    .line 52
    add-int/lit8 v8, v0, 0x2

    .line 53
    .line 54
    aget-char v8, v7, v8

    .line 55
    .line 56
    if-ne v4, v8, :cond_5

    .line 57
    .line 58
    :cond_3
    add-int/lit8 v8, v0, 0x3

    .line 59
    .line 60
    aget-char v8, v7, v8

    .line 61
    .line 62
    if-eq v5, v8, :cond_4

    .line 63
    .line 64
    add-int/lit8 v8, v0, 0x3

    .line 65
    .line 66
    aget-char v7, v7, v8

    .line 67
    .line 68
    if-ne v4, v7, :cond_5

    .line 69
    .line 70
    :cond_4
    const-string v0, "null"

    .line 71
    .line 72
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 73
    .line 74
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_5
    const/16 v7, 0x45

    .line 78
    .line 79
    const/16 v8, 0x65

    .line 80
    .line 81
    if-ne v1, v6, :cond_a

    .line 82
    .line 83
    iget-object v6, p0, Landroid/util/JsonReader;->buffer:[C

    .line 84
    .line 85
    aget-char v9, v6, v0

    .line 86
    .line 87
    const/16 v10, 0x74

    .line 88
    .line 89
    if-eq v10, v9, :cond_6

    .line 90
    .line 91
    const/16 v10, 0x54

    .line 92
    .line 93
    if-ne v10, v9, :cond_a

    .line 94
    .line 95
    :cond_6
    add-int/lit8 v9, v0, 0x1

    .line 96
    .line 97
    aget-char v9, v6, v9

    .line 98
    .line 99
    const/16 v10, 0x72

    .line 100
    .line 101
    if-eq v10, v9, :cond_7

    .line 102
    .line 103
    add-int/lit8 v9, v0, 0x1

    .line 104
    .line 105
    aget-char v9, v6, v9

    .line 106
    .line 107
    const/16 v10, 0x52

    .line 108
    .line 109
    if-ne v10, v9, :cond_a

    .line 110
    .line 111
    :cond_7
    add-int/lit8 v9, v0, 0x2

    .line 112
    .line 113
    aget-char v9, v6, v9

    .line 114
    .line 115
    if-eq v3, v9, :cond_8

    .line 116
    .line 117
    add-int/lit8 v3, v0, 0x2

    .line 118
    .line 119
    aget-char v3, v6, v3

    .line 120
    .line 121
    if-ne v2, v3, :cond_a

    .line 122
    .line 123
    :cond_8
    add-int/lit8 v2, v0, 0x3

    .line 124
    .line 125
    aget-char v2, v6, v2

    .line 126
    .line 127
    if-eq v8, v2, :cond_9

    .line 128
    .line 129
    add-int/lit8 v2, v0, 0x3

    .line 130
    .line 131
    aget-char v2, v6, v2

    .line 132
    .line 133
    if-ne v7, v2, :cond_a

    .line 134
    .line 135
    :cond_9
    const-string/jumbo v0, "true"

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 139
    .line 140
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_a
    const/4 v2, 0x5

    .line 144
    if-ne v1, v2, :cond_10

    .line 145
    .line 146
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    .line 147
    .line 148
    aget-char v3, v2, v0

    .line 149
    .line 150
    const/16 v6, 0x66

    .line 151
    .line 152
    if-eq v6, v3, :cond_b

    .line 153
    .line 154
    const/16 v6, 0x46

    .line 155
    .line 156
    if-ne v6, v3, :cond_10

    .line 157
    .line 158
    :cond_b
    add-int/lit8 v3, v0, 0x1

    .line 159
    .line 160
    aget-char v3, v2, v3

    .line 161
    .line 162
    const/16 v6, 0x61

    .line 163
    .line 164
    if-eq v6, v3, :cond_c

    .line 165
    .line 166
    add-int/lit8 v3, v0, 0x1

    .line 167
    .line 168
    aget-char v3, v2, v3

    .line 169
    .line 170
    const/16 v6, 0x41

    .line 171
    .line 172
    if-ne v6, v3, :cond_10

    .line 173
    .line 174
    :cond_c
    add-int/lit8 v3, v0, 0x2

    .line 175
    .line 176
    aget-char v3, v2, v3

    .line 177
    .line 178
    if-eq v5, v3, :cond_d

    .line 179
    .line 180
    add-int/lit8 v3, v0, 0x2

    .line 181
    .line 182
    aget-char v3, v2, v3

    .line 183
    .line 184
    if-ne v4, v3, :cond_10

    .line 185
    .line 186
    :cond_d
    add-int/lit8 v3, v0, 0x3

    .line 187
    .line 188
    aget-char v3, v2, v3

    .line 189
    .line 190
    const/16 v4, 0x73

    .line 191
    .line 192
    if-eq v4, v3, :cond_e

    .line 193
    .line 194
    add-int/lit8 v3, v0, 0x3

    .line 195
    .line 196
    aget-char v3, v2, v3

    .line 197
    .line 198
    const/16 v4, 0x53

    .line 199
    .line 200
    if-ne v4, v3, :cond_10

    .line 201
    .line 202
    :cond_e
    add-int/lit8 v3, v0, 0x4

    .line 203
    .line 204
    aget-char v3, v2, v3

    .line 205
    .line 206
    if-eq v8, v3, :cond_f

    .line 207
    .line 208
    add-int/lit8 v3, v0, 0x4

    .line 209
    .line 210
    aget-char v2, v2, v3

    .line 211
    .line 212
    if-ne v7, v2, :cond_10

    .line 213
    .line 214
    :cond_f
    const-string v0, "false"

    .line 215
    .line 216
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 217
    .line 218
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    .line 219
    .line 220
    return-object v0

    .line 221
    :cond_10
    iget-object v2, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    .line 222
    .line 223
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    .line 224
    .line 225
    invoke-virtual {v2, v3, v0, v1}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 230
    .line 231
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    .line 232
    .line 233
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    .line 234
    .line 235
    iget v2, p0, Landroid/util/JsonReader;->valueLength:I

    .line 236
    .line 237
    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonReader;->decodeNumber([CII)Landroid/util/JsonToken;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    return-object v0
.end method

.method private decodeNumber([CII)Landroid/util/JsonToken;
    .locals 7

    .line 1
    aget-char v0, p1, p2

    .line 2
    .line 3
    const/16 v1, 0x2d

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, p2, 0x1

    .line 8
    .line 9
    aget-char v2, p1, v0

    .line 10
    .line 11
    move v6, v2

    .line 12
    move v2, v0

    .line 13
    move v0, v6

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, p2

    .line 16
    :goto_0
    const/16 v3, 0x39

    .line 17
    .line 18
    const/16 v4, 0x30

    .line 19
    .line 20
    if-ne v0, v4, :cond_1

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    aget-char v0, p1, v2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    const/16 v5, 0x31

    .line 28
    .line 29
    if-lt v0, v5, :cond_a

    .line 30
    .line 31
    if-gt v0, v3, :cond_a

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    aget-char v0, p1, v2

    .line 36
    .line 37
    :goto_1
    if-lt v0, v4, :cond_2

    .line 38
    .line 39
    if-gt v0, v3, :cond_2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    aget-char v0, p1, v2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_2
    const/16 v5, 0x2e

    .line 47
    .line 48
    if-ne v0, v5, :cond_3

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    aget-char v0, p1, v2

    .line 53
    .line 54
    :goto_3
    if-lt v0, v4, :cond_3

    .line 55
    .line 56
    if-gt v0, v3, :cond_3

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    aget-char v0, p1, v2

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v5, 0x65

    .line 64
    .line 65
    if-eq v0, v5, :cond_4

    .line 66
    .line 67
    const/16 v5, 0x45

    .line 68
    .line 69
    if-ne v0, v5, :cond_7

    .line 70
    .line 71
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    aget-char v0, p1, v2

    .line 74
    .line 75
    const/16 v5, 0x2b

    .line 76
    .line 77
    if-eq v0, v5, :cond_5

    .line 78
    .line 79
    if-ne v0, v1, :cond_6

    .line 80
    .line 81
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    aget-char v0, p1, v2

    .line 84
    .line 85
    :cond_6
    if-lt v0, v4, :cond_9

    .line 86
    .line 87
    if-gt v0, v3, :cond_9

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    aget-char v0, p1, v2

    .line 92
    .line 93
    :goto_4
    if-lt v0, v4, :cond_7

    .line 94
    .line 95
    if-gt v0, v3, :cond_7

    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    aget-char v0, p1, v2

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_7
    add-int/2addr p2, p3

    .line 103
    if-ne v2, p2, :cond_8

    .line 104
    .line 105
    sget-object p1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_8
    sget-object p1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_9
    sget-object p1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_a
    sget-object p1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 115
    .line 116
    return-object p1
.end method

.method private expect(Landroid/util/JsonToken;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Expected "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " but was "

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method private fillBuffer(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    .line 9
    .line 10
    aget-char v2, v2, v1

    .line 11
    .line 12
    const/16 v4, 0xa

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    iget v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 17
    .line 18
    add-int/2addr v2, v3

    .line 19
    iput v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 20
    .line 21
    iput v3, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 25
    .line 26
    add-int/2addr v2, v3

    .line 27
    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 28
    .line 29
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    .line 33
    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    sub-int/2addr v1, v2

    .line 37
    iput v1, p0, Landroid/util/JsonReader;->limit:I

    .line 38
    .line 39
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    .line 40
    .line 41
    invoke-static {v4, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 46
    .line 47
    :goto_2
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 48
    .line 49
    :cond_3
    iget-object v1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    .line 50
    .line 51
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    .line 52
    .line 53
    iget v4, p0, Landroid/util/JsonReader;->limit:I

    .line 54
    .line 55
    array-length v5, v2

    .line 56
    sub-int/2addr v5, v4

    .line 57
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, -0x1

    .line 62
    if-eq v1, v2, :cond_5

    .line 63
    .line 64
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    .line 65
    .line 66
    add-int/2addr v2, v1

    .line 67
    iput v2, p0, Landroid/util/JsonReader;->limit:I

    .line 68
    .line 69
    iget v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 70
    .line 71
    if-ne v1, v3, :cond_4

    .line 72
    .line 73
    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 74
    .line 75
    if-ne v1, v3, :cond_4

    .line 76
    .line 77
    if-lez v2, :cond_4

    .line 78
    .line 79
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    .line 80
    .line 81
    aget-char v4, v4, v0

    .line 82
    .line 83
    const v5, 0xfeff

    .line 84
    .line 85
    .line 86
    if-ne v4, v5, :cond_4

    .line 87
    .line 88
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    .line 89
    .line 90
    add-int/2addr v4, v3

    .line 91
    iput v4, p0, Landroid/util/JsonReader;->pos:I

    .line 92
    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 96
    .line 97
    :cond_4
    if-lt v2, p1, :cond_3

    .line 98
    .line 99
    return v3

    .line 100
    :cond_5
    return v0
.end method

.method private getColumnNumber()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    .line 9
    .line 10
    aget-char v2, v2, v1

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v0
.end method

.method private getLineNumber()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    .line 9
    .line 10
    aget-char v2, v2, v1

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v0
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 7
    .line 8
    const/16 v2, 0x14

    .line 9
    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    .line 15
    .line 16
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    .line 17
    .line 18
    sub-int/2addr v4, v1

    .line 19
    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    .line 23
    .line 24
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    .line 25
    .line 26
    sub-int/2addr v1, v3

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    .line 32
    .line 33
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method private nextInArray(Z)Landroid/util/JsonToken;
    .locals 4

    .line 1
    const/16 v0, 0x5d

    .line 2
    .line 3
    const/16 v1, 0x3b

    .line 4
    .line 5
    const/16 v2, 0x2c

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v3, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    .line 10
    .line 11
    invoke-direct {p0, v3}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eq v3, v2, :cond_3

    .line 20
    .line 21
    if-eq v3, v1, :cond_2

    .line 22
    .line 23
    if-ne v3, v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 26
    .line 27
    .line 28
    sget-object p1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    .line 29
    .line 30
    iput-object p1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    const-string p1, "Unterminated array"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    throw p1

    .line 40
    :cond_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eq v3, v2, :cond_5

    .line 48
    .line 49
    if-eq v3, v1, :cond_5

    .line 50
    .line 51
    if-eq v3, v0, :cond_4

    .line 52
    .line 53
    iget p1, p0, Landroid/util/JsonReader;->pos:I

    .line 54
    .line 55
    add-int/lit8 p1, p1, -0x1

    .line 56
    .line 57
    iput p1, p0, Landroid/util/JsonReader;->pos:I

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_4
    if-eqz p1, :cond_5

    .line 65
    .line 66
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 67
    .line 68
    .line 69
    sget-object p1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    .line 70
    .line 71
    iput-object p1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_5
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 75
    .line 76
    .line 77
    iget p1, p0, Landroid/util/JsonReader;->pos:I

    .line 78
    .line 79
    add-int/lit8 p1, p1, -0x1

    .line 80
    .line 81
    iput p1, p0, Landroid/util/JsonReader;->pos:I

    .line 82
    .line 83
    const-string p1, "null"

    .line 84
    .line 85
    iput-object p1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 86
    .line 87
    sget-object p1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    .line 88
    .line 89
    iput-object p1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 90
    .line 91
    return-object p1
.end method

.method private nextInObject(Z)Landroid/util/JsonToken;
    .locals 2

    .line 1
    const/16 v0, 0x7d

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    iget p1, p0, Landroid/util/JsonReader;->pos:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    iput p1, p0, Landroid/util/JsonReader;->pos:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 19
    .line 20
    .line 21
    sget-object p1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    .line 22
    .line 23
    iput-object p1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 v1, 0x2c

    .line 31
    .line 32
    if-eq p1, v1, :cond_3

    .line 33
    .line 34
    const/16 v1, 0x3b

    .line 35
    .line 36
    if-eq p1, v1, :cond_3

    .line 37
    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 41
    .line 42
    .line 43
    sget-object p1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    .line 44
    .line 45
    iput-object p1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    const-string p1, "Unterminated object"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    throw p1

    .line 55
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/16 v0, 0x22

    .line 60
    .line 61
    if-eq p1, v0, :cond_6

    .line 62
    .line 63
    const/16 v0, 0x27

    .line 64
    .line 65
    if-eq p1, v0, :cond_5

    .line 66
    .line 67
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 68
    .line 69
    .line 70
    iget p1, p0, Landroid/util/JsonReader;->pos:I

    .line 71
    .line 72
    add-int/lit8 p1, p1, -0x1

    .line 73
    .line 74
    iput p1, p0, Landroid/util/JsonReader;->pos:I

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const-string p1, "Expected name"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    throw p1

    .line 97
    :cond_5
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 98
    .line 99
    .line 100
    :cond_6
    int-to-char p1, p1

    .line 101
    invoke-direct {p0, p1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 106
    .line 107
    :goto_1
    sget-object p1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    .line 108
    .line 109
    invoke-direct {p0, p1}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    .line 113
    .line 114
    iput-object p1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 115
    .line 116
    return-object p1
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/util/JsonReader;->valuePos:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/util/JsonReader;->valueLength:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v0

    .line 9
    move-object v3, v1

    .line 10
    :goto_0
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    .line 11
    .line 12
    add-int v5, v4, v2

    .line 13
    .line 14
    iget v6, p0, Landroid/util/JsonReader;->limit:I

    .line 15
    .line 16
    if-ge v5, v6, :cond_1

    .line 17
    .line 18
    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    .line 19
    .line 20
    add-int/2addr v4, v2

    .line 21
    aget-char v4, v5, v4

    .line 22
    .line 23
    const/16 v5, 0x9

    .line 24
    .line 25
    if-eq v4, v5, :cond_3

    .line 26
    .line 27
    const/16 v5, 0xa

    .line 28
    .line 29
    if-eq v4, v5, :cond_3

    .line 30
    .line 31
    const/16 v5, 0xc

    .line 32
    .line 33
    if-eq v4, v5, :cond_3

    .line 34
    .line 35
    const/16 v5, 0xd

    .line 36
    .line 37
    if-eq v4, v5, :cond_3

    .line 38
    .line 39
    const/16 v5, 0x20

    .line 40
    .line 41
    if-eq v4, v5, :cond_3

    .line 42
    .line 43
    const/16 v5, 0x23

    .line 44
    .line 45
    if-eq v4, v5, :cond_0

    .line 46
    .line 47
    const/16 v5, 0x2c

    .line 48
    .line 49
    if-eq v4, v5, :cond_3

    .line 50
    .line 51
    const/16 v5, 0x2f

    .line 52
    .line 53
    if-eq v4, v5, :cond_0

    .line 54
    .line 55
    const/16 v5, 0x3d

    .line 56
    .line 57
    if-eq v4, v5, :cond_0

    .line 58
    .line 59
    const/16 v5, 0x7b

    .line 60
    .line 61
    if-eq v4, v5, :cond_3

    .line 62
    .line 63
    const/16 v5, 0x7d

    .line 64
    .line 65
    if-eq v4, v5, :cond_3

    .line 66
    .line 67
    const/16 v5, 0x3a

    .line 68
    .line 69
    if-eq v4, v5, :cond_3

    .line 70
    .line 71
    const/16 v5, 0x3b

    .line 72
    .line 73
    if-eq v4, v5, :cond_0

    .line 74
    .line 75
    packed-switch v4, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    .line 86
    .line 87
    array-length v4, v4

    .line 88
    if-ge v2, v4, :cond_4

    .line 89
    .line 90
    add-int/lit8 v4, v2, 0x1

    .line 91
    .line 92
    invoke-direct {p0, v4}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    .line 100
    .line 101
    iget v5, p0, Landroid/util/JsonReader;->limit:I

    .line 102
    .line 103
    aput-char v0, v4, v5

    .line 104
    .line 105
    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    if-nez v3, :cond_5

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    .line 115
    .line 116
    iget v5, p0, Landroid/util/JsonReader;->pos:I

    .line 117
    .line 118
    invoke-virtual {v3, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v4, p0, Landroid/util/JsonReader;->valueLength:I

    .line 122
    .line 123
    add-int/2addr v4, v2

    .line 124
    iput v4, p0, Landroid/util/JsonReader;->valueLength:I

    .line 125
    .line 126
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    .line 127
    .line 128
    add-int/2addr v4, v2

    .line 129
    iput v4, p0, Landroid/util/JsonReader;->pos:I

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_9

    .line 137
    .line 138
    :goto_2
    if-eqz p1, :cond_6

    .line 139
    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    iget p1, p0, Landroid/util/JsonReader;->pos:I

    .line 143
    .line 144
    iput p1, p0, Landroid/util/JsonReader;->valuePos:I

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    iget-boolean p1, p0, Landroid/util/JsonReader;->skipping:Z

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    const-string/jumbo v1, "skipped!"

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    if-nez v3, :cond_8

    .line 156
    .line 157
    iget-object p1, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    .line 158
    .line 159
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    .line 160
    .line 161
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    .line 162
    .line 163
    invoke-virtual {p1, v1, v2, v0}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    goto :goto_3

    .line 168
    :cond_8
    iget-object p1, p0, Landroid/util/JsonReader;->buffer:[C

    .line 169
    .line 170
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 171
    .line 172
    invoke-virtual {v3, p1, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    :goto_3
    iget p1, p0, Landroid/util/JsonReader;->valueLength:I

    .line 180
    .line 181
    add-int/2addr p1, v0

    .line 182
    iput p1, p0, Landroid/util/JsonReader;->valueLength:I

    .line 183
    .line 184
    iget p1, p0, Landroid/util/JsonReader;->pos:I

    .line 185
    .line 186
    add-int/2addr p1, v0

    .line 187
    iput p1, p0, Landroid/util/JsonReader;->pos:I

    .line 188
    .line 189
    return-object v1

    .line 190
    :cond_9
    move v2, v0

    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextNonWhitespace()I
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 16
    .line 17
    const-string v1, "End of input"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    .line 24
    .line 25
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 26
    .line 27
    add-int/lit8 v3, v1, 0x1

    .line 28
    .line 29
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 30
    .line 31
    aget-char v0, v0, v1

    .line 32
    .line 33
    const/16 v1, 0x9

    .line 34
    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    const/16 v1, 0xd

    .line 42
    .line 43
    if-eq v0, v1, :cond_0

    .line 44
    .line 45
    const/16 v1, 0x20

    .line 46
    .line 47
    if-eq v0, v1, :cond_0

    .line 48
    .line 49
    const/16 v1, 0x23

    .line 50
    .line 51
    if-eq v0, v1, :cond_8

    .line 52
    .line 53
    const/16 v1, 0x2f

    .line 54
    .line 55
    if-eq v0, v1, :cond_3

    .line 56
    .line 57
    return v0

    .line 58
    :cond_3
    iget v4, p0, Landroid/util/JsonReader;->limit:I

    .line 59
    .line 60
    if-ne v3, v4, :cond_4

    .line 61
    .line 62
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    return v0

    .line 69
    :cond_4
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    .line 73
    .line 74
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    .line 75
    .line 76
    aget-char v2, v2, v3

    .line 77
    .line 78
    const/16 v4, 0x2a

    .line 79
    .line 80
    if-eq v2, v4, :cond_6

    .line 81
    .line 82
    if-eq v2, v1, :cond_5

    .line 83
    .line 84
    return v0

    .line 85
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 88
    .line 89
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 96
    .line 97
    const-string v0, "*/"

    .line 98
    .line 99
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->skipTo(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    .line 106
    .line 107
    add-int/lit8 v0, v0, 0x2

    .line 108
    .line 109
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    const-string v0, "Unterminated comment"

    .line 113
    .line 114
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    throw v0

    .line 119
    :cond_8
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    .line 123
    .line 124
    .line 125
    goto :goto_0
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 7
    :cond_0
    :goto_1
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 8
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Landroid/util/JsonReader;->pos:I

    aget-char v2, v3, v2

    if-ne v2, p1, :cond_3

    .line 9
    iget-boolean p1, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "skipped!"

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 10
    iget-object p1, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p1, v3, v1, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    .line 11
    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    :cond_4
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p0}, Landroid/util/JsonReader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    :cond_6
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p0, v4}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    .line 20
    invoke-direct {p0, p1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private nextValue()Landroid/util/JsonToken;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x22

    .line 6
    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/16 v1, 0x27

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x5b

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x7b

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 26
    .line 27
    invoke-direct {p0}, Landroid/util/JsonReader;->readLiteral()Landroid/util/JsonToken;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_0
    sget-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 38
    .line 39
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    sget-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    .line 48
    .line 49
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 53
    .line 54
    .line 55
    :cond_3
    int-to-char v0, v0

    .line 56
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 61
    .line 62
    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 63
    .line 64
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 65
    .line 66
    return-object v0
.end method

.method private objectValue()Landroid/util/JsonToken;
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3a

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/16 v1, 0x3d

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    .line 17
    .line 18
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    .line 30
    .line 31
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 32
    .line 33
    aget-char v0, v0, v1

    .line 34
    .line 35
    const/16 v3, 0x3e

    .line 36
    .line 37
    if-ne v0, v3, :cond_2

    .line 38
    .line 39
    add-int/2addr v1, v2

    .line 40
    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "Expected \':\'"

    .line 44
    .line 45
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    throw v0

    .line 50
    :cond_2
    :goto_0
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    .line 51
    .line 52
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method private peekStack()Landroid/util/JsonScope;
    .locals 2

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private pop()Landroid/util/JsonScope;
    .locals 2

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private push(Landroid/util/JsonScope;)V
    .locals 1

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readEscapeCharacter()C
    .locals 4

    .line 1
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    .line 4
    .line 5
    const-string v2, "Unterminated escape sequence"

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    .line 23
    .line 24
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 25
    .line 26
    add-int/lit8 v3, v1, 0x1

    .line 27
    .line 28
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 29
    .line 30
    aget-char v0, v0, v1

    .line 31
    .line 32
    const/16 v1, 0x62

    .line 33
    .line 34
    if-eq v0, v1, :cond_9

    .line 35
    .line 36
    const/16 v1, 0x66

    .line 37
    .line 38
    if-eq v0, v1, :cond_8

    .line 39
    .line 40
    const/16 v1, 0x6e

    .line 41
    .line 42
    if-eq v0, v1, :cond_7

    .line 43
    .line 44
    const/16 v1, 0x72

    .line 45
    .line 46
    if-eq v0, v1, :cond_6

    .line 47
    .line 48
    const/16 v1, 0x74

    .line 49
    .line 50
    if-eq v0, v1, :cond_5

    .line 51
    .line 52
    const/16 v1, 0x75

    .line 53
    .line 54
    if-eq v0, v1, :cond_2

    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    const/4 v0, 0x4

    .line 58
    add-int/2addr v3, v0

    .line 59
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    .line 60
    .line 61
    if-le v3, v1, :cond_4

    .line 62
    .line 63
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    throw v0

    .line 75
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    .line 76
    .line 77
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    .line 78
    .line 79
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    .line 80
    .line 81
    invoke-virtual {v1, v2, v3, v0}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    .line 86
    .line 87
    add-int/2addr v2, v0

    .line 88
    iput v2, p0, Landroid/util/JsonReader;->pos:I

    .line 89
    .line 90
    const/16 v0, 0x10

    .line 91
    .line 92
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-char v0, v0

    .line 97
    return v0

    .line 98
    :cond_5
    const/16 v0, 0x9

    .line 99
    .line 100
    return v0

    .line 101
    :cond_6
    const/16 v0, 0xd

    .line 102
    .line 103
    return v0

    .line 104
    :cond_7
    const/16 v0, 0xa

    .line 105
    .line 106
    return v0

    .line 107
    :cond_8
    const/16 v0, 0xc

    .line 108
    .line 109
    return v0

    .line 110
    :cond_9
    const/16 v0, 0x8

    .line 111
    .line 112
    return v0
.end method

.method private readLiteral()Landroid/util/JsonToken;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 7
    .line 8
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/util/JsonReader;->decodeLiteral()Landroid/util/JsonToken;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 17
    .line 18
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    const-string v0, "Expected literal value"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    throw v0
.end method

.method private replaceTop(Landroid/util/JsonScope;)V
    .locals 2

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    iget v0, p0, Landroid/util/JsonReader;->limit:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-le v1, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    return v2

    .line 25
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ge v2, v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    .line 33
    .line 34
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    .line 35
    .line 36
    add-int/2addr v3, v2

    .line 37
    aget-char v0, v0, v3

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eq v0, v3, :cond_2

    .line 44
    .line 45
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    .line 46
    .line 47
    add-int/2addr v0, v1

    .line 48
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    return v1
.end method

.method private skipToEndOfLine()V
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    .line 15
    .line 16
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Landroid/util/JsonReader;->pos:I

    .line 21
    .line 22
    aget-char v0, v0, v1

    .line 23
    .line 24
    const/16 v1, 0xd

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/MalformedJsonException;

    .line 2
    .line 3
    const-string v1, " at line "

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0}, Landroid/util/JsonReader;->getLineNumber()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " column "

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/util/JsonReader;->getColumnNumber()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1

    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public beginObject()V
    .locals 1

    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    .line 12
    .line 13
    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public endArray()V
    .locals 1

    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public endObject()V
    .locals 1

    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v1, "true"

    .line 13
    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Expected a boolean but was "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public nextDouble()D
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Expected a double but was "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 44
    .line 45
    .line 46
    return-wide v0
.end method

.method public nextInt()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Expected an int but was "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    double-to-int v2, v0

    .line 51
    int-to-double v3, v2

    .line 52
    cmpl-double v0, v3, v0

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    move v0, v2

    .line 57
    :goto_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 58
    .line 59
    .line 60
    return v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 62
    .line 63
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public nextLong()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Expected a long but was "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    double-to-long v2, v0

    .line 51
    long-to-double v4, v2

    .line 52
    cmpl-double v0, v4, v0

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    move-wide v0, v2

    .line 57
    :goto_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 58
    .line 59
    .line 60
    return-wide v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 62
    .line 63
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Expected a name but was "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public nextNull()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 5
    .line 6
    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Expected null but was "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 2
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-object v0
.end method

.method public peek()Landroid/util/JsonToken;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Landroid/util/JsonReader$1;->$SwitchMap$android$util$JsonScope:[I

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/util/JsonReader;->peekStack()Landroid/util/JsonScope;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    aget v0, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/AssertionError;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v1, "JsonReader is closed"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    const-string v0, "Expected EOF"

    .line 47
    .line 48
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    sget-object v0, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    .line 54
    .line 55
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_2
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :pswitch_3
    invoke-direct {p0}, Landroid/util/JsonReader;->objectValue()Landroid/util/JsonToken;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :pswitch_4
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :pswitch_5
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :pswitch_6
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0

    .line 83
    :pswitch_7
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    .line 84
    .line 85
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 97
    .line 98
    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    .line 99
    .line 100
    if-eq v1, v2, :cond_3

    .line 101
    .line 102
    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 103
    .line 104
    if-ne v1, v2, :cond_2

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_3
    :goto_0
    return-object v0

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
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

.method public setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/util/JsonReader;->lenient:Z

    return-void
.end method

.method public skipValue()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    .line 16
    .line 17
    if-eq v1, v2, :cond_5

    .line 18
    .line 19
    move v1, v0

    .line 20
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    .line 25
    .line 26
    if-eq v2, v3, :cond_3

    .line 27
    .line 28
    sget-object v3, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 29
    .line 30
    if-ne v2, v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v3, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    .line 34
    .line 35
    if-eq v2, v3, :cond_2

    .line 36
    .line 37
    sget-object v3, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-ne v2, v3, :cond_4

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    :cond_4
    :goto_1
    if-nez v1, :cond_0

    .line 47
    .line 48
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 49
    .line 50
    return-void

    .line 51
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v2, "No element left to skip"

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 61
    .line 62
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader near "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/util/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
