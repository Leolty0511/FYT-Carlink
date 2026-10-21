.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x5

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x80

.field static final TRANSACTION_carrierActionReportDefaultNetworkStatus:I = 0x9e

.field static final TRANSACTION_carrierActionSetMeteredApnsEnabled:I = 0x9c

.field static final TRANSACTION_carrierActionSetRadioEnabled:I = 0x9d

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x70

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x71

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x27

.field static final TRANSACTION_disableLocationUpdates:I = 0x24

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x25

.field static final TRANSACTION_disableVisualVoicemailSmsFilter:I = 0x44

.field static final TRANSACTION_enableDataConnectivity:I = 0x26

.field static final TRANSACTION_enableLocationUpdates:I = 0x22

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x23

.field static final TRANSACTION_enableVideoCalling:I = 0x7e

.field static final TRANSACTION_enableVisualVoicemailSmsFilter:I = 0x43

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x8d

.field static final TRANSACTION_getActivePhoneType:I = 0x30

.field static final TRANSACTION_getActivePhoneTypeForSlot:I = 0x31

.field static final TRANSACTION_getActiveVisualVoicemailSmsFilterSettings:I = 0x46

.field static final TRANSACTION_getAidForAppType:I = 0x96

.field static final TRANSACTION_getAllCellInfo:I = 0x52

.field static final TRANSACTION_getAllowedCarriers:I = 0x9b

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x5f

.field static final TRANSACTION_getCallState:I = 0x2c

.field static final TRANSACTION_getCallStateForSlot:I = 0x2d

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x72

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x6f

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x32

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x33

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x34

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x35

.field static final TRANSACTION_getCdmaEriText:I = 0x36

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x37

.field static final TRANSACTION_getCdmaMdn:I = 0x6d

.field static final TRANSACTION_getCdmaMin:I = 0x6e

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x98

.field static final TRANSACTION_getCellLocation:I = 0x29

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x64

.field static final TRANSACTION_getClientRequestStats:I = 0xa1

.field static final TRANSACTION_getDataActivationState:I = 0x3d

.field static final TRANSACTION_getDataActivity:I = 0x2e

.field static final TRANSACTION_getDataEnabled:I = 0x6a

.field static final TRANSACTION_getDataNetworkType:I = 0x4b

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x4c

.field static final TRANSACTION_getDataState:I = 0x2f

.field static final TRANSACTION_getDefaultSim:I = 0x54

.field static final TRANSACTION_getDeviceId:I = 0x88

.field static final TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x8b

.field static final TRANSACTION_getEmergencyCallbackMode:I = 0xa4

.field static final TRANSACTION_getEsn:I = 0x97

.field static final TRANSACTION_getForbiddenPlmns:I = 0xa3

.field static final TRANSACTION_getImeiForSlot:I = 0x89

.field static final TRANSACTION_getImsServiceControllerAndListen:I = 0x62

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x75

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x74

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x8e

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x50

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x51

.field static final TRANSACTION_getMeidForSlot:I = 0x8a

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x76

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2b

.field static final TRANSACTION_getNetworkCountryIsoForPhone:I = 0x2a

.field static final TRANSACTION_getNetworkType:I = 0x49

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x4a

.field static final TRANSACTION_getPackagesWithCarrierPrivileges:I = 0x95

.field static final TRANSACTION_getPcscfAddress:I = 0x6b

.field static final TRANSACTION_getPreferredNetworkType:I = 0x60

.field static final TRANSACTION_getRadioAccessFamily:I = 0x7d

.field static final TRANSACTION_getServiceStateForSubscriber:I = 0x90

.field static final TRANSACTION_getSignalStrength:I = 0xa5

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x8c

.field static final TRANSACTION_getTelephonyHistograms:I = 0x99

.field static final TRANSACTION_getTetherApnRequired:I = 0x61

.field static final TRANSACTION_getVisualVoicemailPackageName:I = 0x42

.field static final TRANSACTION_getVisualVoicemailSettings:I = 0x41

.field static final TRANSACTION_getVisualVoicemailSmsFilterSettings:I = 0x45

.field static final TRANSACTION_getVoiceActivationState:I = 0x3c

.field static final TRANSACTION_getVoiceMessageCount:I = 0x3e

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3f

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x4d

.field static final TRANSACTION_getVoicemailRingtoneUri:I = 0x91

.field static final TRANSACTION_getVtDataUsage:I = 0x9f

.field static final TRANSACTION_handlePinMmi:I = 0x18

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1a

.field static final TRANSACTION_handleUssdRequest:I = 0x19

.field static final TRANSACTION_hasIccCard:I = 0x4e

.field static final TRANSACTION_hasIccCardUsingSlotIndex:I = 0x4f

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x56

.field static final TRANSACTION_iccExchangeSimIO:I = 0x59

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x55

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x58

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x57

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x79

.field static final TRANSACTION_isConcurrentVoiceAndDataAllowed:I = 0x40

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x28

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x83

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x84

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber:I = 0xa

.field static final TRANSACTION_isTtyModeSupported:I = 0x82

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x7f

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x87

.field static final TRANSACTION_isVoicemailVibrationEnabled:I = 0x93

.field static final TRANSACTION_isVolteAvailable:I = 0x86

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x85

.field static final TRANSACTION_isWorldPhone:I = 0x81

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x7a

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x38

.field static final TRANSACTION_nvReadItem:I = 0x5b

.field static final TRANSACTION_nvResetConfig:I = 0x5e

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x5d

.field static final TRANSACTION_nvWriteItem:I = 0x5c

.field static final TRANSACTION_requestModemActivityInfo:I = 0x8f

.field static final TRANSACTION_requestNetworkScan:I = 0x65

.field static final TRANSACTION_sendDialerSpecialCode:I = 0x48

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x5a

.field static final TRANSACTION_sendVisualVoicemailSmsForSubscriber:I = 0x47

.field static final TRANSACTION_setAllowedCarriers:I = 0x9a

.field static final TRANSACTION_setCellInfoListRate:I = 0x53

.field static final TRANSACTION_setDataActivationState:I = 0x3b

.field static final TRANSACTION_setDataEnabled:I = 0x69

.field static final TRANSACTION_setImsRegistrationState:I = 0x6c

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x73

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x63

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x67

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x77

.field static final TRANSACTION_setPolicyDataEnabled:I = 0xa0

.field static final TRANSACTION_setPreferredNetworkType:I = 0x68

.field static final TRANSACTION_setRadio:I = 0x1d

.field static final TRANSACTION_setRadioCapability:I = 0x7c

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1e

.field static final TRANSACTION_setRadioPower:I = 0x1f

.field static final TRANSACTION_setRoamingOverride:I = 0x78

.field static final TRANSACTION_setSimPowerStateForSlot:I = 0xa2

.field static final TRANSACTION_setVoiceActivationState:I = 0x3a

.field static final TRANSACTION_setVoiceMailNumber:I = 0x39

.field static final TRANSACTION_setVoicemailRingtoneUri:I = 0x92

.field static final TRANSACTION_setVoicemailVibrationEnabled:I = 0x94

.field static final TRANSACTION_shutdownMobileRadios:I = 0x7b

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_stopNetworkScan:I = 0x66

.field static final TRANSACTION_supplyPin:I = 0x10

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x11

.field static final TRANSACTION_supplyPinReportResult:I = 0x14

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x15

.field static final TRANSACTION_supplyPuk:I = 0x12

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x13

.field static final TRANSACTION_supplyPukReportResult:I = 0x16

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x17

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1b

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1c

