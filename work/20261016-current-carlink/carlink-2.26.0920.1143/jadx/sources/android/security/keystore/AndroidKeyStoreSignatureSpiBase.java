package android.security.keystore;

import android.accessibilityservice.c;
import android.os.IBinder;
import android.security.KeyStore;
import android.security.KeyStoreException;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.OperationResult;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
abstract class AndroidKeyStoreSignatureSpiBase extends SignatureSpi implements KeyStoreCryptoOperation {
    private Exception mCachedException;
    private AndroidKeyStoreKey mKey;
    private final KeyStore mKeyStore = KeyStore.getInstance();
    private KeyStoreCryptoOperationStreamer mMessageStreamer;
    private long mOperationHandle;
    private IBinder mOperationToken;
    private boolean mSigning;

    private void ensureKeystoreOperationInitialized() throws InvalidKeyException {
        if (this.mMessageStreamer == null && this.mCachedException == null) {
            if (this.mKey == null) {
                throw new IllegalStateException("Not initialized");
            }
            KeymasterArguments keymasterArguments = new KeymasterArguments();
            addAlgorithmSpecificParametersToBegin(keymasterArguments);
            OperationResult operationResultBegin = this.mKeyStore.begin(this.mKey.getAlias(), this.mSigning ? 2 : 3, true, keymasterArguments, null, this.mKey.getUid());
            if (operationResultBegin == null) {
                throw new KeyStoreConnectException();
            }
            this.mOperationToken = operationResultBegin.token;
            this.mOperationHandle = operationResultBegin.operationHandle;
            InvalidKeyException invalidKeyExceptionForInit = KeyStoreCryptoOperationUtils.getInvalidKeyExceptionForInit(this.mKeyStore, this.mKey, operationResultBegin.resultCode);
            if (invalidKeyExceptionForInit != null) {
                throw invalidKeyExceptionForInit;
            }
            if (this.mOperationToken == null) {
                throw new ProviderException("Keystore returned null operation token");
            }
            if (this.mOperationHandle == 0) {
                throw new ProviderException("Keystore returned invalid operation handle");
            }
            this.mMessageStreamer = createMainDataStreamer(this.mKeyStore, operationResultBegin.token);
        }
    }

