package com.android.ims;

import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
public interface ImsUtInterface {
    public static final int ACTION_ACTIVATION = 1;
    public static final int ACTION_DEACTIVATION = 0;
    public static final int ACTION_ERASURE = 4;
    public static final int ACTION_INTERROGATION = 5;
    public static final int ACTION_REGISTRATION = 3;
    public static final int CB_BAIC = 1;
    public static final int CB_BAOC = 2;
    public static final int CB_BA_ALL = 7;
    public static final int CB_BA_MO = 8;
    public static final int CB_BA_MT = 9;
    public static final int CB_BIC_ACR = 6;
    public static final int CB_BIC_WR = 5;
    public static final int CB_BOIC = 3;
    public static final int CB_BOIC_EXHC = 4;
    public static final int CB_BS_MT = 10;
    public static final int CDIV_CF_ALL = 4;
    public static final int CDIV_CF_ALL_CONDITIONAL = 5;
    public static final int CDIV_CF_BUSY = 1;
    public static final int CDIV_CF_NOT_LOGGED_IN = 6;
    public static final int CDIV_CF_NOT_REACHABLE = 3;
    public static final int CDIV_CF_NO_REPLY = 2;
    public static final int CDIV_CF_UNCONDITIONAL = 0;
    public static final int INVALID = -1;
    public static final int OIR_DEFAULT = 0;
    public static final int OIR_PRESENTATION_NOT_RESTRICTED = 2;
    public static final int OIR_PRESENTATION_RESTRICTED = 1;

    void queryCLIP(Message message);

    void queryCLIR(Message message);

    void queryCOLP(Message message);

    void queryCOLR(Message message);

    void queryCallBarring(int i2, Message message);

    void queryCallForward(int i2, String str, Message message);

    void queryCallWaiting(Message message);

    void updateCLIP(boolean z2, Message message);

    void updateCLIR(int i2, Message message);

    void updateCOLP(boolean z2, Message message);

    void updateCOLR(int i2, Message message);

    void updateCallBarring(int i2, int i3, Message message, String[] strArr);

    void updateCallForward(int i2, int i3, String str, int i4, int i5, Message message);

    void updateCallWaiting(boolean z2, int i2, Message message);
}
