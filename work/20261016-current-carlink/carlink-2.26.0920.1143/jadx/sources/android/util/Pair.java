package android.util;

import android.net.wifi.WifiEnterpriseConfig;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class Pair<F, S> {
    public final F first;
    public final S second;

    public Pair(F f2, S s2) {
        this.first = f2;
        this.second = s2;
    }

    public static <A, B> Pair<A, B> create(A a2, B b2) {
        return new Pair<>(a2, b2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return Objects.equals(pair.first, this.first) && Objects.equals(pair.second, this.second);
    }

    public int hashCode() {
        F f2 = this.first;
        int iHashCode = f2 == null ? 0 : f2.hashCode();
        S s2 = this.second;
        return iHashCode ^ (s2 != null ? s2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.first) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + String.valueOf(this.second) + "}";
    }
}
