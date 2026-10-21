package com.android.fmradio;

import android.net.ProxyProperties;
import android.text.format.DateFormat;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RdsTextChars {
    public List<CharTable> tables;

    public static class CharTable {
        public List<RdsChar> chars;
        public HashMap<String, String> mKeyValue = new LinkedHashMap();
        public String table;

        public String a(String str) {
            return this.mKeyValue.containsKey(str) ? this.mKeyValue.get(str) : ProxyProperties.LOCAL_EXCL_LIST;
        }

        public void b() {
            if (this.chars.isEmpty() || this.mKeyValue.size() == this.chars.size()) {
                return;
            }
            this.mKeyValue.clear();
            for (RdsChar rdsChar : this.chars) {
                this.mKeyValue.put(rdsChar.key, rdsChar.value);
            }
        }

        public String toString() {
            return "title: " + this.table + " size :" + this.chars.size() + " chars:" + this.mKeyValue.toString();
        }
    }

    public static class RdsChar {
        public String key;
        public String value;

        public String toString() {
            return "RdsChar{key='" + this.key + DateFormat.QUOTE + ", value='" + this.value + DateFormat.QUOTE + '}';
        }
    }
}
