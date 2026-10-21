package android.util;

import java.io.BufferedReader;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class EventLogTags {

    public static class Description {
        public final String mName;
        public final int mTag;

        public Description(int i2, String str) {
            this.mTag = i2;
            this.mName = str;
        }
    }

    public EventLogTags() {
    }

    public EventLogTags(BufferedReader bufferedReader) {
    }

    public Description get(int i2) {
        return null;
    }

    public Description get(String str) {
        return null;
    }
}
