package android.content.pm;

import android.Manifest;
import android.accounts.GrantCredentialsPermissionActivity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.hardware.Camera;
import android.hardware.usb.UsbManager;
import android.net.ProxyProperties;
import android.net.http.CharArrayBuffers;
import android.os.Build;
import android.os.Bundle;
import android.os.PatternMatcher;
import android.os.UserHandle;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Slog;
import android.util.TypedValue;
import android.view.HapticFeedbackConstants;
import i.a;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import u.n;

/* JADX INFO: loaded from: classes.dex */
public class PackageParser {
    private static final String ANDROID_MANIFEST_FILENAME = "AndroidManifest.xml";
    private static final String ANDROID_RESOURCES = "http://schemas.android.com/apk/res/android";
    private static final boolean DEBUG_BACKUP = false;
    private static final boolean DEBUG_JAR = false;
    private static final boolean DEBUG_PARSER = false;
    public static final int PARSE_CHATTY = 2;
    private static final int PARSE_DEFAULT_INSTALL_LOCATION = -1;
    public static final int PARSE_FORWARD_LOCK = 16;
    public static final int PARSE_IGNORE_PROCESSES = 8;
    public static final int PARSE_IS_PRIVILEGED = 128;
    public static final int PARSE_IS_SYSTEM = 1;
    public static final int PARSE_IS_SYSTEM_DIR = 64;
    public static final int PARSE_MUST_BE_APK = 4;
    public static final int PARSE_ON_SDCARD = 32;
    private static final boolean RIGID_PARSER = false;
    private static final String SDK_CODENAME;
    private static final String TAG = "PackageParser";
    private static WeakReference<byte[]> mReadBuffer;
    private static final Object mSync;
    private static boolean sCompatibilityModeEnabled;
    private String mArchiveSourcePath;
    private boolean mOnlyCoreApps;
    private ParseComponentArgs mParseActivityAliasArgs;
    private ParseComponentArgs mParseActivityArgs;
    private int mParseError = 1;
    private ParsePackageItemArgs mParseInstrumentationArgs;
    private ParseComponentArgs mParseProviderArgs;
    private ParseComponentArgs mParseServiceArgs;
    private String[] mSeparateProcesses;
    public static final NewPermissionInfo[] NEW_PERMISSIONS = {new NewPermissionInfo(Manifest.permission.WRITE_EXTERNAL_STORAGE, 4, 0), new NewPermissionInfo(Manifest.permission.READ_PHONE_STATE, 4, 0)};
    public static final SplitPermissionInfo[] SPLIT_PERMISSIONS = {new SplitPermissionInfo(Manifest.permission.WRITE_EXTERNAL_STORAGE, new String[]{Manifest.permission.READ_EXTERNAL_STORAGE}, HapticFeedbackConstants.SAFE_MODE_ENABLED), new SplitPermissionInfo(Manifest.permission.READ_CONTACTS, new String[]{Manifest.permission.READ_CALL_LOG}, 16), new SplitPermissionInfo(Manifest.permission.WRITE_CONTACTS, new String[]{Manifest.permission.WRITE_CALL_LOG}, 16)};
    private static final int SDK_VERSION = Build.VERSION.SDK_INT;

    public static final class Activity extends Component<ActivityIntentInfo> {
        public final ActivityInfo info;

        public Activity(ParseComponentArgs parseComponentArgs, ActivityInfo activityInfo) {
            super(parseComponentArgs, (ComponentInfo) activityInfo);
            this.info = activityInfo;
            activityInfo.applicationInfo = parseComponentArgs.owner.applicationInfo;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Activity{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(CharArrayBuffers.uppercaseAddon);
            appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }
    }

    public static final class ActivityIntentInfo extends IntentInfo {
        public final Activity activity;

        public ActivityIntentInfo(Activity activity) {
            this.activity = activity;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ActivityIntentInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(CharArrayBuffers.uppercaseAddon);
            this.activity.appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }
    }

    public static final class Instrumentation extends Component {
        public final InstrumentationInfo info;

        public Instrumentation(ParsePackageItemArgs parsePackageItemArgs, InstrumentationInfo instrumentationInfo) {
            super(parsePackageItemArgs, instrumentationInfo);
            this.info = instrumentationInfo;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Instrumentation{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(CharArrayBuffers.uppercaseAddon);
            appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }
    }

    public static class IntentInfo extends IntentFilter {
        public boolean hasDefault;
        public int icon;
        public int labelRes;
        public int logo;
        public CharSequence nonLocalizedLabel;
        public int preferred;
    }

    public static class NewPermissionInfo {
        public final int fileVersion;
        public final String name;
        public final int sdkVersion;

        public NewPermissionInfo(String str, int i2, int i3) {
            this.name = str;
            this.sdkVersion = i2;
            this.fileVersion = i3;
        }
    }

    public static final class Package {
        public final ArrayList<Activity> activities;
        public final ApplicationInfo applicationInfo;
        public final ArrayList<ConfigurationInfo> configPreferences;
        public int installLocation;
        public final ArrayList<Instrumentation> instrumentation;
        public ArrayList<String> libraryNames;
        public ArrayList<String> mAdoptPermissions;
        public Bundle mAppMetaData;
        public boolean mDidDexOpt;
        public Object mExtras;
        public Map<String, Set<PublicKey>> mKeySetMapping;
        public boolean mOperationPending;
        public ArrayList<String> mOriginalPackages;
        public String mPath;
        public int mPreferredOrder;
        public String mRealPackage;
        public String mRequiredAccountType;
        public boolean mRequiredForAllUsers;
        public String mRestrictedAccountType;
        public String mScanPath;
        public String mSharedUserId;
        public int mSharedUserLabel;
        public Signature[] mSignatures;
        public Set<PublicKey> mSigningKeys;
        public int mVersionCode;
        public String mVersionName;
        public ManifestDigest manifestDigest;
        public String packageName;
        public final ArrayList<PermissionGroup> permissionGroups;
        public final ArrayList<Permission> permissions;
        public ArrayList<ActivityIntentInfo> preferredActivityFilters;
        public ArrayList<String> protectedBroadcasts;
        public final ArrayList<Provider> providers;
        public final ArrayList<Activity> receivers;
        public ArrayList<FeatureInfo> reqFeatures;
        public final ArrayList<String> requestedPermissions;
        public final ArrayList<Boolean> requestedPermissionsRequired;
        public final ArrayList<Service> services;
        public ArrayList<String> usesLibraries;
        public String[] usesLibraryFiles;
        public ArrayList<String> usesOptionalLibraries;

        public Package(String str) {
            ApplicationInfo applicationInfo = new ApplicationInfo();
            this.applicationInfo = applicationInfo;
            this.permissions = new ArrayList<>(0);
            this.permissionGroups = new ArrayList<>(0);
            this.activities = new ArrayList<>(0);
            this.receivers = new ArrayList<>(0);
            this.providers = new ArrayList<>(0);
            this.services = new ArrayList<>(0);
            this.instrumentation = new ArrayList<>(0);
            this.requestedPermissions = new ArrayList<>();
            this.requestedPermissionsRequired = new ArrayList<>();
            this.libraryNames = null;
            this.usesLibraries = null;
            this.usesOptionalLibraries = null;
            this.usesLibraryFiles = null;
            this.preferredActivityFilters = null;
            this.mOriginalPackages = null;
            this.mRealPackage = null;
            this.mAdoptPermissions = null;
            this.mAppMetaData = null;
            this.mPreferredOrder = 0;
            this.configPreferences = new ArrayList<>();
            this.reqFeatures = null;
            this.packageName = str;
            applicationInfo.packageName = str;
            applicationInfo.uid = -1;
        }

        public boolean hasComponentClassName(String str) {
            for (int size = this.activities.size() - 1; size >= 0; size--) {
                if (str.equals(this.activities.get(size).className)) {
                    return true;
                }
            }
            for (int size2 = this.receivers.size() - 1; size2 >= 0; size2--) {
                if (str.equals(this.receivers.get(size2).className)) {
                    return true;
                }
            }
            for (int size3 = this.providers.size() - 1; size3 >= 0; size3--) {
                if (str.equals(this.providers.get(size3).className)) {
                    return true;
                }
            }
            for (int size4 = this.services.size() - 1; size4 >= 0; size4--) {
                if (str.equals(this.services.get(size4).className)) {
                    return true;
                }
            }
            for (int size5 = this.instrumentation.size() - 1; size5 >= 0; size5--) {
                if (str.equals(this.instrumentation.get(size5).className)) {
                    return true;
                }
            }
            return false;
        }

        public void setPackageName(String str) {
            this.packageName = str;
            this.applicationInfo.packageName = str;
            for (int size = this.permissions.size() - 1; size >= 0; size--) {
                this.permissions.get(size).setPackageName(str);
            }
            for (int size2 = this.permissionGroups.size() - 1; size2 >= 0; size2--) {
                this.permissionGroups.get(size2).setPackageName(str);
            }
            for (int size3 = this.activities.size() - 1; size3 >= 0; size3--) {
                this.activities.get(size3).setPackageName(str);
            }
            for (int size4 = this.receivers.size() - 1; size4 >= 0; size4--) {
                this.receivers.get(size4).setPackageName(str);
            }
            for (int size5 = this.providers.size() - 1; size5 >= 0; size5--) {
                this.providers.get(size5).setPackageName(str);
            }
            for (int size6 = this.services.size() - 1; size6 >= 0; size6--) {
                this.services.get(size6).setPackageName(str);
            }
            for (int size7 = this.instrumentation.size() - 1; size7 >= 0; size7--) {
                this.instrumentation.get(size7).setPackageName(str);
            }
        }

        public String toString() {
            return "Package{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.packageName + "}";
        }
    }

    public static class PackageLite {
        public final int installLocation;
        public final String packageName;
        public final VerifierInfo[] verifiers;
        public final int versionCode;

        public PackageLite(String str, int i2, int i3, List<VerifierInfo> list) {
            this.packageName = str;
            this.versionCode = i2;
            this.installLocation = i3;
            this.verifiers = (VerifierInfo[]) list.toArray(new VerifierInfo[list.size()]);
        }
    }

    public static class ParseComponentArgs extends ParsePackageItemArgs {
        public final int descriptionRes;
        public final int enabledRes;
        public int flags;
        public final int processRes;
        public final String[] sepProcesses;

        public ParseComponentArgs(Package r1, String[] strArr, int i2, int i3, int i4, int i5, String[] strArr2, int i6, int i7, int i8) {
            super(r1, strArr, i2, i3, i4, i5);
            this.sepProcesses = strArr2;
            this.processRes = i6;
            this.descriptionRes = i7;
            this.enabledRes = i8;
        }
    }

    public static class ParsePackageItemArgs {
        public final int iconRes;
        public final int labelRes;
        public final int logoRes;
        public final int nameRes;
        public final String[] outError;
        public final Package owner;
        public TypedArray sa;
        public String tag;

        public ParsePackageItemArgs(Package r1, String[] strArr, int i2, int i3, int i4, int i5) {
            this.owner = r1;
            this.outError = strArr;
            this.nameRes = i2;
            this.labelRes = i3;
            this.iconRes = i4;
            this.logoRes = i5;
        }
    }

    public static final class ProviderIntentInfo extends IntentInfo {
        public final Provider provider;

        public ProviderIntentInfo(Provider provider) {
            this.provider = provider;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ProviderIntentInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(CharArrayBuffers.uppercaseAddon);
            this.provider.appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }
    }

    public static final class Service extends Component<ServiceIntentInfo> {
        public final ServiceInfo info;

        public Service(ParseComponentArgs parseComponentArgs, ServiceInfo serviceInfo) {
            super(parseComponentArgs, (ComponentInfo) serviceInfo);
            this.info = serviceInfo;
            serviceInfo.applicationInfo = parseComponentArgs.owner.applicationInfo;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Service{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(CharArrayBuffers.uppercaseAddon);
            appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }
    }

    public static final class ServiceIntentInfo extends IntentInfo {
        public final Service service;

        public ServiceIntentInfo(Service service) {
            this.service = service;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ServiceIntentInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(CharArrayBuffers.uppercaseAddon);
            this.service.appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }
    }

    public static class SplitPermissionInfo {
        public final String[] newPerms;
        public final String rootPerm;
        public final int targetSdk;

        public SplitPermissionInfo(String str, String[] strArr, int i2) {
            this.rootPerm = str;
            this.newPerms = strArr;
            this.targetSdk = i2;
        }
    }

    static {
        String str = Build.VERSION.CODENAME;
        if ("REL".equals(str)) {
            str = null;
        }
        SDK_CODENAME = str;
        mSync = new Object();
        sCompatibilityModeEnabled = true;
    }

    public PackageParser(String str) {
        this.mArchiveSourcePath = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String buildClassName(String str, CharSequence charSequence, String[] strArr) {
        if (charSequence == null || charSequence.length() <= 0) {
            strArr[0] = "Empty class name in package " + str;
            return null;
        }
        String string = charSequence.toString();
        char cCharAt = string.charAt(0);
        if (cCharAt == '.') {
            return (str + string).intern();
        }
        if (string.indexOf(46) < 0) {
            return (str + '.' + string).intern();
        }
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            return string.intern();
        }
        strArr[0] = "Bad class name " + string + " in package " + str;
        return null;
    }

