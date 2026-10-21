.class public interface abstract Lcom/android/internal/telephony/ITelephony;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub;
    }
.end annotation


# virtual methods
.method public abstract answerRingingCall()V
.end method

.method public abstract answerRingingCallForSubscriber(I)V
.end method

.method public abstract call(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract canChangeDtmfToneLength()Z
.end method

.method public abstract carrierActionReportDefaultNetworkStatus(IZ)V
.end method

.method public abstract carrierActionSetMeteredApnsEnabled(IZ)V
.end method

.method public abstract carrierActionSetRadioEnabled(IZ)V
.end method

.method public abstract checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
.end method

.method public abstract checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
.end method

.method public abstract dial(Ljava/lang/String;)V
.end method

.method public abstract disableDataConnectivity()Z
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract disableLocationUpdatesForSubscriber(I)V
.end method

.method public abstract disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
.end method

.method public abstract enableDataConnectivity()Z
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract enableLocationUpdatesForSubscriber(I)V
.end method

.method public abstract enableVideoCalling(Z)V
.end method

.method public abstract enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
.end method

.method public abstract endCall()Z
.end method

.method public abstract endCallForSubscriber(I)Z
.end method

.method public abstract factoryReset(I)V
.end method

.method public abstract getActivePhoneType()I
.end method

.method public abstract getActivePhoneTypeForSlot(I)I
.end method

.method public abstract getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
.end method

.method public abstract getAidForAppType(II)Ljava/lang/String;
.end method

.method public abstract getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllowedCarriers(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalculatedPreferredNetworkType(Ljava/lang/String;)I
.end method

.method public abstract getCallState()I
.end method

.method public abstract getCallStateForSlot(I)I
.end method

.method public abstract getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCarrierPrivilegeStatus(I)I
.end method

.method public abstract getCdmaEriIconIndex(Ljava/lang/String;)I
.end method

.method public abstract getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
.end method

.method public abstract getCdmaEriIconMode(Ljava/lang/String;)I
.end method

.method public abstract getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
.end method

.method public abstract getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCdmaMdn(I)Ljava/lang/String;
.end method

.method public abstract getCdmaMin(I)Ljava/lang/String;
.end method

.method public abstract getCdmaPrlVersion(I)Ljava/lang/String;
.end method

.method public abstract getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
.end method

.method public abstract getClientRequestStats(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataActivationState(ILjava/lang/String;)I
.end method

.method public abstract getDataActivity()I
.end method

.method public abstract getDataEnabled(I)Z
.end method

.method public abstract getDataNetworkType(Ljava/lang/String;)I
.end method

.method public abstract getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
.end method

.method public abstract getDataState()I
.end method

.method public abstract getDefaultSim()I
.end method

.method public abstract getDeviceId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEmergencyCallbackMode(I)Z
.end method

.method public abstract getEsn(I)Ljava/lang/String;
.end method

.method public abstract getForbiddenPlmns(II)[Ljava/lang/String;
.end method

.method public abstract getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureListener;)Lcom/android/ims/internal/IImsServiceController;
.end method

.method public abstract getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLocaleFromDefaultSim()Ljava/lang/String;
.end method

.method public abstract getLteOnCdmaMode(Ljava/lang/String;)I
.end method

.method public abstract getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
.end method

.method public abstract getMeidForSlot(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkCountryIsoForPhone(I)Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getNetworkTypeForSubscriber(ILjava/lang/String;)I
.end method

.method public abstract getPackagesWithCarrierPrivileges()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getPreferredNetworkType(I)I
.end method

.method public abstract getRadioAccessFamily(ILjava/lang/String;)I
.end method

.method public abstract getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;
.end method

.method public abstract getSignalStrength(I)Landroid/telephony/SignalStrength;
.end method

.method public abstract getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
.end method

.method public abstract getTelephonyHistograms()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTetherApnRequired()I
.end method

.method public abstract getVisualVoicemailPackageName(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
.end method

.method public abstract getVoiceActivationState(ILjava/lang/String;)I
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public abstract getVoiceMessageCountForSubscriber(I)I
.end method

.method public abstract getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
.end method

.method public abstract getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
.end method

.method public abstract getVtDataUsage(IZ)Landroid/net/NetworkStats;
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract handlePinMmiForSubscriber(ILjava/lang/String;)Z
.end method

.method public abstract handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract hasIccCardUsingSlotIndex(I)Z
.end method

.method public abstract iccCloseLogicalChannel(II)Z
.end method

.method public abstract iccExchangeSimIO(IIIIIILjava/lang/String;)[B
.end method

.method public abstract iccOpenLogicalChannel(ILjava/lang/String;Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
.end method

.method public abstract iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract invokeOemRilRequestRaw([B[B)I
.end method

.method public abstract isConcurrentVoiceAndDataAllowed(I)Z
.end method

.method public abstract isDataConnectivityPossible(I)Z
.end method

.method public abstract isHearingAidCompatibilitySupported()Z
.end method

.method public abstract isIdle(Ljava/lang/String;)Z
.end method

.method public abstract isIdleForSubscriber(ILjava/lang/String;)Z
.end method

.method public abstract isImsRegistered()Z
.end method

.method public abstract isOffhook(Ljava/lang/String;)Z
.end method

.method public abstract isOffhookForSubscriber(ILjava/lang/String;)Z
.end method

.method public abstract isRadioOn(Ljava/lang/String;)Z
.end method

.method public abstract isRadioOnForSubscriber(ILjava/lang/String;)Z
.end method

.method public abstract isRinging(Ljava/lang/String;)Z
.end method

.method public abstract isRingingForSubscriber(ILjava/lang/String;)Z
.end method

.method public abstract isTtyModeSupported()Z
.end method

.method public abstract isVideoCallingEnabled(Ljava/lang/String;)Z
.end method

.method public abstract isVideoTelephonyAvailable()Z
.end method

.method public abstract isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract isVolteAvailable()Z
.end method

.method public abstract isWifiCallingAvailable()Z
.end method

.method public abstract isWorldPhone()Z
.end method

.method public abstract needMobileRadioShutdown()Z
.end method

.method public abstract needsOtaServiceProvisioning()Z
.end method

.method public abstract nvReadItem(I)Ljava/lang/String;
.end method

.method public abstract nvResetConfig(I)Z
.end method

.method public abstract nvWriteCdmaPrl([B)Z
.end method

.method public abstract nvWriteItem(ILjava/lang/String;)Z
.end method

.method public abstract requestModemActivityInfo(Landroid/os/ResultReceiver;)V
.end method

.method public abstract requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;)I
.end method

.method public abstract sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract setAllowedCarriers(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setCellInfoListRate(I)V
.end method

.method public abstract setDataActivationState(II)V
.end method

.method public abstract setDataEnabled(IZ)V
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method public abstract setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setNetworkSelectionModeAutomatic(I)V
.end method

.method public abstract setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
.end method

.method public abstract setOperatorBrandOverride(ILjava/lang/String;)Z
.end method

.method public abstract setPolicyDataEnabled(ZI)V
.end method

.method public abstract setPreferredNetworkType(II)Z
.end method

.method public abstract setRadio(Z)Z
.end method

.method public abstract setRadioCapability([Landroid/telephony/RadioAccessFamily;)V
.end method

.method public abstract setRadioForSubscriber(IZ)Z
.end method

.method public abstract setRadioPower(Z)Z
.end method

.method public abstract setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setSimPowerStateForSlot(II)V
.end method

.method public abstract setVoiceActivationState(II)V
.end method

.method public abstract setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
.end method

.method public abstract setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
.end method

.method public abstract shutdownMobileRadios()V
.end method

.method public abstract silenceRinger()V
.end method

.method public abstract stopNetworkScan(II)V
.end method

.method public abstract supplyPin(Ljava/lang/String;)Z
.end method

.method public abstract supplyPinForSubscriber(ILjava/lang/String;)Z
.end method

.method public abstract supplyPinReportResult(Ljava/lang/String;)[I
.end method

.method public abstract supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
.end method

.method public abstract supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method public abstract supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
.end method

.method public abstract toggleRadioOnOff()V
.end method

.method public abstract toggleRadioOnOffForSubscriber(I)V
.end method

.method public abstract updateServiceLocation()V
.end method

.method public abstract updateServiceLocationForSubscriber(I)V
.end method
