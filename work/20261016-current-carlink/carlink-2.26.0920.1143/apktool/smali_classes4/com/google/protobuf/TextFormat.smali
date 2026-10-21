.class public final Lcom/google/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/google/protobuf/TextFormat$Parser;,
        Lcom/google/protobuf/TextFormat$UnknownFieldParseException;,
        Lcom/google/protobuf/TextFormat$ParseException;,
        Lcom/google/protobuf/TextFormat$Tokenizer;,
        Lcom/google/protobuf/TextFormat$TextGenerator;,
        Lcom/google/protobuf/TextFormat$Printer;
    }
.end annotation


# static fields
.field private static final DEBUG_STRING_SILENT_MARKER:Ljava/lang/String; = "\t "

.field private static final PARSER:Lcom/google/protobuf/TextFormat$Parser;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/TextFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/protobuf/TextFormat$Parser;->newBuilder()Lcom/google/protobuf/TextFormat$Parser$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$Parser$Builder;->build()Lcom/google/protobuf/TextFormat$Parser;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$TextGenerator;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->multiLineOutput(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$TextGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic access$400(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$TextGenerator;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->singleLineOutput(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$TextGenerator;

    move-result-object p0

    return-object p0
.end method

.method private static digitValue(B)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    :goto_0
    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x41

    goto :goto_0
.end method

.method public static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeBytes([B)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParser()Lcom/google/protobuf/TextFormat$Parser;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    return-object v0
.end method

.method private static isHex(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOctal(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method private static multiLineOutput(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$TextGenerator;
    .locals 3

    new-instance v0, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;ZLcom/google/protobuf/TextFormat$1;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Ljava/lang/Class;)Lcom/google/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/google/protobuf/ExtensionRegistry;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Lcom/google/protobuf/Internal;->getDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Message;

    invoke-interface {p2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p2

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 6
    invoke-interface {p2}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/google/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/Internal;->getDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Message;

    invoke-interface {p1}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V

    .line 3
    invoke-interface {p1}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public static parseInt32(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static parseInt64(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .locals 7

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 15
    .line 16
    const-string p2, "Number must be positive: "

    .line 17
    .line 18
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    move v0, v1

    .line 27
    const-string v2, "0x"

    .line 28
    .line 29
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x10

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    move v2, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v2, "0"

    .line 42
    .line 43
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    const/16 v2, 0x8

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/16 v2, 0xa

    .line 53
    .line 54
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const-string v5, "Number out of range for 32-bit signed integer: "

    .line 63
    .line 64
    const-string v6, "Number out of range for 32-bit unsigned integer: "

    .line 65
    .line 66
    if-ge v4, v3, :cond_8

    .line 67
    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    neg-long v1, v1

    .line 75
    :cond_4
    if-nez p2, :cond_10

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    const-wide/32 p1, 0x7fffffff

    .line 80
    .line 81
    .line 82
    cmp-long p1, v1, p1

    .line 83
    .line 84
    if-gtz p1, :cond_5

    .line 85
    .line 86
    const-wide/32 p1, -0x80000000

    .line 87
    .line 88
    .line 89
    cmp-long p1, v1, p1

    .line 90
    .line 91
    if-ltz p1, :cond_5

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 96
    .line 97
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_6
    const-wide p1, 0x100000000L

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    cmp-long p1, v1, p1

    .line 111
    .line 112
    if-gez p1, :cond_7

    .line 113
    .line 114
    const-wide/16 p1, 0x0

    .line 115
    .line 116
    cmp-long p1, v1, p1

    .line 117
    .line 118
    if-ltz p1, :cond_7

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 122
    .line 123
    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    .line 132
    .line 133
    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :cond_9
    if-nez p2, :cond_d

    .line 143
    .line 144
    if-eqz p1, :cond_b

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const/16 p2, 0x1f

    .line 151
    .line 152
    if-gt p1, p2, :cond_a

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 156
    .line 157
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    const/16 p2, 0x20

    .line 170
    .line 171
    if-gt p1, p2, :cond_c

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 175
    .line 176
    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_d
    if-eqz p1, :cond_f

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    const/16 p2, 0x3f

    .line 191
    .line 192
    if-gt p1, p2, :cond_e

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 196
    .line 197
    const-string p2, "Number out of range for 64-bit signed integer: "

    .line 198
    .line 199
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1

    .line 207
    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    const/16 p2, 0x40

    .line 212
    .line 213
    if-gt p1, p2, :cond_11

    .line 214
    .line 215
    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    .line 216
    .line 217
    .line 218
    move-result-wide v1

    .line 219
    :cond_10
    :goto_3
    return-wide v1

    .line 220
    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 221
    .line 222
    const-string p2, "Number out of range for 64-bit unsigned integer: "

    .line 223
    .line 224
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1
.end method

.method public static parseUInt32(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static parseUInt64(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 1
    .annotation build Lcom/google/protobuf/InlineMe;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().print(message, output)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation build Lcom/google/protobuf/InlineMe;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().printFieldValue(field, value, output)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/protobuf/InlineMe;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().printToString(message)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printToUnicodeString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/protobuf/InlineMe;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().escapingNonAscii(false).printToString(message)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printToUnicodeString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printUnicode(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 2
    .annotation build Lcom/google/protobuf/InlineMe;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().escapingNonAscii(false).print(message, output)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printUnicode(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printUnicodeFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method private static printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 5

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v1

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad tag: "

    .line 5
    invoke-static {p2, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    check-cast p1, Lcom/google/protobuf/UnknownFieldSet;

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->access$000(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 8
    :cond_2
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-static {p0}, Lcom/google/protobuf/UnknownFieldSet;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    const-string v0, "{"

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$TextGenerator;->eol()V

    .line 11
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$TextGenerator;->indent()V

    .line 12
    invoke-static {p0, p2}, Lcom/google/protobuf/TextFormat$Printer;->access$000(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 13
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string p0, "}"

    .line 14
    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "\""

    .line 15
    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 16
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-array p0, v3, [Ljava/lang/Object;

    .line 18
    check-cast p1, Ljava/lang/Long;

    aput-object p1, p0, v1

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 19
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static printUnknownFieldValue(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->multiLineOutput(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$TextGenerator;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printer()Lcom/google/protobuf/TextFormat$Printer;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/TextFormat$Printer;->access$100()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    return-object v0
.end method

.method public static shortDebugString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->shortDebugString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortDebugString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->shortDebugString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortDebugString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {}, Lcom/google/protobuf/TextFormat;->printer()Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$Printer;->shortDebugString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static singleLineOutput(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$TextGenerator;
    .locals 3

    new-instance v0, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;ZLcom/google/protobuf/TextFormat$1;)V

    return-object v0
.end method

.method public static unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 12

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v1, v0, [B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ge v3, v5, :cond_1b

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/16 v6, 0x5c

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-ne v5, v6, :cond_1a

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ge v3, v5, :cond_19

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    add-int/lit8 v6, v3, 0x1

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-ge v6, v8, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    mul-int/lit8 v5, v5, 0x8

    .line 74
    .line 75
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    add-int/2addr v5, v3

    .line 84
    move v3, v6

    .line 85
    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-ge v6, v8, :cond_1

    .line 92
    .line 93
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_1

    .line 102
    .line 103
    mul-int/lit8 v5, v5, 0x8

    .line 104
    .line 105
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    add-int/2addr v5, v3

    .line 114
    move v3, v6

    .line 115
    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 116
    .line 117
    int-to-byte v5, v5

    .line 118
    aput-byte v5, v1, v4

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_2
    const/16 v8, 0x22

    .line 123
    .line 124
    if-eq v5, v8, :cond_18

    .line 125
    .line 126
    const/16 v8, 0x27

    .line 127
    .line 128
    if-eq v5, v8, :cond_17

    .line 129
    .line 130
    const/16 v9, 0x3f

    .line 131
    .line 132
    if-eq v5, v9, :cond_16

    .line 133
    .line 134
    const/16 v9, 0x55

    .line 135
    .line 136
    if-eq v5, v9, :cond_f

    .line 137
    .line 138
    if-eq v5, v6, :cond_e

    .line 139
    .line 140
    const/16 v6, 0x66

    .line 141
    .line 142
    const/16 v9, 0xc

    .line 143
    .line 144
    if-eq v5, v6, :cond_d

    .line 145
    .line 146
    const/16 v6, 0x6e

    .line 147
    .line 148
    if-eq v5, v6, :cond_c

    .line 149
    .line 150
    const/16 v6, 0x72

    .line 151
    .line 152
    if-eq v5, v6, :cond_b

    .line 153
    .line 154
    const/16 v6, 0x78

    .line 155
    .line 156
    if-eq v5, v6, :cond_8

    .line 157
    .line 158
    const/16 v6, 0x61

    .line 159
    .line 160
    if-eq v5, v6, :cond_7

    .line 161
    .line 162
    const/16 v6, 0x62

    .line 163
    .line 164
    const/16 v10, 0x8

    .line 165
    .line 166
    if-eq v5, v6, :cond_6

    .line 167
    .line 168
    packed-switch v5, :pswitch_data_0

    .line 169
    .line 170
    .line 171
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v1, "Invalid escape sequence: \'\\"

    .line 176
    .line 177
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    int-to-char v1, v5

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p0

    .line 195
    :pswitch_0
    add-int/lit8 v5, v4, 0x1

    .line 196
    .line 197
    const/16 v6, 0xb

    .line 198
    .line 199
    aput-byte v6, v1, v4

    .line 200
    .line 201
    goto/16 :goto_5

    .line 202
    .line 203
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    add-int/lit8 v5, v3, 0x3

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-ge v5, v6, :cond_5

    .line 212
    .line 213
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-eqz v6, :cond_5

    .line 222
    .line 223
    add-int/lit8 v6, v3, 0x1

    .line 224
    .line 225
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eqz v8, :cond_5

    .line 234
    .line 235
    add-int/lit8 v8, v3, 0x2

    .line 236
    .line 237
    invoke-virtual {p0, v8}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    invoke-static {v11}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    if-eqz v11, :cond_5

    .line 246
    .line 247
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    invoke-static {v11}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    if-eqz v11, :cond_5

    .line 256
    .line 257
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    shl-int/2addr v3, v9

    .line 266
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    shl-int/2addr v6, v10

    .line 275
    or-int/2addr v3, v6

    .line 276
    invoke-virtual {p0, v8}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    shl-int/lit8 v6, v6, 0x4

    .line 285
    .line 286
    or-int/2addr v3, v6

    .line 287
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    or-int/2addr v3, v6

    .line 296
    int-to-char v3, v3

    .line 297
    const v6, 0xd800

    .line 298
    .line 299
    .line 300
    if-lt v3, v6, :cond_4

    .line 301
    .line 302
    const v6, 0xdfff

    .line 303
    .line 304
    .line 305
    if-le v3, v6, :cond_3

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_3
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 309
    .line 310
    const-string v0, "Invalid escape sequence: \'\\u\' refers to a surrogate"

    .line 311
    .line 312
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw p0

    .line 316
    :cond_4
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    sget-object v6, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 321
    .line 322
    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    array-length v6, v3

    .line 327
    invoke-static {v3, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    .line 329
    .line 330
    array-length v3, v3

    .line 331
    goto/16 :goto_4

    .line 332
    .line 333
    :cond_5
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 334
    .line 335
    const-string v0, "Invalid escape sequence: \'\\u\' with too few hex chars"

    .line 336
    .line 337
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw p0

    .line 341
    :pswitch_2
    add-int/lit8 v5, v4, 0x1

    .line 342
    .line 343
    const/16 v6, 0x9

    .line 344
    .line 345
    aput-byte v6, v1, v4

    .line 346
    .line 347
    goto/16 :goto_5

    .line 348
    .line 349
    :cond_6
    add-int/lit8 v5, v4, 0x1

    .line 350
    .line 351
    aput-byte v10, v1, v4

    .line 352
    .line 353
    goto/16 :goto_5

    .line 354
    .line 355
    :cond_7
    add-int/lit8 v5, v4, 0x1

    .line 356
    .line 357
    const/4 v6, 0x7

    .line 358
    aput-byte v6, v1, v4

    .line 359
    .line 360
    goto/16 :goto_5

    .line 361
    .line 362
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-ge v3, v5, :cond_a

    .line 369
    .line 370
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_a

    .line 379
    .line 380
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    add-int/lit8 v6, v3, 0x1

    .line 389
    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    if-ge v6, v8, :cond_9

    .line 395
    .line 396
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    if-eqz v8, :cond_9

    .line 405
    .line 406
    mul-int/lit8 v5, v5, 0x10

    .line 407
    .line 408
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    add-int/2addr v5, v3

    .line 417
    move v3, v6

    .line 418
    :cond_9
    add-int/lit8 v6, v4, 0x1

    .line 419
    .line 420
    int-to-byte v5, v5

    .line 421
    aput-byte v5, v1, v4

    .line 422
    .line 423
    goto/16 :goto_6

    .line 424
    .line 425
    :cond_a
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 426
    .line 427
    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    .line 428
    .line 429
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw p0

    .line 433
    :cond_b
    add-int/lit8 v5, v4, 0x1

    .line 434
    .line 435
    const/16 v6, 0xd

    .line 436
    .line 437
    aput-byte v6, v1, v4

    .line 438
    .line 439
    goto/16 :goto_5

    .line 440
    .line 441
    :cond_c
    add-int/lit8 v5, v4, 0x1

    .line 442
    .line 443
    const/16 v6, 0xa

    .line 444
    .line 445
    aput-byte v6, v1, v4

    .line 446
    .line 447
    goto/16 :goto_5

    .line 448
    .line 449
    :cond_d
    add-int/lit8 v5, v4, 0x1

    .line 450
    .line 451
    aput-byte v9, v1, v4

    .line 452
    .line 453
    goto/16 :goto_5

    .line 454
    .line 455
    :cond_e
    add-int/lit8 v5, v4, 0x1

    .line 456
    .line 457
    aput-byte v6, v1, v4

    .line 458
    .line 459
    goto/16 :goto_5

    .line 460
    .line 461
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 462
    .line 463
    add-int/lit8 v5, v3, 0x7

    .line 464
    .line 465
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    const-string v8, "Invalid escape sequence: \'\\U\' with too few hex chars"

    .line 470
    .line 471
    if-ge v5, v6, :cond_15

    .line 472
    .line 473
    move v9, v2

    .line 474
    move v6, v3

    .line 475
    :goto_2
    add-int/lit8 v10, v3, 0x8

    .line 476
    .line 477
    if-ge v6, v10, :cond_11

    .line 478
    .line 479
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    invoke-static {v10}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    .line 484
    .line 485
    .line 486
    move-result v11

    .line 487
    if-eqz v11, :cond_10

    .line 488
    .line 489
    shl-int/lit8 v9, v9, 0x4

    .line 490
    .line 491
    invoke-static {v10}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    or-int/2addr v9, v10

    .line 496
    add-int/lit8 v6, v6, 0x1

    .line 497
    .line 498
    goto :goto_2

    .line 499
    :cond_10
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 500
    .line 501
    invoke-direct {p0, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw p0

    .line 505
    :cond_11
    invoke-static {v9}, Ljava/lang/Character;->isValidCodePoint(I)Z

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    const-string v8, "Invalid escape sequence: \'\\U"

    .line 510
    .line 511
    if-eqz v6, :cond_14

    .line 512
    .line 513
    invoke-static {v9}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    if-eqz v6, :cond_13

    .line 518
    .line 519
    sget-object v11, Ljava/lang/Character$UnicodeBlock;->LOW_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    .line 520
    .line 521
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v11

    .line 525
    if-nez v11, :cond_12

    .line 526
    .line 527
    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HIGH_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    .line 528
    .line 529
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v11

    .line 533
    if-nez v11, :cond_12

    .line 534
    .line 535
    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HIGH_PRIVATE_USE_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    .line 536
    .line 537
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    if-nez v6, :cond_12

    .line 542
    .line 543
    goto :goto_3

    .line 544
    :cond_12
    new-instance v0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 545
    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p0, v3, v10}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    .line 552
    .line 553
    .line 554
    move-result-object p0

    .line 555
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object p0

    .line 559
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const-string p0, "\' refers to a surrogate code unit"

    .line 563
    .line 564
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p0

    .line 571
    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw v0

    .line 575
    :cond_13
    :goto_3
    new-array v3, v7, [I

    .line 576
    .line 577
    aput v9, v3, v2

    .line 578
    .line 579
    new-instance v6, Ljava/lang/String;

    .line 580
    .line 581
    invoke-direct {v6, v3, v2, v7}, Ljava/lang/String;-><init>([III)V

    .line 582
    .line 583
    .line 584
    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 585
    .line 586
    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    array-length v6, v3

    .line 591
    invoke-static {v3, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    .line 593
    .line 594
    array-length v3, v3

    .line 595
    :goto_4
    add-int/2addr v4, v3

    .line 596
    move v3, v5

    .line 597
    goto :goto_7

    .line 598
    :cond_14
    new-instance v0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 599
    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {p0, v3, v10}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    .line 606
    .line 607
    .line 608
    move-result-object p0

    .line 609
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object p0

    .line 613
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string p0, "\' is not a valid code point value"

    .line 617
    .line 618
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    throw v0

    .line 629
    :cond_15
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 630
    .line 631
    invoke-direct {p0, v8}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw p0

    .line 635
    :cond_16
    add-int/lit8 v5, v4, 0x1

    .line 636
    .line 637
    aput-byte v9, v1, v4

    .line 638
    .line 639
    goto :goto_5

    .line 640
    :cond_17
    add-int/lit8 v5, v4, 0x1

    .line 641
    .line 642
    aput-byte v8, v1, v4

    .line 643
    .line 644
    goto :goto_5

    .line 645
    :cond_18
    add-int/lit8 v5, v4, 0x1

    .line 646
    .line 647
    aput-byte v8, v1, v4

    .line 648
    .line 649
    :goto_5
    move v4, v5

    .line 650
    goto :goto_7

    .line 651
    :cond_19
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    .line 652
    .line 653
    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    .line 654
    .line 655
    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw p0

    .line 659
    :cond_1a
    add-int/lit8 v6, v4, 0x1

    .line 660
    .line 661
    aput-byte v5, v1, v4

    .line 662
    .line 663
    :goto_6
    move v4, v6

    .line 664
    :goto_7
    add-int/2addr v3, v7

    .line 665
    goto/16 :goto_0

    .line 666
    .line 667
    :cond_1b
    if-ne v0, v4, :cond_1c

    .line 668
    .line 669
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    .line 670
    .line 671
    .line 672
    move-result-object p0

    .line 673
    goto :goto_8

    .line 674
    :cond_1c
    invoke-static {v1, v2, v4}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    .line 675
    .line 676
    .line 677
    move-result-object p0

    .line 678
    :goto_8
    return-object p0

    .line 679
    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unsignedToString(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unsignedToString(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    .line 4
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
