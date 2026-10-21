.class public Lcom/syu/Uvoice/UvoiceEcnr;
.super Ljava/lang/Object;
.source "UvoiceEcnr.java"


# static fields
.field public static INSTANCE:Lcom/syu/Uvoice/UvoiceEcnr;

.field public static ai_appid:Ljava/lang/String;

.field public static ai_code:Ljava/lang/String;

.field public static ai_code_test:Ljava/lang/String;

.field public static bLoadLibOnce:Z

.field public static iJniNative:I

.field public static mStrPlatForm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->INSTANCE:Lcom/syu/Uvoice/UvoiceEcnr;

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/Uvoice/UvoiceEcnr;->bLoadLibOnce:Z

    .line 15
    const-string v0, "AHOPvaBY000016c2"

    sput-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->ai_appid:Ljava/lang/String;

    .line 16
    const-string v0, "66J6Y4UK"

    sput-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->ai_code:Ljava/lang/String;

    .line 17
    const-string v0, "TB24A6JJ"

    sput-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->ai_code_test:Ljava/lang/String;

    .line 18
    const/16 v0, 0xff

    sput v0, Lcom/syu/Uvoice/UvoiceEcnr;->iJniNative:I

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->mStrPlatForm:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "uvoice_ecnr_license_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static native checkActivate()I
.end method

.method public static checkActivate2()I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->ai_appid:Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/Uvoice/UvoiceEcnr;->checkActivate2(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native checkActivate2(Ljava/lang/String;)I
.end method

.method public static getAIType()I
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 70
    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getPlat()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "mStrPlatForm":Ljava/lang/String;
    const-string v4, "sys.fyt.bluetooth_type"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "mBtType":I
    const-string v4, "jarr"

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "  jar 11 JAR getAIType mBtType = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mStrPlatForm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " getJniNative = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getJniNative()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-ne v0, v2, :cond_1

    const-string v4, "6318"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getJniNative()I

    move-result v4

    if-ltz v4, :cond_1

    .line 76
    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getJniNative()I

    move-result v2

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 78
    :cond_1
    if-ne v0, v7, :cond_2

    const-string v4, "6318"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getJniNative()I

    move-result v2

    goto :goto_0

    .line 93
    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v4, 0x8

    if-eq v0, v4, :cond_3

    if-ne v0, v7, :cond_4

    :cond_3
    const-string v4, "890A"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    .line 96
    goto :goto_0
.end method

.method public static getActivateCreate()I
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getAIType()I

    move-result v0

    .line 53
    .local v0, "code":I
    const-string v1, "UvEcnrJNI"

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "  java jar \u6fc0\u6d3b  App_Bt syu_jni_command code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-ltz v0, :cond_0

    .line 55
    sget-object v1, Lcom/syu/Uvoice/UvoiceEcnr;->ai_appid:Ljava/lang/String;

    sget-object v2, Lcom/syu/Uvoice/UvoiceEcnr;->ai_code:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/syu/Uvoice/UvoiceEcnr;->getActivateCreate2(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 58
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static native getActivateCreate(I)I
.end method

.method public static native getActivateCreate2(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance()Lcom/syu/Uvoice/UvoiceEcnr;
    .locals 2

    .prologue
    .line 25
    sget-boolean v1, Lcom/syu/Uvoice/UvoiceEcnr;->bLoadLibOnce:Z

    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x1

    sput-boolean v1, Lcom/syu/Uvoice/UvoiceEcnr;->bLoadLibOnce:Z

    .line 28
    :try_start_0
    sget-object v1, Lcom/syu/Uvoice/UvoiceEcnr;->INSTANCE:Lcom/syu/Uvoice/UvoiceEcnr;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/syu/Uvoice/UvoiceEcnr;

    invoke-direct {v1}, Lcom/syu/Uvoice/UvoiceEcnr;-><init>()V

    sput-object v1, Lcom/syu/Uvoice/UvoiceEcnr;->INSTANCE:Lcom/syu/Uvoice/UvoiceEcnr;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v1, Lcom/syu/Uvoice/UvoiceEcnr;->INSTANCE:Lcom/syu/Uvoice/UvoiceEcnr;

    return-object v1

    .line 30
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 31
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-object v1, Lcom/syu/Uvoice/UvoiceEcnr;->INSTANCE:Lcom/syu/Uvoice/UvoiceEcnr;

    goto :goto_0
.end method

.method public static getJniNative()I
    .locals 7

    .prologue
    .line 101
    sget v4, Lcom/syu/Uvoice/UvoiceEcnr;->iJniNative:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_1

    .line 102
    sget v0, Lcom/syu/Uvoice/UvoiceEcnr;->iJniNative:I

    .line 119
    .local v0, "iJniNative":I
    .local v1, "inparam":Landroid/os/Bundle;
    .local v2, "outparam":Landroid/os/Bundle;
    .local v3, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    :cond_0
    :goto_0
    return v0

    .line 103
    .end local v0    # "iJniNative":I
    .end local v1    # "inparam":Landroid/os/Bundle;
    .end local v2    # "outparam":Landroid/os/Bundle;
    .end local v3    # "syuJniNative":Lcom/syu/jni/SyuJniNative;
    :cond_1
    const/4 v0, -0x1

    .line 104
    .restart local v0    # "iJniNative":I
    const/4 v1, 0x0

    .line 105
    .restart local v1    # "inparam":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 106
    .restart local v2    # "outparam":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v3

    .line 107
    .restart local v3    # "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v3, :cond_0

    .line 108
    const/16 v4, 0xc9

    invoke-virtual {v3, v4, v1, v2}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 109
    if-eqz v2, :cond_0

    .line 110
    const-string v4, "param0"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 116
    const-string v4, "UvEcnrJNI"

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "  jar 11 App_Bt syu_jni_command iJniNative = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPlat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->mStrPlatForm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->mStrPlatForm:Ljava/lang/String;

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const-string v0, "sys.fyt.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->mStrPlatForm:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->mStrPlatForm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->mStrPlatForm:Ljava/lang/String;

    .line 128
    :cond_1
    sget-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->mStrPlatForm:Ljava/lang/String;

    goto :goto_0
.end method

.method public static native getQrCode([B)I
.end method

.method public static getQrCode2([B)I
    .locals 1
    .param p0, "qr_code"    # [B

    .prologue
    .line 66
    sget-object v0, Lcom/syu/Uvoice/UvoiceEcnr;->ai_appid:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/syu/Uvoice/UvoiceEcnr;->getQrCode2([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native getQrCode2([BLjava/lang/String;)I
.end method
