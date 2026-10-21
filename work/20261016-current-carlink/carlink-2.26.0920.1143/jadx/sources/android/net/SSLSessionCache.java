package android.net;

import android.content.Context;
import android.util.Log;
import com.android.org.conscrypt.ClientSessionContext;
import com.android.org.conscrypt.FileClientSessionCache;
import com.android.org.conscrypt.SSLClientSessionCache;
import java.io.File;
import java.io.IOException;
import javax.net.ssl.SSLContext;

/* JADX INFO: loaded from: classes.dex */
public final class SSLSessionCache {
    private static final String TAG = "SSLSessionCache";
    final SSLClientSessionCache mSessionCache;

    public SSLSessionCache(Object obj) {
        this.mSessionCache = (SSLClientSessionCache) obj;
    }

    public static void install(SSLSessionCache sSLSessionCache, SSLContext sSLContext) {
        ClientSessionContext clientSessionContext = sSLContext.getClientSessionContext();
        if (clientSessionContext instanceof ClientSessionContext) {
            clientSessionContext.setPersistentCache(sSLSessionCache == null ? null : sSLSessionCache.mSessionCache);
        } else {
            throw new IllegalArgumentException("Incompatible SSLContext: " + sSLContext);
        }
    }

    public SSLSessionCache(File file) {
        this.mSessionCache = FileClientSessionCache.usingDirectory(file);
    }

    public SSLSessionCache(Context context) {
        SSLClientSessionCache sSLClientSessionCacheUsingDirectory;
        File dir = context.getDir("sslcache", 0);
        try {
            sSLClientSessionCacheUsingDirectory = FileClientSessionCache.usingDirectory(dir);
        } catch (IOException e2) {
            Log.w(TAG, "Unable to create SSL session cache in " + dir, e2);
            sSLClientSessionCacheUsingDirectory = null;
        }
        this.mSessionCache = sSLClientSessionCacheUsingDirectory;
    }
}