    public abstract void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments);

    public KeyStoreCryptoOperationStreamer createMainDataStreamer(KeyStore keyStore, IBinder iBinder) {
        return new KeyStoreCryptoOperationChunkedStreamer(new KeyStoreCryptoOperationChunkedStreamer.MainDataStream(keyStore, iBinder));
    }

    @Override // java.security.SignatureSpi
    @Deprecated
    public final Object engineGetParameter(String str) {
        throw new InvalidParameterException();
    }

    @Override // java.security.SignatureSpi
    public final void engineInitSign(PrivateKey privateKey) {
        engineInitSign(privateKey, null);
    }

    @Override // java.security.SignatureSpi
    public final void engineInitVerify(PublicKey publicKey) {
        resetAll();
        try {
            if (publicKey == null) {
                throw new InvalidKeyException("Unsupported key: null");
            }
            if (!(publicKey instanceof AndroidKeyStorePublicKey)) {
                throw new InvalidKeyException("Unsupported public key type: " + publicKey);
            }
            this.mSigning = false;
            initKey((AndroidKeyStorePublicKey) publicKey);
            ((SignatureSpi) this).appRandom = null;
            ensureKeystoreOperationInitialized();
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }

    @Override // java.security.SignatureSpi
    @Deprecated
    public final void engineSetParameter(String str, Object obj) {
        throw new InvalidParameterException();
    }

    @Override // java.security.SignatureSpi
    public final int engineSign(byte[] bArr, int i2, int i3) {
        return super.engineSign(bArr, i2, i3);
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(byte[] bArr, int i2, int i3) throws SignatureException {
        if (this.mCachedException != null) {
            throw new SignatureException(this.mCachedException);
        }
        try {
            ensureKeystoreOperationInitialized();
            if (i3 == 0) {
                return;
            }
            try {
                byte[] bArrUpdate = this.mMessageStreamer.update(bArr, i2, i3);
                if (bArrUpdate.length != 0) {
                    throw new ProviderException(c.m(new StringBuilder("Update operation unexpectedly produced output: "), bArrUpdate.length, " bytes"));
                }
            } catch (KeyStoreException e2) {
                throw new SignatureException(e2);
            }
        } catch (InvalidKeyException e3) {
            throw new SignatureException(e3);
        }
    }

    @Override // java.security.SignatureSpi
    public final boolean engineVerify(byte[] bArr) throws SignatureException {
        boolean z2;
        if (this.mCachedException != null) {
            throw new SignatureException(this.mCachedException);
        }
        try {
            ensureKeystoreOperationInitialized();
            try {
                byte[] bArrDoFinal = this.mMessageStreamer.doFinal(EmptyArray.BYTE, 0, 0, bArr, null);
                if (bArrDoFinal.length != 0) {
                    throw new ProviderException("Signature verification unexpected produced output: " + bArrDoFinal.length + " bytes");
                }
                z2 = true;
            } catch (KeyStoreException e2) {
                if (e2.getErrorCode() != -30) {
                    throw new SignatureException(e2);
                }
                z2 = false;
            }
            resetWhilePreservingInitState();
            return z2;
        } catch (InvalidKeyException e3) {
            throw new SignatureException(e3);
        }
    }

    public abstract int getAdditionalEntropyAmountForSign();

    public final KeyStore getKeyStore() {
        return this.mKeyStore;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperation
    public final long getOperationHandle() {
        return this.mOperationHandle;
    }

    public void initKey(AndroidKeyStoreKey androidKeyStoreKey) {
        this.mKey = androidKeyStoreKey;
    }

    public final boolean isSigning() {
        return this.mSigning;
    }

    public void resetAll() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mOperationToken = null;
            this.mKeyStore.abort(iBinder);
        }
        this.mSigning = false;
        this.mKey = null;
        ((SignatureSpi) this).appRandom = null;
        this.mOperationToken = null;
        this.mOperationHandle = 0L;
        this.mMessageStreamer = null;
        this.mCachedException = null;
    }

    public void resetWhilePreservingInitState() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mOperationToken = null;
            this.mKeyStore.abort(iBinder);
        }
        this.mOperationHandle = 0L;
        this.mMessageStreamer = null;
        this.mCachedException = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.security.SignatureSpi
    public final void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) {
        resetAll();
        try {
            if (privateKey == 0) {
                throw new InvalidKeyException("Unsupported key: null");
            }
            if (!(privateKey instanceof AndroidKeyStorePrivateKey)) {
                throw new InvalidKeyException("Unsupported private key type: " + privateKey);
            }
            this.mSigning = true;
            initKey((AndroidKeyStoreKey) privateKey);
            ((SignatureSpi) this).appRandom = secureRandom;
            ensureKeystoreOperationInitialized();
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }

    @Override // java.security.SignatureSpi
    public final byte[] engineSign() throws SignatureException {
        if (this.mCachedException != null) {
            throw new SignatureException(this.mCachedException);
        }
        try {
            ensureKeystoreOperationInitialized();
            byte[] bArrDoFinal = this.mMessageStreamer.doFinal(EmptyArray.BYTE, 0, 0, null, KeyStoreCryptoOperationUtils.getRandomBytesToMixIntoKeystoreRng(((SignatureSpi) this).appRandom, getAdditionalEntropyAmountForSign()));
            resetWhilePreservingInitState();
            return bArrDoFinal;
        } catch (KeyStoreException | InvalidKeyException e2) {
            throw new SignatureException(e2);
        }
    }

    @Override // java.security.SignatureSpi
    public final boolean engineVerify(byte[] bArr, int i2, int i3) {
        return engineVerify(ArrayUtils.subarray(bArr, i2, i3));
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(byte b2) throws SignatureException {
        engineUpdate(new byte[]{b2}, 0, 1);
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(ByteBuffer byteBuffer) {
        byte[] bArrArray;
        int iPosition;
        int iRemaining = byteBuffer.remaining();
        if (byteBuffer.hasArray()) {
            bArrArray = byteBuffer.array();
            iPosition = byteBuffer.position() + byteBuffer.arrayOffset();
            byteBuffer.position(byteBuffer.limit());
        } else {
            bArrArray = new byte[iRemaining];
            byteBuffer.get(bArrArray);
            iPosition = 0;
        }
        try {
            engineUpdate(bArrArray, iPosition, iRemaining);
        } catch (SignatureException e2) {
            this.mCachedException = e2;
        }
    }
}
