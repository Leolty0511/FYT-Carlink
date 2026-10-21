package android.security.net.config;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import android.util.Pair;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ManifestConfigSource implements ConfigSource {
    private static final boolean DBG = true;
    private static final String LOG_TAG = "NetworkSecurityConfig";
    private final int mApplicationInfoFlags;
    private final int mConfigResourceId;
    private ConfigSource mConfigSource;
    private final Context mContext;
    private final Object mLock = new Object();
    private final int mTargetSandboxVesrsion;
    private final int mTargetSdkVersion;

    public static final class DefaultConfigSource implements ConfigSource {
        private final NetworkSecurityConfig mDefaultConfig;

        public DefaultConfigSource(boolean z2, int i2, int i3) {
            this.mDefaultConfig = NetworkSecurityConfig.getDefaultBuilder(i2, i3).setCleartextTrafficPermitted(z2).build();
        }

        @Override // android.security.net.config.ConfigSource
        public NetworkSecurityConfig getDefaultConfig() {
            return this.mDefaultConfig;
        }

        @Override // android.security.net.config.ConfigSource
        public Set<Pair<Domain, NetworkSecurityConfig>> getPerDomainConfigs() {
            return null;
        }
    }

    public ManifestConfigSource(Context context) {
        this.mContext = context;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        this.mApplicationInfoFlags = applicationInfo.flags;
        this.mTargetSdkVersion = applicationInfo.targetSdkVersion;
        this.mConfigResourceId = applicationInfo.networkSecurityConfigRes;
        this.mTargetSandboxVesrsion = applicationInfo.targetSandboxVersion;
    }

    private ConfigSource getConfigSource() {
        ConfigSource defaultConfigSource;
        synchronized (this.mLock) {
            ConfigSource configSource = this.mConfigSource;
            if (configSource != null) {
                return configSource;
            }
            boolean z2 = true;
            if (this.mConfigResourceId != 0) {
                boolean z3 = (this.mApplicationInfoFlags & 2) != 0;
                Log.d(LOG_TAG, "Using Network Security Config from resource " + this.mContext.getResources().getResourceEntryName(this.mConfigResourceId) + " debugBuild: " + z3);
                defaultConfigSource = new XmlConfigSource(this.mContext, this.mConfigResourceId, z3, this.mTargetSdkVersion, this.mTargetSandboxVesrsion);
            } else {
                Log.d(LOG_TAG, "No Network Security Config specified, using platform default");
                if ((this.mApplicationInfoFlags & 134217728) == 0 || this.mTargetSandboxVesrsion >= 2) {
                    z2 = false;
                }
                defaultConfigSource = new DefaultConfigSource(z2, this.mTargetSdkVersion, this.mTargetSandboxVesrsion);
            }
            this.mConfigSource = defaultConfigSource;
            return defaultConfigSource;
        }
    }

    @Override // android.security.net.config.ConfigSource
    public NetworkSecurityConfig getDefaultConfig() {
        return getConfigSource().getDefaultConfig();
    }

    @Override // android.security.net.config.ConfigSource
    public Set<Pair<Domain, NetworkSecurityConfig>> getPerDomainConfigs() {
        return getConfigSource().getPerDomainConfigs();
    }
}
