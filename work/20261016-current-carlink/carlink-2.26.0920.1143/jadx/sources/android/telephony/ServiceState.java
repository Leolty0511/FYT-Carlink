package android.telephony;

import android.accessibilityservice.c;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.android.internal.telephony.IccCardConstants;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceState implements Parcelable {
    public static final Parcelable.Creator<ServiceState> CREATOR = new Parcelable.Creator<ServiceState>() { // from class: android.telephony.ServiceState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceState createFromParcel(Parcel parcel) {
            return new ServiceState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceState[] newArray(int i2) {
            return new ServiceState[i2];
        }
    };
    static final boolean DBG = false;
    static final String LOG_TAG = "PHONE";
    public static final int REGISTRATION_STATE_HOME_NETWORK = 1;
    public static final int REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING = 0;
    public static final int REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING = 2;
    public static final int REGISTRATION_STATE_REGISTRATION_DENIED = 3;
    public static final int REGISTRATION_STATE_ROAMING = 5;
    public static final int REGISTRATION_STATE_UNKNOWN = 4;
    public static final int RIL_RADIO_CDMA_TECHNOLOGY_BITMASK = 6392;
    public static final int RIL_RADIO_TECHNOLOGY_1xRTT = 6;
    public static final int RIL_RADIO_TECHNOLOGY_EDGE = 2;
    public static final int RIL_RADIO_TECHNOLOGY_EHRPD = 13;
    public static final int RIL_RADIO_TECHNOLOGY_EVDO_0 = 7;
    public static final int RIL_RADIO_TECHNOLOGY_EVDO_A = 8;
    public static final int RIL_RADIO_TECHNOLOGY_EVDO_B = 12;
    public static final int RIL_RADIO_TECHNOLOGY_GPRS = 1;
    public static final int RIL_RADIO_TECHNOLOGY_GSM = 16;
    public static final int RIL_RADIO_TECHNOLOGY_HSDPA = 9;
    public static final int RIL_RADIO_TECHNOLOGY_HSPA = 11;
    public static final int RIL_RADIO_TECHNOLOGY_HSPAP = 15;
    public static final int RIL_RADIO_TECHNOLOGY_HSUPA = 10;
    public static final int RIL_RADIO_TECHNOLOGY_IS95A = 4;
    public static final int RIL_RADIO_TECHNOLOGY_IS95B = 5;
    public static final int RIL_RADIO_TECHNOLOGY_IWLAN = 18;
    public static final int RIL_RADIO_TECHNOLOGY_LTE = 14;
    public static final int RIL_RADIO_TECHNOLOGY_LTE_CA = 19;
    public static final int RIL_RADIO_TECHNOLOGY_TD_SCDMA = 17;
    public static final int RIL_RADIO_TECHNOLOGY_UMTS = 3;
    public static final int RIL_RADIO_TECHNOLOGY_UNKNOWN = 0;
    public static final int RIL_REG_STATE_DENIED = 3;
    public static final int RIL_REG_STATE_DENIED_EMERGENCY_CALL_ENABLED = 13;
    public static final int RIL_REG_STATE_HOME = 1;
    public static final int RIL_REG_STATE_NOT_REG = 0;
    public static final int RIL_REG_STATE_NOT_REG_EMERGENCY_CALL_ENABLED = 10;
    public static final int RIL_REG_STATE_ROAMING = 5;
    public static final int RIL_REG_STATE_SEARCHING = 2;
    public static final int RIL_REG_STATE_SEARCHING_EMERGENCY_CALL_ENABLED = 12;
    public static final int RIL_REG_STATE_UNKNOWN = 4;
    public static final int RIL_REG_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED = 14;
    public static final int ROAMING_TYPE_DOMESTIC = 2;
    public static final int ROAMING_TYPE_INTERNATIONAL = 3;
    public static final int ROAMING_TYPE_NOT_ROAMING = 0;
    public static final int ROAMING_TYPE_UNKNOWN = 1;
    public static final int STATE_EMERGENCY_ONLY = 2;
    public static final int STATE_IN_SERVICE = 0;
    public static final int STATE_OUT_OF_SERVICE = 1;
    public static final int STATE_POWER_OFF = 3;
    static final boolean VDBG = false;
    private int mCdmaDefaultRoamingIndicator;
    private int mCdmaEriIconIndex;
    private int mCdmaEriIconMode;
    private int mCdmaRoamingIndicator;
    private boolean mCssIndicator;
    private String mDataOperatorAlphaLong;
    private String mDataOperatorAlphaShort;
    private String mDataOperatorNumeric;
    private int mDataRegState;
    private int mDataRoamingType;
    private boolean mIsDataRoamingFromRegistration;
    private boolean mIsEmergencyOnly;
    private boolean mIsManualNetworkSelection;
    private boolean mIsUsingCarrierAggregation;
    private int mLteEarfcnRsrpBoost;
    private int mNetworkId;
    private int mRilDataRadioTechnology;
    private int mRilVoiceRadioTechnology;
    private int mSystemId;
    private String mVoiceOperatorAlphaLong;
    private String mVoiceOperatorAlphaShort;
    private String mVoiceOperatorNumeric;
    private int mVoiceRegState;
    private int mVoiceRoamingType;

    public ServiceState() {
        this.mVoiceRegState = 1;
        this.mDataRegState = 1;
        this.mLteEarfcnRsrpBoost = 0;
    }

    public static boolean bearerBitmapHasCdma(int i2) {
        return (i2 & RIL_RADIO_CDMA_TECHNOLOGY_BITMASK) != 0;
    }

    public static boolean bitmaskHasTech(int i2, int i3) {
        if (i2 == 0) {
            return true;
        }
        return i3 >= 1 && (i2 & (1 << (i3 - 1))) != 0;
    }

    private static boolean equalsHandlesNulls(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static int getBitmaskForTech(int i2) {
        if (i2 >= 1) {
            return 1 << (i2 - 1);
        }
        return 0;
    }

    public static int getBitmaskFromString(String str) {
        int bitmaskForTech = 0;
        for (String str2 : str.split("\\|")) {
            try {
                int i2 = Integer.parseInt(str2.trim());
                if (i2 == 0) {
                    return 0;
                }
                bitmaskForTech |= getBitmaskForTech(i2);
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        return bitmaskForTech;
    }

    public static final String getRoamingLogString(int i2) {
        if (i2 == 0) {
            return CalendarContract.CalendarCache.TIMEZONE_TYPE_HOME;
        }
        if (i2 == 1) {
            return "roaming";
        }
        if (i2 != 2) {
            return i2 != 3 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "International Roaming";
        }
        return "Domestic Roaming";
    }

    public static boolean isCdma(int i2) {
        return i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7 || i2 == 8 || i2 == 12 || i2 == 13;
    }

    public static boolean isGsm(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 9 || i2 == 10 || i2 == 11 || i2 == 14 || i2 == 15 || i2 == 16 || i2 == 17 || i2 == 18 || i2 == 19;
    }

    public static boolean isLte(int i2) {
        return i2 == 14 || i2 == 19;
    }

    public static ServiceState mergeServiceStates(ServiceState serviceState, ServiceState serviceState2) {
        if (serviceState2.mVoiceRegState != 0) {
            return serviceState;
        }
        ServiceState serviceState3 = new ServiceState(serviceState);
        serviceState3.mVoiceRegState = serviceState2.mVoiceRegState;
        serviceState3.mIsEmergencyOnly = false;
        return serviceState3;
    }

    public static ServiceState newFromBundle(Bundle bundle) {
        ServiceState serviceState = new ServiceState();
        serviceState.setFromNotifierBundle(bundle);
        return serviceState;
    }

    private int rilRadioTechnologyToNetworkType(int i2) {
        switch (i2) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
            case 5:
                return 4;
            case 6:
                return 7;
            case 7:
                return 5;
            case 8:
                return 6;
            case 9:
                return 8;
            case 10:
                return 9;
            case 11:
                return 10;
            case 12:
                return 12;
            case 13:
                return 14;
            case 14:
                return 13;
            case 15:
                return 15;
            case 16:
                return 16;
            case 17:
                return 17;
            case 18:
                return 18;
            case 19:
                return 19;
            default:
                return 0;
        }
    }

    public static String rilRadioTechnologyToString(int i2) {
        switch (i2) {
            case 0:
                return "Unknown";
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA-IS95A";
            case 5:
                return "CDMA-IS95B";
            case 6:
                return "1xRTT";
            case 7:
                return "EvDo-rev.0";
            case 8:
                return "EvDo-rev.A";
            case 9:
                return "HSDPA";
            case 10:
                return "HSUPA";
            case 11:
                return "HSPA";
            case 12:
                return "EvDo-rev.B";
            case 13:
                return "eHRPD";
            case 14:
                return "LTE";
            case 15:
                return "HSPAP";
            case 16:
                return "GSM";
            case 17:
                return "TD-SCDMA";
            case 18:
                return "IWLAN";
            case 19:
                return "LTE_CA";
            default:
                Rlog.w(LOG_TAG, "Unexpected radioTechnology=" + i2);
                return "Unexpected";
        }
    }

    public static String rilServiceStateToString(int i2) {
        if (i2 == 0) {
            return "IN_SERVICE";
        }
        if (i2 == 1) {
            return "OUT_OF_SERVICE";
        }
        if (i2 != 2) {
            return i2 != 3 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "POWER_OFF";
        }
        return "EMERGENCY_ONLY";
    }

    private void setFromNotifierBundle(Bundle bundle) {
        this.mVoiceRegState = bundle.getInt(Intent.EXTRA_VOICE_REG_STATE);
        this.mDataRegState = bundle.getInt(Intent.EXTRA_DATA_REG_STATE);
        this.mVoiceRoamingType = bundle.getInt(Intent.EXTRA_VOICE_ROAMING_TYPE);
        this.mDataRoamingType = bundle.getInt(Intent.EXTRA_DATA_ROAMING_TYPE);
        this.mVoiceOperatorAlphaLong = bundle.getString(Intent.EXTRA_OPERATOR_ALPHA_LONG);
        this.mVoiceOperatorAlphaShort = bundle.getString(Intent.EXTRA_OPERATOR_ALPHA_SHORT);
        this.mVoiceOperatorNumeric = bundle.getString(Intent.EXTRA_OPERATOR_NUMERIC);
        this.mDataOperatorAlphaLong = bundle.getString(Intent.EXTRA_DATA_OPERATOR_ALPHA_LONG);
        this.mDataOperatorAlphaShort = bundle.getString(Intent.EXTRA_DATA_OPERATOR_ALPHA_SHORT);
        this.mDataOperatorNumeric = bundle.getString(Intent.EXTRA_DATA_OPERATOR_NUMERIC);
        this.mIsManualNetworkSelection = bundle.getBoolean(Intent.EXTRA_MANUAL);
        this.mRilVoiceRadioTechnology = bundle.getInt(Intent.EXTRA_VOICE_RADIO_TECH);
        this.mRilDataRadioTechnology = bundle.getInt(Intent.EXTRA_DATA_RADIO_TECH);
        this.mCssIndicator = bundle.getBoolean(Intent.EXTRA_CSS_INDICATOR);
        this.mNetworkId = bundle.getInt(Intent.EXTRA_NETWORK_ID);
        this.mSystemId = bundle.getInt(Intent.EXTRA_SYSTEM_ID);
        this.mCdmaRoamingIndicator = bundle.getInt(Intent.EXTRA_CDMA_ROAMING_INDICATOR);
        this.mCdmaDefaultRoamingIndicator = bundle.getInt(Intent.EXTRA_CDMA_DEFAULT_ROAMING_INDICATOR);
        this.mIsEmergencyOnly = bundle.getBoolean(Intent.EXTRA_EMERGENCY_ONLY);
        this.mIsDataRoamingFromRegistration = bundle.getBoolean(Intent.EXTRA_IS_DATA_ROAMING_FROM_REGISTRATION);
        this.mIsUsingCarrierAggregation = bundle.getBoolean(Intent.EXTRA_IS_USING_CARRIER_AGGREGATION);
        this.mLteEarfcnRsrpBoost = bundle.getInt(Intent.EXTRA_LTE_EARFCN_RSRP_BOOST);
    }

    private void setNullState(int i2) {
        this.mVoiceRegState = i2;
        this.mDataRegState = i2;
        this.mVoiceRoamingType = 0;
        this.mDataRoamingType = 0;
        this.mVoiceOperatorAlphaLong = null;
        this.mVoiceOperatorAlphaShort = null;
        this.mVoiceOperatorNumeric = null;
        this.mDataOperatorAlphaLong = null;
        this.mDataOperatorAlphaShort = null;
        this.mDataOperatorNumeric = null;
        this.mIsManualNetworkSelection = false;
        this.mRilVoiceRadioTechnology = 0;
        this.mRilDataRadioTechnology = 0;
        this.mCssIndicator = false;
        this.mNetworkId = -1;
        this.mSystemId = -1;
        this.mCdmaRoamingIndicator = -1;
        this.mCdmaDefaultRoamingIndicator = -1;
        this.mCdmaEriIconIndex = -1;
        this.mCdmaEriIconMode = -1;
        this.mIsEmergencyOnly = false;
        this.mIsDataRoamingFromRegistration = false;
        this.mIsUsingCarrierAggregation = false;
        this.mLteEarfcnRsrpBoost = 0;
    }

    public void copyFrom(ServiceState serviceState) {
        this.mVoiceRegState = serviceState.mVoiceRegState;
        this.mDataRegState = serviceState.mDataRegState;
        this.mVoiceRoamingType = serviceState.mVoiceRoamingType;
        this.mDataRoamingType = serviceState.mDataRoamingType;
        this.mVoiceOperatorAlphaLong = serviceState.mVoiceOperatorAlphaLong;
        this.mVoiceOperatorAlphaShort = serviceState.mVoiceOperatorAlphaShort;
        this.mVoiceOperatorNumeric = serviceState.mVoiceOperatorNumeric;
        this.mDataOperatorAlphaLong = serviceState.mDataOperatorAlphaLong;
        this.mDataOperatorAlphaShort = serviceState.mDataOperatorAlphaShort;
        this.mDataOperatorNumeric = serviceState.mDataOperatorNumeric;
        this.mIsManualNetworkSelection = serviceState.mIsManualNetworkSelection;
        this.mRilVoiceRadioTechnology = serviceState.mRilVoiceRadioTechnology;
        this.mRilDataRadioTechnology = serviceState.mRilDataRadioTechnology;
        this.mCssIndicator = serviceState.mCssIndicator;
        this.mNetworkId = serviceState.mNetworkId;
        this.mSystemId = serviceState.mSystemId;
        this.mCdmaRoamingIndicator = serviceState.mCdmaRoamingIndicator;
        this.mCdmaDefaultRoamingIndicator = serviceState.mCdmaDefaultRoamingIndicator;
        this.mCdmaEriIconIndex = serviceState.mCdmaEriIconIndex;
        this.mCdmaEriIconMode = serviceState.mCdmaEriIconMode;
        this.mIsEmergencyOnly = serviceState.mIsEmergencyOnly;
        this.mIsDataRoamingFromRegistration = serviceState.mIsDataRoamingFromRegistration;
        this.mIsUsingCarrierAggregation = serviceState.mIsUsingCarrierAggregation;
        this.mLteEarfcnRsrpBoost = serviceState.mLteEarfcnRsrpBoost;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        try {
            ServiceState serviceState = (ServiceState) obj;
            return obj != null && this.mVoiceRegState == serviceState.mVoiceRegState && this.mDataRegState == serviceState.mDataRegState && this.mIsManualNetworkSelection == serviceState.mIsManualNetworkSelection && this.mVoiceRoamingType == serviceState.mVoiceRoamingType && this.mDataRoamingType == serviceState.mDataRoamingType && equalsHandlesNulls(this.mVoiceOperatorAlphaLong, serviceState.mVoiceOperatorAlphaLong) && equalsHandlesNulls(this.mVoiceOperatorAlphaShort, serviceState.mVoiceOperatorAlphaShort) && equalsHandlesNulls(this.mVoiceOperatorNumeric, serviceState.mVoiceOperatorNumeric) && equalsHandlesNulls(this.mDataOperatorAlphaLong, serviceState.mDataOperatorAlphaLong) && equalsHandlesNulls(this.mDataOperatorAlphaShort, serviceState.mDataOperatorAlphaShort) && equalsHandlesNulls(this.mDataOperatorNumeric, serviceState.mDataOperatorNumeric) && equalsHandlesNulls(Integer.valueOf(this.mRilVoiceRadioTechnology), Integer.valueOf(serviceState.mRilVoiceRadioTechnology)) && equalsHandlesNulls(Integer.valueOf(this.mRilDataRadioTechnology), Integer.valueOf(serviceState.mRilDataRadioTechnology)) && equalsHandlesNulls(Boolean.valueOf(this.mCssIndicator), Boolean.valueOf(serviceState.mCssIndicator)) && equalsHandlesNulls(Integer.valueOf(this.mNetworkId), Integer.valueOf(serviceState.mNetworkId)) && equalsHandlesNulls(Integer.valueOf(this.mSystemId), Integer.valueOf(serviceState.mSystemId)) && equalsHandlesNulls(Integer.valueOf(this.mCdmaRoamingIndicator), Integer.valueOf(serviceState.mCdmaRoamingIndicator)) && equalsHandlesNulls(Integer.valueOf(this.mCdmaDefaultRoamingIndicator), Integer.valueOf(serviceState.mCdmaDefaultRoamingIndicator)) && this.mIsEmergencyOnly == serviceState.mIsEmergencyOnly && this.mIsDataRoamingFromRegistration == serviceState.mIsDataRoamingFromRegistration && this.mIsUsingCarrierAggregation == serviceState.mIsUsingCarrierAggregation;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public void fillInNotifierBundle(Bundle bundle) {
        bundle.putInt(Intent.EXTRA_VOICE_REG_STATE, this.mVoiceRegState);
        bundle.putInt(Intent.EXTRA_DATA_REG_STATE, this.mDataRegState);
        bundle.putInt(Intent.EXTRA_VOICE_ROAMING_TYPE, this.mVoiceRoamingType);
        bundle.putInt(Intent.EXTRA_DATA_ROAMING_TYPE, this.mDataRoamingType);
        bundle.putString(Intent.EXTRA_OPERATOR_ALPHA_LONG, this.mVoiceOperatorAlphaLong);
        bundle.putString(Intent.EXTRA_OPERATOR_ALPHA_SHORT, this.mVoiceOperatorAlphaShort);
        bundle.putString(Intent.EXTRA_OPERATOR_NUMERIC, this.mVoiceOperatorNumeric);
        bundle.putString(Intent.EXTRA_DATA_OPERATOR_ALPHA_LONG, this.mDataOperatorAlphaLong);
        bundle.putString(Intent.EXTRA_DATA_OPERATOR_ALPHA_SHORT, this.mDataOperatorAlphaShort);
        bundle.putString(Intent.EXTRA_DATA_OPERATOR_NUMERIC, this.mDataOperatorNumeric);
        bundle.putBoolean(Intent.EXTRA_MANUAL, this.mIsManualNetworkSelection);
        bundle.putInt(Intent.EXTRA_VOICE_RADIO_TECH, this.mRilVoiceRadioTechnology);
        bundle.putInt(Intent.EXTRA_DATA_RADIO_TECH, this.mRilDataRadioTechnology);
        bundle.putBoolean(Intent.EXTRA_CSS_INDICATOR, this.mCssIndicator);
        bundle.putInt(Intent.EXTRA_NETWORK_ID, this.mNetworkId);
        bundle.putInt(Intent.EXTRA_SYSTEM_ID, this.mSystemId);
        bundle.putInt(Intent.EXTRA_CDMA_ROAMING_INDICATOR, this.mCdmaRoamingIndicator);
        bundle.putInt(Intent.EXTRA_CDMA_DEFAULT_ROAMING_INDICATOR, this.mCdmaDefaultRoamingIndicator);
        bundle.putBoolean(Intent.EXTRA_EMERGENCY_ONLY, this.mIsEmergencyOnly);
        bundle.putBoolean(Intent.EXTRA_IS_DATA_ROAMING_FROM_REGISTRATION, this.mIsDataRoamingFromRegistration);
        bundle.putBoolean(Intent.EXTRA_IS_USING_CARRIER_AGGREGATION, this.mIsUsingCarrierAggregation);
        bundle.putInt(Intent.EXTRA_LTE_EARFCN_RSRP_BOOST, this.mLteEarfcnRsrpBoost);
    }

    public int getCdmaDefaultRoamingIndicator() {
        return this.mCdmaDefaultRoamingIndicator;
    }

    public int getCdmaEriIconIndex() {
        return this.mCdmaEriIconIndex;
    }

    public int getCdmaEriIconMode() {
        return this.mCdmaEriIconMode;
    }

    public int getCdmaRoamingIndicator() {
        return this.mCdmaRoamingIndicator;
    }

    public int getCssIndicator() {
        return this.mCssIndicator ? 1 : 0;
    }

    public int getDataNetworkType() {
        return rilRadioTechnologyToNetworkType(this.mRilDataRadioTechnology);
    }

    public String getDataOperatorAlphaLong() {
        return this.mDataOperatorAlphaLong;
    }

    public String getDataOperatorAlphaShort() {
        return this.mDataOperatorAlphaShort;
    }

    public String getDataOperatorNumeric() {
        return this.mDataOperatorNumeric;
    }

    public int getDataRegState() {
        return this.mDataRegState;
    }

    public boolean getDataRoaming() {
        return this.mDataRoamingType != 0;
    }

    public boolean getDataRoamingFromRegistration() {
        return this.mIsDataRoamingFromRegistration;
    }

    public int getDataRoamingType() {
        return this.mDataRoamingType;
    }

    public boolean getIsManualSelection() {
        return this.mIsManualNetworkSelection;
    }

    public int getLteEarfcnRsrpBoost() {
        return this.mLteEarfcnRsrpBoost;
    }

    public int getNetworkId() {
        return this.mNetworkId;
    }

    public int getNetworkType() {
        Rlog.e(LOG_TAG, "ServiceState.getNetworkType() DEPRECATED will be removed *******");
        return rilRadioTechnologyToNetworkType(this.mRilVoiceRadioTechnology);
    }

    public String getOperatorAlpha() {
        return TextUtils.isEmpty(this.mVoiceOperatorAlphaLong) ? this.mVoiceOperatorAlphaShort : this.mVoiceOperatorAlphaLong;
    }

    public String getOperatorAlphaLong() {
        return this.mVoiceOperatorAlphaLong;
    }

    public String getOperatorAlphaShort() {
        return this.mVoiceOperatorAlphaShort;
    }

    public String getOperatorNumeric() {
        return this.mVoiceOperatorNumeric;
    }

    public int getRadioTechnology() {
        Rlog.e(LOG_TAG, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******");
        return getRilDataRadioTechnology();
    }

    public int getRilDataRadioTechnology() {
        return this.mRilDataRadioTechnology;
    }

    public int getRilVoiceRadioTechnology() {
        return this.mRilVoiceRadioTechnology;
    }

    public boolean getRoaming() {
        return getVoiceRoaming() || getDataRoaming();
    }

    public int getState() {
        return getVoiceRegState();
    }

    public int getSystemId() {
        return this.mSystemId;
    }

    public int getVoiceNetworkType() {
        return rilRadioTechnologyToNetworkType(this.mRilVoiceRadioTechnology);
    }

    public String getVoiceOperatorAlphaLong() {
        return this.mVoiceOperatorAlphaLong;
    }

    public String getVoiceOperatorAlphaShort() {
        return this.mVoiceOperatorAlphaShort;
    }

    public String getVoiceOperatorNumeric() {
        return this.mVoiceOperatorNumeric;
    }

    public int getVoiceRegState() {
        return this.mVoiceRegState;
    }

    public boolean getVoiceRoaming() {
        return this.mVoiceRoamingType != 0;
    }

    public int getVoiceRoamingType() {
        return this.mVoiceRoamingType;
    }

    public int hashCode() {
        int i2 = (this.mDataRegState * 37) + (this.mVoiceRegState * 31) + this.mVoiceRoamingType + this.mDataRoamingType + (this.mIsManualNetworkSelection ? 1 : 0);
        String str = this.mVoiceOperatorAlphaLong;
        int iHashCode = i2 + (str == null ? 0 : str.hashCode());
        String str2 = this.mVoiceOperatorAlphaShort;
        int iHashCode2 = iHashCode + (str2 == null ? 0 : str2.hashCode());
        String str3 = this.mVoiceOperatorNumeric;
        int iHashCode3 = iHashCode2 + (str3 == null ? 0 : str3.hashCode());
        String str4 = this.mDataOperatorAlphaLong;
        int iHashCode4 = iHashCode3 + (str4 == null ? 0 : str4.hashCode());
        String str5 = this.mDataOperatorAlphaShort;
        int iHashCode5 = iHashCode4 + (str5 == null ? 0 : str5.hashCode());
        String str6 = this.mDataOperatorNumeric;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0) + this.mCdmaRoamingIndicator + this.mCdmaDefaultRoamingIndicator + (this.mIsEmergencyOnly ? 1 : 0) + (this.mIsDataRoamingFromRegistration ? 1 : 0);
    }

    public boolean isEmergencyOnly() {
        return this.mIsEmergencyOnly;
    }

    public boolean isUsingCarrierAggregation() {
        return this.mIsUsingCarrierAggregation;
    }

    public void setCdmaDefaultRoamingIndicator(int i2) {
        this.mCdmaDefaultRoamingIndicator = i2;
    }

    public void setCdmaEriIconIndex(int i2) {
        this.mCdmaEriIconIndex = i2;
    }

    public void setCdmaEriIconMode(int i2) {
        this.mCdmaEriIconMode = i2;
    }

    public void setCdmaRoamingIndicator(int i2) {
        this.mCdmaRoamingIndicator = i2;
    }

    public void setCssIndicator(int i2) {
        this.mCssIndicator = i2 != 0;
    }

    public void setDataOperatorAlphaLong(String str) {
        this.mDataOperatorAlphaLong = str;
    }

    public void setDataOperatorName(String str, String str2, String str3) {
        this.mDataOperatorAlphaLong = str;
        this.mDataOperatorAlphaShort = str2;
        this.mDataOperatorNumeric = str3;
    }

    public void setDataRegState(int i2) {
        this.mDataRegState = i2;
    }

    public void setDataRoaming(boolean z2) {
        this.mDataRoamingType = z2 ? 1 : 0;
    }

    public void setDataRoamingFromRegistration(boolean z2) {
        this.mIsDataRoamingFromRegistration = z2;
    }

    public void setDataRoamingType(int i2) {
        this.mDataRoamingType = i2;
    }

    public void setEmergencyOnly(boolean z2) {
        this.mIsEmergencyOnly = z2;
    }

    public void setIsManualSelection(boolean z2) {
        this.mIsManualNetworkSelection = z2;
    }

    public void setIsUsingCarrierAggregation(boolean z2) {
        this.mIsUsingCarrierAggregation = z2;
    }

    public void setLteEarfcnRsrpBoost(int i2) {
        this.mLteEarfcnRsrpBoost = i2;
    }

    public void setOperatorAlphaLong(String str) {
        this.mVoiceOperatorAlphaLong = str;
        this.mDataOperatorAlphaLong = str;
    }

    public void setOperatorName(String str, String str2, String str3) {
        this.mVoiceOperatorAlphaLong = str;
        this.mVoiceOperatorAlphaShort = str2;
        this.mVoiceOperatorNumeric = str3;
        this.mDataOperatorAlphaLong = str;
        this.mDataOperatorAlphaShort = str2;
        this.mDataOperatorNumeric = str3;
    }

    public void setRilDataRadioTechnology(int i2) {
        if (i2 == 19) {
            this.mIsUsingCarrierAggregation = true;
            i2 = 14;
        } else {
            this.mIsUsingCarrierAggregation = false;
        }
        this.mRilDataRadioTechnology = i2;
    }

    public void setRilVoiceRadioTechnology(int i2) {
        if (i2 == 19) {
            i2 = 14;
        }
        this.mRilVoiceRadioTechnology = i2;
    }

    public void setRoaming(boolean z2) {
        this.mVoiceRoamingType = z2 ? 1 : 0;
        this.mDataRoamingType = z2 ? 1 : 0;
    }

    public void setState(int i2) {
        setVoiceRegState(i2);
    }

    public void setStateOff() {
        setNullState(3);
    }

    public void setStateOutOfService() {
        setNullState(1);
    }

    public void setSystemAndNetworkId(int i2, int i3) {
        this.mSystemId = i2;
        this.mNetworkId = i3;
    }

    public void setVoiceOperatorAlphaLong(String str) {
        this.mVoiceOperatorAlphaLong = str;
    }

    public void setVoiceOperatorName(String str, String str2, String str3) {
        this.mVoiceOperatorAlphaLong = str;
        this.mVoiceOperatorAlphaShort = str2;
        this.mVoiceOperatorNumeric = str3;
    }

    public void setVoiceRegState(int i2) {
        this.mVoiceRegState = i2;
    }

    public void setVoiceRoaming(boolean z2) {
        this.mVoiceRoamingType = z2 ? 1 : 0;
    }

    public void setVoiceRoamingType(int i2) {
        this.mVoiceRoamingType = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{mVoiceRegState=");
        sb.append(this.mVoiceRegState);
        sb.append("(" + rilServiceStateToString(this.mVoiceRegState) + ")");
        sb.append(", mDataRegState=");
        sb.append(this.mDataRegState);
        sb.append("(" + rilServiceStateToString(this.mDataRegState) + ")");
        sb.append(", mVoiceRoamingType=");
        sb.append(getRoamingLogString(this.mVoiceRoamingType));
        sb.append(", mDataRoamingType=");
        sb.append(getRoamingLogString(this.mDataRoamingType));
        sb.append(", mVoiceOperatorAlphaLong=");
        sb.append(this.mVoiceOperatorAlphaLong);
        sb.append(", mVoiceOperatorAlphaShort=");
        sb.append(this.mVoiceOperatorAlphaShort);
        sb.append(", mDataOperatorAlphaLong=");
        sb.append(this.mDataOperatorAlphaLong);
        sb.append(", mDataOperatorAlphaShort=");
        sb.append(this.mDataOperatorAlphaShort);
        sb.append(", isManualNetworkSelection=");
        sb.append(this.mIsManualNetworkSelection);
        sb.append(this.mIsManualNetworkSelection ? "(manual)" : "(automatic)");
        sb.append(", mRilVoiceRadioTechnology=");
        sb.append(this.mRilVoiceRadioTechnology);
        sb.append("(" + rilRadioTechnologyToString(this.mRilVoiceRadioTechnology) + ")");
        sb.append(", mRilDataRadioTechnology=");
        sb.append(this.mRilDataRadioTechnology);
        sb.append("(" + rilRadioTechnologyToString(this.mRilDataRadioTechnology) + ")");
        sb.append(", mCssIndicator=");
        sb.append(this.mCssIndicator ? "supported" : "unsupported");
        sb.append(", mNetworkId=");
        sb.append(this.mNetworkId);
        sb.append(", mSystemId=");
        sb.append(this.mSystemId);
        sb.append(", mCdmaRoamingIndicator=");
        sb.append(this.mCdmaRoamingIndicator);
        sb.append(", mCdmaDefaultRoamingIndicator=");
        sb.append(this.mCdmaDefaultRoamingIndicator);
        sb.append(", mIsEmergencyOnly=");
        sb.append(this.mIsEmergencyOnly);
        sb.append(", mIsDataRoamingFromRegistration=");
        sb.append(this.mIsDataRoamingFromRegistration);
        sb.append(", mIsUsingCarrierAggregation=");
        sb.append(this.mIsUsingCarrierAggregation);
        sb.append(", mLteEarfcnRsrpBoost=");
        return c.m(sb, this.mLteEarfcnRsrpBoost, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mVoiceRegState);
        parcel.writeInt(this.mDataRegState);
        parcel.writeInt(this.mVoiceRoamingType);
        parcel.writeInt(this.mDataRoamingType);
        parcel.writeString(this.mVoiceOperatorAlphaLong);
        parcel.writeString(this.mVoiceOperatorAlphaShort);
        parcel.writeString(this.mVoiceOperatorNumeric);
        parcel.writeString(this.mDataOperatorAlphaLong);
        parcel.writeString(this.mDataOperatorAlphaShort);
        parcel.writeString(this.mDataOperatorNumeric);
        parcel.writeInt(this.mIsManualNetworkSelection ? 1 : 0);
        parcel.writeInt(this.mRilVoiceRadioTechnology);
        parcel.writeInt(this.mRilDataRadioTechnology);
        parcel.writeInt(this.mCssIndicator ? 1 : 0);
        parcel.writeInt(this.mNetworkId);
        parcel.writeInt(this.mSystemId);
        parcel.writeInt(this.mCdmaRoamingIndicator);
        parcel.writeInt(this.mCdmaDefaultRoamingIndicator);
        parcel.writeInt(this.mCdmaEriIconIndex);
        parcel.writeInt(this.mCdmaEriIconMode);
        parcel.writeInt(this.mIsEmergencyOnly ? 1 : 0);
        parcel.writeInt(this.mIsDataRoamingFromRegistration ? 1 : 0);
        parcel.writeInt(this.mIsUsingCarrierAggregation ? 1 : 0);
        parcel.writeInt(this.mLteEarfcnRsrpBoost);
    }

    public ServiceState(ServiceState serviceState) {
        this.mVoiceRegState = 1;
        this.mDataRegState = 1;
        this.mLteEarfcnRsrpBoost = 0;
        copyFrom(serviceState);
    }

    public ServiceState(Parcel parcel) {
        this.mVoiceRegState = 1;
        this.mDataRegState = 1;
        this.mLteEarfcnRsrpBoost = 0;
        this.mVoiceRegState = parcel.readInt();
        this.mDataRegState = parcel.readInt();
        this.mVoiceRoamingType = parcel.readInt();
        this.mDataRoamingType = parcel.readInt();
        this.mVoiceOperatorAlphaLong = parcel.readString();
        this.mVoiceOperatorAlphaShort = parcel.readString();
        this.mVoiceOperatorNumeric = parcel.readString();
        this.mDataOperatorAlphaLong = parcel.readString();
        this.mDataOperatorAlphaShort = parcel.readString();
        this.mDataOperatorNumeric = parcel.readString();
        this.mIsManualNetworkSelection = parcel.readInt() != 0;
        this.mRilVoiceRadioTechnology = parcel.readInt();
        this.mRilDataRadioTechnology = parcel.readInt();
        this.mCssIndicator = parcel.readInt() != 0;
        this.mNetworkId = parcel.readInt();
        this.mSystemId = parcel.readInt();
        this.mCdmaRoamingIndicator = parcel.readInt();
        this.mCdmaDefaultRoamingIndicator = parcel.readInt();
        this.mCdmaEriIconIndex = parcel.readInt();
        this.mCdmaEriIconMode = parcel.readInt();
        this.mIsEmergencyOnly = parcel.readInt() != 0;
        this.mIsDataRoamingFromRegistration = parcel.readInt() != 0;
        this.mIsUsingCarrierAggregation = parcel.readInt() != 0;
        this.mLteEarfcnRsrpBoost = parcel.readInt();
    }
}
