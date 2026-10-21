package android.media;

import android.app.ActivityThread;
import android.app.m;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class MediaDrm {
    public static final int CERTIFICATE_TYPE_NONE = 0;
    public static final int CERTIFICATE_TYPE_X509 = 1;
    private static final int DRM_EVENT = 200;
    public static final int EVENT_KEY_EXPIRED = 3;
    public static final int EVENT_KEY_REQUIRED = 2;
    public static final int EVENT_PROVISION_REQUIRED = 1;
    public static final int EVENT_SESSION_RECLAIMED = 5;
    public static final int EVENT_VENDOR_DEFINED = 4;
    private static final int EXPIRATION_UPDATE = 201;
    private static final int KEY_STATUS_CHANGE = 202;
    public static final int KEY_TYPE_OFFLINE = 2;
    public static final int KEY_TYPE_RELEASE = 3;
    public static final int KEY_TYPE_STREAMING = 1;
    private static final String PERMISSION = "android.permission.ACCESS_DRM_CERTIFICATES";
    public static final String PROPERTY_ALGORITHMS = "algorithms";
    public static final String PROPERTY_DESCRIPTION = "description";
    public static final String PROPERTY_DEVICE_UNIQUE_ID = "deviceUniqueId";
    public static final String PROPERTY_VENDOR = "vendor";
    public static final String PROPERTY_VERSION = "version";
    private static final String TAG = "MediaDrm";
    private EventHandler mEventHandler;
    private long mNativeContext;
    private OnEventListener mOnEventListener;
    private EventHandler mOnExpirationUpdateEventHandler;
    private OnExpirationUpdateListener mOnExpirationUpdateListener;
    private EventHandler mOnKeyStatusChangeEventHandler;
    private OnKeyStatusChangeListener mOnKeyStatusChangeListener;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ArrayProperty {
    }

    public static final class Certificate {
        private byte[] mCertificateData;
        private byte[] mWrappedKey;

        public byte[] getContent() {
            byte[] bArr = this.mCertificateData;
            if (bArr != null) {
                return bArr;
            }
            throw new RuntimeException("Cerfificate is not initialized");
        }

        public byte[] getWrappedPrivateKey() {
            byte[] bArr = this.mWrappedKey;
            if (bArr != null) {
                return bArr;
            }
            throw new RuntimeException("Cerfificate is not initialized");
        }
    }

    public static final class CertificateRequest {
        private byte[] mData;
        private String mDefaultUrl;

        public CertificateRequest(byte[] bArr, String str) {
            this.mData = bArr;
            this.mDefaultUrl = str;
        }

        public byte[] getData() {
            return this.mData;
        }

        public String getDefaultUrl() {
            return this.mDefaultUrl;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CertificateType {
    }

    public final class CryptoSession {
        private byte[] mSessionId;

        public CryptoSession(byte[] bArr, String str, String str2) {
            this.mSessionId = bArr;
            MediaDrm.setCipherAlgorithmNative(MediaDrm.this, bArr, str);
            MediaDrm.setMacAlgorithmNative(MediaDrm.this, bArr, str2);
        }

        public byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            return MediaDrm.decryptNative(MediaDrm.this, this.mSessionId, bArr, bArr2, bArr3);
        }

        public byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            return MediaDrm.encryptNative(MediaDrm.this, this.mSessionId, bArr, bArr2, bArr3);
        }

        public byte[] sign(byte[] bArr, byte[] bArr2) {
            return MediaDrm.signNative(MediaDrm.this, this.mSessionId, bArr, bArr2);
        }

        public boolean verify(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            return MediaDrm.verifyNative(MediaDrm.this, this.mSessionId, bArr, bArr2, bArr3);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DrmEvent {
    }

    public class EventHandler extends Handler {
        private MediaDrm mMediaDrm;

        public EventHandler(MediaDrm mediaDrm, Looper looper) {
            super(looper);
            this.mMediaDrm = mediaDrm;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            Object obj2;
            Object obj3;
            if (this.mMediaDrm.mNativeContext == 0) {
                Log.w(MediaDrm.TAG, "MediaDrm went away with unhandled events");
            }
            switch (message.what) {
                case 200:
                    if (MediaDrm.this.mOnEventListener != null && (obj = message.obj) != null && (obj instanceof Parcel)) {
                        Parcel parcel = (Parcel) obj;
                        byte[] bArrCreateByteArray = parcel.createByteArray();
                        byte[] bArr = bArrCreateByteArray.length == 0 ? null : bArrCreateByteArray;
                        byte[] bArrCreateByteArray2 = parcel.createByteArray();
                        byte[] bArr2 = bArrCreateByteArray2.length == 0 ? null : bArrCreateByteArray2;
                        Log.i(MediaDrm.TAG, "Drm event (" + message.arg1 + "," + message.arg2 + ")");
                        MediaDrm.this.mOnEventListener.onEvent(this.mMediaDrm, bArr, message.arg1, message.arg2, bArr2);
                        break;
                    }
                    break;
                case 201:
                    if (MediaDrm.this.mOnExpirationUpdateListener != null && (obj2 = message.obj) != null && (obj2 instanceof Parcel)) {
                        Parcel parcel2 = (Parcel) obj2;
                        byte[] bArrCreateByteArray3 = parcel2.createByteArray();
                        if (bArrCreateByteArray3.length > 0) {
                            long j2 = parcel2.readLong();
                            Log.i(MediaDrm.TAG, "Drm key expiration update: " + j2);
                            MediaDrm.this.mOnExpirationUpdateListener.onExpirationUpdate(this.mMediaDrm, bArrCreateByteArray3, j2);
                        }
                        break;
                    }
                    break;
                case 202:
                    if (MediaDrm.this.mOnKeyStatusChangeListener != null && (obj3 = message.obj) != null && (obj3 instanceof Parcel)) {
                        Parcel parcel3 = (Parcel) obj3;
                        byte[] bArrCreateByteArray4 = parcel3.createByteArray();
                        if (bArrCreateByteArray4.length > 0) {
                            List<KeyStatus> listKeyStatusListFromParcel = MediaDrm.this.keyStatusListFromParcel(parcel3);
                            boolean z2 = parcel3.readInt() != 0;
                            Log.i(MediaDrm.TAG, "Drm key status changed");
                            MediaDrm.this.mOnKeyStatusChangeListener.onKeyStatusChange(this.mMediaDrm, bArrCreateByteArray4, listKeyStatusListFromParcel, z2);
                        }
                        break;
                    }
                    break;
                default:
                    m.C(new StringBuilder("Unknown message type "), message.what, MediaDrm.TAG);
                    break;
            }
        }
    }

    public static final class KeyRequest {
        public static final int REQUEST_TYPE_INITIAL = 0;
        public static final int REQUEST_TYPE_RELEASE = 2;
        public static final int REQUEST_TYPE_RENEWAL = 1;
        private byte[] mData;
        private String mDefaultUrl;
        private int mRequestType;

        @Retention(RetentionPolicy.SOURCE)
        public @interface RequestType {
        }

        public byte[] getData() {
            byte[] bArr = this.mData;
            if (bArr != null) {
                return bArr;
            }
            throw new RuntimeException("KeyRequest is not initialized");
        }

        public String getDefaultUrl() {
            String str = this.mDefaultUrl;
            if (str != null) {
                return str;
            }
            throw new RuntimeException("KeyRequest is not initialized");
        }

        public int getRequestType() {
            return this.mRequestType;
        }
    }

    public static final class KeyStatus {
        public static final int STATUS_EXPIRED = 1;
        public static final int STATUS_INTERNAL_ERROR = 4;
        public static final int STATUS_OUTPUT_NOT_ALLOWED = 2;
        public static final int STATUS_PENDING = 3;
        public static final int STATUS_USABLE = 0;
        private final byte[] mKeyId;
        private final int mStatusCode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface KeyStatusCode {
        }

        public KeyStatus(byte[] bArr, int i2) {
            this.mKeyId = bArr;
            this.mStatusCode = i2;
        }

        public byte[] getKeyId() {
            return this.mKeyId;
        }

        public int getStatusCode() {
            return this.mStatusCode;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface KeyType {
    }

    public static final class MediaDrmStateException extends IllegalStateException {
        private final String mDiagnosticInfo;
        private final int mErrorCode;

        public MediaDrmStateException(int i2, String str) {
            super(str);
            this.mErrorCode = i2;
            this.mDiagnosticInfo = "android.media.MediaDrm.error_" + (i2 < 0 ? "neg_" : "") + Math.abs(i2);
        }

        public String getDiagnosticInfo() {
            return this.mDiagnosticInfo;
        }

        public int getErrorCode() {
            return this.mErrorCode;
        }
    }

    public interface OnEventListener {
        void onEvent(MediaDrm mediaDrm, byte[] bArr, int i2, int i3, byte[] bArr2);
    }

    public interface OnExpirationUpdateListener {
        void onExpirationUpdate(MediaDrm mediaDrm, byte[] bArr, long j2);
    }

    public interface OnKeyStatusChangeListener {
        void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List<KeyStatus> list, boolean z2);
    }

    public static final class ProvisionRequest {
        private byte[] mData;
        private String mDefaultUrl;

        public byte[] getData() {
            byte[] bArr = this.mData;
            if (bArr != null) {
                return bArr;
            }
            throw new RuntimeException("ProvisionRequest is not initialized");
        }

        public String getDefaultUrl() {
            String str = this.mDefaultUrl;
            if (str != null) {
                return str;
            }
            throw new RuntimeException("ProvisionRequest is not initialized");
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StringProperty {
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    public MediaDrm(UUID uuid) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            this.mEventHandler = new EventHandler(this, looperMyLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        native_setup(new WeakReference(this), getByteArrayFromUUID(uuid), ActivityThread.currentOpPackageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final native byte[] decryptNative(MediaDrm mediaDrm, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native byte[] encryptNative(MediaDrm mediaDrm, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    private static final byte[] getByteArrayFromUUID(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 8; i2++) {
            int i3 = (7 - i2) * 8;
            bArr[i2] = (byte) (mostSignificantBits >>> i3);
            bArr[i2 + 8] = (byte) (leastSignificantBits >>> i3);
        }
        return bArr;
    }

    private native ProvisionRequest getProvisionRequestNative(int i2, String str);

    public static final boolean isCryptoSchemeSupported(UUID uuid) {
        return isCryptoSchemeSupportedNative(getByteArrayFromUUID(uuid), null);
    }

    private static final native boolean isCryptoSchemeSupportedNative(byte[] bArr, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public List<KeyStatus> keyStatusListFromParcel(Parcel parcel) {
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                return arrayList;
            }
            arrayList.add(new KeyStatus(parcel.createByteArray(), parcel.readInt()));
            i2 = i3;
        }
    }

    private final native void native_finalize();

    private static final native void native_init();

    private final native void native_setup(Object obj, byte[] bArr, String str);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        EventHandler eventHandler;
        MediaDrm mediaDrm = (MediaDrm) ((WeakReference) obj).get();
        if (mediaDrm == null || (eventHandler = mediaDrm.mEventHandler) == null) {
            return;
        }
        mediaDrm.mEventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj2));
    }

    private native Certificate provideProvisionResponseNative(byte[] bArr);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void setCipherAlgorithmNative(MediaDrm mediaDrm, byte[] bArr, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void setMacAlgorithmNative(MediaDrm mediaDrm, byte[] bArr, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native byte[] signNative(MediaDrm mediaDrm, byte[] bArr, byte[] bArr2, byte[] bArr3);

    private static final native byte[] signRSANative(MediaDrm mediaDrm, byte[] bArr, String str, byte[] bArr2, byte[] bArr3);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native boolean verifyNative(MediaDrm mediaDrm, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    public native void closeSession(byte[] bArr);

    public void finalize() {
        native_finalize();
    }

    public CertificateRequest getCertificateRequest(int i2, String str) {
        ProvisionRequest provisionRequestNative = getProvisionRequestNative(i2, str);
        return new CertificateRequest(provisionRequestNative.getData(), provisionRequestNative.getDefaultUrl());
    }

    public CryptoSession getCryptoSession(byte[] bArr, String str, String str2) {
        return new CryptoSession(bArr, str, str2);
    }

    public native KeyRequest getKeyRequest(byte[] bArr, byte[] bArr2, String str, int i2, HashMap<String, String> map);

    public native byte[] getPropertyByteArray(String str);

    public native String getPropertyString(String str);

    public ProvisionRequest getProvisionRequest() {
        return getProvisionRequestNative(0, "");
    }

    public native byte[] getSecureStop(byte[] bArr);

    public native List<byte[]> getSecureStops();

    public native byte[] openSession();

    public Certificate provideCertificateResponse(byte[] bArr) {
        return provideProvisionResponseNative(bArr);
    }

    public native byte[] provideKeyResponse(byte[] bArr, byte[] bArr2);

    public void provideProvisionResponse(byte[] bArr) {
        provideProvisionResponseNative(bArr);
    }

    public native HashMap<String, String> queryKeyStatus(byte[] bArr);

    public final native void release();

    public native void releaseAllSecureStops();

    public native void releaseSecureStops(byte[] bArr);

    public native void removeKeys(byte[] bArr);

    public native void restoreKeys(byte[] bArr, byte[] bArr2);

    public void setOnEventListener(OnEventListener onEventListener) {
        this.mOnEventListener = onEventListener;
    }

    public void setOnExpirationUpdateListener(OnExpirationUpdateListener onExpirationUpdateListener, Handler handler) {
        EventHandler eventHandler;
        if (onExpirationUpdateListener != null) {
            Looper looper = handler != null ? handler.getLooper() : Looper.myLooper();
            if (looper != null && ((eventHandler = this.mEventHandler) == null || eventHandler.getLooper() != looper)) {
                this.mEventHandler = new EventHandler(this, looper);
            }
        }
        this.mOnExpirationUpdateListener = onExpirationUpdateListener;
    }

    public void setOnKeyStatusChangeListener(OnKeyStatusChangeListener onKeyStatusChangeListener, Handler handler) {
        EventHandler eventHandler;
        if (onKeyStatusChangeListener != null) {
            Looper looper = handler != null ? handler.getLooper() : Looper.myLooper();
            if (looper != null && ((eventHandler = this.mEventHandler) == null || eventHandler.getLooper() != looper)) {
                this.mEventHandler = new EventHandler(this, looper);
            }
        }
        this.mOnKeyStatusChangeListener = onKeyStatusChangeListener;
    }

    public native void setPropertyByteArray(String str, byte[] bArr);

    public native void setPropertyString(String str, String str2);

    public byte[] signRSA(byte[] bArr, String str, byte[] bArr2, byte[] bArr3) {
        return signRSANative(this, bArr, str, bArr2, bArr3);
    }

    public static final boolean isCryptoSchemeSupported(UUID uuid, String str) {
        return isCryptoSchemeSupportedNative(getByteArrayFromUUID(uuid), str);
    }
}
