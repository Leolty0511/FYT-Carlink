.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;,
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 56
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "a"

    aput-object v1, v0, v5

    const-string v1, "b"

    aput-object v1, v0, v6

    const-string v1, "c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 61
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "\u0001"

    aput-object v1, v0, v5

    const-string v1, "\u0002"

    aput-object v1, v0, v6

    const-string v1, "\u0003"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0004"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0006"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0007"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0008"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u007f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FLG(n)"

    aput-object v1, v0, v3

    const-string v1, "\r"

    aput-object v1, v0, v4

    const-string v1, "\r\n"

    aput-object v1, v0, v5

    const-string v1, ". "

    aput-object v1, v0, v6

    const-string v1, ", "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ": "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 72
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v3

    const-string v1, " "

    aput-object v1, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v5

    const-string v1, "1"

    aput-object v1, v0, v6

    const-string v1, "2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    .line 76
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBoolArrayToByteArray([Z)[B
    .locals 3
    .param p0, "boolArr"    # [Z

    .prologue
    .line 438
    array-length v2, p0

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    new-array v0, v2, [B

    .line 439
    .local v0, "byteArr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 440
    mul-int/lit8 v2, v1, 0x8

    invoke-static {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readByte([ZI)B

    move-result v2

    aput-byte v2, v0, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-object v0
.end method

.method private correctBits([Z)Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;
    .locals 22
    .param p1, "rawbits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 289
    const/4 v3, 0x6

    .line 290
    .local v3, "codewordSize":I
    sget-object v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 302
    .local v10, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v16

    .line 303
    .local v16, "numDataCodewords":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    div-int v15, v20, v3

    .line 304
    .local v15, "numCodewords":I
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 305
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v20

    throw v20

    .line 291
    .end local v3    # "codewordSize":I
    .end local v10    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    .end local v15    # "numCodewords":I
    .end local v16    # "numDataCodewords":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 292
    const/16 v3, 0x8

    .line 293
    .restart local v3    # "codewordSize":I
    sget-object v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v10    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 294
    .end local v3    # "codewordSize":I
    .end local v10    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v20

    const/16 v21, 0x16

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 295
    const/16 v3, 0xa

    .line 296
    .restart local v3    # "codewordSize":I
    sget-object v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v10    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 298
    .end local v3    # "codewordSize":I
    .end local v10    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_2
    const/16 v3, 0xc

    .line 299
    .restart local v3    # "codewordSize":I
    sget-object v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v10    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto :goto_0

    .line 307
    .restart local v15    # "numCodewords":I
    .restart local v16    # "numDataCodewords":I
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    rem-int v17, v20, v3

    .line 309
    .local v17, "offset":I
    new-array v6, v15, [I

    .line 310
    .local v6, "dataWords":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_4

    .line 311
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v20

    aput v20, v6, v11

    .line 310
    add-int/lit8 v11, v11, 0x1

    add-int v17, v17, v3

    goto :goto_1

    .line 314
    :cond_4
    const/4 v8, 0x0

    .line 316
    .local v8, "errorsCorrected":I
    :try_start_0
    new-instance v18, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 317
    .local v18, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    sub-int v20, v15, v16

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount([II)I
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 324
    const/16 v20, 0x1

    shl-int v20, v20, v3

    add-int/lit8 v14, v20, -0x1

    .line 325
    .local v14, "mask":I
    const/16 v19, 0x0

    .line 326
    .local v19, "stuffedBits":I
    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_9

    .line 327
    aget v5, v6, v11

    .line 328
    .local v5, "dataWord":I
    if-eqz v5, :cond_5

    if-ne v5, v14, :cond_6

    .line 329
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v20

    throw v20

    .line 318
    .end local v5    # "dataWord":I
    .end local v14    # "mask":I
    .end local v18    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    .end local v19    # "stuffedBits":I
    :catch_0
    move-exception v9

    .line 319
    .local v9, "ex":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {v9}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object v20

    throw v20

    .line 330
    .end local v9    # "ex":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .restart local v5    # "dataWord":I
    .restart local v14    # "mask":I
    .restart local v18    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    .restart local v19    # "stuffedBits":I
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_7

    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_8

    .line 331
    :cond_7
    add-int/lit8 v19, v19, 0x1

    .line 326
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 335
    .end local v5    # "dataWord":I
    :cond_9
    mul-int v20, v16, v3

    sub-int v20, v20, v19

    move/from16 v0, v20

    new-array v4, v0, [Z

    .line 336
    .local v4, "correctedBits":[Z
    const/4 v12, 0x0

    .line 337
    .local v12, "index":I
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_e

    .line 338
    aget v5, v6, v11

    .line 339
    .restart local v5    # "dataWord":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_a

    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_c

    .line 341
    :cond_a
    add-int v20, v12, v3

    add-int/lit8 v21, v20, -0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v5, v0, :cond_b

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v4, v12, v0, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 342
    add-int/lit8 v20, v3, -0x1

    add-int v12, v12, v20

    .line 337
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 341
    :cond_b
    const/16 v20, 0x0

    goto :goto_4

    .line 344
    :cond_c
    add-int/lit8 v2, v3, -0x1

    .local v2, "bit":I
    move v13, v12

    .end local v12    # "index":I
    .local v13, "index":I
    :goto_6
    if-ltz v2, :cond_f

    .line 345
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    const/16 v20, 0x1

    shl-int v20, v20, v2

    and-int v20, v20, v5

    if-eqz v20, :cond_d

    const/16 v20, 0x1

    :goto_7
    aput-boolean v20, v4, v13

    .line 344
    add-int/lit8 v2, v2, -0x1

    move v13, v12

    .end local v12    # "index":I
    .restart local v13    # "index":I
    goto :goto_6

    .line 345
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :cond_d
    const/16 v20, 0x0

    goto :goto_7

    .line 350
    .end local v2    # "bit":I
    .end local v5    # "dataWord":I
    :cond_e
    sub-int v20, v15, v16

    mul-int/lit8 v20, v20, 0x64

    div-int v7, v20, v15

    .line 351
    .local v7, "ecLevel":I
    new-instance v20, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8, v7}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;-><init>([ZII)V

    return-object v20

    .end local v7    # "ecLevel":I
    .end local v12    # "index":I
    .restart local v2    # "bit":I
    .restart local v5    # "dataWord":I
    .restart local v13    # "index":I
    :cond_f
    move v12, v13

    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_5
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 23
    .param p1, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v7

    .line 361
    .local v7, "compact":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v12

    .line 362
    .local v12, "layers":I
    if-eqz v7, :cond_0

    const/16 v20, 0xb

    :goto_0
    mul-int/lit8 v21, v12, 0x4

    add-int v4, v20, v21

    .line 363
    .local v4, "baseMatrixSize":I
    new-array v3, v4, [I

    .line 364
    .local v3, "alignmentMap":[I
    invoke-static {v12, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .line 366
    .local v17, "rawbits":[Z
    if-eqz v7, :cond_1

    .line 367
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 368
    aput v9, v3, v9

    .line 367
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 362
    .end local v3    # "alignmentMap":[I
    .end local v4    # "baseMatrixSize":I
    .end local v9    # "i":I
    .end local v17    # "rawbits":[Z
    :cond_0
    const/16 v20, 0xe

    goto :goto_0

    .line 371
    .restart local v3    # "alignmentMap":[I
    .restart local v4    # "baseMatrixSize":I
    .restart local v17    # "rawbits":[Z
    :cond_1
    add-int/lit8 v20, v4, 0x1

    div-int/lit8 v21, v4, 0x2

    add-int/lit8 v21, v21, -0x1

    div-int/lit8 v21, v21, 0xf

    mul-int/lit8 v21, v21, 0x2

    add-int v14, v20, v21

    .line 372
    .local v14, "matrixSize":I
    div-int/lit8 v16, v4, 0x2

    .line 373
    .local v16, "origCenter":I
    div-int/lit8 v5, v14, 0x2

    .line 374
    .local v5, "center":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    .line 375
    div-int/lit8 v20, v9, 0xf

    add-int v15, v9, v20

    .line 376
    .local v15, "newOffset":I
    sub-int v20, v16, v9

    add-int/lit8 v20, v20, -0x1

    sub-int v21, v5, v15

    add-int/lit8 v21, v21, -0x1

    aput v21, v3, v20

    .line 377
    add-int v20, v16, v9

    add-int v21, v5, v15

    add-int/lit8 v21, v21, 0x1

    aput v21, v3, v20

    .line 374
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 380
    .end local v5    # "center":I
    .end local v14    # "matrixSize":I
    .end local v15    # "newOffset":I
    .end local v16    # "origCenter":I
    :cond_2
    const/4 v9, 0x0

    const/16 v18, 0x0

    .local v18, "rowOffset":I
    :goto_3
    if-ge v9, v12, :cond_6

    .line 381
    sub-int v20, v12, v9

    mul-int/lit8 v21, v20, 0x4

    if-eqz v7, :cond_3

    const/16 v20, 0x9

    :goto_4
    add-int v19, v21, v20

    .line 383
    .local v19, "rowSize":I
    mul-int/lit8 v13, v9, 0x2

    .line 385
    .local v13, "low":I
    add-int/lit8 v20, v4, -0x1

    sub-int v8, v20, v13

    .line 387
    .local v8, "high":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 388
    mul-int/lit8 v6, v10, 0x2

    .line 389
    .local v6, "columnOffset":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_6
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    .line 391
    add-int v20, v18, v6

    add-int v20, v20, v11

    add-int v21, v13, v11

    aget v21, v3, v21

    add-int v22, v13, v10

    aget v22, v3, v22

    .line 392
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 394
    mul-int/lit8 v20, v19, 0x2

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    add-int v21, v13, v10

    aget v21, v3, v21

    sub-int v22, v8, v11

    aget v22, v3, v22

    .line 395
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 397
    mul-int/lit8 v20, v19, 0x4

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    sub-int v21, v8, v11

    aget v21, v3, v21

    sub-int v22, v8, v10

    aget v22, v3, v22

    .line 398
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 400
    mul-int/lit8 v20, v19, 0x6

    add-int v20, v20, v18

    add-int v20, v20, v6

    add-int v20, v20, v11

    sub-int v21, v8, v10

    aget v21, v3, v21

    add-int v22, v13, v11

    aget v22, v3, v22

    .line 401
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    aput-boolean v21, v17, v20

    .line 389
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 381
    .end local v6    # "columnOffset":I
    .end local v8    # "high":I
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v13    # "low":I
    .end local v19    # "rowSize":I
    :cond_3
    const/16 v20, 0xc

    goto/16 :goto_4

    .line 387
    .restart local v6    # "columnOffset":I
    .restart local v8    # "high":I
    .restart local v10    # "j":I
    .restart local v11    # "k":I
    .restart local v13    # "low":I
    .restart local v19    # "rowSize":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 404
    .end local v6    # "columnOffset":I
    .end local v11    # "k":I
    :cond_5
    mul-int/lit8 v20, v19, 0x8

    add-int v18, v18, v20

    .line 380
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 406
    .end local v8    # "high":I
    .end local v10    # "j":I
    .end local v13    # "low":I
    .end local v19    # "rowSize":I
    :cond_6
    return-object v17
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 2
    .param p0, "table"    # Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .param p1, "code"    # I

    .prologue
    .line 249
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 259
    :goto_0
    return-object v0

    .line 253
    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 255
    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 257
    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 259
    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 23
    .param p0, "correctedBits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v0, p0

    array-length v9, v0

    .line 106
    .local v9, "endIndex":I
    sget-object v11, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 107
    .local v11, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v17, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 111
    .local v17, "shiftTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x5

    div-int/lit8 v21, v21, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .local v16, "result":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v6, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Lcom/google/zxing/aztec/decoder/Decoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 118
    .local v8, "encoding":Ljava/nio/charset/Charset;
    const/4 v10, 0x0

    .line 119
    .local v10, "index":I
    :cond_0
    :goto_0
    if-ge v10, v9, :cond_1

    .line 120
    sget-object v21, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 121
    sub-int v21, v9, v10

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 213
    :cond_1
    :try_start_0
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 124
    :cond_2
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v10, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v12

    .line 125
    .local v12, "length":I
    add-int/lit8 v10, v10, 0x5

    .line 126
    if-nez v12, :cond_3

    .line 127
    sub-int v21, v9, v10

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 130
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v10, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v21

    add-int/lit8 v12, v21, 0x1f

    .line 131
    add-int/lit8 v10, v10, 0xb

    .line 133
    :cond_3
    const/4 v3, 0x0

    .local v3, "charCount":I
    :goto_1
    if-ge v3, v12, :cond_4

    .line 134
    sub-int v21, v9, v10

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 135
    move v10, v9

    .line 143
    :cond_4
    move-object/from16 v17, v11

    .line 144
    goto :goto_0

    .line 138
    :cond_5
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v10, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v5

    .line 139
    .local v5, "code":I
    int-to-byte v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    add-int/lit8 v10, v10, 0x8

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "charCount":I
    .end local v5    # "code":I
    .end local v12    # "length":I
    :cond_6
    sget-object v21, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v18, 0x4

    .line 146
    .local v18, "size":I
    :goto_2
    sub-int v21, v9, v10

    move/from16 v0, v21

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 149
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v10, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v5

    .line 150
    .restart local v5    # "code":I
    add-int v10, v10, v18

    .line 151
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v19

    .line 152
    .local v19, "str":Ljava/lang/String;
    const-string v21, "FLG(n)"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 153
    sub-int v21, v9, v10

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 156
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v10, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v13

    .line 157
    .local v13, "n":I
    add-int/lit8 v10, v10, 0x3

    .line 160
    :try_start_1
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 165
    sparse-switch v13, :sswitch_data_0

    .line 173
    const/4 v7, 0x0

    .line 174
    .local v7, "eci":I
    sub-int v21, v9, v10

    mul-int/lit8 v22, v13, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 192
    .end local v7    # "eci":I
    :goto_3
    move-object/from16 v17, v11

    .line 193
    goto/16 :goto_0

    .line 145
    .end local v5    # "code":I
    .end local v13    # "n":I
    .end local v18    # "size":I
    .end local v19    # "str":Ljava/lang/String;
    :cond_7
    const/16 v18, 0x5

    goto :goto_2

    .line 161
    .restart local v5    # "code":I
    .restart local v13    # "n":I
    .restart local v18    # "size":I
    .restart local v19    # "str":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 162
    .local v20, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 167
    .end local v20    # "uee":Ljava/io/UnsupportedEncodingException;
    :sswitch_0
    const/16 v21, 0x1d

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 170
    :sswitch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v21

    throw v21

    .line 183
    .restart local v7    # "eci":I
    .local v15, "nextDigit":I
    :cond_8
    mul-int/lit8 v21, v7, 0xa

    add-int/lit8 v22, v15, -0x2

    add-int v7, v21, v22

    move v14, v13

    .line 177
    .end local v13    # "n":I
    .end local v15    # "nextDigit":I
    .local v14, "n":I
    :goto_4
    add-int/lit8 v13, v14, -0x1

    .end local v14    # "n":I
    .restart local v13    # "n":I
    if-lez v14, :cond_a

    .line 178
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v10, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v15

    .line 179
    .restart local v15    # "nextDigit":I
    add-int/lit8 v10, v10, 0x4

    .line 180
    const/16 v21, 0x2

    move/from16 v0, v21

    if-lt v15, v0, :cond_9

    const/16 v21, 0xb

    move/from16 v0, v21

    if-le v15, v0, :cond_8

    .line 181
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v21

    throw v21

    .line 185
    .end local v15    # "nextDigit":I
    :cond_a
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v4

    .line 186
    .local v4, "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    if-nez v4, :cond_b

    .line 187
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v21

    throw v21

    .line 189
    :cond_b
    invoke-virtual {v4}, Lcom/google/zxing/common/CharacterSetECI;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    goto :goto_3

    .line 193
    .end local v4    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v7    # "eci":I
    .end local v13    # "n":I
    :cond_c
    const-string v21, "CTRL_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 198
    move-object/from16 v11, v17

    .line 199
    const/16 v21, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v17

    .line 200
    const/16 v21, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x4c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 201
    move-object/from16 v11, v17

    goto/16 :goto_0

    .line 205
    :cond_d
    sget-object v21, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 206
    .local v2, "b":[B
    const/16 v21, 0x0

    array-length v0, v2

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 208
    move-object/from16 v17, v11

    goto/16 :goto_0

    .line 214
    .end local v2    # "b":[B
    .end local v5    # "code":I
    .end local v18    # "size":I
    .end local v19    # "str":Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 216
    .restart local v20    # "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .end local v20    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "code":I
    .restart local v7    # "eci":I
    .restart local v13    # "n":I
    .restart local v18    # "size":I
    .restart local v19    # "str":Ljava/lang/String;
    :cond_e
    move v14, v13

    .end local v13    # "n":I
    .restart local v14    # "n":I
    goto/16 :goto_4

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1
    .param p0, "t"    # C

    .prologue
    .line 225
    sparse-switch p0, :sswitch_data_0

    .line 238
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    :goto_0
    return-object v0

    .line 227
    :sswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 229
    :sswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 231
    :sswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 233
    :sswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 235
    :sswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 1
    .param p0, "correctedBits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readByte([ZI)B
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I

    .prologue
    const/16 v2, 0x8

    .line 427
    array-length v1, p0

    sub-int v0, v1, p1

    .line 428
    .local v0, "n":I
    if-lt v0, v2, :cond_0

    .line 429
    invoke-static {p0, p1, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    int-to-byte v1, v1

    .line 431
    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x8

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    goto :goto_0
.end method

.method private static readCode([ZII)I
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "res":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    .line 415
    shl-int/lit8 v1, v1, 0x1

    .line 416
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    .line 417
    or-int/lit8 v1, v1, 0x1

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_1
    return v1
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .prologue
    .line 446
    if-eqz p1, :cond_0

    const/16 v0, 0x58

    :goto_0
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_0
    const/16 v0, 0x70

    goto :goto_0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 11
    .param p1, "detectorResult"    # Lcom/google/zxing/aztec/AztecDetectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 82
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    .line 83
    .local v2, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v4

    .line 84
    .local v4, "rawbits":[Z
    invoke-direct {p0, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;

    move-result-object v0

    .line 85
    .local v0, "correctedBits":Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$000(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)[Z

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/aztec/decoder/Decoder;->convertBoolArrayToByteArray([Z)[B

    move-result-object v3

    .line 86
    .local v3, "rawBytes":[B
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$000(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)[Z

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "result":Ljava/lang/String;
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    const/4 v6, 0x0

    const-string v7, "%d%%"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 88
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$100(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v5, v6, v7}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 89
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$000(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)[Z

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/DecoderResult;->setNumBits(I)V

    .line 90
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;->access$200(Lcom/google/zxing/aztec/decoder/Decoder$CorrectedBitsResult;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 91
    return-object v1
.end method