.field static final TRANSACTION_updateServiceLocation:I = 0x20

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.internal.telephony.ITelephony"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    move v0, p1

    .line 3
    move-object v1, p2

    .line 4
    move-object/from16 v10, p3

    .line 5
    .line 6
    const v2, 0x5f4e5446

    .line 7
    .line 8
    .line 9
    const-string v3, "com.android.internal.telephony.ITelephony"

    .line 10
    .line 11
    const/4 v11, 0x1

    .line 12
    if-eq v0, v2, :cond_27

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v10, v11}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return v11

    .line 51
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getEmergencyCallbackMode(I)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    return v11

    .line 69
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getForbiddenPlmns(II)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v11

    .line 91
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlot(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    .line 107
    .line 108
    return v11

    .line 109
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getClientRequestStats(Ljava/lang/String;I)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    return v11

    .line 131
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    .line 140
    move v4, v11

    .line 141
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-interface {p0, v4, v0}, Lcom/android/internal/telephony/ITelephony;->setPolicyDataEnabled(ZI)V

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    .line 150
    .line 151
    return v11

    .line 152
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_2

    .line 164
    .line 165
    move v1, v11

    .line 166
    goto :goto_1

    .line 167
    :cond_2
    move v1, v4

    .line 168
    :goto_1
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVtDataUsage(IZ)Landroid/net/NetworkStats;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    .line 174
    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v10, v11}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    .line 186
    .line 187
    :goto_2
    return v11

    .line 188
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_4

    .line 200
    .line 201
    move v4, v11

    .line 202
    :cond_4
    invoke-interface {p0, v0, v4}, Lcom/android/internal/telephony/ITelephony;->carrierActionReportDefaultNetworkStatus(IZ)V

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    .line 207
    .line 208
    return v11

    .line 209
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_5

    .line 221
    .line 222
    move v4, v11

    .line 223
    :cond_5
    invoke-interface {p0, v0, v4}, Lcom/android/internal/telephony/ITelephony;->carrierActionSetRadioEnabled(IZ)V

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    .line 228
    .line 229
    return v11

    .line 230
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_6

    .line 242
    .line 243
    move v4, v11

    .line 244
    :cond_6
    invoke-interface {p0, v0, v4}, Lcom/android/internal/telephony/ITelephony;->carrierActionSetMeteredApnsEnabled(IZ)V

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    .line 249
    .line 250
    return v11

    .line 251
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getAllowedCarriers(I)Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 266
    .line 267
    .line 268
    return v11

    .line 269
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    sget-object v2, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 277
    .line 278
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->setAllowedCarriers(ILjava/util/List;)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    .line 291
    .line 292
    return v11

    .line 293
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getTelephonyHistograms()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 304
    .line 305
    .line 306
    return v11

    .line 307
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCdmaPrlVersion(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return v11

    .line 325
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getEsn(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return v11

    .line 343
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getAidForAppType(II)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    return v11

    .line 365
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 376
    .line 377
    .line 378
    return v11

    .line 379
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-eqz v3, :cond_7

    .line 391
    .line 392
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 393
    .line 394
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 399
    .line 400
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_8

    .line 405
    .line 406
    move v4, v11

    .line 407
    :cond_8
    invoke-interface {p0, v0, v2, v4}, Lcom/android/internal/telephony/ITelephony;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    .line 412
    .line 413
    return v11

    .line 414
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_9

    .line 422
    .line 423
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 424
    .line 425
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    move-object v2, v0

    .line 430
    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 431
    .line 432
    :cond_9
    invoke-interface {p0, v2}, Lcom/android/internal/telephony/ITelephony;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    .line 441
    .line 442
    return v11

    .line 443
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-eqz v3, :cond_a

    .line 455
    .line 456
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 457
    .line 458
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 463
    .line 464
    goto :goto_3

    .line 465
    :cond_a
    move-object v3, v2

    .line 466
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eqz v4, :cond_b

    .line 471
    .line 472
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 473
    .line 474
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    move-object v2, v1

    .line 479
    check-cast v2, Landroid/net/Uri;

    .line 480
    .line 481
    :cond_b
    invoke-interface {p0, v0, v3, v2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    .line 486
    .line 487
    return v11

    .line 488
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_c

    .line 496
    .line 497
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 498
    .line 499
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    move-object v2, v0

    .line 504
    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 505
    .line 506
    :cond_c
    invoke-interface {p0, v2}, Lcom/android/internal/telephony/ITelephony;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    .line 512
    .line 513
    if-eqz v0, :cond_d

    .line 514
    .line 515
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v0, v10, v11}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 519
    .line 520
    .line 521
    goto :goto_4

    .line 522
    :cond_d
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    .line 524
    .line 525
    :goto_4
    return v11

    .line 526
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    .line 543
    .line 544
    if-eqz v0, :cond_e

    .line 545
    .line 546
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v10, v11}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 550
    .line 551
    .line 552
    goto :goto_5

    .line 553
    :cond_e
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    .line 555
    .line 556
    :goto_5
    return v11

    .line 557
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-eqz v0, :cond_f

    .line 565
    .line 566
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 567
    .line 568
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    move-object v2, v0

    .line 573
    check-cast v2, Landroid/os/ResultReceiver;

    .line 574
    .line 575
    :cond_f
    invoke-interface {p0, v2}, Lcom/android/internal/telephony/ITelephony;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 576
    .line 577
    .line 578
    return v11

    .line 579
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getLocaleFromDefaultSim()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    return v11

    .line 593
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->factoryReset(I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    .line 605
    .line 606
    return v11

    .line 607
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-eqz v0, :cond_10

    .line 615
    .line 616
    sget-object v0, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 617
    .line 618
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    move-object v2, v0

    .line 623
    check-cast v2, Landroid/telecom/PhoneAccount;

    .line 624
    .line 625
    :cond_10
    invoke-interface {p0, v2}, Lcom/android/internal/telephony/ITelephony;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    .line 634
    .line 635
    return v11

    .line 636
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    return v11

    .line 658
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMeidForSlot(ILjava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    return v11

    .line 680
    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    return v11

    .line 702
    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    return v11

    .line 720
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable()Z

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    .line 732
    .line 733
    return v11

    .line 734
    :pswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->isVolteAvailable()Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    .line 746
    .line 747
    return v11

    .line 748
    :pswitch_20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable()Z

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    .line 760
    .line 761
    return v11

    .line 762
    :pswitch_21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered()Z

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    .line 774
    .line 775
    return v11

    .line 776
    :pswitch_22
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    .line 788
    .line 789
    return v11

    .line 790
    :pswitch_23
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->isTtyModeSupported()Z

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    .line 802
    .line 803
    return v11

    .line 804
    :pswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone()Z

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    .line 816
    .line 817
    return v11

    .line 818
    :pswitch_25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength()Z

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    .line 830
    .line 831
    return v11

    .line 832
    :pswitch_26
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;)Z

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    .line 848
    .line 849
    return v11

    .line 850
    :pswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    if-eqz v0, :cond_11

    .line 858
    .line 859
    move v4, v11

    .line 860
    :cond_11
    invoke-interface {p0, v4}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V

    .line 861
    .line 862
    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    .line 865
    .line 866
    return v11

    .line 867
    :pswitch_28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 871
    .line 872
    .line 873
    move-result v0

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(ILjava/lang/String;)I

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    .line 887
    .line 888
    return v11

    .line 889
    :pswitch_29
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    sget-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 893
    .line 894
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    check-cast v0, [Landroid/telephony/RadioAccessFamily;

    .line 899
    .line 900
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    .line 905
    .line 906
    return v11

    .line 907
    :pswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V

    .line 911
    .line 912
    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    .line 915
    .line 916
    return v11

    .line 917
    :pswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    .line 929
    .line 930
    return v11

    .line 931
    :pswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    if-gez v1, :cond_12

    .line 943
    .line 944
    goto :goto_6

    .line 945
    :cond_12
    new-array v2, v1, [B

    .line 946
    .line 947
    :goto_6
    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 958
    .line 959
    .line 960
    return v11

    .line 961
    :pswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 965
    .line 966
    .line 967
    move-result v2

    .line 968
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 981
    .line 982
    .line 983
    move-result-object v6

    .line 984
    move-object v0, p0

    .line 985
    move v1, v2

    .line 986
    move-object v2, v3

    .line 987
    move-object v3, v4

    .line 988
    move-object v4, v5

    .line 989
    move-object v5, v6

    .line 990
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 991
    .line 992
    .line 993
    move-result v0

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    .line 999
    .line 1000
    return v11

    .line 1001
    :pswitch_2e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1005
    .line 1006
    .line 1007
    move-result v0

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(ILjava/lang/String;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    .line 1021
    .line 1022
    return v11

    .line 1023
    :pswitch_2f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    return v11

    .line 1041
    :pswitch_30
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1045
    .line 1046
    .line 1047
    move-result v0

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    return v11

    .line 1063
    :pswitch_31
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1067
    .line 1068
    .line 1069
    move-result v0

    .line 1070
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v1

    .line 1074
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    return v11

    .line 1085
    :pswitch_32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1089
    .line 1090
    .line 1091
    move-result v0

    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v1

    .line 1100
    invoke-interface {p0, v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    .line 1109
    .line 1110
    return v11

    .line 1111
    :pswitch_33
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    if-eqz v0, :cond_13

    .line 1119
    .line 1120
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1121
    .line 1122
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    move-object v2, v0

    .line 1127
    check-cast v2, Landroid/content/Intent;

    .line 1128
    .line 1129
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1130
    .line 1131
    .line 1132
    move-result v0

    .line 1133
    invoke-interface {p0, v2, v0}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v0

    .line 1137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1141
    .line 1142
    .line 1143
    return v11

    .line 1144
    :pswitch_34
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    .line 1152
    .line 1153
    .line 1154
    move-result v0

    .line 1155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    .line 1160
    .line 1161
    return v11

    .line 1162
    :pswitch_35
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    .line 1170
    .line 1171
    .line 1172
    move-result v0

    .line 1173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    .line 1178
    .line 1179
    return v11

    .line 1180
    :pswitch_36
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1184
    .line 1185
    .line 1186
    move-result v0

    .line 1187
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus(I)I

    .line 1188
    .line 1189
    .line 1190
    move-result v0

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    .line 1196
    .line 1197
    return v11

    .line 1198
    :pswitch_37
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1202
    .line 1203
    .line 1204
    move-result v0

    .line 1205
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1213
    .line 1214
    .line 1215
    return v11

    .line 1216
    :pswitch_38
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1220
    .line 1221
    .line 1222
    move-result v0

    .line 1223
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    return v11

    .line 1234
    :pswitch_39
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1238
    .line 1239
    .line 1240
    move-result v0

    .line 1241
    if-eqz v0, :cond_14

    .line 1242
    .line 1243
    move v4, v11

    .line 1244
    :cond_14
    invoke-interface {p0, v4}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    .line 1249
    .line 1250
    return v11

    .line 1251
    :pswitch_3a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v1

    .line 1262
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    return v11

    .line 1273
    :pswitch_3b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1277
    .line 1278
    .line 1279
    move-result v0

    .line 1280
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    .line 1289
    .line 1290
    return v11

    .line 1291
    :pswitch_3c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1299
    .line 1300
    .line 1301
    move-result v1

    .line 1302
    if-eqz v1, :cond_15

    .line 1303
    .line 1304
    move v4, v11

    .line 1305
    :cond_15
    invoke-interface {p0, v0, v4}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(IZ)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    .line 1310
    .line 1311
    return v11

    .line 1312
    :pswitch_3d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1320
    .line 1321
    .line 1322
    move-result v1

    .line 1323
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    .line 1332
    .line 1333
    return v11

    .line 1334
    :pswitch_3e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1338
    .line 1339
    .line 1340
    move-result v0

    .line 1341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1342
    .line 1343
    .line 1344
    move-result v3

    .line 1345
    if-eqz v3, :cond_16

    .line 1346
    .line 1347
    sget-object v2, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1348
    .line 1349
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v2

    .line 1353
    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 1354
    .line 1355
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1356
    .line 1357
    .line 1358
    move-result v1

    .line 1359
    if-eqz v1, :cond_17

    .line 1360
    .line 1361
    move v4, v11

    .line 1362
    :cond_17
    invoke-interface {p0, v0, v2, v4}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    .line 1363
    .line 1364
    .line 1365
    move-result v0

    .line 1366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    .line 1371
    .line 1372
    return v11

    .line 1373
    :pswitch_3f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1377
    .line 1378
    .line 1379
    move-result v0

    .line 1380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1381
    .line 1382
    .line 1383
    move-result v1

    .line 1384
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->stopNetworkScan(II)V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    .line 1389
    .line 1390
    return v11

    .line 1391
    :pswitch_40
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1399
    .line 1400
    .line 1401
    move-result v3

    .line 1402
    if-eqz v3, :cond_18

    .line 1403
    .line 1404
    sget-object v3, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1405
    .line 1406
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v3

    .line 1410
    check-cast v3, Landroid/telephony/NetworkScanRequest;

    .line 1411
    .line 1412
    goto :goto_7

    .line 1413
    :cond_18
    move-object v3, v2

    .line 1414
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1415
    .line 1416
    .line 1417
    move-result v4

    .line 1418
    if-eqz v4, :cond_19

    .line 1419
    .line 1420
    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1421
    .line 1422
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v2

    .line 1426
    check-cast v2, Landroid/os/Messenger;

    .line 1427
    .line 1428
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v1

    .line 1432
    invoke-interface {p0, v0, v3, v2, v1}, Lcom/android/internal/telephony/ITelephony;->requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;)I

    .line 1433
    .line 1434
    .line 1435
    move-result v0

    .line 1436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    .line 1441
    .line 1442
    return v11

    .line 1443
    :pswitch_41
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1447
    .line 1448
    .line 1449
    move-result v0

    .line 1450
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    .line 1456
    .line 1457
    if-eqz v0, :cond_1a

    .line 1458
    .line 1459
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1463
    .line 1464
    .line 1465
    goto :goto_8

    .line 1466
    :cond_1a
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    .line 1468
    .line 1469
    :goto_8
    return v11

    .line 1470
    :pswitch_42
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1474
    .line 1475
    .line 1476
    move-result v0

    .line 1477
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    .line 1482
    .line 1483
    return v11

    .line 1484
    :pswitch_43
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1488
    .line 1489
    .line 1490
    move-result v0

    .line 1491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1492
    .line 1493
    .line 1494
    move-result v3

    .line 1495
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v1

    .line 1499
    invoke-static {v1}, Lcom/android/ims/internal/IImsServiceFeatureListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureListener;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v1

    .line 1503
    invoke-interface {p0, v0, v3, v1}, Lcom/android/internal/telephony/ITelephony;->getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureListener;)Lcom/android/ims/internal/IImsServiceController;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v0

    .line 1507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    .line 1509
    .line 1510
    if-eqz v0, :cond_1b

    .line 1511
    .line 1512
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v2

    .line 1516
    :cond_1b
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1517
    .line 1518
    .line 1519
    return v11

    .line 1520
    :pswitch_44
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getTetherApnRequired()I

    .line 1524
    .line 1525
    .line 1526
    move-result v0

    .line 1527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    .line 1532
    .line 1533
    return v11

    .line 1534
    :pswitch_45
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1538
    .line 1539
    .line 1540
    move-result v0

    .line 1541
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I

    .line 1542
    .line 1543
    .line 1544
    move-result v0

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1549
    .line 1550
    .line 1551
    return v11

    .line 1552
    :pswitch_46
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v0

    .line 1559
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    .line 1560
    .line 1561
    .line 1562
    move-result v0

    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    .line 1568
    .line 1569
    return v11

    .line 1570
    :pswitch_47
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    .line 1572
    .line 1573
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1574
    .line 1575
    .line 1576
    move-result v0

    .line 1577
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->nvResetConfig(I)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v0

    .line 1581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    .line 1583
    .line 1584
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1585
    .line 1586
    .line 1587
    return v11

    .line 1588
    :pswitch_48
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1592
    .line 1593
    .line 1594
    move-result-object v0

    .line 1595
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z

    .line 1596
    .line 1597
    .line 1598
    move-result v0

    .line 1599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1603
    .line 1604
    .line 1605
    return v11

    .line 1606
    :pswitch_49
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1610
    .line 1611
    .line 1612
    move-result v0

    .line 1613
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v1

    .line 1617
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z

    .line 1618
    .line 1619
    .line 1620
    move-result v0

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    .line 1626
    .line 1627
    return v11

    .line 1628
    :pswitch_4a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    .line 1630
    .line 1631
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1632
    .line 1633
    .line 1634
    move-result v0

    .line 1635
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v0

    .line 1639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1643
    .line 1644
    .line 1645
    return v11

    .line 1646
    :pswitch_4b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1647
    .line 1648
    .line 1649
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1650
    .line 1651
    .line 1652
    move-result v0

    .line 1653
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v1

    .line 1657
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v0

    .line 1661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1665
    .line 1666
    .line 1667
    return v11

    .line 1668
    :pswitch_4c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1672
    .line 1673
    .line 1674
    move-result v2

    .line 1675
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1676
    .line 1677
    .line 1678
    move-result v3

    .line 1679
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1680
    .line 1681
    .line 1682
    move-result v4

    .line 1683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1684
    .line 1685
    .line 1686
    move-result v5

    .line 1687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1688
    .line 1689
    .line 1690
    move-result v6

    .line 1691
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1692
    .line 1693
    .line 1694
    move-result v7

    .line 1695
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v8

    .line 1699
    move-object v0, p0

    .line 1700
    move v1, v2

    .line 1701
    move v2, v3

    .line 1702
    move v3, v4

    .line 1703
    move v4, v5

    .line 1704
    move v5, v6

    .line 1705
    move v6, v7

    .line 1706
    move-object v7, v8

    .line 1707
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    .line 1708
    .line 1709
    .line 1710
    move-result-object v0

    .line 1711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    .line 1713
    .line 1714
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1715
    .line 1716
    .line 1717
    return v11

    .line 1718
    :pswitch_4d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1722
    .line 1723
    .line 1724
    move-result v2

    .line 1725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1726
    .line 1727
    .line 1728
    move-result v3

    .line 1729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1730
    .line 1731
    .line 1732
    move-result v4

    .line 1733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1734
    .line 1735
    .line 1736
    move-result v5

    .line 1737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1738
    .line 1739
    .line 1740
    move-result v6

    .line 1741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1742
    .line 1743
    .line 1744
    move-result v7

    .line 1745
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v8

    .line 1749
    move-object v0, p0

    .line 1750
    move v1, v2

    .line 1751
    move v2, v3

    .line 1752
    move v3, v4

    .line 1753
    move v4, v5

    .line 1754
    move v5, v6

    .line 1755
    move v6, v7

    .line 1756
    move-object v7, v8

    .line 1757
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v0

    .line 1761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1762
    .line 1763
    .line 1764
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    return v11

    .line 1768
    :pswitch_4e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1772
    .line 1773
    .line 1774
    move-result v2

    .line 1775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1776
    .line 1777
    .line 1778
    move-result v3

    .line 1779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1780
    .line 1781
    .line 1782
    move-result v4

    .line 1783
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1784
    .line 1785
    .line 1786
    move-result v5

    .line 1787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1788
    .line 1789
    .line 1790
    move-result v6

    .line 1791
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1792
    .line 1793
    .line 1794
    move-result v7

    .line 1795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1796
    .line 1797
    .line 1798
    move-result v8

    .line 1799
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v12

    .line 1803
    move-object v0, p0

    .line 1804
    move v1, v2

    .line 1805
    move v2, v3

    .line 1806
    move v3, v4

    .line 1807
    move v4, v5

    .line 1808
    move v5, v6

    .line 1809
    move v6, v7

    .line 1810
    move v7, v8

    .line 1811
    move-object v8, v12

    .line 1812
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v0

    .line 1816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1817
    .line 1818
    .line 1819
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1820
    .line 1821
    .line 1822
    return v11

    .line 1823
    :pswitch_4f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1824
    .line 1825
    .line 1826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1827
    .line 1828
    .line 1829
    move-result v0

    .line 1830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1831
    .line 1832
    .line 1833
    move-result v1

    .line 1834
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(II)Z

    .line 1835
    .line 1836
    .line 1837
    move-result v0

    .line 1838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1842
    .line 1843
    .line 1844
    return v11

    .line 1845
    :pswitch_50
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1849
    .line 1850
    .line 1851
    move-result v0

    .line 1852
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v2

    .line 1856
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v3

    .line 1860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1861
    .line 1862
    .line 1863
    move-result v1

    .line 1864
    invoke-interface {p0, v0, v2, v3, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(ILjava/lang/String;Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v0

    .line 1868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    .line 1870
    .line 1871
    if-eqz v0, :cond_1c

    .line 1872
    .line 1873
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v0, v10, v11}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1877
    .line 1878
    .line 1879
    goto :goto_9

    .line 1880
    :cond_1c
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    .line 1882
    .line 1883
    :goto_9
    return v11

    .line 1884
    :pswitch_51
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    .line 1886
    .line 1887
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getDefaultSim()I

    .line 1888
    .line 1889
    .line 1890
    move-result v0

    .line 1891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1892
    .line 1893
    .line 1894
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    .line 1896
    .line 1897
    return v11

    .line 1898
    :pswitch_52
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1902
    .line 1903
    .line 1904
    move-result v0

    .line 1905
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1909
    .line 1910
    .line 1911
    return v11

    .line 1912
    :pswitch_53
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    .line 1914
    .line 1915
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v0

    .line 1919
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v0

    .line 1923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    .line 1925
    .line 1926
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1927
    .line 1928
    .line 1929
    return v11

    .line 1930
    :pswitch_54
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1934
    .line 1935
    .line 1936
    move-result v0

    .line 1937
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v1

    .line 1941
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    .line 1942
    .line 1943
    .line 1944
    move-result v0

    .line 1945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1946
    .line 1947
    .line 1948
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    .line 1950
    .line 1951
    return v11

    .line 1952
    :pswitch_55
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v0

    .line 1959
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode(Ljava/lang/String;)I

    .line 1960
    .line 1961
    .line 1962
    move-result v0

    .line 1963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    .line 1968
    .line 1969
    return v11

    .line 1970
    :pswitch_56
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1974
    .line 1975
    .line 1976
    move-result v0

    .line 1977
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotIndex(I)Z

    .line 1978
    .line 1979
    .line 1980
    move-result v0

    .line 1981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1982
    .line 1983
    .line 1984
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1985
    .line 1986
    .line 1987
    return v11

    .line 1988
    :pswitch_57
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1989
    .line 1990
    .line 1991
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z

    .line 1992
    .line 1993
    .line 1994
    move-result v0

    .line 1995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    .line 1997
    .line 1998
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    .line 2000
    .line 2001
    return v11

    .line 2002
    :pswitch_58
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2003
    .line 2004
    .line 2005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2006
    .line 2007
    .line 2008
    move-result v0

    .line 2009
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v1

    .line 2013
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    .line 2014
    .line 2015
    .line 2016
    move-result v0

    .line 2017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    .line 2019
    .line 2020
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    .line 2022
    .line 2023
    return v11

    .line 2024
    :pswitch_59
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2025
    .line 2026
    .line 2027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2028
    .line 2029
    .line 2030
    move-result v0

    .line 2031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v1

    .line 2035
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    .line 2036
    .line 2037
    .line 2038
    move-result v0

    .line 2039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2040
    .line 2041
    .line 2042
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2043
    .line 2044
    .line 2045
    return v11

    .line 2046
    :pswitch_5a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v0

    .line 2053
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkType(Ljava/lang/String;)I

    .line 2054
    .line 2055
    .line 2056
    move-result v0

    .line 2057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2058
    .line 2059
    .line 2060
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    .line 2062
    .line 2063
    return v11

    .line 2064
    :pswitch_5b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2065
    .line 2066
    .line 2067
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2068
    .line 2069
    .line 2070
    move-result v0

    .line 2071
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v1

    .line 2075
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    .line 2076
    .line 2077
    .line 2078
    move-result v0

    .line 2079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2080
    .line 2081
    .line 2082
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    .line 2084
    .line 2085
    return v11

    .line 2086
    :pswitch_5c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    .line 2088
    .line 2089
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    .line 2090
    .line 2091
    .line 2092
    move-result v0

    .line 2093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    .line 2095
    .line 2096
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2097
    .line 2098
    .line 2099
    return v11

    .line 2100
    :pswitch_5d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2101
    .line 2102
    .line 2103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v0

    .line 2107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v1

    .line 2111
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    .line 2113
    .line 2114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    .line 2116
    .line 2117
    return v11

    .line 2118
    :pswitch_5e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    .line 2120
    .line 2121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v3

    .line 2125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2126
    .line 2127
    .line 2128
    move-result v4

    .line 2129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v5

    .line 2133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2134
    .line 2135
    .line 2136
    move-result v6

    .line 2137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v7

    .line 2141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2142
    .line 2143
    .line 2144
    move-result v0

    .line 2145
    if-eqz v0, :cond_1d

    .line 2146
    .line 2147
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2148
    .line 2149
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v0

    .line 2153
    check-cast v0, Landroid/app/PendingIntent;

    .line 2154
    .line 2155
    move-object v8, v0

    .line 2156
    goto :goto_a

    .line 2157
    :cond_1d
    move-object v8, v2

    .line 2158
    :goto_a
    move-object v0, p0

    .line 2159
    move-object v1, v3

    .line 2160
    move v2, v4

    .line 2161
    move-object v3, v5

    .line 2162
    move v4, v6

    .line 2163
    move-object v5, v7

    .line 2164
    move-object v6, v8

    .line 2165
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 2166
    .line 2167
    .line 2168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2169
    .line 2170
    .line 2171
    return v11

    .line 2172
    :pswitch_5f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    .line 2174
    .line 2175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2176
    .line 2177
    .line 2178
    move-result v0

    .line 2179
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v0

    .line 2183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2184
    .line 2185
    .line 2186
    if-eqz v0, :cond_1e

    .line 2187
    .line 2188
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v0, v10, v11}, Landroid/telephony/VisualVoicemailSmsFilterSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2192
    .line 2193
    .line 2194
    goto :goto_b

    .line 2195
    :cond_1e
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2196
    .line 2197
    .line 2198
    :goto_b
    return v11

    .line 2199
    :pswitch_60
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2200
    .line 2201
    .line 2202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v0

    .line 2206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2207
    .line 2208
    .line 2209
    move-result v1

    .line 2210
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v0

    .line 2214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2215
    .line 2216
    .line 2217
    if-eqz v0, :cond_1f

    .line 2218
    .line 2219
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2220
    .line 2221
    .line 2222
    invoke-virtual {v0, v10, v11}, Landroid/telephony/VisualVoicemailSmsFilterSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2223
    .line 2224
    .line 2225
    goto :goto_c

    .line 2226
    :cond_1f
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2227
    .line 2228
    .line 2229
    :goto_c
    return v11

    .line 2230
    :pswitch_61
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    .line 2232
    .line 2233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2234
    .line 2235
    .line 2236
    move-result-object v0

    .line 2237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2238
    .line 2239
    .line 2240
    move-result v1

    .line 2241
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V

    .line 2242
    .line 2243
    .line 2244
    return v11

    .line 2245
    :pswitch_62
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2246
    .line 2247
    .line 2248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v0

    .line 2252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2253
    .line 2254
    .line 2255
    move-result v3

    .line 2256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2257
    .line 2258
    .line 2259
    move-result v4

    .line 2260
    if-eqz v4, :cond_20

    .line 2261
    .line 2262
    sget-object v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2263
    .line 2264
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v1

    .line 2268
    move-object v2, v1

    .line 2269
    check-cast v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 2270
    .line 2271
    :cond_20
    invoke-interface {p0, v0, v3, v2}, Lcom/android/internal/telephony/ITelephony;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 2272
    .line 2273
    .line 2274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2275
    .line 2276
    .line 2277
    return v11

    .line 2278
    :pswitch_63
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2279
    .line 2280
    .line 2281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v0

    .line 2285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2286
    .line 2287
    .line 2288
    move-result v1

    .line 2289
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailPackageName(Ljava/lang/String;I)Ljava/lang/String;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v0

    .line 2293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    .line 2295
    .line 2296
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2297
    .line 2298
    .line 2299
    return v11

    .line 2300
    :pswitch_64
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2301
    .line 2302
    .line 2303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v0

    .line 2307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2308
    .line 2309
    .line 2310
    move-result v1

    .line 2311
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 2312
    .line 2313
    .line 2314
    move-result-object v0

    .line 2315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2316
    .line 2317
    .line 2318
    if-eqz v0, :cond_21

    .line 2319
    .line 2320
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    .line 2322
    .line 2323
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2324
    .line 2325
    .line 2326
    goto :goto_d

    .line 2327
    :cond_21
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    .line 2329
    .line 2330
    :goto_d
    return v11

    .line 2331
    :pswitch_65
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    .line 2333
    .line 2334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2335
    .line 2336
    .line 2337
    move-result v0

    .line 2338
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->isConcurrentVoiceAndDataAllowed(I)Z

    .line 2339
    .line 2340
    .line 2341
    move-result v0

    .line 2342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2346
    .line 2347
    .line 2348
    return v11

    .line 2349
    :pswitch_66
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2350
    .line 2351
    .line 2352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2353
    .line 2354
    .line 2355
    move-result v0

    .line 2356
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(I)I

    .line 2357
    .line 2358
    .line 2359
    move-result v0

    .line 2360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2361
    .line 2362
    .line 2363
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2364
    .line 2365
    .line 2366
    return v11

    .line 2367
    :pswitch_67
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2368
    .line 2369
    .line 2370
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I

    .line 2371
    .line 2372
    .line 2373
    move-result v0

    .line 2374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    .line 2376
    .line 2377
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2378
    .line 2379
    .line 2380
    return v11

    .line 2381
    :pswitch_68
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2382
    .line 2383
    .line 2384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2385
    .line 2386
    .line 2387
    move-result v0

    .line 2388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v1

    .line 2392
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivationState(ILjava/lang/String;)I

    .line 2393
    .line 2394
    .line 2395
    move-result v0

    .line 2396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2397
    .line 2398
    .line 2399
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2400
    .line 2401
    .line 2402
    return v11

    .line 2403
    :pswitch_69
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2404
    .line 2405
    .line 2406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2407
    .line 2408
    .line 2409
    move-result v0

    .line 2410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v1

    .line 2414
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceActivationState(ILjava/lang/String;)I

    .line 2415
    .line 2416
    .line 2417
    move-result v0

    .line 2418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2419
    .line 2420
    .line 2421
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2422
    .line 2423
    .line 2424
    return v11

    .line 2425
    :pswitch_6a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2426
    .line 2427
    .line 2428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2429
    .line 2430
    .line 2431
    move-result v0

    .line 2432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2433
    .line 2434
    .line 2435
    move-result v1

    .line 2436
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->setDataActivationState(II)V

    .line 2437
    .line 2438
    .line 2439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2440
    .line 2441
    .line 2442
    return v11

    .line 2443
    :pswitch_6b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2444
    .line 2445
    .line 2446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2447
    .line 2448
    .line 2449
    move-result v0

    .line 2450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2451
    .line 2452
    .line 2453
    move-result v1

    .line 2454
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->setVoiceActivationState(II)V

    .line 2455
    .line 2456
    .line 2457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2458
    .line 2459
    .line 2460
    return v11

    .line 2461
    :pswitch_6c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2462
    .line 2463
    .line 2464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2465
    .line 2466
    .line 2467
    move-result v0

    .line 2468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2469
    .line 2470
    .line 2471
    move-result-object v2

    .line 2472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2473
    .line 2474
    .line 2475
    move-result-object v1

    .line 2476
    invoke-interface {p0, v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    .line 2477
    .line 2478
    .line 2479
    move-result v0

    .line 2480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2481
    .line 2482
    .line 2483
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2484
    .line 2485
    .line 2486
    return v11

    .line 2487
    :pswitch_6d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    .line 2489
    .line 2490
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z

    .line 2491
    .line 2492
    .line 2493
    move-result v0

    .line 2494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2495
    .line 2496
    .line 2497
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2498
    .line 2499
    .line 2500
    return v11

    .line 2501
    :pswitch_6e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2502
    .line 2503
    .line 2504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2505
    .line 2506
    .line 2507
    move-result v0

    .line 2508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2509
    .line 2510
    .line 2511
    move-result-object v1

    .line 2512
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    .line 2513
    .line 2514
    .line 2515
    move-result-object v0

    .line 2516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2517
    .line 2518
    .line 2519
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2520
    .line 2521
    .line 2522
    return v11

    .line 2523
    :pswitch_6f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2524
    .line 2525
    .line 2526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v0

    .line 2530
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    .line 2531
    .line 2532
    .line 2533
    move-result-object v0

    .line 2534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    .line 2536
    .line 2537
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2538
    .line 2539
    .line 2540
    return v11

    .line 2541
    :pswitch_70
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2542
    .line 2543
    .line 2544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2545
    .line 2546
    .line 2547
    move-result v0

    .line 2548
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2549
    .line 2550
    .line 2551
    move-result-object v1

    .line 2552
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    .line 2553
    .line 2554
    .line 2555
    move-result v0

    .line 2556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    .line 2558
    .line 2559
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2560
    .line 2561
    .line 2562
    return v11

    .line 2563
    :pswitch_71
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2564
    .line 2565
    .line 2566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v0

    .line 2570
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode(Ljava/lang/String;)I

    .line 2571
    .line 2572
    .line 2573
    move-result v0

    .line 2574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2575
    .line 2576
    .line 2577
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2578
    .line 2579
    .line 2580
    return v11

    .line 2581
    :pswitch_72
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    .line 2583
    .line 2584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2585
    .line 2586
    .line 2587
    move-result v0

    .line 2588
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2589
    .line 2590
    .line 2591
    move-result-object v1

    .line 2592
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    .line 2593
    .line 2594
    .line 2595
    move-result v0

    .line 2596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    .line 2598
    .line 2599
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2600
    .line 2601
    .line 2602
    return v11

    .line 2603
    :pswitch_73
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2604
    .line 2605
    .line 2606
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2607
    .line 2608
    .line 2609
    move-result-object v0

    .line 2610
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex(Ljava/lang/String;)I

    .line 2611
    .line 2612
    .line 2613
    move-result v0

    .line 2614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2615
    .line 2616
    .line 2617
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2618
    .line 2619
    .line 2620
    return v11

    .line 2621
    :pswitch_74
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2622
    .line 2623
    .line 2624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2625
    .line 2626
    .line 2627
    move-result v0

    .line 2628
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I

    .line 2629
    .line 2630
    .line 2631
    move-result v0

    .line 2632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2633
    .line 2634
    .line 2635
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2636
    .line 2637
    .line 2638
    return v11

    .line 2639
    :pswitch_75
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2640
    .line 2641
    .line 2642
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    .line 2643
    .line 2644
    .line 2645
    move-result v0

    .line 2646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2647
    .line 2648
    .line 2649
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    .line 2651
    .line 2652
    return v11

    .line 2653
    :pswitch_76
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2654
    .line 2655
    .line 2656
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    .line 2657
    .line 2658
    .line 2659
    move-result v0

    .line 2660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2661
    .line 2662
    .line 2663
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2664
    .line 2665
    .line 2666
    return v11

    .line 2667
    :pswitch_77
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2668
    .line 2669
    .line 2670
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I

    .line 2671
    .line 2672
    .line 2673
    move-result v0

    .line 2674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2675
    .line 2676
    .line 2677
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2678
    .line 2679
    .line 2680
    return v11

    .line 2681
    :pswitch_78
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2682
    .line 2683
    .line 2684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2685
    .line 2686
    .line 2687
    move-result v0

    .line 2688
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSlot(I)I

    .line 2689
    .line 2690
    .line 2691
    move-result v0

    .line 2692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2693
    .line 2694
    .line 2695
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2696
    .line 2697
    .line 2698
    return v11

    .line 2699
    :pswitch_79
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2700
    .line 2701
    .line 2702
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    .line 2703
    .line 2704
    .line 2705
    move-result v0

    .line 2706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2707
    .line 2708
    .line 2709
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2710
    .line 2711
    .line 2712
    return v11

    .line 2713
    :pswitch_7a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2714
    .line 2715
    .line 2716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2717
    .line 2718
    .line 2719
    move-result-object v0

    .line 2720
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    .line 2721
    .line 2722
    .line 2723
    move-result-object v0

    .line 2724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2725
    .line 2726
    .line 2727
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2728
    .line 2729
    .line 2730
    return v11

    .line 2731
    :pswitch_7b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2732
    .line 2733
    .line 2734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2735
    .line 2736
    .line 2737
    move-result v0

    .line 2738
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    .line 2739
    .line 2740
    .line 2741
    move-result-object v0

    .line 2742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2743
    .line 2744
    .line 2745
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2746
    .line 2747
    .line 2748
    return v11

    .line 2749
    :pswitch_7c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2750
    .line 2751
    .line 2752
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v0

    .line 2756
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    .line 2757
    .line 2758
    .line 2759
    move-result-object v0

    .line 2760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2761
    .line 2762
    .line 2763
    if-eqz v0, :cond_22

    .line 2764
    .line 2765
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    .line 2767
    .line 2768
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2769
    .line 2770
    .line 2771
    goto :goto_e

    .line 2772
    :cond_22
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    .line 2774
    .line 2775
    :goto_e
    return v11

    .line 2776
    :pswitch_7d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2777
    .line 2778
    .line 2779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2780
    .line 2781
    .line 2782
    move-result v0

    .line 2783
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible(I)Z

    .line 2784
    .line 2785
    .line 2786
    move-result v0

    .line 2787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2788
    .line 2789
    .line 2790
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2791
    .line 2792
    .line 2793
    return v11

    .line 2794
    :pswitch_7e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2795
    .line 2796
    .line 2797
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    .line 2798
    .line 2799
    .line 2800
    move-result v0

    .line 2801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2802
    .line 2803
    .line 2804
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2805
    .line 2806
    .line 2807
    return v11

    .line 2808
    :pswitch_7f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2809
    .line 2810
    .line 2811
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    .line 2812
    .line 2813
    .line 2814
    move-result v0

    .line 2815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2816
    .line 2817
    .line 2818
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2819
    .line 2820
    .line 2821
    return v11

    .line 2822
    :pswitch_80
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2823
    .line 2824
    .line 2825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2826
    .line 2827
    .line 2828
    move-result v0

    .line 2829
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesForSubscriber(I)V

    .line 2830
    .line 2831
    .line 2832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2833
    .line 2834
    .line 2835
    return v11

    .line 2836
    :pswitch_81
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2837
    .line 2838
    .line 2839
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V

    .line 2840
    .line 2841
    .line 2842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2843
    .line 2844
    .line 2845
    return v11

    .line 2846
    :pswitch_82
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2847
    .line 2848
    .line 2849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2850
    .line 2851
    .line 2852
    move-result v0

    .line 2853
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesForSubscriber(I)V

    .line 2854
    .line 2855
    .line 2856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2857
    .line 2858
    .line 2859
    return v11

    .line 2860
    :pswitch_83
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2861
    .line 2862
    .line 2863
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V

    .line 2864
    .line 2865
    .line 2866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2867
    .line 2868
    .line 2869
    return v11

    .line 2870
    :pswitch_84
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2871
    .line 2872
    .line 2873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2874
    .line 2875
    .line 2876
    move-result v0

    .line 2877
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocationForSubscriber(I)V

    .line 2878
    .line 2879
    .line 2880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2881
    .line 2882
    .line 2883
    return v11

    .line 2884
    :pswitch_85
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2885
    .line 2886
    .line 2887
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V

    .line 2888
    .line 2889
    .line 2890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2891
    .line 2892
    .line 2893
    return v11

    .line 2894
    :pswitch_86
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2895
    .line 2896
    .line 2897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2898
    .line 2899
    .line 2900
    move-result v0

    .line 2901
    if-eqz v0, :cond_23

    .line 2902
    .line 2903
    move v4, v11

    .line 2904
    :cond_23
    invoke-interface {p0, v4}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z

    .line 2905
    .line 2906
    .line 2907
    move-result v0

    .line 2908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2909
    .line 2910
    .line 2911
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2912
    .line 2913
    .line 2914
    return v11

    .line 2915
    :pswitch_87
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2916
    .line 2917
    .line 2918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2919
    .line 2920
    .line 2921
    move-result v0

    .line 2922
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2923
    .line 2924
    .line 2925
    move-result v1

    .line 2926
    if-eqz v1, :cond_24

    .line 2927
    .line 2928
    move v4, v11

    .line 2929
    :cond_24
    invoke-interface {p0, v0, v4}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z

    .line 2930
    .line 2931
    .line 2932
    move-result v0

    .line 2933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    .line 2935
    .line 2936
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2937
    .line 2938
    .line 2939
    return v11

    .line 2940
    :pswitch_88
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2941
    .line 2942
    .line 2943
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2944
    .line 2945
    .line 2946
    move-result v0

    .line 2947
    if-eqz v0, :cond_25

    .line 2948
    .line 2949
    move v4, v11

    .line 2950
    :cond_25
    invoke-interface {p0, v4}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    .line 2951
    .line 2952
    .line 2953
    move-result v0

    .line 2954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2955
    .line 2956
    .line 2957
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2958
    .line 2959
    .line 2960
    return v11

    .line 2961
    :pswitch_89
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2962
    .line 2963
    .line 2964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2965
    .line 2966
    .line 2967
    move-result v0

    .line 2968
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOffForSubscriber(I)V

    .line 2969
    .line 2970
    .line 2971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2972
    .line 2973
    .line 2974
    return v11

    .line 2975
    :pswitch_8a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2976
    .line 2977
    .line 2978
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V

    .line 2979
    .line 2980
    .line 2981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    .line 2983
    .line 2984
    return v11

    .line 2985
    :pswitch_8b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2986
    .line 2987
    .line 2988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2989
    .line 2990
    .line 2991
    move-result v0

    .line 2992
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2993
    .line 2994
    .line 2995
    move-result-object v1

    .line 2996
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    .line 2997
    .line 2998
    .line 2999
    move-result v0

    .line 3000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3001
    .line 3002
    .line 3003
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3004
    .line 3005
    .line 3006
    return v11

    .line 3007
    :pswitch_8c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3008
    .line 3009
    .line 3010
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3011
    .line 3012
    .line 3013
    move-result v0

    .line 3014
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3015
    .line 3016
    .line 3017
    move-result-object v3

    .line 3018
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3019
    .line 3020
    .line 3021
    move-result v4

    .line 3022
    if-eqz v4, :cond_26

    .line 3023
    .line 3024
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3025
    .line 3026
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3027
    .line 3028
    .line 3029
    move-result-object v1

    .line 3030
    move-object v2, v1

    .line 3031
    check-cast v2, Landroid/os/ResultReceiver;

    .line 3032
    .line 3033
    :cond_26
    invoke-interface {p0, v0, v3, v2}, Lcom/android/internal/telephony/ITelephony;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 3034
    .line 3035
    .line 3036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3037
    .line 3038
    .line 3039
    return v11

    .line 3040
    :pswitch_8d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3041
    .line 3042
    .line 3043
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3044
    .line 3045
    .line 3046
    move-result-object v0

    .line 3047
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    .line 3048
    .line 3049
    .line 3050
    move-result v0

    .line 3051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3052
    .line 3053
    .line 3054
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3055
    .line 3056
    .line 3057
    return v11

    .line 3058
    :pswitch_8e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3059
    .line 3060
    .line 3061
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3062
    .line 3063
    .line 3064
    move-result v0

    .line 3065
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3066
    .line 3067
    .line 3068
    move-result-object v2

    .line 3069
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3070
    .line 3071
    .line 3072
    move-result-object v1

    .line 3073
    invoke-interface {p0, v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    .line 3074
    .line 3075
    .line 3076
    move-result-object v0

    .line 3077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3078
    .line 3079
    .line 3080
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3081
    .line 3082
    .line 3083
    return v11

    .line 3084
    :pswitch_8f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3085
    .line 3086
    .line 3087
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3088
    .line 3089
    .line 3090
    move-result-object v0

    .line 3091
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3092
    .line 3093
    .line 3094
    move-result-object v1

    .line 3095
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    .line 3096
    .line 3097
    .line 3098
    move-result-object v0

    .line 3099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3100
    .line 3101
    .line 3102
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3103
    .line 3104
    .line 3105
    return v11

    .line 3106
    :pswitch_90
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3107
    .line 3108
    .line 3109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3110
    .line 3111
    .line 3112
    move-result v0

    .line 3113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3114
    .line 3115
    .line 3116
    move-result-object v1

    .line 3117
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    .line 3118
    .line 3119
    .line 3120
    move-result-object v0

    .line 3121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3122
    .line 3123
    .line 3124
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3125
    .line 3126
    .line 3127
    return v11

    .line 3128
    :pswitch_91
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3129
    .line 3130
    .line 3131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3132
    .line 3133
    .line 3134
    move-result-object v0

    .line 3135
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I

    .line 3136
    .line 3137
    .line 3138
    move-result-object v0

    .line 3139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3140
    .line 3141
    .line 3142
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3143
    .line 3144
    .line 3145
    return v11

    .line 3146
    :pswitch_92
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3147
    .line 3148
    .line 3149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3150
    .line 3151
    .line 3152
    move-result v0

    .line 3153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3154
    .line 3155
    .line 3156
    move-result-object v2

    .line 3157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3158
    .line 3159
    .line 3160
    move-result-object v1

    .line 3161
    invoke-interface {p0, v0, v2, v1}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3162
    .line 3163
    .line 3164
    move-result v0

    .line 3165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    .line 3167
    .line 3168
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3169
    .line 3170
    .line 3171
    return v11

    .line 3172
    :pswitch_93
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3173
    .line 3174
    .line 3175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3176
    .line 3177
    .line 3178
    move-result-object v0

    .line 3179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3180
    .line 3181
    .line 3182
    move-result-object v1

    .line 3183
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3184
    .line 3185
    .line 3186
    move-result v0

    .line 3187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3188
    .line 3189
    .line 3190
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3191
    .line 3192
    .line 3193
    return v11

    .line 3194
    :pswitch_94
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3195
    .line 3196
    .line 3197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3198
    .line 3199
    .line 3200
    move-result v0

    .line 3201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3202
    .line 3203
    .line 3204
    move-result-object v1

    .line 3205
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z

    .line 3206
    .line 3207
    .line 3208
    move-result v0

    .line 3209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3210
    .line 3211
    .line 3212
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    .line 3214
    .line 3215
    return v11

    .line 3216
    :pswitch_95
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3217
    .line 3218
    .line 3219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3220
    .line 3221
    .line 3222
    move-result-object v0

    .line 3223
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    .line 3224
    .line 3225
    .line 3226
    move-result v0

    .line 3227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3228
    .line 3229
    .line 3230
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    .line 3232
    .line 3233
    return v11

    .line 3234
    :pswitch_96
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3235
    .line 3236
    .line 3237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3238
    .line 3239
    .line 3240
    move-result v0

    .line 3241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3242
    .line 3243
    .line 3244
    move-result-object v1

    .line 3245
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    .line 3246
    .line 3247
    .line 3248
    move-result v0

    .line 3249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3250
    .line 3251
    .line 3252
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3253
    .line 3254
    .line 3255
    return v11

    .line 3256
    :pswitch_97
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3257
    .line 3258
    .line 3259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3260
    .line 3261
    .line 3262
    move-result-object v0

    .line 3263
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOn(Ljava/lang/String;)Z

    .line 3264
    .line 3265
    .line 3266
    move-result v0

    .line 3267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3268
    .line 3269
    .line 3270
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3271
    .line 3272
    .line 3273
    return v11

    .line 3274
    :pswitch_98
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3275
    .line 3276
    .line 3277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3278
    .line 3279
    .line 3280
    move-result v0

    .line 3281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3282
    .line 3283
    .line 3284
    move-result-object v1

    .line 3285
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    .line 3286
    .line 3287
    .line 3288
    move-result v0

    .line 3289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3290
    .line 3291
    .line 3292
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3293
    .line 3294
    .line 3295
    return v11

    .line 3296
    :pswitch_99
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3297
    .line 3298
    .line 3299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3300
    .line 3301
    .line 3302
    move-result-object v0

    .line 3303
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z

    .line 3304
    .line 3305
    .line 3306
    move-result v0

    .line 3307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3308
    .line 3309
    .line 3310
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3311
    .line 3312
    .line 3313
    return v11

    .line 3314
    :pswitch_9a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3315
    .line 3316
    .line 3317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3318
    .line 3319
    .line 3320
    move-result-object v0

    .line 3321
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    .line 3322
    .line 3323
    .line 3324
    move-result v0

    .line 3325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3326
    .line 3327
    .line 3328
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3329
    .line 3330
    .line 3331
    return v11

    .line 3332
    :pswitch_9b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    .line 3334
    .line 3335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3336
    .line 3337
    .line 3338
    move-result v0

    .line 3339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3340
    .line 3341
    .line 3342
    move-result-object v1

    .line 3343
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRingingForSubscriber(ILjava/lang/String;)Z

    .line 3344
    .line 3345
    .line 3346
    move-result v0

    .line 3347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3348
    .line 3349
    .line 3350
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3351
    .line 3352
    .line 3353
    return v11

    .line 3354
    :pswitch_9c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3355
    .line 3356
    .line 3357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3358
    .line 3359
    .line 3360
    move-result v0

    .line 3361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3362
    .line 3363
    .line 3364
    move-result-object v1

    .line 3365
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(ILjava/lang/String;)Z

    .line 3366
    .line 3367
    .line 3368
    move-result v0

    .line 3369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3370
    .line 3371
    .line 3372
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3373
    .line 3374
    .line 3375
    return v11

    .line 3376
    :pswitch_9d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3377
    .line 3378
    .line 3379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3380
    .line 3381
    .line 3382
    move-result-object v0

    .line 3383
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    .line 3384
    .line 3385
    .line 3386
    move-result v0

    .line 3387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3388
    .line 3389
    .line 3390
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3391
    .line 3392
    .line 3393
    return v11

    .line 3394
    :pswitch_9e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3395
    .line 3396
    .line 3397
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 3398
    .line 3399
    .line 3400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3401
    .line 3402
    .line 3403
    return v11

    .line 3404
    :pswitch_9f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3405
    .line 3406
    .line 3407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3408
    .line 3409
    .line 3410
    move-result v0

    .line 3411
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->answerRingingCallForSubscriber(I)V

    .line 3412
    .line 3413
    .line 3414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3415
    .line 3416
    .line 3417
    return v11

    .line 3418
    :pswitch_a0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3419
    .line 3420
    .line 3421
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 3422
    .line 3423
    .line 3424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3425
    .line 3426
    .line 3427
    return v11

    .line 3428
    :pswitch_a1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3429
    .line 3430
    .line 3431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3432
    .line 3433
    .line 3434
    move-result v0

    .line 3435
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->endCallForSubscriber(I)Z

    .line 3436
    .line 3437
    .line 3438
    move-result v0

    .line 3439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3440
    .line 3441
    .line 3442
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3443
    .line 3444
    .line 3445
    return v11

    .line 3446
    :pswitch_a2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3447
    .line 3448
    .line 3449
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 3450
    .line 3451
    .line 3452
    move-result v0

    .line 3453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3454
    .line 3455
    .line 3456
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3457
    .line 3458
    .line 3459
    return v11

    .line 3460
    :pswitch_a3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3461
    .line 3462
    .line 3463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3464
    .line 3465
    .line 3466
    move-result-object v0

    .line 3467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3468
    .line 3469
    .line 3470
    move-result-object v1

    .line 3471
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    .line 3473
    .line 3474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3475
    .line 3476
    .line 3477
    return v11

    .line 3478
    :pswitch_a4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3479
    .line 3480
    .line 3481
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3482
    .line 3483
    .line 3484
    move-result-object v0

    .line 3485
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V

    .line 3486
    .line 3487
    .line 3488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3489
    .line 3490
    .line 3491
    return v11

    .line 3492
    :cond_27
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3493
    .line 3494
    .line 3495
    return v11

    .line 3496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
