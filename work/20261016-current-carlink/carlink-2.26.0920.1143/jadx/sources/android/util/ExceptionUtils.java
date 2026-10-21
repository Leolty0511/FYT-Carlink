package android.util;

import android.os.ParcelableException;
import com.android.internal.util.Preconditions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ExceptionUtils {
    public static String getCompleteMessage(String str, Throwable th) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
            sb.append(": ");
        }
        sb.append(th.getMessage());
        while (true) {
            th = th.getCause();
            if (th == null) {
                return sb.toString();
            }
            sb.append(": ");
            sb.append(th.getMessage());
        }
    }

    public static void maybeUnwrapIOException(RuntimeException runtimeException) throws Throwable {
        if (runtimeException instanceof ParcelableException) {
            ((ParcelableException) runtimeException).maybeRethrow(IOException.class);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E */
    public static <E extends Exception> RuntimeException propagate(Throwable th, Class<E> cls) throws E {
        propagateIfInstanceOf(th, cls);
        return propagate(th);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends java.lang.Throwable */
    public static <E extends Throwable> void propagateIfInstanceOf(Throwable th, Class<E> cls) throws E {
        if (th != null && cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }

    public static RuntimeException wrap(IOException iOException) {
        throw new ParcelableException(iOException);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E */
    public static RuntimeException propagate(Throwable th) throws E {
        Preconditions.checkNotNull(th);
        propagateIfInstanceOf(th, Error.class);
        propagateIfInstanceOf(th, RuntimeException.class);
        throw new RuntimeException(th);
    }

    public static String getCompleteMessage(Throwable th) {
        return getCompleteMessage(null, th);
    }
}
