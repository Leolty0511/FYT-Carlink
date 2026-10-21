package androidx.core.os;

import android.os.Build;
import android.os.Environment;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class EnvironmentCompat {
    public static final String MEDIA_UNKNOWN = "unknown";
    private static final String TAG = "EnvironmentCompat";

    @RequiresApi(19)
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        public static String getStorageState(File file) {
            return Environment.getStorageState(file);
        }
    }

    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static String getExternalStorageState(File file) {
            return Environment.getExternalStorageState(file);
        }
    }

    private EnvironmentCompat() {
    }

    @NonNull
    public static String getStorageState(@NonNull File file) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            return Api21Impl.getExternalStorageState(file);
        }
        if (i2 >= 19) {
            return Api19Impl.getStorageState(file);
        }
        try {
            return file.getCanonicalPath().startsWith(Environment.getExternalStorageDirectory().getCanonicalPath()) ? Environment.getExternalStorageState() : "unknown";
        } catch (IOException e2) {
            Log.w(TAG, "Failed to resolve canonical path: " + e2);
            return "unknown";
        }
    }
}
