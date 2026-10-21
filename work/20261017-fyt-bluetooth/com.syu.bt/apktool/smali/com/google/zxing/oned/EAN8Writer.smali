.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x43


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
    .locals 12
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 50
    .local v5, "length":I
    packed-switch v5, :pswitch_data_0

    .line 71
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested contents should be 7 or 8 digits long, but got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 55
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    .local v0, "check":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    .end local v0    # "check":I
    :cond_0
    invoke-static {p1}, Lcom/google/zxing/oned/EAN8Writer;->checkNumeric(Ljava/lang/String;)V

    .line 77
    const/16 v8, 0x43

    new-array v7, v8, [Z

    .line 78
    .local v7, "result":[Z
    const/4 v6, 0x0

    .line 80
    .local v6, "pos":I
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v7, v6, v8, v9}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    .line 82
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v8, 0x3

    if-gt v3, v8, :cond_1

    .line 83
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 84
    .local v1, "digit":I
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v8, v8, v1

    invoke-static {v7, v6, v8, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .end local v6    # "pos":I
    .end local v7    # "result":[Z
    :catch_0
    move-exception v2

    .line 57
    .local v2, "fe":Lcom/google/zxing/FormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 63
    .end local v2    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 64
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Contents do not pass checksum"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :catch_1
    move-exception v4

    .line 67
    .local v4, "ignored":Lcom/google/zxing/FormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Illegal contents"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    .end local v4    # "ignored":Lcom/google/zxing/FormatException;
    .restart local v3    # "i":I
    .restart local v6    # "pos":I
    .restart local v7    # "result":[Z
    :cond_1
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v7, v6, v8, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    .line 89
    const/4 v3, 0x4

    :goto_1
    const/4 v8, 0x7

    if-gt v3, v8, :cond_2

    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 91
    .restart local v1    # "digit":I
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v8, v8, v1

    invoke-static {v7, v6, v8, v9}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    .end local v1    # "digit":I
    :cond_2
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v7, v6, v8, v9}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    .line 95
    return-object v7

    .line 50
    nop

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
    .line 41
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
