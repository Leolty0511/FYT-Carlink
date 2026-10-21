package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class NetworkRequest implements Parcelable {
    public static final Parcelable.Creator<NetworkRequest> CREATOR = new Parcelable.Creator<NetworkRequest>() { // from class: android.net.NetworkRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkRequest createFromParcel(Parcel parcel) {
            return new NetworkRequest((NetworkCapabilities) parcel.readParcelable(null), parcel.readInt(), parcel.readInt(), Type.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NetworkRequest[] newArray(int i2) {
            return new NetworkRequest[i2];
        }
    };
    public final int legacyType;
    public final NetworkCapabilities networkCapabilities;
    public final int requestId;
    public final Type type;

    public static class Builder {
        private final NetworkCapabilities mNetworkCapabilities = new NetworkCapabilities();

        public Builder addCapability(int i2) {
            this.mNetworkCapabilities.addCapability(i2);
            return this;
        }

        public Builder addTransportType(int i2) {
            this.mNetworkCapabilities.addTransportType(i2);
            return this;
        }

        public NetworkRequest build() {
            NetworkCapabilities networkCapabilities = new NetworkCapabilities(this.mNetworkCapabilities);
            networkCapabilities.maybeMarkCapabilitiesRestricted();
            return new NetworkRequest(networkCapabilities, -1, 0, Type.NONE);
        }

        public Builder clearCapabilities() {
            this.mNetworkCapabilities.clearAll();
            return this;
        }

        public Builder removeCapability(int i2) {
            this.mNetworkCapabilities.removeCapability(i2);
            return this;
        }

        public Builder removeTransportType(int i2) {
            this.mNetworkCapabilities.removeTransportType(i2);
            return this;
        }

        public Builder setCapabilities(NetworkCapabilities networkCapabilities) {
            this.mNetworkCapabilities.clearAll();
            this.mNetworkCapabilities.combineCapabilities(networkCapabilities);
            return this;
        }

        public Builder setLinkDownstreamBandwidthKbps(int i2) {
            this.mNetworkCapabilities.setLinkDownstreamBandwidthKbps(i2);
            return this;
        }

        public Builder setLinkUpstreamBandwidthKbps(int i2) {
            this.mNetworkCapabilities.setLinkUpstreamBandwidthKbps(i2);
            return this;
        }

        public Builder setNetworkSpecifier(String str) {
            return setNetworkSpecifier(TextUtils.isEmpty(str) ? null : new StringNetworkSpecifier(str));
        }

        public Builder setSignalStrength(int i2) {
            this.mNetworkCapabilities.setSignalStrength(i2);
            return this;
        }

        public Builder setNetworkSpecifier(NetworkSpecifier networkSpecifier) {
            MatchAllNetworkSpecifier.checkNotMatchAllNetworkSpecifier(networkSpecifier);
            this.mNetworkCapabilities.setNetworkSpecifier(networkSpecifier);
            return this;
        }
    }

    public enum Type {
        NONE,
        LISTEN,
        TRACK_DEFAULT,
        REQUEST,
        BACKGROUND_REQUEST
    }

    public NetworkRequest(NetworkCapabilities networkCapabilities, int i2, int i3, Type type) {
        networkCapabilities.getClass();
        this.requestId = i3;
        this.networkCapabilities = networkCapabilities;
        this.legacyType = i2;
        this.type = type;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NetworkRequest)) {
            return false;
        }
        NetworkRequest networkRequest = (NetworkRequest) obj;
        return networkRequest.legacyType == this.legacyType && networkRequest.requestId == this.requestId && networkRequest.type == this.type && Objects.equals(networkRequest.networkCapabilities, this.networkCapabilities);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.requestId), Integer.valueOf(this.legacyType), this.networkCapabilities, this.type);
    }

    public boolean isBackgroundRequest() {
        return this.type == Type.BACKGROUND_REQUEST;
    }

    public boolean isForegroundRequest() {
        Type type = this.type;
        return type == Type.TRACK_DEFAULT || type == Type.REQUEST;
    }

    public boolean isListen() {
        return this.type == Type.LISTEN;
    }

    public boolean isRequest() {
        return isForegroundRequest() || isBackgroundRequest();
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("NetworkRequest [ ");
        sb.append(this.type);
        sb.append(" id=");
        sb.append(this.requestId);
        if (this.legacyType != -1) {
            str = ", legacyType=" + this.legacyType;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(", ");
        sb.append(this.networkCapabilities.toString());
        sb.append(" ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.networkCapabilities, i2);
        parcel.writeInt(this.legacyType);
        parcel.writeInt(this.requestId);
        parcel.writeString(this.type.name());
    }

    public NetworkRequest(NetworkRequest networkRequest) {
        this.networkCapabilities = new NetworkCapabilities(networkRequest.networkCapabilities);
        this.requestId = networkRequest.requestId;
        this.legacyType = networkRequest.legacyType;
        this.type = networkRequest.type;
    }
}
