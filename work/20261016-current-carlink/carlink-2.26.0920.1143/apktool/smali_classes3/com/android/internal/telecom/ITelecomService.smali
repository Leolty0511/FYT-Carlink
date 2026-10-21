.class public interface abstract Lcom/android/internal/telecom/ITelecomService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub;
    }
.end annotation


# virtual methods
.method public abstract acceptRingingCall(Ljava/lang/String;)V
.end method

.method public abstract acceptRingingCallWithVideoState(Ljava/lang/String;I)V
.end method

.method public abstract addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
.end method

.method public abstract addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
.end method

.method public abstract cancelMissedCallsNotification(Ljava/lang/String;)V
.end method

.method public abstract clearAccounts(Ljava/lang/String;)V
.end method

.method public abstract createManageBlockedNumbersIntent()Landroid/content/Intent;
.end method

.method public abstract dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;
.end method

.method public abstract enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z
.end method

.method public abstract endCall()Z
.end method

.method public abstract getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getAllPhoneAccountHandles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPhoneAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPhoneAccountsCount()I
.end method

.method public abstract getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallState()I
.end method

.method public abstract getCurrentTtyMode(Ljava/lang/String;)I
.end method

.method public abstract getDefaultDialerPackage()Ljava/lang/String;
.end method

.method public abstract getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
.end method

.method public abstract getDefaultPhoneApp()Landroid/content/ComponentName;
.end method

.method public abstract getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
.end method

.method public abstract getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelfManagedPhoneAccounts(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimCallManager()Landroid/telecom/PhoneAccountHandle;
.end method

.method public abstract getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;
.end method

.method public abstract getSystemDialerPackage()Ljava/lang/String;
.end method

.method public abstract getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
.end method

.method public abstract getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isInCall(Ljava/lang/String;)Z
.end method

.method public abstract isInManagedCall(Ljava/lang/String;)Z
.end method

.method public abstract isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract isRinging(Ljava/lang/String;)Z
.end method

.method public abstract isTtySupported(Ljava/lang/String;)Z
.end method

.method public abstract isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
.end method

.method public abstract setDefaultDialer(Ljava/lang/String;)Z
.end method

.method public abstract setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract showInCallScreen(ZLjava/lang/String;)V
.end method

.method public abstract silenceRinger(Ljava/lang/String;)V
.end method

.method public abstract unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract waitOnHandlers()V
.end method
