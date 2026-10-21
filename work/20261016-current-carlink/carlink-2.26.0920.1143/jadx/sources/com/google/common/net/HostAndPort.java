package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.CharMatcher;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
@GwtCompatible
@ElementTypesAreNonnullByDefault
public final class HostAndPort implements Serializable {
    private static final int NO_PORT = -1;
    private static final long serialVersionUID = 0;
    private final boolean hasBracketlessColons;
    private final String host;
    private final int port;

    private HostAndPort(String str, int i2, boolean z2) {
        this.host = str;
        this.port = i2;
        this.hasBracketlessColons = z2;
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort hostAndPortFromString = fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return hostAndPortFromString;
    }

    public static HostAndPort fromParts(String str, int i2) {
        Preconditions.checkArgument(isValidPort(i2), "Port out of range: %s", i2);
        HostAndPort hostAndPortFromString = fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(hostAndPortFromString.host, i2, hostAndPortFromString.hasBracketlessColons);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    @CanIgnoreReturnValue
    public static HostAndPort fromString(String str) {
        String str2;
        boolean z2;
        String strSubstring;
        String strSubstring2;
        Preconditions.checkNotNull(str);
        int i2 = -1;
        if (!str.startsWith("[")) {
            int iIndexOf = str.indexOf(58);
            if (iIndexOf >= 0) {
                int i3 = iIndexOf + 1;
                if (str.indexOf(58, i3) == -1) {
                    strSubstring2 = str.substring(0, iIndexOf);
                    strSubstring = str.substring(i3);
                }
                if (!Strings.isNullOrEmpty(strSubstring)) {
                    Preconditions.checkArgument(strSubstring.startsWith("+") && CharMatcher.ascii().matchesAllOf(strSubstring), "Unparseable port number: %s", str);
                    try {
                        i2 = Integer.parseInt(strSubstring);
                        Preconditions.checkArgument(isValidPort(i2), "Port number out of range: %s", str);
                    } catch (NumberFormatException unused) {
                        throw new IllegalArgumentException("Unparseable port number: ".concat(str));
                    }
                }
                return new HostAndPort(str2, i2, z2);
            }
            str2 = str;
            z2 = iIndexOf >= 0;
            strSubstring = null;
            if (!Strings.isNullOrEmpty(strSubstring)) {
                Preconditions.checkArgument(strSubstring.startsWith("+") && CharMatcher.ascii().matchesAllOf(strSubstring), "Unparseable port number: %s", str);
                i2 = Integer.parseInt(strSubstring);
                Preconditions.checkArgument(isValidPort(i2), "Port number out of range: %s", str);
            }
            return new HostAndPort(str2, i2, z2);
        }
        String[] hostAndPortFromBracketedHost = getHostAndPortFromBracketedHost(str);
        strSubstring2 = hostAndPortFromBracketedHost[0];
        strSubstring = hostAndPortFromBracketedHost[1];
        str2 = strSubstring2;
        z2 = false;
        if (!Strings.isNullOrEmpty(strSubstring)) {
            Preconditions.checkArgument(strSubstring.startsWith("+") && CharMatcher.ascii().matchesAllOf(strSubstring), "Unparseable port number: %s", str);
            i2 = Integer.parseInt(strSubstring);
            Preconditions.checkArgument(isValidPort(i2), "Port number out of range: %s", str);
        }
        return new HostAndPort(str2, i2, z2);
    }

    private static String[] getHostAndPortFromBracketedHost(String str) {
        Preconditions.checkArgument(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int iIndexOf = str.indexOf(58);
        int iLastIndexOf = str.lastIndexOf(93);
        Preconditions.checkArgument(iIndexOf > -1 && iLastIndexOf > iIndexOf, "Invalid bracketed host/port: %s", str);
        String strSubstring = str.substring(1, iLastIndexOf);
        int i2 = iLastIndexOf + 1;
        if (i2 == str.length()) {
            return new String[]{strSubstring, ""};
        }
        Preconditions.checkArgument(str.charAt(i2) == ':', "Only a colon may follow a close bracket: %s", str);
        int i3 = iLastIndexOf + 2;
        for (int i4 = i3; i4 < str.length(); i4++) {
            Preconditions.checkArgument(Character.isDigit(str.charAt(i4)), "Port must be numeric: %s", str);
        }
        return new String[]{strSubstring, str.substring(i3)};
    }

    private static boolean isValidPort(int i2) {
        return i2 >= 0 && i2 <= 65535;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HostAndPort)) {
            return false;
        }
        HostAndPort hostAndPort = (HostAndPort) obj;
        return Objects.equal(this.host, hostAndPort.host) && this.port == hostAndPort.port;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        Preconditions.checkState(hasPort());
        return this.port;
    }

    public int getPortOrDefault(int i2) {
        return hasPort() ? this.port : i2;
    }

    public boolean hasPort() {
        return this.port >= 0;
    }

    public int hashCode() {
        return Objects.hashCode(this.host, Integer.valueOf(this.port));
    }

    @CanIgnoreReturnValue
    public HostAndPort requireBracketsForIPv6() {
        Preconditions.checkArgument(!this.hasBracketlessColons, "Possible bracketless IPv6 literal: %s", this.host);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.host.length() + 8);
        if (this.host.indexOf(58) >= 0) {
            sb.append('[');
            sb.append(this.host);
            sb.append(']');
        } else {
            sb.append(this.host);
        }
        if (hasPort()) {
            sb.append(':');
            sb.append(this.port);
        }
        return sb.toString();
    }

    public HostAndPort withDefaultPort(int i2) {
        Preconditions.checkArgument(isValidPort(i2));
        return hasPort() ? this : new HostAndPort(this.host, i2, this.hasBracketlessColons);
    }
}
