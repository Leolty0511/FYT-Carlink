.class public final Lcom/google/zxing/common/ECIEncoderSet;
.super Ljava/lang/Object;
.source "ECIEncoderSet.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENCODERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encoders:[Ljava/nio/charset/CharsetEncoder;

.field private final priorityEncoderIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 40
    const-class v2, Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/google/zxing/common/ECIEncoderSet;->$assertionsDisabled:Z

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    .line 45
    const/16 v2, 0x14

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "IBM437"

    aput-object v2, v1, v4

    const-string v2, "ISO-8859-2"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "ISO-8859-3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ISO-8859-4"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ISO-8859-5"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "ISO-8859-6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ISO-8859-7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ISO-8859-8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ISO-8859-9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ISO-8859-10"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ISO-8859-11"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ISO-8859-13"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ISO-8859-14"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "ISO-8859-15"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "ISO-8859-16"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "windows-1250"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "windows-1251"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "windows-1252"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "windows-1256"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "Shift_JIS"

    aput-object v3, v1, v2

    .line 65
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v0, v1, v4

    .line 66
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 68
    :try_start_0
    sget-object v3, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "names":[Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 40
    goto/16 :goto_0

    .line 74
    .restart local v1    # "names":[Ljava/lang/String;
    :cond_2
    return-void

    .line 69
    .restart local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .locals 12
    .param p1, "stringToEncode"    # Ljava/lang/String;
    .param p2, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p3, "fnc1"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v7, "neededEncoders":Ljava/util/List;, "Ljava/util/List<Ljava/nio/charset/CharsetEncoder;>;"
    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v6, 0x1

    .line 95
    .local v6, "needUnicodeEncoder":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_7

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "canEncode":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/CharsetEncoder;

    .line 98
    .local v2, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 99
    .local v0, "c":C
    if-eq v0, p3, :cond_1

    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    :cond_1
    const/4 v1, 0x1

    .line 105
    .end local v0    # "c":C
    .end local v2    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :cond_2
    if-nez v1, :cond_4

    .line 107
    sget-object v9, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/CharsetEncoder;

    .line 108
    .restart local v2    # "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 111
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v1, 0x1

    .line 118
    .end local v2    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :cond_4
    if-nez v1, :cond_5

    .line 121
    const/4 v6, 0x1

    .line 95
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    .end local v1    # "canEncode":Z
    .end local v3    # "i":I
    .end local v6    # "needUnicodeEncoder":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 125
    .restart local v3    # "i":I
    .restart local v6    # "needUnicodeEncoder":Z
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    if-nez v6, :cond_9

    .line 127
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/nio/charset/CharsetEncoder;

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/charset/CharsetEncoder;

    aput-object v9, v10, v11

    iput-object v10, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 142
    :goto_2
    const/4 v8, -0x1

    .line 143
    .local v8, "priorityEncoderIndexValue":I
    if-eqz p2, :cond_8

    .line 144
    const/4 v3, 0x0

    :goto_3
    iget-object v9, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v9, v9

    if-ge v3, v9, :cond_8

    .line 145
    iget-object v9, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v9, v9, v3

    if-eqz v9, :cond_b

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 146
    move v8, v3

    .line 151
    :cond_8
    iput v8, p0, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    .line 153
    sget-boolean v9, Lcom/google/zxing/common/ECIEncoderSet;->$assertionsDisabled:Z

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 131
    .end local v8    # "priorityEncoderIndexValue":I
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    new-array v9, v9, [Ljava/nio/charset/CharsetEncoder;

    iput-object v9, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, "index":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/CharsetEncoder;

    .line 134
    .restart local v2    # "encoder":Ljava/nio/charset/CharsetEncoder;
    iget-object v10, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput-object v2, v10, v4

    move v4, v5

    .line 135
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_4

    .line 137
    .end local v2    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :cond_a
    iget-object v9, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v10

    aput-object v10, v9, v4

    .line 138
    iget-object v9, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v11

    aput-object v11, v9, v10

    goto :goto_2

    .line 144
    .end local v4    # "index":I
    .restart local v8    # "priorityEncoderIndexValue":I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 154
    :cond_c
    return-void
.end method


# virtual methods
.method public canEncode(CI)Z
    .locals 3
    .param p1, "c"    # C
    .param p2, "encoderIndex"    # I

    .prologue
    .line 182
    sget-boolean v1, Lcom/google/zxing/common/ECIEncoderSet;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v1, p2

    .line 184
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public encode(CI)[B
    .locals 3
    .param p1, "c"    # C
    .param p2, "encoderIndex"    # I

    .prologue
    .line 188
    sget-boolean v1, Lcom/google/zxing/common/ECIEncoderSet;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v1, p2

    .line 190
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    sget-boolean v1, Lcom/google/zxing/common/ECIEncoderSet;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/String;I)[B
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "encoderIndex"    # I

    .prologue
    .line 195
    sget-boolean v1, Lcom/google/zxing/common/ECIEncoderSet;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v1, p2

    .line 197
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public getCharset(I)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 166
    sget-boolean v0, Lcom/google/zxing/common/ECIEncoderSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    sget-boolean v0, Lcom/google/zxing/common/ECIEncoderSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getECIValue(I)I
    .locals 1
    .param p1, "encoderIndex"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    return v0
.end method

.method public getPriorityEncoderIndex()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v0, v0

    return v0
.end method
