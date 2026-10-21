package com.android.internal.telephony;

/* JADX INFO: loaded from: classes3.dex */
public class PhoneConstantConversions {

    /* JADX INFO: renamed from: com.android.internal.telephony.PhoneConstantConversions$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState;
        static final /* synthetic */ int[] $SwitchMap$com$android$internal$telephony$PhoneConstants$State;

        static {
            int[] iArr = new int[PhoneConstants.DataState.values().length];
            $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState = iArr;
            try {
                iArr[PhoneConstants.DataState.CONNECTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState[PhoneConstants.DataState.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState[PhoneConstants.DataState.SUSPENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[PhoneConstants.State.values().length];
            $SwitchMap$com$android$internal$telephony$PhoneConstants$State = iArr2;
            try {
                iArr2[PhoneConstants.State.RINGING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$PhoneConstants$State[PhoneConstants.State.OFFHOOK.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static int convertCallState(PhoneConstants.State state) {
        int i2 = AnonymousClass1.$SwitchMap$com$android$internal$telephony$PhoneConstants$State[state.ordinal()];
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                return 0;
            }
        }
        return i3;
    }

    public static int convertDataState(PhoneConstants.DataState dataState) {
        int i2 = AnonymousClass1.$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState[dataState.ordinal()];
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                i3 = 3;
                if (i2 != 3) {
                    return 0;
                }
            }
        }
        return i3;
    }

    public static PhoneConstants.State convertCallState(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? PhoneConstants.State.IDLE : PhoneConstants.State.OFFHOOK;
        }
        return PhoneConstants.State.RINGING;
    }

    public static PhoneConstants.DataState convertDataState(int i2) {
        if (i2 == 1) {
            return PhoneConstants.DataState.CONNECTING;
        }
        if (i2 != 2) {
            return i2 != 3 ? PhoneConstants.DataState.DISCONNECTED : PhoneConstants.DataState.SUSPENDED;
        }
        return PhoneConstants.DataState.CONNECTED;
    }
}
