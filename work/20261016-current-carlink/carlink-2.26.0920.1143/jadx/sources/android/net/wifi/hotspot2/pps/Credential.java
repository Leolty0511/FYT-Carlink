package android.net.wifi.hotspot2.pps;

import android.accessibilityservice.c;
import android.app.m;
import android.net.wifi.ParcelUtil;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Credential implements Parcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new Parcelable.Creator<Credential>() { // from class: android.net.wifi.hotspot2.pps.Credential.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Credential createFromParcel(Parcel parcel) {
            Credential credential = new Credential();
            credential.setCreationTimeInMillis(parcel.readLong());
            credential.setExpirationTimeInMillis(parcel.readLong());
            credential.setRealm(parcel.readString());
            credential.setCheckAaaServerCertStatus(parcel.readInt() != 0);
            credential.setUserCredential((UserCredential) parcel.readParcelable(null));
            credential.setCertCredential((CertificateCredential) parcel.readParcelable(null));
            credential.setSimCredential((SimCredential) parcel.readParcelable(null));
            credential.setCaCertificate(ParcelUtil.readCertificate(parcel));
            credential.setClientCertificateChain(ParcelUtil.readCertificates(parcel));
            credential.setClientPrivateKey(ParcelUtil.readPrivateKey(parcel));
            return credential;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Credential[] newArray(int i2) {
            return new Credential[i2];
        }
    };
    private static final int MAX_REALM_BYTES = 253;
    private static final String TAG = "Credential";
    private X509Certificate mCaCertificate;
    private CertificateCredential mCertCredential;
    private boolean mCheckAaaServerCertStatus;
    private X509Certificate[] mClientCertificateChain;
    private PrivateKey mClientPrivateKey;
    private long mCreationTimeInMillis;
    private long mExpirationTimeInMillis;
    private String mRealm;
    private SimCredential mSimCredential;
    private UserCredential mUserCredential;

    public Credential() {
        this.mCreationTimeInMillis = Long.MIN_VALUE;
        this.mExpirationTimeInMillis = Long.MIN_VALUE;
        this.mRealm = null;
        this.mCheckAaaServerCertStatus = false;
        this.mUserCredential = null;
        this.mCertCredential = null;
        this.mSimCredential = null;
        this.mCaCertificate = null;
        this.mClientCertificateChain = null;
        this.mClientPrivateKey = null;
    }

    private static boolean isPrivateKeyEquals(PrivateKey privateKey, PrivateKey privateKey2) {
        if (privateKey == null && privateKey2 == null) {
            return true;
        }
        if (privateKey == null || privateKey2 == null) {
            return false;
        }
        return TextUtils.equals(privateKey.getAlgorithm(), privateKey2.getAlgorithm()) && Arrays.equals(privateKey.getEncoded(), privateKey2.getEncoded());
    }

    private static boolean isX509CertificateEquals(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (x509Certificate == null && x509Certificate2 == null) {
            return true;
        }
        if (x509Certificate == null || x509Certificate2 == null) {
            return false;
        }
        try {
            return Arrays.equals(x509Certificate.getEncoded(), x509Certificate2.getEncoded());
        } catch (CertificateEncodingException unused) {
            return false;
        }
    }

    private static boolean isX509CertificatesEquals(X509Certificate[] x509CertificateArr, X509Certificate[] x509CertificateArr2) {
        if (x509CertificateArr == null && x509CertificateArr2 == null) {
            return true;
        }
        if (x509CertificateArr == null || x509CertificateArr2 == null || x509CertificateArr.length != x509CertificateArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < x509CertificateArr.length; i2++) {
            if (!isX509CertificateEquals(x509CertificateArr[i2], x509CertificateArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private boolean verifyCertCredential() {
        CertificateCredential certificateCredential = this.mCertCredential;
        if (certificateCredential == null) {
            Log.d(TAG, "Missing certificate credential");
            return false;
        }
        if (this.mUserCredential != null || this.mSimCredential != null) {
            Log.d(TAG, "Contained more than one type of credential");
            return false;
        }
        if (!certificateCredential.validate()) {
            return false;
        }
        if (this.mCaCertificate == null) {
            Log.d(TAG, "Missing CA Certificate for certificate credential");
            return false;
        }
        if (this.mClientPrivateKey == null) {
            Log.d(TAG, "Missing client private key for certificate credential");
            return false;
        }
        try {
            if (verifySha256Fingerprint(this.mClientCertificateChain, this.mCertCredential.getCertSha256Fingerprint())) {
                return true;
            }
            Log.d(TAG, "SHA-256 fingerprint mismatch");
            return false;
        } catch (NoSuchAlgorithmException | CertificateEncodingException e2) {
            Log.d(TAG, "Failed to verify SHA-256 fingerprint: " + e2.getMessage());
            return false;
        }
    }

    private static boolean verifySha256Fingerprint(X509Certificate[] x509CertificateArr, byte[] bArr) throws NoSuchAlgorithmException {
        if (x509CertificateArr == null) {
            return false;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        for (X509Certificate x509Certificate : x509CertificateArr) {
            messageDigest.reset();
            if (Arrays.equals(bArr, messageDigest.digest(x509Certificate.getEncoded()))) {
                return true;
            }
        }
        return false;
    }

    private boolean verifySimCredential() {
        SimCredential simCredential = this.mSimCredential;
        if (simCredential == null) {
            Log.d(TAG, "Missing SIM credential");
            return false;
        }
        if (this.mUserCredential == null && this.mCertCredential == null) {
            return simCredential.validate();
        }
        Log.d(TAG, "Contained more than one type of credential");
        return false;
    }

    private boolean verifyUserCredential() {
        UserCredential userCredential = this.mUserCredential;
        if (userCredential == null) {
            Log.d(TAG, "Missing user credential");
            return false;
        }
        if (this.mCertCredential != null || this.mSimCredential != null) {
            Log.d(TAG, "Contained more than one type of credential");
            return false;
        }
        if (!userCredential.validate()) {
            return false;
        }
        if (this.mCaCertificate != null) {
            return true;
        }
        Log.d(TAG, "Missing CA Certificate for user credential");
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        UserCredential userCredential;
        CertificateCredential certificateCredential;
        SimCredential simCredential;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.mRealm, credential.mRealm) && this.mCreationTimeInMillis == credential.mCreationTimeInMillis && this.mExpirationTimeInMillis == credential.mExpirationTimeInMillis && this.mCheckAaaServerCertStatus == credential.mCheckAaaServerCertStatus && ((userCredential = this.mUserCredential) != null ? userCredential.equals(credential.mUserCredential) : credential.mUserCredential == null) && ((certificateCredential = this.mCertCredential) != null ? certificateCredential.equals(credential.mCertCredential) : credential.mCertCredential == null) && ((simCredential = this.mSimCredential) != null ? simCredential.equals(credential.mSimCredential) : credential.mSimCredential == null) && isX509CertificateEquals(this.mCaCertificate, credential.mCaCertificate) && isX509CertificatesEquals(this.mClientCertificateChain, credential.mClientCertificateChain) && isPrivateKeyEquals(this.mClientPrivateKey, credential.mClientPrivateKey);
    }

    public X509Certificate getCaCertificate() {
        return this.mCaCertificate;
    }

    public CertificateCredential getCertCredential() {
        return this.mCertCredential;
    }

    public boolean getCheckAaaServerCertStatus() {
        return this.mCheckAaaServerCertStatus;
    }

    public X509Certificate[] getClientCertificateChain() {
        return this.mClientCertificateChain;
    }

    public PrivateKey getClientPrivateKey() {
        return this.mClientPrivateKey;
    }

    public long getCreationTimeInMillis() {
        return this.mCreationTimeInMillis;
    }

    public long getExpirationTimeInMillis() {
        return this.mExpirationTimeInMillis;
    }

    public String getRealm() {
        return this.mRealm;
    }

    public SimCredential getSimCredential() {
        return this.mSimCredential;
    }

    public UserCredential getUserCredential() {
        return this.mUserCredential;
    }

    public int hashCode() {
        return Objects.hash(this.mRealm, Long.valueOf(this.mCreationTimeInMillis), Long.valueOf(this.mExpirationTimeInMillis), Boolean.valueOf(this.mCheckAaaServerCertStatus), this.mUserCredential, this.mCertCredential, this.mSimCredential, this.mCaCertificate, this.mClientCertificateChain, this.mClientPrivateKey);
    }

    public void setCaCertificate(X509Certificate x509Certificate) {
        this.mCaCertificate = x509Certificate;
    }

    public void setCertCredential(CertificateCredential certificateCredential) {
        this.mCertCredential = certificateCredential;
    }

    public void setCheckAaaServerCertStatus(boolean z2) {
        this.mCheckAaaServerCertStatus = z2;
    }

    public void setClientCertificateChain(X509Certificate[] x509CertificateArr) {
        this.mClientCertificateChain = x509CertificateArr;
    }

    public void setClientPrivateKey(PrivateKey privateKey) {
        this.mClientPrivateKey = privateKey;
    }

    public void setCreationTimeInMillis(long j2) {
        this.mCreationTimeInMillis = j2;
    }

    public void setExpirationTimeInMillis(long j2) {
        this.mExpirationTimeInMillis = j2;
    }

    public void setRealm(String str) {
        this.mRealm = str;
    }

    public void setSimCredential(SimCredential simCredential) {
        this.mSimCredential = simCredential;
    }

    public void setUserCredential(UserCredential userCredential) {
        this.mUserCredential = userCredential;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Realm: ");
        sb.append(this.mRealm);
        sb.append("\nCreationTime: ");
        sb.append(this.mCreationTimeInMillis != Long.MIN_VALUE ? new Date(this.mCreationTimeInMillis) : "Not specified");
        sb.append("\nExpirationTime: ");
        sb.append(this.mExpirationTimeInMillis != Long.MIN_VALUE ? new Date(this.mExpirationTimeInMillis) : "Not specified");
        sb.append("\nCheckAAAServerStatus: ");
        sb.append(this.mCheckAaaServerCertStatus);
        sb.append("\n");
        if (this.mUserCredential != null) {
            sb.append("UserCredential Begin ---\n");
            sb.append(this.mUserCredential);
            sb.append("UserCredential End ---\n");
        }
        if (this.mCertCredential != null) {
            sb.append("CertificateCredential Begin ---\n");
            sb.append(this.mCertCredential);
            sb.append("CertificateCredential End ---\n");
        }
        if (this.mSimCredential != null) {
            sb.append("SIMCredential Begin ---\n");
            sb.append(this.mSimCredential);
            sb.append("SIMCredential End ---\n");
        }
        return sb.toString();
    }

    public boolean validate() {
        if (TextUtils.isEmpty(this.mRealm)) {
            Log.d(TAG, "Missing realm");
            return false;
        }
        if (this.mRealm.getBytes(StandardCharsets.UTF_8).length > 253) {
            m.t(new StringBuilder("realm exceeding maximum length: "), this.mRealm.getBytes(StandardCharsets.UTF_8).length, TAG);
            return false;
        }
        if (this.mUserCredential != null) {
            return verifyUserCredential();
        }
        if (this.mCertCredential != null) {
            return verifyCertCredential();
        }
        if (this.mSimCredential != null) {
            return verifySimCredential();
        }
        Log.d(TAG, "Missing required credential");
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mCreationTimeInMillis);
        parcel.writeLong(this.mExpirationTimeInMillis);
        parcel.writeString(this.mRealm);
        parcel.writeInt(this.mCheckAaaServerCertStatus ? 1 : 0);
        parcel.writeParcelable(this.mUserCredential, i2);
        parcel.writeParcelable(this.mCertCredential, i2);
        parcel.writeParcelable(this.mSimCredential, i2);
        ParcelUtil.writeCertificate(parcel, this.mCaCertificate);
        ParcelUtil.writeCertificates(parcel, this.mClientCertificateChain);
        ParcelUtil.writePrivateKey(parcel, this.mClientPrivateKey);
    }

    public static final class CertificateCredential implements Parcelable {
        private static final int CERT_SHA256_FINGER_PRINT_LENGTH = 32;
        public static final String CERT_TYPE_X509V3 = "x509v3";
        public static final Parcelable.Creator<CertificateCredential> CREATOR = new Parcelable.Creator<CertificateCredential>() { // from class: android.net.wifi.hotspot2.pps.Credential.CertificateCredential.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CertificateCredential createFromParcel(Parcel parcel) {
                CertificateCredential certificateCredential = new CertificateCredential();
                certificateCredential.setCertType(parcel.readString());
                certificateCredential.setCertSha256Fingerprint(parcel.createByteArray());
                return certificateCredential;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CertificateCredential[] newArray(int i2) {
                return new CertificateCredential[i2];
            }
        };
        private byte[] mCertSha256Fingerprint;
        private String mCertType;

        public CertificateCredential() {
            this.mCertType = null;
            this.mCertSha256Fingerprint = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CertificateCredential)) {
                return false;
            }
            CertificateCredential certificateCredential = (CertificateCredential) obj;
            return TextUtils.equals(this.mCertType, certificateCredential.mCertType) && Arrays.equals(this.mCertSha256Fingerprint, certificateCredential.mCertSha256Fingerprint);
        }

        public byte[] getCertSha256Fingerprint() {
            return this.mCertSha256Fingerprint;
        }

        public String getCertType() {
            return this.mCertType;
        }

        public int hashCode() {
            return Objects.hash(this.mCertType, this.mCertSha256Fingerprint);
        }

        public void setCertSha256Fingerprint(byte[] bArr) {
            this.mCertSha256Fingerprint = bArr;
        }

        public void setCertType(String str) {
            this.mCertType = str;
        }

        public String toString() {
            return c.n(new StringBuilder("CertificateType: "), this.mCertType, "\n");
        }

        public boolean validate() {
            if (!TextUtils.equals(CERT_TYPE_X509V3, this.mCertType)) {
                m.x(new StringBuilder("Unsupported certificate type: "), this.mCertType, Credential.TAG);
                return false;
            }
            byte[] bArr = this.mCertSha256Fingerprint;
            if (bArr != null && bArr.length == 32) {
                return true;
            }
            Log.d(Credential.TAG, "Invalid SHA-256 fingerprint");
            return false;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mCertType);
            parcel.writeByteArray(this.mCertSha256Fingerprint);
        }

        public CertificateCredential(CertificateCredential certificateCredential) {
            this.mCertType = null;
            this.mCertSha256Fingerprint = null;
            if (certificateCredential != null) {
                this.mCertType = certificateCredential.mCertType;
                byte[] bArr = certificateCredential.mCertSha256Fingerprint;
                if (bArr != null) {
                    this.mCertSha256Fingerprint = Arrays.copyOf(bArr, bArr.length);
                }
            }
        }
    }

    public static final class SimCredential implements Parcelable {
        public static final Parcelable.Creator<SimCredential> CREATOR = new Parcelable.Creator<SimCredential>() { // from class: android.net.wifi.hotspot2.pps.Credential.SimCredential.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SimCredential createFromParcel(Parcel parcel) {
                SimCredential simCredential = new SimCredential();
                simCredential.setImsi(parcel.readString());
                simCredential.setEapType(parcel.readInt());
                return simCredential;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SimCredential[] newArray(int i2) {
                return new SimCredential[i2];
            }
        };
        private static final int MAX_IMSI_LENGTH = 15;
        private int mEapType;
        private String mImsi;

        public SimCredential() {
            this.mImsi = null;
            this.mEapType = Integer.MIN_VALUE;
        }

        private boolean verifyImsi() {
            if (TextUtils.isEmpty(this.mImsi)) {
                Log.d(Credential.TAG, "Missing IMSI");
                return false;
            }
            if (this.mImsi.length() > 15) {
                Log.d(Credential.TAG, "IMSI exceeding maximum length: " + this.mImsi.length());
                return false;
            }
            int i2 = 0;
            char cCharAt = 0;
            while (i2 < this.mImsi.length() && (cCharAt = this.mImsi.charAt(i2)) >= '0' && cCharAt <= '9') {
                i2++;
            }
            if (i2 == this.mImsi.length()) {
                return true;
            }
            return i2 == this.mImsi.length() - 1 && cCharAt == '*';
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SimCredential)) {
                return false;
            }
            SimCredential simCredential = (SimCredential) obj;
            return TextUtils.equals(this.mImsi, simCredential.mImsi) && this.mEapType == simCredential.mEapType;
        }

        public int getEapType() {
            return this.mEapType;
        }

        public String getImsi() {
            return this.mImsi;
        }

        public int hashCode() {
            return Objects.hash(this.mImsi, Integer.valueOf(this.mEapType));
        }

        public void setEapType(int i2) {
            this.mEapType = i2;
        }

        public void setImsi(String str) {
            this.mImsi = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("IMSI: ");
            sb.append(this.mImsi);
            sb.append("\nEAPType: ");
            return c.m(sb, this.mEapType, "\n");
        }

        public boolean validate() {
            if (!verifyImsi()) {
                return false;
            }
            int i2 = this.mEapType;
            if (i2 == 18 || i2 == 23 || i2 == 50) {
                return true;
            }
            m.t(new StringBuilder("Invalid EAP Type for SIM credential: "), this.mEapType, Credential.TAG);
            return false;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mImsi);
            parcel.writeInt(this.mEapType);
        }

        public SimCredential(SimCredential simCredential) {
            this.mImsi = null;
            this.mEapType = Integer.MIN_VALUE;
            if (simCredential != null) {
                this.mImsi = simCredential.mImsi;
                this.mEapType = simCredential.mEapType;
            }
        }
    }

    public static final class UserCredential implements Parcelable {
        private static final int MAX_PASSWORD_BYTES = 255;
        private static final int MAX_USERNAME_BYTES = 63;
        private boolean mAbleToShare;
        private int mEapType;
        private boolean mMachineManaged;
        private String mNonEapInnerMethod;
        private String mPassword;
        private String mSoftTokenApp;
        private String mUsername;
        public static final String AUTH_METHOD_PAP = "PAP";
        public static final String AUTH_METHOD_MSCHAP = "MS-CHAP";
        public static final String AUTH_METHOD_MSCHAPV2 = "MS-CHAP-V2";
        private static final Set<String> SUPPORTED_AUTH = new HashSet(Arrays.asList(AUTH_METHOD_PAP, AUTH_METHOD_MSCHAP, AUTH_METHOD_MSCHAPV2));
        public static final Parcelable.Creator<UserCredential> CREATOR = new Parcelable.Creator<UserCredential>() { // from class: android.net.wifi.hotspot2.pps.Credential.UserCredential.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserCredential createFromParcel(Parcel parcel) {
                UserCredential userCredential = new UserCredential();
                userCredential.setUsername(parcel.readString());
                userCredential.setPassword(parcel.readString());
                userCredential.setMachineManaged(parcel.readInt() != 0);
                userCredential.setSoftTokenApp(parcel.readString());
                userCredential.setAbleToShare(parcel.readInt() != 0);
                userCredential.setEapType(parcel.readInt());
                userCredential.setNonEapInnerMethod(parcel.readString());
                return userCredential;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserCredential[] newArray(int i2) {
                return new UserCredential[i2];
            }
        };

        public UserCredential() {
            this.mUsername = null;
            this.mPassword = null;
            this.mMachineManaged = false;
            this.mSoftTokenApp = null;
            this.mAbleToShare = false;
            this.mEapType = Integer.MIN_VALUE;
            this.mNonEapInnerMethod = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UserCredential)) {
                return false;
            }
            UserCredential userCredential = (UserCredential) obj;
            return TextUtils.equals(this.mUsername, userCredential.mUsername) && TextUtils.equals(this.mPassword, userCredential.mPassword) && this.mMachineManaged == userCredential.mMachineManaged && TextUtils.equals(this.mSoftTokenApp, userCredential.mSoftTokenApp) && this.mAbleToShare == userCredential.mAbleToShare && this.mEapType == userCredential.mEapType && TextUtils.equals(this.mNonEapInnerMethod, userCredential.mNonEapInnerMethod);
        }

        public boolean getAbleToShare() {
            return this.mAbleToShare;
        }

        public int getEapType() {
            return this.mEapType;
        }

        public boolean getMachineManaged() {
            return this.mMachineManaged;
        }

        public String getNonEapInnerMethod() {
            return this.mNonEapInnerMethod;
        }

        public String getPassword() {
            return this.mPassword;
        }

        public String getSoftTokenApp() {
            return this.mSoftTokenApp;
        }

        public String getUsername() {
            return this.mUsername;
        }

        public int hashCode() {
            return Objects.hash(this.mUsername, this.mPassword, Boolean.valueOf(this.mMachineManaged), this.mSoftTokenApp, Boolean.valueOf(this.mAbleToShare), Integer.valueOf(this.mEapType), this.mNonEapInnerMethod);
        }

        public void setAbleToShare(boolean z2) {
            this.mAbleToShare = z2;
        }

        public void setEapType(int i2) {
            this.mEapType = i2;
        }

        public void setMachineManaged(boolean z2) {
            this.mMachineManaged = z2;
        }

        public void setNonEapInnerMethod(String str) {
            this.mNonEapInnerMethod = str;
        }

        public void setPassword(String str) {
            this.mPassword = str;
        }

        public void setSoftTokenApp(String str) {
            this.mSoftTokenApp = str;
        }

        public void setUsername(String str) {
            this.mUsername = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Username: ");
            sb.append(this.mUsername);
            sb.append("\nMachineManaged: ");
            sb.append(this.mMachineManaged);
            sb.append("\nSoftTokenApp: ");
            sb.append(this.mSoftTokenApp);
            sb.append("\nAbleToShare: ");
            sb.append(this.mAbleToShare);
            sb.append("\nEAPType: ");
            sb.append(this.mEapType);
            sb.append("\nAuthMethod: ");
            return c.n(sb, this.mNonEapInnerMethod, "\n");
        }

        public boolean validate() {
            if (TextUtils.isEmpty(this.mUsername)) {
                Log.d(Credential.TAG, "Missing username");
                return false;
            }
            if (this.mUsername.getBytes(StandardCharsets.UTF_8).length > 63) {
                m.t(new StringBuilder("username exceeding maximum length: "), this.mUsername.getBytes(StandardCharsets.UTF_8).length, Credential.TAG);
                return false;
            }
            if (TextUtils.isEmpty(this.mPassword)) {
                Log.d(Credential.TAG, "Missing password");
                return false;
            }
            if (this.mPassword.getBytes(StandardCharsets.UTF_8).length > 255) {
                m.t(new StringBuilder("password exceeding maximum length: "), this.mPassword.getBytes(StandardCharsets.UTF_8).length, Credential.TAG);
                return false;
            }
            if (this.mEapType != 21) {
                m.t(new StringBuilder("Invalid EAP Type for user credential: "), this.mEapType, Credential.TAG);
                return false;
            }
            if (SUPPORTED_AUTH.contains(this.mNonEapInnerMethod)) {
                return true;
            }
            m.x(new StringBuilder("Invalid non-EAP inner method for EAP-TTLS: "), this.mNonEapInnerMethod, Credential.TAG);
            return false;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mUsername);
            parcel.writeString(this.mPassword);
            parcel.writeInt(this.mMachineManaged ? 1 : 0);
            parcel.writeString(this.mSoftTokenApp);
            parcel.writeInt(this.mAbleToShare ? 1 : 0);
            parcel.writeInt(this.mEapType);
            parcel.writeString(this.mNonEapInnerMethod);
        }

        public UserCredential(UserCredential userCredential) {
            this.mUsername = null;
            this.mPassword = null;
            this.mMachineManaged = false;
            this.mSoftTokenApp = null;
            this.mAbleToShare = false;
            this.mEapType = Integer.MIN_VALUE;
            this.mNonEapInnerMethod = null;
            if (userCredential != null) {
                this.mUsername = userCredential.mUsername;
                this.mPassword = userCredential.mPassword;
                this.mMachineManaged = userCredential.mMachineManaged;
                this.mSoftTokenApp = userCredential.mSoftTokenApp;
                this.mAbleToShare = userCredential.mAbleToShare;
                this.mEapType = userCredential.mEapType;
                this.mNonEapInnerMethod = userCredential.mNonEapInnerMethod;
            }
        }
    }

    public Credential(Credential credential) {
        this.mCreationTimeInMillis = Long.MIN_VALUE;
        this.mExpirationTimeInMillis = Long.MIN_VALUE;
        this.mRealm = null;
        this.mCheckAaaServerCertStatus = false;
        this.mUserCredential = null;
        this.mCertCredential = null;
        this.mSimCredential = null;
        this.mCaCertificate = null;
        this.mClientCertificateChain = null;
        this.mClientPrivateKey = null;
        if (credential != null) {
            this.mCreationTimeInMillis = credential.mCreationTimeInMillis;
            this.mExpirationTimeInMillis = credential.mExpirationTimeInMillis;
            this.mRealm = credential.mRealm;
            this.mCheckAaaServerCertStatus = credential.mCheckAaaServerCertStatus;
            if (credential.mUserCredential != null) {
                this.mUserCredential = new UserCredential(credential.mUserCredential);
            }
            if (credential.mCertCredential != null) {
                this.mCertCredential = new CertificateCredential(credential.mCertCredential);
            }
            if (credential.mSimCredential != null) {
                this.mSimCredential = new SimCredential(credential.mSimCredential);
            }
            X509Certificate[] x509CertificateArr = credential.mClientCertificateChain;
            if (x509CertificateArr != null) {
                this.mClientCertificateChain = (X509Certificate[]) Arrays.copyOf(x509CertificateArr, x509CertificateArr.length);
            }
            this.mCaCertificate = credential.mCaCertificate;
            this.mClientPrivateKey = credential.mClientPrivateKey;
        }
    }
}
