package android.content;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class ContentUris {
    public static Uri.Builder appendId(Uri.Builder builder, long j2) {
        return builder.appendEncodedPath(String.valueOf(j2));
    }

    public static long parseId(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1L;
        }
        return Long.parseLong(lastPathSegment);
    }

    public static Uri withAppendedId(Uri uri, long j2) {
        return appendId(uri.buildUpon(), j2).build();
    }
}
