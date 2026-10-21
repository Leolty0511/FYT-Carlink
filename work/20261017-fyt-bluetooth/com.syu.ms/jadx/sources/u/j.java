package u;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class j {
    public static <T> T a(T t2) {
        Objects.requireNonNull(t2);
        return t2;
    }

    public static <T> T b(T t2, Object obj) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
