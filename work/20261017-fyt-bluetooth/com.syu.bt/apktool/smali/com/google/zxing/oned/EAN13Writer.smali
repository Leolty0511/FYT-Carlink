.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN13Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 14
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 47
    .local v6, "length":I
    packed-switch v6, :pswitch_data_0

    .line 68
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested contents should be 12 or 13 digits long, but got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 52
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 56
    .local v0, "check":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    .end local v0    # "check":I
    :cond_0
    invoke-static {p1}, Lcom/google/zxing/oned/EAN13Writer;->checkNumeric(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 75
    .local v3, "firstDigit":I
    sget-object v10, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v7, v10, v3

    .line 76
    .local v7, "parities":I
    const/16 v10, 0x5f

    new-array v9, v10, [Z

    .line 77
    .local v9, "result":[Z
    const/4 v8, 0x0

    .line 79
    .local v8, "pos":I
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 82
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v10, 0x6

    if-gt v4, v10, :cond_2

    .line 83
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 84
    .local v1, "digit":I
    rsub-int/lit8 v10, v4, 0x6

    shr-int v10, v7, v10

    and-int/lit8 v10, v10, 0x1

    if-ne v10, v11, :cond_1

    .line 85
    add-int/lit8 v1, v1, 0xa

    .line 87
    :cond_1
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v10, v10, v1

    invoke-static {v9, v8, v10, v12}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "digit":I
    .end local v3    # "firstDigit":I
    .end local v4    # "i":I
    .end local v7    # "parities":I
    .end local v8    # "pos":I
    .end local v9    # "result":[Z
    :catch_0
    move-exception v2

    .line 54
    .local v2, "fe":Lcom/google/zxing/FormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 60
    .end local v2    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 61
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Contents do not pass checksum"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :catch_1
    move-exception v5

    .line 64
    .local v5, "ignored":Lcom/google/zxing/FormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Illegal contents"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 90
    .end local v5    # "ignored":Lcom/google/zxing/FormatException;
    .restart local v3    # "firstDigit":I
    .restart local v4    # "i":I
    .restart local v7    # "parities":I
    .restart local v8    # "pos":I
    .restart local v9    # "result":[Z
    :cond_2
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v9, v8, v10, v12}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 92
    const/4 v4, 0x7

    :goto_1
    const/16 v10, 0xc

    if-gt v4, v10, :cond_3

    .line 93
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 94
    .restart local v1    # "digit":I
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v10, v10, v1

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "digit":I
    :cond_3
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    .line 98
    return-object v9

    .line 47
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
