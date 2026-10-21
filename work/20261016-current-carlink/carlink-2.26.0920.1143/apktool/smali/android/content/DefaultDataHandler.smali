.class public Landroid/content/DefaultDataHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ContentInsertHandler;


# static fields
.field private static final ARG:Ljava/lang/String; = "arg"

.field private static final COL:Ljava/lang/String; = "col"

.field private static final DEL:Ljava/lang/String; = "del"

.field private static final POSTFIX:Ljava/lang/String; = "postfix"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final SELECT:Ljava/lang/String; = "select"

.field private static final URI_STR:Ljava/lang/String; = "uri"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mUris:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Stack;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 10
    .line 11
    return-void
.end method

.method private insertRow()Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 19
    .line 20
    return-object v0
.end method

.method private parseRow(Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "uri"

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance v1, Lorg/xml/sax/SAXException;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "attribute "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " parsing failure"

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    const-string/jumbo v0, "postfix"

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/net/Uri;

    .line 70
    .line 71
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/net/Uri;

    .line 83
    .line 84
    :goto_0
    move-object v1, p1

    .line 85
    :goto_1
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 92
    .line 93
    const-string v0, "attribute parsing failure"

    .line 94
    .line 95
    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "row"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 32
    .line 33
    const-string/jumbo p2, "uri mismatch"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    sget-object p1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {p2, p1, p0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    invoke-static {p2, p0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const-string/jumbo p1, "row"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo p3, "insert to uri "

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Landroid/net/Uri;

    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p3, " failure"

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 82
    .line 83
    const-string/jumbo p2, "uri is empty"

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :cond_3
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_4
    const-string p1, "col"

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    const/4 p3, 0x0

    .line 119
    const/4 v0, 0x2

    .line 120
    const/4 v1, 0x1

    .line 121
    if-eqz p1, :cond_8

    .line 122
    .line 123
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-ne p1, v0, :cond_7

    .line 128
    .line 129
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-lez p3, :cond_6

    .line 144
    .line 145
    if-eqz p2, :cond_6

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-lez p3, :cond_6

    .line 152
    .line 153
    iget-object p3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 154
    .line 155
    if-nez p3, :cond_5

    .line 156
    .line 157
    new-instance p3, Landroid/content/ContentValues;

    .line 158
    .line 159
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-object p3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 163
    .line 164
    :cond_5
    iget-object p3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 165
    .line 166
    invoke-virtual {p3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 171
    .line 172
    const-string/jumbo p2, "illegal attributes value"

    .line 173
    .line 174
    .line 175
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_7
    new-instance p2, Lorg/xml/sax/SAXException;

    .line 180
    .line 181
    const-string/jumbo p3, "illegal attributes number "

    .line 182
    .line 183
    .line 184
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p2

    .line 192
    :cond_8
    const-string p1, "del"

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_d

    .line 199
    .line 200
    const-string/jumbo p1, "uri"

    .line 201
    .line 202
    .line 203
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    if-eqz p2, :cond_c

    .line 212
    .line 213
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    sub-int/2addr p1, v0

    .line 218
    if-lez p1, :cond_a

    .line 219
    .line 220
    new-array v0, p1, [Ljava/lang/String;

    .line 221
    .line 222
    :goto_0
    if-ge p3, p1, :cond_9

    .line 223
    .line 224
    add-int/lit8 v2, p3, 0x2

    .line 225
    .line 226
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    aput-object v2, v0, p3

    .line 231
    .line 232
    add-int/lit8 p3, p3, 0x1

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_9
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 236
    .line 237
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p3

    .line 241
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_a
    const/4 p3, 0x0

    .line 246
    if-nez p1, :cond_b

    .line 247
    .line 248
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 249
    .line 250
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p4

    .line 254
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_b
    iget-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 259
    .line 260
    invoke-virtual {p1, p2, p3, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    :goto_1
    return-void

    .line 264
    :cond_c
    new-instance p2, Lorg/xml/sax/SAXException;

    .line 265
    .line 266
    new-instance p3, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v0, "attribute "

    .line 269
    .line 270
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string p1, " parsing failure"

    .line 281
    .line 282
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw p2

    .line 293
    :cond_d
    new-instance p1, Lorg/xml/sax/SAXException;

    .line 294
    .line 295
    const-string/jumbo p3, "unknown element: "

    .line 296
    .line 297
    .line 298
    invoke-static {p3, p2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw p1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
