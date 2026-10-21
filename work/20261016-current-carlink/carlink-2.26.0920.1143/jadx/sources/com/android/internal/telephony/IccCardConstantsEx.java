package com.android.internal.telephony;

/* JADX INFO: loaded from: classes3.dex */
public class IccCardConstantsEx {
    public static final String INTENT_VALUE_LOCKED_CP = "CP";
    public static final String INTENT_VALUE_LOCKED_CP_PUK = "CP_PUK";
    public static final String INTENT_VALUE_LOCKED_FOREVER = "FOREVER";
    public static final String INTENT_VALUE_LOCKED_NETWORK_PUK = "NETWORK_PUK";
    public static final String INTENT_VALUE_LOCKED_NS = "NS";
    public static final String INTENT_VALUE_LOCKED_NS_PUK = "NS_PUK";
    public static final String INTENT_VALUE_LOCKED_SIM = "SIM";
    public static final String INTENT_VALUE_LOCKED_SIM_PUK = "SIM_PUK";
    public static final String INTENT_VALUE_LOCKED_SP = "SP";
    public static final String INTENT_VALUE_LOCKED_SP_PUK = "SP_PUK";

    public enum State {
        UNKNOWN,
        ABSENT,
        PIN_REQUIRED,
        PUK_REQUIRED,
        NETWORK_LOCKED,
        READY,
        NOT_READY,
        PERM_DISABLED,
        CARD_IO_ERROR,
        NETWORK_SUBSET_LOCKED,
        SERVICE_PROVIDER_LOCKED,
        CORPORATE_LOCKED,
        SIM_LOCKED,
        NETWORK_LOCKED_PUK,
        NETWORK_SUBSET_LOCKED_PUK,
        SERVICE_PROVIDER_LOCKED_PUK,
        CORPORATE_LOCKED_PUK,
        SIM_LOCKED_PUK,
        SIM_LOCKED_FOREVER;

        public static State intToState(int i2) {
            switch (i2) {
                case 0:
                    return UNKNOWN;
                case 1:
                    return ABSENT;
                case 2:
                    return PIN_REQUIRED;
                case 3:
                    return PUK_REQUIRED;
                case 4:
                    return NETWORK_LOCKED;
                case 5:
                    return READY;
                case 6:
                    return NOT_READY;
                case 7:
                    return PERM_DISABLED;
                case 8:
                    return CARD_IO_ERROR;
                case 9:
                    return NETWORK_SUBSET_LOCKED;
                case 10:
                    return SERVICE_PROVIDER_LOCKED;
                case 11:
                    return CORPORATE_LOCKED;
                case 12:
                    return SIM_LOCKED;
                case 13:
                    return NETWORK_LOCKED_PUK;
                case 14:
                    return NETWORK_SUBSET_LOCKED_PUK;
                case 15:
                    return SERVICE_PROVIDER_LOCKED_PUK;
                case 16:
                    return CORPORATE_LOCKED_PUK;
                case 17:
                    return SIM_LOCKED_PUK;
                case 18:
                    return SIM_LOCKED_FOREVER;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public boolean iccCardExist() {
            return this == PIN_REQUIRED || this == PUK_REQUIRED || this == NETWORK_LOCKED || this == READY || this == NETWORK_SUBSET_LOCKED || this == SERVICE_PROVIDER_LOCKED || this == CORPORATE_LOCKED || this == SIM_LOCKED || this == NETWORK_LOCKED_PUK || this == NETWORK_SUBSET_LOCKED_PUK || this == SERVICE_PROVIDER_LOCKED_PUK || this == CORPORATE_LOCKED_PUK || this == SIM_LOCKED_PUK || this == SIM_LOCKED_FOREVER || this == PERM_DISABLED || this == CARD_IO_ERROR;
        }

        public boolean isPinLocked() {
            return this == PIN_REQUIRED || this == PUK_REQUIRED;
        }

        public boolean isSimlockLocked() {
            return this == NETWORK_LOCKED || this == NETWORK_SUBSET_LOCKED || this == SERVICE_PROVIDER_LOCKED || this == CORPORATE_LOCKED || this == SIM_LOCKED || this == NETWORK_LOCKED_PUK || this == NETWORK_SUBSET_LOCKED_PUK || this == SERVICE_PROVIDER_LOCKED_PUK || this == CORPORATE_LOCKED_PUK || this == SIM_LOCKED_PUK || this == SIM_LOCKED_FOREVER;
        }
    }
}
