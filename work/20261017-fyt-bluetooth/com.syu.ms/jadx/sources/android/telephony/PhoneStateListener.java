package android.telephony;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.util.List;
import r.b;

/* JADX INFO: loaded from: classes.dex */
public class PhoneStateListener {
    public static final int LISTEN_CALL_FORWARDING_INDICATOR = 8;
    public static final int LISTEN_CALL_STATE = 32;
    public static final int LISTEN_CELL_INFO = 1024;
    public static final int LISTEN_CELL_LOCATION = 16;
    public static final int LISTEN_DATA_ACTIVITY = 128;
    public static final int LISTEN_DATA_CONNECTION_STATE = 64;
    public static final int LISTEN_MESSAGE_WAITING_INDICATOR = 4;
    public static final int LISTEN_NONE = 0;
    public static final int LISTEN_OTASP_CHANGED = 512;
    public static final int LISTEN_SERVICE_STATE = 1;

    @Deprecated
    public static final int LISTEN_SIGNAL_STRENGTH = 2;
    public static final int LISTEN_SIGNAL_STRENGTHS = 256;
    public b callback = new b.a() { // from class: android.telephony.PhoneStateListener.1
        @Override // r.b
        public void onCallForwardingIndicatorChanged(boolean z2) {
            Message.obtain(PhoneStateListener.this.mHandler, 8, z2 ? 1 : 0, 0, null).sendToTarget();
        }

        @Override // r.b
        public void onCallStateChanged(int i2, String str) {
            Message.obtain(PhoneStateListener.this.mHandler, 32, i2, 0, str).sendToTarget();
        }

        @Override // r.b
        public void onCellInfoChanged(List<CellInfo> list) {
            Message.obtain(PhoneStateListener.this.mHandler, 1024, 0, 0, list).sendToTarget();
        }

        @Override // r.b
        public void onCellLocationChanged(Bundle bundle) {
            Message.obtain(PhoneStateListener.this.mHandler, 16, 0, 0, CellLocation.newFromBundle(bundle)).sendToTarget();
        }

        @Override // r.b
        public void onDataActivity(int i2) {
            Message.obtain(PhoneStateListener.this.mHandler, 128, i2, 0, null).sendToTarget();
        }

        @Override // r.b
        public void onDataConnectionStateChanged(int i2, int i3) {
            Message.obtain(PhoneStateListener.this.mHandler, 64, i2, i3).sendToTarget();
        }

        @Override // r.b
        public void onMessageWaitingIndicatorChanged(boolean z2) {
            Message.obtain(PhoneStateListener.this.mHandler, 4, z2 ? 1 : 0, 0, null).sendToTarget();
        }

        @Override // r.b
        public void onOtaspChanged(int i2) {
            Message.obtain(PhoneStateListener.this.mHandler, 512, i2, 0).sendToTarget();
        }

        @Override // r.b
        public void onServiceStateChanged(ServiceState serviceState) {
            Message.obtain(PhoneStateListener.this.mHandler, 1, 0, 0, serviceState).sendToTarget();
        }

        @Override // r.b
        public void onSignalStrengthChanged(int i2) {
            Message.obtain(PhoneStateListener.this.mHandler, 2, i2, 0, null).sendToTarget();
        }

        @Override // r.b
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            Message.obtain(PhoneStateListener.this.mHandler, 256, 0, 0, signalStrength).sendToTarget();
        }
    };
    public Handler mHandler = new Handler() { // from class: android.telephony.PhoneStateListener.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                PhoneStateListener.this.onServiceStateChanged((ServiceState) message.obj);
                return;
            }
            if (i2 == 2) {
                PhoneStateListener.this.onSignalStrengthChanged(message.arg1);
                return;
            }
            if (i2 == 4) {
                PhoneStateListener.this.onMessageWaitingIndicatorChanged(message.arg1 != 0);
                return;
            }
            if (i2 == 8) {
                PhoneStateListener.this.onCallForwardingIndicatorChanged(message.arg1 != 0);
                return;
            }
            if (i2 == 16) {
                PhoneStateListener.this.onCellLocationChanged((CellLocation) message.obj);
                return;
            }
            if (i2 == 32) {
                PhoneStateListener.this.onCallStateChanged(message.arg1, (String) message.obj);
                return;
            }
            if (i2 == 64) {
                PhoneStateListener.this.onDataConnectionStateChanged(message.arg1, message.arg2);
                PhoneStateListener.this.onDataConnectionStateChanged(message.arg1);
                return;
            }
            if (i2 == 128) {
                PhoneStateListener.this.onDataActivity(message.arg1);
                return;
            }
            if (i2 == 256) {
                PhoneStateListener.this.onSignalStrengthsChanged((SignalStrength) message.obj);
            } else if (i2 == 512) {
                PhoneStateListener.this.onOtaspChanged(message.arg1);
            } else {
                if (i2 != 1024) {
                    return;
                }
                PhoneStateListener.this.onCellInfoChanged((List) message.obj);
            }
        }
    };

    public void onCallForwardingIndicatorChanged(boolean z2) {
    }

    public void onCallStateChanged(int i2, String str) {
    }

    public void onCellInfoChanged(List<CellInfo> list) {
    }

    public void onCellLocationChanged(CellLocation cellLocation) {
    }

    public void onDataActivity(int i2) {
    }

    public void onDataConnectionStateChanged(int i2) {
    }

    public void onDataConnectionStateChanged(int i2, int i3) {
    }

    public void onMessageWaitingIndicatorChanged(boolean z2) {
    }

    public void onOtaspChanged(int i2) {
    }

    public void onServiceStateChanged(ServiceState serviceState) {
    }

    @Deprecated
    public void onSignalStrengthChanged(int i2) {
    }

    public void onSignalStrengthsChanged(SignalStrength signalStrength) {
    }
}
