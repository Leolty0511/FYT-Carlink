package android.app.admin;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.Log;
import com.android.org.conscrypt.TrustedCertificateStore;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class DevicePolicyManager {
    public static final String ACTION_ADD_DEVICE_ADMIN = "android.app.action.ADD_DEVICE_ADMIN";
    public static final String ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED";
    public static final String ACTION_SET_NEW_PASSWORD = "android.app.action.SET_NEW_PASSWORD";
    public static final String ACTION_START_ENCRYPTION = "android.app.action.START_ENCRYPTION";
    public static final int ENCRYPTION_STATUS_ACTIVATING = 2;
    public static final int ENCRYPTION_STATUS_ACTIVE = 3;
    public static final int ENCRYPTION_STATUS_INACTIVE = 1;
    public static final int ENCRYPTION_STATUS_UNSUPPORTED = 0;
    public static final String EXTRA_ADD_EXPLANATION = "android.app.extra.ADD_EXPLANATION";
    public static final String EXTRA_DEVICE_ADMIN = "android.app.extra.DEVICE_ADMIN";
    public static final int KEYGUARD_DISABLE_FEATURES_ALL = Integer.MAX_VALUE;
    public static final int KEYGUARD_DISABLE_FEATURES_NONE = 0;
    public static final int KEYGUARD_DISABLE_SECURE_CAMERA = 2;
    public static final int KEYGUARD_DISABLE_WIDGETS_ALL = 1;
    public static final int PASSWORD_QUALITY_ALPHABETIC = 262144;
    public static final int PASSWORD_QUALITY_ALPHANUMERIC = 327680;
    public static final int PASSWORD_QUALITY_BIOMETRIC_WEAK = 32768;
    public static final int PASSWORD_QUALITY_COMPLEX = 393216;
    public static final int PASSWORD_QUALITY_NUMERIC = 131072;
    public static final int PASSWORD_QUALITY_SOMETHING = 65536;
    public static final int PASSWORD_QUALITY_UNSPECIFIED = 0;
    public static final int RESET_PASSWORD_REQUIRE_ENTRY = 1;
    private static String TAG = "DevicePolicyManager";
    public static final int WIPE_EXTERNAL_STORAGE = 1;
    private final Context mContext;
    private final IDevicePolicyManager mService = IDevicePolicyManager.Stub.asInterface(ServiceManager.getService(Context.DEVICE_POLICY_SERVICE));

    private DevicePolicyManager(Context context, Handler handler) {
        this.mContext = context;
    }

    public static DevicePolicyManager create(Context context, Handler handler) {
        DevicePolicyManager devicePolicyManager = new DevicePolicyManager(context, handler);
        if (devicePolicyManager.mService != null) {
            return devicePolicyManager;
        }
        return null;
    }

    public static boolean hasAnyCaCertsInstalled() {
        Set setUserAliases = new TrustedCertificateStore().userAliases();
        return (setUserAliases == null || setUserAliases.isEmpty()) ? false : true;
    }

    public List<ComponentName> getActiveAdmins() {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return null;
        }
        try {
            return iDevicePolicyManager.getActiveAdmins(UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return null;
        }
    }

    public DeviceAdminInfo getAdminInfo(ComponentName componentName) {
        try {
            ActivityInfo receiverInfo = this.mContext.getPackageManager().getReceiverInfo(componentName, 128);
            ResolveInfo resolveInfo = new ResolveInfo();
            resolveInfo.activityInfo = receiverInfo;
            try {
                return new DeviceAdminInfo(this.mContext, resolveInfo);
            } catch (IOException e2) {
                Log.w(TAG, "Unable to parse device policy " + componentName, e2);
                return null;
            } catch (XmlPullParserException e3) {
                Log.w(TAG, "Unable to parse device policy " + componentName, e3);
                return null;
            }
        } catch (PackageManager.NameNotFoundException e4) {
            Log.w(TAG, "Unable to retrieve device policy " + componentName, e4);
            return null;
        }
    }

    public boolean getCameraDisabled(ComponentName componentName) {
        return getCameraDisabled(componentName, UserHandle.myUserId());
    }

    public int getCurrentFailedPasswordAttempts() {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return -1;
        }
        try {
            return iDevicePolicyManager.getCurrentFailedPasswordAttempts(UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return -1;
        }
    }

    public String getDeviceOwner() {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return null;
        }
        try {
            return iDevicePolicyManager.getDeviceOwner();
        } catch (RemoteException unused) {
            Log.w(TAG, "Failed to get device owner");
            return null;
        }
    }

    public String getDeviceOwnerName() {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return null;
        }
        try {
            return iDevicePolicyManager.getDeviceOwnerName();
        } catch (RemoteException unused) {
            Log.w(TAG, "Failed to get device owner");
            return null;
        }
    }

    public ComponentName getGlobalProxyAdmin() {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return null;
        }
        try {
            return iDevicePolicyManager.getGlobalProxyAdmin(UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return null;
        }
    }

    public int getKeyguardDisabledFeatures(ComponentName componentName) {
        return getKeyguardDisabledFeatures(componentName, UserHandle.myUserId());
    }

    public int getMaximumFailedPasswordsForWipe(ComponentName componentName) {
        return getMaximumFailedPasswordsForWipe(componentName, UserHandle.myUserId());
    }

    public long getMaximumTimeToLock(ComponentName componentName) {
        return getMaximumTimeToLock(componentName, UserHandle.myUserId());
    }

    public long getPasswordExpiration(ComponentName componentName) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0L;
        }
        try {
            return iDevicePolicyManager.getPasswordExpiration(componentName, UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0L;
        }
    }

    public long getPasswordExpirationTimeout(ComponentName componentName) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0L;
        }
        try {
            return iDevicePolicyManager.getPasswordExpirationTimeout(componentName, UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0L;
        }
    }

    public int getPasswordHistoryLength(ComponentName componentName) {
        return getPasswordHistoryLength(componentName, UserHandle.myUserId());
    }

    public int getPasswordMaximumLength(int i2) {
        return 16;
    }

    public int getPasswordMinimumLength(ComponentName componentName) {
        return getPasswordMinimumLength(componentName, UserHandle.myUserId());
    }

    public int getPasswordMinimumLetters(ComponentName componentName) {
        return getPasswordMinimumLetters(componentName, UserHandle.myUserId());
    }

    public int getPasswordMinimumLowerCase(ComponentName componentName) {
        return getPasswordMinimumLowerCase(componentName, UserHandle.myUserId());
    }

    public int getPasswordMinimumNonLetter(ComponentName componentName) {
        return getPasswordMinimumNonLetter(componentName, UserHandle.myUserId());
    }

    public int getPasswordMinimumNumeric(ComponentName componentName) {
        return getPasswordMinimumNumeric(componentName, UserHandle.myUserId());
    }

    public int getPasswordMinimumSymbols(ComponentName componentName) {
        return getPasswordMinimumSymbols(componentName, UserHandle.myUserId());
    }

    public int getPasswordMinimumUpperCase(ComponentName componentName) {
        return getPasswordMinimumUpperCase(componentName, UserHandle.myUserId());
    }

    public int getPasswordQuality(ComponentName componentName) {
        return getPasswordQuality(componentName, UserHandle.myUserId());
    }

    public void getRemoveWarning(ComponentName componentName, RemoteCallback remoteCallback) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.getRemoveWarning(componentName, remoteCallback, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public boolean getStorageEncryption(ComponentName componentName) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.getStorageEncryption(componentName, UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return false;
        }
    }

    public int getStorageEncryptionStatus() {
        return getStorageEncryptionStatus(UserHandle.myUserId());
    }

    public boolean hasCaCertInstalled(byte[] bArr) {
        try {
            return new TrustedCertificateStore().getCertificateAlias((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr))) != null;
        } catch (CertificateException e2) {
            Log.w(TAG, "Could not parse certificate", e2);
            return false;
        }
    }

    public boolean hasGrantedPolicy(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.hasGrantedPolicy(componentName, i2, UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return false;
        }
    }

    public boolean installCaCert(byte[] bArr) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.installCaCert(bArr);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return false;
        }
    }

    public boolean isActivePasswordSufficient() {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.isActivePasswordSufficient(UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return false;
        }
    }

    public boolean isAdminActive(ComponentName componentName) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.isAdminActive(componentName, UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return false;
        }
    }

    public boolean isDeviceOwner(String str) {
        return isDeviceOwnerApp(str);
    }

    public boolean isDeviceOwnerApp(String str) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.isDeviceOwner(str);
        } catch (RemoteException unused) {
            Log.w(TAG, "Failed to check device owner");
            return false;
        }
    }

    public void lockNow() {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.lockNow();
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public boolean packageHasActiveAdmins(String str) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.packageHasActiveAdmins(str, UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return false;
        }
    }

    public void removeActiveAdmin(ComponentName componentName) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.removeActiveAdmin(componentName, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void reportFailedPasswordAttempt(int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.reportFailedPasswordAttempt(i2);
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void reportSuccessfulPasswordAttempt(int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.reportSuccessfulPasswordAttempt(i2);
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public boolean resetPassword(String str, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.resetPassword(str, i2, UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return false;
        }
    }

    public void setActiveAdmin(ComponentName componentName, boolean z2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setActiveAdmin(componentName, z2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setActivePasswordState(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setActivePasswordState(i2, i3, i4, i5, i6, i7, i8, i9, i10);
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setCameraDisabled(ComponentName componentName, boolean z2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setCameraDisabled(componentName, z2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public boolean setDeviceOwner(String str) {
        return setDeviceOwner(str, null);
    }

    public ComponentName setGlobalProxy(ComponentName componentName, Proxy proxy, List<String> list) {
        String str;
        String string;
        Objects.requireNonNull(proxy);
        if (this.mService != null) {
            try {
                if (proxy.equals(Proxy.NO_PROXY)) {
                    string = null;
                    str = null;
                } else {
                    if (!proxy.type().equals(Proxy.Type.HTTP)) {
                        throw new IllegalArgumentException();
                    }
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                    String hostName = inetSocketAddress.getHostName();
                    int port = inetSocketAddress.getPort();
                    str = hostName + ":" + Integer.toString(port);
                    if (list == null) {
                        string = ProxyProperties.LOCAL_EXCL_LIST;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        boolean z2 = true;
                        for (String str2 : list) {
                            if (z2) {
                                z2 = false;
                            } else {
                                sb.append(",");
                            }
                            sb.append(str2.trim());
                        }
                        string = sb.toString();
                    }
                    android.net.Proxy.validate(hostName, Integer.toString(port), string);
                }
                return this.mService.setGlobalProxy(componentName, str, string, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
        return null;
    }

    public void setKeyguardDisabledFeatures(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setKeyguardDisabledFeatures(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setMaximumFailedPasswordsForWipe(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setMaximumFailedPasswordsForWipe(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setMaximumTimeToLock(ComponentName componentName, long j2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setMaximumTimeToLock(componentName, j2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordExpirationTimeout(ComponentName componentName, long j2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordExpirationTimeout(componentName, j2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordHistoryLength(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordHistoryLength(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordMinimumLength(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordMinimumLength(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordMinimumLetters(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordMinimumLetters(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordMinimumLowerCase(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordMinimumLowerCase(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordMinimumNonLetter(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordMinimumNonLetter(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordMinimumNumeric(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordMinimumNumeric(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordMinimumSymbols(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordMinimumSymbols(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordMinimumUpperCase(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordMinimumUpperCase(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void setPasswordQuality(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.setPasswordQuality(componentName, i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public int setStorageEncryption(ComponentName componentName, boolean z2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.setStorageEncryption(componentName, z2, UserHandle.myUserId());
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public void uninstallCaCert(byte[] bArr) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.uninstallCaCert(bArr);
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public void wipeData(int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager != null) {
            try {
                iDevicePolicyManager.wipeData(i2, UserHandle.myUserId());
            } catch (RemoteException e2) {
                Log.w(TAG, "Failed talking with device policy service", e2);
            }
        }
    }

    public boolean getCameraDisabled(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.getCameraDisabled(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return false;
        }
    }

    public int getKeyguardDisabledFeatures(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getKeyguardDisabledFeatures(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getMaximumFailedPasswordsForWipe(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getMaximumFailedPasswordsForWipe(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public long getMaximumTimeToLock(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0L;
        }
        try {
            return iDevicePolicyManager.getMaximumTimeToLock(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0L;
        }
    }

    public int getPasswordHistoryLength(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordHistoryLength(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getPasswordMinimumLength(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordMinimumLength(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getPasswordMinimumLetters(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordMinimumLetters(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getPasswordMinimumLowerCase(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordMinimumLowerCase(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getPasswordMinimumNonLetter(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordMinimumNonLetter(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getPasswordMinimumNumeric(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordMinimumNumeric(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getPasswordMinimumSymbols(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordMinimumSymbols(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getPasswordMinimumUpperCase(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordMinimumUpperCase(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getPasswordQuality(ComponentName componentName, int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getPasswordQuality(componentName, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public int getStorageEncryptionStatus(int i2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return 0;
        }
        try {
            return iDevicePolicyManager.getStorageEncryptionStatus(i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Failed talking with device policy service", e2);
            return 0;
        }
    }

    public boolean setDeviceOwner(String str, String str2) {
        IDevicePolicyManager iDevicePolicyManager = this.mService;
        if (iDevicePolicyManager == null) {
            return false;
        }
        try {
            return iDevicePolicyManager.setDeviceOwner(str, str2);
        } catch (RemoteException unused) {
            Log.w(TAG, "Failed to set device owner");
            return false;
        }
    }
}
