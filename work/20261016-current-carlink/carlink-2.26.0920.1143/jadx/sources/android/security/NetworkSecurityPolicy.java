package android.security;

import android.content.Context;
import android.security.net.config.ApplicationConfig;
import android.security.net.config.ManifestConfigSource;

/* JADX INFO: loaded from: classes.dex */
public class NetworkSecurityPolicy {
    private static final NetworkSecurityPolicy INSTANCE = new NetworkSecurityPolicy();

    private NetworkSecurityPolicy() {
    }

    public static ApplicationConfig getApplicationConfigForPackage(Context context, String str) {
        return new ApplicationConfig(new ManifestConfigSource(context.createPackageContext(str, 0)));
    }

    public static NetworkSecurityPolicy getInstance() {
        return INSTANCE;
    }

    public void handleTrustStorageUpdate() {
        ApplicationConfig defaultInstance = ApplicationConfig.getDefaultInstance();
        if (defaultInstance != null) {
            defaultInstance.handleTrustStorageUpdate();
        }
    }

    public boolean isCleartextTrafficPermitted() {
        return libcore.net.NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    public void setCleartextTrafficPermitted(boolean z2) {
        libcore.net.NetworkSecurityPolicy.setInstance(new FrameworkNetworkSecurityPolicy(z2));
    }

    public boolean isCleartextTrafficPermitted(String str) {
        return libcore.net.NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }
}
