.class public final Lcom/google/zxing/oned/UPCEWriter;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "UPCEWriter.java"


# static fields
.field private static final CODE_WIDTH:I = 0x33


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
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 45
    .local v7, "length":I
    packed-switch v7, :pswitch_data_0

    .line 66
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Requested contents should be 7 or 8 digits long, but got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 50
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    .local v0, "check":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    .end local v0    # "check":I
    :cond_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEWriter;->checkNumeric(Ljava/lang/String;)V

    .line 72
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 73
    .local v4, "firstDigit":I
    if-eqz v4, :cond_1

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1

    .line 74
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Number system must be 0 or 1"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 51
    .end local v4    # "firstDigit":I
    :catch_0
    move-exception v3

    .line 52
    .local v3, "fe":Lcom/google/zxing/FormatException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 58
    .end local v3    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 59
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Contents do not pass checksum"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :catch_1
    move-exception v6

    .line 62
    .local v6, "ignored":Lcom/google/zxing/FormatException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal contents"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 77
    .end local v6    # "ignored":Lcom/google/zxing/FormatException;
    .restart local v4    # "firstDigit":I
    :cond_1
    const/4 v11, 0x7

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 78
    .local v1, "checkDigit":I
    sget-object v11, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v11, v11, v4

    aget v8, v11, v1

    .line 79
    .local v8, "parities":I
    const/16 v11, 0x33

    new-array v10, v11, [Z

    .line 81
    .local v10, "result":[Z
    const/4 v11, 0x0

    sget-object v12, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v9

    .line 83
    .local v9, "pos":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    const/4 v11, 0x6

    if-gt v5, v11, :cond_3

    .line 84
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 85
    .local v2, "digit":I
    rsub-int/lit8 v11, v5, 0x6

    shr-int v11, v8, v11

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 86
    add-int/lit8 v2, v2, 0xa

    .line 88
    :cond_2
    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v11, v11, v2

    const/4 v12, 0x0

    invoke-static {v10, v9, v11, v12}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v11

    add-int/2addr v9, v11

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "digit":I
    :cond_3
    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    const/4 v12, 0x0

    invoke-static {v10, v9, v11, v12}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    .line 93
    return-object v10

    .line 45
    :pswitch_data_0
    .packed-switch 0x7
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
    .line 39
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
