package android.service.carrier;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class CarrierMessagingService extends Service {
    public static final int DOWNLOAD_STATUS_ERROR = 2;
    public static final int DOWNLOAD_STATUS_OK = 0;
    public static final int DOWNLOAD_STATUS_RETRY_ON_CARRIER_NETWORK = 1;
    public static final int RECEIVE_OPTIONS_DEFAULT = 0;
    public static final int RECEIVE_OPTIONS_DROP = 1;
    public static final int RECEIVE_OPTIONS_SKIP_NOTIFY_WHEN_CREDENTIAL_PROTECTED_STORAGE_UNAVAILABLE = 2;
    public static final int SEND_FLAG_REQUEST_DELIVERY_STATUS = 1;
    public static final int SEND_STATUS_ERROR = 2;
    public static final int SEND_STATUS_OK = 0;
    public static final int SEND_STATUS_RETRY_ON_CARRIER_NETWORK = 1;
    public static final String SERVICE_INTERFACE = "android.service.carrier.CarrierMessagingService";
    private final ICarrierMessagingWrapper mWrapper = new ICarrierMessagingWrapper();

    public class ICarrierMessagingWrapper extends ICarrierMessagingService.Stub {
        private ICarrierMessagingWrapper() {
        }

        @Override // android.service.carrier.ICarrierMessagingService
        public void downloadMms(Uri uri, int i2, Uri uri2, final ICarrierMessagingCallback iCarrierMessagingCallback) {
            CarrierMessagingService.this.onDownloadMms(uri, i2, uri2, new ResultCallback<Integer>() { // from class: android.service.carrier.CarrierMessagingService.ICarrierMessagingWrapper.6
                @Override // android.service.carrier.CarrierMessagingService.ResultCallback
                public void onReceiveResult(Integer num) {
                    iCarrierMessagingCallback.onDownloadMmsComplete(num.intValue());
                }
            });
        }

        @Override // android.service.carrier.ICarrierMessagingService
        public void filterSms(MessagePdu messagePdu, String str, int i2, int i3, final ICarrierMessagingCallback iCarrierMessagingCallback) {
            CarrierMessagingService.this.onReceiveTextSms(messagePdu, str, i2, i3, new ResultCallback<Integer>() { // from class: android.service.carrier.CarrierMessagingService.ICarrierMessagingWrapper.1
                @Override // android.service.carrier.CarrierMessagingService.ResultCallback
                public void onReceiveResult(Integer num) {
                    iCarrierMessagingCallback.onFilterComplete(num.intValue());
                }
            });
        }

        @Override // android.service.carrier.ICarrierMessagingService
        public void sendDataSms(byte[] bArr, int i2, String str, int i3, int i4, final ICarrierMessagingCallback iCarrierMessagingCallback) {
            CarrierMessagingService.this.onSendDataSms(bArr, i2, str, i3, i4, new ResultCallback<SendSmsResult>() { // from class: android.service.carrier.CarrierMessagingService.ICarrierMessagingWrapper.3
                @Override // android.service.carrier.CarrierMessagingService.ResultCallback
                public void onReceiveResult(SendSmsResult sendSmsResult) {
                    iCarrierMessagingCallback.onSendSmsComplete(sendSmsResult.getSendStatus(), sendSmsResult.getMessageRef());
                }
            });
        }

        @Override // android.service.carrier.ICarrierMessagingService
        public void sendMms(Uri uri, int i2, Uri uri2, final ICarrierMessagingCallback iCarrierMessagingCallback) {
            CarrierMessagingService.this.onSendMms(uri, i2, uri2, new ResultCallback<SendMmsResult>() { // from class: android.service.carrier.CarrierMessagingService.ICarrierMessagingWrapper.5
                @Override // android.service.carrier.CarrierMessagingService.ResultCallback
                public void onReceiveResult(SendMmsResult sendMmsResult) {
                    iCarrierMessagingCallback.onSendMmsComplete(sendMmsResult.getSendStatus(), sendMmsResult.getSendConfPdu());
                }
            });
        }

        @Override // android.service.carrier.ICarrierMessagingService
        public void sendMultipartTextSms(List<String> list, int i2, String str, int i3, final ICarrierMessagingCallback iCarrierMessagingCallback) {
            CarrierMessagingService.this.onSendMultipartTextSms(list, i2, str, i3, new ResultCallback<SendMultipartSmsResult>() { // from class: android.service.carrier.CarrierMessagingService.ICarrierMessagingWrapper.4
                @Override // android.service.carrier.CarrierMessagingService.ResultCallback
                public void onReceiveResult(SendMultipartSmsResult sendMultipartSmsResult) {
                    iCarrierMessagingCallback.onSendMultipartSmsComplete(sendMultipartSmsResult.getSendStatus(), sendMultipartSmsResult.getMessageRefs());
                }
            });
        }

        @Override // android.service.carrier.ICarrierMessagingService
        public void sendTextSms(String str, int i2, String str2, int i3, final ICarrierMessagingCallback iCarrierMessagingCallback) {
            CarrierMessagingService.this.onSendTextSms(str, i2, str2, i3, new ResultCallback<SendSmsResult>() { // from class: android.service.carrier.CarrierMessagingService.ICarrierMessagingWrapper.2
                @Override // android.service.carrier.CarrierMessagingService.ResultCallback
                public void onReceiveResult(SendSmsResult sendSmsResult) {
                    iCarrierMessagingCallback.onSendSmsComplete(sendSmsResult.getSendStatus(), sendSmsResult.getMessageRef());
                }
            });
        }
    }

    public interface ResultCallback<T> {
        void onReceiveResult(T t2);
    }

    public static final class SendMmsResult {
        private byte[] mSendConfPdu;
        private int mSendStatus;

        public SendMmsResult(int i2, byte[] bArr) {
            this.mSendStatus = i2;
            this.mSendConfPdu = bArr;
        }

        public byte[] getSendConfPdu() {
            return this.mSendConfPdu;
        }

        public int getSendStatus() {
            return this.mSendStatus;
        }
    }

    public static final class SendMultipartSmsResult {
        private final int[] mMessageRefs;
        private final int mSendStatus;

        public SendMultipartSmsResult(int i2, int[] iArr) {
            this.mSendStatus = i2;
            this.mMessageRefs = iArr;
        }

        public int[] getMessageRefs() {
            return this.mMessageRefs;
        }

        public int getSendStatus() {
            return this.mSendStatus;
        }
    }

    public static final class SendSmsResult {
        private final int mMessageRef;
        private final int mSendStatus;

        public SendSmsResult(int i2, int i3) {
            this.mSendStatus = i2;
            this.mMessageRef = i3;
        }

        public int getMessageRef() {
            return this.mMessageRef;
        }

        public int getSendStatus() {
            return this.mSendStatus;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (SERVICE_INTERFACE.equals(intent.getAction())) {
            return this.mWrapper;
        }
        return null;
    }

    public void onDownloadMms(Uri uri, int i2, Uri uri2, ResultCallback<Integer> resultCallback) {
        try {
            resultCallback.onReceiveResult(1);
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public void onFilterSms(MessagePdu messagePdu, String str, int i2, int i3, ResultCallback<Boolean> resultCallback) {
        try {
            resultCallback.onReceiveResult(Boolean.TRUE);
        } catch (RemoteException unused) {
        }
    }

    public void onReceiveTextSms(MessagePdu messagePdu, String str, int i2, int i3, final ResultCallback<Integer> resultCallback) {
        onFilterSms(messagePdu, str, i2, i3, new ResultCallback<Boolean>() { // from class: android.service.carrier.CarrierMessagingService.1
            @Override // android.service.carrier.CarrierMessagingService.ResultCallback
            public void onReceiveResult(Boolean bool) {
                resultCallback.onReceiveResult(Integer.valueOf(bool.booleanValue() ? 0 : 3));
            }
        });
    }

    @Deprecated
    public void onSendDataSms(byte[] bArr, int i2, String str, int i3, ResultCallback<SendSmsResult> resultCallback) {
        try {
            resultCallback.onReceiveResult(new SendSmsResult(1, 0));
        } catch (RemoteException unused) {
        }
    }

    public void onSendMms(Uri uri, int i2, Uri uri2, ResultCallback<SendMmsResult> resultCallback) {
        try {
            resultCallback.onReceiveResult(new SendMmsResult(1, null));
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public void onSendMultipartTextSms(List<String> list, int i2, String str, ResultCallback<SendMultipartSmsResult> resultCallback) {
        try {
            resultCallback.onReceiveResult(new SendMultipartSmsResult(1, null));
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public void onSendTextSms(String str, int i2, String str2, ResultCallback<SendSmsResult> resultCallback) {
        try {
            resultCallback.onReceiveResult(new SendSmsResult(1, 0));
        } catch (RemoteException unused) {
        }
    }

    public void onSendDataSms(byte[] bArr, int i2, String str, int i3, int i4, ResultCallback<SendSmsResult> resultCallback) {
        onSendDataSms(bArr, i2, str, i3, resultCallback);
    }

    public void onSendMultipartTextSms(List<String> list, int i2, String str, int i3, ResultCallback<SendMultipartSmsResult> resultCallback) {
        onSendMultipartTextSms(list, i2, str, resultCallback);
    }

    public void onSendTextSms(String str, int i2, String str2, int i3, ResultCallback<SendSmsResult> resultCallback) {
        onSendTextSms(str, i2, str2, resultCallback);
    }
}
