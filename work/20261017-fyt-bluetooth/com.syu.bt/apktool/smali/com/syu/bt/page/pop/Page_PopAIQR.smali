.class public Lcom/syu/bt/page/pop/Page_PopAIQR;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopAIQR.java"


# static fields
.field public static RunnAIUvEcnr:Ljava/lang/Runnable;

.field static isRunnAIUvEcnr:Z


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field btn_aiqc:Lcom/lsec/core/frame/ctrl/JButton;

.field ivQR:Landroid/view/View;

.field txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/bt/page/pop/Page_PopAIQR;->isRunnAIUvEcnr:Z

    .line 138
    new-instance v0, Lcom/syu/bt/page/pop/Page_PopAIQR$1;

    invoke-direct {v0}, Lcom/syu/bt/page/pop/Page_PopAIQR$1;-><init>()V

    sput-object v0, Lcom/syu/bt/page/pop/Page_PopAIQR;->RunnAIUvEcnr:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 5
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 42
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v2}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 43
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->actBt:Lcom/syu/bt/Act_Bt;

    .line 45
    iget-object v2, p2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v3, 0x2726

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 47
    .local v1, "pageDlg":Lcom/lsec/core/frame/ctrl/JPage;
    const/16 v2, 0x2897

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->ivQR:Landroid/view/View;

    .line 48
    const-string v2, "ai"

    const-string v3, "  00 Page_PopAIQR aiStrQR  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v2, Lcom/syu/bt/App_Bt;->aiStrQR:Ljava/lang/String;

    invoke-static {v2}, Lcom/syu/bt/App_Bt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_ai6"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v2, Lcom/syu/bt/App_Bt;->aiStrQR:Ljava/lang/String;

    const/16 v3, 0x15e

    invoke-direct {p0, v2, v3}, Lcom/syu/bt/page/pop/Page_PopAIQR;->createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const-string v2, "ai"

    const-string v3, "  11 Page_PopAIQR "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->ivQR:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 58
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->ivQR:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const-string v2, "ai"

    const-string v3, "  22 Page_PopAIQR  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v2, 0x2899

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    .line 66
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_2

    .line 67
    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v2, :cond_4

    .line 68
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_ai5"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_2
    :goto_1
    const/16 v2, 0x2898

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->btn_aiqc:Lcom/lsec/core/frame/ctrl/JButton;

    .line 73
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->btn_aiqc:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->btn_aiqc:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v3, Lcom/syu/bt/page/pop/Page_PopAIQR$2;

    invoke-direct {v3, p0}, Lcom/syu/bt/page/pop/Page_PopAIQR$2;-><init>(Lcom/syu/bt/page/pop/Page_PopAIQR;)V

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_ai6"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_ai7"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 149
    :try_start_0
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  00 createQRCode content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 151
    .local v0, "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  11 createQRCode content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "UTF-8"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  22 createQRCode content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    .line 159
    .local v8, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 160
    .local v10, "width":I
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 161
    .local v7, "height":I
    mul-int v1, v10, v7

    new-array v9, v1, [I

    .line 162
    .local v9, "pixels":[I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-lt v12, v7, :cond_0

    .line 168
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  33 createQRCode content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v7, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 172
    .end local v0    # "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    .end local v5    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v7    # "height":I
    .end local v8    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v9    # "pixels":[I
    .end local v10    # "width":I
    .end local v12    # "y":I
    :goto_1
    return-object v1

    .line 163
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

    .line 162
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 164
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

    .line 163
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 164
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 170
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

    .line 171
    .local v6, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v6}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 172
    const/4 v1, 0x0

    goto :goto_1
.end method
