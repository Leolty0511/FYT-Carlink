package android.net;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.telephony.IccCardConstants;
import com.android.internal.util.BitUtils;
import com.android.internal.util.Preconditions;
import java.util.Objects;
import java.util.StringJoiner;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkCapabilities implements Parcelable {
    private static final long DEFAULT_CAPABILITIES = 57344;
    private static final int MAX_NET_CAPABILITY = 19;
    public static final int MAX_TRANSPORT = 6;
    private static final int MIN_NET_CAPABILITY = 0;
    public static final int MIN_TRANSPORT = 0;
    private static final long MUTABLE_CAPABILITIES = 475136;
    public static final int NET_CAPABILITY_CAPTIVE_PORTAL = 17;
    public static final int NET_CAPABILITY_CBS = 5;
    public static final int NET_CAPABILITY_DUN = 2;
    public static final int NET_CAPABILITY_EIMS = 10;
    public static final int NET_CAPABILITY_FOREGROUND = 18;
    public static final int NET_CAPABILITY_FOTA = 3;
    public static final int NET_CAPABILITY_IA = 7;
    public static final int NET_CAPABILITY_IMS = 4;
    public static final int NET_CAPABILITY_INTERNET = 12;
    public static final int NET_CAPABILITY_MMS = 0;
    public static final int NET_CAPABILITY_NOT_METERED = 11;
    public static final int NET_CAPABILITY_NOT_RESTRICTED = 13;
    public static final int NET_CAPABILITY_NOT_VPN = 15;
    public static final int NET_CAPABILITY_OPEN = 19;
    public static final int NET_CAPABILITY_RCS = 8;
    public static final int NET_CAPABILITY_SUPL = 1;
    public static final int NET_CAPABILITY_TRUSTED = 14;
    public static final int NET_CAPABILITY_VALIDATED = 16;
    public static final int NET_CAPABILITY_WIFI_P2P = 6;
    public static final int NET_CAPABILITY_XCAP = 9;
    private static final long NON_REQUESTABLE_CAPABILITIES = 458752;
    static final long RESTRICTED_CAPABILITIES = 1980;
    public static final int SIGNAL_STRENGTH_UNSPECIFIED = Integer.MIN_VALUE;
    private static final String TAG = "NetworkCapabilities";
    public static final int TRANSPORT_BLUETOOTH = 2;
    public static final int TRANSPORT_CELLULAR = 0;
    public static final int TRANSPORT_ETHERNET = 3;
    public static final int TRANSPORT_LOWPAN = 6;
    public static final int TRANSPORT_VPN = 4;
    public static final int TRANSPORT_WIFI = 1;
    public static final int TRANSPORT_WIFI_AWARE = 5;
    static final long UNRESTRICTED_CAPABILITIES = 4163;
    private int mLinkDownBandwidthKbps;
    private int mLinkUpBandwidthKbps;
    private long mNetworkCapabilities;
    private NetworkSpecifier mNetworkSpecifier;
    private int mSignalStrength;
    private long mTransportTypes;
    private static final String[] TRANSPORT_NAMES = {"CELLULAR", "WIFI", "BLUETOOTH", "ETHERNET", "VPN", "WIFI_AWARE", "LOWPAN"};
    public static final Parcelable.Creator<NetworkCapabilities> CREATOR = new Parcelable.Creator<NetworkCapabilities>() { // from class: android.net.NetworkCapabilities.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkCapabilities createFromParcel(Parcel parcel) {
            NetworkCapabilities networkCapabilities = new NetworkCapabilities();
            networkCapabilities.mNetworkCapabilities = parcel.readLong();
            networkCapabilities.mTransportTypes = parcel.readLong();
            networkCapabilities.mLinkUpBandwidthKbps = parcel.readInt();
            networkCapabilities.mLinkDownBandwidthKbps = parcel.readInt();
            networkCapabilities.mNetworkSpecifier = (NetworkSpecifier) parcel.readParcelable(null);
            networkCapabilities.mSignalStrength = parcel.readInt();
            return networkCapabilities;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkCapabilities[] newArray(int i2) {
            return new NetworkCapabilities[i2];
        }
    };

    public NetworkCapabilities() {
        this.mNetworkSpecifier = null;
        clearAll();
        this.mNetworkCapabilities = DEFAULT_CAPABILITIES;
    }

    public static String capabilityNameOf(int i2) {
        switch (i2) {
            case 0:
                return "MMS";
            case 1:
                return "SUPL";
            case 2:
                return "DUN";
            case 3:
                return "FOTA";
            case 4:
                return "IMS";
            case 5:
                return "CBS";
            case 6:
                return "WIFI_P2P";
            case 7:
                return "IA";
            case 8:
                return "RCS";
            case 9:
                return "XCAP";
            case 10:
                return "EIMS";
            case 11:
                return "NOT_METERED";
            case 12:
                return "INTERNET";
            case 13:
                return "NOT_RESTRICTED";
            case 14:
                return "TRUSTED";
            case 15:
                return "NOT_VPN";
            case 16:
                return "VALIDATED";
            case 17:
                return "CAPTIVE_PORTAL";
            case 18:
                return "FOREGROUND";
            case 19:
                return "OPEN";
            default:
                return Integer.toString(i2);
        }
    }

    public static String capabilityNamesOf(int[] iArr) {
        android.animation.b.D();
        StringJoiner stringJoinerJ = android.animation.b.j();
        if (iArr != null) {
            for (int i2 : iArr) {
                stringJoinerJ.add(capabilityNameOf(i2));
            }
        }
        return stringJoinerJ.toString();
    }

    private static void checkValidTransportType(int i2) {
        Preconditions.checkArgument(isValidTransport(i2), "Invalid TransportType " + i2);
    }

    private void combineLinkBandwidths(NetworkCapabilities networkCapabilities) {
        this.mLinkUpBandwidthKbps = Math.max(this.mLinkUpBandwidthKbps, networkCapabilities.mLinkUpBandwidthKbps);
        this.mLinkDownBandwidthKbps = Math.max(this.mLinkDownBandwidthKbps, networkCapabilities.mLinkDownBandwidthKbps);
    }

    private void combineNetCapabilities(NetworkCapabilities networkCapabilities) {
        this.mNetworkCapabilities |= networkCapabilities.mNetworkCapabilities;
    }

    private void combineSignalStrength(NetworkCapabilities networkCapabilities) {
        this.mSignalStrength = Math.max(this.mSignalStrength, networkCapabilities.mSignalStrength);
    }

    private void combineSpecifiers(NetworkCapabilities networkCapabilities) {
        NetworkSpecifier networkSpecifier = this.mNetworkSpecifier;
        if (networkSpecifier != null && !networkSpecifier.equals(networkCapabilities.mNetworkSpecifier)) {
            throw new IllegalStateException("Can't combine two networkSpecifiers");
        }
        setNetworkSpecifier(networkCapabilities.mNetworkSpecifier);
    }

    private void combineTransportTypes(NetworkCapabilities networkCapabilities) {
        this.mTransportTypes |= networkCapabilities.mTransportTypes;
    }

    private boolean equalsLinkBandwidths(NetworkCapabilities networkCapabilities) {
        return this.mLinkUpBandwidthKbps == networkCapabilities.mLinkUpBandwidthKbps && this.mLinkDownBandwidthKbps == networkCapabilities.mLinkDownBandwidthKbps;
    }

    private boolean equalsNetCapabilitiesRequestable(NetworkCapabilities networkCapabilities) {
        return (this.mNetworkCapabilities & (-458753)) == ((-458753) & networkCapabilities.mNetworkCapabilities);
    }

    private boolean equalsSignalStrength(NetworkCapabilities networkCapabilities) {
        return this.mSignalStrength == networkCapabilities.mSignalStrength;
    }

    private boolean equalsSpecifier(NetworkCapabilities networkCapabilities) {
        return Objects.equals(this.mNetworkSpecifier, networkCapabilities.mNetworkSpecifier);
    }

    public static boolean isValidTransport(int i2) {
        return i2 >= 0 && i2 <= 6;
    }

    private boolean satisfiedByLinkBandwidths(NetworkCapabilities networkCapabilities) {
        return this.mLinkUpBandwidthKbps <= networkCapabilities.mLinkUpBandwidthKbps && this.mLinkDownBandwidthKbps <= networkCapabilities.mLinkDownBandwidthKbps;
    }

    private boolean satisfiedByNetCapabilities(NetworkCapabilities networkCapabilities, boolean z2) {
        long j2 = this.mNetworkCapabilities;
        if (z2) {
            j2 &= -475137;
        }
        return (networkCapabilities.mNetworkCapabilities & j2) == j2;
    }

    private boolean satisfiedByNetworkCapabilities(NetworkCapabilities networkCapabilities, boolean z2) {
        return networkCapabilities != null && satisfiedByNetCapabilities(networkCapabilities, z2) && satisfiedByTransportTypes(networkCapabilities) && (z2 || satisfiedByLinkBandwidths(networkCapabilities)) && satisfiedBySpecifier(networkCapabilities) && (z2 || satisfiedBySignalStrength(networkCapabilities));
    }

    private boolean satisfiedBySignalStrength(NetworkCapabilities networkCapabilities) {
        return this.mSignalStrength <= networkCapabilities.mSignalStrength;
    }

    private boolean satisfiedBySpecifier(NetworkCapabilities networkCapabilities) {
        NetworkSpecifier networkSpecifier = this.mNetworkSpecifier;
        return networkSpecifier == null || networkSpecifier.satisfiedBy(networkCapabilities.mNetworkSpecifier) || (networkCapabilities.mNetworkSpecifier instanceof MatchAllNetworkSpecifier);
    }

    private boolean satisfiedByTransportTypes(NetworkCapabilities networkCapabilities) {
        long j2 = this.mTransportTypes;
        return j2 == 0 || (j2 & networkCapabilities.mTransportTypes) != 0;
    }

    public static String transportNameOf(int i2) {
        return !isValidTransport(i2) ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : TRANSPORT_NAMES[i2];
    }

    public static String transportNamesOf(int[] iArr) {
        android.animation.b.D();
        StringJoiner stringJoinerJ = android.animation.b.j();
        if (iArr != null) {
            for (int i2 : iArr) {
                stringJoinerJ.add(transportNameOf(i2));
            }
        }
        return stringJoinerJ.toString();
    }

    public NetworkCapabilities addCapability(int i2) {
        if (i2 < 0 || i2 > 19) {
            throw new IllegalArgumentException("NetworkCapability out of range");
        }
        this.mNetworkCapabilities |= (long) (1 << i2);
        return this;
    }

    public NetworkCapabilities addTransportType(int i2) {
        checkValidTransportType(i2);
        this.mTransportTypes |= (long) (1 << i2);
        setNetworkSpecifier(this.mNetworkSpecifier);
        return this;
    }

    public void clearAll() {
        this.mTransportTypes = 0L;
        this.mNetworkCapabilities = 0L;
        this.mLinkDownBandwidthKbps = 0;
        this.mLinkUpBandwidthKbps = 0;
        this.mNetworkSpecifier = null;
        this.mSignalStrength = Integer.MIN_VALUE;
    }

    public void combineCapabilities(NetworkCapabilities networkCapabilities) {
        combineNetCapabilities(networkCapabilities);
        combineTransportTypes(networkCapabilities);
        combineLinkBandwidths(networkCapabilities);
        combineSpecifiers(networkCapabilities);
        combineSignalStrength(networkCapabilities);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String describeFirstNonRequestableCapability() {
        if (hasCapability(16)) {
            return "NET_CAPABILITY_VALIDATED";
        }
        if (hasCapability(17)) {
            return "NET_CAPABILITY_CAPTIVE_PORTAL";
        }
        if (hasCapability(18)) {
            return "NET_CAPABILITY_FOREGROUND";
        }
        if ((this.mNetworkCapabilities & NON_REQUESTABLE_CAPABILITIES) != 0) {
            return "unknown non-requestable capabilities " + Long.toHexString(this.mNetworkCapabilities);
        }
        if (this.mLinkUpBandwidthKbps != 0 || this.mLinkDownBandwidthKbps != 0) {
            return "link bandwidth";
        }
        if (hasSignalStrength()) {
            return "signalStrength";
        }
        return null;
    }

    public String describeImmutableDifferences(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return "other NetworkCapabilities was null";
        }
        android.animation.b.D();
        StringJoiner stringJoinerC = android.animation.b.C();
        long j2 = this.mNetworkCapabilities & (-477189);
        long j3 = (-477189) & networkCapabilities.mNetworkCapabilities;
        if (j2 != j3) {
            stringJoinerC.add(String.format("immutable capabilities changed: %s -> %s", capabilityNamesOf(BitUtils.unpackBits(j2)), capabilityNamesOf(BitUtils.unpackBits(j3))));
        }
        if (!equalsSpecifier(networkCapabilities)) {
            stringJoinerC.add(String.format("specifier changed: %s -> %s", getNetworkSpecifier(), networkCapabilities.getNetworkSpecifier()));
        }
        if (!equalsTransportTypes(networkCapabilities)) {
            stringJoinerC.add(String.format("transports changed: %s -> %s", transportNamesOf(getTransportTypes()), transportNamesOf(networkCapabilities.getTransportTypes())));
        }
        return stringJoinerC.toString();
    }

    public boolean equalRequestableCapabilities(NetworkCapabilities networkCapabilities) {
        return networkCapabilities != null && equalsNetCapabilitiesRequestable(networkCapabilities) && equalsTransportTypes(networkCapabilities) && equalsSpecifier(networkCapabilities);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NetworkCapabilities)) {
            return false;
        }
        NetworkCapabilities networkCapabilities = (NetworkCapabilities) obj;
        return equalsNetCapabilities(networkCapabilities) && equalsTransportTypes(networkCapabilities) && equalsLinkBandwidths(networkCapabilities) && equalsSignalStrength(networkCapabilities) && equalsSpecifier(networkCapabilities);
    }

    public boolean equalsNetCapabilities(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.mNetworkCapabilities == this.mNetworkCapabilities;
    }

    public boolean equalsTransportTypes(NetworkCapabilities networkCapabilities) {
        return networkCapabilities.mTransportTypes == this.mTransportTypes;
    }

    public int[] getCapabilities() {
        return BitUtils.unpackBits(this.mNetworkCapabilities);
    }

    public int getLinkDownstreamBandwidthKbps() {
        return this.mLinkDownBandwidthKbps;
    }

    public int getLinkUpstreamBandwidthKbps() {
        return this.mLinkUpBandwidthKbps;
    }

    public NetworkSpecifier getNetworkSpecifier() {
        return this.mNetworkSpecifier;
    }

    public int getSignalStrength() {
        return this.mSignalStrength;
    }

    public int[] getTransportTypes() {
        return BitUtils.unpackBits(this.mTransportTypes);
    }

    public boolean hasCapability(int i2) {
        return i2 >= 0 && i2 <= 19 && (this.mNetworkCapabilities & ((long) (1 << i2))) != 0;
    }

    public boolean hasSignalStrength() {
        return this.mSignalStrength > Integer.MIN_VALUE;
    }

    public boolean hasTransport(int i2) {
        return isValidTransport(i2) && (this.mTransportTypes & ((long) (1 << i2))) != 0;
    }

    public int hashCode() {
        long j2 = this.mNetworkCapabilities;
        long j3 = this.mTransportTypes;
        int i2 = ((int) (j3 & (-1))) * 5;
        return (this.mSignalStrength * 19) + (Objects.hashCode(this.mNetworkSpecifier) * 17) + (this.mLinkDownBandwidthKbps * 13) + (this.mLinkUpBandwidthKbps * 11) + (((int) (j3 >> 32)) * 7) + i2 + (((int) (j2 >> 32)) * 3) + ((int) (j2 & (-1)));
    }

    public void maybeMarkCapabilitiesRestricted() {
        long j2 = this.mNetworkCapabilities;
        boolean z2 = (UNRESTRICTED_CAPABILITIES & j2) != 0;
        if (!((j2 & RESTRICTED_CAPABILITIES) != 0) || z2) {
            return;
        }
        removeCapability(13);
    }

    public NetworkCapabilities removeCapability(int i2) {
        if (i2 < 0 || i2 > 19) {
            throw new IllegalArgumentException("NetworkCapability out of range");
        }
        this.mNetworkCapabilities &= (long) (~(1 << i2));
        return this;
    }

    public NetworkCapabilities removeTransportType(int i2) {
        checkValidTransportType(i2);
        this.mTransportTypes &= (long) (~(1 << i2));
        setNetworkSpecifier(this.mNetworkSpecifier);
        return this;
    }

    public boolean satisfiedByImmutableNetworkCapabilities(NetworkCapabilities networkCapabilities) {
        return satisfiedByNetworkCapabilities(networkCapabilities, true);
    }

    public void setLinkDownstreamBandwidthKbps(int i2) {
        this.mLinkDownBandwidthKbps = i2;
    }

    public void setLinkUpstreamBandwidthKbps(int i2) {
        this.mLinkUpBandwidthKbps = i2;
    }

    public NetworkCapabilities setNetworkSpecifier(NetworkSpecifier networkSpecifier) {
        if (networkSpecifier != null && Long.bitCount(this.mTransportTypes) != 1) {
            throw new IllegalStateException("Must have a single transport specified to use setNetworkSpecifier");
        }
        this.mNetworkSpecifier = networkSpecifier;
        return this;
    }

    public void setSignalStrength(int i2) {
        this.mSignalStrength = i2;
    }

    public String toString() {
        String str;
        String str2;
        int[] transportTypes = getTransportTypes();
        String str3 = "";
        if (transportTypes.length > 0) {
            str = " Transports: " + transportNamesOf(transportTypes);
        } else {
            str = "";
        }
        int[] capabilities = getCapabilities();
        String string = capabilities.length > 0 ? " Capabilities: " : "";
        int i2 = 0;
        while (i2 < capabilities.length) {
            StringBuilder sbR = c.r(string);
            sbR.append(capabilityNameOf(capabilities[i2]));
            string = sbR.toString();
            i2++;
            if (i2 < capabilities.length) {
                string = c.D(string, "&");
            }
        }
        String strM = this.mLinkUpBandwidthKbps > 0 ? c.m(new StringBuilder(" LinkUpBandwidth>="), this.mLinkUpBandwidthKbps, "Kbps") : "";
        String strM2 = this.mLinkDownBandwidthKbps > 0 ? c.m(new StringBuilder(" LinkDnBandwidth>="), this.mLinkDownBandwidthKbps, "Kbps") : "";
        if (this.mNetworkSpecifier == null) {
            str2 = "";
        } else {
            str2 = " Specifier: <" + this.mNetworkSpecifier + ">";
        }
        if (hasSignalStrength()) {
            str3 = " SignalStrength: " + this.mSignalStrength;
        }
        StringBuilder sbW = c.w("[", str, string, strM, strM2);
        sbW.append(str2);
        sbW.append(str3);
        sbW.append("]");
        return sbW.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mNetworkCapabilities);
        parcel.writeLong(this.mTransportTypes);
        parcel.writeInt(this.mLinkUpBandwidthKbps);
        parcel.writeInt(this.mLinkDownBandwidthKbps);
        parcel.writeParcelable((Parcelable) this.mNetworkSpecifier, i2);
        parcel.writeInt(this.mSignalStrength);
    }

    public NetworkCapabilities(NetworkCapabilities networkCapabilities) {
        this.mNetworkSpecifier = null;
        if (networkCapabilities != null) {
            this.mNetworkCapabilities = networkCapabilities.mNetworkCapabilities;
            this.mTransportTypes = networkCapabilities.mTransportTypes;
            this.mLinkUpBandwidthKbps = networkCapabilities.mLinkUpBandwidthKbps;
            this.mLinkDownBandwidthKbps = networkCapabilities.mLinkDownBandwidthKbps;
            this.mNetworkSpecifier = networkCapabilities.mNetworkSpecifier;
            this.mSignalStrength = networkCapabilities.mSignalStrength;
        }
    }

    public boolean satisfiedByNetworkCapabilities(NetworkCapabilities networkCapabilities) {
        return satisfiedByNetworkCapabilities(networkCapabilities, false);
    }
}
