package android.telecom;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.telephony.IccCardConstants;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class CallAudioState implements Parcelable {
    public static final Parcelable.Creator<CallAudioState> CREATOR = new Parcelable.Creator<CallAudioState>() { // from class: android.telecom.CallAudioState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallAudioState createFromParcel(Parcel parcel) {
            return new CallAudioState(parcel.readByte() != 0, parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallAudioState[] newArray(int i2) {
            return new CallAudioState[i2];
        }
    };
    public static final int ROUTE_ALL = 15;
    public static final int ROUTE_BLUETOOTH = 2;
    public static final int ROUTE_EARPIECE = 1;
    public static final int ROUTE_SPEAKER = 8;
    public static final int ROUTE_WIRED_HEADSET = 4;
    public static final int ROUTE_WIRED_OR_EARPIECE = 5;
    private final boolean isMuted;
    private final int route;
    private final int supportedRouteMask;

    public CallAudioState(boolean z2, int i2, int i3) {
        this.isMuted = z2;
        this.route = i2;
        this.supportedRouteMask = i3;
    }

    public static String audioRouteToString(int i2) {
        if (i2 == 0 || (i2 & (-16)) != 0) {
            return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
        }
        StringBuffer stringBuffer = new StringBuffer();
        if ((i2 & 1) == 1) {
            listAppend(stringBuffer, "EARPIECE");
        }
        if ((i2 & 2) == 2) {
            listAppend(stringBuffer, "BLUETOOTH");
        }
        if ((i2 & 4) == 4) {
            listAppend(stringBuffer, "WIRED_HEADSET");
        }
        if ((i2 & 8) == 8) {
            listAppend(stringBuffer, "SPEAKER");
        }
        return stringBuffer.toString();
    }

    private static void listAppend(StringBuffer stringBuffer, String str) {
        if (stringBuffer.length() > 0) {
            stringBuffer.append(", ");
        }
        stringBuffer.append(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof CallAudioState)) {
            return false;
        }
        CallAudioState callAudioState = (CallAudioState) obj;
        return isMuted() == callAudioState.isMuted() && getRoute() == callAudioState.getRoute() && getSupportedRouteMask() == callAudioState.getSupportedRouteMask();
    }

    public int getRoute() {
        return this.route;
    }

    public int getSupportedRouteMask() {
        return this.supportedRouteMask;
    }

    public boolean isMuted() {
        return this.isMuted;
    }

    public String toString() {
        return String.format(Locale.US, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s]", Boolean.valueOf(this.isMuted), audioRouteToString(this.route), audioRouteToString(this.supportedRouteMask));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByte(this.isMuted ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.route);
        parcel.writeInt(this.supportedRouteMask);
    }

    public CallAudioState(CallAudioState callAudioState) {
        this.isMuted = callAudioState.isMuted();
        this.route = callAudioState.getRoute();
        this.supportedRouteMask = callAudioState.getSupportedRouteMask();
    }

    public CallAudioState(AudioState audioState) {
        this.isMuted = audioState.isMuted();
        this.route = audioState.getRoute();
        this.supportedRouteMask = audioState.getSupportedRouteMask();
    }
}
