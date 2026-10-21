package androidx.core.util;

import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectsCompat {

    @RequiresApi(19)
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        public static boolean equals(Object obj, Object obj2) {
            return Objects.equals(obj, obj2);
        }

        @DoNotInline
        public static int hash(Object... objArr) {
            return Objects.hash(objArr);
        }
    }

    private ObjectsCompat() {
    }

    public static boolean equals(@Nullable Object obj, @Nullable Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Api19Impl.equals(obj, obj2);
        }
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hash(@Nullable Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Api19Impl.hash(objArr) : Arrays.hashCode(objArr);
    }

    public static int hashCode(@Nullable Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    @NonNull
    public static <T> T requireNonNull(@Nullable T t2) {
        t2.getClass();
        return t2;
    }

    @Nullable
    public static String toString(@Nullable Object obj, @Nullable String str) {
        return obj != null ? obj.toString() : str;
    }

    @NonNull
    public static <T> T requireNonNull(@Nullable T t2, @NonNull String str) {
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException(str);
    }
}
