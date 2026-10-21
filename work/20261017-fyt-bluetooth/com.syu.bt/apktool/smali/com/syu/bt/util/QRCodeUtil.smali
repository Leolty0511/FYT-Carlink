.class public Lcom/syu/bt/util/QRCodeUtil;
.super Ljava/lang/Object;
.source "QRCodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 20
    :try_start_0
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 21
    .local v0, "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "UTF-8"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p0

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    .line 28
    .local v8, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 29
    .local v10, "width":I
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 30
    .local v7, "height":I
    mul-int v1, v10, v7

    new-array v9, v1, [I

    .line 32
    .local v9, "pixels":[I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-lt v12, v7, :cond_0

    .line 38
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v7, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 41
    .end local v0    # "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    .end local v5    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v7    # "height":I
    .end local v8    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v9    # "pixels":[I
    .end local v10    # "width":I
    .end local v12    # "y":I
    :goto_1
    return-object v1

    .line 33
    .restart local v0    # "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    .restart local v5    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .restart local v7    # "height":I
    .restart local v8    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v9    # "pixels":[I
    .restart local v10    # "width":I
    .restart local v12    # "y":I
    :cond_0
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_2
    if-lt v11, v10, :cond_1

    .line 32
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 34
    :cond_1
    mul-int v1, v12, v10

    add-int v2, v1, v11

    invoke-virtual {v8, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, -0x1000000

    :goto_3
    aput v1, v9, v2
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 34
    :cond_2
    const/4 v1, -0x1

    goto :goto_3

    .line 39
    .end local v0    # "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    .end local v5    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v7    # "height":I
    .end local v8    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v9    # "pixels":[I
    .end local v10    # "width":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :catch_0
    move-exception v6

    .line 40
    .local v6, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v6}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 41
    const/4 v1, 0x0

    goto :goto_1
.end method
