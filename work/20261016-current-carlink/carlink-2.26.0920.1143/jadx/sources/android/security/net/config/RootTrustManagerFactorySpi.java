package android.security.net.config;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import javax.net.ssl.ManagerFactoryParameters;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactorySpi;

/* JADX INFO: loaded from: classes.dex */
public class RootTrustManagerFactorySpi extends TrustManagerFactorySpi {
    private ApplicationConfig mApplicationConfig;
    private NetworkSecurityConfig mConfig;

    public static final class ApplicationConfigParameters implements ManagerFactoryParameters {
        public final ApplicationConfig config;

        public ApplicationConfigParameters(ApplicationConfig applicationConfig) {
            this.config = applicationConfig;
        }
    }

    @Override // javax.net.ssl.TrustManagerFactorySpi
    public TrustManager[] engineGetTrustManagers() {
        ApplicationConfig applicationConfig = this.mApplicationConfig;
        if (applicationConfig != null) {
            return new TrustManager[]{applicationConfig.getTrustManager()};
        }
        throw new IllegalStateException("TrustManagerFactory not initialized");
    }

    @Override // javax.net.ssl.TrustManagerFactorySpi
    public void engineInit(ManagerFactoryParameters managerFactoryParameters) throws InvalidAlgorithmParameterException {
        if (managerFactoryParameters instanceof ApplicationConfigParameters) {
            this.mApplicationConfig = ((ApplicationConfigParameters) managerFactoryParameters).config;
            return;
        }
        throw new InvalidAlgorithmParameterException("Unsupported spec: " + managerFactoryParameters + ". Only " + ApplicationConfigParameters.class.getName() + " supported");
    }

    @Override // javax.net.ssl.TrustManagerFactorySpi
    public void engineInit(KeyStore keyStore) {
        if (keyStore != null) {
            this.mApplicationConfig = new ApplicationConfig(new KeyStoreConfigSource(keyStore));
        } else {
            this.mApplicationConfig = ApplicationConfig.getDefaultInstance();
        }
    }
}
