package android.nfc.cardemulation;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class HostApduService extends Service {
    public static final int DEACTIVATION_DESELECTED = 1;
    public static final int DEACTIVATION_LINK_LOSS = 0;
    public static final String KEY_DATA = "data";
    public static final int MSG_COMMAND_APDU = 0;
    public static final int MSG_DEACTIVATED = 2;
    public static final int MSG_RESPONSE_APDU = 1;
    public static final int MSG_UNHANDLED = 3;
    public static final String SERVICE_INTERFACE = "android.nfc.cardemulation.action.HOST_APDU_SERVICE";
    public static final String SERVICE_META_DATA = "android.nfc.cardemulation.host_apdu_service";
    public static final String TAG = "ApduService";
    public Messenger mNfcService = null;
    public final Messenger mMessenger = new Messenger(new MsgHandler());

    public final class MsgHandler extends Handler {
        public MsgHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                Bundle data = message.getData();
                if (data == null) {
                    return;
                }
                HostApduService hostApduService = HostApduService.this;
                if (hostApduService.mNfcService == null) {
                    hostApduService.mNfcService = message.replyTo;
                }
                byte[] byteArray = data.getByteArray("data");
                if (byteArray == null) {
                    Log.e(HostApduService.TAG, "Received MSG_COMMAND_APDU without data.");
                    return;
                }
                byte[] bArrProcessCommandApdu = HostApduService.this.processCommandApdu(byteArray, null);
                if (bArrProcessCommandApdu != null) {
                    if (HostApduService.this.mNfcService == null) {
                        Log.e(HostApduService.TAG, "Response not sent; service was deactivated.");
                        return;
                    }
                    Message messageObtain = Message.obtain((Handler) null, 1);
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("data", bArrProcessCommandApdu);
                    messageObtain.setData(bundle);
                    HostApduService hostApduService2 = HostApduService.this;
                    messageObtain.replyTo = hostApduService2.mMessenger;
                    try {
                        hostApduService2.mNfcService.send(messageObtain);
                        return;
                    } catch (RemoteException unused) {
                        Log.e("TAG", "Response not sent; RemoteException calling into NfcService.");
                        return;
                    }
                }
                return;
            }
            if (i2 == 1) {
                HostApduService hostApduService3 = HostApduService.this;
                Messenger messenger = hostApduService3.mNfcService;
                if (messenger == null) {
                    Log.e(HostApduService.TAG, "Response not sent; service was deactivated.");
                    return;
                }
                try {
                    message.replyTo = hostApduService3.mMessenger;
                    messenger.send(message);
                    return;
                } catch (RemoteException unused2) {
                    Log.e(HostApduService.TAG, "RemoteException calling into NfcService.");
                    return;
                }
            }
            if (i2 == 2) {
                HostApduService hostApduService4 = HostApduService.this;
                hostApduService4.mNfcService = null;
                hostApduService4.onDeactivated(message.arg1);
            } else {
                if (i2 != 3) {
                    super.handleMessage(message);
                    return;
                }
                HostApduService hostApduService5 = HostApduService.this;
                Messenger messenger2 = hostApduService5.mNfcService;
                if (messenger2 == null) {
                    Log.e(HostApduService.TAG, "notifyUnhandled not sent; service was deactivated.");
                    return;
                }
                try {
                    message.replyTo = hostApduService5.mMessenger;
                    messenger2.send(message);
                } catch (RemoteException unused3) {
                    Log.e(HostApduService.TAG, "RemoteException calling into NfcService.");
                }
            }
        }
    }

    public final void notifyUnhandled() {
        try {
            this.mMessenger.send(Message.obtain((Handler) null, 3));
        } catch (RemoteException unused) {
            Log.e("TAG", "Local messenger has died.");
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.mMessenger.getBinder();
    }

    public abstract void onDeactivated(int i2);

    public abstract byte[] processCommandApdu(byte[] bArr, Bundle bundle);

    public final void sendResponseApdu(byte[] bArr) {
        Message messageObtain = Message.obtain((Handler) null, 1);
        Bundle bundle = new Bundle();
        bundle.putByteArray("data", bArr);
        messageObtain.setData(bundle);
        try {
            this.mMessenger.send(messageObtain);
        } catch (RemoteException unused) {
            Log.e("TAG", "Local messenger has died.");
        }
    }
}
