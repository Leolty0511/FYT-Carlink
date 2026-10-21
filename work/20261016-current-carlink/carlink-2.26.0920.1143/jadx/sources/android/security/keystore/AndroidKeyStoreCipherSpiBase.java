package android.security.keystore;

import android.accessibilityservice.c;
import android.app.m;
import android.os.IBinder;
import android.security.KeyStore;
import android.security.KeyStoreException;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.OperationResult;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.AEADBadTagException;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
abstract class AndroidKeyStoreCipherSpiBase extends CipherSpi implements KeyStoreCryptoOperation {
    private KeyStoreCryptoOperationStreamer mAdditionalAuthenticationDataStreamer;
    private boolean mAdditionalAuthenticationDataStreamerClosed;
    private Exception mCachedException;
    private boolean mEncrypting;
    private AndroidKeyStoreKey mKey;
    private KeyStoreCryptoOperationStreamer mMainDataStreamer;
    private long mOperationHandle;
    private IBinder mOperationToken;
    private SecureRandom mRng;
    private int mKeymasterPurposeOverride = -1;
    private final KeyStore mKeyStore = KeyStore.getInstance();

    private void ensureKeystoreOperationInitialized() throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (this.mMainDataStreamer == null && this.mCachedException == null) {
            if (this.mKey == null) {
                throw new IllegalStateException("Not initialized");
            }
            KeymasterArguments keymasterArguments = new KeymasterArguments();
            addAlgorithmSpecificParametersToBegin(keymasterArguments);
            byte[] randomBytesToMixIntoKeystoreRng = KeyStoreCryptoOperationUtils.getRandomBytesToMixIntoKeystoreRng(this.mRng, getAdditionalEntropyAmountForBegin());
            int i2 = this.mKeymasterPurposeOverride;
            if (i2 == -1) {
                i2 = !this.mEncrypting ? 1 : 0;
            }
            OperationResult operationResultBegin = this.mKeyStore.begin(this.mKey.getAlias(), i2, true, keymasterArguments, randomBytesToMixIntoKeystoreRng, this.mKey.getUid());
            if (operationResultBegin == null) {
                throw new KeyStoreConnectException();
            }
            this.mOperationToken = operationResultBegin.token;
            this.mOperationHandle = operationResultBegin.operationHandle;
            GeneralSecurityException exceptionForCipherInit = KeyStoreCryptoOperationUtils.getExceptionForCipherInit(this.mKeyStore, this.mKey, operationResultBegin.resultCode);
            if (exceptionForCipherInit != null) {
                if (exceptionForCipherInit instanceof InvalidKeyException) {
                    throw ((InvalidKeyException) exceptionForCipherInit);
                }
                if (!(exceptionForCipherInit instanceof InvalidAlgorithmParameterException)) {
                    throw new ProviderException("Unexpected exception type", exceptionForCipherInit);
                }
                throw ((InvalidAlgorithmParameterException) exceptionForCipherInit);
            }
            if (this.mOperationToken == null) {
                throw new ProviderException("Keystore returned null operation token");
            }
            if (this.mOperationHandle == 0) {
                throw new ProviderException("Keystore returned invalid operation handle");
            }
            loadAlgorithmSpecificParametersFromBeginResult(operationResultBegin.outParams);
            this.mMainDataStreamer = createMainDataStreamer(this.mKeyStore, operationResultBegin.token);
            this.mAdditionalAuthenticationDataStreamer = createAdditionalAuthenticationDataStreamer(this.mKeyStore, operationResultBegin.token);
            this.mAdditionalAuthenticationDataStreamerClosed = false;
        }
    }

    private void flushAAD() {
        KeyStoreCryptoOperationStreamer keyStoreCryptoOperationStreamer = this.mAdditionalAuthenticationDataStreamer;
        if (keyStoreCryptoOperationStreamer == null || this.mAdditionalAuthenticationDataStreamerClosed) {
            return;
        }
        try {
            byte[] bArrDoFinal = keyStoreCryptoOperationStreamer.doFinal(EmptyArray.BYTE, 0, 0, null, null);
            this.mAdditionalAuthenticationDataStreamerClosed = true;
            if (bArrDoFinal != null && bArrDoFinal.length > 0) {
                throw new ProviderException(c.m(new StringBuilder("AAD update unexpectedly returned data: "), bArrDoFinal.length, " bytes"));
            }
        } catch (Throwable th) {
            this.mAdditionalAuthenticationDataStreamerClosed = true;
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001d  */
    private void init(int i2, Key key, SecureRandom secureRandom) {
        if (i2 == 1) {
            this.mEncrypting = true;
        } else {
            if (i2 != 2) {
                if (i2 == 3) {
                    this.mEncrypting = true;
                } else if (i2 != 4) {
                    throw new InvalidParameterException(c.d("Unsupported opmode: ", i2));
                }
            }
            this.mEncrypting = false;
        }
        initKey(i2, key);
        if (this.mKey == null) {
            throw new ProviderException("initKey did not initialize the key");
        }
        this.mRng = secureRandom;
    }

    public static String opmodeToString(int i2) {
        if (i2 == 1) {
            return "ENCRYPT_MODE";
        }
        if (i2 == 2) {
            return "DECRYPT_MODE";
        }
        if (i2 != 3) {
            return i2 != 4 ? String.valueOf(i2) : "UNWRAP_MODE";
        }
        return "WRAP_MODE";
    }

    public abstract void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments);

    public KeyStoreCryptoOperationStreamer createAdditionalAuthenticationDataStreamer(KeyStore keyStore, IBinder iBinder) {
        return null;
    }

    public KeyStoreCryptoOperationStreamer createMainDataStreamer(KeyStore keyStore, IBinder iBinder) {
        return new KeyStoreCryptoOperationChunkedStreamer(new KeyStoreCryptoOperationChunkedStreamer.MainDataStream(keyStore, iBinder));
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineDoFinal(byte[] bArr, int i2, int i3) throws BadPaddingException, IllegalBlockSizeException {
        if (this.mCachedException != null) {
            throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(this.mCachedException));
        }
        try {
            ensureKeystoreOperationInitialized();
            try {
                flushAAD();
                byte[] bArrDoFinal = this.mMainDataStreamer.doFinal(bArr, i2, i3, null, KeyStoreCryptoOperationUtils.getRandomBytesToMixIntoKeystoreRng(this.mRng, getAdditionalEntropyAmountForFinish()));
                resetWhilePreservingInitState();
                return bArrDoFinal;
            } catch (KeyStoreException e2) {
                int errorCode = e2.getErrorCode();
                if (errorCode == -38) {
                    throw ((BadPaddingException) new BadPaddingException().initCause(e2));
                }
                if (errorCode == -30) {
                    throw ((AEADBadTagException) new AEADBadTagException().initCause(e2));
                }
                if (errorCode != -21) {
                    throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(e2));
                }
                throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(e2));
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException e3) {
            throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(e3));
        }
    }

    @Override // javax.crypto.CipherSpi
    public final int engineGetKeySize(Key key) {
        throw new UnsupportedOperationException();
    }

    @Override // javax.crypto.CipherSpi
    public abstract AlgorithmParameters engineGetParameters();

    @Override // javax.crypto.CipherSpi
    public final void engineInit(int i2, Key key, SecureRandom secureRandom) {
        resetAll();
        try {
            init(i2, key, secureRandom);
            initAlgorithmSpecificParameters();
            try {
                ensureKeystoreOperationInitialized();
            } catch (InvalidAlgorithmParameterException e2) {
                throw new InvalidKeyException(e2);
            }
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }

    @Override // javax.crypto.CipherSpi
    public final void engineSetMode(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // javax.crypto.CipherSpi
    public final void engineSetPadding(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // javax.crypto.CipherSpi
    public final Key engineUnwrap(byte[] bArr, String str, int i2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (this.mKey == null) {
            throw new IllegalStateException("Not initilized");
        }
        if (isEncrypting()) {
            throw new IllegalStateException("Cipher must be initialized in Cipher.WRAP_MODE to wrap keys");
        }
        if (bArr == null) {
            throw new NullPointerException("wrappedKey == null");
        }
        try {
            byte[] bArrEngineDoFinal = engineDoFinal(bArr, 0, bArr.length);
            if (i2 == 1) {
                try {
                    return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(bArrEngineDoFinal));
                } catch (InvalidKeySpecException e2) {
                    throw new InvalidKeyException("Failed to create public key from its X.509 encoded form", e2);
                }
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    return new SecretKeySpec(bArrEngineDoFinal, str);
                }
                throw new InvalidParameterException(c.d("Unsupported wrappedKeyType: ", i2));
            }
            try {
                return KeyFactory.getInstance(str).generatePrivate(new PKCS8EncodedKeySpec(bArrEngineDoFinal));
            } catch (InvalidKeySpecException e3) {
                throw new InvalidKeyException("Failed to create private key from its PKCS#8 encoded form", e3);
            }
        } catch (BadPaddingException | IllegalBlockSizeException e4) {
            throw new InvalidKeyException("Failed to unwrap key", e4);
        }
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineUpdate(byte[] bArr, int i2, int i3) {
        if (this.mCachedException != null) {
            return null;
        }
        try {
            ensureKeystoreOperationInitialized();
            if (i3 == 0) {
                return null;
            }
            try {
                flushAAD();
                byte[] bArrUpdate = this.mMainDataStreamer.update(bArr, i2, i3);
                if (bArrUpdate.length == 0) {
                    return null;
                }
                return bArrUpdate;
            } catch (KeyStoreException e2) {
                this.mCachedException = e2;
                return null;
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException e3) {
            this.mCachedException = e3;
            return null;
        }
    }

    @Override // javax.crypto.CipherSpi
    public final void engineUpdateAAD(byte[] bArr, int i2, int i3) {
        if (this.mCachedException != null) {
            return;
        }
        try {
            ensureKeystoreOperationInitialized();
            if (this.mAdditionalAuthenticationDataStreamerClosed) {
                throw new IllegalStateException("AAD can only be provided before Cipher.update is invoked");
            }
            KeyStoreCryptoOperationStreamer keyStoreCryptoOperationStreamer = this.mAdditionalAuthenticationDataStreamer;
            if (keyStoreCryptoOperationStreamer == null) {
                throw new IllegalStateException("This cipher does not support AAD");
            }
            try {
                byte[] bArrUpdate = keyStoreCryptoOperationStreamer.update(bArr, i2, i3);
                if (bArrUpdate != null && bArrUpdate.length > 0) {
                    throw new ProviderException(c.m(new StringBuilder("AAD update unexpectedly produced output: "), bArrUpdate.length, " bytes"));
                }
            } catch (KeyStoreException e2) {
                this.mCachedException = e2;
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException e3) {
            this.mCachedException = e3;
        }
    }

    @Override // javax.crypto.CipherSpi
    public final byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        byte[] encoded;
        if (this.mKey == null) {
            throw new IllegalStateException("Not initilized");
        }
        if (!isEncrypting()) {
            throw new IllegalStateException("Cipher must be initialized in Cipher.WRAP_MODE to wrap keys");
        }
        if (key == null) {
            throw new NullPointerException("key == null");
        }
        if (key instanceof SecretKey) {
            encoded = "RAW".equalsIgnoreCase(key.getFormat()) ? key.getEncoded() : null;
            if (encoded == null) {
                try {
                    encoded = ((SecretKeySpec) SecretKeyFactory.getInstance(key.getAlgorithm()).getKeySpec((SecretKey) key, SecretKeySpec.class)).getEncoded();
                } catch (NoSuchAlgorithmException | InvalidKeySpecException e2) {
                    throw new InvalidKeyException("Failed to wrap key because it does not export its key material", e2);
                }
            }
        } else if (key instanceof PrivateKey) {
            encoded = "PKCS8".equalsIgnoreCase(key.getFormat()) ? key.getEncoded() : null;
            if (encoded == null) {
                try {
                    encoded = ((PKCS8EncodedKeySpec) KeyFactory.getInstance(key.getAlgorithm()).getKeySpec(key, PKCS8EncodedKeySpec.class)).getEncoded();
                } catch (NoSuchAlgorithmException | InvalidKeySpecException e3) {
                    throw new InvalidKeyException("Failed to wrap key because it does not export its key material", e3);
                }
            }
        } else {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException("Unsupported key type: ".concat(key.getClass().getName()));
            }
            encoded = "X.509".equalsIgnoreCase(key.getFormat()) ? key.getEncoded() : null;
            if (encoded == null) {
                try {
                    encoded = ((X509EncodedKeySpec) KeyFactory.getInstance(key.getAlgorithm()).getKeySpec(key, X509EncodedKeySpec.class)).getEncoded();
                } catch (NoSuchAlgorithmException | InvalidKeySpecException e4) {
                    throw new InvalidKeyException("Failed to wrap key because it does not export its key material", e4);
                }
            }
        }
        if (encoded == null) {
            throw new InvalidKeyException("Failed to wrap key because it does not export its key material");
        }
        try {
            return engineDoFinal(encoded, 0, encoded.length);
        } catch (BadPaddingException e5) {
            throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(e5));
        }
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

    public abstract int getAdditionalEntropyAmountForBegin();

    public abstract int getAdditionalEntropyAmountForFinish();

    public final long getConsumedInputSizeBytes() {
        KeyStoreCryptoOperationStreamer keyStoreCryptoOperationStreamer = this.mMainDataStreamer;
        if (keyStoreCryptoOperationStreamer != null) {
            return keyStoreCryptoOperationStreamer.getConsumedInputSizeBytes();
        }
        throw new IllegalStateException("Not initialized");
    }

    public final KeyStore getKeyStore() {
        return this.mKeyStore;
    }

    public final int getKeymasterPurposeOverride() {
        return this.mKeymasterPurposeOverride;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperation
    public final long getOperationHandle() {
        return this.mOperationHandle;
    }

    public final long getProducedOutputSizeBytes() {
        KeyStoreCryptoOperationStreamer keyStoreCryptoOperationStreamer = this.mMainDataStreamer;
        if (keyStoreCryptoOperationStreamer != null) {
            return keyStoreCryptoOperationStreamer.getProducedOutputSizeBytes();
        }
        throw new IllegalStateException("Not initialized");
    }

    public abstract void initAlgorithmSpecificParameters();

    public abstract void initAlgorithmSpecificParameters(AlgorithmParameters algorithmParameters);

    public abstract void initAlgorithmSpecificParameters(AlgorithmParameterSpec algorithmParameterSpec);

    public abstract void initKey(int i2, Key key);

    public final boolean isEncrypting() {
        return this.mEncrypting;
    }

    public abstract void loadAlgorithmSpecificParametersFromBeginResult(KeymasterArguments keymasterArguments);

    public void resetAll() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mKeyStore.abort(iBinder);
        }
        this.mEncrypting = false;
        this.mKeymasterPurposeOverride = -1;
        this.mKey = null;
        this.mRng = null;
        this.mOperationToken = null;
        this.mOperationHandle = 0L;
        this.mMainDataStreamer = null;
        this.mAdditionalAuthenticationDataStreamer = null;
        this.mAdditionalAuthenticationDataStreamerClosed = false;
        this.mCachedException = null;
    }

    public void resetWhilePreservingInitState() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mKeyStore.abort(iBinder);
        }
        this.mOperationToken = null;
        this.mOperationHandle = 0L;
        this.mMainDataStreamer = null;
        this.mAdditionalAuthenticationDataStreamer = null;
        this.mAdditionalAuthenticationDataStreamerClosed = false;
        this.mCachedException = null;
    }

    public final void setKey(AndroidKeyStoreKey androidKeyStoreKey) {
        this.mKey = androidKeyStoreKey;
    }

    public final void setKeymasterPurposeOverride(int i2) {
        this.mKeymasterPurposeOverride = i2;
    }

    @Override // javax.crypto.CipherSpi
    public final void engineInit(int i2, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) {
        resetAll();
        try {
            init(i2, key, secureRandom);
            initAlgorithmSpecificParameters(algorithmParameters);
            ensureKeystoreOperationInitialized();
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }

    @Override // javax.crypto.CipherSpi
    public final int engineUpdate(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws ShortBufferException {
        byte[] bArrEngineUpdate = engineUpdate(bArr, i2, i3);
        if (bArrEngineUpdate == null) {
            return 0;
        }
        int length = bArr2.length - i4;
        if (bArrEngineUpdate.length <= length) {
            System.arraycopy(bArrEngineUpdate, 0, bArr2, i4, bArrEngineUpdate.length);
            return bArrEngineUpdate.length;
        }
        throw new ShortBufferException("Output buffer too short. Produced: " + bArrEngineUpdate.length + ", available: " + length);
    }

    @Override // javax.crypto.CipherSpi
    public final void engineInit(int i2, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        resetAll();
        try {
            init(i2, key, secureRandom);
            initAlgorithmSpecificParameters(algorithmParameterSpec);
            ensureKeystoreOperationInitialized();
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }

    @Override // javax.crypto.CipherSpi
    public final int engineUpdate(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws ShortBufferException {
        byte[] bArrEngineUpdate;
        if (byteBuffer == null) {
            throw new NullPointerException("input == null");
        }
        if (byteBuffer2 != null) {
            int iRemaining = byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                bArrEngineUpdate = engineUpdate(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), iRemaining);
                byteBuffer.position(byteBuffer.position() + iRemaining);
            } else {
                byte[] bArr = new byte[iRemaining];
                byteBuffer.get(bArr);
                bArrEngineUpdate = engineUpdate(bArr, 0, iRemaining);
            }
            int length = bArrEngineUpdate != null ? bArrEngineUpdate.length : 0;
            if (length > 0) {
                int iRemaining2 = byteBuffer2.remaining();
                try {
                    byteBuffer2.put(bArrEngineUpdate);
                } catch (BufferOverflowException unused) {
                    throw new ShortBufferException(m.e("Output buffer too small. Produced: ", length, ", available: ", iRemaining2));
                }
            }
            return length;
        }
        throw new NullPointerException("output == null");
    }

    @Override // javax.crypto.CipherSpi
    public final int engineDoFinal(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        byte[] bArrEngineDoFinal = engineDoFinal(bArr, i2, i3);
        if (bArrEngineDoFinal == null) {
            return 0;
        }
        int length = bArr2.length - i4;
        if (bArrEngineDoFinal.length <= length) {
            System.arraycopy(bArrEngineDoFinal, 0, bArr2, i4, bArrEngineDoFinal.length);
            return bArrEngineDoFinal.length;
        }
        throw new ShortBufferException("Output buffer too short. Produced: " + bArrEngineDoFinal.length + ", available: " + length);
    }

    @Override // javax.crypto.CipherSpi
    public final void engineUpdateAAD(ByteBuffer byteBuffer) {
        int iRemaining;
        byte[] bArrArray;
        int iPosition;
        if (byteBuffer != null) {
            if (byteBuffer.hasRemaining()) {
                if (byteBuffer.hasArray()) {
                    bArrArray = byteBuffer.array();
                    iPosition = byteBuffer.position() + byteBuffer.arrayOffset();
                    iRemaining = byteBuffer.remaining();
                    byteBuffer.position(byteBuffer.limit());
                } else {
                    iRemaining = byteBuffer.remaining();
                    bArrArray = new byte[iRemaining];
                    byteBuffer.get(bArrArray);
                    iPosition = 0;
                }
                engineUpdateAAD(bArrArray, iPosition, iRemaining);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("src == null");
    }

    @Override // javax.crypto.CipherSpi
    public final int engineDoFinal(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        byte[] bArrEngineDoFinal;
        if (byteBuffer == null) {
            throw new NullPointerException("input == null");
        }
        if (byteBuffer2 != null) {
            int iRemaining = byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                bArrEngineDoFinal = engineDoFinal(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), iRemaining);
                byteBuffer.position(byteBuffer.position() + iRemaining);
            } else {
                byte[] bArr = new byte[iRemaining];
                byteBuffer.get(bArr);
                bArrEngineDoFinal = engineDoFinal(bArr, 0, iRemaining);
            }
            int length = bArrEngineDoFinal != null ? bArrEngineDoFinal.length : 0;
            if (length > 0) {
                int iRemaining2 = byteBuffer2.remaining();
                try {
                    byteBuffer2.put(bArrEngineDoFinal);
                } catch (BufferOverflowException unused) {
                    throw new ShortBufferException(m.e("Output buffer too small. Produced: ", length, ", available: ", iRemaining2));
                }
            }
            return length;
        }
        throw new NullPointerException("output == null");
    }
}
