.class public Lcom/android/internal/util/TypedProperties;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/TypedProperties$TypeException;,
        Lcom/android/internal/util/TypedProperties$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final NULL_STRING:Ljava/lang/String;

.field public static final STRING_NOT_SET:I = -0x1

.field public static final STRING_NULL:I = 0x0

.field public static final STRING_SET:I = 0x1

.field public static final STRING_TYPE_MISMATCH:I = -0x2

.field static final TYPE_BOOLEAN:I = 0x5a

.field static final TYPE_BYTE:I = 0x149

.field static final TYPE_DOUBLE:I = 0x846

.field static final TYPE_ERROR:I = -0x1

.field static final TYPE_FLOAT:I = 0x446

.field static final TYPE_INT:I = 0x449

.field static final TYPE_LONG:I = 0x849

.field static final TYPE_SHORT:I = 0x249

.field static final TYPE_STRING:I = 0x734c

.field static final TYPE_UNSET:I = 0x78


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "<TypedProperties:NULL_STRING>"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StreamTokenizer;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 7
    .line 8
    .line 9
    const/16 p0, 0x30

    .line 10
    .line 11
    const/16 v1, 0x39

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 14
    .line 15
    .line 16
    const/16 p0, 0x41

    .line 17
    .line 18
    const/16 v1, 0x5a

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x61

    .line 24
    .line 25
    const/16 v1, 0x7a

    .line 26
    .line 27
    invoke-virtual {v0, p0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 28
    .line 29
    .line 30
    const/16 p0, 0x5f

    .line 31
    .line 32
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x24

    .line 36
    .line 37
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 38
    .line 39
    .line 40
    const/16 p0, 0x2e

    .line 41
    .line 42
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 43
    .line 44
    .line 45
    const/16 p0, 0x2d

    .line 46
    .line 47
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 48
    .line 49
    .line 50
    const/16 p0, 0x2b

    .line 51
    .line 52
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 53
    .line 54
    .line 55
    const/16 p0, 0x3d

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 58
    .line 59
    .line 60
    const/16 p0, 0x20

    .line 61
    .line 62
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 63
    .line 64
    .line 65
    const/16 p0, 0x9

    .line 66
    .line 67
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 68
    .line 69
    .line 70
    const/16 p0, 0xa

    .line 71
    .line 72
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 73
    .line 74
    .line 75
    const/16 p0, 0xd

    .line 76
    .line 77
    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 78
    .line 79
    .line 80
    const/16 p0, 0x22

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    invoke-virtual {v0, p0}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method

.method public static interpretType(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "unset"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x78

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const-string v0, "boolean"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/16 p0, 0x5a

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    const-string v0, "byte"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/16 p0, 0x149

    .line 32
    .line 33
    return p0

    .line 34
    :cond_2
    const-string v0, "short"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/16 p0, 0x249

    .line 43
    .line 44
    return p0

    .line 45
    :cond_3
    const-string v0, "int"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/16 p0, 0x449

    .line 54
    .line 55
    return p0

    .line 56
    :cond_4
    const-string v0, "long"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const/16 p0, 0x849

    .line 65
    .line 66
    return p0

    .line 67
    :cond_5
    const-string v0, "float"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    const/16 p0, 0x446

    .line 76
    .line 77
    return p0

    .line 78
    :cond_6
    const-string v0, "double"

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    const/16 p0, 0x846

    .line 87
    .line 88
    return p0

    .line 89
    :cond_7
    const-string v0, "String"

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_8

    .line 96
    .line 97
    const/16 p0, 0x734c

    .line 98
    .line 99
    return p0

    .line 100
    :cond_8
    const/4 p0, -0x1

    .line 101
    return p0
.end method

.method public static parse(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/TypedProperties;->initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "([a-zA-Z_$][0-9a-zA-Z_$]*\\.)*[a-zA-Z_$][0-9a-zA-Z_$]*"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v3, -0x3

    .line 20
    if-ne v1, v3, :cond_c

    .line 21
    .line 22
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/internal/util/TypedProperties;->interpretType(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eq v1, v2, :cond_b

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 32
    .line 33
    const/16 v4, 0x78

    .line 34
    .line 35
    if-ne v1, v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/16 v6, 0x28

    .line 42
    .line 43
    if-ne v5, v6, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 47
    .line 48
    const-string v0, "\'(\'"

    .line 49
    .line 50
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-ne v5, v3, :cond_a

    .line 59
    .line 60
    iget-object v3, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_9

    .line 71
    .line 72
    iput-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 73
    .line 74
    if-ne v1, v4, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/16 v2, 0x29

    .line 81
    .line 82
    if-ne v1, v2, :cond_3

    .line 83
    .line 84
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 89
    .line 90
    const-string v0, "\')\'"

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_4
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/16 v4, 0x3d

    .line 101
    .line 102
    if-ne v2, v4, :cond_8

    .line 103
    .line 104
    invoke-static {p0, v1}, Lcom/android/internal/util/TypedProperties;->parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-ne v4, v2, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 126
    .line 127
    const-string v0, "(property previously declared as a different type)"

    .line 128
    .line 129
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_6
    :goto_2
    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :goto_3
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/16 v2, 0x3b

    .line 141
    .line 142
    if-ne v1, v2, :cond_7

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_7
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 147
    .line 148
    const-string v0, "\';\'"

    .line 149
    .line 150
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_8
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 155
    .line 156
    const-string v0, "\'=\'"

    .line 157
    .line 158
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_9
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 163
    .line 164
    const-string v0, "valid property name"

    .line 165
    .line 166
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    :cond_a
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 171
    .line 172
    const-string v0, "property name"

    .line 173
    .line 174
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_b
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 179
    .line 180
    const-string v0, "valid type name"

    .line 181
    .line 182
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_c
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 187
    .line 188
    const-string v0, "type name"

    .line 189
    .line 190
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1
.end method

.method public static parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x5a

    .line 6
    .line 7
    const/4 v2, -0x3

    .line 8
    if-ne p1, v1, :cond_3

    .line 9
    .line 10
    const-string p1, "boolean constant"

    .line 11
    .line 12
    if-ne v0, v2, :cond_2

    .line 13
    .line 14
    const-string v0, "true"

    .line 15
    .line 16
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string v0, "false"

    .line 28
    .line 29
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance v0, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 41
    .line 42
    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    new-instance v0, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 47
    .line 48
    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_3
    and-int/lit16 v1, p1, 0xff

    .line 53
    .line 54
    const/16 v3, 0x49

    .line 55
    .line 56
    const/4 v4, 0x4

    .line 57
    const/16 v5, 0x8

    .line 58
    .line 59
    if-ne v1, v3, :cond_d

    .line 60
    .line 61
    const-string v1, "integer constant"

    .line 62
    .line 63
    if-ne v0, v2, :cond_c

    .line 64
    .line 65
    :try_start_0
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    shr-int/2addr p1, v5

    .line 76
    and-int/lit16 p1, p1, 0xff

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    if-eq p1, v2, :cond_a

    .line 80
    .line 81
    const/4 v2, 0x2

    .line 82
    if-eq p1, v2, :cond_8

    .line 83
    .line 84
    if-eq p1, v4, :cond_6

    .line 85
    .line 86
    if-ne p1, v5, :cond_5

    .line 87
    .line 88
    const-wide/high16 v2, -0x8000000000000000L

    .line 89
    .line 90
    cmp-long p1, v0, v2

    .line 91
    .line 92
    if-ltz p1, :cond_4

    .line 93
    .line 94
    const-wide v2, 0x7fffffffffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    cmp-long p1, v0, v2

    .line 100
    .line 101
    if-gtz p1, :cond_4

    .line 102
    .line 103
    new-instance p0, Ljava/lang/Long;

    .line 104
    .line 105
    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_4
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 110
    .line 111
    const-string v0, "64-bit integer constant"

    .line 112
    .line 113
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-string v0, "Internal error; unexpected integer type width "

    .line 120
    .line 121
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_6
    const-wide/32 v2, -0x80000000

    .line 130
    .line 131
    .line 132
    cmp-long p1, v0, v2

    .line 133
    .line 134
    if-ltz p1, :cond_7

    .line 135
    .line 136
    const-wide/32 v2, 0x7fffffff

    .line 137
    .line 138
    .line 139
    cmp-long p1, v0, v2

    .line 140
    .line 141
    if-gtz p1, :cond_7

    .line 142
    .line 143
    new-instance p0, Ljava/lang/Integer;

    .line 144
    .line 145
    long-to-int p1, v0

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 147
    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_7
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 151
    .line 152
    const-string v0, "32-bit integer constant"

    .line 153
    .line 154
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_8
    const-wide/16 v2, -0x8000

    .line 159
    .line 160
    cmp-long p1, v0, v2

    .line 161
    .line 162
    if-ltz p1, :cond_9

    .line 163
    .line 164
    const-wide/16 v2, 0x7fff

    .line 165
    .line 166
    cmp-long p1, v0, v2

    .line 167
    .line 168
    if-gtz p1, :cond_9

    .line 169
    .line 170
    new-instance p0, Ljava/lang/Short;

    .line 171
    .line 172
    long-to-int p1, v0

    .line 173
    int-to-short p1, p1

    .line 174
    invoke-direct {p0, p1}, Ljava/lang/Short;-><init>(S)V

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_9
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 179
    .line 180
    const-string v0, "16-bit integer constant"

    .line 181
    .line 182
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_a
    const-wide/16 v2, -0x80

    .line 187
    .line 188
    cmp-long p1, v0, v2

    .line 189
    .line 190
    if-ltz p1, :cond_b

    .line 191
    .line 192
    const-wide/16 v2, 0x7f

    .line 193
    .line 194
    cmp-long p1, v0, v2

    .line 195
    .line 196
    if-gtz p1, :cond_b

    .line 197
    .line 198
    new-instance p0, Ljava/lang/Byte;

    .line 199
    .line 200
    long-to-int p1, v0

    .line 201
    int-to-byte p1, p1

    .line 202
    invoke-direct {p0, p1}, Ljava/lang/Byte;-><init>(B)V

    .line 203
    .line 204
    .line 205
    return-object p0

    .line 206
    :cond_b
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 207
    .line 208
    const-string v0, "8-bit integer constant"

    .line 209
    .line 210
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1

    .line 214
    :catch_0
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 215
    .line 216
    invoke-direct {p1, p0, v1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1

    .line 220
    :cond_c
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 221
    .line 222
    invoke-direct {p1, p0, v1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_d
    const/16 v3, 0x46

    .line 227
    .line 228
    if-ne v1, v3, :cond_12

    .line 229
    .line 230
    const-string v1, "float constant"

    .line 231
    .line 232
    if-ne v0, v2, :cond_11

    .line 233
    .line 234
    :try_start_1
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 237
    .line 238
    .line 239
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    shr-int/2addr p1, v5

    .line 241
    and-int/lit16 p1, p1, 0xff

    .line 242
    .line 243
    if-ne p1, v4, :cond_10

    .line 244
    .line 245
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 246
    .line 247
    .line 248
    move-result-wide v2

    .line 249
    const-wide/16 v4, 0x0

    .line 250
    .line 251
    cmpl-double p1, v2, v4

    .line 252
    .line 253
    if-eqz p1, :cond_f

    .line 254
    .line 255
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_f

    .line 260
    .line 261
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-nez p1, :cond_f

    .line 266
    .line 267
    const-wide/high16 v4, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 268
    .line 269
    cmpg-double p1, v2, v4

    .line 270
    .line 271
    if-ltz p1, :cond_e

    .line 272
    .line 273
    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    cmpl-double p1, v2, v4

    .line 279
    .line 280
    if-gtz p1, :cond_e

    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_e
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 284
    .line 285
    const-string v0, "32-bit float constant"

    .line 286
    .line 287
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_f
    :goto_0
    new-instance p0, Ljava/lang/Float;

    .line 292
    .line 293
    double-to-float p1, v0

    .line 294
    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 295
    .line 296
    .line 297
    return-object p0

    .line 298
    :cond_10
    new-instance p0, Ljava/lang/Double;

    .line 299
    .line 300
    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 301
    .line 302
    .line 303
    return-object p0

    .line 304
    :catch_1
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 305
    .line 306
    invoke-direct {p1, p0, v1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p1

    .line 310
    :cond_11
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 311
    .line 312
    invoke-direct {p1, p0, v1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw p1

    .line 316
    :cond_12
    const/16 v1, 0x734c

    .line 317
    .line 318
    if-ne p1, v1, :cond_15

    .line 319
    .line 320
    const/16 p1, 0x22

    .line 321
    .line 322
    if-ne v0, p1, :cond_13

    .line 323
    .line 324
    iget-object p0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 325
    .line 326
    return-object p0

    .line 327
    :cond_13
    if-ne v0, v2, :cond_14

    .line 328
    .line 329
    const-string p1, "null"

    .line 330
    .line 331
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_14

    .line 338
    .line 339
    sget-object p0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    .line 340
    .line 341
    return-object p0

    .line 342
    :cond_14
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    .line 343
    .line 344
    const-string v0, "double-quoted string or \'null\'"

    .line 345
    .line 346
    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw p1

    .line 350
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 351
    .line 352
    const-string v0, "Internal error; unknown type "

    .line 353
    .line 354
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :cond_0
    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    instance-of p2, v0, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "boolean"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getByte(Ljava/lang/String;B)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    instance-of p2, v0, Ljava/lang/Byte;

    if-eqz p2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "byte"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    instance-of p2, v0, Ljava/lang/Double;

    if-eqz p2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_1
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string p3, "double"

    invoke-direct {p2, p1, v0, p3}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    instance-of p2, v0, Ljava/lang/Float;

    if-eqz p2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "float"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    instance-of p2, v0, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "int"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    instance-of p2, v0, Ljava/lang/Long;

    if-eqz p2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_1
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string p3, "long"

    invoke-direct {p2, p1, v0, p3}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getShort(Ljava/lang/String;S)S

    move-result p1

    return p1
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    instance-of p2, v0, Ljava/lang/Short;

    if-eqz p2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "short"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object p2, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    instance-of p2, v0, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_2
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "string"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public getStringInfo(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    sget-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_1
    instance-of p1, p1, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_2
    const/4 p1, -0x2

    .line 22
    return p1
.end method

.method public load(Ljava/io/Reader;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/internal/util/TypedProperties;->parse(Ljava/io/Reader;Ljava/util/Map;)V

    return-void
.end method
