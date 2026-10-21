package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.EnumMap;

/* JADX INFO: loaded from: classes.dex */
public class NetworkInfo implements Parcelable {
    public static final Parcelable.Creator<NetworkInfo> CREATOR;
    private static final EnumMap<DetailedState, State> stateMap;
    private DetailedState mDetailedState;
    private String mExtraInfo;
    private boolean mIsAvailable;
    private boolean mIsConnectedToProvisioningNetwork;
    private boolean mIsFailover;
    private boolean mIsRoaming;
    private int mNetworkType;
    private String mReason;
    private State mState;
    private int mSubtype;
    private String mSubtypeName;
    private String mTypeName;

    public enum DetailedState {
        IDLE,
        SCANNING,
        CONNECTING,
        AUTHENTICATING,
        OBTAINING_IPADDR,
        CONNECTED,
        SUSPENDED,
        DISCONNECTING,
        DISCONNECTED,
        FAILED,
        BLOCKED,
        VERIFYING_POOR_LINK,
        CAPTIVE_PORTAL_CHECK
    }

    public enum State {
        CONNECTING,
        CONNECTED,
        SUSPENDED,
        DISCONNECTING,
        DISCONNECTED,
        UNKNOWN
    }

    static {
        EnumMap<DetailedState, State> enumMap = new EnumMap<>(DetailedState.class);
        stateMap = enumMap;
        DetailedState detailedState = DetailedState.IDLE;
        State state = State.DISCONNECTED;
        enumMap.put(detailedState, state);
        enumMap.put(DetailedState.SCANNING, state);
        DetailedState detailedState2 = DetailedState.CONNECTING;
        State state2 = State.CONNECTING;
        enumMap.put(detailedState2, state2);
        enumMap.put(DetailedState.AUTHENTICATING, state2);
        enumMap.put(DetailedState.OBTAINING_IPADDR, state2);
        enumMap.put(DetailedState.VERIFYING_POOR_LINK, state2);
        enumMap.put(DetailedState.CAPTIVE_PORTAL_CHECK, state2);
        enumMap.put(DetailedState.CONNECTED, State.CONNECTED);
        enumMap.put(DetailedState.SUSPENDED, State.SUSPENDED);
        enumMap.put(DetailedState.DISCONNECTING, State.DISCONNECTING);
        enumMap.put(DetailedState.DISCONNECTED, state);
        enumMap.put(DetailedState.FAILED, state);
        enumMap.put(DetailedState.BLOCKED, state);
        CREATOR = new Parcelable.Creator<NetworkInfo>() { // from class: android.net.NetworkInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NetworkInfo createFromParcel(Parcel parcel) {
                NetworkInfo networkInfo = new NetworkInfo(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                networkInfo.mState = State.valueOf(parcel.readString());
                networkInfo.mDetailedState = DetailedState.valueOf(parcel.readString());
                networkInfo.mIsFailover = parcel.readInt() != 0;
                networkInfo.mIsAvailable = parcel.readInt() != 0;
                networkInfo.mIsRoaming = parcel.readInt() != 0;
                networkInfo.mIsConnectedToProvisioningNetwork = parcel.readInt() != 0;
                networkInfo.mReason = parcel.readString();
                networkInfo.mExtraInfo = parcel.readString();
                return networkInfo;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NetworkInfo[] newArray(int i2) {
                return new NetworkInfo[i2];
            }
        };
    }

    public NetworkInfo(int i2) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DetailedState getDetailedState() {
        DetailedState detailedState;
        synchronized (this) {
            detailedState = this.mDetailedState;
        }
        return detailedState;
    }

    public String getExtraInfo() {
        String str;
        synchronized (this) {
            str = this.mExtraInfo;
        }
        return str;
    }

    public String getReason() {
        String str;
        synchronized (this) {
            str = this.mReason;
        }
        return str;
    }

    public State getState() {
        State state;
        synchronized (this) {
            state = this.mState;
        }
        return state;
    }

    public int getSubtype() {
        int i2;
        synchronized (this) {
            i2 = this.mSubtype;
        }
        return i2;
    }

    public String getSubtypeName() {
        String str;
        synchronized (this) {
            str = this.mSubtypeName;
        }
        return str;
    }

    public int getType() {
        int i2;
        synchronized (this) {
            i2 = this.mNetworkType;
        }
        return i2;
    }

    public String getTypeName() {
        String str;
        synchronized (this) {
            str = this.mTypeName;
        }
        return str;
    }

    public boolean isAvailable() {
        boolean z2;
        synchronized (this) {
            z2 = this.mIsAvailable;
        }
        return z2;
    }

    public boolean isConnected() {
        boolean z2;
        synchronized (this) {
            z2 = this.mState == State.CONNECTED;
        }
        return z2;
    }

    public boolean isConnectedOrConnecting() {
        boolean z2;
        synchronized (this) {
            State state = this.mState;
            z2 = state == State.CONNECTED || state == State.CONNECTING;
        }
        return z2;
    }

    public boolean isConnectedToProvisioningNetwork() {
        boolean z2;
        synchronized (this) {
            z2 = this.mIsConnectedToProvisioningNetwork;
        }
        return z2;
    }

    public boolean isFailover() {
        boolean z2;
        synchronized (this) {
            z2 = this.mIsFailover;
        }
        return z2;
    }

    public boolean isRoaming() {
        boolean z2;
        synchronized (this) {
            z2 = this.mIsRoaming;
        }
        return z2;
    }

    public void setDetailedState(DetailedState detailedState, String str, String str2) {
        synchronized (this) {
            this.mDetailedState = detailedState;
            this.mState = stateMap.get(detailedState);
            this.mReason = str;
            this.mExtraInfo = str2;
        }
    }

    public void setExtraInfo(String str) {
        synchronized (this) {
            this.mExtraInfo = str;
        }
    }

    public void setFailover(boolean z2) {
        synchronized (this) {
            this.mIsFailover = z2;
        }
    }

    public void setIsAvailable(boolean z2) {
        synchronized (this) {
            this.mIsAvailable = z2;
        }
    }

    public void setIsConnectedToProvisioningNetwork(boolean z2) {
        synchronized (this) {
            this.mIsConnectedToProvisioningNetwork = z2;
        }
    }

    public void setRoaming(boolean z2) {
        synchronized (this) {
            this.mIsRoaming = z2;
        }
    }

    public void setSubtype(int i2, String str) {
        synchronized (this) {
            this.mSubtype = i2;
            this.mSubtypeName = str;
        }
    }

    public String toString() {
        String string;
        synchronized (this) {
            StringBuilder sb = new StringBuilder("NetworkInfo: ");
            sb.append("type: ");
            sb.append(getTypeName());
            sb.append("[");
            sb.append(getSubtypeName());
            sb.append("], state: ");
            sb.append(this.mState);
            sb.append("/");
            sb.append(this.mDetailedState);
            sb.append(", reason: ");
            String str = this.mReason;
            if (str == null) {
                str = "(unspecified)";
            }
            sb.append(str);
            sb.append(", extra: ");
            String str2 = this.mExtraInfo;
            if (str2 == null) {
                str2 = "(none)";
            }
            sb.append(str2);
            sb.append(", roaming: ");
            sb.append(this.mIsRoaming);
            sb.append(", failover: ");
            sb.append(this.mIsFailover);
            sb.append(", isAvailable: ");
            sb.append(this.mIsAvailable);
            sb.append(", isConnectedToProvisioningNetwork: ");
            sb.append(this.mIsConnectedToProvisioningNetwork);
            string = sb.toString();
        }
        return string;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        synchronized (this) {
            parcel.writeInt(this.mNetworkType);
            parcel.writeInt(this.mSubtype);
            parcel.writeString(this.mTypeName);
            parcel.writeString(this.mSubtypeName);
            parcel.writeString(this.mState.name());
            parcel.writeString(this.mDetailedState.name());
            int i3 = 1;
            parcel.writeInt(this.mIsFailover ? 1 : 0);
            parcel.writeInt(this.mIsAvailable ? 1 : 0);
            parcel.writeInt(this.mIsRoaming ? 1 : 0);
            if (!this.mIsConnectedToProvisioningNetwork) {
                i3 = 0;
            }
            parcel.writeInt(i3);
            parcel.writeString(this.mReason);
            parcel.writeString(this.mExtraInfo);
        }
    }

    public NetworkInfo(int i2, int i3, String str, String str2) {
        if (!ConnectivityManager.isNetworkTypeValid(i2)) {
            throw new IllegalArgumentException("Invalid network type: " + i2);
        }
        this.mNetworkType = i2;
        this.mSubtype = i3;
        this.mTypeName = str;
        this.mSubtypeName = str2;
        setDetailedState(DetailedState.IDLE, null, null);
        this.mState = State.UNKNOWN;
        this.mIsAvailable = false;
        this.mIsRoaming = false;
        this.mIsConnectedToProvisioningNetwork = false;
    }

    public NetworkInfo(NetworkInfo networkInfo) {
        if (networkInfo != null) {
            this.mNetworkType = networkInfo.mNetworkType;
            this.mSubtype = networkInfo.mSubtype;
            this.mTypeName = networkInfo.mTypeName;
            this.mSubtypeName = networkInfo.mSubtypeName;
            this.mState = networkInfo.mState;
            this.mDetailedState = networkInfo.mDetailedState;
            this.mReason = networkInfo.mReason;
            this.mExtraInfo = networkInfo.mExtraInfo;
            this.mIsFailover = networkInfo.mIsFailover;
            this.mIsRoaming = networkInfo.mIsRoaming;
            this.mIsAvailable = networkInfo.mIsAvailable;
            this.mIsConnectedToProvisioningNetwork = networkInfo.mIsConnectedToProvisioningNetwork;
        }
    }
}
