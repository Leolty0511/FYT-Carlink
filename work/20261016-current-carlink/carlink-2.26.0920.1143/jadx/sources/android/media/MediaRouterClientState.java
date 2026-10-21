package android.media;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class MediaRouterClientState implements Parcelable {
    public static final Parcelable.Creator<MediaRouterClientState> CREATOR = new Parcelable.Creator<MediaRouterClientState>() { // from class: android.media.MediaRouterClientState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaRouterClientState createFromParcel(Parcel parcel) {
            return new MediaRouterClientState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaRouterClientState[] newArray(int i2) {
            return new MediaRouterClientState[i2];
        }
    };
    public final ArrayList<RouteInfo> routes;

    public MediaRouterClientState() {
        this.routes = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RouteInfo getRoute(String str) {
        int size = this.routes.size();
        for (int i2 = 0; i2 < size; i2++) {
            RouteInfo routeInfo = this.routes.get(i2);
            if (routeInfo.id.equals(str)) {
                return routeInfo;
            }
        }
        return null;
    }

    public String toString() {
        return "MediaRouterClientState{ routes=" + this.routes.toString() + " }";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedList(this.routes);
    }

    public MediaRouterClientState(Parcel parcel) {
        this.routes = parcel.createTypedArrayList(RouteInfo.CREATOR);
    }

    public static final class RouteInfo implements Parcelable {
        public static final Parcelable.Creator<RouteInfo> CREATOR = new Parcelable.Creator<RouteInfo>() { // from class: android.media.MediaRouterClientState.RouteInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RouteInfo createFromParcel(Parcel parcel) {
                return new RouteInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RouteInfo[] newArray(int i2) {
                return new RouteInfo[i2];
            }
        };
        public String description;
        public int deviceType;
        public boolean enabled;
        public String id;
        public String name;
        public int playbackStream;
        public int playbackType;
        public int presentationDisplayId;
        public int statusCode;
        public int supportedTypes;
        public int volume;
        public int volumeHandling;
        public int volumeMax;

        public RouteInfo(String str) {
            this.id = str;
            this.enabled = true;
            this.statusCode = 0;
            this.playbackType = 1;
            this.playbackStream = -1;
            this.volumeHandling = 0;
            this.presentationDisplayId = -1;
            this.deviceType = 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("RouteInfo{ id=");
            sb.append(this.id);
            sb.append(", name=");
            sb.append(this.name);
            sb.append(", description=");
            sb.append(this.description);
            sb.append(", supportedTypes=0x");
            c.x(this.supportedTypes, sb, ", enabled=");
            sb.append(this.enabled);
            sb.append(", statusCode=");
            sb.append(this.statusCode);
            sb.append(", playbackType=");
            sb.append(this.playbackType);
            sb.append(", playbackStream=");
            sb.append(this.playbackStream);
            sb.append(", volume=");
            sb.append(this.volume);
            sb.append(", volumeMax=");
            sb.append(this.volumeMax);
            sb.append(", volumeHandling=");
            sb.append(this.volumeHandling);
            sb.append(", presentationDisplayId=");
            sb.append(this.presentationDisplayId);
            sb.append(", deviceType=");
            return c.m(sb, this.deviceType, " }");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.id);
            parcel.writeString(this.name);
            parcel.writeString(this.description);
            parcel.writeInt(this.supportedTypes);
            parcel.writeInt(this.enabled ? 1 : 0);
            parcel.writeInt(this.statusCode);
            parcel.writeInt(this.playbackType);
            parcel.writeInt(this.playbackStream);
            parcel.writeInt(this.volume);
            parcel.writeInt(this.volumeMax);
            parcel.writeInt(this.volumeHandling);
            parcel.writeInt(this.presentationDisplayId);
            parcel.writeInt(this.deviceType);
        }

        public RouteInfo(RouteInfo routeInfo) {
            this.id = routeInfo.id;
            this.name = routeInfo.name;
            this.description = routeInfo.description;
            this.supportedTypes = routeInfo.supportedTypes;
            this.enabled = routeInfo.enabled;
            this.statusCode = routeInfo.statusCode;
            this.playbackType = routeInfo.playbackType;
            this.playbackStream = routeInfo.playbackStream;
            this.volume = routeInfo.volume;
            this.volumeMax = routeInfo.volumeMax;
            this.volumeHandling = routeInfo.volumeHandling;
            this.presentationDisplayId = routeInfo.presentationDisplayId;
            this.deviceType = routeInfo.deviceType;
        }

        public RouteInfo(Parcel parcel) {
            this.id = parcel.readString();
            this.name = parcel.readString();
            this.description = parcel.readString();
            this.supportedTypes = parcel.readInt();
            this.enabled = parcel.readInt() != 0;
            this.statusCode = parcel.readInt();
            this.playbackType = parcel.readInt();
            this.playbackStream = parcel.readInt();
            this.volume = parcel.readInt();
            this.volumeMax = parcel.readInt();
            this.volumeHandling = parcel.readInt();
            this.presentationDisplayId = parcel.readInt();
            this.deviceType = parcel.readInt();
        }
    }
}
