package android.provider;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class TelephonyEx {

    public interface MmsEx {
        public static final String ALARM = "alarm";
        public static final int MESSAGE_BOX_ALARM = 8;

        public static final class Alarmbox implements Telephony.BaseMmsColumns {
            public static final Uri CONTENT_URI = Uri.parse("content://mms/alarmbox");
            public static final String DEFAULT_SORT_ORDER = "date DESC";

            private Alarmbox() {
            }
        }
    }

    public interface SmsEx {
        public static final String ALARM = "alarm";
        public static final int MESSAGE_TYPE_ALARM = 8;
    }
}
