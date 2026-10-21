package androidx.core.net;

import android.accessibilityservice.c;
import android.content.ContentResolver;
import android.net.Uri;
import java.io.File;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class UriKt {
    public static final File toFile(Uri uri) {
        b.h(uri, "<this>");
        if (!b.a(uri.getScheme(), ContentResolver.SCHEME_FILE)) {
            throw new IllegalArgumentException(c.h("Uri lacks 'file' scheme: ", uri).toString());
        }
        String path = uri.getPath();
        if (path != null) {
            return new File(path);
        }
        throw new IllegalArgumentException(c.h("Uri path is null: ", uri).toString());
    }

    public static final Uri toUri(String str) {
        b.h(str, "<this>");
        Uri uri = Uri.parse(str);
        b.g(uri, "parse(this)");
        return uri;
    }

    public static final Uri toUri(File file) {
        b.h(file, "<this>");
        Uri uriFromFile = Uri.fromFile(file);
        b.g(uriFromFile, "fromFile(this)");
        return uriFromFile;
    }
}
