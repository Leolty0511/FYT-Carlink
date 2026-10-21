package android.net;

import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class WebAddress {
    public static final int MATCH_GROUP_AUTHORITY = 2;
    public static final int MATCH_GROUP_HOST = 3;
    public static final int MATCH_GROUP_PATH = 5;
    public static final int MATCH_GROUP_PORT = 4;
    public static final int MATCH_GROUP_SCHEME = 1;
    public static Pattern sAddressPattern = Pattern.compile("(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*'(),;?&=]+)?)@)?([a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef%_-][a-zA-Z0-9 -\ud7ff豈-\ufdcfﷰ-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*", 2);
    private String mAuthInfo;
    private String mHost;
    private String mPath;
    private int mPort;
    private String mScheme;

    public WebAddress(String str) {
        Objects.requireNonNull(str);
        this.mScheme = ProxyProperties.LOCAL_EXCL_LIST;
        this.mHost = ProxyProperties.LOCAL_EXCL_LIST;
        this.mPort = -1;
        this.mPath = "/";
        this.mAuthInfo = ProxyProperties.LOCAL_EXCL_LIST;
        Matcher matcher = sAddressPattern.matcher(str);
        if (!matcher.matches()) {
            throw new ParseException("Bad address");
        }
        String strGroup = matcher.group(1);
        if (strGroup != null) {
            this.mScheme = strGroup.toLowerCase(Locale.ROOT);
        }
        String strGroup2 = matcher.group(2);
        if (strGroup2 != null) {
            this.mAuthInfo = strGroup2;
        }
        String strGroup3 = matcher.group(3);
        if (strGroup3 != null) {
            this.mHost = strGroup3;
        }
        String strGroup4 = matcher.group(4);
        if (strGroup4 != null && strGroup4.length() > 0) {
            try {
                this.mPort = Integer.parseInt(strGroup4);
            } catch (NumberFormatException unused) {
                throw new ParseException("Bad port");
            }
        }
        String strGroup5 = matcher.group(5);
        if (strGroup5 != null && strGroup5.length() > 0) {
            if (strGroup5.charAt(0) == '/') {
                this.mPath = strGroup5;
            } else {
                this.mPath = "/" + strGroup5;
            }
        }
        if (this.mPort == 443 && this.mScheme.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
            this.mScheme = "https";
        } else if (this.mPort == -1) {
            if (this.mScheme.equals("https")) {
                this.mPort = 443;
            } else {
                this.mPort = 80;
            }
        }
        if (this.mScheme.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
            this.mScheme = "http";
        }
    }

    public String getAuthInfo() {
        return this.mAuthInfo;
    }

    public String getHost() {
        return this.mHost;
    }

    public String getPath() {
        return this.mPath;
    }

    public int getPort() {
        return this.mPort;
    }

    public String getScheme() {
        return this.mScheme;
    }

    public void setAuthInfo(String str) {
        this.mAuthInfo = str;
    }

    public void setHost(String str) {
        this.mHost = str;
    }

    public void setPath(String str) {
        this.mPath = str;
    }

    public void setPort(int i2) {
        this.mPort = i2;
    }

    public void setScheme(String str) {
        this.mScheme = str;
    }

    public String toString() {
        String str;
        int i2 = this.mPort;
        String str2 = ProxyProperties.LOCAL_EXCL_LIST;
        if ((i2 == 443 || !this.mScheme.equals("https")) && (this.mPort == 80 || !this.mScheme.equals("http"))) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        } else {
            str = ":" + Integer.toString(this.mPort);
        }
        if (this.mAuthInfo.length() > 0) {
            str2 = this.mAuthInfo + "@";
        }
        return this.mScheme + "://" + str2 + this.mHost + str + this.mPath;
    }
}
