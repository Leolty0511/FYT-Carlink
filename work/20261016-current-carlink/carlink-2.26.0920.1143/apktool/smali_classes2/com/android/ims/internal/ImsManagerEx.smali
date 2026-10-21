.class public Lcom/android/ims/internal/ImsManagerEx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_IMS_CONFERENCE_PARTICIPANTS:Ljava/lang/String; = "android.intent.extra.IMS_CONFERENCE_PARTICIPANTS"

.field public static final EXTRA_IMS_CONFERENCE_REQUEST:Ljava/lang/String; = "android.intent.extra.IMS_CONFERENCE_REQUEST"

.field public static final HANDOVER_CANCELED:I = 0x3

.field public static final HANDOVER_COMPLETED:I = 0x1

.field public static final HANDOVER_FAILED:I = 0x2

.field public static final HANDOVER_STARTED:I = 0x0

.field public static final IMS_PDN_ACTIVE_FAILED:I = 0x0

.field public static final IMS_PDN_READY:I = 0x1

.field public static final IMS_PDN_START:I = 0x2

.field public static final IMS_REGISTERED:I = 0x1

.field public static final IMS_SERVICE_EX:Ljava/lang/String; = "ims_ex"

.field public static final IMS_UNREGISTERED:I = 0x0

.field public static final IMS_UT_EX:Ljava/lang/String; = "ims_ut_ex"

.field private static final LTE_LTE_4M:Ljava/lang/String; = "TL_LF_W_G,TL_LF_W_G"

.field private static final LTE_LTE_5M:Ljava/lang/String; = "TL_LF_TD_W_G,TL_LF_TD_W_G"

.field private static final MODEM_CONFIG_PROP:Ljava/lang/String; = "persist.radio.modem.config"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;
    .locals 1

    .line 1
    const-string v0, "ims_ex"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/ims/internal/IImsServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceEx;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public static getIImsUtEx()Lcom/android/ims/internal/IImsUtEx;
    .locals 1

    .line 1
    const-string v0, "ims_ut_ex"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtEx;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public static isDualLteModem()Z
    .locals 3

    .line 1
    const-string v0, "persist.radio.modem.config"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "TL_LF_TD_W_G,TL_LF_TD_W_G"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "TL_LF_W_G,TL_LF_W_G"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    return v0
.end method

.method public static isDualVoLTEActive()Z
    .locals 2

    .line 1
    const-string v0, "persist.radio.volte.mode"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "DualVoLTEActive"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public static isDualVoLTERegistered()Z
    .locals 6

    .line 1
    const-string v0, "gsm.sys.volte.state"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const-string v2, ","

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move v2, v1

    .line 17
    move v3, v2

    .line 18
    :goto_0
    array-length v4, v0

    .line 19
    if-ge v2, v4, :cond_1

    .line 20
    .line 21
    aget-object v4, v0, v2

    .line 22
    .line 23
    const-string v5, "1"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x2

    .line 37
    if-lt v3, v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :cond_2
    return v1
.end method

.method public static isEnhancedDualVolteOn()Z
    .locals 2

    .line 1
    const-string v0, "persist.sys.volte.dsda.enhanced"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "on"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public static isImsRegisteredForPhone(I)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "gsm.sys.volte.state"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-string p0, "1"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x1

    .line 27
    if-ne p0, v2, :cond_2

    .line 28
    .line 29
    const-string p0, ",1"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :cond_2
    :goto_0
    return v1
.end method

.method public static isReadyForDualActiveCall()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isDualVoLTEActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isDualVoLTERegistered()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isDualLteModem()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v0, "ril.dsda.status"

    .line 27
    .line 28
    const-string v3, "0"

    .line 29
    .line 30
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v3, "1"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v1, v2

    .line 44
    :goto_1
    move v0, v1

    .line 45
    :cond_2
    return v0
.end method

.method public static notifyVideoCapabilityChange()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/android/ims/internal/IImsServiceEx;->notifyVideoCapabilityChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    :cond_0
    return-void
.end method
