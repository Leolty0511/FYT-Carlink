package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemProperties;
import android.util.EventLog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class SecurityLog {
    private static final String PROPERTY_LOGGING_ENABLED = "persist.logd.security";
    public static final int TAG_ADB_SHELL_CMD = 210002;
    public static final int TAG_ADB_SHELL_INTERACTIVE = 210001;
    public static final int TAG_APP_PROCESS_START = 210005;
    public static final int TAG_KEYGUARD_DISMISSED = 210006;
    public static final int TAG_KEYGUARD_DISMISS_AUTH_ATTEMPT = 210007;
    public static final int TAG_KEYGUARD_SECURED = 210008;
    public static final int TAG_SYNC_RECV_FILE = 210003;
    public static final int TAG_SYNC_SEND_FILE = 210004;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SECURITY_LOG_TAG {
    }

    public static final class SecurityEvent implements Parcelable {
        public static final Parcelable.Creator<SecurityEvent> CREATOR = new Parcelable.Creator<SecurityEvent>() { // from class: android.app.admin.SecurityLog.SecurityEvent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SecurityEvent createFromParcel(Parcel parcel) {
                return new SecurityEvent(parcel.createByteArray());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SecurityEvent[] newArray(int i2) {
                return new SecurityEvent[i2];
            }
        };
        private EventLog.Event mEvent;

        public SecurityEvent(byte[] bArr) {
            this.mEvent = EventLog.Event.fromBytes(bArr);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SecurityEvent.class != obj.getClass()) {
                return false;
            }
            return this.mEvent.equals(((SecurityEvent) obj).mEvent);
        }

        public Object getData() {
            return this.mEvent.getData();
        }

        public int getTag() {
            return this.mEvent.getTag();
        }

        public long getTimeNanos() {
            return this.mEvent.getTimeNanos();
        }

        public int hashCode() {
            return this.mEvent.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeByteArray(this.mEvent.getBytes());
        }
    }

    public static boolean getLoggingEnabledProperty() {
        return SystemProperties.getBoolean(PROPERTY_LOGGING_ENABLED, false);
    }

    public static native boolean isLoggingEnabled();

    public static native void readEvents(Collection<SecurityEvent> collection);

    public static native void readEventsOnWrapping(long j2, Collection<SecurityEvent> collection);

    public static native void readEventsSince(long j2, Collection<SecurityEvent> collection);

    public static native void readPreviousEvents(Collection<SecurityEvent> collection);

    public static void setLoggingEnabledProperty(boolean z2) {
        SystemProperties.set(PROPERTY_LOGGING_ENABLED, z2 ? "true" : "false");
    }

    public static native int writeEvent(int i2, String str);

    public static native int writeEvent(int i2, Object... objArr);
}
