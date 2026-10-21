package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.net.InetSocketAddress;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ProxyProperties implements Parcelable {
    public static final Parcelable.Creator<ProxyProperties> CREATOR = new Parcelable.Creator<ProxyProperties>() { // from class: android.net.ProxyProperties.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProxyProperties createFromParcel(Parcel parcel) {
            String string;
            int i2;
            if (parcel.readByte() != 0) {
                return new ProxyProperties(parcel.readString(), parcel.readInt());
            }
            if (parcel.readByte() != 0) {
                string = parcel.readString();
                i2 = parcel.readInt();
            } else {
                string = null;
                i2 = 0;
            }
            return new ProxyProperties(string, i2, parcel.readString(), parcel.readStringArray());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProxyProperties[] newArray(int i2) {
            return new ProxyProperties[i2];
        }
    };
    public static final String LOCAL_EXCL_LIST = "";
    public static final String LOCAL_HOST = "localhost";
    public static final int LOCAL_PORT = -1;
    private String mExclusionList;
    private String mHost;
    private String mPacFileUrl;
    private String[] mParsedExclusionList;
    private int mPort;

    private void setExclusionList(String str) {
        this.mExclusionList = str;
        if (str == null) {
            this.mParsedExclusionList = new String[0];
            return;
        }
        String[] strArrSplit = str.toLowerCase(Locale.ROOT).split(",");
        this.mParsedExclusionList = new String[strArrSplit.length * 2];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            String strTrim = strArrSplit[i2].trim();
            if (strTrim.startsWith(".")) {
                strTrim = strTrim.substring(1);
            }
            String[] strArr = this.mParsedExclusionList;
            int i3 = i2 * 2;
            strArr[i3] = strTrim;
            strArr[i3 + 1] = "." + strTrim;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ProxyProperties)) {
            return false;
        }
        ProxyProperties proxyProperties = (ProxyProperties) obj;
        if (!TextUtils.isEmpty(this.mPacFileUrl)) {
            return this.mPacFileUrl.equals(proxyProperties.getPacFileUrl()) && this.mPort == proxyProperties.mPort;
        }
        if (!TextUtils.isEmpty(proxyProperties.getPacFileUrl())) {
            return false;
        }
        String str = this.mExclusionList;
        if (str != null && !str.equals(proxyProperties.getExclusionList())) {
            return false;
        }
        if (this.mHost != null && proxyProperties.getHost() != null && !this.mHost.equals(proxyProperties.getHost())) {
            return false;
        }
        String str2 = this.mHost;
        if (str2 == null || proxyProperties.mHost != null) {
            return (str2 != null || proxyProperties.mHost == null) && this.mPort == proxyProperties.mPort;
        }
        return false;
    }

    public String getExclusionList() {
        return this.mExclusionList;
    }

    public String getHost() {
        return this.mHost;
    }

    public String getPacFileUrl() {
        return this.mPacFileUrl;
    }

    public int getPort() {
        return this.mPort;
    }

    public InetSocketAddress getSocketAddress() {
        try {
            return new InetSocketAddress(this.mHost, this.mPort);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public int hashCode() {
        String str = this.mHost;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.mExclusionList;
        return iHashCode + (str2 != null ? str2.hashCode() : 0) + this.mPort;
    }

    public boolean isExcluded(String str) {
        String[] strArr;
        String host;
        if (TextUtils.isEmpty(str) || (strArr = this.mParsedExclusionList) == null || strArr.length == 0 || (host = Uri.parse(str).getHost()) == null) {
            return false;
        }
        int i2 = 0;
        while (true) {
            String[] strArr2 = this.mParsedExclusionList;
            if (i2 >= strArr2.length) {
                return false;
            }
            if (host.equals(strArr2[i2]) || host.endsWith(this.mParsedExclusionList[i2 + 1])) {
                return true;
            }
            i2 += 2;
        }
    }

    public boolean isValid() {
        if (!TextUtils.isEmpty(this.mPacFileUrl)) {
            return true;
        }
        try {
            String str = this.mHost;
            String str2 = LOCAL_EXCL_LIST;
            if (str == null) {
                str = LOCAL_EXCL_LIST;
            }
            int i2 = this.mPort;
            String string = i2 == 0 ? LOCAL_EXCL_LIST : Integer.toString(i2);
            String str3 = this.mExclusionList;
            if (str3 != null) {
                str2 = str3;
            }
            Proxy.validate(str, string, str2);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public java.net.Proxy makeProxy() {
        java.net.Proxy proxy = java.net.Proxy.NO_PROXY;
        if (this.mHost == null) {
            return proxy;
        }
        try {
            return new java.net.Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress(this.mHost, this.mPort));
        } catch (IllegalArgumentException unused) {
            return proxy;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.mPacFileUrl != null) {
            sb.append("PAC Script: ");
            sb.append(this.mPacFileUrl);
        } else if (this.mHost != null) {
            sb.append("[");
            sb.append(this.mHost);
            sb.append("] ");
            sb.append(Integer.toString(this.mPort));
            if (this.mExclusionList != null) {
                sb.append(" xl=");
                sb.append(this.mExclusionList);
            }
        } else {
            sb.append("[ProxyProperties.mHost == null]");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mPacFileUrl != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mPacFileUrl);
            parcel.writeInt(this.mPort);
            return;
        }
        parcel.writeByte((byte) 0);
        if (this.mHost != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mHost);
            parcel.writeInt(this.mPort);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeString(this.mExclusionList);
        parcel.writeStringArray(this.mParsedExclusionList);
    }

    public ProxyProperties(String str, int i2, String str2) {
        this.mHost = str;
        this.mPort = i2;
        setExclusionList(str2);
    }

    public ProxyProperties(String str) {
        this.mHost = LOCAL_HOST;
        this.mPort = -1;
        setExclusionList(LOCAL_EXCL_LIST);
        this.mPacFileUrl = str;
    }

    public ProxyProperties(String str, int i2) {
        this.mHost = LOCAL_HOST;
        this.mPort = i2;
        setExclusionList(LOCAL_EXCL_LIST);
        this.mPacFileUrl = str;
    }

    private ProxyProperties(String str, int i2, String str2, String[] strArr) {
        this.mHost = str;
        this.mPort = i2;
        this.mExclusionList = str2;
        this.mParsedExclusionList = strArr;
        this.mPacFileUrl = null;
    }

    public ProxyProperties(ProxyProperties proxyProperties) {
        if (proxyProperties != null) {
            this.mHost = proxyProperties.getHost();
            this.mPort = proxyProperties.getPort();
            this.mPacFileUrl = proxyProperties.getPacFileUrl();
            this.mExclusionList = proxyProperties.getExclusionList();
            this.mParsedExclusionList = proxyProperties.mParsedExclusionList;
        }
    }
}
