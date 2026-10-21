package android.security.keystore;

import android.os.IBinder;
import android.security.KeyStore;
import android.security.KeyStoreException;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterDefs;
import android.security.keymaster.OperationResult;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.ProviderException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.MacSpi;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidKeyStoreHmacSpi extends MacSpi implements KeyStoreCryptoOperation {
    private KeyStoreCryptoOperationChunkedStreamer mChunkedStreamer;
    private AndroidKeyStoreSecretKey mKey;
    private final KeyStore mKeyStore = KeyStore.getInstance();
    private final int mKeymasterDigest;
    private final int mMacSizeBits;
    private long mOperationHandle;
    private IBinder mOperationToken;

    public static class HmacSHA1 extends AndroidKeyStoreHmacSpi {
        public HmacSHA1() {
            super(2);
        }
    }

    public static class HmacSHA224 extends AndroidKeyStoreHmacSpi {
        public HmacSHA224() {
            super(3);
        }
    }

    public static class HmacSHA256 extends AndroidKeyStoreHmacSpi {
        public HmacSHA256() {
            super(4);
        }
    }

    public static class HmacSHA384 extends AndroidKeyStoreHmacSpi {
        public HmacSHA384() {
            super(5);
        }
    }

    public static class HmacSHA512 extends AndroidKeyStoreHmacSpi {
        public HmacSHA512() {
            super(6);
        }
    }

    public AndroidKeyStoreHmacSpi(int i2) {
        this.mKeymasterDigest = i2;
        this.mMacSizeBits = KeymasterUtils.getDigestOutputSizeBits(i2);
    }

    private void ensureKeystoreOperationInitialized() throws InvalidKeyException {
        if (this.mChunkedStreamer != null) {
            return;
        }
        if (this.mKey == null) {
            throw new IllegalStateException("Not initialized");
        }
        KeymasterArguments keymasterArguments = new KeymasterArguments();
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_ALGORITHM, 128);
        keymasterArguments.addEnum(KeymasterDefs.KM_TAG_DIGEST, this.mKeymasterDigest);
        keymasterArguments.addUnsignedInt(KeymasterDefs.KM_TAG_MAC_LENGTH, this.mMacSizeBits);
        OperationResult operationResultBegin = this.mKeyStore.begin(this.mKey.getAlias(), 2, true, keymasterArguments, null, this.mKey.getUid());
        if (operationResultBegin == null) {
            throw new KeyStoreConnectException();
        }
        this.mOperationToken = operationResultBegin.token;
        this.mOperationHandle = operationResultBegin.operationHandle;
        InvalidKeyException invalidKeyExceptionForInit = KeyStoreCryptoOperationUtils.getInvalidKeyExceptionForInit(this.mKeyStore, this.mKey, operationResultBegin.resultCode);
        if (invalidKeyExceptionForInit != null) {
            throw invalidKeyExceptionForInit;
        }
        IBinder iBinder = this.mOperationToken;
        if (iBinder == null) {
            throw new ProviderException("Keystore returned null operation token");
        }
        if (this.mOperationHandle == 0) {
            throw new ProviderException("Keystore returned invalid operation handle");
        }
        this.mChunkedStreamer = new KeyStoreCryptoOperationChunkedStreamer(new KeyStoreCryptoOperationChunkedStreamer.MainDataStream(this.mKeyStore, iBinder));
    }

    private void init(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (key == null) {
            throw new InvalidKeyException("key == null");
        }
        if (!(key instanceof AndroidKeyStoreSecretKey)) {
            throw new InvalidKeyException("Only Android KeyStore secret keys supported. Key: " + key);
        }
        this.mKey = (AndroidKeyStoreSecretKey) key;
        if (algorithmParameterSpec == null) {
            return;
        }
        throw new InvalidAlgorithmParameterException("Unsupported algorithm parameters: " + algorithmParameterSpec);
    }

    private void resetAll() {
        this.mKey = null;
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mKeyStore.abort(iBinder);
        }
        this.mOperationToken = null;
        this.mOperationHandle = 0L;
        this.mChunkedStreamer = null;
    }

    private void resetWhilePreservingInitState() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mKeyStore.abort(iBinder);
        }
        this.mOperationToken = null;
        this.mOperationHandle = 0L;
        this.mChunkedStreamer = null;
    }

    @Override // javax.crypto.MacSpi
    public byte[] engineDoFinal() {
        try {
            ensureKeystoreOperationInitialized();
            try {
                byte[] bArrDoFinal = this.mChunkedStreamer.doFinal(null, 0, 0, null, null);
                resetWhilePreservingInitState();
                return bArrDoFinal;
            } catch (KeyStoreException e2) {
                throw new ProviderException("Keystore operation failed", e2);
            }
        } catch (InvalidKeyException e3) {
            throw new ProviderException("Failed to reinitialize MAC", e3);
        }
    }

    @Override // javax.crypto.MacSpi
    public int engineGetMacLength() {
        return (this.mMacSizeBits + 7) / 8;
    }

    @Override // javax.crypto.MacSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec) {
        resetAll();
        try {
            init(key, algorithmParameterSpec);
            ensureKeystoreOperationInitialized();
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }

    @Override // javax.crypto.MacSpi
    public void engineReset() {
        resetWhilePreservingInitState();
    }

    @Override // javax.crypto.MacSpi
    public void engineUpdate(byte b2) {
        engineUpdate(new byte[]{b2}, 0, 1);
    }

    public void finalize() throws Throwable {
        try {
            IBinder iBinder = this.mOperationToken;
            if (iBinder != null) {
                this.mKeyStore.abort(iBinder);
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.security.keystore.KeyStoreCryptoOperation
    public long getOperationHandle() {
        return this.mOperationHandle;
    }

    @Override // javax.crypto.MacSpi
    public void engineUpdate(byte[] bArr, int i2, int i3) {
        try {
            ensureKeystoreOperationInitialized();
            try {
                byte[] bArrUpdate = this.mChunkedStreamer.update(bArr, i2, i3);
                if (bArrUpdate != null && bArrUpdate.length != 0) {
                    throw new ProviderException("Update operation unexpectedly produced output");
                }
            } catch (KeyStoreException e2) {
                throw new ProviderException("Keystore operation failed", e2);
            }
        } catch (InvalidKeyException e3) {
            throw new ProviderException("Failed to reinitialize MAC", e3);
        }
    }
}
