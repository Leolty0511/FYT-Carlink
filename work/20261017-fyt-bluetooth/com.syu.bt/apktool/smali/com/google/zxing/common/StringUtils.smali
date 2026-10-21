.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/nio/charset/Charset;

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field public static final GB2312_CHARSET:Ljava/nio/charset/Charset;

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field public static final SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 34
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    sput-object v4, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 39
    :try_start_0
    const-string v4, "SJIS"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 44
    .local v2, "sjisCharset":Ljava/nio/charset/Charset;
    :goto_0
    sput-object v2, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 50
    :try_start_1
    const-string v4, "GB2312"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 55
    .local v1, "gb2312Charset":Ljava/nio/charset/Charset;
    :goto_1
    sput-object v1, Lcom/google/zxing/common/StringUtils;->GB2312_CHARSET:Ljava/nio/charset/Charset;

    .line 61
    :try_start_2
    const-string v4, "EUC_JP"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 66
    .local v0, "eucJpCharset":Ljava/nio/charset/Charset;
    :goto_2
    sput-object v0, Lcom/google/zxing/common/StringUtils;->EUC_JP:Ljava/nio/charset/Charset;

    .line 68
    sget-object v4, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    sget-object v5, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 69
    invoke-virtual {v4, v5}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v4, Lcom/google/zxing/common/StringUtils;->EUC_JP:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/zxing/common/StringUtils;->EUC_JP:Ljava/nio/charset/Charset;

    sget-object v5, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 70
    invoke-virtual {v4, v5}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_3
    sput-boolean v4, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 68
    return-void

    .line 40
    .end local v0    # "eucJpCharset":Ljava/nio/charset/Charset;
    .end local v1    # "gb2312Charset":Ljava/nio/charset/Charset;
    .end local v2    # "sjisCharset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v3

    .line 42
    .local v3, "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    const/4 v2, 0x0

    .restart local v2    # "sjisCharset":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 51
    .end local v3    # "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v3

    .line 53
    .restart local v3    # "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    const/4 v1, 0x0

    .restart local v1    # "gb2312Charset":Ljava/nio/charset/Charset;
    goto :goto_1

    .line 62
    .end local v3    # "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_2
    move-exception v3

    .line 64
    .restart local v3    # "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    const/4 v0, 0x0

    .restart local v0    # "eucJpCharset":Ljava/nio/charset/Charset;
    goto :goto_2

    .line 70
    .end local v3    # "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;
    .locals 22
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/nio/charset/Charset;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_0

    sget-object v20, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 110
    sget-object v20, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v20

    .line 259
    :goto_0
    return-object v20

    .line 114
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/16 v20, 0x0

    aget-byte v20, p0, v20

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    aget-byte v20, p0, v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    :cond_1
    const/16 v20, 0x0

    aget-byte v20, p0, v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    aget-byte v20, p0, v20

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 117
    :cond_2
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 122
    :cond_3
    move-object/from16 v0, p0

    array-length v7, v0

    .line 123
    .local v7, "length":I
    const/4 v2, 0x1

    .line 124
    .local v2, "canBeISO88591":Z
    sget-object v20, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v20, :cond_9

    const/4 v3, 0x1

    .line 125
    .local v3, "canBeShiftJIS":Z
    :goto_1
    const/4 v4, 0x1

    .line 126
    .local v4, "canBeUTF8":Z
    const/16 v17, 0x0

    .line 127
    .local v17, "utf8BytesLeft":I
    const/4 v14, 0x0

    .line 128
    .local v14, "utf2BytesChars":I
    const/4 v15, 0x0

    .line 129
    .local v15, "utf3BytesChars":I
    const/16 v16, 0x0

    .line 130
    .local v16, "utf4BytesChars":I
    const/4 v8, 0x0

    .line 131
    .local v8, "sjisBytesLeft":I
    const/4 v11, 0x0

    .line 132
    .local v11, "sjisKatakanaChars":I
    const/4 v10, 0x0

    .line 133
    .local v10, "sjisCurKatakanaWordLength":I
    const/4 v9, 0x0

    .line 134
    .local v9, "sjisCurDoubleBytesWordLength":I
    const/4 v13, 0x0

    .line 135
    .local v13, "sjisMaxKatakanaWordLength":I
    const/4 v12, 0x0

    .line 136
    .local v12, "sjisMaxDoubleBytesWordLength":I
    const/4 v6, 0x0

    .line 138
    .local v6, "isoHighOther":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    const/16 v20, 0x0

    aget-byte v20, p0, v20

    const/16 v21, -0x11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    aget-byte v20, p0, v20

    const/16 v21, -0x45

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v20, 0x2

    aget-byte v20, p0, v20

    const/16 v21, -0x41

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v18, 0x1

    .line 143
    .local v18, "utf8bom":Z
    :goto_2
    const/4 v5, 0x0

    .line 144
    .local v5, "i":I
    :goto_3
    if-ge v5, v7, :cond_19

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_19

    .line 147
    :cond_4
    aget-byte v20, p0, v5

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 150
    .local v19, "value":I
    if-eqz v4, :cond_5

    .line 151
    if-lez v17, :cond_c

    .line 152
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 153
    const/4 v4, 0x0

    .line 182
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 183
    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_11

    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 184
    const/4 v2, 0x0

    .line 191
    :cond_6
    :goto_5
    if-eqz v3, :cond_8

    .line 192
    if-lez v8, :cond_14

    .line 193
    const/16 v20, 0x40

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v20, 0xfc

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    .line 194
    :cond_7
    const/4 v3, 0x0

    .line 145
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 124
    .end local v3    # "canBeShiftJIS":Z
    .end local v4    # "canBeUTF8":Z
    .end local v5    # "i":I
    .end local v6    # "isoHighOther":I
    .end local v8    # "sjisBytesLeft":I
    .end local v9    # "sjisCurDoubleBytesWordLength":I
    .end local v10    # "sjisCurKatakanaWordLength":I
    .end local v11    # "sjisKatakanaChars":I
    .end local v12    # "sjisMaxDoubleBytesWordLength":I
    .end local v13    # "sjisMaxKatakanaWordLength":I
    .end local v14    # "utf2BytesChars":I
    .end local v15    # "utf3BytesChars":I
    .end local v16    # "utf4BytesChars":I
    .end local v17    # "utf8BytesLeft":I
    .end local v18    # "utf8bom":Z
    .end local v19    # "value":I
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 138
    .restart local v3    # "canBeShiftJIS":Z
    .restart local v4    # "canBeUTF8":Z
    .restart local v6    # "isoHighOther":I
    .restart local v8    # "sjisBytesLeft":I
    .restart local v9    # "sjisCurDoubleBytesWordLength":I
    .restart local v10    # "sjisCurKatakanaWordLength":I
    .restart local v11    # "sjisKatakanaChars":I
    .restart local v12    # "sjisMaxDoubleBytesWordLength":I
    .restart local v13    # "sjisMaxKatakanaWordLength":I
    .restart local v14    # "utf2BytesChars":I
    .restart local v15    # "utf3BytesChars":I
    .restart local v16    # "utf4BytesChars":I
    .restart local v17    # "utf8BytesLeft":I
    :cond_a
    const/16 v18, 0x0

    goto :goto_2

    .line 155
    .restart local v5    # "i":I
    .restart local v18    # "utf8bom":Z
    .restart local v19    # "value":I
    :cond_b
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    .line 157
    :cond_c
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 158
    and-int/lit8 v20, v19, 0x40

    if-nez v20, :cond_d

    .line 159
    const/4 v4, 0x0

    goto :goto_4

    .line 161
    :cond_d
    add-int/lit8 v17, v17, 0x1

    .line 162
    and-int/lit8 v20, v19, 0x20

    if-nez v20, :cond_e

    .line 163
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 165
    :cond_e
    add-int/lit8 v17, v17, 0x1

    .line 166
    and-int/lit8 v20, v19, 0x10

    if-nez v20, :cond_f

    .line 167
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 169
    :cond_f
    add-int/lit8 v17, v17, 0x1

    .line 170
    and-int/lit8 v20, v19, 0x8

    if-nez v20, :cond_10

    .line 171
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 173
    :cond_10
    const/4 v4, 0x0

    goto :goto_4

    .line 185
    :cond_11
    const/16 v20, 0x9f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    const/16 v20, 0xc0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_12

    const/16 v20, 0xd7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    const/16 v20, 0xf7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 186
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 196
    :cond_13
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 198
    :cond_14
    const/16 v20, 0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    const/16 v20, 0xef

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_16

    .line 199
    :cond_15
    const/4 v3, 0x0

    goto :goto_6

    .line 200
    :cond_16
    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_17

    const/16 v20, 0xe0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 201
    add-int/lit8 v11, v11, 0x1

    .line 202
    const/4 v9, 0x0

    .line 203
    add-int/lit8 v10, v10, 0x1

    .line 204
    if-le v10, v13, :cond_8

    .line 205
    move v13, v10

    goto/16 :goto_6

    .line 207
    :cond_17
    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_18

    .line 208
    add-int/lit8 v8, v8, 0x1

    .line 210
    const/4 v10, 0x0

    .line 211
    add-int/lit8 v9, v9, 0x1

    .line 212
    if-le v9, v12, :cond_8

    .line 213
    move v12, v9

    goto/16 :goto_6

    .line 217
    :cond_18
    const/4 v10, 0x0

    .line 218
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 223
    .end local v19    # "value":I
    :cond_19
    if-eqz v4, :cond_1a

    if-lez v17, :cond_1a

    .line 224
    const/4 v4, 0x0

    .line 226
    :cond_1a
    if-eqz v3, :cond_1b

    if-lez v8, :cond_1b

    .line 227
    const/4 v3, 0x0

    .line 231
    :cond_1b
    if-eqz v4, :cond_1d

    if-nez v18, :cond_1c

    add-int v20, v14, v15

    add-int v20, v20, v16

    if-lez v20, :cond_1d

    .line 232
    :cond_1c
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    .line 235
    :cond_1d
    if-eqz v3, :cond_1f

    sget-boolean v20, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v20, :cond_1e

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v13, v0, :cond_1e

    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v12, v0, :cond_1f

    .line 236
    :cond_1e
    sget-object v20, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    .line 243
    :cond_1f
    if-eqz v2, :cond_23

    if-eqz v3, :cond_23

    .line 244
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v13, v0, :cond_20

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v11, v0, :cond_21

    :cond_20
    mul-int/lit8 v20, v6, 0xa

    move/from16 v0, v20

    if-lt v0, v7, :cond_22

    :cond_21
    sget-object v20, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    :cond_22
    sget-object v20, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    .line 249
    :cond_23
    if-eqz v2, :cond_24

    .line 250
    sget-object v20, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    .line 252
    :cond_24
    if-eqz v3, :cond_25

    .line 253
    sget-object v20, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    .line 255
    :cond_25
    if-eqz v4, :cond_26

    .line 256
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    .line 259
    :cond_26
    sget-object v20, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    goto/16 :goto_0
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p0, p1}, Lcom/google/zxing/common/StringUtils;->guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 87
    .local v0, "c":Ljava/nio/charset/Charset;
    sget-object v1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "SJIS"

    .line 96
    :goto_0
    return-object v1

    .line 90
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "UTF8"

    goto :goto_0

    .line 93
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-string v1, "ISO8859_1"

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
