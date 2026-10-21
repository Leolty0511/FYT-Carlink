package android.security.net.config;

import android.util.ArrayMap;
import android.util.ArraySet;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkSecurityConfig {
    public static final boolean DEFAULT_CLEARTEXT_TRAFFIC_PERMITTED = true;
    public static final boolean DEFAULT_HSTS_ENFORCED = false;
    private Set<TrustAnchor> mAnchors;
    private final Object mAnchorsLock;
    private final List<CertificatesEntryRef> mCertificatesEntryRefs;
    private final boolean mCleartextTrafficPermitted;
    private final boolean mHstsEnforced;
    private final PinSet mPins;
    private NetworkSecurityTrustManager mTrustManager;
    private final Object mTrustManagerLock;

    public static final class Builder {
        private List<CertificatesEntryRef> mCertificatesEntryRefs;
        private Builder mParentBuilder;
        private PinSet mPinSet;
        private boolean mCleartextTrafficPermitted = true;
        private boolean mHstsEnforced = false;
        private boolean mCleartextTrafficPermittedSet = false;
        private boolean mHstsEnforcedSet = false;

        private List<CertificatesEntryRef> getEffectiveCertificatesEntryRefs() {
            List<CertificatesEntryRef> list = this.mCertificatesEntryRefs;
            if (list != null) {
                return list;
            }
            Builder builder = this.mParentBuilder;
            return builder != null ? builder.getEffectiveCertificatesEntryRefs() : Collections.emptyList();
        }

        private boolean getEffectiveCleartextTrafficPermitted() {
            if (this.mCleartextTrafficPermittedSet) {
                return this.mCleartextTrafficPermitted;
            }
            Builder builder = this.mParentBuilder;
            if (builder != null) {
                return builder.getEffectiveCleartextTrafficPermitted();
            }
            return true;
        }

        private boolean getEffectiveHstsEnforced() {
            if (this.mHstsEnforcedSet) {
                return this.mHstsEnforced;
            }
            Builder builder = this.mParentBuilder;
            if (builder != null) {
                return builder.getEffectiveHstsEnforced();
            }
            return false;
        }

        private PinSet getEffectivePinSet() {
            PinSet pinSet = this.mPinSet;
            if (pinSet != null) {
                return pinSet;
            }
            Builder builder = this.mParentBuilder;
            return builder != null ? builder.getEffectivePinSet() : PinSet.EMPTY_PINSET;
        }

        public Builder addCertificatesEntryRef(CertificatesEntryRef certificatesEntryRef) {
            if (this.mCertificatesEntryRefs == null) {
                this.mCertificatesEntryRefs = new ArrayList();
            }
            this.mCertificatesEntryRefs.add(certificatesEntryRef);
            return this;
        }

        public Builder addCertificatesEntryRefs(Collection<? extends CertificatesEntryRef> collection) {
            if (this.mCertificatesEntryRefs == null) {
                this.mCertificatesEntryRefs = new ArrayList();
            }
            this.mCertificatesEntryRefs.addAll(collection);
            return this;
        }

        public NetworkSecurityConfig build() {
            return new NetworkSecurityConfig(getEffectiveCleartextTrafficPermitted(), getEffectiveHstsEnforced(), getEffectivePinSet(), getEffectiveCertificatesEntryRefs());
        }

        public List<CertificatesEntryRef> getCertificatesEntryRefs() {
            return this.mCertificatesEntryRefs;
        }

        public Builder getParent() {
            return this.mParentBuilder;
        }

        public boolean hasCertificatesEntryRefs() {
            return this.mCertificatesEntryRefs != null;
        }

        public Builder setCleartextTrafficPermitted(boolean z2) {
            this.mCleartextTrafficPermitted = z2;
            this.mCleartextTrafficPermittedSet = true;
            return this;
        }

        public Builder setHstsEnforced(boolean z2) {
            this.mHstsEnforced = z2;
            this.mHstsEnforcedSet = true;
            return this;
        }

        public Builder setParent(Builder builder) {
            for (Builder parent = builder; parent != null; parent = parent.getParent()) {
                if (parent == this) {
                    throw new IllegalArgumentException("Loops are not allowed in Builder parents");
                }
            }
            this.mParentBuilder = builder;
            return this;
        }

        public Builder setPinSet(PinSet pinSet) {
            this.mPinSet = pinSet;
            return this;
        }
    }

    public static final Builder getDefaultBuilder(int i2, int i3) {
        Builder builderAddCertificatesEntryRef = new Builder().setHstsEnforced(false).addCertificatesEntryRef(new CertificatesEntryRef(SystemCertificateSource.getInstance(), false));
        builderAddCertificatesEntryRef.setCleartextTrafficPermitted(i3 < 2);
        if (i2 <= 23) {
            builderAddCertificatesEntryRef.addCertificatesEntryRef(new CertificatesEntryRef(UserCertificateSource.getInstance(), false));
        }
        return builderAddCertificatesEntryRef;
    }

    public Set<X509Certificate> findAllCertificatesByIssuerAndSignature(X509Certificate x509Certificate) {
        ArraySet arraySet = new ArraySet();
        Iterator<CertificatesEntryRef> it = this.mCertificatesEntryRefs.iterator();
        while (it.hasNext()) {
            arraySet.addAll(it.next().findAllCertificatesByIssuerAndSignature(x509Certificate));
        }
        return arraySet;
    }

    public TrustAnchor findTrustAnchorByIssuerAndSignature(X509Certificate x509Certificate) {
        Iterator<CertificatesEntryRef> it = this.mCertificatesEntryRefs.iterator();
        while (it.hasNext()) {
            TrustAnchor trustAnchorFindByIssuerAndSignature = it.next().findByIssuerAndSignature(x509Certificate);
            if (trustAnchorFindByIssuerAndSignature != null) {
                return trustAnchorFindByIssuerAndSignature;
            }
        }
        return null;
    }

    public TrustAnchor findTrustAnchorBySubjectAndPublicKey(X509Certificate x509Certificate) {
        Iterator<CertificatesEntryRef> it = this.mCertificatesEntryRefs.iterator();
        while (it.hasNext()) {
            TrustAnchor trustAnchorFindBySubjectAndPublicKey = it.next().findBySubjectAndPublicKey(x509Certificate);
            if (trustAnchorFindBySubjectAndPublicKey != null) {
                return trustAnchorFindBySubjectAndPublicKey;
            }
        }
        return null;
    }

    public PinSet getPins() {
        return this.mPins;
    }

    public Set<TrustAnchor> getTrustAnchors() {
        synchronized (this.mAnchorsLock) {
            Set<TrustAnchor> set = this.mAnchors;
            if (set != null) {
                return set;
            }
            ArrayMap arrayMap = new ArrayMap();
            Iterator<CertificatesEntryRef> it = this.mCertificatesEntryRefs.iterator();
            while (it.hasNext()) {
                for (TrustAnchor trustAnchor : it.next().getTrustAnchors()) {
                    X509Certificate x509Certificate = trustAnchor.certificate;
                    if (!arrayMap.containsKey(x509Certificate)) {
                        arrayMap.put(x509Certificate, trustAnchor);
                    }
                }
            }
            ArraySet arraySet = new ArraySet(arrayMap.size());
            arraySet.addAll((Collection) arrayMap.values());
            this.mAnchors = arraySet;
            return arraySet;
        }
    }

    public NetworkSecurityTrustManager getTrustManager() {
        NetworkSecurityTrustManager networkSecurityTrustManager;
        synchronized (this.mTrustManagerLock) {
            if (this.mTrustManager == null) {
                this.mTrustManager = new NetworkSecurityTrustManager(this);
            }
            networkSecurityTrustManager = this.mTrustManager;
        }
        return networkSecurityTrustManager;
    }

    public void handleTrustStorageUpdate() {
        synchronized (this.mAnchorsLock) {
            this.mAnchors = null;
            Iterator<CertificatesEntryRef> it = this.mCertificatesEntryRefs.iterator();
            while (it.hasNext()) {
                it.next().handleTrustStorageUpdate();
            }
        }
        getTrustManager().handleTrustStorageUpdate();
    }

    public boolean isCleartextTrafficPermitted() {
        return this.mCleartextTrafficPermitted;
    }

    public boolean isHstsEnforced() {
        return this.mHstsEnforced;
    }

    private NetworkSecurityConfig(boolean z2, boolean z3, PinSet pinSet, List<CertificatesEntryRef> list) {
        this.mAnchorsLock = new Object();
        this.mTrustManagerLock = new Object();
        this.mCleartextTrafficPermitted = z2;
        this.mHstsEnforced = z3;
        this.mPins = pinSet;
        this.mCertificatesEntryRefs = list;
        Collections.sort(list, new Comparator<CertificatesEntryRef>() { // from class: android.security.net.config.NetworkSecurityConfig.1
            @Override // java.util.Comparator
            public int compare(CertificatesEntryRef certificatesEntryRef, CertificatesEntryRef certificatesEntryRef2) {
                if (certificatesEntryRef.overridesPins()) {
                    return certificatesEntryRef2.overridesPins() ? 0 : -1;
                }
                return certificatesEntryRef2.overridesPins() ? 1 : 0;
            }
        });
    }
}
