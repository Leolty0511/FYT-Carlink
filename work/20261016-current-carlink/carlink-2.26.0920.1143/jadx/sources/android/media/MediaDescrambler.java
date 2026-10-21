package android.media;

import android.accessibilityservice.c;
import android.hardware.cas.V1_0.IDescramblerBase;
import android.os.IHwBinder;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class MediaDescrambler implements AutoCloseable {
    private static final String TAG = "MediaDescrambler";
    private IDescramblerBase mIDescrambler;
    private long mNativeContext;

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    public MediaDescrambler(int i2) throws MediaCasException.UnsupportedCasException {
        try {
            try {
                IDescramblerBase iDescramblerBaseCreateDescrambler = MediaCas.getService().createDescrambler(i2);
                this.mIDescrambler = iDescramblerBaseCreateDescrambler;
                if (iDescramblerBaseCreateDescrambler == null) {
                    throw new MediaCasException.UnsupportedCasException(c.d("Unsupported CA_system_id ", i2));
                }
                native_setup(this.mIDescrambler.asBinder());
            } catch (Exception e2) {
                Log.e(TAG, "Failed to create descrambler: " + e2);
                this.mIDescrambler = null;
                throw new MediaCasException.UnsupportedCasException(c.d("Unsupported CA_system_id ", i2));
            }
        } catch (Throwable th) {
            if (this.mIDescrambler != null) {
                throw th;
            }
            throw new MediaCasException.UnsupportedCasException(c.d("Unsupported CA_system_id ", i2));
        }
    }

    private final void cleanupAndRethrowIllegalState() {
        this.mIDescrambler = null;
        throw new IllegalStateException();
    }

    private final native int native_descramble(byte b2, int i2, int[] iArr, int[] iArr2, ByteBuffer byteBuffer, int i3, int i4, ByteBuffer byteBuffer2, int i5, int i6);

    private static final native void native_init();

    private final native void native_release();

    private final native void native_setup(IHwBinder iHwBinder);

    private final void validateInternalStates() {
        if (this.mIDescrambler == null) {
            throw new IllegalStateException();
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        IDescramblerBase iDescramblerBase = this.mIDescrambler;
        if (iDescramblerBase != null) {
            try {
                iDescramblerBase.release();
            } catch (RemoteException unused) {
            } finally {
                this.mIDescrambler = null;
            }
        }
        native_release();
    }

    public final int descramble(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, MediaCodec.CryptoInfo cryptoInfo) {
        validateInternalStates();
        int i2 = cryptoInfo.numSubSamples;
        if (i2 <= 0) {
            throw new IllegalArgumentException("Invalid CryptoInfo: invalid numSubSamples=" + cryptoInfo.numSubSamples);
        }
        int[] iArr = cryptoInfo.numBytesOfClearData;
        if (iArr == null && cryptoInfo.numBytesOfEncryptedData == null) {
            throw new IllegalArgumentException("Invalid CryptoInfo: clearData and encryptedData size arrays are both null!");
        }
        if (iArr != null && iArr.length < i2) {
            throw new IllegalArgumentException("Invalid CryptoInfo: numBytesOfClearData is too small!");
        }
        int[] iArr2 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr2 != null && iArr2.length < i2) {
            throw new IllegalArgumentException("Invalid CryptoInfo: numBytesOfEncryptedData is too small!");
        }
        byte[] bArr = cryptoInfo.key;
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("Invalid CryptoInfo: key array is invalid!");
        }
        try {
            return native_descramble(bArr[0], i2, iArr, iArr2, byteBuffer, byteBuffer.position(), byteBuffer.limit(), byteBuffer2, byteBuffer2.position(), byteBuffer2.limit());
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
            return -1;
        } catch (ServiceSpecificException e2) {
            MediaCasStateException.throwExceptionIfNeeded(e2.errorCode, e2.getMessage());
            return -1;
        }
    }

    public void finalize() {
        close();
    }

    public IHwBinder getBinder() {
        validateInternalStates();
        return this.mIDescrambler.asBinder();
    }

    public final boolean requiresSecureDecoderComponent(String str) {
        validateInternalStates();
        try {
            return this.mIDescrambler.requiresSecureDecoderComponent(str);
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
            return true;
        }
    }

    public final void setMediaCasSession(MediaCas.Session session) {
        validateInternalStates();
        try {
            MediaCasStateException.throwExceptionIfNeeded(this.mIDescrambler.setMediaCasSession(session.mSessionId));
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
        }
    }
}
