.class public Lcom/android/ims/ImsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConfig$WfcModeFeatureValueConstants;,
        Lcom/android/ims/ImsConfig$FeatureValueConstants;,
        Lcom/android/ims/ImsConfig$VideoQualityFeatureValuesConstants;,
        Lcom/android/ims/ImsConfig$OperationValuesConstants;,
        Lcom/android/ims/ImsConfig$OperationStatusConstants;,
        Lcom/android/ims/ImsConfig$ConfigConstants;,
        Lcom/android/ims/ImsConfig$FeatureConstants;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_CONFIG_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_CONFIG_CHANGED"

.field public static final ACTION_IMS_FEATURE_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_FEATURE_CHANGED"

.field public static final EXTRA_CHANGED_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_NEW_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "ImsConfig"


# instance fields
.field private DBG:Z

.field private mContext:Landroid/content/Context;

.field private final miConfig:Lcom/android/ims/internal/IImsConfig;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsConfig;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 6
    .line 7
    const-string v0, "ImsConfig"

    .line 8
    .line 9
    const-string v1, "ImsConfig creates"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/ims/ImsConfig;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "getFeatureValue: feature = "

    .line 6
    .line 7
    const-string v1, ", network ="

    .line 8
    .line 9
    const-string v2, ", listener ="

    .line 10
    .line 11
    invoke-static {v0, p1, v1, p2, v2}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "ImsConfig"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    new-instance p2, Lcom/android/ims/ImsException;

    .line 35
    .line 36
    const-string p3, "getFeatureValue()"

    .line 37
    .line 38
    const/16 v0, 0x83

    .line 39
    .line 40
    invoke-direct {p2, p3, p1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 41
    .line 42
    .line 43
    throw p2
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "getProvisionedStringValue(): item = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ", ret ="

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "ImsConfig"

    .line 34
    .line 35
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    return-object v0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Lcom/android/ims/ImsException;

    .line 41
    .line 42
    const-string v1, "getProvisionedStringValue()"

    .line 43
    .line 44
    const/16 v2, 0x83

    .line 45
    .line 46
    invoke-direct {v0, v1, p1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public getProvisionedValue(I)I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "getProvisionedValue(): item = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ", ret ="

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "ImsConfig"

    .line 34
    .line 35
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    return v0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Lcom/android/ims/ImsException;

    .line 41
    .line 42
    const-string v1, "getValue()"

    .line 43
    .line 44
    const/16 v2, 0x83

    .line 45
    .line 46
    invoke-direct {v0, v1, p1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getVideoQuality: listener = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ImsConfig"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Lcom/android/ims/ImsException;

    .line 32
    .line 33
    const-string v1, "getVideoQuality()"

    .line 34
    .line 35
    const/16 v2, 0x83

    .line 36
    .line 37
    invoke-direct {v0, v1, p1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public isBinderAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "setFeatureValue: feature = "

    .line 6
    .line 7
    const-string v1, ", network ="

    .line 8
    .line 9
    const-string v2, ", value ="

    .line 10
    .line 11
    invoke-static {v0, p1, v1, p2, v2}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", listener ="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "ImsConfig"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 36
    .line 37
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Lcom/android/ims/ImsException;

    .line 43
    .line 44
    const-string p3, "setFeatureValue()"

    .line 45
    .line 46
    const/16 p4, 0x83

    .line 47
    .line 48
    invoke-direct {p2, p3, p1, p4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "setProvisionedStringValue(): item = "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ", value ="

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "ImsConfig"

    .line 34
    .line 35
    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    return v0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance p2, Lcom/android/ims/ImsException;

    .line 41
    .line 42
    const-string v0, "setProvisionedStringValue()"

    .line 43
    .line 44
    const/16 v1, 0x83

    .line 45
    .line 46
    invoke-direct {p2, v0, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 47
    .line 48
    .line 49
    throw p2
.end method

.method public setProvisionedValue(II)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 2
    .line 3
    const-string v1, "setProvisionedValue(): item = "

    .line 4
    .line 5
    const-string v2, "ImsConfig"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "value = "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iget-boolean v3, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const-string v3, " value = "

    .line 44
    .line 45
    const-string v4, " ret = "

    .line 46
    .line 47
    invoke-static {v1, p1, v3, p2, v4}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    return v0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    new-instance p2, Lcom/android/ims/ImsException;

    .line 64
    .line 65
    const-string v0, "setProvisionedValue()"

    .line 66
    .line 67
    const/16 v1, 0x83

    .line 68
    .line 69
    invoke-direct {p2, v0, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method
