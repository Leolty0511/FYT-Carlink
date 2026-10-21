package com.android.server.wifi.hotspot2;

import android.os.Environment;
import android.util.Log;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class WfaKeyStore {
    private static final String DEFAULT_WFA_CERT_DIR = Environment.getRootDirectory() + "/etc/security/cacerts_wfa";
    private static final String TAG = "PasspointWfaKeyStore";
    private boolean mVerboseLoggingEnabled = false;
    private KeyStore mKeyStore = null;

    public void load() {
        if (this.mKeyStore != null) {
            return;
        }
        int index = 0;
        try {
            this.mKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            this.mKeyStore.load(null, null);
            Set<X509Certificate> certs = WfaCertBuilder.loadCertsFromDisk(DEFAULT_WFA_CERT_DIR);
            for (X509Certificate cert : certs) {
                this.mKeyStore.setCertificateEntry(String.format("%d", Integer.valueOf(index)), cert);
                index++;
            }
            if (index <= 0) {
                Log.wtf(TAG, "No certs loaded");
            }
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            e.printStackTrace();
        }
    }

    public KeyStore get() {
        return this.mKeyStore;
    }
}
