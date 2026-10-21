package android.security;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.android.org.conscrypt.OpenSSLEngine;
import com.android.org.conscrypt.TrustedCertificateStore;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.security.InvalidKeyException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class KeyChain {
    public static final String ACCOUNT_TYPE = "com.android.keychain";
    private static final String ACTION_CHOOSER = "com.android.keychain.CHOOSER";
    private static final String ACTION_INSTALL = "android.credentials.INSTALL";
    public static final String ACTION_STORAGE_CHANGED = "android.security.STORAGE_CHANGED";
    public static final String EXTRA_ALIAS = "alias";
    public static final String EXTRA_CERTIFICATE = "CERT";
    public static final String EXTRA_HOST = "host";
    public static final String EXTRA_NAME = "name";
    public static final String EXTRA_PKCS12 = "PKCS12";
    public static final String EXTRA_PORT = "port";
    public static final String EXTRA_RESPONSE = "response";
    public static final String EXTRA_SENDER = "sender";
    private static final String TAG = "KeyChain";

    public static class AliasResponse extends IKeyChainAliasCallback.Stub {
        private final KeyChainAliasCallback keyChainAliasResponse;

        @Override // android.security.IKeyChainAliasCallback
        public void alias(String str) {
            this.keyChainAliasResponse.alias(str);
        }

        private AliasResponse(KeyChainAliasCallback keyChainAliasCallback) {
            this.keyChainAliasResponse = keyChainAliasCallback;
        }
    }

    public static final class KeyChainConnection implements Closeable {
        private final Context context;
        private final IKeyChainService service;
        private final ServiceConnection serviceConnection;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.context.unbindService(this.serviceConnection);
        }

        public IKeyChainService getService() {
            return this.service;
        }

        private KeyChainConnection(Context context, ServiceConnection serviceConnection, IKeyChainService iKeyChainService) {
            this.context = context;
            this.serviceConnection = serviceConnection;
            this.service = iKeyChainService;
        }
    }

    public static KeyChainConnection bind(Context context) {
        Objects.requireNonNull(context, "context == null");
        ensureNotOnMainThread(context);
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(1);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: android.security.KeyChain.1
            public volatile boolean mConnectedAtLeastOnce = false;

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (this.mConnectedAtLeastOnce) {
                    return;
                }
                this.mConnectedAtLeastOnce = true;
                try {
                    linkedBlockingQueue.put(IKeyChainService.Stub.asInterface(iBinder));
                } catch (InterruptedException unused) {
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }
        };
        Intent intent = new Intent(IKeyChainService.class.getName());
        intent.setComponent(intent.resolveSystemService(context.getPackageManager(), 0));
        if (context.bindService(intent, serviceConnection, 1)) {
            return new KeyChainConnection(context, serviceConnection, (IKeyChainService) linkedBlockingQueue.take());
        }
        throw new AssertionError("could not bind to KeyChainService");
    }

    public static void choosePrivateKeyAlias(Activity activity, KeyChainAliasCallback keyChainAliasCallback, String[] strArr, Principal[] principalArr, String str, int i2, String str2) {
        Objects.requireNonNull(activity, "activity == null");
        Objects.requireNonNull(keyChainAliasCallback, "response == null");
        Intent intent = new Intent(ACTION_CHOOSER);
        intent.putExtra("response", new AliasResponse(keyChainAliasCallback));
        intent.putExtra(EXTRA_HOST, str);
        intent.putExtra(EXTRA_PORT, i2);
        intent.putExtra(EXTRA_ALIAS, str2);
        intent.putExtra(EXTRA_SENDER, PendingIntent.getActivity(activity, 0, new Intent(), 0));
        activity.startActivity(intent);
    }

    public static Intent createInstallIntent() {
        Intent intent = new Intent("android.credentials.INSTALL");
        intent.setClassName("com.android.certinstaller", "com.android.certinstaller.CertInstallerMain");
        return intent;
    }

    private static void ensureNotOnMainThread(Context context) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null && looperMyLooper == context.getMainLooper()) {
            throw new IllegalStateException("calling this from your main thread can lead to deadlock");
        }
    }

    public static X509Certificate[] getCertificateChain(Context context, String str) {
        Objects.requireNonNull(str, "alias == null");
        KeyChainConnection keyChainConnectionBind = bind(context);
        try {
            try {
                try {
                    byte[] certificate = keyChainConnectionBind.getService().getCertificate(str);
                    if (certificate == null) {
                        keyChainConnectionBind.close();
                        return null;
                    }
                    List certificateChain = new TrustedCertificateStore().getCertificateChain(toCertificate(certificate));
                    X509Certificate[] x509CertificateArr = (X509Certificate[]) certificateChain.toArray(new X509Certificate[certificateChain.size()]);
                    keyChainConnectionBind.close();
                    return x509CertificateArr;
                } catch (CertificateException e2) {
                    throw new KeyChainException(e2);
                }
            } catch (RemoteException e3) {
                throw new KeyChainException(e3);
            } catch (RuntimeException e4) {
                throw new KeyChainException(e4);
            }
        } catch (Throwable th) {
            keyChainConnectionBind.close();
            throw th;
        }
    }

    public static PrivateKey getPrivateKey(Context context, String str) {
        Objects.requireNonNull(str, "alias == null");
        KeyChainConnection keyChainConnectionBind = bind(context);
        try {
            try {
                try {
                    String strRequestPrivateKey = keyChainConnectionBind.getService().requestPrivateKey(str);
                    if (strRequestPrivateKey == null) {
                        throw new KeyChainException("keystore had a problem");
                    }
                    PrivateKey privateKeyById = OpenSSLEngine.getInstance("keystore").getPrivateKeyById(strRequestPrivateKey);
                    keyChainConnectionBind.close();
                    return privateKeyById;
                } catch (InvalidKeyException e2) {
                    throw new KeyChainException(e2);
                }
            } catch (RemoteException e3) {
                throw new KeyChainException(e3);
            } catch (RuntimeException e4) {
                throw new KeyChainException(e4);
            }
        } catch (Throwable th) {
            keyChainConnectionBind.close();
            throw th;
        }
    }

    public static boolean isBoundKeyAlgorithm(String str) {
        if (isKeyAlgorithmSupported(str)) {
            return KeyStore.getInstance().isHardwareBacked(str);
        }
        return false;
    }

    public static boolean isKeyAlgorithmSupported(String str) {
        String upperCase = str.toUpperCase(Locale.US);
        return "DSA".equals(upperCase) || "EC".equals(upperCase) || "RSA".equals(upperCase);
    }

    private static X509Certificate toCertificate(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("bytes == null");
        }
        try {
            return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
        } catch (CertificateException e2) {
            throw new AssertionError(e2);
        }
    }
}
