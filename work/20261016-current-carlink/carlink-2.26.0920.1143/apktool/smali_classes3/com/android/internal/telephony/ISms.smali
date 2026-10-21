.class public interface abstract Lcom/android/internal/telephony/ISms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub;
    }
.end annotation


# virtual methods
.method public abstract copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
.end method

.method public abstract createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
.end method

.method public abstract disableCellBroadcastForSubscriber(III)Z
.end method

.method public abstract disableCellBroadcastRangeForSubscriber(IIII)Z
.end method

.method public abstract enableCellBroadcastForSubscriber(III)Z
.end method

.method public abstract enableCellBroadcastRangeForSubscriber(IIII)Z
.end method

.method public abstract getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImsSmsFormatForSubscriber(I)Ljava/lang/String;
.end method

.method public abstract getPreferredSmsSubscription()I
.end method

.method public abstract getPremiumSmsPermission(Ljava/lang/String;)I
.end method

.method public abstract getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
.end method

.method public abstract injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract isImsSmsSupportedForSubscriber(I)Z
.end method

.method public abstract isSMSPromptEnabled()Z
.end method

.method public abstract isSmsSimPickActivityNeeded(I)Z
.end method

.method public abstract sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method public abstract sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method public abstract setPremiumSmsPermission(Ljava/lang/String;I)V
.end method

.method public abstract setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
.end method

.method public abstract updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
.end method
