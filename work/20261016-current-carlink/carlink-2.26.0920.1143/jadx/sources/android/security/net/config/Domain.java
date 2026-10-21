package android.security.net.config;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class Domain {
    public final String hostname;
    public final boolean subdomainsIncluded;

    public Domain(String str, boolean z2) {
        if (str == null) {
            throw new NullPointerException("Hostname must not be null");
        }
        this.hostname = str.toLowerCase(Locale.US);
        this.subdomainsIncluded = z2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Domain)) {
            return false;
        }
        Domain domain = (Domain) obj;
        return domain.subdomainsIncluded == this.subdomainsIncluded && domain.hostname.equals(this.hostname);
    }

    public int hashCode() {
        return this.hostname.hashCode() ^ (this.subdomainsIncluded ? 1231 : 1237);
    }
}
