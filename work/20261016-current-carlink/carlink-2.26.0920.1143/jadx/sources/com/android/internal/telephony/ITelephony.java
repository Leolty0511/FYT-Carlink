package com.android.internal.telephony;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.NetworkStats;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Messenger;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.service.carrier.CarrierIdentifier;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telephony.CellInfo;
import android.telephony.ClientRequestStats;
import android.telephony.IccOpenLogicalChannelResponse;
import android.telephony.NeighboringCellInfo;
import android.telephony.NetworkScanRequest;
import android.telephony.RadioAccessFamily;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyHistogram;
import android.telephony.VisualVoicemailSmsFilterSettings;
import com.android.ims.internal.IImsServiceController;
import com.android.ims.internal.IImsServiceFeatureListener;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ITelephony extends IInterface {

    public static abstract class Stub extends Binder implements ITelephony {
        private static final String DESCRIPTOR = "com.android.internal.telephony.ITelephony";
        static final int TRANSACTION_answerRingingCall = 5;
        static final int TRANSACTION_answerRingingCallForSubscriber = 6;
        static final int TRANSACTION_call = 2;
        static final int TRANSACTION_canChangeDtmfToneLength = 128;
        static final int TRANSACTION_carrierActionReportDefaultNetworkStatus = 158;
        static final int TRANSACTION_carrierActionSetMeteredApnsEnabled = 156;
        static final int TRANSACTION_carrierActionSetRadioEnabled = 157;
        static final int TRANSACTION_checkCarrierPrivilegesForPackage = 112;
        static final int TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone = 113;
        static final int TRANSACTION_dial = 1;
        static final int TRANSACTION_disableDataConnectivity = 39;
        static final int TRANSACTION_disableLocationUpdates = 36;
        static final int TRANSACTION_disableLocationUpdatesForSubscriber = 37;
        static final int TRANSACTION_disableVisualVoicemailSmsFilter = 68;
        static final int TRANSACTION_enableDataConnectivity = 38;
        static final int TRANSACTION_enableLocationUpdates = 34;
        static final int TRANSACTION_enableLocationUpdatesForSubscriber = 35;
        static final int TRANSACTION_enableVideoCalling = 126;
        static final int TRANSACTION_enableVisualVoicemailSmsFilter = 67;
        static final int TRANSACTION_endCall = 3;
        static final int TRANSACTION_endCallForSubscriber = 4;
        static final int TRANSACTION_factoryReset = 141;
        static final int TRANSACTION_getActivePhoneType = 48;
        static final int TRANSACTION_getActivePhoneTypeForSlot = 49;
        static final int TRANSACTION_getActiveVisualVoicemailSmsFilterSettings = 70;
        static final int TRANSACTION_getAidForAppType = 150;
        static final int TRANSACTION_getAllCellInfo = 82;
        static final int TRANSACTION_getAllowedCarriers = 155;
        static final int TRANSACTION_getCalculatedPreferredNetworkType = 95;
        static final int TRANSACTION_getCallState = 44;
        static final int TRANSACTION_getCallStateForSlot = 45;
        static final int TRANSACTION_getCarrierPackageNamesForIntentAndPhone = 114;
        static final int TRANSACTION_getCarrierPrivilegeStatus = 111;
        static final int TRANSACTION_getCdmaEriIconIndex = 50;
        static final int TRANSACTION_getCdmaEriIconIndexForSubscriber = 51;
        static final int TRANSACTION_getCdmaEriIconMode = 52;
        static final int TRANSACTION_getCdmaEriIconModeForSubscriber = 53;
        static final int TRANSACTION_getCdmaEriText = 54;
        static final int TRANSACTION_getCdmaEriTextForSubscriber = 55;
        static final int TRANSACTION_getCdmaMdn = 109;
        static final int TRANSACTION_getCdmaMin = 110;
        static final int TRANSACTION_getCdmaPrlVersion = 152;
        static final int TRANSACTION_getCellLocation = 41;
        static final int TRANSACTION_getCellNetworkScanResults = 100;
        static final int TRANSACTION_getClientRequestStats = 161;
        static final int TRANSACTION_getDataActivationState = 61;
        static final int TRANSACTION_getDataActivity = 46;
        static final int TRANSACTION_getDataEnabled = 106;
        static final int TRANSACTION_getDataNetworkType = 75;
        static final int TRANSACTION_getDataNetworkTypeForSubscriber = 76;
        static final int TRANSACTION_getDataState = 47;
        static final int TRANSACTION_getDefaultSim = 84;
        static final int TRANSACTION_getDeviceId = 136;
        static final int TRANSACTION_getDeviceSoftwareVersionForSlot = 139;
        static final int TRANSACTION_getEmergencyCallbackMode = 164;
        static final int TRANSACTION_getEsn = 151;
        static final int TRANSACTION_getForbiddenPlmns = 163;
        static final int TRANSACTION_getImeiForSlot = 137;
        static final int TRANSACTION_getImsServiceControllerAndListen = 98;
        static final int TRANSACTION_getLine1AlphaTagForDisplay = 117;
        static final int TRANSACTION_getLine1NumberForDisplay = 116;
        static final int TRANSACTION_getLocaleFromDefaultSim = 142;
        static final int TRANSACTION_getLteOnCdmaMode = 80;
        static final int TRANSACTION_getLteOnCdmaModeForSubscriber = 81;
        static final int TRANSACTION_getMeidForSlot = 138;
        static final int TRANSACTION_getMergedSubscriberIds = 118;
        static final int TRANSACTION_getNeighboringCellInfo = 43;
        static final int TRANSACTION_getNetworkCountryIsoForPhone = 42;
        static final int TRANSACTION_getNetworkType = 73;
        static final int TRANSACTION_getNetworkTypeForSubscriber = 74;
        static final int TRANSACTION_getPackagesWithCarrierPrivileges = 149;
        static final int TRANSACTION_getPcscfAddress = 107;
        static final int TRANSACTION_getPreferredNetworkType = 96;
        static final int TRANSACTION_getRadioAccessFamily = 125;
        static final int TRANSACTION_getServiceStateForSubscriber = 144;
        static final int TRANSACTION_getSignalStrength = 165;
        static final int TRANSACTION_getSubIdForPhoneAccount = 140;
        static final int TRANSACTION_getTelephonyHistograms = 153;
        static final int TRANSACTION_getTetherApnRequired = 97;
        static final int TRANSACTION_getVisualVoicemailPackageName = 66;
        static final int TRANSACTION_getVisualVoicemailSettings = 65;
        static final int TRANSACTION_getVisualVoicemailSmsFilterSettings = 69;
        static final int TRANSACTION_getVoiceActivationState = 60;
        static final int TRANSACTION_getVoiceMessageCount = 62;
        static final int TRANSACTION_getVoiceMessageCountForSubscriber = 63;
        static final int TRANSACTION_getVoiceNetworkTypeForSubscriber = 77;
        static final int TRANSACTION_getVoicemailRingtoneUri = 145;
        static final int TRANSACTION_getVtDataUsage = 159;
        static final int TRANSACTION_handlePinMmi = 24;
        static final int TRANSACTION_handlePinMmiForSubscriber = 26;
        static final int TRANSACTION_handleUssdRequest = 25;
        static final int TRANSACTION_hasIccCard = 78;
        static final int TRANSACTION_hasIccCardUsingSlotIndex = 79;
        static final int TRANSACTION_iccCloseLogicalChannel = 86;
        static final int TRANSACTION_iccExchangeSimIO = 89;
        static final int TRANSACTION_iccOpenLogicalChannel = 85;
        static final int TRANSACTION_iccTransmitApduBasicChannel = 88;
        static final int TRANSACTION_iccTransmitApduLogicalChannel = 87;
        static final int TRANSACTION_invokeOemRilRequestRaw = 121;
        static final int TRANSACTION_isConcurrentVoiceAndDataAllowed = 64;
        static final int TRANSACTION_isDataConnectivityPossible = 40;
        static final int TRANSACTION_isHearingAidCompatibilitySupported = 131;
        static final int TRANSACTION_isIdle = 12;
        static final int TRANSACTION_isIdleForSubscriber = 13;
        static final int TRANSACTION_isImsRegistered = 132;
        static final int TRANSACTION_isOffhook = 8;
        static final int TRANSACTION_isOffhookForSubscriber = 9;
        static final int TRANSACTION_isRadioOn = 14;
        static final int TRANSACTION_isRadioOnForSubscriber = 15;
        static final int TRANSACTION_isRinging = 11;
        static final int TRANSACTION_isRingingForSubscriber = 10;
        static final int TRANSACTION_isTtyModeSupported = 130;
        static final int TRANSACTION_isVideoCallingEnabled = 127;
        static final int TRANSACTION_isVideoTelephonyAvailable = 135;
        static final int TRANSACTION_isVoicemailVibrationEnabled = 147;
        static final int TRANSACTION_isVolteAvailable = 134;
        static final int TRANSACTION_isWifiCallingAvailable = 133;
        static final int TRANSACTION_isWorldPhone = 129;
        static final int TRANSACTION_needMobileRadioShutdown = 122;
        static final int TRANSACTION_needsOtaServiceProvisioning = 56;
        static final int TRANSACTION_nvReadItem = 91;
        static final int TRANSACTION_nvResetConfig = 94;
        static final int TRANSACTION_nvWriteCdmaPrl = 93;
        static final int TRANSACTION_nvWriteItem = 92;
        static final int TRANSACTION_requestModemActivityInfo = 143;
        static final int TRANSACTION_requestNetworkScan = 101;
        static final int TRANSACTION_sendDialerSpecialCode = 72;
        static final int TRANSACTION_sendEnvelopeWithStatus = 90;
        static final int TRANSACTION_sendVisualVoicemailSmsForSubscriber = 71;
        static final int TRANSACTION_setAllowedCarriers = 154;
        static final int TRANSACTION_setCellInfoListRate = 83;
        static final int TRANSACTION_setDataActivationState = 59;
        static final int TRANSACTION_setDataEnabled = 105;
        static final int TRANSACTION_setImsRegistrationState = 108;
        static final int TRANSACTION_setLine1NumberForDisplayForSubscriber = 115;
        static final int TRANSACTION_setNetworkSelectionModeAutomatic = 99;
        static final int TRANSACTION_setNetworkSelectionModeManual = 103;
        static final int TRANSACTION_setOperatorBrandOverride = 119;
        static final int TRANSACTION_setPolicyDataEnabled = 160;
        static final int TRANSACTION_setPreferredNetworkType = 104;
        static final int TRANSACTION_setRadio = 29;
        static final int TRANSACTION_setRadioCapability = 124;
        static final int TRANSACTION_setRadioForSubscriber = 30;
        static final int TRANSACTION_setRadioPower = 31;
        static final int TRANSACTION_setRoamingOverride = 120;
        static final int TRANSACTION_setSimPowerStateForSlot = 162;
        static final int TRANSACTION_setVoiceActivationState = 58;
        static final int TRANSACTION_setVoiceMailNumber = 57;
        static final int TRANSACTION_setVoicemailRingtoneUri = 146;
        static final int TRANSACTION_setVoicemailVibrationEnabled = 148;
        static final int TRANSACTION_shutdownMobileRadios = 123;
        static final int TRANSACTION_silenceRinger = 7;
        static final int TRANSACTION_stopNetworkScan = 102;
        static final int TRANSACTION_supplyPin = 16;
        static final int TRANSACTION_supplyPinForSubscriber = 17;
        static final int TRANSACTION_supplyPinReportResult = 20;
        static final int TRANSACTION_supplyPinReportResultForSubscriber = 21;
        static final int TRANSACTION_supplyPuk = 18;
        static final int TRANSACTION_supplyPukForSubscriber = 19;
        static final int TRANSACTION_supplyPukReportResult = 22;
        static final int TRANSACTION_supplyPukReportResultForSubscriber = 23;
        static final int TRANSACTION_toggleRadioOnOff = 27;
        static final int TRANSACTION_toggleRadioOnOffForSubscriber = 28;
        static final int TRANSACTION_updateServiceLocation = 32;
        static final int TRANSACTION_updateServiceLocationForSubscriber = 33;

        public static class Proxy implements ITelephony {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.android.internal.telephony.ITelephony
            public void answerRingingCall() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void answerRingingCallForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.telephony.ITelephony
            public void call(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean canChangeDtmfToneLength() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(128, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void carrierActionReportDefaultNetworkStatus(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(158, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void carrierActionSetMeteredApnsEnabled(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(156, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void carrierActionSetRadioEnabled(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(157, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int checkCarrierPrivilegesForPackage(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(112, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int checkCarrierPrivilegesForPackageAnyPhone(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(113, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void dial(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean disableDataConnectivity() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void disableLocationUpdates() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void disableLocationUpdatesForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void disableVisualVoicemailSmsFilter(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(68, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean enableDataConnectivity() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void enableLocationUpdates() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void enableLocationUpdatesForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void enableVideoCalling(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(126, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void enableVisualVoicemailSmsFilter(String str, int i2, VisualVoicemailSmsFilterSettings visualVoicemailSmsFilterSettings) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    if (visualVoicemailSmsFilterSettings != null) {
                        parcelObtain.writeInt(1);
                        visualVoicemailSmsFilterSettings.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(67, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean endCall() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean endCallForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void factoryReset(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(141, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getActivePhoneType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getActivePhoneTypeForSlot(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public VisualVoicemailSmsFilterSettings getActiveVisualVoicemailSmsFilterSettings(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? VisualVoicemailSmsFilterSettings.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getAidForAppType(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(150, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public List<CellInfo> getAllCellInfo(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(82, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(CellInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public List<CarrierIdentifier> getAllowedCarriers(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(155, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(CarrierIdentifier.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCalculatedPreferredNetworkType(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(95, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCallState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCallStateForSlot(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public List<String> getCarrierPackageNamesForIntentAndPhone(Intent intent, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(114, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCarrierPrivilegeStatus(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(111, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCdmaEriIconIndex(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCdmaEriIconIndexForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCdmaEriIconMode(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCdmaEriIconModeForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getCdmaEriText(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getCdmaEriTextForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getCdmaMdn(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(109, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getCdmaMin(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(110, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getCdmaPrlVersion(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(152, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public Bundle getCellLocation(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public CellNetworkScanResult getCellNetworkScanResults(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(100, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CellNetworkScanResult.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public List<ClientRequestStats> getClientRequestStats(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(161, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ClientRequestStats.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getDataActivationState(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getDataActivity() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean getDataEnabled(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(106, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getDataNetworkType(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getDataNetworkTypeForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getDataState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getDefaultSim() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(84, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getDeviceId(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(136, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getDeviceSoftwareVersionForSlot(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(139, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean getEmergencyCallbackMode(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(164, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getEsn(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(151, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String[] getForbiddenPlmns(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(163, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getImeiForSlot(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(137, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public IImsServiceController getImsServiceControllerAndListen(int i2, int i3, IImsServiceFeatureListener iImsServiceFeatureListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iImsServiceFeatureListener != null ? iImsServiceFeatureListener.asBinder() : null);
                    this.mRemote.transact(98, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IImsServiceController.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getLine1AlphaTagForDisplay(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(117, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getLine1NumberForDisplay(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(116, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getLocaleFromDefaultSim() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(142, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getLteOnCdmaMode(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(80, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getLteOnCdmaModeForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(81, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getMeidForSlot(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(138, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String[] getMergedSubscriberIds(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(118, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public List<NeighboringCellInfo> getNeighboringCellInfo(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(NeighboringCellInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getNetworkCountryIsoForPhone(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getNetworkType() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getNetworkTypeForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public List<String> getPackagesWithCarrierPrivileges() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(149, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String[] getPcscfAddress(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(107, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getPreferredNetworkType(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(96, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getRadioAccessFamily(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(125, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public ServiceState getServiceStateForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(144, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ServiceState.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public SignalStrength getSignalStrength(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(165, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? SignalStrength.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getSubIdForPhoneAccount(PhoneAccount phoneAccount) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (phoneAccount != null) {
                        parcelObtain.writeInt(1);
                        phoneAccount.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(140, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public List<TelephonyHistogram> getTelephonyHistograms() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(153, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(TelephonyHistogram.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getTetherApnRequired() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(97, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String getVisualVoicemailPackageName(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public Bundle getVisualVoicemailSettings(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public VisualVoicemailSmsFilterSettings getVisualVoicemailSmsFilterSettings(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? VisualVoicemailSmsFilterSettings.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getVoiceActivationState(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getVoiceMessageCount() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getVoiceMessageCountForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getVoiceNetworkTypeForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public Uri getVoicemailRingtoneUri(PhoneAccountHandle phoneAccountHandle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (phoneAccountHandle != null) {
                        parcelObtain.writeInt(1);
                        phoneAccountHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(145, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public NetworkStats getVtDataUsage(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(159, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? NetworkStats.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean handlePinMmi(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean handlePinMmiForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void handleUssdRequest(int i2, String str, ResultReceiver resultReceiver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (resultReceiver != null) {
                        parcelObtain.writeInt(1);
                        resultReceiver.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean hasIccCard() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(78, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean hasIccCardUsingSlotIndex(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(79, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean iccCloseLogicalChannel(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(86, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public byte[] iccExchangeSimIO(int i2, int i3, int i4, int i5, int i6, int i7, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeInt(i7);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(89, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public IccOpenLogicalChannelResponse iccOpenLogicalChannel(int i2, String str, String str2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(85, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? IccOpenLogicalChannelResponse.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String iccTransmitApduBasicChannel(int i2, int i3, int i4, int i5, int i6, int i7, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeInt(i7);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(88, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String iccTransmitApduLogicalChannel(int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    parcelObtain.writeInt(i7);
                    parcelObtain.writeInt(i8);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(87, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int invokeOemRilRequestRaw(byte[] bArr, byte[] bArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (bArr2 == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(bArr2.length);
                    }
                    this.mRemote.transact(121, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i2 = parcelObtain2.readInt();
                    parcelObtain2.readByteArray(bArr2);
                    return i2;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isConcurrentVoiceAndDataAllowed(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isDataConnectivityPossible(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isHearingAidCompatibilitySupported() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(131, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isIdle(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isIdleForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isImsRegistered() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(132, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isOffhook(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isOffhookForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isRadioOn(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isRadioOnForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isRinging(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isRingingForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isTtyModeSupported() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(130, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isVideoCallingEnabled(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(127, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isVideoTelephonyAvailable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(135, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isVoicemailVibrationEnabled(PhoneAccountHandle phoneAccountHandle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (phoneAccountHandle != null) {
                        parcelObtain.writeInt(1);
                        phoneAccountHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(147, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isVolteAvailable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(134, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isWifiCallingAvailable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(133, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isWorldPhone() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(129, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean needMobileRadioShutdown() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(122, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean needsOtaServiceProvisioning() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String nvReadItem(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(91, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean nvResetConfig(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(94, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean nvWriteCdmaPrl(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(93, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean nvWriteItem(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(92, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void requestModemActivityInfo(ResultReceiver resultReceiver) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (resultReceiver != null) {
                        parcelObtain.writeInt(1);
                        resultReceiver.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(143, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int requestNetworkScan(int i2, NetworkScanRequest networkScanRequest, Messenger messenger, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (networkScanRequest != null) {
                        parcelObtain.writeInt(1);
                        networkScanRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (messenger != null) {
                        parcelObtain.writeInt(1);
                        messenger.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(101, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void sendDialerSpecialCode(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public String sendEnvelopeWithStatus(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(90, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void sendVisualVoicemailSmsForSubscriber(String str, int i2, String str2, int i3, String str3, PendingIntent pendingIntent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str3);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(71, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int setAllowedCarriers(int i2, List<CarrierIdentifier> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedList(list);
                    this.mRemote.transact(154, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setCellInfoListRate(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(83, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setDataActivationState(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setDataEnabled(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(105, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setImsRegistrationState(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(108, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setLine1NumberForDisplayForSubscriber(int i2, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(115, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setNetworkSelectionModeAutomatic(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(99, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setNetworkSelectionModeManual(int i2, OperatorInfo operatorInfo, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    if (operatorInfo != null) {
                        parcelObtain.writeInt(1);
                        operatorInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(103, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setOperatorBrandOverride(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(119, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setPolicyDataEnabled(boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(160, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setPreferredNetworkType(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(104, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setRadio(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setRadioCapability(RadioAccessFamily[] radioAccessFamilyArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedArray(radioAccessFamilyArr, 0);
                    this.mRemote.transact(124, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setRadioForSubscriber(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setRadioPower(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setRoamingOverride(int i2, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeStringList(list2);
                    parcelObtain.writeStringList(list3);
                    parcelObtain.writeStringList(list4);
                    this.mRemote.transact(120, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setSimPowerStateForSlot(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(162, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setVoiceActivationState(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setVoiceMailNumber(int i2, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setVoicemailRingtoneUri(String str, PhoneAccountHandle phoneAccountHandle, Uri uri) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (phoneAccountHandle != null) {
                        parcelObtain.writeInt(1);
                        phoneAccountHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(146, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void setVoicemailVibrationEnabled(String str, PhoneAccountHandle phoneAccountHandle, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    int i2 = 1;
                    if (phoneAccountHandle != null) {
                        parcelObtain.writeInt(1);
                        phoneAccountHandle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(148, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void shutdownMobileRadios() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(123, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void silenceRinger() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void stopNetworkScan(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(102, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean supplyPin(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean supplyPinForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int[] supplyPinReportResult(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int[] supplyPinReportResultForSubscriber(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean supplyPuk(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean supplyPukForSubscriber(int i2, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int[] supplyPukReportResult(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int[] supplyPukReportResultForSubscriber(int i2, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void toggleRadioOnOff() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void toggleRadioOnOffForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void updateServiceLocation() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void updateServiceLocationForSubscriber(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITelephony asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITelephony)) ? new Proxy(iBinder) : (ITelephony) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    dial(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    call(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zEndCall = endCall();
                    parcel2.writeNoException();
                    parcel2.writeInt(zEndCall ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zEndCallForSubscriber = endCallForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zEndCallForSubscriber ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    answerRingingCall();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    answerRingingCallForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    silenceRinger();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsOffhook = isOffhook(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsOffhook ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsOffhookForSubscriber = isOffhookForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsOffhookForSubscriber ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsRingingForSubscriber = isRingingForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRingingForSubscriber ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsRinging = isRinging(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRinging ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsIdle = isIdle(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsIdle ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsIdleForSubscriber = isIdleForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsIdleForSubscriber ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsRadioOn = isRadioOn(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRadioOn ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsRadioOnForSubscriber = isRadioOnForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRadioOnForSubscriber ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSupplyPin = supplyPin(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSupplyPin ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSupplyPinForSubscriber = supplyPinForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSupplyPinForSubscriber ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSupplyPuk = supplyPuk(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSupplyPuk ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSupplyPukForSubscriber = supplyPukForSubscriber(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSupplyPukForSubscriber ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] iArrSupplyPinReportResult = supplyPinReportResult(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(iArrSupplyPinReportResult);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] iArrSupplyPinReportResultForSubscriber = supplyPinReportResultForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(iArrSupplyPinReportResultForSubscriber);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] iArrSupplyPukReportResult = supplyPukReportResult(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(iArrSupplyPukReportResult);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] iArrSupplyPukReportResultForSubscriber = supplyPukReportResultForSubscriber(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(iArrSupplyPukReportResultForSubscriber);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHandlePinMmi = handlePinMmi(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zHandlePinMmi ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    handleUssdRequest(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHandlePinMmiForSubscriber = handlePinMmiForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zHandlePinMmiForSubscriber ? 1 : 0);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    toggleRadioOnOff();
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    toggleRadioOnOffForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean radio = setRadio(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(radio ? 1 : 0);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean radioForSubscriber = setRadioForSubscriber(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(radioForSubscriber ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean radioPower = setRadioPower(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(radioPower ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateServiceLocation();
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateServiceLocationForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableLocationUpdates();
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableLocationUpdatesForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableLocationUpdates();
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableLocationUpdatesForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zEnableDataConnectivity = enableDataConnectivity();
                    parcel2.writeNoException();
                    parcel2.writeInt(zEnableDataConnectivity ? 1 : 0);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDisableDataConnectivity = disableDataConnectivity();
                    parcel2.writeNoException();
                    parcel2.writeInt(zDisableDataConnectivity ? 1 : 0);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsDataConnectivityPossible = isDataConnectivityPossible(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsDataConnectivityPossible ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle cellLocation = getCellLocation(parcel.readString());
                    parcel2.writeNoException();
                    if (cellLocation != null) {
                        parcel2.writeInt(1);
                        cellLocation.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    String networkCountryIsoForPhone = getNetworkCountryIsoForPhone(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(networkCountryIsoForPhone);
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<NeighboringCellInfo> neighboringCellInfo = getNeighboringCellInfo(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(neighboringCellInfo);
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    int callState = getCallState();
                    parcel2.writeNoException();
                    parcel2.writeInt(callState);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    int callStateForSlot = getCallStateForSlot(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(callStateForSlot);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dataActivity = getDataActivity();
                    parcel2.writeNoException();
                    parcel2.writeInt(dataActivity);
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dataState = getDataState();
                    parcel2.writeNoException();
                    parcel2.writeInt(dataState);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    int activePhoneType = getActivePhoneType();
                    parcel2.writeNoException();
                    parcel2.writeInt(activePhoneType);
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    int activePhoneTypeForSlot = getActivePhoneTypeForSlot(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(activePhoneTypeForSlot);
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cdmaEriIconIndex = getCdmaEriIconIndex(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(cdmaEriIconIndex);
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cdmaEriIconIndexForSubscriber = getCdmaEriIconIndexForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(cdmaEriIconIndexForSubscriber);
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cdmaEriIconMode = getCdmaEriIconMode(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(cdmaEriIconMode);
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cdmaEriIconModeForSubscriber = getCdmaEriIconModeForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(cdmaEriIconModeForSubscriber);
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    String cdmaEriText = getCdmaEriText(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(cdmaEriText);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    String cdmaEriTextForSubscriber = getCdmaEriTextForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(cdmaEriTextForSubscriber);
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNeedsOtaServiceProvisioning = needsOtaServiceProvisioning();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNeedsOtaServiceProvisioning ? 1 : 0);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean voiceMailNumber = setVoiceMailNumber(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(voiceMailNumber ? 1 : 0);
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVoiceActivationState(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDataActivationState(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voiceActivationState = getVoiceActivationState(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(voiceActivationState);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dataActivationState = getDataActivationState(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(dataActivationState);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voiceMessageCount = getVoiceMessageCount();
                    parcel2.writeNoException();
                    parcel2.writeInt(voiceMessageCount);
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voiceMessageCountForSubscriber = getVoiceMessageCountForSubscriber(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(voiceMessageCountForSubscriber);
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsConcurrentVoiceAndDataAllowed = isConcurrentVoiceAndDataAllowed(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsConcurrentVoiceAndDataAllowed ? 1 : 0);
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle visualVoicemailSettings = getVisualVoicemailSettings(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (visualVoicemailSettings != null) {
                        parcel2.writeInt(1);
                        visualVoicemailSettings.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    String visualVoicemailPackageName = getVisualVoicemailPackageName(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(visualVoicemailPackageName);
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableVisualVoicemailSmsFilter(parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? VisualVoicemailSmsFilterSettings.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableVisualVoicemailSmsFilter(parcel.readString(), parcel.readInt());
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    VisualVoicemailSmsFilterSettings visualVoicemailSmsFilterSettings = getVisualVoicemailSmsFilterSettings(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (visualVoicemailSmsFilterSettings != null) {
                        parcel2.writeInt(1);
                        visualVoicemailSmsFilterSettings.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    VisualVoicemailSmsFilterSettings activeVisualVoicemailSmsFilterSettings = getActiveVisualVoicemailSmsFilterSettings(parcel.readInt());
                    parcel2.writeNoException();
                    if (activeVisualVoicemailSmsFilterSettings != null) {
                        parcel2.writeInt(1);
                        activeVisualVoicemailSmsFilterSettings.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendVisualVoicemailSmsForSubscriber(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendDialerSpecialCode(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    int networkType = getNetworkType();
                    parcel2.writeNoException();
                    parcel2.writeInt(networkType);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    int networkTypeForSubscriber = getNetworkTypeForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(networkTypeForSubscriber);
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dataNetworkType = getDataNetworkType(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(dataNetworkType);
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    int dataNetworkTypeForSubscriber = getDataNetworkTypeForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(dataNetworkTypeForSubscriber);
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voiceNetworkTypeForSubscriber = getVoiceNetworkTypeForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(voiceNetworkTypeForSubscriber);
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasIccCard = hasIccCard();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasIccCard ? 1 : 0);
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasIccCardUsingSlotIndex = hasIccCardUsingSlotIndex(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasIccCardUsingSlotIndex ? 1 : 0);
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lteOnCdmaMode = getLteOnCdmaMode(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(lteOnCdmaMode);
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lteOnCdmaModeForSubscriber = getLteOnCdmaModeForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(lteOnCdmaModeForSubscriber);
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<CellInfo> allCellInfo = getAllCellInfo(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allCellInfo);
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCellInfoListRate(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    int defaultSim = getDefaultSim();
                    parcel2.writeNoException();
                    parcel2.writeInt(defaultSim);
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    IccOpenLogicalChannelResponse iccOpenLogicalChannelResponseIccOpenLogicalChannel = iccOpenLogicalChannel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (iccOpenLogicalChannelResponseIccOpenLogicalChannel != null) {
                        parcel2.writeInt(1);
                        iccOpenLogicalChannelResponseIccOpenLogicalChannel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIccCloseLogicalChannel = iccCloseLogicalChannel(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIccCloseLogicalChannel ? 1 : 0);
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strIccTransmitApduLogicalChannel = iccTransmitApduLogicalChannel(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strIccTransmitApduLogicalChannel);
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strIccTransmitApduBasicChannel = iccTransmitApduBasicChannel(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strIccTransmitApduBasicChannel);
                    return true;
                case 89:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] bArrIccExchangeSimIO = iccExchangeSimIO(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(bArrIccExchangeSimIO);
                    return true;
                case 90:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strSendEnvelopeWithStatus = sendEnvelopeWithStatus(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strSendEnvelopeWithStatus);
                    return true;
                case 91:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strNvReadItem = nvReadItem(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strNvReadItem);
                    return true;
                case 92:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNvWriteItem = nvWriteItem(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zNvWriteItem ? 1 : 0);
                    return true;
                case 93:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNvWriteCdmaPrl = nvWriteCdmaPrl(parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(zNvWriteCdmaPrl ? 1 : 0);
                    return true;
                case 94:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNvResetConfig = nvResetConfig(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zNvResetConfig ? 1 : 0);
                    return true;
                case 95:
                    parcel.enforceInterface(DESCRIPTOR);
                    int calculatedPreferredNetworkType = getCalculatedPreferredNetworkType(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(calculatedPreferredNetworkType);
                    return true;
                case 96:
                    parcel.enforceInterface(DESCRIPTOR);
                    int preferredNetworkType = getPreferredNetworkType(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(preferredNetworkType);
                    return true;
                case 97:
                    parcel.enforceInterface(DESCRIPTOR);
                    int tetherApnRequired = getTetherApnRequired();
                    parcel2.writeNoException();
                    parcel2.writeInt(tetherApnRequired);
                    return true;
                case 98:
                    parcel.enforceInterface(DESCRIPTOR);
                    IImsServiceController imsServiceControllerAndListen = getImsServiceControllerAndListen(parcel.readInt(), parcel.readInt(), IImsServiceFeatureListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(imsServiceControllerAndListen != null ? imsServiceControllerAndListen.asBinder() : null);
                    return true;
                case 99:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNetworkSelectionModeAutomatic(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 100:
                    parcel.enforceInterface(DESCRIPTOR);
                    CellNetworkScanResult cellNetworkScanResults = getCellNetworkScanResults(parcel.readInt());
                    parcel2.writeNoException();
                    if (cellNetworkScanResults != null) {
                        parcel2.writeInt(1);
                        cellNetworkScanResults.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 101:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRequestNetworkScan = requestNetworkScan(parcel.readInt(), parcel.readInt() != 0 ? NetworkScanRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Messenger.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRequestNetworkScan);
                    return true;
                case 102:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopNetworkScan(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 103:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean networkSelectionModeManual = setNetworkSelectionModeManual(parcel.readInt(), parcel.readInt() != 0 ? OperatorInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(networkSelectionModeManual ? 1 : 0);
                    return true;
                case 104:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean preferredNetworkType2 = setPreferredNetworkType(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(preferredNetworkType2 ? 1 : 0);
                    return true;
                case 105:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDataEnabled(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 106:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean dataEnabled = getDataEnabled(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(dataEnabled ? 1 : 0);
                    return true;
                case 107:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] pcscfAddress = getPcscfAddress(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(pcscfAddress);
                    return true;
                case 108:
                    parcel.enforceInterface(DESCRIPTOR);
                    setImsRegistrationState(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 109:
                    parcel.enforceInterface(DESCRIPTOR);
                    String cdmaMdn = getCdmaMdn(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(cdmaMdn);
                    return true;
                case 110:
                    parcel.enforceInterface(DESCRIPTOR);
                    String cdmaMin = getCdmaMin(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(cdmaMin);
                    return true;
                case 111:
                    parcel.enforceInterface(DESCRIPTOR);
                    int carrierPrivilegeStatus = getCarrierPrivilegeStatus(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(carrierPrivilegeStatus);
                    return true;
                case 112:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckCarrierPrivilegesForPackage = checkCarrierPrivilegesForPackage(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckCarrierPrivilegesForPackage);
                    return true;
                case 113:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckCarrierPrivilegesForPackageAnyPhone = checkCarrierPrivilegesForPackageAnyPhone(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckCarrierPrivilegesForPackageAnyPhone);
                    return true;
                case 114:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> carrierPackageNamesForIntentAndPhone = getCarrierPackageNamesForIntentAndPhone(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringList(carrierPackageNamesForIntentAndPhone);
                    return true;
                case 115:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean line1NumberForDisplayForSubscriber = setLine1NumberForDisplayForSubscriber(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(line1NumberForDisplayForSubscriber ? 1 : 0);
                    return true;
                case 116:
                    parcel.enforceInterface(DESCRIPTOR);
                    String line1NumberForDisplay = getLine1NumberForDisplay(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(line1NumberForDisplay);
                    return true;
                case 117:
                    parcel.enforceInterface(DESCRIPTOR);
                    String line1AlphaTagForDisplay = getLine1AlphaTagForDisplay(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(line1AlphaTagForDisplay);
                    return true;
                case 118:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] mergedSubscriberIds = getMergedSubscriberIds(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(mergedSubscriberIds);
                    return true;
                case 119:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean operatorBrandOverride = setOperatorBrandOverride(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(operatorBrandOverride ? 1 : 0);
                    return true;
                case 120:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean roamingOverride = setRoamingOverride(parcel.readInt(), parcel.createStringArrayList(), parcel.createStringArrayList(), parcel.createStringArrayList(), parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeInt(roamingOverride ? 1 : 0);
                    return true;
                case 121:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] bArrCreateByteArray = parcel.createByteArray();
                    int i4 = parcel.readInt();
                    byte[] bArr = i4 >= 0 ? new byte[i4] : null;
                    int iInvokeOemRilRequestRaw = invokeOemRilRequestRaw(bArrCreateByteArray, bArr);
                    parcel2.writeNoException();
                    parcel2.writeInt(iInvokeOemRilRequestRaw);
                    parcel2.writeByteArray(bArr);
                    return true;
                case 122:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNeedMobileRadioShutdown = needMobileRadioShutdown();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNeedMobileRadioShutdown ? 1 : 0);
                    return true;
                case 123:
                    parcel.enforceInterface(DESCRIPTOR);
                    shutdownMobileRadios();
                    parcel2.writeNoException();
                    return true;
                case 124:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRadioCapability((RadioAccessFamily[]) parcel.createTypedArray(RadioAccessFamily.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 125:
                    parcel.enforceInterface(DESCRIPTOR);
                    int radioAccessFamily = getRadioAccessFamily(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(radioAccessFamily);
                    return true;
                case 126:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableVideoCalling(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 127:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsVideoCallingEnabled = isVideoCallingEnabled(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsVideoCallingEnabled ? 1 : 0);
                    return true;
                case 128:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCanChangeDtmfToneLength = canChangeDtmfToneLength();
                    parcel2.writeNoException();
                    parcel2.writeInt(zCanChangeDtmfToneLength ? 1 : 0);
                    return true;
                case 129:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsWorldPhone = isWorldPhone();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsWorldPhone ? 1 : 0);
                    return true;
                case 130:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsTtyModeSupported = isTtyModeSupported();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsTtyModeSupported ? 1 : 0);
                    return true;
                case 131:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsHearingAidCompatibilitySupported = isHearingAidCompatibilitySupported();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsHearingAidCompatibilitySupported ? 1 : 0);
                    return true;
                case 132:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsImsRegistered = isImsRegistered();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsImsRegistered ? 1 : 0);
                    return true;
                case 133:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsWifiCallingAvailable = isWifiCallingAvailable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsWifiCallingAvailable ? 1 : 0);
                    return true;
                case 134:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsVolteAvailable = isVolteAvailable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsVolteAvailable ? 1 : 0);
                    return true;
                case 135:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsVideoTelephonyAvailable = isVideoTelephonyAvailable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsVideoTelephonyAvailable ? 1 : 0);
                    return true;
                case 136:
                    parcel.enforceInterface(DESCRIPTOR);
                    String deviceId = getDeviceId(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(deviceId);
                    return true;
                case 137:
                    parcel.enforceInterface(DESCRIPTOR);
                    String imeiForSlot = getImeiForSlot(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(imeiForSlot);
                    return true;
                case 138:
                    parcel.enforceInterface(DESCRIPTOR);
                    String meidForSlot = getMeidForSlot(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(meidForSlot);
                    return true;
                case 139:
                    parcel.enforceInterface(DESCRIPTOR);
                    String deviceSoftwareVersionForSlot = getDeviceSoftwareVersionForSlot(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(deviceSoftwareVersionForSlot);
                    return true;
                case 140:
                    parcel.enforceInterface(DESCRIPTOR);
                    int subIdForPhoneAccount = getSubIdForPhoneAccount(parcel.readInt() != 0 ? PhoneAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(subIdForPhoneAccount);
                    return true;
                case 141:
                    parcel.enforceInterface(DESCRIPTOR);
                    factoryReset(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 142:
                    parcel.enforceInterface(DESCRIPTOR);
                    String localeFromDefaultSim = getLocaleFromDefaultSim();
                    parcel2.writeNoException();
                    parcel2.writeString(localeFromDefaultSim);
                    return true;
                case 143:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestModemActivityInfo(parcel.readInt() != 0 ? ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 144:
                    parcel.enforceInterface(DESCRIPTOR);
                    ServiceState serviceStateForSubscriber = getServiceStateForSubscriber(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (serviceStateForSubscriber != null) {
                        parcel2.writeInt(1);
                        serviceStateForSubscriber.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 145:
                    parcel.enforceInterface(DESCRIPTOR);
                    Uri voicemailRingtoneUri = getVoicemailRingtoneUri(parcel.readInt() != 0 ? PhoneAccountHandle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (voicemailRingtoneUri != null) {
                        parcel2.writeInt(1);
                        voicemailRingtoneUri.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 146:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVoicemailRingtoneUri(parcel.readString(), parcel.readInt() != 0 ? PhoneAccountHandle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 147:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsVoicemailVibrationEnabled = isVoicemailVibrationEnabled(parcel.readInt() != 0 ? PhoneAccountHandle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsVoicemailVibrationEnabled ? 1 : 0);
                    return true;
                case 148:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVoicemailVibrationEnabled(parcel.readString(), parcel.readInt() != 0 ? PhoneAccountHandle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 149:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> packagesWithCarrierPrivileges = getPackagesWithCarrierPrivileges();
                    parcel2.writeNoException();
                    parcel2.writeStringList(packagesWithCarrierPrivileges);
                    return true;
                case 150:
                    parcel.enforceInterface(DESCRIPTOR);
                    String aidForAppType = getAidForAppType(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(aidForAppType);
                    return true;
                case 151:
                    parcel.enforceInterface(DESCRIPTOR);
                    String esn = getEsn(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(esn);
                    return true;
                case 152:
                    parcel.enforceInterface(DESCRIPTOR);
                    String cdmaPrlVersion = getCdmaPrlVersion(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(cdmaPrlVersion);
                    return true;
                case 153:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<TelephonyHistogram> telephonyHistograms = getTelephonyHistograms();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(telephonyHistograms);
                    return true;
                case 154:
                    parcel.enforceInterface(DESCRIPTOR);
                    int allowedCarriers = setAllowedCarriers(parcel.readInt(), parcel.createTypedArrayList(CarrierIdentifier.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(allowedCarriers);
                    return true;
                case 155:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<CarrierIdentifier> allowedCarriers2 = getAllowedCarriers(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allowedCarriers2);
                    return true;
                case 156:
                    parcel.enforceInterface(DESCRIPTOR);
                    carrierActionSetMeteredApnsEnabled(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 157:
                    parcel.enforceInterface(DESCRIPTOR);
                    carrierActionSetRadioEnabled(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 158:
                    parcel.enforceInterface(DESCRIPTOR);
                    carrierActionReportDefaultNetworkStatus(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 159:
                    parcel.enforceInterface(DESCRIPTOR);
                    NetworkStats vtDataUsage = getVtDataUsage(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (vtDataUsage != null) {
                        parcel2.writeInt(1);
                        vtDataUsage.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 160:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPolicyDataEnabled(parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 161:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ClientRequestStats> clientRequestStats = getClientRequestStats(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(clientRequestStats);
                    return true;
                case 162:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSimPowerStateForSlot(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 163:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] forbiddenPlmns = getForbiddenPlmns(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(forbiddenPlmns);
                    return true;
                case 164:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean emergencyCallbackMode = getEmergencyCallbackMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(emergencyCallbackMode ? 1 : 0);
                    return true;
                case 165:
                    parcel.enforceInterface(DESCRIPTOR);
                    SignalStrength signalStrength = getSignalStrength(parcel.readInt());
                    parcel2.writeNoException();
                    if (signalStrength != null) {
                        parcel2.writeInt(1);
                        signalStrength.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void answerRingingCall();

    void answerRingingCallForSubscriber(int i2);

    void call(String str, String str2);

    boolean canChangeDtmfToneLength();

    void carrierActionReportDefaultNetworkStatus(int i2, boolean z2);

    void carrierActionSetMeteredApnsEnabled(int i2, boolean z2);

    void carrierActionSetRadioEnabled(int i2, boolean z2);

    int checkCarrierPrivilegesForPackage(String str);

    int checkCarrierPrivilegesForPackageAnyPhone(String str);

    void dial(String str);

    boolean disableDataConnectivity();

    void disableLocationUpdates();

    void disableLocationUpdatesForSubscriber(int i2);

    void disableVisualVoicemailSmsFilter(String str, int i2);

    boolean enableDataConnectivity();

    void enableLocationUpdates();

    void enableLocationUpdatesForSubscriber(int i2);

    void enableVideoCalling(boolean z2);

    void enableVisualVoicemailSmsFilter(String str, int i2, VisualVoicemailSmsFilterSettings visualVoicemailSmsFilterSettings);

    boolean endCall();

    boolean endCallForSubscriber(int i2);

    void factoryReset(int i2);

    int getActivePhoneType();

    int getActivePhoneTypeForSlot(int i2);

    VisualVoicemailSmsFilterSettings getActiveVisualVoicemailSmsFilterSettings(int i2);

    String getAidForAppType(int i2, int i3);

    List<CellInfo> getAllCellInfo(String str);

    List<CarrierIdentifier> getAllowedCarriers(int i2);

    int getCalculatedPreferredNetworkType(String str);

    int getCallState();

    int getCallStateForSlot(int i2);

    List<String> getCarrierPackageNamesForIntentAndPhone(Intent intent, int i2);

    int getCarrierPrivilegeStatus(int i2);

    int getCdmaEriIconIndex(String str);

    int getCdmaEriIconIndexForSubscriber(int i2, String str);

    int getCdmaEriIconMode(String str);

    int getCdmaEriIconModeForSubscriber(int i2, String str);

    String getCdmaEriText(String str);

    String getCdmaEriTextForSubscriber(int i2, String str);

    String getCdmaMdn(int i2);

    String getCdmaMin(int i2);

    String getCdmaPrlVersion(int i2);

    Bundle getCellLocation(String str);

    CellNetworkScanResult getCellNetworkScanResults(int i2);

    List<ClientRequestStats> getClientRequestStats(String str, int i2);

    int getDataActivationState(int i2, String str);

    int getDataActivity();

    boolean getDataEnabled(int i2);

    int getDataNetworkType(String str);

    int getDataNetworkTypeForSubscriber(int i2, String str);

    int getDataState();

    int getDefaultSim();

    String getDeviceId(String str);

    String getDeviceSoftwareVersionForSlot(int i2, String str);

    boolean getEmergencyCallbackMode(int i2);

    String getEsn(int i2);

    String[] getForbiddenPlmns(int i2, int i3);

    String getImeiForSlot(int i2, String str);

    IImsServiceController getImsServiceControllerAndListen(int i2, int i3, IImsServiceFeatureListener iImsServiceFeatureListener);

    String getLine1AlphaTagForDisplay(int i2, String str);

    String getLine1NumberForDisplay(int i2, String str);

    String getLocaleFromDefaultSim();

    int getLteOnCdmaMode(String str);

    int getLteOnCdmaModeForSubscriber(int i2, String str);

    String getMeidForSlot(int i2, String str);

    String[] getMergedSubscriberIds(String str);

    List<NeighboringCellInfo> getNeighboringCellInfo(String str);

    String getNetworkCountryIsoForPhone(int i2);

    int getNetworkType();

    int getNetworkTypeForSubscriber(int i2, String str);

    List<String> getPackagesWithCarrierPrivileges();

    String[] getPcscfAddress(String str, String str2);

    int getPreferredNetworkType(int i2);

    int getRadioAccessFamily(int i2, String str);

    ServiceState getServiceStateForSubscriber(int i2, String str);

    SignalStrength getSignalStrength(int i2);

    int getSubIdForPhoneAccount(PhoneAccount phoneAccount);

    List<TelephonyHistogram> getTelephonyHistograms();

    int getTetherApnRequired();

    String getVisualVoicemailPackageName(String str, int i2);

    Bundle getVisualVoicemailSettings(String str, int i2);

    VisualVoicemailSmsFilterSettings getVisualVoicemailSmsFilterSettings(String str, int i2);

    int getVoiceActivationState(int i2, String str);

    int getVoiceMessageCount();

    int getVoiceMessageCountForSubscriber(int i2);

    int getVoiceNetworkTypeForSubscriber(int i2, String str);

    Uri getVoicemailRingtoneUri(PhoneAccountHandle phoneAccountHandle);

    NetworkStats getVtDataUsage(int i2, boolean z2);

    boolean handlePinMmi(String str);

    boolean handlePinMmiForSubscriber(int i2, String str);

    void handleUssdRequest(int i2, String str, ResultReceiver resultReceiver);

    boolean hasIccCard();

    boolean hasIccCardUsingSlotIndex(int i2);

    boolean iccCloseLogicalChannel(int i2, int i3);

    byte[] iccExchangeSimIO(int i2, int i3, int i4, int i5, int i6, int i7, String str);

    IccOpenLogicalChannelResponse iccOpenLogicalChannel(int i2, String str, String str2, int i3);

    String iccTransmitApduBasicChannel(int i2, int i3, int i4, int i5, int i6, int i7, String str);

    String iccTransmitApduLogicalChannel(int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str);

    int invokeOemRilRequestRaw(byte[] bArr, byte[] bArr2);

    boolean isConcurrentVoiceAndDataAllowed(int i2);

    boolean isDataConnectivityPossible(int i2);

    boolean isHearingAidCompatibilitySupported();

    boolean isIdle(String str);

    boolean isIdleForSubscriber(int i2, String str);

    boolean isImsRegistered();

    boolean isOffhook(String str);

    boolean isOffhookForSubscriber(int i2, String str);

    boolean isRadioOn(String str);

    boolean isRadioOnForSubscriber(int i2, String str);

    boolean isRinging(String str);

    boolean isRingingForSubscriber(int i2, String str);

    boolean isTtyModeSupported();

    boolean isVideoCallingEnabled(String str);

    boolean isVideoTelephonyAvailable();

    boolean isVoicemailVibrationEnabled(PhoneAccountHandle phoneAccountHandle);

    boolean isVolteAvailable();

    boolean isWifiCallingAvailable();

    boolean isWorldPhone();

    boolean needMobileRadioShutdown();

    boolean needsOtaServiceProvisioning();

    String nvReadItem(int i2);

    boolean nvResetConfig(int i2);

    boolean nvWriteCdmaPrl(byte[] bArr);

    boolean nvWriteItem(int i2, String str);

    void requestModemActivityInfo(ResultReceiver resultReceiver);

    int requestNetworkScan(int i2, NetworkScanRequest networkScanRequest, Messenger messenger, IBinder iBinder);

    void sendDialerSpecialCode(String str, String str2);

    String sendEnvelopeWithStatus(int i2, String str);

    void sendVisualVoicemailSmsForSubscriber(String str, int i2, String str2, int i3, String str3, PendingIntent pendingIntent);

    int setAllowedCarriers(int i2, List<CarrierIdentifier> list);

    void setCellInfoListRate(int i2);

    void setDataActivationState(int i2, int i3);

    void setDataEnabled(int i2, boolean z2);

    void setImsRegistrationState(boolean z2);

    boolean setLine1NumberForDisplayForSubscriber(int i2, String str, String str2);

    void setNetworkSelectionModeAutomatic(int i2);

    boolean setNetworkSelectionModeManual(int i2, OperatorInfo operatorInfo, boolean z2);

    boolean setOperatorBrandOverride(int i2, String str);

    void setPolicyDataEnabled(boolean z2, int i2);

    boolean setPreferredNetworkType(int i2, int i3);

    boolean setRadio(boolean z2);

    void setRadioCapability(RadioAccessFamily[] radioAccessFamilyArr);

    boolean setRadioForSubscriber(int i2, boolean z2);

    boolean setRadioPower(boolean z2);

    boolean setRoamingOverride(int i2, List<String> list, List<String> list2, List<String> list3, List<String> list4);

    void setSimPowerStateForSlot(int i2, int i3);

    void setVoiceActivationState(int i2, int i3);

    boolean setVoiceMailNumber(int i2, String str, String str2);

    void setVoicemailRingtoneUri(String str, PhoneAccountHandle phoneAccountHandle, Uri uri);

    void setVoicemailVibrationEnabled(String str, PhoneAccountHandle phoneAccountHandle, boolean z2);

    void shutdownMobileRadios();

    void silenceRinger();

    void stopNetworkScan(int i2, int i3);

    boolean supplyPin(String str);

    boolean supplyPinForSubscriber(int i2, String str);

    int[] supplyPinReportResult(String str);

    int[] supplyPinReportResultForSubscriber(int i2, String str);

    boolean supplyPuk(String str, String str2);

    boolean supplyPukForSubscriber(int i2, String str, String str2);

    int[] supplyPukReportResult(String str, String str2);

    int[] supplyPukReportResultForSubscriber(int i2, String str, String str2);

    void toggleRadioOnOff();

    void toggleRadioOnOffForSubscriber(int i2);

    void updateServiceLocation();

    void updateServiceLocationForSubscriber(int i2);
}
