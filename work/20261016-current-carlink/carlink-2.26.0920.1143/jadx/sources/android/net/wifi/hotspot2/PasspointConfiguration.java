package android.net.wifi.hotspot2;

import android.app.m;
import android.net.wifi.hotspot2.pps.Credential;
import android.net.wifi.hotspot2.pps.HomeSp;
import android.net.wifi.hotspot2.pps.Policy;
import android.net.wifi.hotspot2.pps.UpdateParameter;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class PasspointConfiguration implements Parcelable {
    private static final int CERTIFICATE_SHA256_BYTES = 32;
    public static final Parcelable.Creator<PasspointConfiguration> CREATOR = new Parcelable.Creator<PasspointConfiguration>() { // from class: android.net.wifi.hotspot2.PasspointConfiguration.1
        private Map<String, byte[]> readTrustRootCerts(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == -1) {
                return null;
            }
            HashMap map = new HashMap(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                map.put(parcel.readString(), parcel.createByteArray());
            }
            return map;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PasspointConfiguration createFromParcel(Parcel parcel) {
            PasspointConfiguration passpointConfiguration = new PasspointConfiguration();
            passpointConfiguration.setHomeSp((HomeSp) parcel.readParcelable(null));
            passpointConfiguration.setCredential((Credential) parcel.readParcelable(null));
            passpointConfiguration.setPolicy((Policy) parcel.readParcelable(null));
            passpointConfiguration.setSubscriptionUpdate((UpdateParameter) parcel.readParcelable(null));
            passpointConfiguration.setTrustRootCertList(readTrustRootCerts(parcel));
            passpointConfiguration.setUpdateIdentifier(parcel.readInt());
            passpointConfiguration.setCredentialPriority(parcel.readInt());
            passpointConfiguration.setSubscriptionCreationTimeInMillis(parcel.readLong());
            passpointConfiguration.setSubscriptionExpirationTimeInMillis(parcel.readLong());
            passpointConfiguration.setSubscriptionType(parcel.readString());
            passpointConfiguration.setUsageLimitUsageTimePeriodInMinutes(parcel.readLong());
            passpointConfiguration.setUsageLimitStartTimeInMillis(parcel.readLong());
            passpointConfiguration.setUsageLimitDataLimit(parcel.readLong());
            passpointConfiguration.setUsageLimitTimeLimitInMinutes(parcel.readLong());
            return passpointConfiguration;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PasspointConfiguration[] newArray(int i2) {
            return new PasspointConfiguration[i2];
        }
    };
    private static final int MAX_URL_BYTES = 1023;
    private static final int NULL_VALUE = -1;
    private static final String TAG = "PasspointConfiguration";
    private Credential mCredential;
    private int mCredentialPriority;
    private HomeSp mHomeSp;
    private Policy mPolicy;
    private long mSubscriptionCreationTimeInMillis;
    private long mSubscriptionExpirationTimeInMillis;
    private String mSubscriptionType;
    private UpdateParameter mSubscriptionUpdate;
    private Map<String, byte[]> mTrustRootCertList;
    private int mUpdateIdentifier;
    private long mUsageLimitDataLimit;
    private long mUsageLimitStartTimeInMillis;
    private long mUsageLimitTimeLimitInMinutes;
    private long mUsageLimitUsageTimePeriodInMinutes;

    public PasspointConfiguration() {
        this.mHomeSp = null;
        this.mCredential = null;
        this.mPolicy = null;
        this.mSubscriptionUpdate = null;
        this.mTrustRootCertList = null;
        this.mUpdateIdentifier = Integer.MIN_VALUE;
        this.mCredentialPriority = Integer.MIN_VALUE;
        this.mSubscriptionCreationTimeInMillis = Long.MIN_VALUE;
        this.mSubscriptionExpirationTimeInMillis = Long.MIN_VALUE;
        this.mSubscriptionType = null;
        this.mUsageLimitUsageTimePeriodInMinutes = Long.MIN_VALUE;
        this.mUsageLimitStartTimeInMillis = Long.MIN_VALUE;
        this.mUsageLimitDataLimit = Long.MIN_VALUE;
        this.mUsageLimitTimeLimitInMinutes = Long.MIN_VALUE;
    }

    private static boolean isTrustRootCertListEquals(Map<String, byte[]> map, Map<String, byte[]> map2) {
        if (map == null || map2 == null) {
            return map == map2;
        }
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    private static void writeTrustRootCerts(Parcel parcel, Map<String, byte[]> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeByteArray(entry.getValue());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PasspointConfiguration)) {
            return false;
        }
        PasspointConfiguration passpointConfiguration = (PasspointConfiguration) obj;
        HomeSp homeSp = this.mHomeSp;
        if (homeSp != null ? homeSp.equals(passpointConfiguration.mHomeSp) : passpointConfiguration.mHomeSp == null) {
            Credential credential = this.mCredential;
            if (credential != null ? credential.equals(passpointConfiguration.mCredential) : passpointConfiguration.mCredential == null) {
                Policy policy = this.mPolicy;
                if (policy != null ? policy.equals(passpointConfiguration.mPolicy) : passpointConfiguration.mPolicy == null) {
                    UpdateParameter updateParameter = this.mSubscriptionUpdate;
                    if (updateParameter != null ? updateParameter.equals(passpointConfiguration.mSubscriptionUpdate) : passpointConfiguration.mSubscriptionUpdate == null) {
                        if (isTrustRootCertListEquals(this.mTrustRootCertList, passpointConfiguration.mTrustRootCertList) && this.mUpdateIdentifier == passpointConfiguration.mUpdateIdentifier && this.mCredentialPriority == passpointConfiguration.mCredentialPriority && this.mSubscriptionCreationTimeInMillis == passpointConfiguration.mSubscriptionCreationTimeInMillis && this.mSubscriptionExpirationTimeInMillis == passpointConfiguration.mSubscriptionExpirationTimeInMillis && TextUtils.equals(this.mSubscriptionType, passpointConfiguration.mSubscriptionType) && this.mUsageLimitUsageTimePeriodInMinutes == passpointConfiguration.mUsageLimitUsageTimePeriodInMinutes && this.mUsageLimitStartTimeInMillis == passpointConfiguration.mUsageLimitStartTimeInMillis && this.mUsageLimitDataLimit == passpointConfiguration.mUsageLimitDataLimit && this.mUsageLimitTimeLimitInMinutes == passpointConfiguration.mUsageLimitTimeLimitInMinutes) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public Credential getCredential() {
        return this.mCredential;
    }

    public int getCredentialPriority() {
        return this.mCredentialPriority;
    }

    public HomeSp getHomeSp() {
        return this.mHomeSp;
    }

    public Policy getPolicy() {
        return this.mPolicy;
    }

    public long getSubscriptionCreationTimeInMillis() {
        return this.mSubscriptionCreationTimeInMillis;
    }

    public long getSubscriptionExpirationTimeInMillis() {
        return this.mSubscriptionExpirationTimeInMillis;
    }

    public String getSubscriptionType() {
        return this.mSubscriptionType;
    }

    public UpdateParameter getSubscriptionUpdate() {
        return this.mSubscriptionUpdate;
    }

    public Map<String, byte[]> getTrustRootCertList() {
        return this.mTrustRootCertList;
    }

    public int getUpdateIdentifier() {
        return this.mUpdateIdentifier;
    }

    public long getUsageLimitDataLimit() {
        return this.mUsageLimitDataLimit;
    }

    public long getUsageLimitStartTimeInMillis() {
        return this.mUsageLimitStartTimeInMillis;
    }

    public long getUsageLimitTimeLimitInMinutes() {
        return this.mUsageLimitTimeLimitInMinutes;
    }

    public long getUsageLimitUsageTimePeriodInMinutes() {
        return this.mUsageLimitUsageTimePeriodInMinutes;
    }

    public int hashCode() {
        return Objects.hash(this.mHomeSp, this.mCredential, this.mPolicy, this.mSubscriptionUpdate, this.mTrustRootCertList, Integer.valueOf(this.mUpdateIdentifier), Integer.valueOf(this.mCredentialPriority), Long.valueOf(this.mSubscriptionCreationTimeInMillis), Long.valueOf(this.mSubscriptionExpirationTimeInMillis), Long.valueOf(this.mUsageLimitUsageTimePeriodInMinutes), Long.valueOf(this.mUsageLimitStartTimeInMillis), Long.valueOf(this.mUsageLimitDataLimit), Long.valueOf(this.mUsageLimitTimeLimitInMinutes));
    }

    public void setCredential(Credential credential) {
        this.mCredential = credential;
    }

    public void setCredentialPriority(int i2) {
        this.mCredentialPriority = i2;
    }

    public void setHomeSp(HomeSp homeSp) {
        this.mHomeSp = homeSp;
    }

    public void setPolicy(Policy policy) {
        this.mPolicy = policy;
    }

    public void setSubscriptionCreationTimeInMillis(long j2) {
        this.mSubscriptionCreationTimeInMillis = j2;
    }

    public void setSubscriptionExpirationTimeInMillis(long j2) {
        this.mSubscriptionExpirationTimeInMillis = j2;
    }

    public void setSubscriptionType(String str) {
        this.mSubscriptionType = str;
    }

    public void setSubscriptionUpdate(UpdateParameter updateParameter) {
        this.mSubscriptionUpdate = updateParameter;
    }

    public void setTrustRootCertList(Map<String, byte[]> map) {
        this.mTrustRootCertList = map;
    }

    public void setUpdateIdentifier(int i2) {
        this.mUpdateIdentifier = i2;
    }

    public void setUsageLimitDataLimit(long j2) {
        this.mUsageLimitDataLimit = j2;
    }

    public void setUsageLimitStartTimeInMillis(long j2) {
        this.mUsageLimitStartTimeInMillis = j2;
    }

    public void setUsageLimitTimeLimitInMinutes(long j2) {
        this.mUsageLimitTimeLimitInMinutes = j2;
    }

    public void setUsageLimitUsageTimePeriodInMinutes(long j2) {
        this.mUsageLimitUsageTimePeriodInMinutes = j2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UpdateIdentifier: ");
        sb.append(this.mUpdateIdentifier);
        sb.append("\nCredentialPriority: ");
        sb.append(this.mCredentialPriority);
        sb.append("\nSubscriptionCreationTime: ");
        sb.append(this.mSubscriptionCreationTimeInMillis != Long.MIN_VALUE ? new Date(this.mSubscriptionCreationTimeInMillis) : "Not specified");
        sb.append("\nSubscriptionExpirationTime: ");
        sb.append(this.mSubscriptionExpirationTimeInMillis != Long.MIN_VALUE ? new Date(this.mSubscriptionExpirationTimeInMillis) : "Not specified");
        sb.append("\nUsageLimitStartTime: ");
        sb.append(this.mUsageLimitStartTimeInMillis != Long.MIN_VALUE ? new Date(this.mUsageLimitStartTimeInMillis) : "Not specified");
        sb.append("\nUsageTimePeriod: ");
        sb.append(this.mUsageLimitUsageTimePeriodInMinutes);
        sb.append("\nUsageLimitDataLimit: ");
        sb.append(this.mUsageLimitDataLimit);
        sb.append("\nUsageLimitTimeLimit: ");
        sb.append(this.mUsageLimitTimeLimitInMinutes);
        sb.append("\n");
        if (this.mHomeSp != null) {
            sb.append("HomeSP Begin ---\n");
            sb.append(this.mHomeSp);
            sb.append("HomeSP End ---\n");
        }
        if (this.mCredential != null) {
            sb.append("Credential Begin ---\n");
            sb.append(this.mCredential);
            sb.append("Credential End ---\n");
        }
        if (this.mPolicy != null) {
            sb.append("Policy Begin ---\n");
            sb.append(this.mPolicy);
            sb.append("Policy End ---\n");
        }
        if (this.mSubscriptionUpdate != null) {
            sb.append("SubscriptionUpdate Begin ---\n");
            sb.append(this.mSubscriptionUpdate);
            sb.append("SubscriptionUpdate End ---\n");
        }
        if (this.mTrustRootCertList != null) {
            sb.append("TrustRootCertServers: ");
            sb.append(this.mTrustRootCertList.keySet());
            sb.append("\n");
        }
        return sb.toString();
    }

    public boolean validate() {
        Credential credential;
        HomeSp homeSp = this.mHomeSp;
        if (homeSp == null || !homeSp.validate() || (credential = this.mCredential) == null || !credential.validate()) {
            return false;
        }
        Policy policy = this.mPolicy;
        if (policy != null && !policy.validate()) {
            return false;
        }
        UpdateParameter updateParameter = this.mSubscriptionUpdate;
        if (updateParameter != null && !updateParameter.validate()) {
            return false;
        }
        Map<String, byte[]> map = this.mTrustRootCertList;
        if (map == null) {
            return true;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            String key = entry.getKey();
            byte[] value = entry.getValue();
            if (TextUtils.isEmpty(key)) {
                Log.d(TAG, "Empty URL");
                return false;
            }
            if (key.getBytes(StandardCharsets.UTF_8).length > 1023) {
                m.t(new StringBuilder("URL bytes exceeded the max: "), key.getBytes(StandardCharsets.UTF_8).length, TAG);
                return false;
            }
            if (value == null) {
                Log.d(TAG, "Fingerprint not specified");
                return false;
            }
            if (value.length != 32) {
                m.t(new StringBuilder("Incorrect size of trust root certificate SHA-256 fingerprint: "), value.length, TAG);
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mHomeSp, i2);
        parcel.writeParcelable(this.mCredential, i2);
        parcel.writeParcelable(this.mPolicy, i2);
        parcel.writeParcelable(this.mSubscriptionUpdate, i2);
        writeTrustRootCerts(parcel, this.mTrustRootCertList);
        parcel.writeInt(this.mUpdateIdentifier);
        parcel.writeInt(this.mCredentialPriority);
        parcel.writeLong(this.mSubscriptionCreationTimeInMillis);
        parcel.writeLong(this.mSubscriptionExpirationTimeInMillis);
        parcel.writeString(this.mSubscriptionType);
        parcel.writeLong(this.mUsageLimitUsageTimePeriodInMinutes);
        parcel.writeLong(this.mUsageLimitStartTimeInMillis);
        parcel.writeLong(this.mUsageLimitDataLimit);
        parcel.writeLong(this.mUsageLimitTimeLimitInMinutes);
    }

    public PasspointConfiguration(PasspointConfiguration passpointConfiguration) {
        this.mHomeSp = null;
        this.mCredential = null;
        this.mPolicy = null;
        this.mSubscriptionUpdate = null;
        this.mTrustRootCertList = null;
        this.mUpdateIdentifier = Integer.MIN_VALUE;
        this.mCredentialPriority = Integer.MIN_VALUE;
        this.mSubscriptionCreationTimeInMillis = Long.MIN_VALUE;
        this.mSubscriptionExpirationTimeInMillis = Long.MIN_VALUE;
        this.mSubscriptionType = null;
        this.mUsageLimitUsageTimePeriodInMinutes = Long.MIN_VALUE;
        this.mUsageLimitStartTimeInMillis = Long.MIN_VALUE;
        this.mUsageLimitDataLimit = Long.MIN_VALUE;
        this.mUsageLimitTimeLimitInMinutes = Long.MIN_VALUE;
        if (passpointConfiguration == null) {
            return;
        }
        if (passpointConfiguration.mHomeSp != null) {
            this.mHomeSp = new HomeSp(passpointConfiguration.mHomeSp);
        }
        if (passpointConfiguration.mCredential != null) {
            this.mCredential = new Credential(passpointConfiguration.mCredential);
        }
        if (passpointConfiguration.mPolicy != null) {
            this.mPolicy = new Policy(passpointConfiguration.mPolicy);
        }
        Map<String, byte[]> map = passpointConfiguration.mTrustRootCertList;
        if (map != null) {
            this.mTrustRootCertList = Collections.unmodifiableMap(map);
        }
        if (passpointConfiguration.mSubscriptionUpdate != null) {
            this.mSubscriptionUpdate = new UpdateParameter(passpointConfiguration.mSubscriptionUpdate);
        }
        this.mUpdateIdentifier = passpointConfiguration.mUpdateIdentifier;
        this.mCredentialPriority = passpointConfiguration.mCredentialPriority;
        this.mSubscriptionCreationTimeInMillis = passpointConfiguration.mSubscriptionCreationTimeInMillis;
        this.mSubscriptionExpirationTimeInMillis = passpointConfiguration.mSubscriptionExpirationTimeInMillis;
        this.mSubscriptionType = passpointConfiguration.mSubscriptionType;
        this.mUsageLimitDataLimit = passpointConfiguration.mUsageLimitDataLimit;
        this.mUsageLimitStartTimeInMillis = passpointConfiguration.mUsageLimitStartTimeInMillis;
        this.mUsageLimitTimeLimitInMinutes = passpointConfiguration.mUsageLimitTimeLimitInMinutes;
        this.mUsageLimitUsageTimePeriodInMinutes = passpointConfiguration.mUsageLimitUsageTimePeriodInMinutes;
    }
}
