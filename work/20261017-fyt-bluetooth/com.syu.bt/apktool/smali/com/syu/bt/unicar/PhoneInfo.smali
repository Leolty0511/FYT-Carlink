.class public Lcom/syu/bt/unicar/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# static fields
.field private static info:Lcom/syu/bt/unicar/PhoneInfo;


# instance fields
.field deviceid:Ljava/lang/String;

.field iccid:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field tel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/syu/bt/unicar/PhoneInfo;

    invoke-direct {v0}, Lcom/syu/bt/unicar/PhoneInfo;-><init>()V

    sput-object v0, Lcom/syu/bt/unicar/PhoneInfo;->info:Lcom/syu/bt/unicar/PhoneInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/syu/bt/unicar/PhoneInfo;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/syu/bt/unicar/PhoneInfo;->info:Lcom/syu/bt/unicar/PhoneInfo;

    return-object v0
.end method


# virtual methods
.method public Init()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    :try_start_0
    sget-object v0, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/syu/bt/unicar/PhoneInfo;->setDeviceid(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/syu/bt/unicar/PhoneInfo;->setTel(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/syu/bt/unicar/PhoneInfo;->setIccid(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/syu/bt/unicar/PhoneInfo;->setImsi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/syu/bt/unicar/PhoneInfo;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/syu/bt/unicar/PhoneInfo;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/syu/bt/unicar/PhoneInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/syu/bt/unicar/PhoneInfo;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceid"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/syu/bt/unicar/PhoneInfo;->deviceid:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/syu/bt/unicar/PhoneInfo;->iccid:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/syu/bt/unicar/PhoneInfo;->imsi:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/syu/bt/unicar/PhoneInfo;->tel:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoneInfo [deviceid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syu/bt/unicar/PhoneInfo;->deviceid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/unicar/PhoneInfo;->tel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/syu/bt/unicar/PhoneInfo;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/unicar/PhoneInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