    private static String buildCompoundName(String str, CharSequence charSequence, String str2, String[] strArr) {
        String string = charSequence.toString();
        char cCharAt = string.charAt(0);
        if (str == null || cCharAt != ':') {
            String strValidateName = validateName(string, true);
            if (strValidateName == null || "system".equals(string)) {
                return string.intern();
            }
            strArr[0] = "Invalid " + str2 + " name " + string + " in package " + str + ": " + strValidateName;
            return null;
        }
        if (string.length() < 2) {
            strArr[0] = "Bad " + str2 + " name " + string + " in package " + str + ": must be at least two characters";
            return null;
        }
        String strValidateName2 = validateName(string.substring(1), false);
        if (strValidateName2 == null) {
            return (str + string).intern();
        }
        strArr[0] = "Invalid " + str2 + " name " + string + " in package " + str + ": " + strValidateName2;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String buildProcessName(String str, String str2, CharSequence charSequence, int i2, String[] strArr, String[] strArr2) {
        if ((i2 & 8) != 0 && !"system".equals(charSequence)) {
            return str2 != null ? str2 : str;
        }
        if (strArr != null) {
            for (int length = strArr.length - 1; length >= 0; length--) {
                String str3 = strArr[length];
                if (str3.equals(str) || str3.equals(str2) || str3.equals(charSequence)) {
                    return str;
                }
            }
        }
        return (charSequence == null || charSequence.length() <= 0) ? str2 : buildCompoundName(str, charSequence, "process", strArr2);
    }

    private static String buildTaskAffinityName(String str, String str2, CharSequence charSequence, String[] strArr) {
        if (charSequence == null) {
            return str2;
        }
        if (charSequence.length() <= 0) {
            return null;
        }
        return buildCompoundName(str, charSequence, "taskAffinity", strArr);
    }

    private static boolean checkUseInstalledOrBlocked(int i2, PackageUserState packageUserState) {
        return (packageUserState.installed && !packageUserState.blocked) || (i2 & 8192) != 0;
    }

    private static boolean copyNeeded(int i2, Package r4, PackageUserState packageUserState, Bundle bundle, int i3) {
        if (i3 != 0) {
            return true;
        }
        int i4 = packageUserState.enabled;
        if (i4 != 0) {
            if (r4.applicationInfo.enabled != (i4 == 1)) {
                return true;
            }
        }
        if (!packageUserState.installed || packageUserState.blocked || packageUserState.stopped) {
            return true;
        }
        if ((i2 & 128) == 0 || (bundle == null && r4.mAppMetaData == null)) {
            return ((i2 & 1024) == 0 || r4.usesLibraryFiles == null) ? false : true;
        }
        return true;
    }

    public static final ActivityInfo generateActivityInfo(Activity activity, int i2, PackageUserState packageUserState, int i3) {
        if (activity == null || !checkUseInstalledOrBlocked(i2, packageUserState)) {
            return null;
        }
        if (!copyNeeded(i2, activity.owner, packageUserState, activity.metaData, i3)) {
            return activity.info;
        }
        ActivityInfo activityInfo = new ActivityInfo(activity.info);
        activityInfo.metaData = activity.metaData;
        activityInfo.applicationInfo = generateApplicationInfo(activity.owner, i2, packageUserState, i3);
        return activityInfo;
    }

    public static ApplicationInfo generateApplicationInfo(Package r1, int i2, PackageUserState packageUserState) {
        return generateApplicationInfo(r1, i2, packageUserState, UserHandle.getCallingUserId());
    }

    public static final InstrumentationInfo generateInstrumentationInfo(Instrumentation instrumentation, int i2) {
        if (instrumentation == null) {
            return null;
        }
        if ((i2 & 128) == 0) {
            return instrumentation.info;
        }
        InstrumentationInfo instrumentationInfo = new InstrumentationInfo(instrumentation.info);
        instrumentationInfo.metaData = instrumentation.metaData;
        return instrumentationInfo;
    }

    public static PackageInfo generatePackageInfo(Package r10, int[] iArr, int i2, long j2, long j3, HashSet<String> hashSet, PackageUserState packageUserState) {
        return generatePackageInfo(r10, iArr, i2, j2, j3, hashSet, packageUserState, UserHandle.getCallingUserId());
    }

    public static final PermissionGroupInfo generatePermissionGroupInfo(PermissionGroup permissionGroup, int i2) {
        if (permissionGroup == null) {
            return null;
        }
        if ((i2 & 128) == 0) {
            return permissionGroup.info;
        }
        PermissionGroupInfo permissionGroupInfo = new PermissionGroupInfo(permissionGroup.info);
        permissionGroupInfo.metaData = permissionGroup.metaData;
        return permissionGroupInfo;
    }

    public static final PermissionInfo generatePermissionInfo(Permission permission, int i2) {
        if (permission == null) {
            return null;
        }
        if ((i2 & 128) == 0) {
            return permission.info;
        }
        PermissionInfo permissionInfo = new PermissionInfo(permission.info);
        permissionInfo.metaData = permission.metaData;
        return permissionInfo;
    }

    public static final ProviderInfo generateProviderInfo(Provider provider, int i2, PackageUserState packageUserState, int i3) {
        if (provider == null || !checkUseInstalledOrBlocked(i2, packageUserState)) {
            return null;
        }
        if (!copyNeeded(i2, provider.owner, packageUserState, provider.metaData, i3) && ((i2 & 2048) != 0 || provider.info.uriPermissionPatterns == null)) {
            return provider.info;
        }
        ProviderInfo providerInfo = new ProviderInfo(provider.info);
        providerInfo.metaData = provider.metaData;
        if ((i2 & 2048) == 0) {
            providerInfo.uriPermissionPatterns = null;
        }
        providerInfo.applicationInfo = generateApplicationInfo(provider.owner, i2, packageUserState, i3);
        return providerInfo;
    }

    public static final ServiceInfo generateServiceInfo(Service service, int i2, PackageUserState packageUserState, int i3) {
        if (service == null || !checkUseInstalledOrBlocked(i2, packageUserState)) {
            return null;
        }
        if (!copyNeeded(i2, service.owner, packageUserState, service.metaData, i3)) {
            return service.info;
        }
        ServiceInfo serviceInfo = new ServiceInfo(service.info);
        serviceInfo.metaData = service.metaData;
        serviceInfo.applicationInfo = generateApplicationInfo(service.owner, i2, packageUserState, i3);
        return serviceInfo;
    }

    public static boolean isAvailable(PackageUserState packageUserState) {
        return checkUseInstalledOrBlocked(0, packageUserState);
    }

    private static final boolean isPackageFilename(String str) {
        return str.endsWith(".apk");
    }

    private Certificate[] loadCertificates(JarFile jarFile, JarEntry jarEntry, byte[] bArr) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(jarFile.getInputStream(jarEntry));
            while (bufferedInputStream.read(bArr, 0, bArr.length) != -1) {
            }
            bufferedInputStream.close();
            if (jarEntry != null) {
                return jarEntry.getCertificates();
            }
            return null;
        } catch (IOException e2) {
            Slog.w(TAG, "Exception reading " + jarEntry.getName() + " in " + jarFile.getName(), e2);
            return null;
        } catch (RuntimeException e3) {
            Slog.w(TAG, "Exception reading " + jarEntry.getName() + " in " + jarFile.getName(), e3);
            return null;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private Activity parseActivity(Package r20, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, String[] strArr, boolean z2, boolean z3) throws XmlPullParserException, IOException {
        int i3;
        Package r11;
        Package r6 = r20;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestActivity);
        if (this.mParseActivityArgs == null) {
            this.mParseActivityArgs = new ParseComponentArgs(r20, strArr, 3, 1, 2, 23, this.mSeparateProcesses, 7, 17, 5);
        }
        ParseComponentArgs parseComponentArgs = this.mParseActivityArgs;
        parseComponentArgs.tag = z2 ? "<receiver>" : "<activity>";
        parseComponentArgs.sa = typedArrayObtainAttributes;
        parseComponentArgs.flags = i2;
        Activity activity = new Activity(parseComponentArgs, new ActivityInfo());
        if (strArr[0] != null) {
            typedArrayObtainAttributes.recycle();
            return null;
        }
        boolean zHasValue = typedArrayObtainAttributes.hasValue(6);
        if (zHasValue) {
            activity.info.exported = typedArrayObtainAttributes.getBoolean(6, false);
        }
        activity.info.theme = typedArrayObtainAttributes.getResourceId(0, 0);
        ActivityInfo activityInfo = activity.info;
        activityInfo.uiOptions = typedArrayObtainAttributes.getInt(26, activityInfo.applicationInfo.uiOptions);
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(27, 1024);
        if (nonConfigurationString != null) {
            String strBuildClassName = buildClassName(activity.info.packageName, nonConfigurationString, strArr);
            if (strArr[0] == null) {
                activity.info.parentActivityName = strBuildClassName;
            } else {
                Log.e(TAG, "Activity " + activity.info.name + " specified invalid parentActivityName " + nonConfigurationString);
                strArr[0] = null;
            }
        }
        String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(4, 0);
        if (nonConfigurationString2 == null) {
            activity.info.permission = r6.applicationInfo.permission;
        } else {
            activity.info.permission = nonConfigurationString2.length() > 0 ? nonConfigurationString2.intern() : null;
        }
        String nonConfigurationString3 = typedArrayObtainAttributes.getNonConfigurationString(8, 1024);
        ActivityInfo activityInfo2 = activity.info;
        ApplicationInfo applicationInfo = r6.applicationInfo;
        activityInfo2.taskAffinity = buildTaskAffinityName(applicationInfo.packageName, applicationInfo.taskAffinity, nonConfigurationString3, strArr);
        activity.info.flags = 0;
        int i4 = 1;
        if (typedArrayObtainAttributes.getBoolean(9, false)) {
            activity.info.flags |= 1;
        }
        if (typedArrayObtainAttributes.getBoolean(10, false)) {
            activity.info.flags |= 2;
        }
        if (typedArrayObtainAttributes.getBoolean(11, false)) {
            activity.info.flags |= 4;
        }
        if (typedArrayObtainAttributes.getBoolean(21, false)) {
            activity.info.flags |= 128;
        }
        if (typedArrayObtainAttributes.getBoolean(18, false)) {
            ActivityInfo activityInfo3 = activity.info;
            activityInfo3.flags = 8 | activityInfo3.flags;
        }
        if (typedArrayObtainAttributes.getBoolean(12, false)) {
            activity.info.flags |= 16;
        }
        if (typedArrayObtainAttributes.getBoolean(13, false)) {
            activity.info.flags |= 32;
        }
        if (typedArrayObtainAttributes.getBoolean(19, (r6.applicationInfo.flags & 32) != 0)) {
            activity.info.flags |= 64;
        }
        if (typedArrayObtainAttributes.getBoolean(22, false)) {
            activity.info.flags |= 256;
        }
        if (typedArrayObtainAttributes.getBoolean(29, false)) {
            activity.info.flags |= 1024;
        }
        if (typedArrayObtainAttributes.getBoolean(24, false)) {
            activity.info.flags |= 2048;
        }
        if (z2) {
            ActivityInfo activityInfo4 = activity.info;
            activityInfo4.launchMode = 0;
            activityInfo4.configChanges = 0;
        } else {
            if (typedArrayObtainAttributes.getBoolean(25, z3)) {
                activity.info.flags |= 512;
            }
            activity.info.launchMode = typedArrayObtainAttributes.getInt(14, 0);
            activity.info.screenOrientation = typedArrayObtainAttributes.getInt(15, -1);
            activity.info.configChanges = typedArrayObtainAttributes.getInt(16, 0);
            activity.info.softInputMode = typedArrayObtainAttributes.getInt(20, 0);
        }
        if (z2) {
            if (typedArrayObtainAttributes.getBoolean(28, false)) {
                ActivityInfo activityInfo5 = activity.info;
                activityInfo5.flags |= 1073741824;
                if (activityInfo5.exported) {
                    Slog.w(TAG, "Activity exported request ignored due to singleUser: " + activity.className + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                    activity.info.exported = false;
                }
                zHasValue = true;
            }
            if (typedArrayObtainAttributes.getBoolean(30, false)) {
                activity.info.flags |= 536870912;
            }
        }
        boolean z4 = zHasValue;
        typedArrayObtainAttributes.recycle();
        if (z2 && (r6.applicationInfo.flags & 268435456) != 0 && activity.info.processName == r6.packageName) {
            strArr[0] = "Heavy-weight applications can not have receivers in main process";
        }
        if (strArr[0] != null) {
            return null;
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == i4 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                if (!z4) {
                    activity.info.exported = activity.intents.size() > 0;
                }
                return activity;
            }
            if (next != 3) {
                if (next != 4) {
                    if (xmlPullParser.getName().equals("intent-filter")) {
                        ActivityIntentInfo activityIntentInfo = new ActivityIntentInfo(activity);
                        i3 = depth;
                        r11 = r6;
                        if (!parseIntent(resources, xmlPullParser, attributeSet, true, activityIntentInfo, strArr)) {
                            return null;
                        }
                        if (activityIntentInfo.countActions() == 0) {
                            Slog.w(TAG, "No actions in intent filter at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                        } else {
                            activity.intents.add(activityIntentInfo);
                        }
                    } else {
                        i3 = depth;
                        r11 = r6;
                        if (!z2 && xmlPullParser.getName().equals("preferred")) {
                            ActivityIntentInfo activityIntentInfo2 = new ActivityIntentInfo(activity);
                            if (!parseIntent(resources, xmlPullParser, attributeSet, false, activityIntentInfo2, strArr)) {
                                return null;
                            }
                            if (activityIntentInfo2.countActions() == 0) {
                                Slog.w(TAG, "No actions in preferred at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                            } else {
                                if (r11.preferredActivityFilters == null) {
                                    r11.preferredActivityFilters = new ArrayList<>();
                                }
                                r11.preferredActivityFilters.add(activityIntentInfo2);
                            }
                        } else if (xmlPullParser.getName().equals("meta-data")) {
                            Bundle metaData = parseMetaData(resources, xmlPullParser, attributeSet, activity.metaData, strArr);
                            activity.metaData = metaData;
                            if (metaData == null) {
                                return null;
                            }
                        } else {
                            Slog.w(TAG, "Problem in package " + this.mArchiveSourcePath + ":");
                            if (z2) {
                                Slog.w(TAG, "Unknown element under <receiver>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                            } else {
                                Slog.w(TAG, "Unknown element under <activity>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                            }
                            n.p(xmlPullParser);
                        }
                    }
                    r6 = r11;
                    depth = i3;
                }
            }
            i4 = 1;
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r15v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v1 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v1 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v1 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v2 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v2 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v2 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v3 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v3 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v3 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v4 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v4 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v4 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v5 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v5 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v5 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v7 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v7 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r15v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r15v7 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v1 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v1 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v1 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v1 ??, new type: android.content.res.TypedArray
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r24v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r24v0 ??, new type: android.content.res.Resources
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r24v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r24v0 ??, new type: android.content.res.Resources
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r24v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r24v0 ??, new type: android.content.res.Resources
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v3 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v3 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v3 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v3 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r24v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r24v0 ??, new type: android.content.res.Resources
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:319)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r24v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r24v0 ??, new type: android.content.res.Resources
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:330)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r24v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r24v0 ??, new type: android.content.res.Resources
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v3 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        */
    private android.content.pm.PackageParser.Activity parseActivityAlias(android.content.pm.PackageParser.Package r23, android.content.res.Resources r24, org.xmlpull.v1.XmlPullParser r25, android.util.AttributeSet r26, int r27, java.lang.String[] r28) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.content.pm.PackageParser.parseActivityAlias(android.content.pm.PackageParser$Package, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, int, java.lang.String[]):android.content.pm.PackageParser$Activity");
    }

    private boolean parseAllMetaData(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, String str, Component component, String[] strArr) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlPullParser.getName().equals("meta-data")) {
                    Bundle metaData = parseMetaData(resources, xmlPullParser, attributeSet, component.metaData, strArr);
                    component.metaData = metaData;
                    if (metaData == null) {
                        return false;
                    }
                } else {
                    Slog.w(TAG, "Unknown element under " + str + ": " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                    n.p(xmlPullParser);
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean parseApplication(Package r22, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, String[] strArr) throws XmlPullParserException, IOException {
        int i3;
        int i4;
        int i5;
        int i6;
        ApplicationInfo applicationInfo = r22.applicationInfo;
        String str = applicationInfo.packageName;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestApplication);
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(3, 0);
        if (nonConfigurationString != null) {
            String strBuildClassName = buildClassName(str, nonConfigurationString, strArr);
            applicationInfo.className = strBuildClassName;
            if (strBuildClassName == null) {
                typedArrayObtainAttributes.recycle();
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                return false;
            }
        }
        int i7 = 4;
        String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(4, 1024);
        if (nonConfigurationString2 != null) {
            applicationInfo.manageSpaceActivityName = buildClassName(str, nonConfigurationString2, strArr);
        }
        if (typedArrayObtainAttributes.getBoolean(17, true)) {
            applicationInfo.flags |= 32768;
            String nonConfigurationString3 = typedArrayObtainAttributes.getNonConfigurationString(16, 1024);
            if (nonConfigurationString3 != null) {
                applicationInfo.backupAgentName = buildClassName(str, nonConfigurationString3, strArr);
                if (typedArrayObtainAttributes.getBoolean(18, true)) {
                    applicationInfo.flags |= 65536;
                }
                if (typedArrayObtainAttributes.getBoolean(21, false)) {
                    applicationInfo.flags |= 131072;
                }
            }
        }
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(1);
        if (typedValuePeekValue != null) {
            int i8 = typedValuePeekValue.resourceId;
            applicationInfo.labelRes = i8;
            if (i8 == 0) {
                applicationInfo.nonLocalizedLabel = typedValuePeekValue.coerceToString();
            }
        }
        applicationInfo.icon = typedArrayObtainAttributes.getResourceId(2, 0);
        applicationInfo.logo = typedArrayObtainAttributes.getResourceId(22, 0);
        applicationInfo.theme = typedArrayObtainAttributes.getResourceId(0, 0);
        applicationInfo.descriptionRes = typedArrayObtainAttributes.getResourceId(13, 0);
        if ((i2 & 1) != 0 && typedArrayObtainAttributes.getBoolean(8, false)) {
            applicationInfo.flags |= 8;
        }
        if (typedArrayObtainAttributes.getBoolean(27, false)) {
            r22.mRequiredForAllUsers = true;
        }
        String string = typedArrayObtainAttributes.getString(28);
        if (string != null && string.length() > 0) {
            r22.mRestrictedAccountType = string;
        }
        String string2 = typedArrayObtainAttributes.getString(29);
        if (string2 != null && string2.length() > 0) {
            r22.mRequiredAccountType = string2;
        }
        if (typedArrayObtainAttributes.getBoolean(10, false)) {
            applicationInfo.flags = 2 | applicationInfo.flags;
        }
        if (typedArrayObtainAttributes.getBoolean(20, false)) {
            applicationInfo.flags |= 16384;
        }
        boolean z2 = typedArrayObtainAttributes.getBoolean(23, r22.applicationInfo.targetSdkVersion >= 14);
        if (typedArrayObtainAttributes.getBoolean(7, true)) {
            applicationInfo.flags |= 4;
        }
        if (typedArrayObtainAttributes.getBoolean(14, false)) {
            applicationInfo.flags |= 32;
        }
        if (typedArrayObtainAttributes.getBoolean(5, true)) {
            applicationInfo.flags |= 64;
        }
        if (typedArrayObtainAttributes.getBoolean(15, false)) {
            applicationInfo.flags |= 256;
        }
        if (typedArrayObtainAttributes.getBoolean(24, false)) {
            applicationInfo.flags |= 1048576;
        }
        if (typedArrayObtainAttributes.getBoolean(26, false)) {
            applicationInfo.flags |= 4194304;
        }
        String nonConfigurationString4 = typedArrayObtainAttributes.getNonConfigurationString(6, 0);
        applicationInfo.permission = (nonConfigurationString4 == null || nonConfigurationString4.length() <= 0) ? null : nonConfigurationString4.intern();
        String nonConfigurationString5 = r22.applicationInfo.targetSdkVersion >= 8 ? typedArrayObtainAttributes.getNonConfigurationString(12, 1024) : typedArrayObtainAttributes.getNonResourceString(12);
        String str2 = applicationInfo.packageName;
        applicationInfo.taskAffinity = buildTaskAffinityName(str2, str2, nonConfigurationString5, strArr);
        if (strArr[0] == null) {
            i3 = 1;
            applicationInfo.processName = buildProcessName(applicationInfo.packageName, null, r22.applicationInfo.targetSdkVersion >= 8 ? typedArrayObtainAttributes.getNonConfigurationString(11, 1024) : typedArrayObtainAttributes.getNonResourceString(11), i2, this.mSeparateProcesses, strArr);
            applicationInfo.enabled = typedArrayObtainAttributes.getBoolean(9, true);
        } else {
            i3 = 1;
        }
        applicationInfo.uiOptions = typedArrayObtainAttributes.getInt(25, 0);
        typedArrayObtainAttributes.recycle();
        if (strArr[0] != null) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        int i9 = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == i3 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                return i3;
            }
            if (next != 3 && next != i7) {
                String name = xmlPullParser.getName();
                if (name.equals(Context.ACTIVITY_SERVICE)) {
                    i4 = depth;
                    i5 = i9;
                    Activity activity = parseActivity(r22, resources, xmlPullParser, attributeSet, i2, strArr, false, z2);
                    if (activity == null) {
                        this.mParseError = i5;
                        return false;
                    }
                    r22.activities.add(activity);
                } else {
                    i4 = depth;
                    i5 = i9;
                    if (name.equals("receiver")) {
                        Activity activity2 = parseActivity(r22, resources, xmlPullParser, attributeSet, i2, strArr, true, false);
                        if (activity2 == null) {
                            this.mParseError = i5;
                            return false;
                        }
                        r22.receivers.add(activity2);
                    } else if (name.equals("service")) {
                        Service service = parseService(r22, resources, xmlPullParser, attributeSet, i2, strArr);
                        if (service == null) {
                            this.mParseError = i5;
                            return false;
                        }
                        r22.services.add(service);
                    } else if (name.equals("provider")) {
                        Provider provider = parseProvider(r22, resources, xmlPullParser, attributeSet, i2, strArr);
                        if (provider == null) {
                            this.mParseError = i5;
                            return false;
                        }
                        r22.providers.add(provider);
                    } else if (name.equals("activity-alias")) {
                        Activity activityAlias = parseActivityAlias(r22, resources, xmlPullParser, attributeSet, i2, strArr);
                        if (activityAlias == null) {
                            this.mParseError = i5;
                            return false;
                        }
                        r22.activities.add(activityAlias);
                    } else if (xmlPullParser.getName().equals("meta-data")) {
                        Bundle metaData = parseMetaData(resources, xmlPullParser, attributeSet, r22.mAppMetaData, strArr);
                        r22.mAppMetaData = metaData;
                        if (metaData == null) {
                            this.mParseError = i5;
                            return false;
                        }
                    } else {
                        if (name.equals("library")) {
                            TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, a.AndroidManifestLibrary);
                            String nonResourceString = typedArrayObtainAttributes2.getNonResourceString(0);
                            typedArrayObtainAttributes2.recycle();
                            if (nonResourceString != null) {
                                if (r22.libraryNames == null) {
                                    r22.libraryNames = new ArrayList<>();
                                }
                                if (!r22.libraryNames.contains(nonResourceString)) {
                                    r22.libraryNames.add(nonResourceString.intern());
                                }
                            }
                            n.p(xmlPullParser);
                        } else if (name.equals("uses-library")) {
                            TypedArray typedArrayObtainAttributes3 = resources.obtainAttributes(attributeSet, a.AndroidManifestUsesLibrary);
                            String nonResourceString2 = typedArrayObtainAttributes3.getNonResourceString(0);
                            i6 = 1;
                            boolean z3 = typedArrayObtainAttributes3.getBoolean(1, true);
                            typedArrayObtainAttributes3.recycle();
                            if (nonResourceString2 != null) {
                                if (z3) {
                                    if (r22.usesLibraries == null) {
                                        r22.usesLibraries = new ArrayList<>();
                                    }
                                    if (!r22.usesLibraries.contains(nonResourceString2)) {
                                        r22.usesLibraries.add(nonResourceString2.intern());
                                    }
                                } else {
                                    if (r22.usesOptionalLibraries == null) {
                                        r22.usesOptionalLibraries = new ArrayList<>();
                                    }
                                    if (!r22.usesOptionalLibraries.contains(nonResourceString2)) {
                                        r22.usesOptionalLibraries.add(nonResourceString2.intern());
                                    }
                                }
                            }
                            n.p(xmlPullParser);
                        } else {
                            i6 = 1;
                            if (name.equals("uses-package")) {
                                n.p(xmlPullParser);
                            } else {
                                Slog.w(TAG, "Unknown element under <application>: " + name + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                                n.p(xmlPullParser);
                            }
                        }
                        i3 = i6;
                        i9 = i5;
                        depth = i4;
                        i7 = 4;
                    }
                }
                i6 = 1;
                i3 = i6;
                i9 = i5;
                depth = i4;
                i7 = 4;
            }
        }
    }

    private Instrumentation parseInstrumentation(Package r15, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, String[] strArr) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestInstrumentation);
        if (this.mParseInstrumentationArgs == null) {
            ParsePackageItemArgs parsePackageItemArgs = new ParsePackageItemArgs(r15, strArr, 2, 0, 1, 6);
            this.mParseInstrumentationArgs = parsePackageItemArgs;
            parsePackageItemArgs.tag = "<instrumentation>";
        }
        ParsePackageItemArgs parsePackageItemArgs2 = this.mParseInstrumentationArgs;
        parsePackageItemArgs2.sa = typedArrayObtainAttributes;
        Instrumentation instrumentation = new Instrumentation(parsePackageItemArgs2, new InstrumentationInfo());
        if (strArr[0] != null) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        String nonResourceString = typedArrayObtainAttributes.getNonResourceString(3);
        instrumentation.info.targetPackage = nonResourceString != null ? nonResourceString.intern() : null;
        instrumentation.info.handleProfiling = typedArrayObtainAttributes.getBoolean(4, false);
        instrumentation.info.functionalTest = typedArrayObtainAttributes.getBoolean(5, false);
        typedArrayObtainAttributes.recycle();
        if (instrumentation.info.targetPackage == null) {
            strArr[0] = "<instrumentation> does not specify targetPackage";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        if (parseAllMetaData(resources, xmlPullParser, attributeSet, "<instrumentation>", instrumentation, strArr)) {
            r15.instrumentation.add(instrumentation);
            return instrumentation;
        }
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return null;
    }

    private boolean parseIntent(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, boolean z2, IntentInfo intentInfo, String[] strArr) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestIntentFilter);
        intentInfo.setPriority(typedArrayObtainAttributes.getInt(2, 0));
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(0);
        if (typedValuePeekValue != null) {
            int i2 = typedValuePeekValue.resourceId;
            intentInfo.labelRes = i2;
            if (i2 == 0) {
                intentInfo.nonLocalizedLabel = typedValuePeekValue.coerceToString();
            }
        }
        intentInfo.icon = typedArrayObtainAttributes.getResourceId(1, 0);
        intentInfo.logo = typedArrayObtainAttributes.getResourceId(3, 0);
        typedArrayObtainAttributes.recycle();
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3) {
                if (next == 4) {
                    continue;
                } else {
                    String name = xmlPullParser.getName();
                    if (name.equals(Camera.Parameters.SCENE_MODE_ACTION)) {
                        String attributeValue = attributeSet.getAttributeValue(ANDROID_RESOURCES, "name");
                        if (attributeValue == null || attributeValue == ProxyProperties.LOCAL_EXCL_LIST) {
                            strArr[0] = "No value supplied for <android:name>";
                            return false;
                        }
                        n.p(xmlPullParser);
                        intentInfo.addAction(attributeValue);
                    } else if (name.equals("category")) {
                        String attributeValue2 = attributeSet.getAttributeValue(ANDROID_RESOURCES, "name");
                        if (attributeValue2 == null || attributeValue2 == ProxyProperties.LOCAL_EXCL_LIST) {
                            strArr[0] = "No value supplied for <android:name>";
                            return false;
                        }
                        n.p(xmlPullParser);
                        intentInfo.addCategory(attributeValue2);
                    } else if (name.equals("data")) {
                        TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, a.AndroidManifestData);
                        String nonConfigurationString = typedArrayObtainAttributes2.getNonConfigurationString(0, 0);
                        if (nonConfigurationString != null) {
                            try {
                                intentInfo.addDataType(nonConfigurationString);
                            } catch (IntentFilter.MalformedMimeTypeException e2) {
                                strArr[0] = e2.toString();
                                typedArrayObtainAttributes2.recycle();
                                return false;
                            }
                        }
                        String nonConfigurationString2 = typedArrayObtainAttributes2.getNonConfigurationString(1, 0);
                        if (nonConfigurationString2 != null) {
                            intentInfo.addDataScheme(nonConfigurationString2);
                        }
                        String nonConfigurationString3 = typedArrayObtainAttributes2.getNonConfigurationString(7, 0);
                        if (nonConfigurationString3 != null) {
                            intentInfo.addDataSchemeSpecificPart(nonConfigurationString3, 0);
                        }
                        String nonConfigurationString4 = typedArrayObtainAttributes2.getNonConfigurationString(8, 0);
                        if (nonConfigurationString4 != null) {
                            intentInfo.addDataSchemeSpecificPart(nonConfigurationString4, 1);
                        }
                        String nonConfigurationString5 = typedArrayObtainAttributes2.getNonConfigurationString(9, 0);
                        if (nonConfigurationString5 != null) {
                            if (!z2) {
                                strArr[0] = "sspPattern not allowed here; ssp must be literal";
                                return false;
                            }
                            intentInfo.addDataSchemeSpecificPart(nonConfigurationString5, 2);
                        }
                        String nonConfigurationString6 = typedArrayObtainAttributes2.getNonConfigurationString(2, 0);
                        String nonConfigurationString7 = typedArrayObtainAttributes2.getNonConfigurationString(3, 0);
                        if (nonConfigurationString6 != null) {
                            intentInfo.addDataAuthority(nonConfigurationString6, nonConfigurationString7);
                        }
                        String nonConfigurationString8 = typedArrayObtainAttributes2.getNonConfigurationString(4, 0);
                        if (nonConfigurationString8 != null) {
                            intentInfo.addDataPath(nonConfigurationString8, 0);
                        }
                        String nonConfigurationString9 = typedArrayObtainAttributes2.getNonConfigurationString(5, 0);
                        if (nonConfigurationString9 != null) {
                            intentInfo.addDataPath(nonConfigurationString9, 1);
                        }
                        String nonConfigurationString10 = typedArrayObtainAttributes2.getNonConfigurationString(6, 0);
                        if (nonConfigurationString10 != null) {
                            if (!z2) {
                                strArr[0] = "pathPattern not allowed here; path must be literal";
                                return false;
                            }
                            intentInfo.addDataPath(nonConfigurationString10, 2);
                        }
                        typedArrayObtainAttributes2.recycle();
                        n.p(xmlPullParser);
                    } else {
                        Slog.w(TAG, "Unknown element under <intent-filter>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                        n.p(xmlPullParser);
                    }
                }
            }
        }
        intentInfo.hasDefault = intentInfo.hasCategory(Intent.CATEGORY_DEFAULT);
        return true;
    }

    private boolean parseKeys(Package r10, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, String[] strArr) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        HashMap map = new HashMap();
        loop0: while (true) {
            int depth2 = -1;
            PublicKey publicKey = null;
            while (true) {
                int next = xmlPullParser.next();
                if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                    break loop0;
                }
                if (next == 3) {
                    if (xmlPullParser.getDepth() == depth2) {
                        break;
                    }
                } else {
                    String name = xmlPullParser.getName();
                    if (name.equals("publicKey")) {
                        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.PublicKey);
                        PublicKey publicKey2 = parsePublicKey(typedArrayObtainAttributes.getNonResourceString(0));
                        if (publicKey2 == null) {
                            Slog.w(TAG, "No valid key in 'publicKey' tag at " + xmlPullParser.getPositionDescription());
                            typedArrayObtainAttributes.recycle();
                        } else {
                            depth2 = xmlPullParser.getDepth();
                            map.put(publicKey2, new HashSet());
                            typedArrayObtainAttributes.recycle();
                        }
                        publicKey = publicKey2;
                    } else if (!name.equals("keyset")) {
                        Slog.w(TAG, "Unknown element under <keys>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                        n.p(xmlPullParser);
                    } else if (publicKey == null) {
                        Slog.i(TAG, "'keyset' not in 'publicKey' tag at " + xmlPullParser.getPositionDescription());
                    } else {
                        TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, a.KeySet);
                        ((Set) map.get(publicKey)).add(typedArrayObtainAttributes2.getNonResourceString(0));
                        typedArrayObtainAttributes2.recycle();
                    }
                }
            }
        }
        r10.mKeySetMapping = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            PublicKey publicKey3 = (PublicKey) entry.getKey();
            for (String str : (Set) entry.getValue()) {
                if (r10.mKeySetMapping.containsKey(str)) {
                    r10.mKeySetMapping.get(str).add(publicKey3);
                } else {
                    HashSet hashSet = new HashSet();
                    hashSet.add(publicKey3);
                    r10.mKeySetMapping.put(str, hashSet);
                }
            }
        }
        return true;
    }

    private Bundle parseMetaData(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Bundle bundle, String[] strArr) {
        int i2;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestMetaData);
        if (bundle == null) {
            bundle = new Bundle();
        }
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(0, 0);
        if (nonConfigurationString == null) {
            strArr[0] = "<meta-data> requires an android:name attribute";
            typedArrayObtainAttributes.recycle();
            return null;
        }
        String strIntern = nonConfigurationString.intern();
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(2);
        if (typedValuePeekValue == null || (i2 = typedValuePeekValue.resourceId) == 0) {
            TypedValue typedValuePeekValue2 = typedArrayObtainAttributes.peekValue(1);
            if (typedValuePeekValue2 != null) {
                int i3 = typedValuePeekValue2.type;
                if (i3 == 3) {
                    CharSequence charSequenceCoerceToString = typedValuePeekValue2.coerceToString();
                    bundle.putString(strIntern, charSequenceCoerceToString != null ? charSequenceCoerceToString.toString().intern() : null);
                } else if (i3 == 18) {
                    bundle.putBoolean(strIntern, typedValuePeekValue2.data != 0);
                } else if (i3 >= 16 && i3 <= 31) {
                    bundle.putInt(strIntern, typedValuePeekValue2.data);
                } else if (i3 == 4) {
                    bundle.putFloat(strIntern, typedValuePeekValue2.getFloat());
                } else {
                    Slog.w(TAG, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                }
            } else {
                strArr[0] = "<meta-data> requires an android:value or android:resource attribute";
                bundle = null;
            }
        } else {
            bundle.putInt(strIntern, i2);
        }
        typedArrayObtainAttributes.recycle();
        n.p(xmlPullParser);
        return bundle;
    }

    private boolean parsePackageItemInfo(Package r2, PackageItemInfo packageItemInfo, String[] strArr, String str, TypedArray typedArray, int i2, int i3, int i4, int i5) {
        String nonConfigurationString = typedArray.getNonConfigurationString(i2, 0);
        if (nonConfigurationString == null) {
            strArr[0] = str + " does not specify android:name";
            return false;
        }
        String strBuildClassName = buildClassName(r2.applicationInfo.packageName, nonConfigurationString, strArr);
        packageItemInfo.name = strBuildClassName;
        if (strBuildClassName == null) {
            return false;
        }
        int resourceId = typedArray.getResourceId(i4, 0);
        if (resourceId != 0) {
            packageItemInfo.icon = resourceId;
            packageItemInfo.nonLocalizedLabel = null;
        }
        int resourceId2 = typedArray.getResourceId(i5, 0);
        if (resourceId2 != 0) {
            packageItemInfo.logo = resourceId2;
        }
        TypedValue typedValuePeekValue = typedArray.peekValue(i3);
        if (typedValuePeekValue != null) {
            int i6 = typedValuePeekValue.resourceId;
            packageItemInfo.labelRes = i6;
            if (i6 == 0) {
                packageItemInfo.nonLocalizedLabel = typedValuePeekValue.coerceToString();
            }
        }
        packageItemInfo.packageName = r2.packageName;
        return true;
    }

    public static PackageLite parsePackageLite(String str, int i2) {
        AssetManager assetManager;
        PackageLite packageLite;
        try {
            assetManager = new AssetManager();
            try {
                try {
                    assetManager.setConfiguration(0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Build.VERSION.RESOURCES_SDK_INT);
                    int iAddAssetPath = assetManager.addAssetPath(str);
                    if (iAddAssetPath == 0) {
                        return null;
                    }
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    displayMetrics.setToDefaults();
                    Resources resources = new Resources(assetManager, displayMetrics, null);
                    XmlResourceParser xmlResourceParserOpenXmlResourceParser = assetManager.openXmlResourceParser(iAddAssetPath, ANDROID_MANIFEST_FILENAME);
                    String[] strArr = new String[1];
                    try {
                        try {
                            try {
                                packageLite = parsePackageLite(resources, xmlResourceParserOpenXmlResourceParser, xmlResourceParserOpenXmlResourceParser, i2, strArr);
                                if (xmlResourceParserOpenXmlResourceParser != null) {
                                    xmlResourceParserOpenXmlResourceParser.close();
                                }
                                assetManager.close();
                            } catch (Throwable th) {
                                if (xmlResourceParserOpenXmlResourceParser != null) {
                                    xmlResourceParserOpenXmlResourceParser.close();
                                }
                                assetManager.close();
                                throw th;
                            }
                        } catch (XmlPullParserException e2) {
                            Slog.w(TAG, str, e2);
                            if (xmlResourceParserOpenXmlResourceParser != null) {
                                xmlResourceParserOpenXmlResourceParser.close();
                            }
                            assetManager.close();
                            packageLite = null;
                        }
                    } catch (IOException e3) {
                        Slog.w(TAG, str, e3);
                        if (xmlResourceParserOpenXmlResourceParser != null) {
                            xmlResourceParserOpenXmlResourceParser.close();
                        }
                        assetManager.close();
                        packageLite = null;
                    }
                    if (packageLite != null) {
                        return packageLite;
                    }
                    Slog.e(TAG, "parsePackageLite error: " + strArr[0]);
                    return null;
                } catch (Exception e4) {
                    e = e4;
                    assetManager = assetManager;
                    if (assetManager != null) {
                        assetManager.close();
                    }
                    Slog.w(TAG, "Unable to read AndroidManifest.xml of " + str, e);
                    return null;
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Exception e6) {
            e = e6;
            assetManager = null;
        }
    }

    private static String parsePackageName(XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, String[] strArr) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            strArr[0] = "No start tag found";
            return null;
        }
        if (!xmlPullParser.getName().equals("manifest")) {
            strArr[0] = "No <manifest> tag";
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "package");
        if (attributeValue == null || attributeValue.length() == 0) {
            strArr[0] = "<manifest> does not specify package";
            return null;
        }
        String strValidateName = validateName(attributeValue, true);
        if (strValidateName == null || "android".equals(attributeValue)) {
            return attributeValue.intern();
        }
        strArr[0] = "<manifest> specifies bad package name \"" + attributeValue + "\": " + strValidateName;
        return null;
    }

    private Permission parsePermission(Package r17, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, String[] strArr) {
        Permission permission = new Permission(r17);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestPermission);
        if (!parsePackageItemInfo(r17, permission.info, strArr, "<permission>", typedArrayObtainAttributes, 2, 0, 1, 6)) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        permission.info.group = typedArrayObtainAttributes.getNonResourceString(4);
        PermissionInfo permissionInfo = permission.info;
        String str = permissionInfo.group;
        if (str != null) {
            permissionInfo.group = str.intern();
        }
        permission.info.descriptionRes = typedArrayObtainAttributes.getResourceId(5, 0);
        permission.info.protectionLevel = typedArrayObtainAttributes.getInt(3, 0);
        permission.info.flags = typedArrayObtainAttributes.getInt(7, 0);
        typedArrayObtainAttributes.recycle();
        PermissionInfo permissionInfo2 = permission.info;
        int i2 = permissionInfo2.protectionLevel;
        if (i2 == -1) {
            strArr[0] = "<permission> does not specify protectionLevel";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        permissionInfo2.protectionLevel = PermissionInfo.fixProtectionLevel(i2);
        int i3 = permission.info.protectionLevel;
        if ((i3 & 240) != 0 && (i3 & 15) != 2) {
            strArr[0] = "<permission>  protectionLevel specifies a flag but is not based on signature type";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        if (parseAllMetaData(resources, xmlPullParser, attributeSet, "<permission>", permission, strArr)) {
            r17.permissions.add(permission);
            return permission;
        }
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return null;
    }

    private PermissionGroup parsePermissionGroup(Package r17, int i2, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, String[] strArr) {
        PermissionGroup permissionGroup = new PermissionGroup(r17);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestPermissionGroup);
        if (!parsePackageItemInfo(r17, permissionGroup.info, strArr, "<permission-group>", typedArrayObtainAttributes, 2, 0, 1, 5)) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        permissionGroup.info.descriptionRes = typedArrayObtainAttributes.getResourceId(4, 0);
        permissionGroup.info.flags = typedArrayObtainAttributes.getInt(6, 0);
        permissionGroup.info.priority = typedArrayObtainAttributes.getInt(3, 0);
        PermissionGroupInfo permissionGroupInfo = permissionGroup.info;
        if (permissionGroupInfo.priority > 0 && (i2 & 1) == 0) {
            permissionGroupInfo.priority = 0;
        }
        typedArrayObtainAttributes.recycle();
        if (parseAllMetaData(resources, xmlPullParser, attributeSet, "<permission-group>", permissionGroup, strArr)) {
            r17.permissionGroups.add(permissionGroup);
            return permissionGroup;
        }
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return null;
    }

    private Permission parsePermissionTree(Package r17, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, String[] strArr) {
        Permission permission = new Permission(r17);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestPermissionTree);
        if (!parsePackageItemInfo(r17, permission.info, strArr, "<permission-tree>", typedArrayObtainAttributes, 2, 0, 1, 3)) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        typedArrayObtainAttributes.recycle();
        int iIndexOf = permission.info.name.indexOf(46);
        if (iIndexOf > 0) {
            iIndexOf = permission.info.name.indexOf(46, iIndexOf + 1);
        }
        if (iIndexOf < 0) {
            strArr[0] = "<permission-tree> name has less than three segments: " + permission.info.name;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        PermissionInfo permissionInfo = permission.info;
        permissionInfo.descriptionRes = 0;
        permissionInfo.protectionLevel = 0;
        permission.tree = true;
        if (parseAllMetaData(resources, xmlPullParser, attributeSet, "<permission-tree>", permission, strArr)) {
            r17.permissions.add(permission);
            return permission;
        }
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return null;
    }

    private Provider parseProvider(Package r19, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, String[] strArr) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestProvider);
        if (this.mParseProviderArgs == null) {
            ParseComponentArgs parseComponentArgs = new ParseComponentArgs(r19, strArr, 2, 0, 1, 15, this.mSeparateProcesses, 8, 14, 6);
            this.mParseProviderArgs = parseComponentArgs;
            parseComponentArgs.tag = "<provider>";
        }
        ParseComponentArgs parseComponentArgs2 = this.mParseProviderArgs;
        parseComponentArgs2.sa = typedArrayObtainAttributes;
        parseComponentArgs2.flags = i2;
        Provider provider = new Provider(parseComponentArgs2, new ProviderInfo());
        if (strArr[0] != null) {
            typedArrayObtainAttributes.recycle();
            return null;
        }
        provider.info.exported = typedArrayObtainAttributes.getBoolean(7, r19.applicationInfo.targetSdkVersion < 17);
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(10, 0);
        provider.info.isSyncable = typedArrayObtainAttributes.getBoolean(11, false);
        String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(3, 0);
        String nonConfigurationString3 = typedArrayObtainAttributes.getNonConfigurationString(4, 0);
        if (nonConfigurationString3 == null) {
            nonConfigurationString3 = nonConfigurationString2;
        }
        if (nonConfigurationString3 == null) {
            provider.info.readPermission = r19.applicationInfo.permission;
        } else {
            provider.info.readPermission = nonConfigurationString3.length() > 0 ? nonConfigurationString3.intern() : null;
        }
        String nonConfigurationString4 = typedArrayObtainAttributes.getNonConfigurationString(5, 0);
        if (nonConfigurationString4 != null) {
            nonConfigurationString2 = nonConfigurationString4;
        }
        if (nonConfigurationString2 == null) {
            provider.info.writePermission = r19.applicationInfo.permission;
        } else {
            provider.info.writePermission = nonConfigurationString2.length() > 0 ? nonConfigurationString2.intern() : null;
        }
        provider.info.grantUriPermissions = typedArrayObtainAttributes.getBoolean(13, false);
        provider.info.multiprocess = typedArrayObtainAttributes.getBoolean(9, false);
        provider.info.initOrder = typedArrayObtainAttributes.getInt(12, 0);
        provider.info.flags = 0;
        if (typedArrayObtainAttributes.getBoolean(16, false)) {
            ProviderInfo providerInfo = provider.info;
            providerInfo.flags |= 1073741824;
            if (providerInfo.exported) {
                Slog.w(TAG, "Provider exported request ignored due to singleUser: " + provider.className + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                provider.info.exported = false;
            }
        }
        typedArrayObtainAttributes.recycle();
        if ((r19.applicationInfo.flags & 268435456) != 0 && provider.info.processName == r19.packageName) {
            strArr[0] = "Heavy-weight applications can not have providers in main process";
            return null;
        }
        if (nonConfigurationString == null) {
            strArr[0] = "<provider> does not include authorities attribute";
            return null;
        }
        provider.info.authority = nonConfigurationString.intern();
        if (parseProviderTags(resources, xmlPullParser, attributeSet, provider, strArr)) {
            return provider;
        }
        return null;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private boolean parseProviderTags(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Provider provider, String[] strArr) throws XmlPullParserException, IOException {
        String strIntern;
        boolean z2;
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlPullParser.getName().equals("intent-filter")) {
                    ProviderIntentInfo providerIntentInfo = new ProviderIntentInfo(provider);
                    if (!parseIntent(resources, xmlPullParser, attributeSet, true, providerIntentInfo, strArr)) {
                        return false;
                    }
                    provider.intents.add(providerIntentInfo);
                } else if (xmlPullParser.getName().equals("meta-data")) {
                    Bundle metaData = parseMetaData(resources, xmlPullParser, attributeSet, provider.metaData, strArr);
                    provider.metaData = metaData;
                    if (metaData == null) {
                        return false;
                    }
                } else if (xmlPullParser.getName().equals("grant-uri-permission")) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestGrantUriPermission);
                    String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(0, 0);
                    PatternMatcher patternMatcher = nonConfigurationString != null ? new PatternMatcher(nonConfigurationString, 0) : null;
                    String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(1, 0);
                    if (nonConfigurationString2 != null) {
                        patternMatcher = new PatternMatcher(nonConfigurationString2, 1);
                    }
                    String nonConfigurationString3 = typedArrayObtainAttributes.getNonConfigurationString(2, 0);
                    if (nonConfigurationString3 != null) {
                        patternMatcher = new PatternMatcher(nonConfigurationString3, 2);
                    }
                    typedArrayObtainAttributes.recycle();
                    if (patternMatcher != null) {
                        ProviderInfo providerInfo = provider.info;
                        PatternMatcher[] patternMatcherArr = providerInfo.uriPermissionPatterns;
                        if (patternMatcherArr == null) {
                            providerInfo.uriPermissionPatterns = new PatternMatcher[]{patternMatcher};
                        } else {
                            int length = patternMatcherArr.length;
                            PatternMatcher[] patternMatcherArr2 = new PatternMatcher[length + 1];
                            System.arraycopy(patternMatcherArr, 0, patternMatcherArr2, 0, length);
                            patternMatcherArr2[length] = patternMatcher;
                            provider.info.uriPermissionPatterns = patternMatcherArr2;
                        }
                        provider.info.grantUriPermissions = true;
                        n.p(xmlPullParser);
                    } else {
                        Slog.w(TAG, "Unknown element under <path-permission>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                        n.p(xmlPullParser);
                    }
                } else if (xmlPullParser.getName().equals("path-permission")) {
                    TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, a.AndroidManifestPathPermission);
                    String nonConfigurationString4 = typedArrayObtainAttributes2.getNonConfigurationString(0, 0);
                    String nonConfigurationString5 = typedArrayObtainAttributes2.getNonConfigurationString(1, 0);
                    if (nonConfigurationString5 == null) {
                        nonConfigurationString5 = nonConfigurationString4;
                    }
                    String nonConfigurationString6 = typedArrayObtainAttributes2.getNonConfigurationString(2, 0);
                    if (nonConfigurationString6 != null) {
                        nonConfigurationString4 = nonConfigurationString6;
                    }
                    if (nonConfigurationString5 != null) {
                        strIntern = nonConfigurationString5.intern();
                        z2 = true;
                    } else {
                        strIntern = nonConfigurationString5;
                        z2 = false;
                    }
                    if (nonConfigurationString4 != null) {
                        nonConfigurationString4 = nonConfigurationString4.intern();
                        z2 = true;
                    }
                    if (z2) {
                        String nonConfigurationString7 = typedArrayObtainAttributes2.getNonConfigurationString(3, 0);
                        PathPermission pathPermission = nonConfigurationString7 != null ? new PathPermission(nonConfigurationString7, 0, strIntern, nonConfigurationString4) : null;
                        String nonConfigurationString8 = typedArrayObtainAttributes2.getNonConfigurationString(4, 0);
                        if (nonConfigurationString8 != null) {
                            pathPermission = new PathPermission(nonConfigurationString8, 1, strIntern, nonConfigurationString4);
                        }
                        String nonConfigurationString9 = typedArrayObtainAttributes2.getNonConfigurationString(5, 0);
                        if (nonConfigurationString9 != null) {
                            pathPermission = new PathPermission(nonConfigurationString9, 2, strIntern, nonConfigurationString4);
                        }
                        typedArrayObtainAttributes2.recycle();
                        if (pathPermission != null) {
                            ProviderInfo providerInfo2 = provider.info;
                            PathPermission[] pathPermissionArr = providerInfo2.pathPermissions;
                            if (pathPermissionArr == null) {
                                providerInfo2.pathPermissions = new PathPermission[]{pathPermission};
                            } else {
                                int length2 = pathPermissionArr.length;
                                PathPermission[] pathPermissionArr2 = new PathPermission[length2 + 1];
                                System.arraycopy(pathPermissionArr, 0, pathPermissionArr2, 0, length2);
                                pathPermissionArr2[length2] = pathPermission;
                                provider.info.pathPermissions = pathPermissionArr2;
                            }
                            n.p(xmlPullParser);
                        } else {
                            Slog.w(TAG, "No path, pathPrefix, or pathPattern for <path-permission>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                            n.p(xmlPullParser);
                        }
                    } else {
                        Slog.w(TAG, "No readPermission or writePermssion for <path-permission>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                        n.p(xmlPullParser);
                    }
                } else {
                    Slog.w(TAG, "Unknown element under <provider>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                    n.p(xmlPullParser);
                }
            }
        }
        return true;
    }

    public static final PublicKey parsePublicKey(String str) {
        try {
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode(str, 0));
            try {
                try {
                    return KeyFactory.getInstance("RSA").generatePublic(x509EncodedKeySpec);
                } catch (NoSuchAlgorithmException unused) {
                    Log.wtf(TAG, "Could not parse public key because DSA isn't included in build");
                    return null;
                } catch (InvalidKeySpecException unused2) {
                    return null;
                }
            } catch (NoSuchAlgorithmException unused3) {
                Log.wtf(TAG, "Could not parse public key because RSA isn't included in build");
                return null;
            } catch (InvalidKeySpecException unused4) {
                return KeyFactory.getInstance("DSA").generatePublic(x509EncodedKeySpec);
            }
        } catch (IllegalArgumentException unused5) {
            Slog.i(TAG, "Could not parse verifier public key; invalid Base64");
            return null;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private Service parseService(Package r20, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, String[] strArr) throws XmlPullParserException, IOException {
        boolean z2;
        int i3;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestService);
        if (this.mParseServiceArgs == null) {
            ParseComponentArgs parseComponentArgs = new ParseComponentArgs(r20, strArr, 2, 0, 1, 8, this.mSeparateProcesses, 6, 7, 4);
            this.mParseServiceArgs = parseComponentArgs;
            parseComponentArgs.tag = "<service>";
        }
        ParseComponentArgs parseComponentArgs2 = this.mParseServiceArgs;
        parseComponentArgs2.sa = typedArrayObtainAttributes;
        parseComponentArgs2.flags = i2;
        Service service = new Service(parseComponentArgs2, new ServiceInfo());
        if (strArr[0] != null) {
            typedArrayObtainAttributes.recycle();
            return null;
        }
        boolean zHasValue = typedArrayObtainAttributes.hasValue(5);
        if (zHasValue) {
            service.info.exported = typedArrayObtainAttributes.getBoolean(5, false);
        }
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(3, 0);
        if (nonConfigurationString == null) {
            service.info.permission = r20.applicationInfo.permission;
        } else {
            service.info.permission = nonConfigurationString.length() > 0 ? nonConfigurationString.intern() : null;
        }
        service.info.flags = 0;
        if (typedArrayObtainAttributes.getBoolean(9, false)) {
            service.info.flags |= 1;
        }
        if (typedArrayObtainAttributes.getBoolean(10, false)) {
            service.info.flags |= 2;
        }
        if (typedArrayObtainAttributes.getBoolean(11, false)) {
            ServiceInfo serviceInfo = service.info;
            serviceInfo.flags |= 1073741824;
            if (serviceInfo.exported) {
                Slog.w(TAG, "Service exported request ignored due to singleUser: " + service.className + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                service.info.exported = false;
            }
            z2 = true;
        } else {
            z2 = zHasValue;
        }
        typedArrayObtainAttributes.recycle();
        if ((r20.applicationInfo.flags & 268435456) != 0 && service.info.processName == r20.packageName) {
            strArr[0] = "Heavy-weight applications can not have services in main process";
            return null;
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlPullParser.getName().equals("intent-filter")) {
                    ServiceIntentInfo serviceIntentInfo = new ServiceIntentInfo(service);
                    i3 = depth;
                    if (!parseIntent(resources, xmlPullParser, attributeSet, true, serviceIntentInfo, strArr)) {
                        return null;
                    }
                    service.intents.add(serviceIntentInfo);
                } else {
                    i3 = depth;
                    if (xmlPullParser.getName().equals("meta-data")) {
                        Bundle metaData = parseMetaData(resources, xmlPullParser, attributeSet, service.metaData, strArr);
                        service.metaData = metaData;
                        if (metaData == null) {
                            return null;
                        }
                    } else {
                        Slog.w(TAG, "Unknown element under <service>: " + xmlPullParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlPullParser.getPositionDescription());
                        n.p(xmlPullParser);
                    }
                }
                depth = i3;
            }
        }
        if (!z2) {
            service.info.exported = service.intents.size() > 0;
        }
        return service;
    }

    private boolean parseUsesPermission(Package r6, Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, String[] strArr) {
        int i2;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestUsesPermission);
        String nonResourceString = typedArrayObtainAttributes.getNonResourceString(0);
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(1);
        int i3 = (typedValuePeekValue == null || (i2 = typedValuePeekValue.type) < 16 || i2 > 31) ? 0 : typedValuePeekValue.data;
        typedArrayObtainAttributes.recycle();
        if ((i3 == 0 || i3 >= Build.VERSION.RESOURCES_SDK_INT) && nonResourceString != null) {
            int iIndexOf = r6.requestedPermissions.indexOf(nonResourceString);
            if (iIndexOf == -1) {
                r6.requestedPermissions.add(nonResourceString.intern());
                r6.requestedPermissionsRequired.add(Boolean.TRUE);
            } else if (!r6.requestedPermissionsRequired.get(iIndexOf).booleanValue()) {
                strArr[0] = "conflicting <uses-permission> entries";
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                return false;
            }
        }
        n.p(xmlResourceParser);
        return true;
    }

    private static VerifierInfo parseVerifier(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, String[] strArr) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.AndroidManifestPackageVerifier);
        String nonResourceString = typedArrayObtainAttributes.getNonResourceString(0);
        String nonResourceString2 = typedArrayObtainAttributes.getNonResourceString(1);
        typedArrayObtainAttributes.recycle();
        if (nonResourceString == null || nonResourceString.length() == 0) {
            Slog.i(TAG, "verifier package name was null; skipping");
            return null;
        }
        if (nonResourceString2 == null) {
            Slog.i(TAG, "verifier " + nonResourceString + " public key was null; skipping");
        }
        PublicKey publicKey = parsePublicKey(nonResourceString2);
        if (publicKey != null) {
            return new VerifierInfo(nonResourceString, publicKey);
        }
        return null;
    }

    public static void setCompatibilityModeEnabled(boolean z2) {
        sCompatibilityModeEnabled = z2;
    }

    public static Signature stringToSignature(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) str.charAt(i2);
        }
        return new Signature(bArr);
    }

    private static void updateApplicationInfo(ApplicationInfo applicationInfo, int i2, PackageUserState packageUserState) {
        if (!sCompatibilityModeEnabled) {
            applicationInfo.disableCompatibilityMode();
        }
        if (packageUserState.installed) {
            applicationInfo.flags |= 8388608;
        } else {
            applicationInfo.flags &= -8388609;
        }
        if (packageUserState.blocked) {
            applicationInfo.flags |= 134217728;
        } else {
            applicationInfo.flags &= -134217729;
        }
        int i3 = packageUserState.enabled;
        if (i3 == 1) {
            applicationInfo.enabled = true;
        } else if (i3 == 4) {
            applicationInfo.enabled = (i2 & 32768) != 0;
        } else if (i3 == 2 || i3 == 3) {
            applicationInfo.enabled = false;
        }
        applicationInfo.enabledSetting = i3;
    }

    private static String validateName(String str, boolean z2) {
        int length = str.length();
        boolean z3 = false;
        boolean z4 = true;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                z4 = false;
            } else if (z4 || ((cCharAt < '0' || cCharAt > '9') && cCharAt != '_')) {
                if (cCharAt != '.') {
                    return "bad character '" + cCharAt + "'";
                }
                z3 = true;
                z4 = true;
            }
        }
        if (z3 || !z2) {
            return null;
        }
        return "must have at least one '.' separator";
    }

    public boolean collectCertificates(Package r17, int i2) {
        WeakReference<byte[]> weakReference;
        byte[] bArr;
        Certificate[] certificateArrLoadCertificates;
        int i3;
        boolean z2;
        Certificate[] certificateArr = null;
        r17.mSignatures = null;
        synchronized (mSync) {
            weakReference = mReadBuffer;
            if (weakReference != null) {
                mReadBuffer = null;
                bArr = weakReference.get();
            } else {
                bArr = null;
            }
            if (bArr == null) {
                bArr = new byte[8192];
                weakReference = new WeakReference<>(bArr);
            }
        }
        try {
            JarFile jarFile = new JarFile(this.mArchiveSourcePath);
            if ((i2 & 1) != 0) {
                JarEntry jarEntry = jarFile.getJarEntry(ANDROID_MANIFEST_FILENAME);
                certificateArrLoadCertificates = loadCertificates(jarFile, jarEntry, bArr);
                if (certificateArrLoadCertificates == null) {
                    Slog.e(TAG, "Package " + r17.packageName + " has no certificates at entry " + jarEntry.getName() + "; ignoring!");
                    jarFile.close();
                    this.mParseError = PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES;
                    return false;
                }
            } else {
                Enumeration<JarEntry> enumerationEntries = jarFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                    if (!jarEntryNextElement.isDirectory()) {
                        String name = jarEntryNextElement.getName();
                        if (!name.startsWith("META-INF/")) {
                            if (ANDROID_MANIFEST_FILENAME.equals(name)) {
                                r17.manifestDigest = ManifestDigest.fromInputStream(jarFile.getInputStream(jarEntryNextElement));
                            }
                            Object[] objArrLoadCertificates = loadCertificates(jarFile, jarEntryNextElement, bArr);
                            if (objArrLoadCertificates == null) {
                                Slog.e(TAG, "Package " + r17.packageName + " has no certificates at entry " + jarEntryNextElement.getName() + "; ignoring!");
                                jarFile.close();
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES;
                                return false;
                            }
                            if (certificateArr != null) {
                                for (0; i3 < certificateArr.length; i3 + 1) {
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 >= objArrLoadCertificates.length) {
                                            z2 = false;
                                            break;
                                        }
                                        if (certificateArr[i3] != null && certificateArr[i3].equals(objArrLoadCertificates[i4])) {
                                            z2 = true;
                                            break;
                                        }
                                        i4++;
                                    }
                                    i3 = (z2 && certificateArr.length == objArrLoadCertificates.length) ? i3 + 1 : 0;
                                    Slog.e(TAG, "Package " + r17.packageName + " has mismatched certificates at entry " + jarEntryNextElement.getName() + "; ignoring!");
                                    jarFile.close();
                                    this.mParseError = PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES;
                                    return false;
                                }
                            }
                            certificateArr = objArrLoadCertificates;
                        }
                    }
                }
                certificateArrLoadCertificates = certificateArr;
            }
            jarFile.close();
            synchronized (mSync) {
                mReadBuffer = weakReference;
            }
            if (certificateArrLoadCertificates == null || certificateArrLoadCertificates.length <= 0) {
                Slog.e(TAG, "Package " + r17.packageName + " has no certificates; ignoring!");
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES;
                return false;
            }
            int length = certificateArrLoadCertificates.length;
            r17.mSignatures = new Signature[certificateArrLoadCertificates.length];
            for (int i5 = 0; i5 < length; i5++) {
                r17.mSignatures[i5] = new Signature(certificateArrLoadCertificates[i5].getEncoded());
            }
            r17.mSigningKeys = new HashSet();
            for (Certificate certificate : certificateArrLoadCertificates) {
                r17.mSigningKeys.add(certificate.getPublicKey());
            }
            return true;
        } catch (IOException e2) {
            Slog.w(TAG, "Exception reading " + this.mArchiveSourcePath, e2);
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING;
            return false;
        } catch (RuntimeException e3) {
            Slog.w(TAG, "Exception reading " + this.mArchiveSourcePath, e3);
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION;
            return false;
        } catch (CertificateEncodingException e4) {
            Slog.w(TAG, "Exception reading " + this.mArchiveSourcePath, e4);
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING;
            return false;
        }
    }

    public boolean collectManifestDigest(Package r3) {
        try {
            JarFile jarFile = new JarFile(this.mArchiveSourcePath);
            try {
                ZipEntry entry = jarFile.getEntry(ANDROID_MANIFEST_FILENAME);
                if (entry != null) {
                    r3.manifestDigest = ManifestDigest.fromInputStream(jarFile.getInputStream(entry));
                }
                return true;
            } finally {
                jarFile.close();
            }
        } catch (IOException unused) {
            return false;
        }
    }

    public int getParseError() {
        return this.mParseError;
    }

    public Package parsePackage(File file, String str, DisplayMetrics displayMetrics, int i2) {
        Resources resources;
        AssetManager assetManager;
        boolean z2;
        XmlResourceParser xmlResourceParser;
        Exception exc;
        Package r1;
        AssetManager assetManager2;
        XmlResourceParser xmlResourceParserOpenXmlResourceParser;
        this.mParseError = 1;
        this.mArchiveSourcePath = file.getPath();
        if (!file.isFile()) {
            Slog.w(TAG, "Skipping dir: " + this.mArchiveSourcePath);
            this.mParseError = -100;
            return null;
        }
        if (!isPackageFilename(file.getName()) && (i2 & 4) != 0) {
            if ((i2 & 1) == 0) {
                Slog.w(TAG, "Skipping non-package file: " + this.mArchiveSourcePath);
            }
            this.mParseError = -100;
            return null;
        }
        try {
            assetManager = new AssetManager();
            try {
                int iAddAssetPath = assetManager.addAssetPath(this.mArchiveSourcePath);
                if (iAddAssetPath != 0) {
                    resources = new Resources(assetManager, displayMetrics, null);
                    try {
                        assetManager2 = assetManager;
                        try {
                            assetManager.setConfiguration(0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Build.VERSION.RESOURCES_SDK_INT);
                            xmlResourceParserOpenXmlResourceParser = assetManager2.openXmlResourceParser(iAddAssetPath, ANDROID_MANIFEST_FILENAME);
                            resources = resources;
                            z2 = false;
                        } catch (Exception e2) {
                            e = e2;
                            assetManager = assetManager2;
                            resources = resources;
                            Slog.w(TAG, "Unable to read AndroidManifest.xml of " + this.mArchiveSourcePath, e);
                            z2 = true;
                            xmlResourceParser = null;
                        }
                    } catch (Exception e3) {
                        e = e3;
                    }
                } else {
                    assetManager2 = assetManager;
                    try {
                        Slog.w(TAG, "Failed adding asset path:" + this.mArchiveSourcePath);
                        z2 = true;
                        xmlResourceParserOpenXmlResourceParser = null;
                        resources = null;
                    } catch (Exception e4) {
                        e = e4;
                        assetManager = assetManager2;
                        resources = null;
                        Slog.w(TAG, "Unable to read AndroidManifest.xml of " + this.mArchiveSourcePath, e);
                        z2 = true;
                        xmlResourceParser = null;
                    }
                }
                assetManager = assetManager2;
                xmlResourceParser = xmlResourceParserOpenXmlResourceParser;
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Exception e6) {
            e = e6;
            resources = null;
            assetManager = null;
        }
        if (z2) {
            if (assetManager != null) {
                assetManager.close();
            }
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST;
            return null;
        }
        String[] strArr = new String[1];
        try {
            r1 = parsePackage(resources, xmlResourceParser, i2, strArr);
            exc = null;
        } catch (Exception e7) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION;
            exc = e7;
            r1 = null;
        }
        if (r1 != null) {
            xmlResourceParser.close();
            assetManager.close();
            r1.mPath = str;
            r1.mScanPath = this.mArchiveSourcePath;
            r1.mSignatures = null;
            return r1;
        }
        if (!this.mOnlyCoreApps || this.mParseError != 1) {
            if (exc != null) {
                Slog.w(TAG, this.mArchiveSourcePath, exc);
            } else {
                Slog.w(TAG, this.mArchiveSourcePath + " (at " + xmlResourceParser.getPositionDescription() + "): " + strArr[0]);
            }
            if (this.mParseError == 1) {
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            }
        }
        xmlResourceParser.close();
        assetManager.close();
        return null;
    }

    public void setOnlyCoreApps(boolean z2) {
        this.mOnlyCoreApps = z2;
    }

    public void setSeparateProcesses(String[] strArr) {
        this.mSeparateProcesses = strArr;
    }

    public static final class Permission extends Component<IntentInfo> {
        public PermissionGroup group;
        public final PermissionInfo info;
        public boolean tree;

        public Permission(Package r1) {
            super(r1);
            this.info = new PermissionInfo();
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            return "Permission{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.info.name + "}";
        }

        public Permission(Package r1, PermissionInfo permissionInfo) {
            super(r1);
            this.info = permissionInfo;
        }
    }

    public static final class PermissionGroup extends Component<IntentInfo> {
        public final PermissionGroupInfo info;

        public PermissionGroup(Package r1) {
            super(r1);
            this.info = new PermissionGroupInfo();
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            return "PermissionGroup{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.info.name + "}";
        }

        public PermissionGroup(Package r1, PermissionGroupInfo permissionGroupInfo) {
            super(r1);
            this.info = permissionGroupInfo;
        }
    }

    public static ApplicationInfo generateApplicationInfo(Package r2, int i2, PackageUserState packageUserState, int i3) {
        if (r2 == null || !checkUseInstalledOrBlocked(i2, packageUserState)) {
            return null;
        }
        if (!copyNeeded(i2, r2, packageUserState, null, i3) && ((32768 & i2) == 0 || packageUserState.enabled != 4)) {
            updateApplicationInfo(r2.applicationInfo, i2, packageUserState);
            return r2.applicationInfo;
        }
        ApplicationInfo applicationInfo = new ApplicationInfo(r2.applicationInfo);
        if (i3 != 0) {
            applicationInfo.uid = UserHandle.getUid(i3, applicationInfo.uid);
            applicationInfo.dataDir = PackageManager.getDataDirForUser(i3, applicationInfo.packageName);
        }
        if ((i2 & 128) != 0) {
            applicationInfo.metaData = r2.mAppMetaData;
        }
        if ((i2 & 1024) != 0) {
            applicationInfo.sharedLibraryFiles = r2.usesLibraryFiles;
        }
        if (packageUserState.stopped) {
            applicationInfo.flags |= 2097152;
        } else {
            applicationInfo.flags &= -2097153;
        }
        updateApplicationInfo(applicationInfo, i2, packageUserState);
        return applicationInfo;
    }

    public static PackageInfo generatePackageInfo(Package r4, int[] iArr, int i2, long j2, long j3, HashSet<String> hashSet, PackageUserState packageUserState, int i3) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        if (!checkUseInstalledOrBlocked(i2, packageUserState)) {
            return null;
        }
        PackageInfo packageInfo = new PackageInfo();
        packageInfo.packageName = r4.packageName;
        packageInfo.versionCode = r4.mVersionCode;
        packageInfo.versionName = r4.mVersionName;
        packageInfo.sharedUserId = r4.mSharedUserId;
        packageInfo.sharedUserLabel = r4.mSharedUserLabel;
        ApplicationInfo applicationInfoGenerateApplicationInfo = generateApplicationInfo(r4, i2, packageUserState, i3);
        packageInfo.applicationInfo = applicationInfoGenerateApplicationInfo;
        packageInfo.installLocation = r4.installLocation;
        int i4 = applicationInfoGenerateApplicationInfo.flags;
        if ((i4 & 1) != 0 || (i4 & 128) != 0) {
            packageInfo.requiredForAllUsers = r4.mRequiredForAllUsers;
        }
        packageInfo.restrictedAccountType = r4.mRestrictedAccountType;
        packageInfo.requiredAccountType = r4.mRequiredAccountType;
        packageInfo.firstInstallTime = j2;
        packageInfo.lastUpdateTime = j3;
        if ((i2 & 256) != 0) {
            packageInfo.gids = iArr;
        }
        if ((i2 & 16384) != 0) {
            int size6 = r4.configPreferences.size();
            if (size6 > 0) {
                ConfigurationInfo[] configurationInfoArr = new ConfigurationInfo[size6];
                packageInfo.configPreferences = configurationInfoArr;
                r4.configPreferences.toArray(configurationInfoArr);
            }
            ArrayList<FeatureInfo> arrayList = r4.reqFeatures;
            int size7 = arrayList != null ? arrayList.size() : 0;
            if (size7 > 0) {
                FeatureInfo[] featureInfoArr = new FeatureInfo[size7];
                packageInfo.reqFeatures = featureInfoArr;
                r4.reqFeatures.toArray(featureInfoArr);
            }
        }
        if ((i2 & 1) != 0 && (size5 = r4.activities.size()) > 0) {
            int i5 = i2 & 512;
            if (i5 != 0) {
                packageInfo.activities = new ActivityInfo[size5];
            } else {
                int i6 = 0;
                for (int i7 = 0; i7 < size5; i7++) {
                    if (r4.activities.get(i7).info.enabled) {
                        i6++;
                    }
                }
                packageInfo.activities = new ActivityInfo[i6];
            }
            int i8 = 0;
            for (int i9 = 0; i9 < size5; i9++) {
                if (r4.activities.get(i9).info.enabled || i5 != 0) {
                    packageInfo.activities[i8] = generateActivityInfo(r4.activities.get(i9), i2, packageUserState, i3);
                    i8++;
                }
            }
        }
        if ((i2 & 2) != 0 && (size4 = r4.receivers.size()) > 0) {
            int i10 = i2 & 512;
            if (i10 != 0) {
                packageInfo.receivers = new ActivityInfo[size4];
            } else {
                int i11 = 0;
                for (int i12 = 0; i12 < size4; i12++) {
                    if (r4.receivers.get(i12).info.enabled) {
                        i11++;
                    }
                }
                packageInfo.receivers = new ActivityInfo[i11];
            }
            int i13 = 0;
            for (int i14 = 0; i14 < size4; i14++) {
                if (r4.receivers.get(i14).info.enabled || i10 != 0) {
                    packageInfo.receivers[i13] = generateActivityInfo(r4.receivers.get(i14), i2, packageUserState, i3);
                    i13++;
                }
            }
        }
        if ((i2 & 4) != 0 && (size3 = r4.services.size()) > 0) {
            int i15 = i2 & 512;
            if (i15 != 0) {
                packageInfo.services = new ServiceInfo[size3];
            } else {
                int i16 = 0;
                for (int i17 = 0; i17 < size3; i17++) {
                    if (r4.services.get(i17).info.enabled) {
                        i16++;
                    }
                }
                packageInfo.services = new ServiceInfo[i16];
            }
            int i18 = 0;
            for (int i19 = 0; i19 < size3; i19++) {
                if (r4.services.get(i19).info.enabled || i15 != 0) {
                    packageInfo.services[i18] = generateServiceInfo(r4.services.get(i19), i2, packageUserState, i3);
                    i18++;
                }
            }
        }
        if ((i2 & 8) != 0 && (size2 = r4.providers.size()) > 0) {
            int i20 = i2 & 512;
            if (i20 != 0) {
                packageInfo.providers = new ProviderInfo[size2];
            } else {
                int i21 = 0;
                for (int i22 = 0; i22 < size2; i22++) {
                    if (r4.providers.get(i22).info.enabled) {
                        i21++;
                    }
                }
                packageInfo.providers = new ProviderInfo[i21];
            }
            int i23 = 0;
            for (int i24 = 0; i24 < size2; i24++) {
                if (r4.providers.get(i24).info.enabled || i20 != 0) {
                    packageInfo.providers[i23] = generateProviderInfo(r4.providers.get(i24), i2, packageUserState, i3);
                    i23++;
                }
            }
        }
        if ((i2 & 16) != 0 && (size = r4.instrumentation.size()) > 0) {
            packageInfo.instrumentation = new InstrumentationInfo[size];
            for (int i25 = 0; i25 < size; i25++) {
                packageInfo.instrumentation[i25] = generateInstrumentationInfo(r4.instrumentation.get(i25), i2);
            }
        }
        if ((i2 & 4096) != 0) {
            int size8 = r4.permissions.size();
            if (size8 > 0) {
                packageInfo.permissions = new PermissionInfo[size8];
                for (int i26 = 0; i26 < size8; i26++) {
                    packageInfo.permissions[i26] = generatePermissionInfo(r4.permissions.get(i26), i2);
                }
            }
            int size9 = r4.requestedPermissions.size();
            if (size9 > 0) {
                packageInfo.requestedPermissions = new String[size9];
                packageInfo.requestedPermissionsFlags = new int[size9];
                for (int i27 = 0; i27 < size9; i27++) {
                    String str = r4.requestedPermissions.get(i27);
                    packageInfo.requestedPermissions[i27] = str;
                    if (r4.requestedPermissionsRequired.get(i27).booleanValue()) {
                        int[] iArr2 = packageInfo.requestedPermissionsFlags;
                        iArr2[i27] = iArr2[i27] | 1;
                    }
                    if (hashSet != null && hashSet.contains(str)) {
                        int[] iArr3 = packageInfo.requestedPermissionsFlags;
                        iArr3[i27] = iArr3[i27] | 2;
                    }
                }
            }
        }
        if ((i2 & 64) != 0) {
            Signature[] signatureArr = r4.mSignatures;
            int length = signatureArr != null ? signatureArr.length : 0;
            if (length > 0) {
                Signature[] signatureArr2 = new Signature[length];
                packageInfo.signatures = signatureArr2;
                System.arraycopy(signatureArr, 0, signatureArr2, 0, length);
            }
        }
        return packageInfo;
    }

    public static class Component<II extends IntentInfo> {
        public final String className;
        public ComponentName componentName;
        public String componentShortName;
        public final ArrayList<II> intents;
        public Bundle metaData;
        public final Package owner;

        public Component(Package r1) {
            this.owner = r1;
            this.intents = null;
            this.className = null;
        }

        public void appendComponentShortName(StringBuilder sb) {
            ComponentName.appendShortString(sb, this.owner.applicationInfo.packageName, this.className);
        }

        public ComponentName getComponentName() {
            ComponentName componentName = this.componentName;
            if (componentName != null) {
                return componentName;
            }
            if (this.className != null) {
                this.componentName = new ComponentName(this.owner.applicationInfo.packageName, this.className);
            }
            return this.componentName;
        }

        public void printComponentShortName(PrintWriter printWriter) {
            ComponentName.printShortString(printWriter, this.owner.applicationInfo.packageName, this.className);
        }

        public void setPackageName(String str) {
            this.componentName = null;
            this.componentShortName = null;
        }

        public Component(ParsePackageItemArgs parsePackageItemArgs, PackageItemInfo packageItemInfo) {
            Package r1 = parsePackageItemArgs.owner;
            this.owner = r1;
            this.intents = new ArrayList<>(0);
            String nonConfigurationString = parsePackageItemArgs.sa.getNonConfigurationString(parsePackageItemArgs.nameRes, 0);
            if (nonConfigurationString != null) {
                String strBuildClassName = PackageParser.buildClassName(r1.applicationInfo.packageName, nonConfigurationString, parsePackageItemArgs.outError);
                packageItemInfo.name = strBuildClassName;
                if (strBuildClassName == null) {
                    this.className = null;
                    parsePackageItemArgs.outError[0] = parsePackageItemArgs.tag + " does not have valid android:name";
                    return;
                }
                this.className = strBuildClassName;
                int resourceId = parsePackageItemArgs.sa.getResourceId(parsePackageItemArgs.iconRes, 0);
                if (resourceId != 0) {
                    packageItemInfo.icon = resourceId;
                    packageItemInfo.nonLocalizedLabel = null;
                }
                int resourceId2 = parsePackageItemArgs.sa.getResourceId(parsePackageItemArgs.logoRes, 0);
                if (resourceId2 != 0) {
                    packageItemInfo.logo = resourceId2;
                }
                TypedValue typedValuePeekValue = parsePackageItemArgs.sa.peekValue(parsePackageItemArgs.labelRes);
                if (typedValuePeekValue != null) {
                    int i2 = typedValuePeekValue.resourceId;
                    packageItemInfo.labelRes = i2;
                    if (i2 == 0) {
                        packageItemInfo.nonLocalizedLabel = typedValuePeekValue.coerceToString();
                    }
                }
                packageItemInfo.packageName = r1.packageName;
                return;
            }
            this.className = null;
            parsePackageItemArgs.outError[0] = parsePackageItemArgs.tag + " does not specify android:name";
        }

        public Component(ParseComponentArgs parseComponentArgs, ComponentInfo componentInfo) {
            String nonResourceString;
            this((ParsePackageItemArgs) parseComponentArgs, (PackageItemInfo) componentInfo);
            if (parseComponentArgs.outError[0] != null) {
                return;
            }
            int i2 = parseComponentArgs.processRes;
            if (i2 != 0) {
                if (this.owner.applicationInfo.targetSdkVersion >= 8) {
                    nonResourceString = parseComponentArgs.sa.getNonConfigurationString(i2, 1024);
                } else {
                    nonResourceString = parseComponentArgs.sa.getNonResourceString(i2);
                }
                String str = nonResourceString;
                ApplicationInfo applicationInfo = this.owner.applicationInfo;
                componentInfo.processName = PackageParser.buildProcessName(applicationInfo.packageName, applicationInfo.processName, str, parseComponentArgs.flags, parseComponentArgs.sepProcesses, parseComponentArgs.outError);
            }
            int i3 = parseComponentArgs.descriptionRes;
            if (i3 != 0) {
                componentInfo.descriptionRes = parseComponentArgs.sa.getResourceId(i3, 0);
            }
            componentInfo.enabled = parseComponentArgs.sa.getBoolean(parseComponentArgs.enabledRes, true);
        }

        public Component(Component<II> component) {
            this.owner = component.owner;
            this.intents = component.intents;
            this.className = component.className;
            this.componentName = component.componentName;
            this.componentShortName = component.componentShortName;
        }
    }

    public static final class Provider extends Component<ProviderIntentInfo> {
        public final ProviderInfo info;
        public boolean syncable;

        public Provider(ParseComponentArgs parseComponentArgs, ProviderInfo providerInfo) {
            super(parseComponentArgs, (ComponentInfo) providerInfo);
            this.info = providerInfo;
            providerInfo.applicationInfo = parseComponentArgs.owner.applicationInfo;
            this.syncable = false;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Provider{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(CharArrayBuffers.uppercaseAddon);
            appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }

        public Provider(Provider provider) {
            super(provider);
            this.info = provider.info;
            this.syncable = provider.syncable;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008e A[LOOP:1: B:26:0x0064->B:37:0x008e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:63:0x0091 A[EDGE_INSN: B:63:0x0091->B:38:0x0091 BREAK  A[LOOP:1: B:26:0x0064->B:37:0x008e], SYNTHETIC] */
    private static PackageLite parsePackageLite(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, String[] strArr) throws XmlPullParserException, IOException {
        int next;
        VerifierInfo verifier;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            strArr[0] = "No start tag found";
            return null;
        }
        if (!xmlPullParser.getName().equals("manifest")) {
            strArr[0] = "No <manifest> tag";
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "package");
        if (attributeValue != null && attributeValue.length() != 0) {
            String strValidateName = validateName(attributeValue, true);
            if (strValidateName != null && !"android".equals(attributeValue)) {
                strArr[0] = "<manifest> specifies bad package name \"" + attributeValue + "\": " + strValidateName;
                return null;
            }
            int attributeIntValue = -1;
            int i3 = 0;
            int attributeIntValue2 = 0;
            for (int i4 = 0; i4 < attributeSet.getAttributeCount(); i4++) {
                String attributeName = attributeSet.getAttributeName(i4);
                if (attributeName.equals("installLocation")) {
                    attributeIntValue = attributeSet.getAttributeIntValue(i4, -1);
                } else {
                    if (attributeName.equals("versionCode")) {
                        attributeIntValue2 = attributeSet.getAttributeIntValue(i4, 0);
                    }
                    if (i3 >= 2) {
                        break;
                    }
                }
                i3++;
                if (i3 >= 2) {
                    break;
                    break;
                }
            }
            int depth = xmlPullParser.getDepth() + 1;
            ArrayList arrayList = new ArrayList();
            while (true) {
                int next2 = xmlPullParser.next();
                if (next2 == 1 || (next2 == 3 && xmlPullParser.getDepth() < depth)) {
                    break;
                }
                if (next2 != 3 && next2 != 4 && xmlPullParser.getDepth() == depth && "package-verifier".equals(xmlPullParser.getName()) && (verifier = parseVerifier(resources, xmlPullParser, attributeSet, i2, strArr)) != null) {
                    arrayList.add(verifier);
                }
            }
            return new PackageLite(attributeValue.intern(), attributeIntValue2, attributeIntValue, arrayList);
        }
        strArr[0] = "<manifest> does not specify package";
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:127:0x02d6 A[PHI: r2 r6
  0x02d6: PHI (r2v44 java.lang.Object) = (r2v99 java.lang.Object), (r2v100 java.lang.Object) binds: [B:120:0x02c3, B:125:0x02cd] A[DONT_GENERATE, DONT_INLINE]
  0x02d6: PHI (r6v24 java.lang.Object) = (r6v34 java.lang.Object), (r6v26 java.lang.Object) binds: [B:120:0x02c3, B:125:0x02cd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:130:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:133:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:134:0x030b  */
    /* JADX WARN: Code duplicated, block: B:138:0x0326 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x034e  */
    /* JADX WARN: Code duplicated, block: B:144:0x0358  */
    /* JADX WARN: Code duplicated, block: B:145:0x0374  */
    /* JADX WARN: Code duplicated, block: B:147:0x038e  */
    /* JADX WARN: Code duplicated, block: B:148:0x0395  */
    /* JADX WARN: Code duplicated, block: B:288:0x02ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x0328 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:290:0x0356 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:133:0x02ef, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:134:0x030b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:144:0x0358, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:145:0x0374, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    private Package parsePackage(Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr) throws XmlPullParserException, IOException {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z2;
        Object string;
        int i15;
        int i16;
        Object obj;
        int i17;
        Object obj2;
        TypedValue typedValuePeekValue;
        Object obj3;
        Object obj4;
        int i18;
        String str;
        String str2;
        String str3;
        String str4;
        CharSequence charSequence;
        CharSequence charSequence2;
        Package r12 = null;
        this.mParseInstrumentationArgs = null;
        this.mParseActivityArgs = null;
        this.mParseServiceArgs = null;
        this.mParseProviderArgs = null;
        String packageName = parsePackageName(xmlResourceParser, xmlResourceParser, i2, strArr);
        if (packageName == null) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME;
            return null;
        }
        int i19 = 1;
        if (this.mOnlyCoreApps && !xmlResourceParser.getAttributeBooleanValue(null, "coreApp", false)) {
            this.mParseError = 1;
            return null;
        }
        Package r15 = new Package(packageName);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, a.AndroidManifest);
        r15.mVersionCode = typedArrayObtainAttributes.getInteger(1, 0);
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(2, 0);
        r15.mVersionName = nonConfigurationString;
        if (nonConfigurationString != null) {
            r15.mVersionName = nonConfigurationString.intern();
        }
        String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(0, 0);
        int i20 = 3;
        if (nonConfigurationString2 != null && nonConfigurationString2.length() > 0) {
            String strValidateName = validateName(nonConfigurationString2, true);
            if (strValidateName != null && !"android".equals(packageName)) {
                strArr[0] = "<manifest> specifies bad sharedUserId name \"" + nonConfigurationString2 + "\": " + strValidateName;
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID;
                return null;
            }
            r15.mSharedUserId = nonConfigurationString2.intern();
            r15.mSharedUserLabel = typedArrayObtainAttributes.getResourceId(3, 0);
        }
        typedArrayObtainAttributes.recycle();
        int i21 = 4;
        int integer = typedArrayObtainAttributes.getInteger(4, -1);
        r15.installLocation = integer;
        ApplicationInfo applicationInfo = r15.applicationInfo;
        applicationInfo.installLocation = integer;
        if ((i2 & 16) != 0) {
            applicationInfo.flags |= 536870912;
        }
        if ((i2 & 32) != 0) {
            applicationInfo.flags |= 262144;
        }
        int depth = xmlResourceParser.getDepth();
        int i22 = 1;
        int i23 = 1;
        int integer2 = 1;
        int integer3 = 1;
        int integer4 = 1;
        int integer5 = 1;
        boolean z3 = false;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == i19 || (next == i20 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != i20 && next != i21) {
                String name = xmlResourceParser.getName();
                if (!name.equals(GrantCredentialsPermissionActivity.EXTRAS_PACKAGES)) {
                    i10 = i22;
                    i4 = i23;
                    i12 = integer2;
                    i5 = depth;
                    if (name.equals("keys")) {
                        if (!parseKeys(r15, resources, xmlResourceParser, xmlResourceParser, strArr)) {
                            return r12;
                        }
                    } else if (name.equals("permission-group")) {
                        if (parsePermissionGroup(r15, i2, resources, xmlResourceParser, xmlResourceParser, strArr) == null) {
                            return r12;
                        }
                        i4 = i4;
                        i13 = 4;
                        i11 = 1;
                        i6 = 3;
                        int i24 = integer5;
                        i7 = integer3;
                        i9 = integer4;
                        i8 = i24;
                        integer2 = i12;
                        i14 = i4;
                        int i25 = i8;
                        integer4 = i9;
                        integer3 = i7;
                        integer5 = i25;
                    } else if (name.equals(UsbManager.EXTRA_PERMISSION_GRANTED)) {
                        if (parsePermission(r15, resources, xmlResourceParser, xmlResourceParser, strArr) == null) {
                            return r12;
                        }
                    } else if (name.equals("permission-tree")) {
                        if (parsePermissionTree(r15, resources, xmlResourceParser, xmlResourceParser, strArr) == null) {
                            return r12;
                        }
                    } else if (name.equals("uses-permission")) {
                        if (!parseUsesPermission(r15, resources, xmlResourceParser, xmlResourceParser, strArr)) {
                            return r12;
                        }
                    } else {
                        if (name.equals("uses-configuration")) {
                            ConfigurationInfo configurationInfo = new ConfigurationInfo();
                            TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(xmlResourceParser, a.AndroidManifestUsesConfiguration);
                            configurationInfo.reqTouchScreen = typedArrayObtainAttributes2.getInt(0, 0);
                            configurationInfo.reqKeyboardType = typedArrayObtainAttributes2.getInt(1, 0);
                            if (typedArrayObtainAttributes2.getBoolean(2, false)) {
                                configurationInfo.reqInputFeatures |= 1;
                            }
                            configurationInfo.reqNavigation = typedArrayObtainAttributes2.getInt(3, 0);
                            if (typedArrayObtainAttributes2.getBoolean(4, false)) {
                                configurationInfo.reqInputFeatures |= 2;
                            }
                            typedArrayObtainAttributes2.recycle();
                            r15.configPreferences.add(configurationInfo);
                            n.p(xmlResourceParser);
                            i6 = 3;
                            i13 = 4;
                        } else if (name.equals("uses-feature")) {
                            FeatureInfo featureInfo = new FeatureInfo();
                            TypedArray typedArrayObtainAttributes3 = resources.obtainAttributes(xmlResourceParser, a.AndroidManifestUsesFeature);
                            String nonResourceString = typedArrayObtainAttributes3.getNonResourceString(0);
                            featureInfo.name = nonResourceString;
                            if (nonResourceString == null) {
                                z2 = 1;
                                featureInfo.reqGlEsVersion = typedArrayObtainAttributes3.getInt(1, 0);
                            } else {
                                z2 = 1;
                            }
                            if (typedArrayObtainAttributes3.getBoolean(2, z2)) {
                                featureInfo.flags = featureInfo.flags | z2 ? 1 : 0;
                            }
                            typedArrayObtainAttributes3.recycle();
                            if (r15.reqFeatures == null) {
                                r15.reqFeatures = new ArrayList<>();
                            }
                            r15.reqFeatures.add(featureInfo);
                            if (featureInfo.name == null) {
                                ConfigurationInfo configurationInfo2 = new ConfigurationInfo();
                                configurationInfo2.reqGlEsVersion = featureInfo.reqGlEsVersion;
                                r15.configPreferences.add(configurationInfo2);
                            }
                            n.p(xmlResourceParser);
                            i6 = 3;
                            i13 = 4;
                        } else if (name.equals("uses-sdk")) {
                            int i26 = SDK_VERSION;
                            if (i26 > 0) {
                                TypedArray typedArrayObtainAttributes4 = resources.obtainAttributes(xmlResourceParser, a.AndroidManifestUsesSdk);
                                TypedValue typedValuePeekValue2 = typedArrayObtainAttributes4.peekValue(0);
                                if (typedValuePeekValue2 != null) {
                                    if (typedValuePeekValue2.type == 3 && (charSequence2 = typedValuePeekValue2.string) != null) {
                                        string = charSequence2.toString();
                                    } else {
                                        i16 = typedValuePeekValue2.data;
                                        i15 = i16;
                                        Package r2 = r12;
                                        obj = r2;
                                        i17 = 1;
                                        obj2 = r2;
                                    }
                                    typedValuePeekValue = typedArrayObtainAttributes4.peekValue(i17);
                                    obj4 = obj2;
                                    obj3 = obj;
                                    if (typedValuePeekValue == null) {
                                        i18 = i15;
                                        str2 = obj4;
                                        str = obj3;
                                    } else if (typedValuePeekValue.type != 3 && (charSequence = typedValuePeekValue.string) != null) {
                                        String string2 = charSequence.toString();
                                        obj3 = string2;
                                        obj4 = string2;
                                        i18 = i15;
                                        str2 = obj4;
                                        str = obj3;
                                    } else {
                                        i18 = typedValuePeekValue.data;
                                        str2 = obj2;
                                        str = obj;
                                    }
                                    typedArrayObtainAttributes4.recycle();
                                    if (str2 != 0) {
                                        str4 = SDK_CODENAME;
                                        if (!str2.equals(str4)) {
                                            if (str4 != null) {
                                                strArr[0] = "Requires development platform " + str2 + " (current platform is " + str4 + ")";
                                            } else {
                                                strArr[0] = "Requires development platform " + str2 + " but this is a release platform.";
                                            }
                                            this.mParseError = -12;
                                            return null;
                                        }
                                    } else if (i16 > i26) {
                                        strArr[0] = "Requires newer sdk version #" + i16 + " (current version is #" + i26 + ")";
                                        this.mParseError = -12;
                                        return null;
                                    }
                                    if (str != 0) {
                                        str3 = SDK_CODENAME;
                                        if (!str.equals(str3)) {
                                            if (str3 != null) {
                                                strArr[0] = "Requires development platform " + str + " (current platform is " + str3 + ")";
                                            } else {
                                                strArr[0] = "Requires development platform " + str + " but this is a release platform.";
                                            }
                                            this.mParseError = -12;
                                            return null;
                                        }
                                        r15.applicationInfo.targetSdkVersion = 10000;
                                    } else {
                                        r15.applicationInfo.targetSdkVersion = i18;
                                    }
                                } else {
                                    string = r12;
                                }
                                obj = string;
                                i17 = 1;
                                i16 = 0;
                                i15 = 0;
                                obj2 = string;
                                typedValuePeekValue = typedArrayObtainAttributes4.peekValue(i17);
                                obj4 = obj2;
                                obj3 = obj;
                                if (typedValuePeekValue == null) {
                                    i18 = i15;
                                    str2 = obj4;
                                    str = obj3;
                                } else {
                                    if (typedValuePeekValue.type != 3) {
                                    }
                                    i18 = typedValuePeekValue.data;
                                    str2 = obj2;
                                    str = obj;
                                }
                                typedArrayObtainAttributes4.recycle();
                                if (str2 != 0) {
                                    str4 = SDK_CODENAME;
                                    if (!str2.equals(str4)) {
                                        if (str4 != null) {
                                            strArr[0] = "Requires development platform " + str2 + " (current platform is " + str4 + ")";
                                        } else {
                                            strArr[0] = "Requires development platform " + str2 + " but this is a release platform.";
                                        }
                                        this.mParseError = -12;
                                        return null;
                                    }
                                } else if (i16 > i26) {
                                    strArr[0] = "Requires newer sdk version #" + i16 + " (current version is #" + i26 + ")";
                                    this.mParseError = -12;
                                    return null;
                                }
                                if (str != 0) {
                                    str3 = SDK_CODENAME;
                                    if (!str.equals(str3)) {
                                        if (str3 != null) {
                                            strArr[0] = "Requires development platform " + str + " (current platform is " + str3 + ")";
                                        } else {
                                            strArr[0] = "Requires development platform " + str + " but this is a release platform.";
                                        }
                                        this.mParseError = -12;
                                        return null;
                                    }
                                    r15.applicationInfo.targetSdkVersion = 10000;
                                } else {
                                    r15.applicationInfo.targetSdkVersion = i18;
                                }
                            }
                            n.p(xmlResourceParser);
                            i4 = i4;
                            r12 = null;
                            i13 = 4;
                            i11 = 1;
                            i6 = 3;
                            int i27 = integer5;
                            i7 = integer3;
                            i9 = integer4;
                            i8 = i27;
                            integer2 = i12;
                            i14 = i4;
                            int i28 = i8;
                            integer4 = i9;
                            integer3 = i7;
                            integer5 = i28;
                        } else if (name.equals("supports-screens")) {
                            TypedArray typedArrayObtainAttributes5 = resources.obtainAttributes(xmlResourceParser, a.AndroidManifestSupportsScreens);
                            r15.applicationInfo.requiresSmallestWidthDp = typedArrayObtainAttributes5.getInteger(6, 0);
                            r15.applicationInfo.compatibleWidthLimitDp = typedArrayObtainAttributes5.getInteger(7, 0);
                            r15.applicationInfo.largestWidthLimitDp = typedArrayObtainAttributes5.getInteger(8, 0);
                            i11 = 1;
                            integer2 = typedArrayObtainAttributes5.getInteger(1, i12);
                            int integer6 = typedArrayObtainAttributes5.getInteger(2, i4);
                            int integer7 = typedArrayObtainAttributes5.getInteger(3, i10);
                            integer3 = typedArrayObtainAttributes5.getInteger(5, integer3);
                            integer4 = typedArrayObtainAttributes5.getInteger(4, integer4);
                            integer5 = typedArrayObtainAttributes5.getInteger(0, integer5);
                            typedArrayObtainAttributes5.recycle();
                            n.p(xmlResourceParser);
                            i14 = integer6;
                            i6 = 3;
                            i13 = 4;
                            r12 = null;
                            i10 = integer7;
                        } else {
                            i12 = i12;
                            i11 = 1;
                            i6 = 3;
                            int i29 = integer5;
                            i7 = integer3;
                            i9 = integer4;
                            i8 = i29;
                            if (name.equals("protected-broadcast")) {
                                TypedArray typedArrayObtainAttributes6 = resources.obtainAttributes(xmlResourceParser, a.AndroidManifestProtectedBroadcast);
                                String nonResourceString2 = typedArrayObtainAttributes6.getNonResourceString(0);
                                typedArrayObtainAttributes6.recycle();
                                if (nonResourceString2 != null && (i2 & 1) != 0) {
                                    if (r15.protectedBroadcasts == null) {
                                        r15.protectedBroadcasts = new ArrayList<>();
                                    }
                                    if (!r15.protectedBroadcasts.contains(nonResourceString2)) {
                                        r15.protectedBroadcasts.add(nonResourceString2.intern());
                                    }
                                }
                                n.p(xmlResourceParser);
                                i13 = 4;
                                i4 = i4;
                                r12 = null;
                            } else if (name.equals("instrumentation")) {
                                i4 = i4;
                                if (parseInstrumentation(r15, resources, xmlResourceParser, xmlResourceParser, strArr) == null) {
                                    return null;
                                }
                                r12 = null;
                                i13 = 4;
                            } else {
                                i13 = 4;
                                i4 = i4;
                                r12 = null;
                                if (name.equals("original-package")) {
                                    TypedArray typedArrayObtainAttributes7 = resources.obtainAttributes(xmlResourceParser, a.AndroidManifestOriginalPackage);
                                    String nonConfigurationString3 = typedArrayObtainAttributes7.getNonConfigurationString(0, 0);
                                    if (!r15.packageName.equals(nonConfigurationString3)) {
                                        if (r15.mOriginalPackages == null) {
                                            r15.mOriginalPackages = new ArrayList<>();
                                            r15.mRealPackage = r15.packageName;
                                        }
                                        r15.mOriginalPackages.add(nonConfigurationString3);
                                    }
                                    typedArrayObtainAttributes7.recycle();
                                    n.p(xmlResourceParser);
                                } else if (name.equals("adopt-permissions")) {
                                    TypedArray typedArrayObtainAttributes8 = resources.obtainAttributes(xmlResourceParser, a.AndroidManifestOriginalPackage);
                                    String nonConfigurationString4 = typedArrayObtainAttributes8.getNonConfigurationString(0, 0);
                                    typedArrayObtainAttributes8.recycle();
                                    if (nonConfigurationString4 != null) {
                                        if (r15.mAdoptPermissions == null) {
                                            r15.mAdoptPermissions = new ArrayList<>();
                                        }
                                        r15.mAdoptPermissions.add(nonConfigurationString4);
                                    }
                                    n.p(xmlResourceParser);
                                } else {
                                    if (name.equals("uses-gl-texture") || name.equals("compatible-screens") || name.equals("supports-input") || name.equals("eat-comment")) {
                                        n.p(xmlResourceParser);
                                    } else {
                                        Slog.w(TAG, "Unknown element under <manifest>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + " " + xmlResourceParser.getPositionDescription());
                                        n.p(xmlResourceParser);
                                    }
                                    i21 = i13;
                                    integer2 = i12;
                                    i20 = i6;
                                    depth = i5;
                                    i23 = i4;
                                    int i30 = i11;
                                    r12 = r12;
                                    i22 = i10;
                                    i19 = i30;
                                    int i31 = i8;
                                    integer4 = i9;
                                    integer3 = i7;
                                    integer5 = i31;
                                }
                            }
                            integer2 = i12;
                            i14 = i4;
                            int i210 = i8;
                            integer4 = i9;
                            integer3 = i7;
                            integer5 = i210;
                        }
                        i11 = 1;
                        int i211 = integer5;
                        i7 = integer3;
                        i9 = integer4;
                        i8 = i211;
                        integer2 = i12;
                        i14 = i4;
                        int i212 = i8;
                        integer4 = i9;
                        integer3 = i7;
                        integer5 = i212;
                    }
                    i4 = i4;
                    i13 = 4;
                    i11 = 1;
                    i6 = 3;
                    int i213 = integer5;
                    i7 = integer3;
                    i9 = integer4;
                    i8 = i213;
                    integer2 = i12;
                    i14 = i4;
                    int i214 = i8;
                    integer4 = i9;
                    integer3 = i7;
                    integer5 = i214;
                } else if (z3) {
                    Slog.w(TAG, "<manifest> has more than one <application>");
                    n.p(xmlResourceParser);
                } else {
                    i10 = i22;
                    i14 = i23;
                    int i32 = integer2;
                    i5 = depth;
                    if (!parseApplication(r15, resources, xmlResourceParser, xmlResourceParser, i2, strArr)) {
                        return r12;
                    }
                    r12 = r12;
                    integer2 = i32;
                    i13 = 4;
                    i11 = 1;
                    z3 = true;
                    i6 = 3;
                }
                i21 = i13;
                i23 = i14;
                i20 = i6;
                depth = i5;
                int i33 = i11;
                r12 = r12;
                i22 = i10;
                i19 = i33;
            }
            i10 = i22;
            i4 = i23;
            i12 = integer2;
            i5 = depth;
            i13 = i21;
            i6 = i20;
            r12 = r12;
            i11 = 1;
            int i34 = integer5;
            i7 = integer3;
            i9 = integer4;
            i8 = i34;
            i21 = i13;
            integer2 = i12;
            i20 = i6;
            depth = i5;
            i23 = i4;
            int i35 = i11;
            r12 = r12;
            i22 = i10;
            i19 = i35;
            int i36 = i8;
            integer4 = i9;
            integer3 = i7;
            integer5 = i36;
        }
        int i37 = i22;
        int i38 = i23;
        int i39 = integer2;
        int i40 = i21;
        Package r1 = r12;
        int i41 = integer5;
        int i42 = integer3;
        int i43 = integer4;
        if (z3 || r15.instrumentation.size() != 0) {
            i3 = 0;
        } else {
            i3 = 0;
            strArr[0] = "<manifest> does not contain an <application> or <instrumentation>";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY;
        }
        int length = NEW_PERMISSIONS.length;
        StringBuilder sb = r1;
        int i44 = i3;
        while (i44 < length) {
            NewPermissionInfo newPermissionInfo = NEW_PERMISSIONS[i44];
            if (r15.applicationInfo.targetSdkVersion >= newPermissionInfo.sdkVersion) {
                break;
            }
            if (!r15.requestedPermissions.contains(newPermissionInfo.name)) {
                if (sb == 0) {
                    StringBuilder sb2 = new StringBuilder(128);
                    sb2.append(r15.packageName);
                    sb2.append(": compat added ");
                    sb = sb2;
                } else {
                    sb.append(CharArrayBuffers.uppercaseAddon);
                    sb = sb;
                }
                sb.append(newPermissionInfo.name);
                r15.requestedPermissions.add(newPermissionInfo.name);
                r15.requestedPermissionsRequired.add(Boolean.TRUE);
            }
            i44++;
            sb = sb;
        }
        if (sb != 0) {
            Slog.i(TAG, sb.toString());
        }
        int length2 = SPLIT_PERMISSIONS.length;
        for (int i45 = i3; i45 < length2; i45++) {
            SplitPermissionInfo splitPermissionInfo = SPLIT_PERMISSIONS[i45];
            if (r15.applicationInfo.targetSdkVersion < splitPermissionInfo.targetSdk && r15.requestedPermissions.contains(splitPermissionInfo.rootPerm)) {
                int i46 = i3;
                while (true) {
                    String[] strArr2 = splitPermissionInfo.newPerms;
                    if (i46 < strArr2.length) {
                        String str5 = strArr2[i46];
                        if (!r15.requestedPermissions.contains(str5)) {
                            r15.requestedPermissions.add(str5);
                            r15.requestedPermissionsRequired.add(Boolean.TRUE);
                        }
                        i46++;
                    }
                }
            }
        }
        if (i39 < 0 || (i39 > 0 && r15.applicationInfo.targetSdkVersion >= i40)) {
            r15.applicationInfo.flags |= 512;
        }
        if (i38 != 0) {
            r15.applicationInfo.flags |= 1024;
        }
        if (i37 < 0 || (i37 > 0 && r15.applicationInfo.targetSdkVersion >= i40)) {
            r15.applicationInfo.flags |= 2048;
        }
        if (i42 < 0 || (i42 > 0 && r15.applicationInfo.targetSdkVersion >= 9)) {
            r15.applicationInfo.flags |= 524288;
        }
        if (i43 < 0 || (i43 > 0 && r15.applicationInfo.targetSdkVersion >= i40)) {
            r15.applicationInfo.flags |= 4096;
        }
        if (i41 < 0 || (i41 > 0 && r15.applicationInfo.targetSdkVersion >= i40)) {
            r15.applicationInfo.flags |= 8192;
        }
        if (r15.applicationInfo.targetSdkVersion < 18) {
            for (int i47 = i3; i47 < r15.requestedPermissionsRequired.size(); i47++) {
                r15.requestedPermissionsRequired.set(i47, Boolean.TRUE);
            }
        }
        return r15;
    }
}
