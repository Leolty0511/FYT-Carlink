.class public Lcom/android/internal/telephony/Sms7BitEncodingTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "Sms7BitEncodingTranslator"

.field private static final XML_CHARACTOR_TAG:Ljava/lang/String; = "Character"

.field private static final XML_FROM_TAG:Ljava/lang/String; = "from"

.field private static final XML_START_TAG:Ljava/lang/String; = "SmsEnforce7BitTranslationTable"

.field private static final XML_TO_TAG:Ljava/lang/String; = "to"

.field private static final XML_TRANSLATION_TYPE_TAG:Ljava/lang/String; = "TranslationType"

.field private static mIs7BitTranslationTableLoaded:Z

.field private static mTranslationTable:Landroid/util/SparseIntArray;

.field private static mTranslationTableCDMA:Landroid/util/SparseIntArray;

.field private static mTranslationTableCommon:Landroid/util/SparseIntArray;

.field private static mTranslationTableGSM:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static load7BitTranslationTableFromXml()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    .line 6
    .line 7
    const-string v2, "Sms7BitEncodingTranslator"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "load7BitTranslationTableFromXml: open normal file"

    .line 12
    .line 13
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    const v1, 0x1170012

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :try_start_0
    const-string v1, "SmsEnforce7BitTranslationTable"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-boolean v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "tag: "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    const-string v4, "TranslationType"

    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x0

    .line 66
    if-eqz v4, :cond_6

    .line 67
    .line 68
    const-string v1, "Type"

    .line 69
    .line 70
    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "type: "

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "common"

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 105
    .line 106
    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const-string v3, "gsm"

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 118
    .line 119
    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    const-string v3, "cdma"

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    .line 131
    .line 132
    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v4, "Error Parsing 7BitTranslationTable: found incorrect type"

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    const-string v4, "Character"

    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 165
    .line 166
    if-eqz v1, :cond_9

    .line 167
    .line 168
    const-string v1, "from"

    .line 169
    .line 170
    const/4 v4, -0x1

    .line 171
    invoke-interface {v0, v5, v1, v4}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    const-string v6, "to"

    .line 176
    .line 177
    invoke-interface {v0, v5, v6, v4}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eq v1, v4, :cond_8

    .line 182
    .line 183
    if-eq v5, v4, :cond_8

    .line 184
    .line 185
    if-eqz v3, :cond_7

    .line 186
    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v4, "Loading mapping "

    .line 193
    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v4, " -> "

    .line 209
    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 232
    .line 233
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_8
    const-string v1, "Invalid translation table file format"

    .line 239
    .line 240
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_9
    if-eqz v3, :cond_a

    .line 246
    .line 247
    const-string v1, "load7BitTranslationTableFromXml: parsing successful, file loaded"

    .line 248
    .line 249
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :catchall_0
    move-exception v1

    .line 254
    goto :goto_2

    .line 255
    :catch_0
    move-exception v1

    .line 256
    :try_start_1
    const-string v3, "Got exception while loading 7BitTranslationTable file."

    .line 257
    .line 258
    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .line 260
    .line 261
    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    .line 262
    .line 263
    if-eqz v1, :cond_b

    .line 264
    .line 265
    :cond_a
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 266
    .line 267
    .line 268
    :cond_b
    return-void

    .line 269
    :goto_2
    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    .line 270
    .line 271
    if-eqz v2, :cond_c

    .line 272
    .line 273
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 274
    .line 275
    .line 276
    :cond_c
    throw v1
.end method

.method private static noTranslationNeeded(CZ)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0

    .line 22
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public static translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "Sms7BitEncodingTranslator"

    .line 5
    .line 6
    const-string v1, "Null message can not be translated"

    .line 7
    .line 8
    invoke-static {p0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-gtz v1, :cond_1

    .line 17
    .line 18
    const-string p0, ""

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    new-instance v2, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    new-instance v2, Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    new-instance v2, Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->load7BitTranslationTableFromXml()V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    sput-boolean v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    .line 51
    .line 52
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-gtz v2, :cond_5

    .line 61
    .line 62
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-gtz v2, :cond_5

    .line 71
    .line 72
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-lez v2, :cond_7

    .line 81
    .line 82
    :cond_5
    new-array v0, v1, [C

    .line 83
    .line 84
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->useCdmaFormatForMoSms()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v3, 0x0

    .line 89
    :goto_0
    if-ge v3, v1, :cond_6

    .line 90
    .line 91
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-static {v4, v2}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translateIfNeeded(CZ)C

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    aput-char v4, v0, v3

    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_7
    return-object v0
.end method

.method private static translateIfNeeded(CZ)C
    .locals 3

    .line 1
    sget-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :cond_2
    :goto_1
    const-string v2, "Sms7BitEncodingTranslator"

    .line 34
    .line 35
    if-eq v0, v1, :cond_4

    .line 36
    .line 37
    sget-boolean p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " ("

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, ") translated to "

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    int-to-char p0, v0

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, ")"

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v2, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_3
    int-to-char p0, v0

    .line 93
    return p0

    .line 94
    :cond_4
    invoke-static {p0, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->noTranslationNeeded(CZ)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    sget-boolean p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "No translation needed for "

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, ", hex string:"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v0, "SmsMessage"

    .line 131
    .line 132
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_5
    return p0

    .line 136
    :cond_6
    sget-boolean p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v0, "No translation found for "

    .line 143
    .line 144
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p0, "! Replacing for empty space"

    .line 155
    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {v2, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_7
    const/16 p0, 0x20

    .line 167
    .line 168
    return p0
.end method

.method private static useCdmaFormatForMoSms()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    .line 26
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "3gpp2"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method
