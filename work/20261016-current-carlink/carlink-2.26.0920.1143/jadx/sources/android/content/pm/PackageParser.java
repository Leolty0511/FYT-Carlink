package android.content.pm;

import android.Manifest;
import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.app.m;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.split.DefaultSplitAssetLoader;
import android.content.pm.split.SplitAssetDependencyLoader;
import android.content.pm.split.SplitAssetLoader;
import android.content.pm.split.SplitDependencyLoader;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.hardware.Camera;
import android.media.TtmlUtils;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.Bundle;
import android.os.FileUtils;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PatternMatcher;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.provider.SettingsStringUtil;
import android.security.keystore.KeyProperties;
import android.service.notification.ZenModeConfig;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.apk.ApkSignatureSchemeV2Verifier;
import android.util.jar.StrictJarFile;
import android.widget.GridLayout;
import com.android.internal.R;
import com.android.internal.app.DumpHeapActivity;
import com.android.internal.os.ClassLoaderFactory;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.XmlUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.ZipEntry;
import libcore.io.IoUtils;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class PackageParser {
    private static final String ANDROID_MANIFEST_FILENAME = "AndroidManifest.xml";
    private static final String ANDROID_RESOURCES = "http://schemas.android.com/apk/res/android";
    public static final int APK_SIGNING_UNKNOWN = 0;
    public static final int APK_SIGNING_V1 = 1;
    public static final int APK_SIGNING_V2 = 2;
    private static final Set<String> CHILD_PACKAGE_TAGS;
    private static final boolean DEBUG_BACKUP = false;
    private static final boolean DEBUG_JAR = false;
    private static final boolean DEBUG_PARSER = false;
    private static final float DEFAULT_PRE_O_MAX_ASPECT_RATIO = 1.86f;
    private static final boolean LOG_PARSE_TIMINGS;
    private static final int LOG_PARSE_TIMINGS_THRESHOLD_MS = 100;
    private static final boolean LOG_UNSAFE_BROADCASTS = false;
    private static final int MAX_PACKAGES_PER_APK = 5;
    private static final String METADATA_MAX_ASPECT_RATIO = "android.max_aspect";
    private static final String META_DATA_INSTANT_APPS = "instantapps.clients.allowed";
    private static final String MNT_EXPAND = "/mnt/expand/";
    private static final boolean MULTI_PACKAGE_APK_ENABLED;
    public static final NewPermissionInfo[] NEW_PERMISSIONS;
    public static final int PARSE_CHATTY = 2;
    public static final int PARSE_COLLECT_CERTIFICATES = 256;
    private static final int PARSE_DEFAULT_INSTALL_LOCATION = -1;
    private static final int PARSE_DEFAULT_TARGET_SANDBOX = 1;
    public static final int PARSE_ENFORCE_CODE = 1024;
    public static final int PARSE_EXTERNAL_STORAGE = 32;
    public static final int PARSE_FORCE_SDK = 4096;
    public static final int PARSE_FORWARD_LOCK = 16;
    public static final int PARSE_IGNORE_PROCESSES = 8;

    @Deprecated
    public static final int PARSE_IS_EPHEMERAL = 2048;
    public static final int PARSE_IS_PRIVILEGED = 128;
    public static final int PARSE_IS_SYSTEM = 1;
    public static final int PARSE_IS_SYSTEM_DIR = 64;
    public static final int PARSE_MUST_BE_APK = 4;
    public static final int PARSE_TRUSTED_OVERLAY = 512;
    private static final String PROPERTY_CHILD_PACKAGES_ENABLED = "persist.sys.child_packages_enabled";
    private static final int RECREATE_ON_CONFIG_CHANGES_MASK = 3;
    private static final boolean RIGID_PARSER = false;
    private static final Set<String> SAFE_BROADCASTS;
    private static final String[] SDK_CODENAMES;
    private static final int SDK_VERSION;
    public static final SplitPermissionInfo[] SPLIT_PERMISSIONS;
    private static final String TAG = "PackageParser";
    private static final String TAG_ADOPT_PERMISSIONS = "adopt-permissions";
    private static final String TAG_APPLICATION = "application";
    private static final String TAG_COMPATIBLE_SCREENS = "compatible-screens";
    private static final String TAG_EAT_COMMENT = "eat-comment";
    private static final String TAG_FEATURE_GROUP = "feature-group";
    private static final String TAG_INSTRUMENTATION = "instrumentation";
    private static final String TAG_KEY_SETS = "key-sets";
    private static final String TAG_MANIFEST = "manifest";
    private static final String TAG_ORIGINAL_PACKAGE = "original-package";
    private static final String TAG_OVERLAY = "overlay";
    private static final String TAG_PACKAGE = "package";
    private static final String TAG_PACKAGE_VERIFIER = "package-verifier";
    private static final String TAG_PERMISSION = "permission";
    private static final String TAG_PERMISSION_GROUP = "permission-group";
    private static final String TAG_PERMISSION_TREE = "permission-tree";
    private static final String TAG_PROTECTED_BROADCAST = "protected-broadcast";
    private static final String TAG_RESTRICT_UPDATE = "restrict-update";
    private static final String TAG_SUPPORTS_INPUT = "supports-input";
    private static final String TAG_SUPPORT_SCREENS = "supports-screens";
    private static final String TAG_USES_CONFIGURATION = "uses-configuration";
    private static final String TAG_USES_FEATURE = "uses-feature";
    private static final String TAG_USES_GL_TEXTURE = "uses-gl-texture";
    private static final String TAG_USES_PERMISSION = "uses-permission";
    private static final String TAG_USES_PERMISSION_SDK_23 = "uses-permission-sdk-23";
    private static final String TAG_USES_PERMISSION_SDK_M = "uses-permission-sdk-m";
    private static final String TAG_USES_SDK = "uses-sdk";
    private static final String TAG_USES_SPLIT = "uses-split";
    private static ThreadLocal<byte[]> sBuffer;
    public static final AtomicInteger sCachedPackageReadCount;
    private static boolean sCompatibilityModeEnabled;
    private static final Comparator<String> sSplitNameComparator;

    @Deprecated
    private String mArchiveSourcePath;
    private File mCacheDir;
    private Callback mCallback;
    private DisplayMetrics mMetrics;
    private boolean mOnlyCoreApps;
    private int mParseError = 1;
    private ParsePackageItemArgs mParseInstrumentationArgs;
    private String[] mSeparateProcesses;

    public static final class Activity extends Component<ActivityIntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Activity>() { // from class: android.content.pm.PackageParser.Activity.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Activity createFromParcel(Parcel parcel) {
                return new Activity(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Activity[] newArray(int i2) {
                return new Activity[i2];
            }
        };
        public final ActivityInfo info;
        private boolean mHasMaxAspectRatio;

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasMaxAspectRatio() {
            return this.mHasMaxAspectRatio;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxAspectRatio(float f2) {
            ActivityInfo activityInfo = this.info;
            int i2 = activityInfo.resizeMode;
            if (i2 == 2 || i2 == 1) {
                return;
            }
            if (f2 >= 1.0f || f2 == 0.0f) {
                activityInfo.maxAspectRatio = f2;
                this.mHasMaxAspectRatio = true;
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sbQ = c.q(128, "Activity{");
            sbQ.append(Integer.toHexString(System.identityHashCode(this)));
            sbQ.append(' ');
            appendComponentShortName(sbQ);
            sbQ.append('}');
            return sbQ.toString();
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.info, i2 | 2);
            parcel.writeBoolean(this.mHasMaxAspectRatio);
        }

        public Activity(ParseComponentArgs parseComponentArgs, ActivityInfo activityInfo) {
            super(parseComponentArgs, (ComponentInfo) activityInfo);
            this.info = activityInfo;
            activityInfo.applicationInfo = parseComponentArgs.owner.applicationInfo;
        }

        private Activity(Parcel parcel) {
            super(parcel);
            this.info = (ActivityInfo) parcel.readParcelable(Object.class.getClassLoader());
            this.mHasMaxAspectRatio = parcel.readBoolean();
            Iterator it = this.intents.iterator();
            while (it.hasNext()) {
                ((ActivityIntentInfo) it.next()).activity = this;
            }
            ActivityInfo activityInfo = this.info;
            String str = activityInfo.permission;
            if (str != null) {
                activityInfo.permission = str.intern();
            }
        }
    }

    public static class ApkLite {
        public final Certificate[][] certificates;
        public final String codePath;
        public final String configForSplit;
        public final boolean coreApp;
        public final boolean debuggable;
        public final boolean extractNativeLibs;
        public final int installLocation;
        public boolean isFeatureSplit;
        public final boolean isolatedSplits;
        public final boolean multiArch;
        public final String packageName;
        public final int revisionCode;
        public final Signature[] signatures;
        public final String splitName;
        public final boolean use32bitAbi;
        public final String usesSplitName;
        public final VerifierInfo[] verifiers;
        public final int versionCode;

        public ApkLite(String str, String str2, String str3, boolean z2, String str4, String str5, int i2, int i3, int i4, List<VerifierInfo> list, Signature[] signatureArr, Certificate[][] certificateArr, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
            this.codePath = str;
            this.packageName = str2;
            this.splitName = str3;
            this.isFeatureSplit = z2;
            this.configForSplit = str4;
            this.usesSplitName = str5;
            this.versionCode = i2;
            this.revisionCode = i3;
            this.installLocation = i4;
            this.verifiers = (VerifierInfo[]) list.toArray(new VerifierInfo[list.size()]);
            this.signatures = signatureArr;
            this.certificates = certificateArr;
            this.coreApp = z3;
            this.debuggable = z4;
            this.multiArch = z5;
            this.use32bitAbi = z6;
            this.extractNativeLibs = z7;
            this.isolatedSplits = z8;
        }
    }

    public static class CachedComponentArgs {
        ParseComponentArgs mActivityAliasArgs;
        ParseComponentArgs mActivityArgs;
        ParseComponentArgs mProviderArgs;
        ParseComponentArgs mServiceArgs;

        private CachedComponentArgs() {
        }
    }

    public interface Callback {
        String[] getOverlayApks(String str);

        String[] getOverlayPaths(String str, String str2);

        boolean hasFeature(String str);
    }

    public static final class CallbackImpl implements Callback {
        private final PackageManager mPm;

        public CallbackImpl(PackageManager packageManager) {
            this.mPm = packageManager;
        }

        @Override // android.content.pm.PackageParser.Callback
        public String[] getOverlayApks(String str) {
            return null;
        }

        @Override // android.content.pm.PackageParser.Callback
        public String[] getOverlayPaths(String str, String str2) {
            return null;
        }

        @Override // android.content.pm.PackageParser.Callback
        public boolean hasFeature(String str) {
            return this.mPm.hasSystemFeature(str);
        }
    }

    public static final class Instrumentation extends Component<IntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Instrumentation>() { // from class: android.content.pm.PackageParser.Instrumentation.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Instrumentation createFromParcel(Parcel parcel) {
                return new Instrumentation(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Instrumentation[] newArray(int i2) {
                return new Instrumentation[i2];
            }
        };
        public final InstrumentationInfo info;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sbQ = c.q(128, "Instrumentation{");
            sbQ.append(Integer.toHexString(System.identityHashCode(this)));
            sbQ.append(' ');
            appendComponentShortName(sbQ);
            sbQ.append('}');
            return sbQ.toString();
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.info, i2);
        }

        public Instrumentation(ParsePackageItemArgs parsePackageItemArgs, InstrumentationInfo instrumentationInfo) {
            super(parsePackageItemArgs, instrumentationInfo);
            this.info = instrumentationInfo;
        }

        private Instrumentation(Parcel parcel) {
            super(parcel);
            InstrumentationInfo instrumentationInfo = (InstrumentationInfo) parcel.readParcelable(Object.class.getClassLoader());
            this.info = instrumentationInfo;
            String str = instrumentationInfo.targetPackage;
            if (str != null) {
                instrumentationInfo.targetPackage = str.intern();
            }
            String str2 = instrumentationInfo.targetProcesses;
            if (str2 != null) {
                instrumentationInfo.targetProcesses = str2.intern();
            }
        }
    }

    public static abstract class IntentInfo extends IntentFilter {
        public int banner;
        public boolean hasDefault;
        public int icon;
        public int labelRes;
        public int logo;
        public CharSequence nonLocalizedLabel;
        public int preferred;

        public IntentInfo() {
        }

        public void writeIntentInfoToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.hasDefault ? 1 : 0);
            parcel.writeInt(this.labelRes);
            parcel.writeCharSequence(this.nonLocalizedLabel);
            parcel.writeInt(this.icon);
            parcel.writeInt(this.logo);
            parcel.writeInt(this.banner);
            parcel.writeInt(this.preferred);
        }

        public IntentInfo(Parcel parcel) {
            super(parcel);
            this.hasDefault = parcel.readInt() == 1;
            this.labelRes = parcel.readInt();
            this.nonLocalizedLabel = parcel.readCharSequence();
            this.icon = parcel.readInt();
            this.logo = parcel.readInt();
            this.banner = parcel.readInt();
            this.preferred = parcel.readInt();
        }
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

    public static class PackageLite {
        public final String baseCodePath;
        public final int baseRevisionCode;
        public final String codePath;
        public final String[] configForSplit;
        public final boolean coreApp;
        public final boolean debuggable;
        public final boolean extractNativeLibs;
        public final int installLocation;
        public final boolean[] isFeatureSplits;
        public final boolean isolatedSplits;
        public final boolean multiArch;
        public final String packageName;
        public final String[] splitCodePaths;
        public final String[] splitNames;
        public final int[] splitRevisionCodes;
        public final boolean use32bitAbi;
        public final String[] usesSplitNames;
        public final VerifierInfo[] verifiers;
        public final int versionCode;

        public PackageLite(String str, ApkLite apkLite, String[] strArr, boolean[] zArr, String[] strArr2, String[] strArr3, String[] strArr4, int[] iArr) {
            this.packageName = apkLite.packageName;
            this.versionCode = apkLite.versionCode;
            this.installLocation = apkLite.installLocation;
            this.verifiers = apkLite.verifiers;
            this.splitNames = strArr;
            this.isFeatureSplits = zArr;
            this.usesSplitNames = strArr2;
            this.configForSplit = strArr3;
            this.codePath = str;
            this.baseCodePath = apkLite.codePath;
            this.splitCodePaths = strArr4;
            this.baseRevisionCode = apkLite.revisionCode;
            this.splitRevisionCodes = iArr;
            this.coreApp = apkLite.coreApp;
            this.debuggable = apkLite.debuggable;
            this.multiArch = apkLite.multiArch;
            this.use32bitAbi = apkLite.use32bitAbi;
            this.extractNativeLibs = apkLite.extractNativeLibs;
            this.isolatedSplits = apkLite.isolatedSplits;
        }

        public List<String> getAllCodePaths() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.baseCodePath);
            if (!ArrayUtils.isEmpty(this.splitCodePaths)) {
                Collections.addAll(arrayList, this.splitCodePaths);
            }
            return arrayList;
        }
    }

    public static class ParseComponentArgs extends ParsePackageItemArgs {
        final int descriptionRes;
        final int enabledRes;
        int flags;
        final int processRes;
        final String[] sepProcesses;

        public ParseComponentArgs(Package r1, String[] strArr, int i2, int i3, int i4, int i5, int i6, int i7, String[] strArr2, int i8, int i9, int i10) {
            super(r1, strArr, i2, i3, i4, i5, i6, i7);
            this.sepProcesses = strArr2;
            this.processRes = i8;
            this.descriptionRes = i9;
            this.enabledRes = i10;
        }
    }

    public static class ParsePackageItemArgs {
        final int bannerRes;
        final int iconRes;
        final int labelRes;
        final int logoRes;
        final int nameRes;
        final String[] outError;
        final Package owner;
        final int roundIconRes;
        TypedArray sa;
        String tag;

        public ParsePackageItemArgs(Package r1, String[] strArr, int i2, int i3, int i4, int i5, int i6, int i7) {
            this.owner = r1;
            this.outError = strArr;
            this.nameRes = i2;
            this.labelRes = i3;
            this.iconRes = i4;
            this.logoRes = i6;
            this.bannerRes = i7;
            this.roundIconRes = i5;
        }
    }

    public static final class Permission extends Component<IntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Permission>() { // from class: android.content.pm.PackageParser.Permission.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Permission createFromParcel(Parcel parcel) {
                return new Permission(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Permission[] newArray(int i2) {
                return new Permission[i2];
            }
        };
        public PermissionGroup group;
        public final PermissionInfo info;
        public boolean tree;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Permission{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            return c.n(sb, this.info.name, "}");
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.info, i2);
            parcel.writeInt(this.tree ? 1 : 0);
            parcel.writeParcelable(this.group, i2);
        }

        public Permission(Package r1) {
            super(r1);
            this.info = new PermissionInfo();
        }

        public Permission(Package r1, PermissionInfo permissionInfo) {
            super(r1);
            this.info = permissionInfo;
        }

        private Permission(Parcel parcel) {
            super(parcel);
            ClassLoader classLoader = Object.class.getClassLoader();
            PermissionInfo permissionInfo = (PermissionInfo) parcel.readParcelable(classLoader);
            this.info = permissionInfo;
            String str = permissionInfo.group;
            if (str != null) {
                permissionInfo.group = str.intern();
            }
            this.tree = parcel.readInt() == 1;
            this.group = (PermissionGroup) parcel.readParcelable(classLoader);
        }
    }

    public static final class PermissionGroup extends Component<IntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<PermissionGroup>() { // from class: android.content.pm.PackageParser.PermissionGroup.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PermissionGroup createFromParcel(Parcel parcel) {
                return new PermissionGroup(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PermissionGroup[] newArray(int i2) {
                return new PermissionGroup[i2];
            }
        };
        public final PermissionGroupInfo info;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("PermissionGroup{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            return c.n(sb, this.info.name, "}");
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.info, i2);
        }

        public PermissionGroup(Package r1) {
            super(r1);
            this.info = new PermissionGroupInfo();
        }

        public PermissionGroup(Package r1, PermissionGroupInfo permissionGroupInfo) {
            super(r1);
            this.info = permissionGroupInfo;
        }

        private PermissionGroup(Parcel parcel) {
            super(parcel);
            this.info = (PermissionGroupInfo) parcel.readParcelable(Object.class.getClassLoader());
        }
    }

    public static final class Provider extends Component<ProviderIntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Provider>() { // from class: android.content.pm.PackageParser.Provider.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Provider createFromParcel(Parcel parcel) {
                return new Provider(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Provider[] newArray(int i2) {
                return new Provider[i2];
            }
        };
        public final ProviderInfo info;
        public boolean syncable;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sbQ = c.q(128, "Provider{");
            sbQ.append(Integer.toHexString(System.identityHashCode(this)));
            sbQ.append(' ');
            appendComponentShortName(sbQ);
            sbQ.append('}');
            return sbQ.toString();
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.info, i2 | 2);
            parcel.writeInt(this.syncable ? 1 : 0);
        }

        public Provider(ParseComponentArgs parseComponentArgs, ProviderInfo providerInfo) {
            super(parseComponentArgs, (ComponentInfo) providerInfo);
            this.info = providerInfo;
            providerInfo.applicationInfo = parseComponentArgs.owner.applicationInfo;
            this.syncable = false;
        }

        public Provider(Provider provider) {
            super(provider);
            this.info = provider.info;
            this.syncable = provider.syncable;
        }

        private Provider(Parcel parcel) {
            super(parcel);
            this.info = (ProviderInfo) parcel.readParcelable(Object.class.getClassLoader());
            this.syncable = parcel.readInt() == 1;
            Iterator it = this.intents.iterator();
            while (it.hasNext()) {
                ((ProviderIntentInfo) it.next()).provider = this;
            }
            ProviderInfo providerInfo = this.info;
            String str = providerInfo.readPermission;
            if (str != null) {
                providerInfo.readPermission = str.intern();
            }
            ProviderInfo providerInfo2 = this.info;
            String str2 = providerInfo2.writePermission;
            if (str2 != null) {
                providerInfo2.writePermission = str2.intern();
            }
            ProviderInfo providerInfo3 = this.info;
            String str3 = providerInfo3.authority;
            if (str3 != null) {
                providerInfo3.authority = str3.intern();
            }
        }
    }

    public static final class Service extends Component<ServiceIntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Service>() { // from class: android.content.pm.PackageParser.Service.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Service createFromParcel(Parcel parcel) {
                return new Service(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Service[] newArray(int i2) {
                return new Service[i2];
            }
        };
        public final ServiceInfo info;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sbQ = c.q(128, "Service{");
            sbQ.append(Integer.toHexString(System.identityHashCode(this)));
            sbQ.append(' ');
            appendComponentShortName(sbQ);
            sbQ.append('}');
            return sbQ.toString();
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.info, i2 | 2);
        }

        public Service(ParseComponentArgs parseComponentArgs, ServiceInfo serviceInfo) {
            super(parseComponentArgs, (ComponentInfo) serviceInfo);
            this.info = serviceInfo;
            serviceInfo.applicationInfo = parseComponentArgs.owner.applicationInfo;
        }

        private Service(Parcel parcel) {
            super(parcel);
            this.info = (ServiceInfo) parcel.readParcelable(Object.class.getClassLoader());
            Iterator it = this.intents.iterator();
            while (it.hasNext()) {
                ((ServiceIntentInfo) it.next()).service = this;
            }
            ServiceInfo serviceInfo = this.info;
            String str = serviceInfo.permission;
            if (str != null) {
                serviceInfo.permission = str.intern();
            }
        }
    }

    public static class SplitNameComparator implements Comparator<String> {
        private SplitNameComparator() {
        }

        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return str.compareTo(str2);
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
        boolean z2 = Build.IS_DEBUGGABLE;
        LOG_PARSE_TIMINGS = z2;
        MULTI_PACKAGE_APK_ENABLED = z2 && SystemProperties.getBoolean(PROPERTY_CHILD_PACKAGES_ENABLED, false);
        ArraySet arraySet = new ArraySet();
        CHILD_PACKAGE_TAGS = arraySet;
        m.n(arraySet, TAG_APPLICATION, TAG_USES_PERMISSION, TAG_USES_PERMISSION_SDK_M, TAG_USES_PERMISSION_SDK_23);
        m.n(arraySet, TAG_USES_CONFIGURATION, TAG_USES_FEATURE, TAG_FEATURE_GROUP, TAG_USES_SDK);
        m.n(arraySet, TAG_SUPPORT_SCREENS, TAG_INSTRUMENTATION, TAG_USES_GL_TEXTURE, TAG_COMPATIBLE_SCREENS);
        arraySet.add(TAG_SUPPORTS_INPUT);
        arraySet.add(TAG_EAT_COMMENT);
        sCachedPackageReadCount = new AtomicInteger();
        ArraySet arraySet2 = new ArraySet();
        SAFE_BROADCASTS = arraySet2;
        arraySet2.add(Intent.ACTION_BOOT_COMPLETED);
        NEW_PERMISSIONS = new NewPermissionInfo[]{new NewPermissionInfo(Manifest.permission.WRITE_EXTERNAL_STORAGE, 4, 0), new NewPermissionInfo(Manifest.permission.READ_PHONE_STATE, 4, 0)};
        SPLIT_PERMISSIONS = new SplitPermissionInfo[]{new SplitPermissionInfo(Manifest.permission.WRITE_EXTERNAL_STORAGE, new String[]{Manifest.permission.READ_EXTERNAL_STORAGE}, 10001), new SplitPermissionInfo(Manifest.permission.READ_CONTACTS, new String[]{Manifest.permission.READ_CALL_LOG}, 16), new SplitPermissionInfo(Manifest.permission.WRITE_CONTACTS, new String[]{Manifest.permission.WRITE_CALL_LOG}, 16)};
        SDK_VERSION = Build.VERSION.SDK_INT;
        SDK_CODENAMES = Build.VERSION.ACTIVE_CODENAMES;
        sCompatibilityModeEnabled = true;
        sSplitNameComparator = new SplitNameComparator();
        sBuffer = new ThreadLocal<>();
    }

    public PackageParser() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mMetrics = displayMetrics;
        displayMetrics.setToDefaults();
    }

    private void adjustPackageToBeUnresizeableAndUnpipable(Package r4) {
        Iterator<Activity> it = r4.activities.iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().info;
            activityInfo.resizeMode = 0;
            activityInfo.flags &= -4194305;
        }
    }

    private static String buildClassName(String str, CharSequence charSequence, String[] strArr) {
        if (charSequence == null || charSequence.length() <= 0) {
            strArr[0] = c.j("Empty class name in package ", str);
            return null;
        }
        String string = charSequence.toString();
        if (string.charAt(0) == '.') {
            return c.D(str, string);
        }
        if (string.indexOf(46) >= 0) {
            return string;
        }
        return str + '.' + string;
    }

    private static String buildCompoundName(String str, CharSequence charSequence, String str2, String[] strArr) {
        String string = charSequence.toString();
        char cCharAt = string.charAt(0);
        if (str == null || cCharAt != ':') {
            String strValidateName = validateName(string, true, false);
            if (strValidateName == null || StorageManager.UUID_SYSTEM.equals(string)) {
                return string;
            }
            StringBuilder sbW = c.w("Invalid ", str2, " name ", string, " in package ");
            sbW.append(str);
            sbW.append(": ");
            sbW.append(strValidateName);
            strArr[0] = sbW.toString();
            return null;
        }
        if (string.length() < 2) {
            strArr[0] = c.n(c.w("Bad ", str2, " name ", string, " in package "), str, ": must be at least two characters");
            return null;
        }
        String strValidateName2 = validateName(string.substring(1), false, false);
        if (strValidateName2 == null) {
            return str.concat(string);
        }
        StringBuilder sbW2 = c.w("Invalid ", str2, " name ", string, " in package ");
        sbW2.append(str);
        sbW2.append(": ");
        sbW2.append(strValidateName2);
        strArr[0] = sbW2.toString();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String buildProcessName(String str, String str2, CharSequence charSequence, int i2, String[] strArr, String[] strArr2) {
        if ((i2 & 8) != 0 && !StorageManager.UUID_SYSTEM.equals(charSequence)) {
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
        return (charSequence == null || charSequence.length() <= 0) ? str2 : TextUtils.safeIntern(buildCompoundName(str, charSequence, DumpHeapActivity.KEY_PROCESS, strArr2));
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

    private void cacheResult(File file, int i2, Package r6) {
        if (this.mCacheDir == null) {
            return;
        }
        try {
            File file2 = new File(this.mCacheDir, getCacheKey(file, i2));
            if (file2.exists() && !file2.delete()) {
                Slog.e(TAG, "Unable to delete cache file: " + file2);
            }
            byte[] cacheEntry = toCacheEntry(r6);
            if (cacheEntry == null) {
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    fileOutputStream.write(cacheEntry);
                    fileOutputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e2) {
                Slog.w(TAG, "Error writing cache entry.", e2);
                file2.delete();
            }
        } catch (Throwable th4) {
            Slog.w(TAG, "Error saving package cache.", th4);
        }
    }

    private boolean checkOverlayRequiredSystemProperty(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String str3 = SystemProperties.get(str);
            return str3 != null && str3.equals(str2);
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return true;
        }
        Slog.w(TAG, "Disabling overlay - incomplete property :'" + str + "=" + str2 + "' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified.");
        return false;
    }

    private static boolean checkUseInstalledOrHidden(int i2, PackageUserState packageUserState, ApplicationInfo applicationInfo) {
        return packageUserState.isAvailable(i2) || !(applicationInfo == null || !applicationInfo.isSystemApp() || (i2 & PackageManager.MATCH_KNOWN_PACKAGES) == 0);
    }

    public static void closeQuietly(StrictJarFile strictJarFile) {
        if (strictJarFile != null) {
            try {
                strictJarFile.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void collectCertificates(Package r3, int i2) {
        collectCertificatesInternal(r3, i2);
        ArrayList<Package> arrayList = r3.childPackages;
        int size = arrayList != null ? arrayList.size() : 0;
        for (int i3 = 0; i3 < size; i3++) {
            Package r1 = r3.childPackages.get(i3);
            r1.mCertificates = r3.mCertificates;
            r1.mSignatures = r3.mSignatures;
            r1.mSigningKeys = r3.mSigningKeys;
        }
    }

    private static void collectCertificatesInternal(Package r5, int i2) {
        r5.mCertificates = null;
        r5.mSignatures = null;
        r5.mSigningKeys = null;
        Trace.traceBegin(Trace.TRACE_TAG_PACKAGE_MANAGER, "collectCertificates");
        try {
            collectCertificates(r5, new File(r5.baseCodePath), i2);
            if (!ArrayUtils.isEmpty(r5.splitCodePaths)) {
                for (int i3 = 0; i3 < r5.splitCodePaths.length; i3++) {
                    collectCertificates(r5, new File(r5.splitCodePaths[i3]), i2);
                }
            }
        } finally {
            Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
        }
    }

    public static int computeMinSdkVersion(int i2, String str, int i3, String[] strArr, String[] strArr2) {
        if (str == null) {
            if (i2 <= i3) {
                return i2;
            }
            strArr2[0] = m.f("Requires newer sdk version #", i2, " (current version is #", i3, ")");
            return -1;
        }
        if (ArrayUtils.contains(strArr, str)) {
            return 10000;
        }
        if (strArr.length > 0) {
            strArr2[0] = c.n(c.v("Requires development platform ", str, " (current platform is any of "), Arrays.toString(strArr), ")");
        } else {
            strArr2[0] = c.k("Requires development platform ", str, " but this is a release platform.");
        }
        return -1;
    }

    public static int computeTargetSdkVersion(int i2, String str, int i3, String[] strArr, String[] strArr2) {
        if (str == null) {
            return i2;
        }
        if (ArrayUtils.contains(strArr, str)) {
            return 10000;
        }
        if (strArr.length > 0) {
            strArr2[0] = c.n(c.v("Requires development platform ", str, " (current platform is any of "), Arrays.toString(strArr), ")");
            return -1;
        }
        strArr2[0] = c.k("Requires development platform ", str, " but this is a release platform.");
        return -1;
    }

    public static Signature[] convertToSignatures(Certificate[][] certificateArr) {
        Signature[] signatureArr = new Signature[certificateArr.length];
        for (int i2 = 0; i2 < certificateArr.length; i2++) {
            signatureArr[i2] = new Signature(certificateArr[i2]);
        }
        return signatureArr;
    }

    private static boolean copyNeeded(int i2, Package r5, PackageUserState packageUserState, Bundle bundle, int i3) {
        if (i3 != 0) {
            return true;
        }
        int i4 = packageUserState.enabled;
        if (i4 != 0) {
            if (r5.applicationInfo.enabled != (i4 == 1)) {
                return true;
            }
        }
        ApplicationInfo applicationInfo = r5.applicationInfo;
        if (packageUserState.suspended != ((applicationInfo.flags & 1073741824) != 0) || !packageUserState.installed || packageUserState.hidden || packageUserState.stopped || packageUserState.instantApp != applicationInfo.isInstantApp()) {
            return true;
        }
        if ((i2 & 128) == 0 || (bundle == null && r5.mAppMetaData == null)) {
            return (((i2 & 1024) == 0 || r5.usesLibraryFiles == null) && r5.staticSharedLibName == null) ? false : true;
        }
        return true;
    }

    public static Package fromCacheEntryStatic(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        new PackageParserCacheHelper.ReadHelper(parcelObtain).startAndInstall();
        Package r3 = new Package(parcelObtain);
        parcelObtain.recycle();
        sCachedPackageReadCount.incrementAndGet();
        return r3;
    }

    public static final ActivityInfo generateActivityInfo(Activity activity, int i2, PackageUserState packageUserState, int i3) {
        if (activity == null || !checkUseInstalledOrHidden(i2, packageUserState, activity.owner.applicationInfo)) {
            return null;
        }
        if (!copyNeeded(i2, activity.owner, packageUserState, activity.metaData, i3)) {
            updateApplicationInfo(activity.info.applicationInfo, i2, packageUserState);
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

    public static PackageInfo generatePackageInfo(Package r10, int[] iArr, int i2, long j2, long j3, Set<String> set, PackageUserState packageUserState) {
        return generatePackageInfo(r10, iArr, i2, j2, j3, set, packageUserState, UserHandle.getCallingUserId());
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
        if (provider == null || !checkUseInstalledOrHidden(i2, packageUserState, provider.owner.applicationInfo)) {
            return null;
        }
        if (!copyNeeded(i2, provider.owner, packageUserState, provider.metaData, i3) && ((i2 & 2048) != 0 || provider.info.uriPermissionPatterns == null)) {
            updateApplicationInfo(provider.info.applicationInfo, i2, packageUserState);
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
        if (service == null || !checkUseInstalledOrHidden(i2, packageUserState, service.owner.applicationInfo)) {
            return null;
        }
        if (!copyNeeded(i2, service.owner, packageUserState, service.metaData, i3)) {
            updateApplicationInfo(service.info.applicationInfo, i2, packageUserState);
            return service.info;
        }
        ServiceInfo serviceInfo = new ServiceInfo(service.info);
        serviceInfo.metaData = service.metaData;
        serviceInfo.applicationInfo = generateApplicationInfo(service.owner, i2, packageUserState, i3);
        return serviceInfo;
    }

    public static int getActivityConfigChanges(int i2, int i3) {
        return i2 | ((~i3) & 3);
    }

    public static int getApkSigningVersion(Package r0) {
        try {
            return ApkSignatureSchemeV2Verifier.hasSignature(r0.baseCodePath) ? 2 : 1;
        } catch (IOException unused) {
            return 0;
        }
    }

    private String getCacheKey(File file, int i2) {
        return file.getName() + '-' + i2;
    }

    private Package getCachedResult(File file, int i2) {
        String[] overlayApks;
        if (this.mCacheDir == null) {
            return null;
        }
        File file2 = new File(this.mCacheDir, getCacheKey(file, i2));
        try {
            if (!isCacheUpToDate(file, file2)) {
                return null;
            }
            Package packageFromCacheEntry = fromCacheEntry(IoUtils.readFileAsByteArray(file2.getAbsolutePath()));
            Callback callback = this.mCallback;
            if (callback != null && (overlayApks = callback.getOverlayApks(packageFromCacheEntry.packageName)) != null && overlayApks.length > 0) {
                for (String str : overlayApks) {
                    if (!isCacheUpToDate(new File(str), file2)) {
                        return null;
                    }
                }
            }
            return packageFromCacheEntry;
        } catch (Throwable th) {
            Slog.w(TAG, "Error reading package cache: ", th);
            file2.delete();
            return null;
        }
    }

    private static boolean hasDomainURLs(Package r9) {
        ArrayList<Activity> arrayList;
        if (r9 != null && (arrayList = r9.activities) != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ArrayList<II> arrayList2 = arrayList.get(i2).intents;
                if (arrayList2 != 0) {
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ActivityIntentInfo activityIntentInfo = (ActivityIntentInfo) arrayList2.get(i3);
                        if (activityIntentInfo.hasAction("android.intent.action.VIEW") && activityIntentInfo.hasAction("android.intent.action.VIEW") && (activityIntentInfo.hasDataScheme(IntentFilter.SCHEME_HTTP) || activityIntentInfo.hasDataScheme(IntentFilter.SCHEME_HTTPS))) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final boolean isApkFile(File file) {
        return isApkPath(file.getName());
    }

    public static boolean isApkPath(String str) {
        return str.endsWith(".apk");
    }

    public static boolean isAvailable(PackageUserState packageUserState) {
        return checkUseInstalledOrHidden(0, packageUserState, null);
    }

    private static boolean isCacheUpToDate(File file, File file2) {
        try {
            return Os.stat(file.getAbsolutePath()).st_mtime < Os.stat(file2.getAbsolutePath()).st_mtime;
        } catch (ErrnoException e2) {
            if (e2.errno != OsConstants.ENOENT) {
                Slog.w("Error while stating package cache : ", e2);
            }
            return false;
        }
    }

    private boolean isImplicitlyExposedIntent(IntentInfo intentInfo) {
        return intentInfo.hasCategory(Intent.CATEGORY_BROWSABLE) || intentInfo.hasAction(Intent.ACTION_SEND) || intentInfo.hasAction(Intent.ACTION_SENDTO) || intentInfo.hasAction(Intent.ACTION_SEND_MULTIPLE);
    }

    private static int loadApkIntoAssetManager(AssetManager assetManager, String str, int i2) throws PackageParserException {
        if ((i2 & 4) != 0 && !isApkPath(str)) {
            throw new PackageParserException(-100, c.j("Invalid package file: ", str));
        }
        int iAddAssetPath = assetManager.addAssetPath(str);
        if (iAddAssetPath != 0) {
            return iAddAssetPath;
        }
        throw new PackageParserException(-101, c.j("Failed adding asset path: ", str));
    }

    public static Certificate[][] loadCertificates(StrictJarFile strictJarFile, ZipEntry zipEntry) {
        try {
            try {
                InputStream inputStream = strictJarFile.getInputStream(zipEntry);
                readFullyIgnoringContents(inputStream);
                Certificate[][] certificateChains = strictJarFile.getCertificateChains(zipEntry);
                IoUtils.closeQuietly(inputStream);
                return certificateChains;
            } catch (Throwable th) {
                IoUtils.closeQuietly((AutoCloseable) null);
                throw th;
            }
        } catch (IOException | RuntimeException e2) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed reading " + zipEntry.getName() + " in " + strictJarFile, e2);
        }
    }

    private static AssetManager newConfiguredAssetManager() {
        AssetManager assetManager = new AssetManager();
        assetManager.setConfiguration(0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Build.VERSION.RESOURCES_SDK_INT);
        return assetManager;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private Activity parseActivity(Package r24, Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr, CachedComponentArgs cachedComponentArgs, boolean z2, boolean z3) throws XmlPullParserException, IOException {
        boolean z4;
        int i3;
        String[] strArr2;
        XmlResourceParser xmlResourceParser2;
        Resources resources2;
        Package r0;
        ActivityIntentInfo activityIntentInfo;
        ActivityIntentInfo activityIntentInfo2;
        int i4;
        Package r6 = r24;
        Resources resources3 = resources;
        XmlResourceParser xmlResourceParser3 = xmlResourceParser;
        String[] strArr3 = strArr;
        TypedArray typedArrayObtainAttributes = resources3.obtainAttributes(xmlResourceParser3, R.styleable.AndroidManifestActivity);
        if (cachedComponentArgs.mActivityArgs == null) {
            cachedComponentArgs.mActivityArgs = new ParseComponentArgs(r24, strArr, 3, 1, 2, 44, 23, 30, this.mSeparateProcesses, 7, 17, 5);
        }
        ParseComponentArgs parseComponentArgs = cachedComponentArgs.mActivityArgs;
        parseComponentArgs.tag = z2 ? "<receiver>" : "<activity>";
        parseComponentArgs.sa = typedArrayObtainAttributes;
        parseComponentArgs.flags = i2;
        Activity activity = new Activity(cachedComponentArgs.mActivityArgs, new ActivityInfo());
        if (strArr3[0] != null) {
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
            String strBuildClassName = buildClassName(activity.info.packageName, nonConfigurationString, strArr3);
            if (strArr3[0] == null) {
                activity.info.parentActivityName = strBuildClassName;
            } else {
                Log.e(TAG, "Activity " + activity.info.name + " specified invalid parentActivityName " + nonConfigurationString);
                strArr3[0] = null;
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
        activityInfo2.taskAffinity = buildTaskAffinityName(applicationInfo.packageName, applicationInfo.taskAffinity, nonConfigurationString3, strArr3);
        activity.info.splitName = typedArrayObtainAttributes.getNonConfigurationString(48, 0);
        activity.info.flags = 0;
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
            activity.info.flags |= 8;
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
        if (typedArrayObtainAttributes.getBoolean(29, false) || typedArrayObtainAttributes.getBoolean(39, false)) {
            activity.info.flags |= 1024;
        }
        if (typedArrayObtainAttributes.getBoolean(24, false)) {
            activity.info.flags |= 2048;
        }
        if (typedArrayObtainAttributes.getBoolean(54, false)) {
            activity.info.flags |= 536870912;
        }
        if (z2) {
            ActivityInfo activityInfo3 = activity.info;
            activityInfo3.launchMode = 0;
            activityInfo3.configChanges = 0;
            if (typedArrayObtainAttributes.getBoolean(28, false)) {
                ActivityInfo activityInfo4 = activity.info;
                activityInfo4.flags |= 1073741824;
                if (activityInfo4.exported && (i2 & 128) == 0) {
                    Slog.w(TAG, "Activity exported request ignored due to singleUser: " + activity.className + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    activity.info.exported = false;
                    zHasValue = true;
                }
            }
            ActivityInfo activityInfo5 = activity.info;
            boolean z5 = typedArrayObtainAttributes.getBoolean(42, false);
            activityInfo5.directBootAware = z5;
            activityInfo5.encryptionAware = z5;
        } else {
            if (typedArrayObtainAttributes.getBoolean(25, z3)) {
                activity.info.flags |= 512;
            }
            activity.info.launchMode = typedArrayObtainAttributes.getInt(14, 0);
            activity.info.documentLaunchMode = typedArrayObtainAttributes.getInt(33, 0);
            activity.info.maxRecents = typedArrayObtainAttributes.getInt(34, ActivityManager.getDefaultAppRecentsLimitStatic());
            activity.info.configChanges = getActivityConfigChanges(typedArrayObtainAttributes.getInt(16, 0), typedArrayObtainAttributes.getInt(47, 0));
            activity.info.softInputMode = typedArrayObtainAttributes.getInt(20, 0);
            activity.info.persistableMode = typedArrayObtainAttributes.getInteger(32, 0);
            if (typedArrayObtainAttributes.getBoolean(31, false)) {
                activity.info.flags |= Integer.MIN_VALUE;
            }
            if (typedArrayObtainAttributes.getBoolean(35, false)) {
                activity.info.flags |= 8192;
            }
            if (typedArrayObtainAttributes.getBoolean(36, false)) {
                activity.info.flags |= 4096;
            }
            if (typedArrayObtainAttributes.getBoolean(37, false)) {
                activity.info.flags |= 16384;
            }
            activity.info.screenOrientation = typedArrayObtainAttributes.getInt(15, -1);
            setActivityResizeMode(activity.info, typedArrayObtainAttributes, r6);
            if (typedArrayObtainAttributes.getBoolean(41, false)) {
                activity.info.flags |= 4194304;
            }
            if (typedArrayObtainAttributes.getBoolean(53, false)) {
                activity.info.flags |= 262144;
            }
            if (typedArrayObtainAttributes.hasValue(50) && typedArrayObtainAttributes.getType(50) == 4) {
                activity.setMaxAspectRatio(typedArrayObtainAttributes.getFloat(50, 0.0f));
            }
            activity.info.lockTaskLaunchMode = typedArrayObtainAttributes.getInt(38, 0);
            ActivityInfo activityInfo6 = activity.info;
            boolean z6 = typedArrayObtainAttributes.getBoolean(42, false);
            activityInfo6.directBootAware = z6;
            activityInfo6.encryptionAware = z6;
            activity.info.requestedVrComponent = typedArrayObtainAttributes.getString(43);
            activity.info.rotationAnimation = typedArrayObtainAttributes.getInt(46, -1);
            activity.info.colorMode = typedArrayObtainAttributes.getInt(49, 0);
            if (typedArrayObtainAttributes.getBoolean(51, false)) {
                activity.info.flags |= 8388608;
            }
            if (typedArrayObtainAttributes.getBoolean(52, false)) {
                activity.info.flags |= 16777216;
            }
        }
        if (activity.info.directBootAware) {
            r6.applicationInfo.privateFlags |= 256;
        }
        boolean z7 = typedArrayObtainAttributes.getBoolean(45, false);
        if (z7) {
            activity.info.flags |= 1048576;
            r6.visibleToInstantApps = true;
        }
        typedArrayObtainAttributes.recycle();
        if (z2 && (r6.applicationInfo.privateFlags & 2) != 0 && activity.info.processName == r6.packageName) {
            strArr3[0] = "Heavy-weight applications can not have receivers in main process";
        }
        if (strArr3[0] != null) {
            return null;
        }
        int depth = xmlResourceParser.getDepth();
        boolean z8 = z7;
        while (true) {
            int next = xmlResourceParser.next();
            z4 = true;
            if (next == 1) {
                break;
            }
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                z4 = true;
                break;
            }
            if (next == 3 || next == 4) {
                i3 = depth;
                strArr2 = strArr3;
                xmlResourceParser2 = xmlResourceParser3;
                resources2 = resources3;
                r0 = r6;
            } else {
                if (xmlResourceParser.getName().equals("intent-filter")) {
                    ActivityIntentInfo activityIntentInfo3 = new ActivityIntentInfo(activity);
                    i3 = depth;
                    strArr2 = strArr3;
                    xmlResourceParser2 = xmlResourceParser3;
                    if (!parseIntent(resources, xmlResourceParser, true, true, activityIntentInfo3, strArr)) {
                        return null;
                    }
                    if (activityIntentInfo3.countActions() == 0) {
                        Slog.w(TAG, "No actions in intent filter at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    } else {
                        activity.intents.add(activityIntentInfo2);
                    }
                    if (z8) {
                        activityIntentInfo2 = activityIntentInfo3;
                        activityIntentInfo2 = activityIntentInfo3;
                        i4 = 1;
                    } else {
                        i4 = (z2 || !isImplicitlyExposedIntent(activityIntentInfo2)) ? 0 : 2;
                    }
                    activityIntentInfo2.setVisibilityToInstantApp(i4);
                    if (activityIntentInfo2.isVisibleToInstantApp()) {
                        activity.info.flags |= 1048576;
                    }
                    if (activityIntentInfo2.isImplicitlyVisibleToInstantApp()) {
                        activity.info.flags |= 2097152;
                    }
                    r0 = r24;
                } else {
                    i3 = depth;
                    strArr2 = strArr3;
                    xmlResourceParser2 = xmlResourceParser3;
                    if (z2 || !xmlResourceParser.getName().equals("preferred")) {
                        r0 = r24;
                        if (xmlResourceParser.getName().equals("meta-data")) {
                            resources2 = resources;
                            Bundle metaData = parseMetaData(resources2, xmlResourceParser2, activity.metaData, strArr2);
                            activity.metaData = metaData;
                            if (metaData == null) {
                                return null;
                            }
                            if (!z8 && metaData.getBoolean(META_DATA_INSTANT_APPS)) {
                                ActivityInfo activityInfo7 = activity.info;
                                activityInfo7.flags = (activityInfo7.flags | 1048576) & (-2097153);
                                r0.visibleToInstantApps = true;
                                for (int size = activity.intents.size() - 1; size >= 0; size--) {
                                    ((ActivityIntentInfo) activity.intents.get(size)).setVisibilityToInstantApp(1);
                                }
                                ArrayList<ActivityIntentInfo> arrayList = r0.preferredActivityFilters;
                                if (arrayList != null) {
                                    for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                        r0.preferredActivityFilters.get(size2).setVisibilityToInstantApp(1);
                                    }
                                }
                                r6 = r0;
                                z8 = true;
                            }
                        } else {
                            resources2 = resources;
                            if (z2 || !xmlResourceParser.getName().equals(TtmlUtils.TAG_LAYOUT)) {
                                Slog.w(TAG, "Problem in package " + this.mArchiveSourcePath + SettingsStringUtil.DELIMITER);
                                if (z2) {
                                    Slog.w(TAG, "Unknown element under <receiver>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                                } else {
                                    Slog.w(TAG, "Unknown element under <activity>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                                }
                                XmlUtils.skipCurrentTag(xmlResourceParser);
                            } else {
                                parseLayout(resources2, xmlResourceParser2, activity);
                            }
                        }
                        r6 = r0;
                    } else {
                        ActivityIntentInfo activityIntentInfo4 = new ActivityIntentInfo(activity);
                        if (!parseIntent(resources, xmlResourceParser, false, false, activityIntentInfo4, strArr)) {
                            return null;
                        }
                        if (activityIntentInfo4.countActions() == 0) {
                            Slog.w(TAG, "No actions in preferred at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                            r0 = r24;
                            activityIntentInfo = activityIntentInfo4;
                        } else {
                            r0 = r24;
                            if (r0.preferredActivityFilters == null) {
                                r0.preferredActivityFilters = new ArrayList<>();
                            }
                            activityIntentInfo = activityIntentInfo4;
                            r0.preferredActivityFilters.add(activityIntentInfo);
                        }
                        activityIntentInfo.setVisibilityToInstantApp(z8 ? 1 : (z2 || !isImplicitlyExposedIntent(activityIntentInfo)) ? 0 : 2);
                        if (activityIntentInfo.isVisibleToInstantApp()) {
                            activity.info.flags |= 1048576;
                        }
                        if (activityIntentInfo.isImplicitlyVisibleToInstantApp()) {
                            activity.info.flags |= 2097152;
                        }
                    }
                    resources3 = resources2;
                    strArr3 = strArr2;
                    xmlResourceParser3 = xmlResourceParser2;
                    depth = i3;
                }
                resources2 = resources;
            }
            r6 = r0;
            resources3 = resources2;
            strArr3 = strArr2;
            xmlResourceParser3 = xmlResourceParser2;
            depth = i3;
        }
        if (!zHasValue) {
            activity.info.exported = activity.intents.size() > 0 ? z4 : false;
        }
        return activity;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private Activity parseActivityAlias(Package r25, Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr, CachedComponentArgs cachedComponentArgs) throws XmlPullParserException, IOException {
        Activity activity;
        XmlResourceParser xmlResourceParser2;
        Resources resources2;
        int i3;
        Resources resources3 = resources;
        XmlResourceParser xmlResourceParser3 = xmlResourceParser;
        TypedArray typedArrayObtainAttributes = resources3.obtainAttributes(xmlResourceParser3, R.styleable.AndroidManifestActivityAlias);
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(7, 1024);
        if (nonConfigurationString == null) {
            strArr[0] = "<activity-alias> does not specify android:targetActivity";
            typedArrayObtainAttributes.recycle();
            return null;
        }
        String strBuildClassName = buildClassName(r25.applicationInfo.packageName, nonConfigurationString, strArr);
        if (strBuildClassName == null) {
            typedArrayObtainAttributes.recycle();
            return null;
        }
        if (cachedComponentArgs.mActivityAliasArgs == null) {
            ParseComponentArgs parseComponentArgs = new ParseComponentArgs(r25, strArr, 2, 0, 1, 11, 8, 10, this.mSeparateProcesses, 0, 6, 4);
            cachedComponentArgs.mActivityAliasArgs = parseComponentArgs;
            parseComponentArgs.tag = "<activity-alias>";
        }
        ParseComponentArgs parseComponentArgs2 = cachedComponentArgs.mActivityAliasArgs;
        parseComponentArgs2.sa = typedArrayObtainAttributes;
        parseComponentArgs2.flags = i2;
        int size = r25.activities.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                activity = null;
                break;
            }
            activity = r25.activities.get(i4);
            if (strBuildClassName.equals(activity.info.name)) {
                break;
            }
            i4++;
        }
        if (activity == null) {
            strArr[0] = c.k("<activity-alias> target activity ", strBuildClassName, " not found in manifest");
            typedArrayObtainAttributes.recycle();
            return null;
        }
        ActivityInfo activityInfo = new ActivityInfo();
        activityInfo.targetActivity = strBuildClassName;
        ActivityInfo activityInfo2 = activity.info;
        activityInfo.configChanges = activityInfo2.configChanges;
        activityInfo.flags = activityInfo2.flags;
        activityInfo.icon = activityInfo2.icon;
        activityInfo.logo = activityInfo2.logo;
        activityInfo.banner = activityInfo2.banner;
        activityInfo.labelRes = activityInfo2.labelRes;
        activityInfo.nonLocalizedLabel = activityInfo2.nonLocalizedLabel;
        activityInfo.launchMode = activityInfo2.launchMode;
        activityInfo.lockTaskLaunchMode = activityInfo2.lockTaskLaunchMode;
        activityInfo.processName = activityInfo2.processName;
        if (activityInfo.descriptionRes == 0) {
            activityInfo.descriptionRes = activityInfo2.descriptionRes;
        }
        activityInfo.screenOrientation = activityInfo2.screenOrientation;
        activityInfo.taskAffinity = activityInfo2.taskAffinity;
        activityInfo.theme = activityInfo2.theme;
        activityInfo.softInputMode = activityInfo2.softInputMode;
        activityInfo.uiOptions = activityInfo2.uiOptions;
        activityInfo.parentActivityName = activityInfo2.parentActivityName;
        activityInfo.maxRecents = activityInfo2.maxRecents;
        activityInfo.windowLayout = activityInfo2.windowLayout;
        activityInfo.resizeMode = activityInfo2.resizeMode;
        activityInfo.maxAspectRatio = activityInfo2.maxAspectRatio;
        boolean z2 = activityInfo2.directBootAware;
        activityInfo.directBootAware = z2;
        activityInfo.encryptionAware = z2;
        Activity activity2 = new Activity(cachedComponentArgs.mActivityAliasArgs, activityInfo);
        if (strArr[0] != null) {
            typedArrayObtainAttributes.recycle();
            return null;
        }
        boolean zHasValue = typedArrayObtainAttributes.hasValue(5);
        if (zHasValue) {
            activity2.info.exported = typedArrayObtainAttributes.getBoolean(5, false);
        }
        int i5 = 3;
        String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(3, 0);
        if (nonConfigurationString2 != null) {
            activity2.info.permission = nonConfigurationString2.length() > 0 ? nonConfigurationString2.intern() : null;
        }
        String nonConfigurationString3 = typedArrayObtainAttributes.getNonConfigurationString(9, 1024);
        if (nonConfigurationString3 != null) {
            String strBuildClassName2 = buildClassName(activity2.info.packageName, nonConfigurationString3, strArr);
            if (strArr[0] == null) {
                activity2.info.parentActivityName = strBuildClassName2;
            } else {
                Log.e(TAG, "Activity alias " + activity2.info.name + " specified invalid parentActivityName " + nonConfigurationString3);
                strArr[0] = null;
            }
        }
        int i6 = 1;
        boolean z3 = (activity2.info.flags & 1048576) != 0;
        typedArrayObtainAttributes.recycle();
        if (strArr[0] != null) {
            return null;
        }
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == i6 || (next == i5 && xmlResourceParser.getDepth() <= depth)) {
                if (!zHasValue) {
                    activity2.info.exported = activity2.intents.size() > 0;
                }
                return activity2;
            }
            if (next == i5) {
                xmlResourceParser2 = xmlResourceParser3;
                resources2 = resources3;
            } else if (next != 4) {
                if (xmlResourceParser.getName().equals("intent-filter")) {
                    ActivityIntentInfo activityIntentInfo = new ActivityIntentInfo(activity2);
                    if (!parseIntent(resources, xmlResourceParser, true, true, activityIntentInfo, strArr)) {
                        return null;
                    }
                    if (activityIntentInfo.countActions() == 0) {
                        Slog.w(TAG, "No actions in intent filter at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    } else {
                        activity2.intents.add(activityIntentInfo);
                    }
                    if (z3) {
                        i3 = 1;
                    } else {
                        i3 = isImplicitlyExposedIntent(activityIntentInfo) ? 2 : 0;
                    }
                    activityIntentInfo.setVisibilityToInstantApp(i3);
                    if (activityIntentInfo.isVisibleToInstantApp()) {
                        activity2.info.flags |= 1048576;
                    }
                    if (activityIntentInfo.isImplicitlyVisibleToInstantApp()) {
                        activity2.info.flags |= 2097152;
                    }
                    resources2 = resources;
                    xmlResourceParser2 = xmlResourceParser;
                } else if (xmlResourceParser.getName().equals("meta-data")) {
                    resources2 = resources;
                    xmlResourceParser2 = xmlResourceParser;
                    Bundle metaData = parseMetaData(resources2, xmlResourceParser2, activity2.metaData, strArr);
                    activity2.metaData = metaData;
                    if (metaData == null) {
                        return null;
                    }
                } else {
                    resources2 = resources;
                    xmlResourceParser2 = xmlResourceParser;
                    Slog.w(TAG, "Unknown element under <activity-alias>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
                i5 = 3;
            } else {
                continue;
            }
            i6 = 1;
            resources3 = resources2;
            xmlResourceParser3 = xmlResourceParser2;
        }
    }

    private String[] parseAdditionalCertificates(Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        String[] strArr2 = EmptyArray.STRING;
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlResourceParser.getName().equals("additional-certificate")) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestAdditionalCertificate);
                    String nonResourceString = typedArrayObtainAttributes.getNonResourceString(0);
                    typedArrayObtainAttributes.recycle();
                    if (TextUtils.isEmpty(nonResourceString)) {
                        strArr[0] = c.j("Bad additional-certificate declaration with empty certDigest:", nonResourceString);
                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                        typedArrayObtainAttributes.recycle();
                        return null;
                    }
                    strArr2 = (String[]) ArrayUtils.appendElement(String.class, strArr2, nonResourceString.replace(SettingsStringUtil.DELIMITER, "").toLowerCase());
                } else {
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
        }
        return strArr2;
    }

    private boolean parseAllMetaData(Resources resources, XmlResourceParser xmlResourceParser, String str, Component<?> component, String[] strArr) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlResourceParser.getName().equals("meta-data")) {
                    Bundle metaData = parseMetaData(resources, xmlResourceParser, component.metaData, strArr);
                    component.metaData = metaData;
                    if (metaData == null) {
                        return false;
                    }
                } else {
                    StringBuilder sbV = c.v("Unknown element under ", str, ": ");
                    sbV.append(xmlResourceParser.getName());
                    sbV.append(" at ");
                    sbV.append(this.mArchiveSourcePath);
                    sbV.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    sbV.append(xmlResourceParser.getPositionDescription());
                    Slog.w(TAG, sbV.toString());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
        }
        return true;
    }

    public static ApkLite parseApkLite(File file, int i2) throws Throwable {
        AssetManager assetManagerNewConfiguredAssetManager;
        XmlResourceParser xmlResourceParserOpenXmlResourceParser;
        Certificate[][] certificateArr;
        String absolutePath = file.getAbsolutePath();
        XmlResourceParser xmlResourceParser = null;
        Signature[] signatureArr = null;
        xmlResourceParser = null;
        AssetManager assetManager = null;
        try {
            assetManagerNewConfiguredAssetManager = newConfiguredAssetManager();
            try {
                int iAddAssetPath = assetManagerNewConfiguredAssetManager.addAssetPath(absolutePath);
                if (iAddAssetPath == 0) {
                    throw new PackageParserException(-100, "Failed to parse " + absolutePath);
                }
                new DisplayMetrics().setToDefaults();
                xmlResourceParserOpenXmlResourceParser = assetManagerNewConfiguredAssetManager.openXmlResourceParser(iAddAssetPath, ANDROID_MANIFEST_FILENAME);
                if ((i2 & 256) != 0) {
                    try {
                        Package r5 = new Package((String) null);
                        Trace.traceBegin(Trace.TRACE_TAG_PACKAGE_MANAGER, "collectCertificates");
                        try {
                            collectCertificates(r5, file, i2);
                            Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
                            signatureArr = r5.mSignatures;
                            certificateArr = r5.mCertificates;
                        } catch (Throwable th) {
                            Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
                            throw th;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        assetManager = assetManagerNewConfiguredAssetManager;
                        try {
                            Slog.w(TAG, "Failed to parse " + absolutePath, e);
                            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
                        } catch (Throwable th2) {
                            th = th2;
                            assetManagerNewConfiguredAssetManager = assetManager;
                            xmlResourceParser = xmlResourceParserOpenXmlResourceParser;
                            IoUtils.closeQuietly(xmlResourceParser);
                            IoUtils.closeQuietly(assetManagerNewConfiguredAssetManager);
                            throw th;
                        }
                    } catch (RuntimeException e3) {
                        e = e3;
                        assetManager = assetManagerNewConfiguredAssetManager;
                        Slog.w(TAG, "Failed to parse " + absolutePath, e);
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
                    } catch (XmlPullParserException e4) {
                        e = e4;
                        assetManager = assetManagerNewConfiguredAssetManager;
                        Slog.w(TAG, "Failed to parse " + absolutePath, e);
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
                    } catch (Throwable th3) {
                        th = th3;
                        xmlResourceParser = xmlResourceParserOpenXmlResourceParser;
                        IoUtils.closeQuietly(xmlResourceParser);
                        IoUtils.closeQuietly(assetManagerNewConfiguredAssetManager);
                        throw th;
                    }
                } else {
                    certificateArr = null;
                }
                ApkLite apkLite = parseApkLite(absolutePath, xmlResourceParserOpenXmlResourceParser, xmlResourceParserOpenXmlResourceParser, signatureArr, certificateArr);
                IoUtils.closeQuietly(xmlResourceParserOpenXmlResourceParser);
                IoUtils.closeQuietly(assetManagerNewConfiguredAssetManager);
                return apkLite;
            } catch (IOException e5) {
                e = e5;
                xmlResourceParserOpenXmlResourceParser = null;
                assetManager = assetManagerNewConfiguredAssetManager;
                Slog.w(TAG, "Failed to parse " + absolutePath, e);
                throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
            } catch (RuntimeException e6) {
                e = e6;
                xmlResourceParserOpenXmlResourceParser = null;
                assetManager = assetManagerNewConfiguredAssetManager;
                Slog.w(TAG, "Failed to parse " + absolutePath, e);
                throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
            } catch (XmlPullParserException e7) {
                e = e7;
                xmlResourceParserOpenXmlResourceParser = null;
                assetManager = assetManagerNewConfiguredAssetManager;
                Slog.w(TAG, "Failed to parse " + absolutePath, e);
                throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
            } catch (Throwable th4) {
                th = th4;
                IoUtils.closeQuietly(xmlResourceParser);
                IoUtils.closeQuietly(assetManagerNewConfiguredAssetManager);
                throw th;
            }
        } catch (IOException e8) {
            e = e8;
            xmlResourceParserOpenXmlResourceParser = null;
            Slog.w(TAG, "Failed to parse " + absolutePath, e);
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
        } catch (RuntimeException e9) {
            e = e9;
            xmlResourceParserOpenXmlResourceParser = null;
            Slog.w(TAG, "Failed to parse " + absolutePath, e);
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
        } catch (XmlPullParserException e10) {
            e = e10;
            xmlResourceParserOpenXmlResourceParser = null;
            Slog.w(TAG, "Failed to parse " + absolutePath, e);
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
        } catch (Throwable th5) {
            th = th5;
            assetManagerNewConfiguredAssetManager = null;
        }
    }

    private Package parseBaseApk(File file, AssetManager assetManager, int i2) throws Throwable {
        String absolutePath = file.getAbsolutePath();
        XmlResourceParser xmlResourceParser = null;
        String strSubstring = absolutePath.startsWith(MNT_EXPAND) ? absolutePath.substring(12, absolutePath.indexOf(47, 12)) : null;
        this.mParseError = 1;
        this.mArchiveSourcePath = file.getAbsolutePath();
        int iLoadApkIntoAssetManager = loadApkIntoAssetManager(assetManager, absolutePath, i2);
        try {
            try {
                Resources resources = new Resources(assetManager, this.mMetrics, null);
                XmlResourceParser xmlResourceParserOpenXmlResourceParser = assetManager.openXmlResourceParser(iLoadApkIntoAssetManager, ANDROID_MANIFEST_FILENAME);
                try {
                    String[] strArr = new String[1];
                    Package baseApk = parseBaseApk(absolutePath, resources, xmlResourceParserOpenXmlResourceParser, i2, strArr);
                    if (baseApk != null) {
                        baseApk.setVolumeUuid(strSubstring);
                        baseApk.setApplicationVolumeUuid(strSubstring);
                        baseApk.setBaseCodePath(absolutePath);
                        baseApk.setSignatures(null);
                        IoUtils.closeQuietly(xmlResourceParserOpenXmlResourceParser);
                        return baseApk;
                    }
                    throw new PackageParserException(this.mParseError, absolutePath + " (at " + xmlResourceParserOpenXmlResourceParser.getPositionDescription() + "): " + strArr[0]);
                } catch (PackageParserException e2) {
                    throw e2;
                } catch (Exception e3) {
                    e = e3;
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to read manifest from ".concat(absolutePath), e);
                } catch (Throwable th) {
                    th = th;
                    xmlResourceParser = xmlResourceParserOpenXmlResourceParser;
                    IoUtils.closeQuietly(xmlResourceParser);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (PackageParserException e4) {
            throw e4;
        } catch (Exception e5) {
            e = e5;
        }
    }

    private boolean parseBaseApkChild(Package r12, Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr) throws XmlPullParserException, IOException {
        ArrayList<Package> arrayList = r12.childPackages;
        if (arrayList != null && arrayList.size() + 2 > 5) {
            strArr[0] = "Maximum number of packages per APK is: 5";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        String attributeValue = xmlResourceParser.getAttributeValue(null, "package");
        if (validateName(attributeValue, true, false) != null) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME;
            return false;
        }
        if (attributeValue.equals(r12.packageName)) {
            String str = "Child package name cannot be equal to parent package name: " + r12.packageName;
            Slog.w(TAG, str);
            strArr[0] = str;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        if (r12.hasChildPackage(attributeValue)) {
            String strConcat = "Duplicate child package:".concat(attributeValue);
            Slog.w(TAG, strConcat);
            strArr[0] = strConcat;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        Package r1 = new Package(attributeValue);
        r1.mVersionCode = r12.mVersionCode;
        r1.baseRevisionCode = r12.baseRevisionCode;
        r1.mVersionName = r12.mVersionName;
        ApplicationInfo applicationInfo = r1.applicationInfo;
        ApplicationInfo applicationInfo2 = r12.applicationInfo;
        applicationInfo.targetSdkVersion = applicationInfo2.targetSdkVersion;
        applicationInfo.minSdkVersion = applicationInfo2.minSdkVersion;
        Package baseApkCommon = parseBaseApkCommon(r1, CHILD_PACKAGE_TAGS, resources, xmlResourceParser, i2, strArr);
        if (baseApkCommon == null) {
            return false;
        }
        if (r12.childPackages == null) {
            r12.childPackages = new ArrayList<>();
        }
        r12.childPackages.add(baseApkCommon);
        baseApkCommon.parentPackage = r12;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:158:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:165:0x03be  */
    /* JADX WARN: Code duplicated, block: B:170:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:174:0x03db  */
    /* JADX WARN: Code duplicated, block: B:253:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:344:0x03cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:345:0x03d8 A[SYNTHETIC] */
    private Package parseBaseApkCommon(Package r26, Set<String> set, Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr) throws XmlPullParserException, IOException {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        int i10;
        StringBuilder sb;
        int i11;
        int i12;
        StringBuilder sb2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        String string;
        String string2;
        int i19;
        String str;
        int i20;
        TypedValue typedValuePeekValue;
        String[] strArr2;
        int iComputeMinSdkVersion;
        int iComputeTargetSdkVersion;
        CharSequence charSequence;
        CharSequence charSequence2;
        this.mParseInstrumentationArgs = null;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifest);
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(0, 0);
        int i21 = 3;
        if (nonConfigurationString != null && nonConfigurationString.length() > 0) {
            if ((i2 & 2048) != 0) {
                strArr[0] = "sharedUserId not allowed in ephemeral application";
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID;
                return null;
            }
            String strValidateName = validateName(nonConfigurationString, true, false);
            if (strValidateName != null && !ZenModeConfig.SYSTEM_AUTHORITY.equals(r26.packageName)) {
                strArr[0] = c.l("<manifest> specifies bad sharedUserId name \"", nonConfigurationString, "\": ", strValidateName);
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID;
                return null;
            }
            r26.mSharedUserId = nonConfigurationString.intern();
            r26.mSharedUserLabel = typedArrayObtainAttributes.getResourceId(3, 0);
        }
        int integer = typedArrayObtainAttributes.getInteger(4, -1);
        r26.installLocation = integer;
        r26.applicationInfo.installLocation = integer;
        int integer2 = typedArrayObtainAttributes.getInteger(7, 1);
        ApplicationInfo applicationInfo = r26.applicationInfo;
        applicationInfo.targetSandboxVersion = integer2;
        if ((i2 & 16) != 0) {
            applicationInfo.privateFlags |= 4;
        }
        if ((i2 & 32) != 0) {
            applicationInfo.flags |= 262144;
        }
        if (typedArrayObtainAttributes.getBoolean(6, false)) {
            r26.applicationInfo.privateFlags |= 32768;
        }
        int depth = xmlResourceParser.getDepth();
        int integer3 = 1;
        int integer4 = 1;
        StringBuilder sb3 = null;
        int integer5 = 1;
        int i22 = 4;
        int integer6 = 1;
        int integer7 = 1;
        boolean z3 = false;
        int integer8 = 1;
        while (true) {
            int next = xmlResourceParser.next();
            i3 = integer8;
            i4 = integer7;
            if (next == 1 || (next == i21 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next == i21 || next == i22) {
                i6 = integer3;
                i7 = i3;
                i8 = i4;
                i9 = depth;
                z2 = z3;
                i10 = integer6;
                sb = sb3;
            } else {
                String name = xmlResourceParser.getName();
                if (set == 0 || set.contains(name)) {
                    if (!name.equals(TAG_APPLICATION)) {
                        i8 = i4;
                        z2 = z3;
                        i10 = integer6;
                        i9 = depth;
                        if (name.equals("overlay")) {
                            TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestResourceOverlay);
                            r26.mOverlayTarget = typedArrayObtainAttributes2.getString(1);
                            r26.mOverlayPriority = typedArrayObtainAttributes2.getInt(0, 0);
                            r26.mIsStaticOverlay = typedArrayObtainAttributes2.getBoolean(2, false);
                            String string3 = typedArrayObtainAttributes2.getString(3);
                            String string4 = typedArrayObtainAttributes2.getString(4);
                            typedArrayObtainAttributes2.recycle();
                            if (r26.mOverlayTarget == null) {
                                strArr[0] = "<overlay> does not specify a target package";
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                return null;
                            }
                            int i23 = r26.mOverlayPriority;
                            if (i23 < 0 || i23 > 9999) {
                                strArr[0] = "<overlay> priority must be between 0 and 9999";
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                return null;
                            }
                            if (!checkOverlayRequiredSystemProperty(string3, string4)) {
                                Slog.i(TAG, "Skipping target and overlay pair " + r26.mOverlayTarget + " and " + r26.baseCodePath + ": overlay ignored due to required system property: " + string3 + " with value: " + string4);
                                return null;
                            }
                            sb2 = null;
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        } else {
                            StringBuilder sb4 = null;
                            if (name.equals(TAG_KEY_SETS)) {
                                if (!parseKeySets(r26, resources, xmlResourceParser, strArr)) {
                                    return null;
                                }
                            } else if (!name.equals(TAG_PERMISSION_GROUP)) {
                                sb4 = null;
                                if (name.equals("permission")) {
                                    if (!parsePermission(r26, resources, xmlResourceParser, strArr)) {
                                        return null;
                                    }
                                } else if (name.equals(TAG_PERMISSION_TREE)) {
                                    if (!parsePermissionTree(r26, resources, xmlResourceParser, strArr)) {
                                        return null;
                                    }
                                } else if (!name.equals(TAG_USES_PERMISSION)) {
                                    if (name.equals(TAG_USES_PERMISSION_SDK_M) || name.equals(TAG_USES_PERMISSION_SDK_23)) {
                                        i11 = integer3;
                                        i7 = i3;
                                        i12 = 3;
                                        if (!parseUsesPermission(r26, resources, xmlResourceParser)) {
                                            return null;
                                        }
                                    } else {
                                        if (name.equals(TAG_USES_CONFIGURATION)) {
                                            ConfigurationInfo configurationInfo = new ConfigurationInfo();
                                            TypedArray typedArrayObtainAttributes3 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesConfiguration);
                                            configurationInfo.reqTouchScreen = typedArrayObtainAttributes3.getInt(0, 0);
                                            configurationInfo.reqKeyboardType = typedArrayObtainAttributes3.getInt(1, 0);
                                            if (typedArrayObtainAttributes3.getBoolean(2, false)) {
                                                configurationInfo.reqInputFeatures |= 1;
                                            }
                                            configurationInfo.reqNavigation = typedArrayObtainAttributes3.getInt(3, 0);
                                            if (typedArrayObtainAttributes3.getBoolean(4, false)) {
                                                configurationInfo.reqInputFeatures |= 2;
                                            }
                                            typedArrayObtainAttributes3.recycle();
                                            r26.configPreferences = ArrayUtils.add(r26.configPreferences, configurationInfo);
                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                        } else if (name.equals(TAG_USES_FEATURE)) {
                                            FeatureInfo usesFeature = parseUsesFeature(resources, xmlResourceParser);
                                            r26.reqFeatures = ArrayUtils.add(r26.reqFeatures, usesFeature);
                                            if (usesFeature.name == null) {
                                                ConfigurationInfo configurationInfo2 = new ConfigurationInfo();
                                                configurationInfo2.reqGlEsVersion = usesFeature.reqGlEsVersion;
                                                r26.configPreferences = ArrayUtils.add(r26.configPreferences, configurationInfo2);
                                            }
                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                        } else {
                                            if (name.equals(TAG_FEATURE_GROUP)) {
                                                FeatureGroupInfo featureGroupInfo = new FeatureGroupInfo();
                                                int depth2 = xmlResourceParser.getDepth();
                                                i14 = i8;
                                                i15 = integer3;
                                                int i24 = 1;
                                                i16 = i3;
                                                ArrayList arrayListAdd = null;
                                                while (true) {
                                                    int next2 = xmlResourceParser.next();
                                                    if (next2 == i24) {
                                                        break;
                                                    }
                                                    int i25 = 3;
                                                    if (next2 == 3) {
                                                        if (xmlResourceParser.getDepth() <= depth2) {
                                                            break;
                                                        }
                                                        i25 = 3;
                                                    }
                                                    if (next2 != i25 && next2 != 4) {
                                                        String name2 = xmlResourceParser.getName();
                                                        if (name2.equals(TAG_USES_FEATURE)) {
                                                            FeatureInfo usesFeature2 = parseUsesFeature(resources, xmlResourceParser);
                                                            usesFeature2.flags |= 1;
                                                            arrayListAdd = ArrayUtils.add((ArrayList<FeatureInfo>) arrayListAdd, usesFeature2);
                                                        } else {
                                                            StringBuilder sbV = c.v("Unknown element under <feature-group>: ", name2, " at ");
                                                            sbV.append(this.mArchiveSourcePath);
                                                            sbV.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                                                            sbV.append(xmlResourceParser.getPositionDescription());
                                                            Slog.w(TAG, sbV.toString());
                                                        }
                                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                                    }
                                                    i24 = 1;
                                                }
                                                if (arrayListAdd != null) {
                                                    FeatureInfo[] featureInfoArr = new FeatureInfo[arrayListAdd.size()];
                                                    featureGroupInfo.features = featureInfoArr;
                                                    featureGroupInfo.features = (FeatureInfo[]) arrayListAdd.toArray(featureInfoArr);
                                                }
                                                r26.featureGroups = ArrayUtils.add(r26.featureGroups, featureGroupInfo);
                                            } else {
                                                i14 = i8;
                                                i15 = integer3;
                                                i16 = i3;
                                                if (name.equals(TAG_USES_SDK)) {
                                                    int i26 = SDK_VERSION;
                                                    if (i26 > 0) {
                                                        TypedArray typedArrayObtainAttributes4 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesSdk);
                                                        TypedValue typedValuePeekValue2 = typedArrayObtainAttributes4.peekValue(0);
                                                        if (typedValuePeekValue2 != null) {
                                                            if (typedValuePeekValue2.type != 3 || (charSequence2 = typedValuePeekValue2.string) == null) {
                                                                i20 = typedValuePeekValue2.data;
                                                                str = null;
                                                                string2 = null;
                                                                i19 = i20;
                                                            } else {
                                                                string = charSequence2.toString();
                                                                i18 = 0;
                                                                string2 = string;
                                                            }
                                                            typedValuePeekValue = typedArrayObtainAttributes4.peekValue(1);
                                                            if (typedValuePeekValue != null) {
                                                                if (typedValuePeekValue.type == 3 || (charSequence = typedValuePeekValue.string) == null) {
                                                                    i20 = typedValuePeekValue.data;
                                                                } else {
                                                                    string2 = charSequence.toString();
                                                                    if (str == null) {
                                                                        str = string2;
                                                                    }
                                                                }
                                                            }
                                                            typedArrayObtainAttributes4.recycle();
                                                            strArr2 = SDK_CODENAMES;
                                                            iComputeMinSdkVersion = computeMinSdkVersion(i19, str, i26, strArr2, strArr);
                                                            if (iComputeMinSdkVersion < 0) {
                                                                this.mParseError = -12;
                                                                return null;
                                                            }
                                                            iComputeTargetSdkVersion = computeTargetSdkVersion(i20, string2, i26, strArr2, strArr);
                                                            if (iComputeTargetSdkVersion < 0) {
                                                                this.mParseError = -12;
                                                                return null;
                                                            }
                                                            ApplicationInfo applicationInfo2 = r26.applicationInfo;
                                                            applicationInfo2.minSdkVersion = iComputeMinSdkVersion;
                                                            applicationInfo2.targetSdkVersion = iComputeTargetSdkVersion;
                                                        } else {
                                                            i18 = 0;
                                                            string = null;
                                                            string2 = null;
                                                        }
                                                        i19 = 1;
                                                        int i27 = i18;
                                                        str = string;
                                                        i20 = i27;
                                                        typedValuePeekValue = typedArrayObtainAttributes4.peekValue(1);
                                                        if (typedValuePeekValue != null) {
                                                            if (typedValuePeekValue.type == 3) {
                                                                i20 = typedValuePeekValue.data;
                                                            } else {
                                                                i20 = typedValuePeekValue.data;
                                                            }
                                                        }
                                                        typedArrayObtainAttributes4.recycle();
                                                        strArr2 = SDK_CODENAMES;
                                                        iComputeMinSdkVersion = computeMinSdkVersion(i19, str, i26, strArr2, strArr);
                                                        if (iComputeMinSdkVersion < 0) {
                                                            this.mParseError = -12;
                                                            return null;
                                                        }
                                                        iComputeTargetSdkVersion = computeTargetSdkVersion(i20, string2, i26, strArr2, strArr);
                                                        if (iComputeTargetSdkVersion < 0) {
                                                            this.mParseError = -12;
                                                            return null;
                                                        }
                                                        ApplicationInfo applicationInfo3 = r26.applicationInfo;
                                                        applicationInfo3.minSdkVersion = iComputeMinSdkVersion;
                                                        applicationInfo3.targetSdkVersion = iComputeTargetSdkVersion;
                                                    }
                                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                                } else if (name.equals(TAG_SUPPORT_SCREENS)) {
                                                    TypedArray typedArrayObtainAttributes5 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestSupportsScreens);
                                                    r26.applicationInfo.requiresSmallestWidthDp = typedArrayObtainAttributes5.getInteger(6, 0);
                                                    r26.applicationInfo.compatibleWidthLimitDp = typedArrayObtainAttributes5.getInteger(7, 0);
                                                    r26.applicationInfo.largestWidthLimitDp = typedArrayObtainAttributes5.getInteger(8, 0);
                                                    integer6 = typedArrayObtainAttributes5.getInteger(1, i10);
                                                    integer5 = typedArrayObtainAttributes5.getInteger(2, integer5);
                                                    i13 = 3;
                                                    integer7 = typedArrayObtainAttributes5.getInteger(3, i14);
                                                    integer8 = typedArrayObtainAttributes5.getInteger(5, i16);
                                                    integer3 = typedArrayObtainAttributes5.getInteger(4, i15);
                                                    integer4 = typedArrayObtainAttributes5.getInteger(0, integer4);
                                                    typedArrayObtainAttributes5.recycle();
                                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                                    sb2 = null;
                                                    z3 = z2;
                                                } else {
                                                    i7 = i16;
                                                    i17 = i15;
                                                    i8 = i14;
                                                    i12 = 3;
                                                    if (name.equals(TAG_PROTECTED_BROADCAST)) {
                                                        TypedArray typedArrayObtainAttributes6 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestProtectedBroadcast);
                                                        String nonResourceString = typedArrayObtainAttributes6.getNonResourceString(0);
                                                        typedArrayObtainAttributes6.recycle();
                                                        if (nonResourceString != null && (i2 & 1) != 0) {
                                                            if (r26.protectedBroadcasts == null) {
                                                                r26.protectedBroadcasts = new ArrayList<>();
                                                            }
                                                            if (!r26.protectedBroadcasts.contains(nonResourceString)) {
                                                                r26.protectedBroadcasts.add(nonResourceString.intern());
                                                            }
                                                        }
                                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                                    } else if (name.equals(TAG_INSTRUMENTATION)) {
                                                        if (parseInstrumentation(r26, resources, xmlResourceParser, strArr) == null) {
                                                            return null;
                                                        }
                                                    } else if (name.equals(TAG_ORIGINAL_PACKAGE)) {
                                                        TypedArray typedArrayObtainAttributes7 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestOriginalPackage);
                                                        String nonConfigurationString2 = typedArrayObtainAttributes7.getNonConfigurationString(0, 0);
                                                        if (!r26.packageName.equals(nonConfigurationString2)) {
                                                            if (r26.mOriginalPackages == null) {
                                                                r26.mOriginalPackages = new ArrayList<>();
                                                                r26.mRealPackage = r26.packageName;
                                                            }
                                                            r26.mOriginalPackages.add(nonConfigurationString2);
                                                        }
                                                        typedArrayObtainAttributes7.recycle();
                                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                                    } else if (name.equals(TAG_ADOPT_PERMISSIONS)) {
                                                        TypedArray typedArrayObtainAttributes8 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestOriginalPackage);
                                                        String nonConfigurationString3 = typedArrayObtainAttributes8.getNonConfigurationString(0, 0);
                                                        typedArrayObtainAttributes8.recycle();
                                                        if (nonConfigurationString3 != null) {
                                                            if (r26.mAdoptPermissions == null) {
                                                                r26.mAdoptPermissions = new ArrayList<>();
                                                            }
                                                            r26.mAdoptPermissions.add(nonConfigurationString3);
                                                        }
                                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                                    } else {
                                                        if (name.equals(TAG_USES_GL_TEXTURE) || name.equals(TAG_COMPATIBLE_SCREENS) || name.equals(TAG_SUPPORTS_INPUT) || name.equals(TAG_EAT_COMMENT)) {
                                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                                        } else if (name.equals("package")) {
                                                            if (!MULTI_PACKAGE_APK_ENABLED) {
                                                                XmlUtils.skipCurrentTag(xmlResourceParser);
                                                            } else {
                                                                if (!parseBaseApkChild(r26, resources, xmlResourceParser, i2, strArr)) {
                                                                    return null;
                                                                }
                                                                i11 = i17;
                                                            }
                                                        } else if (name.equals(TAG_RESTRICT_UPDATE)) {
                                                            if ((i2 & 64) != 0) {
                                                                TypedArray typedArrayObtainAttributes9 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestRestrictUpdate);
                                                                String nonConfigurationString4 = typedArrayObtainAttributes9.getNonConfigurationString(0, 0);
                                                                typedArrayObtainAttributes9.recycle();
                                                                r26.restrictUpdateHash = null;
                                                                if (nonConfigurationString4 != null) {
                                                                    int length = nonConfigurationString4.length();
                                                                    byte[] bArr = new byte[length / 2];
                                                                    int i28 = 0;
                                                                    int i29 = 4;
                                                                    while (i28 < length) {
                                                                        bArr[i28 / 2] = (byte) (Character.digit(nonConfigurationString4.charAt(i28 + 1), 16) + (Character.digit(nonConfigurationString4.charAt(i28), 16) << i29));
                                                                        i28 += 2;
                                                                        i29 = 4;
                                                                        length = length;
                                                                        i17 = i17;
                                                                    }
                                                                    i11 = i17;
                                                                    r26.restrictUpdateHash = bArr;
                                                                } else {
                                                                    i11 = i17;
                                                                }
                                                            } else {
                                                                i11 = i17;
                                                            }
                                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                                        } else {
                                                            i6 = i17;
                                                            Slog.w(TAG, "Unknown element under <manifest>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                                            sb = null;
                                                            i21 = 3;
                                                        }
                                                        sb = null;
                                                        i21 = 3;
                                                        i6 = i17;
                                                    }
                                                    sb2 = null;
                                                    i13 = 3;
                                                    i11 = i17;
                                                    integer7 = i8;
                                                    integer8 = i7;
                                                    integer6 = i10;
                                                    z3 = z2;
                                                    integer3 = i11;
                                                }
                                            }
                                            sb2 = null;
                                            i13 = 3;
                                            i7 = i16;
                                            i17 = i15;
                                            i8 = i14;
                                            i11 = i17;
                                            integer7 = i8;
                                            integer8 = i7;
                                            integer6 = i10;
                                            z3 = z2;
                                            integer3 = i11;
                                        }
                                        sb4 = null;
                                    }
                                    sb2 = null;
                                    i13 = i12;
                                    integer7 = i8;
                                    integer8 = i7;
                                    integer6 = i10;
                                    z3 = z2;
                                    integer3 = i11;
                                } else if (!parseUsesPermission(r26, resources, xmlResourceParser)) {
                                    return null;
                                }
                            } else {
                                if (!parsePermissionGroup(r26, i2, resources, xmlResourceParser, strArr)) {
                                    return null;
                                }
                                sb2 = null;
                            }
                            i13 = 3;
                            sb2 = sb4;
                            i11 = integer3;
                            i7 = i3;
                            integer7 = i8;
                            integer8 = i7;
                            integer6 = i10;
                            z3 = z2;
                            integer3 = i11;
                        }
                        i13 = 3;
                        i11 = integer3;
                        i7 = i3;
                        integer7 = i8;
                        integer8 = i7;
                        integer6 = i10;
                        z3 = z2;
                        integer3 = i11;
                    } else if (z3) {
                        Slog.w(TAG, "<manifest> has more than one <application>");
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else {
                        i9 = depth;
                        int i30 = integer6;
                        if (!parseBaseApplication(r26, resources, xmlResourceParser, i2, strArr)) {
                            return null;
                        }
                        sb2 = null;
                        i13 = 3;
                        integer7 = i4;
                        integer8 = i3;
                        integer6 = i30;
                        z3 = true;
                    }
                    sb3 = sb2;
                    i21 = i13;
                    i22 = 4;
                    depth = i9;
                } else {
                    StringBuilder sbV2 = c.v("Skipping unsupported element under <manifest>: ", name, " at ");
                    sbV2.append(this.mArchiveSourcePath);
                    sbV2.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    sbV2.append(xmlResourceParser.getPositionDescription());
                    Slog.w(TAG, sbV2.toString());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
                sb = null;
                i21 = 3;
                i8 = i4;
                z2 = z3;
                i10 = integer6;
                int i31 = depth;
                i17 = integer3;
                i7 = i3;
                i9 = i31;
                i6 = i17;
            }
            i22 = 4;
            sb3 = sb;
            integer7 = i8;
            integer8 = i7;
            integer6 = i10;
            z3 = z2;
            integer3 = i6;
            depth = i9;
        }
        int i32 = integer3;
        boolean z4 = z3;
        int i33 = integer6;
        if (z4 || r26.instrumentation.size() != 0) {
            i5 = 0;
        } else {
            i5 = 0;
            strArr[0] = "<manifest> does not contain an <application> or <instrumentation>";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY;
        }
        int length2 = NEW_PERMISSIONS.length;
        StringBuilder sb5 = sb3;
        for (int i34 = i5; i34 < length2; i34++) {
            NewPermissionInfo newPermissionInfo = NEW_PERMISSIONS[i34];
            if (r26.applicationInfo.targetSdkVersion >= newPermissionInfo.sdkVersion) {
                break;
            }
            if (!r26.requestedPermissions.contains(newPermissionInfo.name)) {
                if (sb5 == null) {
                    sb5 = new StringBuilder(128);
                    sb5.append(r26.packageName);
                    sb5.append(": compat added ");
                } else {
                    sb5.append(' ');
                }
                sb5.append(newPermissionInfo.name);
                r26.requestedPermissions.add(newPermissionInfo.name);
            }
        }
        if (sb5 != null) {
            Slog.i(TAG, sb5.toString());
        }
        int length3 = SPLIT_PERMISSIONS.length;
        for (int i35 = i5; i35 < length3; i35++) {
            SplitPermissionInfo splitPermissionInfo = SPLIT_PERMISSIONS[i35];
            if (r26.applicationInfo.targetSdkVersion < splitPermissionInfo.targetSdk && r26.requestedPermissions.contains(splitPermissionInfo.rootPerm)) {
                int i36 = i5;
                while (true) {
                    String[] strArr3 = splitPermissionInfo.newPerms;
                    if (i36 < strArr3.length) {
                        String str2 = strArr3[i36];
                        if (!r26.requestedPermissions.contains(str2)) {
                            r26.requestedPermissions.add(str2);
                        }
                        i36++;
                    }
                }
            }
        }
        if (i33 < 0 || (i33 > 0 && r26.applicationInfo.targetSdkVersion >= 4)) {
            r26.applicationInfo.flags |= 512;
        }
        if (integer5 != 0) {
            r26.applicationInfo.flags |= 1024;
        }
        if (i4 < 0 || (i4 > 0 && r26.applicationInfo.targetSdkVersion >= 4)) {
            r26.applicationInfo.flags |= 2048;
        }
        if (i3 < 0 || (i3 > 0 && r26.applicationInfo.targetSdkVersion >= 9)) {
            r26.applicationInfo.flags |= 524288;
        }
        if (i32 < 0 || (i32 > 0 && r26.applicationInfo.targetSdkVersion >= 4)) {
            r26.applicationInfo.flags |= 4096;
        }
        if (integer4 < 0 || (integer4 > 0 && r26.applicationInfo.targetSdkVersion >= 4)) {
            r26.applicationInfo.flags |= 8192;
        }
        if (r26.applicationInfo.usesCompatibilityMode()) {
            adjustPackageToBeUnresizeableAndUnpipable(r26);
        }
        return r26;
    }

    private boolean parseBaseApplication(Package r24, Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr) throws XmlPullParserException, IOException {
        TypedArray typedArray;
        String str;
        ApplicationInfo applicationInfo;
        String[] strArr2;
        CachedComponentArgs cachedComponentArgs;
        int i3;
        ApplicationInfo applicationInfo2;
        Package r12;
        XmlResourceParser xmlResourceParser2;
        ApplicationInfo applicationInfo3;
        Package r8;
        String nonResourceString;
        Package r9 = r24;
        XmlResourceParser xmlResourceParser3 = xmlResourceParser;
        ApplicationInfo applicationInfo4 = r9.applicationInfo;
        String str2 = applicationInfo4.packageName;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser3, R.styleable.AndroidManifestApplication);
        if (!parsePackageItemInfo(r24, applicationInfo4, strArr, "<application>", typedArrayObtainAttributes, false, 3, 1, 2, 42, 22, 30)) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        String str3 = applicationInfo4.name;
        if (str3 != null) {
            applicationInfo4.className = str3;
        }
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(4, 1024);
        if (nonConfigurationString != null) {
            applicationInfo4.manageSpaceActivityName = buildClassName(str2, nonConfigurationString, strArr);
        }
        int i4 = 1;
        if (typedArrayObtainAttributes.getBoolean(17, true)) {
            applicationInfo4.flags |= 32768;
            String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(16, 1024);
            if (nonConfigurationString2 != null) {
                applicationInfo4.backupAgentName = buildClassName(str2, nonConfigurationString2, strArr);
                if (typedArrayObtainAttributes.getBoolean(18, true)) {
                    applicationInfo4.flags |= 65536;
                }
                if (typedArrayObtainAttributes.getBoolean(21, false)) {
                    applicationInfo4.flags |= 131072;
                }
                if (typedArrayObtainAttributes.getBoolean(32, false)) {
                    applicationInfo4.flags |= 67108864;
                }
                if (typedArrayObtainAttributes.getBoolean(40, false)) {
                    applicationInfo4.privateFlags |= 8192;
                }
            }
            TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(35);
            if (typedValuePeekValue != null) {
                int i5 = typedValuePeekValue.resourceId;
                applicationInfo4.fullBackupContent = i5;
                if (i5 == 0) {
                    applicationInfo4.fullBackupContent = typedValuePeekValue.data == 0 ? -1 : 0;
                }
            }
        }
        applicationInfo4.theme = typedArrayObtainAttributes.getResourceId(0, 0);
        applicationInfo4.descriptionRes = typedArrayObtainAttributes.getResourceId(13, 0);
        if ((i2 & 1) != 0 && typedArrayObtainAttributes.getBoolean(8, false) && ((nonResourceString = typedArrayObtainAttributes.getNonResourceString(45)) == null || this.mCallback.hasFeature(nonResourceString))) {
            applicationInfo4.flags |= 8;
        }
        if (typedArrayObtainAttributes.getBoolean(27, false)) {
            r9.mRequiredForAllUsers = true;
        }
        String string = typedArrayObtainAttributes.getString(28);
        if (string != null && string.length() > 0) {
            r9.mRestrictedAccountType = string;
        }
        String string2 = typedArrayObtainAttributes.getString(29);
        if (string2 != null && string2.length() > 0) {
            r9.mRequiredAccountType = string2;
        }
        if (typedArrayObtainAttributes.getBoolean(10, false)) {
            applicationInfo4.flags |= 2;
        }
        if (typedArrayObtainAttributes.getBoolean(20, false)) {
            applicationInfo4.flags |= 16384;
        }
        boolean z2 = typedArrayObtainAttributes.getBoolean(23, r9.applicationInfo.targetSdkVersion >= 14);
        r9.baseHardwareAccelerated = z2;
        if (z2) {
            applicationInfo4.flags |= 536870912;
        }
        if (typedArrayObtainAttributes.getBoolean(7, true)) {
            applicationInfo4.flags = 4 | applicationInfo4.flags;
        }
        if (typedArrayObtainAttributes.getBoolean(14, false)) {
            applicationInfo4.flags |= 32;
        }
        if (typedArrayObtainAttributes.getBoolean(5, true)) {
            applicationInfo4.flags |= 64;
        }
        if (r9.parentPackage == null && typedArrayObtainAttributes.getBoolean(15, false)) {
            applicationInfo4.flags |= 256;
        }
        if (typedArrayObtainAttributes.getBoolean(24, false)) {
            applicationInfo4.flags |= 1048576;
        }
        if (typedArrayObtainAttributes.getBoolean(36, true)) {
            applicationInfo4.flags |= 134217728;
        }
        if (typedArrayObtainAttributes.getBoolean(26, false)) {
            applicationInfo4.flags |= 4194304;
        }
        if (typedArrayObtainAttributes.getBoolean(33, false)) {
            applicationInfo4.flags |= Integer.MIN_VALUE;
        }
        if (typedArrayObtainAttributes.getBoolean(34, true)) {
            applicationInfo4.flags |= 268435456;
        }
        if (typedArrayObtainAttributes.getBoolean(38, false)) {
            applicationInfo4.privateFlags |= 32;
        }
        if (typedArrayObtainAttributes.getBoolean(39, false)) {
            applicationInfo4.privateFlags |= 64;
        }
        if (typedArrayObtainAttributes.hasValueOrEmpty(37)) {
            if (typedArrayObtainAttributes.getBoolean(37, true)) {
                applicationInfo4.privateFlags |= 1024;
            } else {
                applicationInfo4.privateFlags |= 2048;
            }
        } else if (r9.applicationInfo.targetSdkVersion >= 24) {
            applicationInfo4.privateFlags |= 4096;
        }
        applicationInfo4.maxAspectRatio = typedArrayObtainAttributes.getFloat(44, 0.0f);
        applicationInfo4.networkSecurityConfigRes = typedArrayObtainAttributes.getResourceId(41, 0);
        applicationInfo4.category = typedArrayObtainAttributes.getInt(43, -1);
        String nonConfigurationString3 = typedArrayObtainAttributes.getNonConfigurationString(6, 0);
        applicationInfo4.permission = (nonConfigurationString3 == null || nonConfigurationString3.length() <= 0) ? null : nonConfigurationString3.intern();
        String nonConfigurationString4 = r9.applicationInfo.targetSdkVersion >= 8 ? typedArrayObtainAttributes.getNonConfigurationString(12, 1024) : typedArrayObtainAttributes.getNonResourceString(12);
        String str4 = applicationInfo4.packageName;
        applicationInfo4.taskAffinity = buildTaskAffinityName(str4, str4, nonConfigurationString4, strArr);
        if (strArr[0] == null) {
            typedArray = typedArrayObtainAttributes;
            str = str2;
            applicationInfo = applicationInfo4;
            strArr2 = strArr;
            applicationInfo.processName = buildProcessName(applicationInfo4.packageName, null, r9.applicationInfo.targetSdkVersion >= 8 ? typedArrayObtainAttributes.getNonConfigurationString(11, 1024) : typedArrayObtainAttributes.getNonResourceString(11), i2, this.mSeparateProcesses, strArr);
            applicationInfo.enabled = typedArray.getBoolean(9, true);
            if (typedArray.getBoolean(31, false)) {
                applicationInfo.flags |= 33554432;
            }
        } else {
            typedArray = typedArrayObtainAttributes;
            str = str2;
            applicationInfo = applicationInfo4;
            strArr2 = strArr;
        }
        applicationInfo.uiOptions = typedArray.getInt(25, 0);
        String string3 = typedArray.getString(46);
        applicationInfo.classLoaderName = string3;
        if (string3 != null && !ClassLoaderFactory.isValidClassLoaderName(string3)) {
            strArr2[0] = "Invalid class loader name: " + applicationInfo.classLoaderName;
        }
        typedArray.recycle();
        if (strArr2[0] != null) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        int depth = xmlResourceParser.getDepth();
        CachedComponentArgs cachedComponentArgs2 = new CachedComponentArgs();
        Package r11 = r9;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == i4 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next == 3) {
                cachedComponentArgs = cachedComponentArgs2;
                i3 = 1;
            } else if (next == 4) {
                continue;
            } else {
                String name = xmlResourceParser.getName();
                if (name.equals(Context.ACTIVITY_SERVICE)) {
                    cachedComponentArgs = cachedComponentArgs2;
                    applicationInfo2 = applicationInfo;
                    r12 = r9;
                    Activity activity = parseActivity(r24, resources, xmlResourceParser, i2, strArr, cachedComponentArgs, false, r11.baseHardwareAccelerated);
                    if (activity == null) {
                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                        return false;
                    }
                    r12.activities.add(activity);
                } else {
                    cachedComponentArgs = cachedComponentArgs2;
                    applicationInfo2 = applicationInfo;
                    r12 = r9;
                    if (name.equals("receiver")) {
                        Activity activity2 = parseActivity(r24, resources, xmlResourceParser, i2, strArr, cachedComponentArgs, true, false);
                        if (activity2 == null) {
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        r12.receivers.add(activity2);
                    } else {
                        if (name.equals("service")) {
                            Service service = parseService(r24, resources, xmlResourceParser, i2, strArr, cachedComponentArgs);
                            if (service == null) {
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                return false;
                            }
                            r11.services.add(service);
                        } else if (name.equals("provider")) {
                            Provider provider = parseProvider(r24, resources, xmlResourceParser, i2, strArr, cachedComponentArgs);
                            if (provider == null) {
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                return false;
                            }
                            r11.providers.add(provider);
                        } else if (name.equals("activity-alias")) {
                            Activity activityAlias = parseActivityAlias(r24, resources, xmlResourceParser, i2, strArr, cachedComponentArgs);
                            if (activityAlias == null) {
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                return false;
                            }
                            r11.activities.add(activityAlias);
                        } else if (xmlResourceParser.getName().equals("meta-data")) {
                            xmlResourceParser2 = xmlResourceParser;
                            Bundle metaData = parseMetaData(resources, xmlResourceParser2, r11.mAppMetaData, strArr2);
                            r11.mAppMetaData = metaData;
                            if (metaData == null) {
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                return false;
                            }
                            r8 = r11;
                            r11 = r8;
                            applicationInfo3 = applicationInfo2;
                        } else {
                            xmlResourceParser2 = xmlResourceParser;
                            if (name.equals("static-library")) {
                                TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(xmlResourceParser2, R.styleable.AndroidManifestStaticLibrary);
                                String nonResourceString2 = typedArrayObtainAttributes2.getNonResourceString(0);
                                int i6 = typedArrayObtainAttributes2.getInt(1, -1);
                                typedArrayObtainAttributes2.recycle();
                                if (nonResourceString2 == null || i6 < 0) {
                                    strArr2[0] = "Bad static-library declaration name: " + nonResourceString2 + " version: " + i6;
                                    this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                    return false;
                                }
                                if (r11.mSharedUserId != null) {
                                    strArr2[0] = "sharedUserId not allowed in static shared library";
                                    this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID;
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                    return false;
                                }
                                if (r11.staticSharedLibName != null) {
                                    strArr2[0] = c.j("Multiple static-shared libs for package ", str);
                                    this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                    return false;
                                }
                                r11.staticSharedLibName = nonResourceString2.intern();
                                r11.staticSharedLibVersion = i6;
                                applicationInfo3 = applicationInfo2;
                                applicationInfo3.privateFlags |= 16384;
                                XmlUtils.skipCurrentTag(xmlResourceParser);
                            } else {
                                applicationInfo3 = applicationInfo2;
                                if (name.equals("library")) {
                                    TypedArray typedArrayObtainAttributes3 = resources.obtainAttributes(xmlResourceParser2, R.styleable.AndroidManifestLibrary);
                                    String nonResourceString3 = typedArrayObtainAttributes3.getNonResourceString(0);
                                    typedArrayObtainAttributes3.recycle();
                                    if (nonResourceString3 != null) {
                                        String strIntern = nonResourceString3.intern();
                                        if (!ArrayUtils.contains(r11.libraryNames, strIntern)) {
                                            r11.libraryNames = ArrayUtils.add(r11.libraryNames, strIntern);
                                        }
                                    }
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                } else if (name.equals("uses-static-library")) {
                                    if (!parseUsesStaticLibrary(r11, resources, xmlResourceParser2, strArr2)) {
                                        return false;
                                    }
                                } else if (name.equals("uses-library")) {
                                    TypedArray typedArrayObtainAttributes4 = resources.obtainAttributes(xmlResourceParser2, R.styleable.AndroidManifestUsesLibrary);
                                    String nonResourceString4 = typedArrayObtainAttributes4.getNonResourceString(0);
                                    boolean z3 = typedArrayObtainAttributes4.getBoolean(1, true);
                                    typedArrayObtainAttributes4.recycle();
                                    if (nonResourceString4 != null) {
                                        String strIntern2 = nonResourceString4.intern();
                                        if (z3) {
                                            r11.usesLibraries = ArrayUtils.add(r11.usesLibraries, strIntern2);
                                        } else {
                                            r11.usesOptionalLibraries = ArrayUtils.add(r11.usesOptionalLibraries, strIntern2);
                                        }
                                    }
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                } else if (name.equals("uses-package")) {
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                } else {
                                    StringBuilder sbV = c.v("Unknown element under <application>: ", name, " at ");
                                    sbV.append(this.mArchiveSourcePath);
                                    sbV.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                                    sbV.append(xmlResourceParser.getPositionDescription());
                                    Slog.w(TAG, sbV.toString());
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                }
                            }
                        }
                        xmlResourceParser2 = xmlResourceParser;
                        r8 = r11;
                        r11 = r8;
                        applicationInfo3 = applicationInfo2;
                    }
                    i3 = 1;
                    xmlResourceParser3 = xmlResourceParser2;
                    applicationInfo = applicationInfo3;
                    r9 = r12;
                }
                xmlResourceParser2 = xmlResourceParser;
                r8 = r12;
                r11 = r8;
                applicationInfo3 = applicationInfo2;
                i3 = 1;
                xmlResourceParser3 = xmlResourceParser2;
                applicationInfo = applicationInfo3;
                r9 = r12;
            }
            cachedComponentArgs2 = cachedComponentArgs;
            i4 = i3;
        }
        setMaxAspectRatio(r24);
        PackageBackwardCompatibility.modifySharedLibraries(r24);
        if (hasDomainURLs(r24)) {
            r11.applicationInfo.privateFlags |= 16;
            return true;
        }
        r11.applicationInfo.privateFlags &= -17;
        return true;
    }

    private Package parseClusterPackage(File file, int i2) throws Throwable {
        SplitAssetLoader defaultSplitAssetLoader;
        SparseArray<int[]> sparseArrayCreateDependenciesFromPackage;
        PackageLite clusterPackageLite = parseClusterPackageLite(file, 0);
        if (this.mOnlyCoreApps && !clusterPackageLite.coreApp) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, c.i("Not a coreApp: ", file));
        }
        if (!clusterPackageLite.isolatedSplits || ArrayUtils.isEmpty(clusterPackageLite.splitNames)) {
            defaultSplitAssetLoader = new DefaultSplitAssetLoader(clusterPackageLite, i2);
            sparseArrayCreateDependenciesFromPackage = null;
        } else {
            try {
                sparseArrayCreateDependenciesFromPackage = SplitDependencyLoader.createDependenciesFromPackage(clusterPackageLite);
                defaultSplitAssetLoader = new SplitAssetDependencyLoader(clusterPackageLite, sparseArrayCreateDependenciesFromPackage, i2);
            } catch (SplitDependencyLoader.IllegalDependencyException e2) {
                throw new PackageParserException(-101, e2.getMessage());
            }
        }
        try {
            AssetManager baseAssetManager = defaultSplitAssetLoader.getBaseAssetManager();
            File file2 = new File(clusterPackageLite.baseCodePath);
            Package baseApk = parseBaseApk(file2, baseAssetManager, i2);
            if (baseApk == null) {
                throw new PackageParserException(-100, "Failed to parse base APK: " + file2);
            }
            if (!ArrayUtils.isEmpty(clusterPackageLite.splitNames)) {
                String[] strArr = clusterPackageLite.splitNames;
                int length = strArr.length;
                baseApk.splitNames = strArr;
                baseApk.splitCodePaths = clusterPackageLite.splitCodePaths;
                baseApk.splitRevisionCodes = clusterPackageLite.splitRevisionCodes;
                baseApk.splitFlags = new int[length];
                baseApk.splitPrivateFlags = new int[length];
                ApplicationInfo applicationInfo = baseApk.applicationInfo;
                applicationInfo.splitNames = strArr;
                applicationInfo.splitDependencies = sparseArrayCreateDependenciesFromPackage;
                applicationInfo.splitClassLoaderNames = new String[length];
                for (int i3 = 0; i3 < length; i3++) {
                    parseSplitApk(baseApk, i3, defaultSplitAssetLoader.getSplitAssetManager(i3), i2);
                }
            }
            baseApk.setCodePath(file.getAbsolutePath());
            baseApk.setUse32bitAbi(clusterPackageLite.use32bitAbi);
            IoUtils.closeQuietly(defaultSplitAssetLoader);
            return baseApk;
        } catch (Throwable th) {
            IoUtils.closeQuietly(defaultSplitAssetLoader);
            throw th;
        }
    }

    public static PackageLite parseClusterPackageLite(File file, int i2) throws Throwable {
        String[] strArr;
        boolean[] zArr;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4;
        int[] iArr;
        File[] fileArrListFiles = file.listFiles();
        if (ArrayUtils.isEmpty(fileArrListFiles)) {
            throw new PackageParserException(-100, "No packages found in split");
        }
        Trace.traceBegin(Trace.TRACE_TAG_PACKAGE_MANAGER, "parseApkLite");
        ArrayMap arrayMap = new ArrayMap();
        int i3 = 0;
        String str = null;
        for (File file2 : fileArrListFiles) {
            if (isApkFile(file2)) {
                ApkLite apkLite = parseApkLite(file2, i2);
                if (str == null) {
                    str = apkLite.packageName;
                    i3 = apkLite.versionCode;
                } else {
                    if (!str.equals(apkLite.packageName)) {
                        throw new PackageParserException(-101, "Inconsistent package " + apkLite.packageName + " in " + file2 + "; expected " + str);
                    }
                    if (i3 != apkLite.versionCode) {
                        throw new PackageParserException(-101, "Inconsistent version " + apkLite.versionCode + " in " + file2 + "; expected " + i3);
                    }
                }
                if (arrayMap.put(apkLite.splitName, apkLite) != null) {
                    throw new PackageParserException(-101, "Split name " + apkLite.splitName + " defined more than once; most recent was " + file2);
                }
            }
        }
        Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
        ApkLite apkLite2 = (ApkLite) arrayMap.remove(null);
        if (apkLite2 == null) {
            throw new PackageParserException(-101, c.i("Missing base APK in ", file));
        }
        int size = arrayMap.size();
        if (size > 0) {
            boolean[] zArr2 = new boolean[size];
            String[] strArr5 = new String[size];
            String[] strArr6 = new String[size];
            String[] strArr7 = new String[size];
            int[] iArr2 = new int[size];
            String[] strArr8 = (String[]) arrayMap.keySet().toArray(new String[size]);
            Arrays.sort(strArr8, sSplitNameComparator);
            for (int i4 = 0; i4 < size; i4++) {
                ApkLite apkLite3 = (ApkLite) arrayMap.get(strArr8[i4]);
                strArr5[i4] = apkLite3.usesSplitName;
                zArr2[i4] = apkLite3.isFeatureSplit;
                strArr6[i4] = apkLite3.configForSplit;
                strArr7[i4] = apkLite3.codePath;
                iArr2[i4] = apkLite3.revisionCode;
            }
            strArr = strArr8;
            strArr2 = strArr5;
            strArr3 = strArr6;
            zArr = zArr2;
            strArr4 = strArr7;
            iArr = iArr2;
        } else {
            strArr = null;
            zArr = null;
            strArr2 = null;
            strArr3 = null;
            strArr4 = null;
            iArr = null;
        }
        return new PackageLite(file.getAbsolutePath(), apkLite2, strArr, zArr, strArr2, strArr3, strArr4, iArr);
    }

    private Instrumentation parseInstrumentation(Package r12, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestInstrumentation);
        if (this.mParseInstrumentationArgs == null) {
            ParsePackageItemArgs parsePackageItemArgs = new ParsePackageItemArgs(r12, strArr, 2, 0, 1, 8, 6, 7);
            this.mParseInstrumentationArgs = parsePackageItemArgs;
            parsePackageItemArgs.tag = "<instrumentation>";
        }
        this.mParseInstrumentationArgs.sa = typedArrayObtainAttributes;
        Instrumentation instrumentation = new Instrumentation(this.mParseInstrumentationArgs, new InstrumentationInfo());
        if (strArr[0] != null) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        String nonResourceString = typedArrayObtainAttributes.getNonResourceString(3);
        instrumentation.info.targetPackage = nonResourceString != null ? nonResourceString.intern() : null;
        String nonResourceString2 = typedArrayObtainAttributes.getNonResourceString(9);
        instrumentation.info.targetProcesses = nonResourceString2 != null ? nonResourceString2.intern() : null;
        instrumentation.info.handleProfiling = typedArrayObtainAttributes.getBoolean(4, false);
        instrumentation.info.functionalTest = typedArrayObtainAttributes.getBoolean(5, false);
        typedArrayObtainAttributes.recycle();
        if (instrumentation.info.targetPackage == null) {
            strArr[0] = "<instrumentation> does not specify targetPackage";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        if (parseAllMetaData(resources, xmlResourceParser, "<instrumentation>", instrumentation, strArr)) {
            r12.instrumentation.add(instrumentation);
            return instrumentation;
        }
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return null;
    }

    private boolean parseIntent(Resources resources, XmlResourceParser xmlResourceParser, boolean z2, boolean z3, IntentInfo intentInfo, String[] strArr) throws XmlPullParserException, IOException {
        char c;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestIntentFilter);
        intentInfo.setPriority(typedArrayObtainAttributes.getInt(2, 0));
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(0);
        if (typedValuePeekValue != null) {
            int i2 = typedValuePeekValue.resourceId;
            intentInfo.labelRes = i2;
            if (i2 == 0) {
                intentInfo.nonLocalizedLabel = typedValuePeekValue.coerceToString();
            }
        }
        int resourceId = Resources.getSystem().getBoolean(R.bool.config_useRoundIcon) ? typedArrayObtainAttributes.getResourceId(6, 0) : 0;
        if (resourceId != 0) {
            intentInfo.icon = resourceId;
        } else {
            intentInfo.icon = typedArrayObtainAttributes.getResourceId(1, 0);
        }
        intentInfo.logo = typedArrayObtainAttributes.getResourceId(3, 0);
        intentInfo.banner = typedArrayObtainAttributes.getResourceId(4, 0);
        if (z3) {
            intentInfo.setAutoVerify(typedArrayObtainAttributes.getBoolean(5, false));
        }
        typedArrayObtainAttributes.recycle();
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = xmlResourceParser.getName();
                if (name.equals(Camera.Parameters.SCENE_MODE_ACTION)) {
                    String attributeValue = xmlResourceParser.getAttributeValue(ANDROID_RESOURCES, "name");
                    if (attributeValue == null || attributeValue == "") {
                        strArr[0] = "No value supplied for <android:name>";
                        return false;
                    }
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                    intentInfo.addAction(attributeValue);
                } else if (name.equals("category")) {
                    String attributeValue2 = xmlResourceParser.getAttributeValue(ANDROID_RESOURCES, "name");
                    if (attributeValue2 == null || attributeValue2 == "") {
                        strArr[0] = "No value supplied for <android:name>";
                        return false;
                    }
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                    intentInfo.addCategory(attributeValue2);
                } else if (name.equals("data")) {
                    TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestData);
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
                    c = 6;
                    String nonConfigurationString10 = typedArrayObtainAttributes2.getNonConfigurationString(6, 0);
                    if (nonConfigurationString10 != null) {
                        if (!z2) {
                            strArr[0] = "pathPattern not allowed here; path must be literal";
                            return false;
                        }
                        intentInfo.addDataPath(nonConfigurationString10, 2);
                    }
                    String nonConfigurationString11 = typedArrayObtainAttributes2.getNonConfigurationString(10, 0);
                    if (nonConfigurationString11 != null) {
                        if (!z2) {
                            strArr[0] = "pathAdvancedPattern not allowed here; path must be literal";
                            return false;
                        }
                        intentInfo.addDataPath(nonConfigurationString11, 3);
                    }
                    typedArrayObtainAttributes2.recycle();
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                } else {
                    c = 6;
                    Slog.w(TAG, "Unknown element under <intent-filter>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
                c = 6;
            }
        }
        intentInfo.hasDefault = intentInfo.hasCategory(Intent.CATEGORY_DEFAULT);
        return true;
    }

    private boolean parseKeySets(Package r18, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        ArrayMap arrayMap = new ArrayMap();
        ArraySet<String> arraySet = new ArraySet<>();
        ArrayMap arrayMap2 = new ArrayMap();
        ArraySet arraySet2 = new ArraySet();
        loop0: while (true) {
            int i2 = -1;
            String nonResourceString = null;
            while (true) {
                int next = xmlResourceParser.next();
                if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                    break loop0;
                }
                if (next == 3) {
                    if (xmlResourceParser.getDepth() == i2) {
                        break;
                    }
                } else {
                    String name = xmlResourceParser.getName();
                    if (name.equals("key-set")) {
                        if (nonResourceString != null) {
                            strArr[0] = "Improperly nested 'key-set' tag at " + xmlResourceParser.getPositionDescription();
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestKeySet);
                        nonResourceString = typedArrayObtainAttributes.getNonResourceString(0);
                        arrayMap2.put(nonResourceString, new ArraySet());
                        int depth2 = xmlResourceParser.getDepth();
                        typedArrayObtainAttributes.recycle();
                        i2 = depth2;
                    } else if (name.equals("public-key")) {
                        if (nonResourceString == null) {
                            strArr[0] = "Improperly nested 'key-set' tag at " + xmlResourceParser.getPositionDescription();
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPublicKey);
                        String nonResourceString2 = typedArrayObtainAttributes2.getNonResourceString(0);
                        String nonResourceString3 = typedArrayObtainAttributes2.getNonResourceString(1);
                        if (nonResourceString3 == null && arrayMap.get(nonResourceString2) == null) {
                            StringBuilder sbV = c.v("'public-key' ", nonResourceString2, " must define a public-key value on first use at ");
                            sbV.append(xmlResourceParser.getPositionDescription());
                            strArr[0] = sbV.toString();
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            typedArrayObtainAttributes2.recycle();
                            return false;
                        }
                        if (nonResourceString3 != null) {
                            PublicKey publicKey = parsePublicKey(nonResourceString3);
                            if (publicKey == null) {
                                Slog.w(TAG, "No recognized valid key in 'public-key' tag at " + xmlResourceParser.getPositionDescription() + " key-set " + nonResourceString + " will not be added to the package's defined key-sets.");
                                typedArrayObtainAttributes2.recycle();
                                arraySet2.add(nonResourceString);
                                XmlUtils.skipCurrentTag(xmlResourceParser);
                            } else {
                                if (arrayMap.get(nonResourceString2) != null && !((PublicKey) arrayMap.get(nonResourceString2)).equals(publicKey)) {
                                    StringBuilder sbV2 = c.v("Value of 'public-key' ", nonResourceString2, " conflicts with previously defined value at ");
                                    sbV2.append(xmlResourceParser.getPositionDescription());
                                    strArr[0] = sbV2.toString();
                                    this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                    typedArrayObtainAttributes2.recycle();
                                    return false;
                                }
                                arrayMap.put(nonResourceString2, publicKey);
                            }
                        }
                        ((ArraySet) arrayMap2.get(nonResourceString)).add(nonResourceString2);
                        typedArrayObtainAttributes2.recycle();
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else if (name.equals("upgrade-key-set")) {
                        TypedArray typedArrayObtainAttributes3 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUpgradeKeySet);
                        arraySet.add(typedArrayObtainAttributes3.getNonResourceString(0));
                        typedArrayObtainAttributes3.recycle();
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else {
                        Slog.w(TAG, "Unknown element under <key-sets>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                }
            }
        }
        if (arrayMap.keySet().removeAll(arrayMap2.keySet())) {
            strArr[0] = c.n(new StringBuilder("Package"), r18.packageName, " AndroidManifext.xml 'key-set' and 'public-key' names must be distinct.");
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        r18.mKeySetMapping = new ArrayMap<>();
        for (Map.Entry entry : arrayMap2.entrySet()) {
            String str = (String) entry.getKey();
            if (((ArraySet) entry.getValue()).size() == 0) {
                Slog.w(TAG, "Package" + r18.packageName + " AndroidManifext.xml 'key-set' " + str + " has no valid associated 'public-key'. Not including in package's defined key-sets.");
            } else if (arraySet2.contains(str)) {
                Slog.w(TAG, "Package" + r18.packageName + " AndroidManifext.xml 'key-set' " + str + " contained improper 'public-key' tags. Not including in package's defined key-sets.");
            } else {
                r18.mKeySetMapping.put(str, new ArraySet<>());
                Iterator it = ((ArraySet) entry.getValue()).iterator();
                while (it.hasNext()) {
                    r18.mKeySetMapping.get(str).add(arrayMap.get((String) it.next()));
                }
            }
        }
        if (r18.mKeySetMapping.keySet().containsAll(arraySet)) {
            r18.mUpgradeKeySets = arraySet;
            return true;
        }
        strArr[0] = c.n(new StringBuilder("Package"), r18.packageName, " AndroidManifext.xml does not define all 'upgrade-key-set's .");
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return false;
    }

    private void parseLayout(Resources resources, AttributeSet attributeSet, Activity activity) {
        int dimensionPixelSize;
        float fraction;
        int dimensionPixelSize2;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.AndroidManifestLayout);
        int type = typedArrayObtainAttributes.getType(3);
        float fraction2 = -1.0f;
        if (type == 6) {
            fraction = typedArrayObtainAttributes.getFraction(3, 1, 1, -1.0f);
            dimensionPixelSize = -1;
        } else {
            dimensionPixelSize = type == 5 ? typedArrayObtainAttributes.getDimensionPixelSize(3, -1) : -1;
            fraction = -1.0f;
        }
        int type2 = typedArrayObtainAttributes.getType(4);
        if (type2 != 6) {
            if (type2 == 5) {
                dimensionPixelSize2 = typedArrayObtainAttributes.getDimensionPixelSize(4, -1);
            }
            int i2 = typedArrayObtainAttributes.getInt(0, 17);
            int dimensionPixelSize3 = typedArrayObtainAttributes.getDimensionPixelSize(1, -1);
            int dimensionPixelSize4 = typedArrayObtainAttributes.getDimensionPixelSize(2, -1);
            typedArrayObtainAttributes.recycle();
            activity.info.windowLayout = new ActivityInfo.WindowLayout(dimensionPixelSize, fraction, dimensionPixelSize2, fraction2, i2, dimensionPixelSize3, dimensionPixelSize4);
        }
        fraction2 = typedArrayObtainAttributes.getFraction(4, 1, 1, -1.0f);
        dimensionPixelSize2 = -1;
        int i3 = typedArrayObtainAttributes.getInt(0, 17);
        int dimensionPixelSize5 = typedArrayObtainAttributes.getDimensionPixelSize(1, -1);
        int dimensionPixelSize6 = typedArrayObtainAttributes.getDimensionPixelSize(2, -1);
        typedArrayObtainAttributes.recycle();
        activity.info.windowLayout = new ActivityInfo.WindowLayout(dimensionPixelSize, fraction, dimensionPixelSize2, fraction2, i3, dimensionPixelSize5, dimensionPixelSize6);
    }

    private Bundle parseMetaData(Resources resources, XmlResourceParser xmlResourceParser, Bundle bundle, String[] strArr) {
        int i2;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestMetaData);
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
                    bundle.putString(strIntern, charSequenceCoerceToString != null ? charSequenceCoerceToString.toString() : null);
                } else if (i3 == 18) {
                    bundle.putBoolean(strIntern, typedValuePeekValue2.data != 0);
                } else if (i3 >= 16 && i3 <= 31) {
                    bundle.putInt(strIntern, typedValuePeekValue2.data);
                } else if (i3 == 4) {
                    bundle.putFloat(strIntern, typedValuePeekValue2.getFloat());
                } else {
                    Slog.w(TAG, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                }
            } else {
                strArr[0] = "<meta-data> requires an android:value or android:resource attribute";
                bundle = null;
            }
        } else {
            bundle.putInt(strIntern, i2);
        }
        typedArrayObtainAttributes.recycle();
        XmlUtils.skipCurrentTag(xmlResourceParser);
        return bundle;
    }

    private static PackageLite parseMonolithicPackageLite(File file, int i2) throws Throwable {
        Trace.traceBegin(Trace.TRACE_TAG_PACKAGE_MANAGER, "parseApkLite");
        ApkLite apkLite = parseApkLite(file, i2);
        String absolutePath = file.getAbsolutePath();
        Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
        return new PackageLite(absolutePath, apkLite, null, null, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean parsePackageItemInfo(Package r1, PackageItemInfo packageItemInfo, String[] strArr, String str, TypedArray typedArray, boolean z2, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (typedArray == null) {
            strArr[0] = c.D(str, " does not contain any attributes");
            return false;
        }
        String nonConfigurationString = typedArray.getNonConfigurationString(i2, 0);
        if (nonConfigurationString != null) {
            String strBuildClassName = buildClassName(r1.applicationInfo.packageName, nonConfigurationString, strArr);
            packageItemInfo.name = strBuildClassName;
            if (strBuildClassName == null) {
                return false;
            }
        } else if (z2) {
            strArr[0] = c.D(str, " does not specify android:name");
            return false;
        }
        int resourceId = Resources.getSystem().getBoolean(R.bool.config_useRoundIcon) ? typedArray.getResourceId(i5, 0) : 0;
        if (resourceId != 0) {
            packageItemInfo.icon = resourceId;
            packageItemInfo.nonLocalizedLabel = null;
        } else {
            int resourceId2 = typedArray.getResourceId(i4, 0);
            if (resourceId2 != 0) {
                packageItemInfo.icon = resourceId2;
                packageItemInfo.nonLocalizedLabel = null;
            }
        }
        int resourceId3 = typedArray.getResourceId(i6, 0);
        if (resourceId3 != 0) {
            packageItemInfo.logo = resourceId3;
        }
        int resourceId4 = typedArray.getResourceId(i7, 0);
        if (resourceId4 != 0) {
            packageItemInfo.banner = resourceId4;
        }
        TypedValue typedValuePeekValue = typedArray.peekValue(i3);
        if (typedValuePeekValue != null) {
            int i8 = typedValuePeekValue.resourceId;
            packageItemInfo.labelRes = i8;
            if (i8 == 0) {
                packageItemInfo.nonLocalizedLabel = typedValuePeekValue.coerceToString();
            }
        }
        packageItemInfo.packageName = r1.packageName;
        return true;
    }

    public static PackageLite parsePackageLite(File file, int i2) {
        return file.isDirectory() ? parseClusterPackageLite(file, i2) : parseMonolithicPackageLite(file, i2);
    }

    private static Pair<String, String> parsePackageSplitNames(XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, PackageParserException, IOException {
        int next;
        String strValidateName;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, "No start tag found");
        }
        if (!xmlPullParser.getName().equals(TAG_MANIFEST)) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, "No <manifest> tag");
        }
        String strIntern = null;
        String attributeValue = attributeSet.getAttributeValue(null, "package");
        if (!ZenModeConfig.SYSTEM_AUTHORITY.equals(attributeValue) && (strValidateName = validateName(attributeValue, true, true)) != null) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME, "Invalid manifest package: ".concat(strValidateName));
        }
        String attributeValue2 = attributeSet.getAttributeValue(null, "split");
        if (attributeValue2 == null) {
            strIntern = attributeValue2;
        } else if (attributeValue2.length() != 0) {
            String strValidateName2 = validateName(attributeValue2, false, false);
            if (strValidateName2 != null) {
                throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME, "Invalid manifest split: ".concat(strValidateName2));
            }
            strIntern = attributeValue2;
        }
        String strIntern2 = attributeValue.intern();
        if (strIntern != null) {
            strIntern = strIntern.intern();
        }
        return Pair.create(strIntern2, strIntern);
    }

    private boolean parsePermission(Package r20, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPermission);
        Permission permission = new Permission(r20);
        if (!parsePackageItemInfo(r20, permission.info, strArr, "<permission>", typedArrayObtainAttributes, true, 2, 0, 1, 9, 6, 8)) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
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
            return false;
        }
        permissionInfo2.protectionLevel = PermissionInfo.fixProtectionLevel(i2);
        int i3 = permission.info.protectionLevel;
        if ((65520 & i3) != 0 && (i3 & 4096) == 0 && (i3 & 8192) == 0 && (i3 & 15) != 2) {
            strArr[0] = "<permission>  protectionLevel specifies a non-instnat flag but is not based on signature type";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        if (parseAllMetaData(resources, xmlResourceParser, "<permission>", permission, strArr)) {
            r20.permissions.add(permission);
            return true;
        }
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return false;
    }

    private boolean parsePermissionGroup(Package r20, int i2, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) {
        PermissionGroup permissionGroup = new PermissionGroup(r20);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPermissionGroup);
        if (!parsePackageItemInfo(r20, permissionGroup.info, strArr, "<permission-group>", typedArrayObtainAttributes, true, 2, 0, 1, 8, 5, 7)) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        permissionGroup.info.descriptionRes = typedArrayObtainAttributes.getResourceId(4, 0);
        permissionGroup.info.flags = typedArrayObtainAttributes.getInt(6, 0);
        permissionGroup.info.priority = typedArrayObtainAttributes.getInt(3, 0);
        PermissionGroupInfo permissionGroupInfo = permissionGroup.info;
        if (permissionGroupInfo.priority > 0 && (i2 & 1) == 0) {
            permissionGroupInfo.priority = 0;
        }
        typedArrayObtainAttributes.recycle();
        if (parseAllMetaData(resources, xmlResourceParser, "<permission-group>", permissionGroup, strArr)) {
            r20.permissionGroups.add(permissionGroup);
            return true;
        }
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return false;
    }

    private boolean parsePermissionTree(Package r20, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) {
        Permission permission = new Permission(r20);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPermissionTree);
        if (!parsePackageItemInfo(r20, permission.info, strArr, "<permission-tree>", typedArrayObtainAttributes, true, 2, 0, 1, 5, 3, 4)) {
            typedArrayObtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        typedArrayObtainAttributes.recycle();
        int iIndexOf = permission.info.name.indexOf(46);
        if (iIndexOf > 0) {
            iIndexOf = permission.info.name.indexOf(46, iIndexOf + 1);
        }
        if (iIndexOf < 0) {
            strArr[0] = "<permission-tree> name has less than three segments: " + permission.info.name;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        PermissionInfo permissionInfo = permission.info;
        permissionInfo.descriptionRes = 0;
        permissionInfo.protectionLevel = 0;
        permission.tree = true;
        if (parseAllMetaData(resources, xmlResourceParser, "<permission-tree>", permission, strArr)) {
            r20.permissions.add(permission);
            return true;
        }
        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        return false;
    }

    private Provider parseProvider(Package r22, Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr, CachedComponentArgs cachedComponentArgs) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestProvider);
        if (cachedComponentArgs.mProviderArgs == null) {
            ParseComponentArgs parseComponentArgs = new ParseComponentArgs(r22, strArr, 2, 0, 1, 19, 15, 17, this.mSeparateProcesses, 8, 14, 6);
            cachedComponentArgs.mProviderArgs = parseComponentArgs;
            parseComponentArgs.tag = "<provider>";
        }
        ParseComponentArgs parseComponentArgs2 = cachedComponentArgs.mProviderArgs;
        parseComponentArgs2.sa = typedArrayObtainAttributes;
        parseComponentArgs2.flags = i2;
        Provider provider = new Provider(cachedComponentArgs.mProviderArgs, new ProviderInfo());
        if (strArr[0] != null) {
            typedArrayObtainAttributes.recycle();
            return null;
        }
        provider.info.exported = typedArrayObtainAttributes.getBoolean(7, r22.applicationInfo.targetSdkVersion < 17);
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(10, 0);
        provider.info.isSyncable = typedArrayObtainAttributes.getBoolean(11, false);
        String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(3, 0);
        String nonConfigurationString3 = typedArrayObtainAttributes.getNonConfigurationString(4, 0);
        if (nonConfigurationString3 == null) {
            nonConfigurationString3 = nonConfigurationString2;
        }
        if (nonConfigurationString3 == null) {
            provider.info.readPermission = r22.applicationInfo.permission;
        } else {
            provider.info.readPermission = nonConfigurationString3.length() > 0 ? nonConfigurationString3.intern() : null;
        }
        String nonConfigurationString4 = typedArrayObtainAttributes.getNonConfigurationString(5, 0);
        if (nonConfigurationString4 != null) {
            nonConfigurationString2 = nonConfigurationString4;
        }
        if (nonConfigurationString2 == null) {
            provider.info.writePermission = r22.applicationInfo.permission;
        } else {
            provider.info.writePermission = nonConfigurationString2.length() > 0 ? nonConfigurationString2.intern() : null;
        }
        provider.info.grantUriPermissions = typedArrayObtainAttributes.getBoolean(13, false);
        provider.info.multiprocess = typedArrayObtainAttributes.getBoolean(9, false);
        provider.info.initOrder = typedArrayObtainAttributes.getInt(12, 0);
        provider.info.splitName = typedArrayObtainAttributes.getNonConfigurationString(21, 0);
        provider.info.flags = 0;
        if (typedArrayObtainAttributes.getBoolean(16, false)) {
            ProviderInfo providerInfo = provider.info;
            providerInfo.flags |= 1073741824;
            if (providerInfo.exported && (i2 & 128) == 0) {
                Slog.w(TAG, "Provider exported request ignored due to singleUser: " + provider.className + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                provider.info.exported = false;
            }
        }
        ProviderInfo providerInfo2 = provider.info;
        boolean z2 = typedArrayObtainAttributes.getBoolean(18, false);
        providerInfo2.directBootAware = z2;
        providerInfo2.encryptionAware = z2;
        if (provider.info.directBootAware) {
            r22.applicationInfo.privateFlags |= 256;
        }
        boolean z3 = typedArrayObtainAttributes.getBoolean(20, false);
        if (z3) {
            provider.info.flags |= 1048576;
            r22.visibleToInstantApps = true;
        }
        typedArrayObtainAttributes.recycle();
        if ((r22.applicationInfo.privateFlags & 2) != 0 && provider.info.processName == r22.packageName) {
            strArr[0] = "Heavy-weight applications can not have providers in main process";
            return null;
        }
        if (nonConfigurationString == null) {
            strArr[0] = "<provider> does not include authorities attribute";
            return null;
        }
        if (nonConfigurationString.length() <= 0) {
            strArr[0] = "<provider> has empty authorities attribute";
            return null;
        }
        provider.info.authority = nonConfigurationString.intern();
        if (parseProviderTags(resources, xmlResourceParser, z3, r22, provider, strArr)) {
            return provider;
        }
        return null;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private boolean parseProviderTags(Resources resources, XmlResourceParser xmlResourceParser, boolean z2, Package r23, Provider provider, String[] strArr) throws XmlPullParserException, IOException {
        boolean z3;
        String strIntern;
        String str;
        PathPermission pathPermission;
        int depth = xmlResourceParser.getDepth();
        boolean z4 = z2;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlResourceParser.getName().equals("intent-filter")) {
                    ProviderIntentInfo providerIntentInfo = new ProviderIntentInfo(provider);
                    if (!parseIntent(resources, xmlResourceParser, true, false, providerIntentInfo, strArr)) {
                        return false;
                    }
                    if (z4) {
                        providerIntentInfo.setVisibilityToInstantApp(1);
                        provider.info.flags |= 1048576;
                    }
                    provider.intents.add(providerIntentInfo);
                } else if (xmlResourceParser.getName().equals("meta-data")) {
                    Bundle metaData = parseMetaData(resources, xmlResourceParser, provider.metaData, strArr);
                    provider.metaData = metaData;
                    if (metaData == null) {
                        return false;
                    }
                    if (!z4 && metaData.getBoolean(META_DATA_INSTANT_APPS)) {
                        provider.info.flags |= 1048576;
                        r23.visibleToInstantApps = true;
                        for (int size = provider.intents.size() - 1; size >= 0; size--) {
                            ((ProviderIntentInfo) provider.intents.get(size)).setVisibilityToInstantApp(1);
                        }
                        z4 = true;
                    }
                } else if (xmlResourceParser.getName().equals("grant-uri-permission")) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestGrantUriPermission);
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
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else {
                        Slog.w(TAG, "Unknown element under <path-permission>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                } else if (xmlResourceParser.getName().equals("path-permission")) {
                    TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPathPermission);
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
                        z3 = true;
                    } else {
                        z3 = false;
                        strIntern = nonConfigurationString5;
                    }
                    if (nonConfigurationString4 != null) {
                        nonConfigurationString4 = nonConfigurationString4.intern();
                        z3 = true;
                    }
                    if (z3) {
                        String nonConfigurationString7 = typedArrayObtainAttributes2.getNonConfigurationString(3, 0);
                        if (nonConfigurationString7 != null) {
                            str = strIntern;
                            pathPermission = new PathPermission(nonConfigurationString7, 0, str, nonConfigurationString4);
                        } else {
                            str = strIntern;
                            pathPermission = null;
                        }
                        String nonConfigurationString8 = typedArrayObtainAttributes2.getNonConfigurationString(4, 0);
                        if (nonConfigurationString8 != null) {
                            pathPermission = new PathPermission(nonConfigurationString8, 1, str, nonConfigurationString4);
                        }
                        String nonConfigurationString9 = typedArrayObtainAttributes2.getNonConfigurationString(5, 0);
                        if (nonConfigurationString9 != null) {
                            pathPermission = new PathPermission(nonConfigurationString9, 2, str, nonConfigurationString4);
                        }
                        String nonConfigurationString10 = typedArrayObtainAttributes2.getNonConfigurationString(6, 0);
                        if (nonConfigurationString10 != null) {
                            pathPermission = new PathPermission(nonConfigurationString10, 3, str, nonConfigurationString4);
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
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        } else {
                            Slog.w(TAG, "No path, pathPrefix, or pathPattern for <path-permission>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        }
                    } else {
                        Slog.w(TAG, "No readPermission or writePermssion for <path-permission>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                } else {
                    Slog.w(TAG, "Unknown element under <provider>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
        }
        return true;
    }

    public static final PublicKey parsePublicKey(String str) {
        if (str == null) {
            Slog.w(TAG, "Could not parse null public key");
            return null;
        }
        try {
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode(str, 0));
            try {
                return KeyFactory.getInstance(KeyProperties.KEY_ALGORITHM_RSA).generatePublic(x509EncodedKeySpec);
            } catch (NoSuchAlgorithmException unused) {
                Slog.wtf(TAG, "Could not parse public key: RSA KeyFactory not included in build");
                try {
                    return KeyFactory.getInstance(KeyProperties.KEY_ALGORITHM_EC).generatePublic(x509EncodedKeySpec);
                } catch (NoSuchAlgorithmException unused2) {
                    Slog.wtf(TAG, "Could not parse public key: EC KeyFactory not included in build");
                    try {
                        return KeyFactory.getInstance("DSA").generatePublic(x509EncodedKeySpec);
                    } catch (NoSuchAlgorithmException unused3) {
                        Slog.wtf(TAG, "Could not parse public key: DSA KeyFactory not included in build");
                        return null;
                    } catch (InvalidKeySpecException unused4) {
                        return null;
                    }
                } catch (InvalidKeySpecException unused5) {
                    return KeyFactory.getInstance("DSA").generatePublic(x509EncodedKeySpec);
                }
            } catch (InvalidKeySpecException unused6) {
                return KeyFactory.getInstance(KeyProperties.KEY_ALGORITHM_EC).generatePublic(x509EncodedKeySpec);
            }
        } catch (IllegalArgumentException unused7) {
            Slog.w(TAG, "Could not parse verifier public key; invalid Base64");
            return null;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private Service parseService(Package r25, Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr, CachedComponentArgs cachedComponentArgs) throws XmlPullParserException, IOException {
        String str;
        Package r6 = r25;
        Resources resources2 = resources;
        String[] strArr2 = strArr;
        TypedArray typedArrayObtainAttributes = resources2.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestService);
        if (cachedComponentArgs.mServiceArgs == null) {
            ParseComponentArgs parseComponentArgs = new ParseComponentArgs(r25, strArr, 2, 0, 1, 15, 8, 12, this.mSeparateProcesses, 6, 7, 4);
            cachedComponentArgs.mServiceArgs = parseComponentArgs;
            parseComponentArgs.tag = "<service>";
        }
        ParseComponentArgs parseComponentArgs2 = cachedComponentArgs.mServiceArgs;
        parseComponentArgs2.sa = typedArrayObtainAttributes;
        parseComponentArgs2.flags = i2;
        Service service = new Service(cachedComponentArgs.mServiceArgs, new ServiceInfo());
        if (strArr2[0] != null) {
            typedArrayObtainAttributes.recycle();
            return null;
        }
        boolean zHasValue = typedArrayObtainAttributes.hasValue(5);
        if (zHasValue) {
            service.info.exported = typedArrayObtainAttributes.getBoolean(5, false);
        }
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(3, 0);
        if (nonConfigurationString == null) {
            service.info.permission = r6.applicationInfo.permission;
        } else {
            service.info.permission = nonConfigurationString.length() > 0 ? nonConfigurationString.intern() : null;
        }
        service.info.splitName = typedArrayObtainAttributes.getNonConfigurationString(17, 0);
        service.info.flags = 0;
        if (typedArrayObtainAttributes.getBoolean(9, false)) {
            service.info.flags |= 1;
        }
        if (typedArrayObtainAttributes.getBoolean(10, false)) {
            service.info.flags |= 2;
        }
        if (typedArrayObtainAttributes.getBoolean(14, false)) {
            service.info.flags |= 4;
        }
        String str2 = " at ";
        if (typedArrayObtainAttributes.getBoolean(11, false)) {
            ServiceInfo serviceInfo = service.info;
            serviceInfo.flags |= 1073741824;
            if (serviceInfo.exported && (i2 & 128) == 0) {
                Slog.w(TAG, "Service exported request ignored due to singleUser: " + service.className + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                service.info.exported = false;
                zHasValue = true;
            }
        }
        ServiceInfo serviceInfo2 = service.info;
        boolean z2 = typedArrayObtainAttributes.getBoolean(13, false);
        serviceInfo2.directBootAware = z2;
        serviceInfo2.encryptionAware = z2;
        if (service.info.directBootAware) {
            r6.applicationInfo.privateFlags |= 256;
        }
        boolean z3 = typedArrayObtainAttributes.getBoolean(16, false);
        if (z3) {
            service.info.flags |= 1048576;
            r6.visibleToInstantApps = true;
        }
        typedArrayObtainAttributes.recycle();
        if ((r6.applicationInfo.privateFlags & 2) != 0 && service.info.processName == r6.packageName) {
            strArr2[0] = "Heavy-weight applications can not have services in main process";
            return null;
        }
        int depth = xmlResourceParser.getDepth();
        boolean z4 = z3;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                if (!zHasValue) {
                    service.info.exported = service.intents.size() > 0;
                }
                return service;
            }
            if (next == 3 || next == 4) {
                str = str2;
            } else if (xmlResourceParser.getName().equals("intent-filter")) {
                ServiceIntentInfo serviceIntentInfo = new ServiceIntentInfo(service);
                strArr2 = strArr2;
                String str3 = str2;
                if (!parseIntent(resources, xmlResourceParser, true, false, serviceIntentInfo, strArr)) {
                    return null;
                }
                if (z4) {
                    serviceIntentInfo.setVisibilityToInstantApp(1);
                    service.info.flags |= 1048576;
                }
                service.intents.add(serviceIntentInfo);
                r6 = r25;
                resources2 = resources;
                str = str3;
            } else {
                strArr2 = strArr2;
                String str4 = str2;
                if (xmlResourceParser.getName().equals("meta-data")) {
                    resources2 = resources;
                    Bundle metaData = parseMetaData(resources2, xmlResourceParser, service.metaData, strArr2);
                    service.metaData = metaData;
                    if (metaData == null) {
                        return null;
                    }
                    if (z4 || !metaData.getBoolean(META_DATA_INSTANT_APPS)) {
                        r6 = r25;
                        str = str4;
                    } else {
                        service.info.flags |= 1048576;
                        r25.visibleToInstantApps = true;
                        for (int size = service.intents.size() - 1; size >= 0; size--) {
                            ((ServiceIntentInfo) service.intents.get(size)).setVisibilityToInstantApp(1);
                        }
                        r6 = r25;
                        resources2 = resources2;
                        strArr2 = strArr2;
                        z4 = true;
                        str2 = str4;
                    }
                } else {
                    r6 = r25;
                    resources2 = resources;
                    StringBuilder sb = new StringBuilder("Unknown element under <service>: ");
                    sb.append(xmlResourceParser.getName());
                    str = str4;
                    sb.append(str);
                    sb.append(this.mArchiveSourcePath);
                    sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    sb.append(xmlResourceParser.getPositionDescription());
                    Slog.w(TAG, sb.toString());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
            r6 = r6;
            str2 = str;
            strArr2 = strArr2;
            resources2 = resources2;
        }
    }

    private void parseSplitApk(Package r31, int i2, AssetManager assetManager, int i3) throws Throwable {
        String str;
        String str2 = "Failed to read manifest from ";
        String str3 = r31.splitCodePaths[i2];
        this.mParseError = 1;
        this.mArchiveSourcePath = str3;
        int iLoadApkIntoAssetManager = loadApkIntoAssetManager(assetManager, str3, i3);
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                Resources resources = new Resources(assetManager, this.mMetrics, null);
                assetManager.setConfiguration(0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Build.VERSION.RESOURCES_SDK_INT);
                XmlResourceParser xmlResourceParserOpenXmlResourceParser = assetManager.openXmlResourceParser(iLoadApkIntoAssetManager, ANDROID_MANIFEST_FILENAME);
                try {
                    try {
                        String[] strArr = new String[1];
                        str = str3;
                        try {
                            if (parseSplitApk(r31, resources, xmlResourceParserOpenXmlResourceParser, i3, i2, strArr) != null) {
                                IoUtils.closeQuietly(xmlResourceParserOpenXmlResourceParser);
                                return;
                            }
                            throw new PackageParserException(this.mParseError, str + " (at " + xmlResourceParserOpenXmlResourceParser.getPositionDescription() + "): " + strArr[0]);
                        } catch (Exception e2) {
                            e = e2;
                            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, str2 + str, e);
                        }
                    } catch (Exception e3) {
                        e = e3;
                        str = str3;
                    }
                } catch (PackageParserException e4) {
                } catch (Throwable th) {
                    th = th;
                    xmlResourceParser = xmlResourceParserOpenXmlResourceParser;
                    IoUtils.closeQuietly(xmlResourceParser);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (PackageParserException e5) {
            throw e5;
        } catch (Exception e6) {
            e = e6;
            str = str3;
            str2 = "Failed to read manifest from ";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [android.content.pm.ComponentInfo] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.content.pm.PackageParser$1] */
    private boolean parseSplitApplication(Package r19, Resources resources, XmlResourceParser xmlResourceParser, int i2, int i3, String[] strArr) throws XmlPullParserException, IOException {
        int i4;
        ActivityInfo activityInfo;
        ProviderInfo providerInfo;
        ServiceInfo serviceInfo;
        ActivityInfo activityInfo2;
        ActivityInfo activityInfo3;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestApplication);
        boolean z2 = true;
        int i5 = 4;
        if (typedArrayObtainAttributes.getBoolean(7, true)) {
            int[] iArr = r19.splitFlags;
            iArr[i3] = iArr[i3] | 4;
        }
        String string = typedArrayObtainAttributes.getString(46);
        if (string != null && !ClassLoaderFactory.isValidClassLoaderName(string)) {
            strArr[0] = "Invalid class loader name: ".concat(string);
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        r19.applicationInfo.splitClassLoaderNames[i3] = string;
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == z2 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next == 3) {
                z2 = true;
            } else if (next == i5) {
                continue;
            } else {
                ?? r0 = 0;
                r0 = 0;
                r0 = 0;
                r0 = 0;
                CachedComponentArgs cachedComponentArgs = new CachedComponentArgs();
                String name = xmlResourceParser.getName();
                if (name.equals(Context.ACTIVITY_SERVICE)) {
                    i4 = depth;
                    Activity activity = parseActivity(r19, resources, xmlResourceParser, i2, strArr, cachedComponentArgs, false, r19.baseHardwareAccelerated);
                    if (activity == null) {
                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                        return false;
                    }
                    r19.activities.add(activity);
                    activityInfo3 = activity.info;
                } else {
                    i4 = depth;
                    if (name.equals("receiver")) {
                        Activity activity2 = parseActivity(r19, resources, xmlResourceParser, i2, strArr, cachedComponentArgs, true, false);
                        if (activity2 == null) {
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        r19.receivers.add(activity2);
                        activityInfo2 = activity2.info;
                    } else if (name.equals("service")) {
                        Service service = parseService(r19, resources, xmlResourceParser, i2, strArr, cachedComponentArgs);
                        if (service == null) {
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        r19.services.add(service);
                        serviceInfo = service.info;
                    } else if (name.equals("provider")) {
                        Provider provider = parseProvider(r19, resources, xmlResourceParser, i2, strArr, cachedComponentArgs);
                        if (provider == null) {
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        r19.providers.add(provider);
                        providerInfo = provider.info;
                    } else if (name.equals("activity-alias")) {
                        Activity activityAlias = parseActivityAlias(r19, resources, xmlResourceParser, i2, strArr, cachedComponentArgs);
                        if (activityAlias == null) {
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        r19.activities.add(activityAlias);
                        activityInfo = activityAlias.info;
                    } else if (xmlResourceParser.getName().equals("meta-data")) {
                        Bundle metaData = parseMetaData(resources, xmlResourceParser, r19.mAppMetaData, strArr);
                        r19.mAppMetaData = metaData;
                        if (metaData == null) {
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                    } else if (name.equals("uses-static-library")) {
                        if (!parseUsesStaticLibrary(r19, resources, xmlResourceParser, strArr)) {
                            return false;
                        }
                    } else if (name.equals("uses-library")) {
                        TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesLibrary);
                        String nonResourceString = typedArrayObtainAttributes2.getNonResourceString(0);
                        boolean z3 = typedArrayObtainAttributes2.getBoolean(1, true);
                        typedArrayObtainAttributes2.recycle();
                        if (nonResourceString != null) {
                            String strIntern = nonResourceString.intern();
                            if (z3) {
                                r19.usesLibraries = ArrayUtils.add(r19.usesLibraries, strIntern);
                                r19.usesOptionalLibraries = ArrayUtils.remove(r19.usesOptionalLibraries, strIntern);
                            } else if (!ArrayUtils.contains(r19.usesLibraries, strIntern)) {
                                r19.usesOptionalLibraries = ArrayUtils.add(r19.usesOptionalLibraries, strIntern);
                            }
                        }
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else {
                        if (name.equals("uses-package")) {
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        } else {
                            StringBuilder sbV = c.v("Unknown element under <application>: ", name, " at ");
                            sbV.append(this.mArchiveSourcePath);
                            sbV.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                            sbV.append(xmlResourceParser.getPositionDescription());
                            Slog.w(TAG, sbV.toString());
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        }
                        r0 = activityInfo;
                        r0 = providerInfo;
                        r0 = serviceInfo;
                        r0 = activityInfo2;
                        r0 = activityInfo3;
                        r0 = activityInfo3;
                        z2 = true;
                        i5 = 4;
                        depth = i4;
                    }
                }
                if (r0 != 0) {
                    r0 = activityInfo;
                    r0 = providerInfo;
                    r0 = serviceInfo;
                    r0 = activityInfo2;
                    if (r0.splitName == null) {
                        r0 = activityInfo3;
                        r0.splitName = r19.splitNames[i3];
                    }
                }
                r0 = activityInfo;
                r0 = providerInfo;
                r0 = serviceInfo;
                r0 = activityInfo2;
                r0 = activityInfo3;
                r0 = activityInfo3;
                z2 = true;
                i5 = 4;
                depth = i4;
            }
        }
        return z2;
    }

    private FeatureInfo parseUsesFeature(Resources resources, AttributeSet attributeSet) {
        FeatureInfo featureInfo = new FeatureInfo();
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.AndroidManifestUsesFeature);
        featureInfo.name = typedArrayObtainAttributes.getNonResourceString(0);
        featureInfo.version = typedArrayObtainAttributes.getInt(3, 0);
        if (featureInfo.name == null) {
            featureInfo.reqGlEsVersion = typedArrayObtainAttributes.getInt(1, 0);
        }
        if (typedArrayObtainAttributes.getBoolean(2, true)) {
            featureInfo.flags |= 1;
        }
        typedArrayObtainAttributes.recycle();
        return featureInfo;
    }

    private boolean parseUsesPermission(Package r7, Resources resources, XmlResourceParser xmlResourceParser) {
        Callback callback;
        Callback callback2;
        int i2;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesPermission);
        String nonResourceString = typedArrayObtainAttributes.getNonResourceString(0);
        TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(1);
        int i3 = (typedValuePeekValue == null || (i2 = typedValuePeekValue.type) < 16 || i2 > 31) ? 0 : typedValuePeekValue.data;
        String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(2, 0);
        String nonConfigurationString2 = typedArrayObtainAttributes.getNonConfigurationString(3, 0);
        typedArrayObtainAttributes.recycle();
        XmlUtils.skipCurrentTag(xmlResourceParser);
        if (nonResourceString == null) {
            return true;
        }
        if (i3 != 0 && i3 < Build.VERSION.RESOURCES_SDK_INT) {
            return true;
        }
        if (nonConfigurationString != null && (callback2 = this.mCallback) != null && !callback2.hasFeature(nonConfigurationString)) {
            return true;
        }
        if (nonConfigurationString2 != null && (callback = this.mCallback) != null && callback.hasFeature(nonConfigurationString2)) {
            return true;
        }
        if (r7.requestedPermissions.indexOf(nonResourceString) == -1) {
            r7.requestedPermissions.add(nonResourceString.intern());
        } else {
            StringBuilder sbV = c.v("Ignoring duplicate uses-permissions/uses-permissions-sdk-m: ", nonResourceString, " in package: ");
            sbV.append(r7.packageName);
            sbV.append(" at: ");
            sbV.append(xmlResourceParser.getPositionDescription());
            Slog.w(TAG, sbV.toString());
        }
        return true;
    }

    private boolean parseUsesStaticLibrary(Package r9, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesStaticLibrary);
        String nonResourceString = typedArrayObtainAttributes.getNonResourceString(0);
        int i2 = typedArrayObtainAttributes.getInt(1, -1);
        String nonResourceString2 = typedArrayObtainAttributes.getNonResourceString(2);
        typedArrayObtainAttributes.recycle();
        if (nonResourceString == null || i2 < 0 || nonResourceString2 == null) {
            strArr[0] = "Bad uses-static-library declaration name: " + nonResourceString + " version: " + i2 + " certDigest" + nonResourceString2;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            XmlUtils.skipCurrentTag(xmlResourceParser);
            return false;
        }
        ArrayList<String> arrayList = r9.usesStaticLibraries;
        if (arrayList != null && arrayList.contains(nonResourceString)) {
            strArr[0] = "Depending on multiple versions of static library ".concat(nonResourceString);
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            XmlUtils.skipCurrentTag(xmlResourceParser);
            return false;
        }
        String strIntern = nonResourceString.intern();
        String lowerCase = nonResourceString2.replace(SettingsStringUtil.DELIMITER, "").toLowerCase();
        String[] additionalCertificates = EmptyArray.STRING;
        if (r9.applicationInfo.targetSdkVersion > 26) {
            additionalCertificates = parseAdditionalCertificates(resources, xmlResourceParser, strArr);
            if (additionalCertificates == null) {
                return false;
            }
        } else {
            XmlUtils.skipCurrentTag(xmlResourceParser);
        }
        String[] strArr2 = new String[additionalCertificates.length + 1];
        strArr2[0] = lowerCase;
        System.arraycopy(additionalCertificates, 0, strArr2, 1, additionalCertificates.length);
        r9.usesStaticLibraries = ArrayUtils.add(r9.usesStaticLibraries, strIntern);
        r9.usesStaticLibrariesVersions = ArrayUtils.appendInt(r9.usesStaticLibrariesVersions, i2, true);
        r9.usesStaticLibrariesCertDigests = (String[][]) ArrayUtils.appendElement(String[].class, r9.usesStaticLibrariesCertDigests, strArr2, true);
        return true;
    }

    private static VerifierInfo parseVerifier(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        String attributeValue = null;
        String attributeValue2 = null;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            if (attributeNameResource == 16842755) {
                attributeValue = attributeSet.getAttributeValue(i2);
            } else if (attributeNameResource == 16843686) {
                attributeValue2 = attributeSet.getAttributeValue(i2);
            }
        }
        if (attributeValue == null || attributeValue.length() == 0) {
            Slog.i(TAG, "verifier package name was null; skipping");
            return null;
        }
        PublicKey publicKey = parsePublicKey(attributeValue2);
        if (publicKey != null) {
            return new VerifierInfo(attributeValue, publicKey);
        }
        Slog.i(TAG, "Unable to parse verifier public key for ".concat(attributeValue));
        return null;
    }

    public static void populateCertificates(Package r4, Certificate[][] certificateArr) throws PackageParserException {
        r4.mSignatures = null;
        r4.mSigningKeys = null;
        r4.mCertificates = certificateArr;
        try {
            r4.mSignatures = convertToSignatures(certificateArr);
            r4.mSigningKeys = new ArraySet<>(certificateArr.length);
            for (Certificate[] certificateArr2 : certificateArr) {
                r4.mSigningKeys.add(certificateArr2[0].getPublicKey());
            }
            ArrayList<Package> arrayList = r4.childPackages;
            int size = arrayList != null ? arrayList.size() : 0;
            for (int i2 = 0; i2 < size; i2++) {
                Package r1 = r4.childPackages.get(i2);
                r1.mCertificates = r4.mCertificates;
                r1.mSignatures = r4.mSignatures;
                r1.mSigningKeys = r4.mSigningKeys;
            }
        } catch (CertificateEncodingException e2) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Failed to collect certificates from " + r4.baseCodePath, e2);
        }
    }

    public static long readFullyIgnoringContents(InputStream inputStream) throws IOException {
        byte[] bArr = sBuffer.get();
        if (bArr == null) {
            bArr = new byte[4096];
        }
        int i2 = 0;
        while (true) {
            int i3 = inputStream.read(bArr, 0, bArr.length);
            if (i3 == -1) {
                sBuffer.set(bArr);
                return i2;
            }
            i2 += i3;
        }
    }

    private void setActivityResizeMode(ActivityInfo activityInfo, TypedArray typedArray, Package r8) {
        boolean z2 = (r8.applicationInfo.privateFlags & 3072) != 0;
        if (typedArray.hasValue(40) || z2) {
            if (typedArray.getBoolean(40, (r8.applicationInfo.privateFlags & 1024) != 0)) {
                activityInfo.resizeMode = 2;
                return;
            } else {
                activityInfo.resizeMode = 0;
                return;
            }
        }
        if ((r8.applicationInfo.privateFlags & 4096) != 0) {
            activityInfo.resizeMode = 1;
            return;
        }
        if (activityInfo.isFixedOrientationPortrait()) {
            activityInfo.resizeMode = 6;
            return;
        }
        if (activityInfo.isFixedOrientationLandscape()) {
            activityInfo.resizeMode = 5;
        } else if (activityInfo.isFixedOrientation()) {
            activityInfo.resizeMode = 7;
        } else {
            activityInfo.resizeMode = 4;
        }
    }

    public static void setCompatibilityModeEnabled(boolean z2) {
        sCompatibilityModeEnabled = z2;
    }

    private void setMaxAspectRatio(Package r5) {
        ApplicationInfo applicationInfo = r5.applicationInfo;
        float f2 = applicationInfo.targetSdkVersion < 26 ? DEFAULT_PRE_O_MAX_ASPECT_RATIO : 0.0f;
        float f3 = applicationInfo.maxAspectRatio;
        if (f3 != 0.0f) {
            f2 = f3;
        } else {
            Bundle bundle = r5.mAppMetaData;
            if (bundle != null && bundle.containsKey(METADATA_MAX_ASPECT_RATIO)) {
                f2 = r5.mAppMetaData.getFloat(METADATA_MAX_ASPECT_RATIO, f2);
            }
        }
        for (Activity activity : r5.activities) {
            if (!activity.hasMaxAspectRatio()) {
                Bundle bundle2 = activity.metaData;
                activity.setMaxAspectRatio(bundle2 != null ? bundle2.getFloat(METADATA_MAX_ASPECT_RATIO, f2) : f2);
            }
        }
    }

    public static byte[] toCacheEntryStatic(Package r3) {
        Parcel parcelObtain = Parcel.obtain();
        PackageParserCacheHelper.WriteHelper writeHelper = new PackageParserCacheHelper.WriteHelper(parcelObtain);
        r3.writeToParcel(parcelObtain, 0);
        writeHelper.finishAndUninstall();
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
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
        if (packageUserState.suspended) {
            applicationInfo.flags |= 1073741824;
        } else {
            applicationInfo.flags &= -1073741825;
        }
        if (packageUserState.instantApp) {
            applicationInfo.privateFlags |= 128;
        } else {
            applicationInfo.privateFlags &= -129;
        }
        if (packageUserState.virtualPreload) {
            applicationInfo.privateFlags |= 65536;
        } else {
            applicationInfo.privateFlags &= -65537;
        }
        if (packageUserState.hidden) {
            applicationInfo.privateFlags |= 1;
        } else {
            applicationInfo.privateFlags &= -2;
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
        if (applicationInfo.category == -1) {
            applicationInfo.category = packageUserState.categoryHint;
        }
        if (applicationInfo.category == -1) {
            applicationInfo.category = FallbackCategoryProvider.getFallbackCategory(applicationInfo.packageName);
        }
        applicationInfo.seInfoUser = SELinuxUtil.assignSeinfoUser(packageUserState);
        applicationInfo.resourceDirs = packageUserState.overlayPaths;
    }

    private static String validateName(String str, boolean z2, boolean z3) {
        int length = str.length();
        boolean z4 = false;
        boolean z5 = true;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                z5 = false;
            } else if (z5 || ((cCharAt < '0' || cCharAt > '9') && cCharAt != '_')) {
                if (cCharAt != '.') {
                    return "bad character '" + cCharAt + "'";
                }
                z4 = true;
                z5 = true;
            }
        }
        if (z3 && !FileUtils.isValidExtFilename(str)) {
            return "Invalid filename";
        }
        if (z4 || !z2) {
            return null;
        }
        return "must have at least one '.' separator";
    }

    public Package fromCacheEntry(byte[] bArr) {
        return fromCacheEntryStatic(bArr);
    }

    @Deprecated
    public Package parseMonolithicPackage(File file, int i2) {
        AssetManager assetManagerNewConfiguredAssetManager = newConfiguredAssetManager();
        PackageLite monolithicPackageLite = parseMonolithicPackageLite(file, i2);
        if (this.mOnlyCoreApps && !monolithicPackageLite.coreApp) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, c.i("Not a coreApp: ", file));
        }
        try {
            Package baseApk = parseBaseApk(file, assetManagerNewConfiguredAssetManager, i2);
            baseApk.setCodePath(file.getAbsolutePath());
            baseApk.setUse32bitAbi(monolithicPackageLite.use32bitAbi);
            return baseApk;
        } finally {
            IoUtils.closeQuietly(assetManagerNewConfiguredAssetManager);
        }
    }

    public Package parsePackage(File file, int i2, boolean z2) {
        Package cachedResult = z2 ? getCachedResult(file, i2) : null;
        if (cachedResult != null) {
            return cachedResult;
        }
        boolean z3 = LOG_PARSE_TIMINGS;
        long jUptimeMillis = z3 ? SystemClock.uptimeMillis() : 0L;
        Package clusterPackage = file.isDirectory() ? parseClusterPackage(file, i2) : parseMonolithicPackage(file, i2);
        long jUptimeMillis2 = z3 ? SystemClock.uptimeMillis() : 0L;
        cacheResult(file, i2, clusterPackage);
        if (z3) {
            long j2 = jUptimeMillis2 - jUptimeMillis;
            long jUptimeMillis3 = SystemClock.uptimeMillis() - jUptimeMillis2;
            if (j2 + jUptimeMillis3 > 100) {
                Slog.i(TAG, "Parse times for '" + file + "': parse=" + j2 + "ms, update_cache=" + jUptimeMillis3 + " ms");
            }
        }
        return clusterPackage;
    }

    public void setCacheDir(File file) {
        this.mCacheDir = file;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public void setDisplayMetrics(DisplayMetrics displayMetrics) {
        this.mMetrics = displayMetrics;
    }

    public void setOnlyCoreApps(boolean z2) {
        this.mOnlyCoreApps = z2;
    }

    public void setSeparateProcesses(String[] strArr) {
        this.mSeparateProcesses = strArr;
    }

    public byte[] toCacheEntry(Package r1) {
        return toCacheEntryStatic(r1);
    }

    public static final class ActivityIntentInfo extends IntentInfo {
        public Activity activity;

        public ActivityIntentInfo(Activity activity) {
            this.activity = activity;
        }

        public String toString() {
            StringBuilder sbQ = c.q(128, "ActivityIntentInfo{");
            sbQ.append(Integer.toHexString(System.identityHashCode(this)));
            sbQ.append(' ');
            this.activity.appendComponentShortName(sbQ);
            sbQ.append('}');
            return sbQ.toString();
        }

        public ActivityIntentInfo(Parcel parcel) {
            super(parcel);
        }
    }

    public static class PackageParserException extends Exception {
        public final int error;

        public PackageParserException(int i2, String str) {
            super(str);
            this.error = i2;
        }

        public PackageParserException(int i2, String str, Throwable th) {
            super(str, th);
            this.error = i2;
        }
    }

    public static final class ProviderIntentInfo extends IntentInfo {
        public Provider provider;

        public ProviderIntentInfo(Provider provider) {
            this.provider = provider;
        }

        public String toString() {
            StringBuilder sbQ = c.q(128, "ProviderIntentInfo{");
            sbQ.append(Integer.toHexString(System.identityHashCode(this)));
            sbQ.append(' ');
            this.provider.appendComponentShortName(sbQ);
            sbQ.append('}');
            return sbQ.toString();
        }

        public ProviderIntentInfo(Parcel parcel) {
            super(parcel);
        }
    }

    public static final class ServiceIntentInfo extends IntentInfo {
        public Service service;

        public ServiceIntentInfo(Service service) {
            this.service = service;
        }

        public String toString() {
            StringBuilder sbQ = c.q(128, "ServiceIntentInfo{");
            sbQ.append(Integer.toHexString(System.identityHashCode(this)));
            sbQ.append(' ');
            this.service.appendComponentShortName(sbQ);
            sbQ.append('}');
            return sbQ.toString();
        }

        public ServiceIntentInfo(Parcel parcel) {
            super(parcel);
        }
    }

    public static ApplicationInfo generateApplicationInfo(Package r2, int i2, PackageUserState packageUserState, int i3) {
        ApplicationInfo applicationInfo = null;
        if (r2 == null) {
            return null;
        }
        if (checkUseInstalledOrHidden(i2, packageUserState, r2.applicationInfo) && r2.isMatch(i2)) {
            if (!copyNeeded(i2, r2, packageUserState, null, i3) && ((32768 & i2) == 0 || packageUserState.enabled != 4)) {
                updateApplicationInfo(r2.applicationInfo, i2, packageUserState);
                return r2.applicationInfo;
            }
            applicationInfo = new ApplicationInfo(r2.applicationInfo);
            applicationInfo.initForUser(i3);
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
        }
        return applicationInfo;
    }

    public static PackageInfo generatePackageInfo(Package r3, int[] iArr, int i2, long j2, long j3, Set<String> set, PackageUserState packageUserState, int i3) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        if (!checkUseInstalledOrHidden(i2, packageUserState, r3.applicationInfo) || !r3.isMatch(i2)) {
            return null;
        }
        PackageInfo packageInfo = new PackageInfo();
        packageInfo.packageName = r3.packageName;
        packageInfo.splitNames = r3.splitNames;
        packageInfo.versionCode = r3.mVersionCode;
        packageInfo.baseRevisionCode = r3.baseRevisionCode;
        packageInfo.splitRevisionCodes = r3.splitRevisionCodes;
        packageInfo.versionName = r3.mVersionName;
        packageInfo.sharedUserId = r3.mSharedUserId;
        packageInfo.sharedUserLabel = r3.mSharedUserLabel;
        ApplicationInfo applicationInfoGenerateApplicationInfo = generateApplicationInfo(r3, i2, packageUserState, i3);
        packageInfo.applicationInfo = applicationInfoGenerateApplicationInfo;
        packageInfo.installLocation = r3.installLocation;
        packageInfo.isStub = r3.isStub;
        packageInfo.coreApp = r3.coreApp;
        int i4 = applicationInfoGenerateApplicationInfo.flags;
        if ((i4 & 1) != 0 || (i4 & 128) != 0) {
            packageInfo.requiredForAllUsers = r3.mRequiredForAllUsers;
        }
        packageInfo.restrictedAccountType = r3.mRestrictedAccountType;
        packageInfo.requiredAccountType = r3.mRequiredAccountType;
        packageInfo.overlayTarget = r3.mOverlayTarget;
        packageInfo.overlayPriority = r3.mOverlayPriority;
        if (r3.mIsStaticOverlay) {
            packageInfo.overlayFlags |= 2;
        }
        if (r3.mTrustedOverlay) {
            packageInfo.overlayFlags |= 4;
        }
        packageInfo.firstInstallTime = j2;
        packageInfo.lastUpdateTime = j3;
        if ((i2 & 256) != 0) {
            packageInfo.gids = iArr;
        }
        if ((i2 & 16384) != 0) {
            ArrayList<ConfigurationInfo> arrayList = r3.configPreferences;
            int size6 = arrayList != null ? arrayList.size() : 0;
            if (size6 > 0) {
                ConfigurationInfo[] configurationInfoArr = new ConfigurationInfo[size6];
                packageInfo.configPreferences = configurationInfoArr;
                r3.configPreferences.toArray(configurationInfoArr);
            }
            ArrayList<FeatureInfo> arrayList2 = r3.reqFeatures;
            int size7 = arrayList2 != null ? arrayList2.size() : 0;
            if (size7 > 0) {
                FeatureInfo[] featureInfoArr = new FeatureInfo[size7];
                packageInfo.reqFeatures = featureInfoArr;
                r3.reqFeatures.toArray(featureInfoArr);
            }
            ArrayList<FeatureGroupInfo> arrayList3 = r3.featureGroups;
            int size8 = arrayList3 != null ? arrayList3.size() : 0;
            if (size8 > 0) {
                FeatureGroupInfo[] featureGroupInfoArr = new FeatureGroupInfo[size8];
                packageInfo.featureGroups = featureGroupInfoArr;
                r3.featureGroups.toArray(featureGroupInfoArr);
            }
        }
        if ((i2 & 1) != 0 && (size5 = r3.activities.size()) > 0) {
            ActivityInfo[] activityInfoArr = new ActivityInfo[size5];
            int i5 = 0;
            for (int i6 = 0; i6 < size5; i6++) {
                Activity activity = r3.activities.get(i6);
                if (packageUserState.isMatch(activity.info, i2)) {
                    activityInfoArr[i5] = generateActivityInfo(activity, i2, packageUserState, i3);
                    i5++;
                }
            }
            packageInfo.activities = (ActivityInfo[]) ArrayUtils.trimToSize(activityInfoArr, i5);
        }
        if ((i2 & 2) != 0 && (size4 = r3.receivers.size()) > 0) {
            ActivityInfo[] activityInfoArr2 = new ActivityInfo[size4];
            int i7 = 0;
            for (int i8 = 0; i8 < size4; i8++) {
                Activity activity2 = r3.receivers.get(i8);
                if (packageUserState.isMatch(activity2.info, i2)) {
                    activityInfoArr2[i7] = generateActivityInfo(activity2, i2, packageUserState, i3);
                    i7++;
                }
            }
            packageInfo.receivers = (ActivityInfo[]) ArrayUtils.trimToSize(activityInfoArr2, i7);
        }
        if ((i2 & 4) != 0 && (size3 = r3.services.size()) > 0) {
            ServiceInfo[] serviceInfoArr = new ServiceInfo[size3];
            int i9 = 0;
            for (int i10 = 0; i10 < size3; i10++) {
                Service service = r3.services.get(i10);
                if (packageUserState.isMatch(service.info, i2)) {
                    serviceInfoArr[i9] = generateServiceInfo(service, i2, packageUserState, i3);
                    i9++;
                }
            }
            packageInfo.services = (ServiceInfo[]) ArrayUtils.trimToSize(serviceInfoArr, i9);
        }
        if ((i2 & 8) != 0 && (size2 = r3.providers.size()) > 0) {
            ProviderInfo[] providerInfoArr = new ProviderInfo[size2];
            int i11 = 0;
            for (int i12 = 0; i12 < size2; i12++) {
                Provider provider = r3.providers.get(i12);
                if (packageUserState.isMatch(provider.info, i2)) {
                    providerInfoArr[i11] = generateProviderInfo(provider, i2, packageUserState, i3);
                    i11++;
                }
            }
            packageInfo.providers = (ProviderInfo[]) ArrayUtils.trimToSize(providerInfoArr, i11);
        }
        if ((i2 & 16) != 0 && (size = r3.instrumentation.size()) > 0) {
            packageInfo.instrumentation = new InstrumentationInfo[size];
            for (int i13 = 0; i13 < size; i13++) {
                packageInfo.instrumentation[i13] = generateInstrumentationInfo(r3.instrumentation.get(i13), i2);
            }
        }
        if ((i2 & 4096) != 0) {
            int size9 = r3.permissions.size();
            if (size9 > 0) {
                packageInfo.permissions = new PermissionInfo[size9];
                for (int i14 = 0; i14 < size9; i14++) {
                    packageInfo.permissions[i14] = generatePermissionInfo(r3.permissions.get(i14), i2);
                }
            }
            int size10 = r3.requestedPermissions.size();
            if (size10 > 0) {
                packageInfo.requestedPermissions = new String[size10];
                packageInfo.requestedPermissionsFlags = new int[size10];
                for (int i15 = 0; i15 < size10; i15++) {
                    String str = r3.requestedPermissions.get(i15);
                    packageInfo.requestedPermissions[i15] = str;
                    int[] iArr2 = packageInfo.requestedPermissionsFlags;
                    iArr2[i15] = iArr2[i15] | 1;
                    if (set != null && set.contains(str)) {
                        int[] iArr3 = packageInfo.requestedPermissionsFlags;
                        iArr3[i15] = iArr3[i15] | 2;
                    }
                }
            }
        }
        if ((i2 & 64) != 0) {
            Signature[] signatureArr = r3.mSignatures;
            int length = signatureArr != null ? signatureArr.length : 0;
            if (length > 0) {
                Signature[] signatureArr2 = new Signature[length];
                packageInfo.signatures = signatureArr2;
                System.arraycopy(signatureArr, 0, signatureArr2, 0, length);
            }
        }
        return packageInfo;
    }

    public static abstract class Component<II extends IntentInfo> {
        public final String className;
        ComponentName componentName;
        String componentShortName;
        public final ArrayList<II> intents;
        public Bundle metaData;
        public Package owner;

        public Component(Package r1) {
            this.owner = r1;
            this.intents = null;
            this.className = null;
        }

        private static <T extends IntentInfo> ArrayList<T> createIntentsList(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == -1) {
                return null;
            }
            if (i2 == 0) {
                return new ArrayList<>(0);
            }
            String string = parcel.readString();
            try {
                Constructor<?> constructor = Class.forName(string).getConstructor(Parcel.class);
                GridLayout.Assoc assoc = (ArrayList<T>) new ArrayList(i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    assoc.add(constructor.newInstance(parcel));
                }
                return assoc;
            } catch (ReflectiveOperationException unused) {
                throw new AssertionError(c.j("Unable to construct intent list for: ", string));
            }
        }

        private static void writeIntentsList(ArrayList<? extends IntentInfo> arrayList, Parcel parcel, int i2) {
            if (arrayList == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = arrayList.size();
            parcel.writeInt(size);
            if (size > 0) {
                parcel.writeString(arrayList.get(0).getClass().getName());
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList.get(i3).writeIntentInfoToParcel(parcel, i2);
                }
            }
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

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.className);
            parcel.writeBundle(this.metaData);
            writeIntentsList(this.intents, parcel, i2);
        }

        public Component(ParsePackageItemArgs parsePackageItemArgs, PackageItemInfo packageItemInfo) {
            this.owner = parsePackageItemArgs.owner;
            this.intents = new ArrayList<>(0);
            if (PackageParser.parsePackageItemInfo(parsePackageItemArgs.owner, packageItemInfo, parsePackageItemArgs.outError, parsePackageItemArgs.tag, parsePackageItemArgs.sa, true, parsePackageItemArgs.nameRes, parsePackageItemArgs.labelRes, parsePackageItemArgs.iconRes, parsePackageItemArgs.roundIconRes, parsePackageItemArgs.logoRes, parsePackageItemArgs.bannerRes)) {
                this.className = packageItemInfo.name;
            } else {
                this.className = null;
            }
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

        public Component(Parcel parcel) {
            this.className = parcel.readString();
            this.metaData = parcel.readBundle();
            this.intents = createIntentsList(parcel);
            this.owner = null;
        }
    }

    private static void collectCertificates(Package r16, File file, int i2) throws Throwable {
        X509Certificate[][] x509CertificateArrVerify;
        boolean z2;
        Signature[] signatureArrConvertToSignatures;
        StrictJarFile strictJarFile;
        String absolutePath = file.getAbsolutePath();
        long j2 = Trace.TRACE_TAG_PACKAGE_MANAGER;
        try {
            try {
                try {
                    Trace.traceBegin(Trace.TRACE_TAG_PACKAGE_MANAGER, "verifyV2");
                    x509CertificateArrVerify = ApkSignatureSchemeV2Verifier.verify(absolutePath);
                    try {
                        signatureArrConvertToSignatures = convertToSignatures(x509CertificateArrVerify);
                        Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
                        z2 = true;
                    } catch (ApkSignatureSchemeV2Verifier.SignatureNotFoundException e2) {
                        e = e2;
                        try {
                            if ((i2 & 2048) == 0) {
                                if (!r16.applicationInfo.isStaticSharedLibrary()) {
                                    Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
                                    z2 = false;
                                    signatureArrConvertToSignatures = null;
                                } else {
                                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Static shared libs must use v2 signature scheme " + absolutePath);
                                }
                            } else {
                                throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "No APK Signature Scheme v2 signature in ephemeral package " + absolutePath, e);
                            }
                        } catch (Throwable th) {
                            th = th;
                            j2 = Trace.TRACE_TAG_PACKAGE_MANAGER;
                            Trace.traceEnd(j2);
                            throw th;
                        }
                    }
                } catch (Exception e3) {
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Failed to collect certificates from " + absolutePath + " using APK Signature Scheme v2", e3);
                }
            } catch (ApkSignatureSchemeV2Verifier.SignatureNotFoundException e4) {
                e = e4;
                x509CertificateArrVerify = null;
            }
            if (z2) {
                if (r16.mCertificates == null) {
                    r16.mCertificates = x509CertificateArrVerify;
                    r16.mSignatures = signatureArrConvertToSignatures;
                    r16.mSigningKeys = new ArraySet<>(x509CertificateArrVerify.length);
                    for (X509Certificate[] x509CertificateArr : x509CertificateArrVerify) {
                        r16.mSigningKeys.add(x509CertificateArr[0].getPublicKey());
                    }
                } else if (!Signature.areExactMatch(r16.mSignatures, signatureArrConvertToSignatures)) {
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, c.D(absolutePath, " has mismatched certificates"));
                }
            }
            try {
                try {
                    Trace.traceBegin(Trace.TRACE_TAG_PACKAGE_MANAGER, "strictJarFileCtor");
                    int i3 = i2 & 64;
                    boolean z3 = i3 == 0;
                    boolean z4 = !z2;
                    if (absolutePath != null && (absolutePath.startsWith("/system/preloadapp") || absolutePath.startsWith("/system/vital-app") || absolutePath.startsWith("/oem/vital-app"))) {
                        z3 = false;
                    }
                    strictJarFile = new StrictJarFile(absolutePath, z4, z3);
                    try {
                        Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
                        ZipEntry zipEntryFindEntry = strictJarFile.findEntry(ANDROID_MANIFEST_FILENAME);
                        if (zipEntryFindEntry == null) {
                            throw new PackageParserException(-101, "Package " + absolutePath + " has no manifest");
                        }
                        if (z2) {
                            closeQuietly(strictJarFile);
                            return;
                        }
                        Trace.traceBegin(Trace.TRACE_TAG_PACKAGE_MANAGER, "verifyV1");
                        ArrayList<ZipEntry> arrayList = new ArrayList();
                        arrayList.add(zipEntryFindEntry);
                        if (i3 == 0) {
                            for (ZipEntry zipEntry : strictJarFile) {
                                if (!zipEntry.isDirectory()) {
                                    String name = zipEntry.getName();
                                    if (!name.startsWith("META-INF/") && !name.equals(ANDROID_MANIFEST_FILENAME)) {
                                        arrayList.add(zipEntry);
                                    }
                                }
                            }
                        }
                        if (i3 != 0) {
                            for (ZipEntry zipEntry2 : arrayList) {
                                Certificate[][] certificateArrLoadCertificates = loadCertificates(strictJarFile, zipEntry2);
                                if (!ArrayUtils.isEmpty(certificateArrLoadCertificates)) {
                                    Signature[] signatureArrConvertToSignatures2 = convertToSignatures(certificateArrLoadCertificates);
                                    if (r16.mCertificates == null) {
                                        r16.mCertificates = certificateArrLoadCertificates;
                                        r16.mSignatures = signatureArrConvertToSignatures2;
                                        r16.mSigningKeys = new ArraySet<>();
                                        for (Certificate[] certificateArr : certificateArrLoadCertificates) {
                                            r16.mSigningKeys.add(certificateArr[0].getPublicKey());
                                        }
                                    } else if (!Signature.areExactMatch(r16.mSignatures, signatureArrConvertToSignatures2)) {
                                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, "Package " + absolutePath + " has mismatched certificates at entry " + zipEntry2.getName());
                                    }
                                } else {
                                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Package " + absolutePath + " has no certificates at entry " + zipEntry2.getName());
                                }
                            }
                        } else {
                            PackageParserExUtils.collectNonSystemAppCertificates(r16, arrayList, strictJarFile, file);
                        }
                        Trace.traceEnd(Trace.TRACE_TAG_PACKAGE_MANAGER);
                        closeQuietly(strictJarFile);
                    } catch (IOException e5) {
                        e = e5;
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Failed to collect certificates from " + absolutePath, e);
                    } catch (RuntimeException e6) {
                        e = e6;
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Failed to collect certificates from " + absolutePath, e);
                    } catch (GeneralSecurityException e7) {
                        e = e7;
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING, "Failed to collect certificates from " + absolutePath, e);
                    } catch (Throwable th2) {
                        th = th2;
                        closeQuietly(strictJarFile);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    strictJarFile = null;
                }
            } catch (IOException e8) {
                e = e8;
            } catch (RuntimeException e9) {
                e = e9;
            } catch (GeneralSecurityException e10) {
                e = e10;
            }
        } catch (Throwable th4) {
            th = th4;
            Trace.traceEnd(j2);
            throw th;
        }
    }

    public static final ActivityInfo generateActivityInfo(ActivityInfo activityInfo, int i2, PackageUserState packageUserState, int i3) {
        if (activityInfo == null || !checkUseInstalledOrHidden(i2, packageUserState, activityInfo.applicationInfo)) {
            return null;
        }
        ActivityInfo activityInfo2 = new ActivityInfo(activityInfo);
        activityInfo2.applicationInfo = generateApplicationInfo(activityInfo2.applicationInfo, i2, packageUserState, i3);
        return activityInfo2;
    }

    public Package parsePackage(File file, int i2) {
        return parsePackage(file, i2, false);
    }

    public static ApplicationInfo generateApplicationInfo(ApplicationInfo applicationInfo, int i2, PackageUserState packageUserState, int i3) {
        if (applicationInfo == null || !checkUseInstalledOrHidden(i2, packageUserState, applicationInfo)) {
            return null;
        }
        ApplicationInfo applicationInfo2 = new ApplicationInfo(applicationInfo);
        applicationInfo2.initForUser(i3);
        if (packageUserState.stopped) {
            applicationInfo2.flags |= 2097152;
        } else {
            applicationInfo2.flags &= -2097153;
        }
        updateApplicationInfo(applicationInfo2, i2, packageUserState);
        return applicationInfo2;
    }

    private Package parseSplitApk(Package r9, Resources resources, XmlResourceParser xmlResourceParser, int i2, int i3, String[] strArr) throws XmlPullParserException, PackageParserException, IOException {
        parsePackageSplitNames(xmlResourceParser, xmlResourceParser);
        this.mParseInstrumentationArgs = null;
        int depth = xmlResourceParser.getDepth();
        boolean z2 = false;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (!xmlResourceParser.getName().equals(TAG_APPLICATION)) {
                    Slog.w(TAG, "Unknown element under <manifest>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                } else if (z2) {
                    Slog.w(TAG, "<manifest> has more than one <application>");
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                } else {
                    if (!parseSplitApplication(r9, resources, xmlResourceParser, i2, i3, strArr)) {
                        return null;
                    }
                    z2 = true;
                }
            }
        }
        if (!z2) {
            strArr[0] = "<manifest> does not contain an <application>";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY;
        }
        return r9;
    }

    private Package parseBaseApk(String str, Resources resources, XmlResourceParser xmlResourceParser, int i2, String[] strArr) throws XmlPullParserException, IOException {
        String[] overlayPaths;
        try {
            Pair<String, String> packageSplitNames = parsePackageSplitNames(xmlResourceParser, xmlResourceParser);
            String str2 = packageSplitNames.first;
            String str3 = packageSplitNames.second;
            if (!TextUtils.isEmpty(str3)) {
                strArr[0] = "Expected base APK, but found split " + str3;
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME;
                return null;
            }
            Callback callback = this.mCallback;
            if (callback != null && (overlayPaths = callback.getOverlayPaths(str2, str)) != null && overlayPaths.length > 0) {
                for (String str4 : overlayPaths) {
                    resources.getAssets().addOverlayPath(str4);
                }
            }
            Package r1 = new Package(str2);
            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifest);
            ApplicationInfo applicationInfo = r1.applicationInfo;
            int integer = typedArrayObtainAttributes.getInteger(1, 0);
            applicationInfo.versionCode = integer;
            r1.mVersionCode = integer;
            r1.baseRevisionCode = typedArrayObtainAttributes.getInteger(5, 0);
            String nonConfigurationString = typedArrayObtainAttributes.getNonConfigurationString(2, 0);
            r1.mVersionName = nonConfigurationString;
            if (nonConfigurationString != null) {
                r1.mVersionName = nonConfigurationString.intern();
            }
            r1.coreApp = xmlResourceParser.getAttributeBooleanValue(null, "coreApp", false);
            typedArrayObtainAttributes.recycle();
            return parseBaseApkCommon(r1, null, resources, xmlResourceParser, i2, strArr);
        } catch (PackageParserException unused) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME;
            return null;
        }
    }

    private static ApkLite parseApkLite(String str, XmlPullParser xmlPullParser, AttributeSet attributeSet, Signature[] signatureArr, Certificate[][] certificateArr) throws XmlPullParserException, PackageParserException, IOException {
        Pair<String, String> packageSplitNames = parsePackageSplitNames(xmlPullParser, attributeSet);
        String attributeValue = null;
        int attributeIntValue = -1;
        boolean attributeBooleanValue = false;
        int attributeIntValue2 = 0;
        int attributeIntValue3 = 0;
        boolean attributeBooleanValue2 = false;
        boolean attributeBooleanValue3 = false;
        String attributeValue2 = null;
        for (int i2 = 0; i2 < attributeSet.getAttributeCount(); i2++) {
            String attributeName = attributeSet.getAttributeName(i2);
            if (attributeName.equals("installLocation")) {
                attributeIntValue = attributeSet.getAttributeIntValue(i2, -1);
            } else if (attributeName.equals("versionCode")) {
                attributeIntValue2 = attributeSet.getAttributeIntValue(i2, 0);
            } else if (attributeName.equals("revisionCode")) {
                attributeIntValue3 = attributeSet.getAttributeIntValue(i2, 0);
            } else if (attributeName.equals("coreApp")) {
                attributeBooleanValue2 = attributeSet.getAttributeBooleanValue(i2, false);
            } else if (attributeName.equals("isolatedSplits")) {
                attributeBooleanValue3 = attributeSet.getAttributeBooleanValue(i2, false);
            } else if (attributeName.equals("configForSplit")) {
                attributeValue2 = attributeSet.getAttributeValue(i2);
            } else if (attributeName.equals("isFeatureSplit")) {
                attributeBooleanValue = attributeSet.getAttributeBooleanValue(i2, false);
            }
        }
        int depth = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList();
        boolean attributeBooleanValue4 = false;
        boolean attributeBooleanValue5 = false;
        boolean attributeBooleanValue6 = false;
        boolean attributeBooleanValue7 = true;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() < depth)) {
                break;
            }
            if (next != 3 && next != 4 && xmlPullParser.getDepth() == depth) {
                if (TAG_PACKAGE_VERIFIER.equals(xmlPullParser.getName())) {
                    VerifierInfo verifier = parseVerifier(attributeSet);
                    if (verifier != null) {
                        arrayList.add(verifier);
                    }
                } else if (TAG_APPLICATION.equals(xmlPullParser.getName())) {
                    for (int i3 = 0; i3 < attributeSet.getAttributeCount(); i3++) {
                        String attributeName2 = attributeSet.getAttributeName(i3);
                        if ("debuggable".equals(attributeName2)) {
                            attributeBooleanValue4 = attributeSet.getAttributeBooleanValue(i3, false);
                        }
                        if ("multiArch".equals(attributeName2)) {
                            attributeBooleanValue5 = attributeSet.getAttributeBooleanValue(i3, false);
                        }
                        if ("use32bitAbi".equals(attributeName2)) {
                            attributeBooleanValue6 = attributeSet.getAttributeBooleanValue(i3, false);
                        }
                        if ("extractNativeLibs".equals(attributeName2)) {
                            attributeBooleanValue7 = attributeSet.getAttributeBooleanValue(i3, true);
                        }
                    }
                } else if (!TAG_USES_SPLIT.equals(xmlPullParser.getName())) {
                    continue;
                } else if (attributeValue != null) {
                    Slog.w(TAG, "Only one <uses-split> permitted. Ignoring others.");
                } else {
                    attributeValue = attributeSet.getAttributeValue(ANDROID_RESOURCES, "name");
                    if (attributeValue == null) {
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, "<uses-split> tag requires 'android:name' attribute");
                    }
                }
            }
        }
        return new ApkLite(str, packageSplitNames.first, packageSplitNames.second, attributeBooleanValue, attributeValue2, attributeValue, attributeIntValue2, attributeIntValue3, attributeIntValue, arrayList, signatureArr, certificateArr, attributeBooleanValue2, attributeBooleanValue4, attributeBooleanValue5, attributeBooleanValue6, attributeBooleanValue7, attributeBooleanValue3);
    }

    public static final class Package implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Package>() { // from class: android.content.pm.PackageParser.Package.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Package createFromParcel(Parcel parcel) {
                return new Package(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Package[] newArray(int i2) {
                return new Package[i2];
            }
        };
        public final ArrayList<Activity> activities;
        public ApplicationInfo applicationInfo;
        public String baseCodePath;
        public boolean baseHardwareAccelerated;
        public int baseRevisionCode;
        public ArrayList<Package> childPackages;
        public String codePath;
        public ArrayList<ConfigurationInfo> configPreferences;
        public boolean coreApp;
        public String cpuAbiOverride;
        public ArrayList<FeatureGroupInfo> featureGroups;
        public int installLocation;
        public final ArrayList<Instrumentation> instrumentation;
        public boolean isStub;
        public ArrayList<String> libraryNames;
        public ArrayList<String> mAdoptPermissions;
        public Bundle mAppMetaData;
        public Certificate[][] mCertificates;
        public Object mExtras;
        public boolean mIsStaticOverlay;
        public ArrayMap<String, ArraySet<PublicKey>> mKeySetMapping;
        public long[] mLastPackageUsageTimeInMills;
        public ArrayList<String> mOriginalPackages;
        public int mOverlayPriority;
        public String mOverlayTarget;
        public int mPreferredOrder;
        public String mRealPackage;
        public String mRequiredAccountType;
        public boolean mRequiredForAllUsers;
        public String mRestrictedAccountType;
        public String mSharedUserId;
        public int mSharedUserLabel;
        public Signature[] mSignatures;
        public ArraySet<PublicKey> mSigningKeys;
        public boolean mTrustedOverlay;
        public ArraySet<String> mUpgradeKeySets;
        public int mVersionCode;
        public String mVersionName;
        public String manifestPackageName;
        public String packageName;
        public Package parentPackage;
        public final ArrayList<PermissionGroup> permissionGroups;
        public final ArrayList<Permission> permissions;
        public ArrayList<ActivityIntentInfo> preferredActivityFilters;
        public ArrayList<String> protectedBroadcasts;
        public final ArrayList<Provider> providers;
        public final ArrayList<Activity> receivers;
        public ArrayList<FeatureInfo> reqFeatures;
        public final ArrayList<String> requestedPermissions;
        public byte[] restrictUpdateHash;
        public final ArrayList<Service> services;
        public String[] splitCodePaths;
        public int[] splitFlags;
        public String[] splitNames;
        public int[] splitPrivateFlags;
        public int[] splitRevisionCodes;
        public String staticSharedLibName;
        public int staticSharedLibVersion;
        public boolean use32bitAbi;
        public ArrayList<String> usesLibraries;
        public String[] usesLibraryFiles;
        public ArrayList<String> usesOptionalLibraries;
        public ArrayList<String> usesStaticLibraries;
        public String[][] usesStaticLibrariesCertDigests;
        public int[] usesStaticLibrariesVersions;
        public boolean visibleToInstantApps;
        public String volumeUuid;

        public Package(String str) {
            this.applicationInfo = new ApplicationInfo();
            this.permissions = new ArrayList<>(0);
            this.permissionGroups = new ArrayList<>(0);
            this.activities = new ArrayList<>(0);
            this.receivers = new ArrayList<>(0);
            this.providers = new ArrayList<>(0);
            this.services = new ArrayList<>(0);
            this.instrumentation = new ArrayList<>(0);
            this.requestedPermissions = new ArrayList<>();
            this.staticSharedLibName = null;
            this.staticSharedLibVersion = 0;
            this.libraryNames = null;
            this.usesLibraries = null;
            this.usesStaticLibraries = null;
            this.usesStaticLibrariesVersions = null;
            this.usesStaticLibrariesCertDigests = null;
            this.usesOptionalLibraries = null;
            this.usesLibraryFiles = null;
            this.preferredActivityFilters = null;
            this.mOriginalPackages = null;
            this.mRealPackage = null;
            this.mAdoptPermissions = null;
            this.mAppMetaData = null;
            this.mPreferredOrder = 0;
            this.mLastPackageUsageTimeInMills = new long[8];
            this.configPreferences = null;
            this.reqFeatures = null;
            this.featureGroups = null;
            this.packageName = str;
            this.manifestPackageName = str;
            ApplicationInfo applicationInfo = this.applicationInfo;
            applicationInfo.packageName = str;
            applicationInfo.uid = -1;
        }

        private void fixupOwner(List<? extends Component<?>> list) {
            if (list != null) {
                for (Component<?> component : list) {
                    component.owner = this;
                    if (component instanceof Activity) {
                        ((Activity) component).info.applicationInfo = this.applicationInfo;
                    } else if (component instanceof Service) {
                        ((Service) component).info.applicationInfo = this.applicationInfo;
                    } else if (component instanceof Provider) {
                        ((Provider) component).info.applicationInfo = this.applicationInfo;
                    }
                }
            }
        }

        private static void internStringArrayList(List<String> list) {
            if (list != null) {
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    list.set(i2, list.get(i2).intern());
                }
            }
        }

        private static ArrayMap<String, ArraySet<PublicKey>> readKeySetMapping(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == -1) {
                return null;
            }
            ArrayMap<String, ArraySet<PublicKey>> arrayMap = new ArrayMap<>();
            for (int i3 = 0; i3 < i2; i3++) {
                String string = parcel.readString();
                int i4 = parcel.readInt();
                if (i4 == -1) {
                    arrayMap.put(string, null);
                } else {
                    ArraySet<PublicKey> arraySet = new ArraySet<>(i4);
                    for (int i5 = 0; i5 < i4; i5++) {
                        arraySet.add((PublicKey) parcel.readSerializable());
                    }
                    arrayMap.put(string, arraySet);
                }
            }
            return arrayMap;
        }

        private static void writeKeySetMapping(Parcel parcel, ArrayMap<String, ArraySet<PublicKey>> arrayMap) {
            if (arrayMap == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = arrayMap.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeString(arrayMap.keyAt(i2));
                ArraySet<PublicKey> arraySetValueAt = arrayMap.valueAt(i2);
                if (arraySetValueAt == null) {
                    parcel.writeInt(-1);
                } else {
                    int size2 = arraySetValueAt.size();
                    parcel.writeInt(size2);
                    for (int i3 = 0; i3 < size2; i3++) {
                        parcel.writeSerializable(arraySetValueAt.valueAt(i3));
                    }
                }
            }
        }

        public boolean canHaveOatDir() {
            String str;
            return (!isSystemApp() || isUpdatedSystemApp()) && !isForwardLocked() && !this.applicationInfo.isExternalAsec() && ((str = this.applicationInfo.sourceDir) == null || !(str.startsWith("/system/preloadapp/") || this.applicationInfo.sourceDir.startsWith("/system/vital-app") || this.applicationInfo.sourceDir.startsWith("/oem/vital-app")));
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public List<String> getAllCodePaths() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.baseCodePath);
            if (!ArrayUtils.isEmpty(this.splitCodePaths)) {
                Collections.addAll(arrayList, this.splitCodePaths);
            }
            return arrayList;
        }

        public List<String> getAllCodePathsExcludingResourceOnly() {
            ArrayList arrayList = new ArrayList();
            if ((this.applicationInfo.flags & 4) != 0) {
                arrayList.add(this.baseCodePath);
            }
            if (!ArrayUtils.isEmpty(this.splitCodePaths)) {
                int i2 = 0;
                while (true) {
                    String[] strArr = this.splitCodePaths;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    if ((this.splitFlags[i2] & 4) != 0) {
                        arrayList.add(strArr[i2]);
                    }
                    i2++;
                }
            }
            return arrayList;
        }

        public List<String> getChildPackageNames() {
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList == null) {
                return null;
            }
            int size = arrayList.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList2.add(this.childPackages.get(i2).packageName);
            }
            return arrayList2;
        }

        public long getLatestForegroundPackageUseTimeInMills() {
            int[] iArr = {0, 2};
            long jMax = 0;
            for (int i2 = 0; i2 < 2; i2++) {
                jMax = Math.max(jMax, this.mLastPackageUsageTimeInMills[iArr[i2]]);
            }
            return jMax;
        }

        public long getLatestPackageUseTimeInMills() {
            long jMax = 0;
            for (long j2 : this.mLastPackageUsageTimeInMills) {
                jMax = Math.max(jMax, j2);
            }
            return jMax;
        }

        public boolean hasChildPackage(String str) {
            ArrayList<Package> arrayList = this.childPackages;
            int size = arrayList != null ? arrayList.size() : 0;
            for (int i2 = 0; i2 < size; i2++) {
                if (this.childPackages.get(i2).packageName.equals(str)) {
                    return true;
                }
            }
            return false;
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

        public boolean isForwardLocked() {
            return this.applicationInfo.isForwardLocked();
        }

        public boolean isLibrary() {
            return (this.staticSharedLibName == null && ArrayUtils.isEmpty(this.libraryNames)) ? false : true;
        }

        public boolean isMatch(int i2) {
            if ((i2 & 1048576) != 0) {
                return isSystemApp();
            }
            return true;
        }

        public boolean isPrivilegedApp() {
            return this.applicationInfo.isPrivilegedApp();
        }

        public boolean isSystemApp() {
            return this.applicationInfo.isSystemApp();
        }

        public boolean isUpdatedSystemApp() {
            return this.applicationInfo.isUpdatedSystemApp();
        }

        public void setApplicationInfoBaseCodePath(String str) {
            this.applicationInfo.setBaseCodePath(str);
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).applicationInfo.setBaseCodePath(str);
                }
            }
        }

        public void setApplicationInfoBaseResourcePath(String str) {
            this.applicationInfo.setBaseResourcePath(str);
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).applicationInfo.setBaseResourcePath(str);
                }
            }
        }

        public void setApplicationInfoCodePath(String str) {
            this.applicationInfo.setCodePath(str);
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).applicationInfo.setCodePath(str);
                }
            }
        }

        public void setApplicationInfoFlags(int i2, int i3) {
            ApplicationInfo applicationInfo = this.applicationInfo;
            int i4 = applicationInfo.flags;
            int i5 = ~i2;
            int i6 = i2 & i3;
            applicationInfo.flags = (i4 & i5) | i6;
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i7 = 0; i7 < size; i7++) {
                    this.childPackages.get(i7).applicationInfo.flags = (this.applicationInfo.flags & i5) | i6;
                }
            }
        }

        public void setApplicationInfoResourcePath(String str) {
            this.applicationInfo.setResourcePath(str);
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).applicationInfo.setResourcePath(str);
                }
            }
        }

        public void setApplicationInfoSplitCodePaths(String[] strArr) {
            this.applicationInfo.setSplitCodePaths(strArr);
        }

        public void setApplicationInfoSplitResourcePaths(String[] strArr) {
            this.applicationInfo.setSplitResourcePaths(strArr);
        }

        public void setApplicationVolumeUuid(String str) {
            UUID uuidConvert = StorageManager.convert(str);
            ApplicationInfo applicationInfo = this.applicationInfo;
            applicationInfo.volumeUuid = str;
            applicationInfo.storageUuid = uuidConvert;
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).applicationInfo.volumeUuid = str;
                    this.childPackages.get(i2).applicationInfo.storageUuid = uuidConvert;
                }
            }
        }

        public void setBaseCodePath(String str) {
            this.baseCodePath = str;
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).baseCodePath = str;
                }
            }
        }

        public void setCodePath(String str) {
            this.codePath = str;
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).codePath = str;
                }
            }
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

        public void setSignatures(Signature[] signatureArr) {
            this.mSignatures = signatureArr;
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).mSignatures = signatureArr;
                }
            }
        }

        public void setSplitCodePaths(String[] strArr) {
            this.splitCodePaths = strArr;
        }

        public void setUse32bitAbi(boolean z2) {
            this.use32bitAbi = z2;
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).use32bitAbi = z2;
                }
            }
        }

        public void setVolumeUuid(String str) {
            this.volumeUuid = str;
            ArrayList<Package> arrayList = this.childPackages;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.childPackages.get(i2).volumeUuid = str;
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Package{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            return c.n(sb, this.packageName, "}");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v47, types: [java.io.Serializable, java.security.cert.Certificate[][]] */
        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.packageName);
            parcel.writeString(this.manifestPackageName);
            parcel.writeStringArray(this.splitNames);
            parcel.writeString(this.volumeUuid);
            parcel.writeString(this.codePath);
            parcel.writeString(this.baseCodePath);
            parcel.writeStringArray(this.splitCodePaths);
            parcel.writeInt(this.baseRevisionCode);
            parcel.writeIntArray(this.splitRevisionCodes);
            parcel.writeIntArray(this.splitFlags);
            parcel.writeIntArray(this.splitPrivateFlags);
            parcel.writeInt(this.baseHardwareAccelerated ? 1 : 0);
            parcel.writeParcelable(this.applicationInfo, i2);
            parcel.writeParcelableList(this.permissions, i2);
            parcel.writeParcelableList(this.permissionGroups, i2);
            parcel.writeParcelableList(this.activities, i2);
            parcel.writeParcelableList(this.receivers, i2);
            parcel.writeParcelableList(this.providers, i2);
            parcel.writeParcelableList(this.services, i2);
            parcel.writeParcelableList(this.instrumentation, i2);
            parcel.writeStringList(this.requestedPermissions);
            parcel.writeStringList(this.protectedBroadcasts);
            parcel.writeParcelable(this.parentPackage, i2);
            parcel.writeParcelableList(this.childPackages, i2);
            parcel.writeString(this.staticSharedLibName);
            parcel.writeInt(this.staticSharedLibVersion);
            parcel.writeStringList(this.libraryNames);
            parcel.writeStringList(this.usesLibraries);
            parcel.writeStringList(this.usesOptionalLibraries);
            parcel.writeStringArray(this.usesLibraryFiles);
            if (ArrayUtils.isEmpty(this.usesStaticLibraries)) {
                parcel.writeInt(-1);
            } else {
                parcel.writeInt(this.usesStaticLibraries.size());
                parcel.writeStringList(this.usesStaticLibraries);
                parcel.writeIntArray(this.usesStaticLibrariesVersions);
                for (String[] strArr : this.usesStaticLibrariesCertDigests) {
                    parcel.writeStringArray(strArr);
                }
            }
            parcel.writeParcelableList(this.preferredActivityFilters, i2);
            parcel.writeStringList(this.mOriginalPackages);
            parcel.writeString(this.mRealPackage);
            parcel.writeStringList(this.mAdoptPermissions);
            parcel.writeBundle(this.mAppMetaData);
            parcel.writeInt(this.mVersionCode);
            parcel.writeString(this.mVersionName);
            parcel.writeString(this.mSharedUserId);
            parcel.writeInt(this.mSharedUserLabel);
            parcel.writeParcelableArray(this.mSignatures, i2);
            parcel.writeSerializable(this.mCertificates);
            parcel.writeInt(this.mPreferredOrder);
            parcel.writeParcelableList(this.configPreferences, i2);
            parcel.writeParcelableList(this.reqFeatures, i2);
            parcel.writeParcelableList(this.featureGroups, i2);
            parcel.writeInt(this.installLocation);
            parcel.writeInt(this.coreApp ? 1 : 0);
            parcel.writeInt(this.mRequiredForAllUsers ? 1 : 0);
            parcel.writeString(this.mRestrictedAccountType);
            parcel.writeString(this.mRequiredAccountType);
            parcel.writeString(this.mOverlayTarget);
            parcel.writeInt(this.mOverlayPriority);
            parcel.writeInt(this.mIsStaticOverlay ? 1 : 0);
            parcel.writeInt(this.mTrustedOverlay ? 1 : 0);
            parcel.writeArraySet(this.mSigningKeys);
            parcel.writeArraySet(this.mUpgradeKeySets);
            writeKeySetMapping(parcel, this.mKeySetMapping);
            parcel.writeString(this.cpuAbiOverride);
            parcel.writeInt(this.use32bitAbi ? 1 : 0);
            parcel.writeByteArray(this.restrictUpdateHash);
            parcel.writeInt(this.visibleToInstantApps ? 1 : 0);
        }

        public Package(Parcel parcel) {
            this.applicationInfo = new ApplicationInfo();
            ArrayList<Permission> arrayList = new ArrayList<>(0);
            this.permissions = arrayList;
            ArrayList<PermissionGroup> arrayList2 = new ArrayList<>(0);
            this.permissionGroups = arrayList2;
            ArrayList<Activity> arrayList3 = new ArrayList<>(0);
            this.activities = arrayList3;
            ArrayList<Activity> arrayList4 = new ArrayList<>(0);
            this.receivers = arrayList4;
            ArrayList<Provider> arrayList5 = new ArrayList<>(0);
            this.providers = arrayList5;
            ArrayList<Service> arrayList6 = new ArrayList<>(0);
            this.services = arrayList6;
            ArrayList<Instrumentation> arrayList7 = new ArrayList<>(0);
            this.instrumentation = arrayList7;
            ArrayList<String> arrayList8 = new ArrayList<>();
            this.requestedPermissions = arrayList8;
            this.staticSharedLibName = null;
            this.staticSharedLibVersion = 0;
            this.libraryNames = null;
            this.usesLibraries = null;
            this.usesStaticLibraries = null;
            this.usesStaticLibrariesVersions = null;
            this.usesStaticLibrariesCertDigests = null;
            this.usesOptionalLibraries = null;
            this.usesLibraryFiles = null;
            this.preferredActivityFilters = null;
            this.mOriginalPackages = null;
            this.mRealPackage = null;
            this.mAdoptPermissions = null;
            this.mAppMetaData = null;
            this.mPreferredOrder = 0;
            this.mLastPackageUsageTimeInMills = new long[8];
            this.configPreferences = null;
            this.reqFeatures = null;
            this.featureGroups = null;
            ClassLoader classLoader = Object.class.getClassLoader();
            this.packageName = parcel.readString().intern();
            this.manifestPackageName = parcel.readString();
            this.splitNames = parcel.readStringArray();
            this.volumeUuid = parcel.readString();
            this.codePath = parcel.readString();
            this.baseCodePath = parcel.readString();
            this.splitCodePaths = parcel.readStringArray();
            this.baseRevisionCode = parcel.readInt();
            this.splitRevisionCodes = parcel.createIntArray();
            this.splitFlags = parcel.createIntArray();
            this.splitPrivateFlags = parcel.createIntArray();
            this.baseHardwareAccelerated = parcel.readInt() == 1;
            ApplicationInfo applicationInfo = (ApplicationInfo) parcel.readParcelable(classLoader);
            this.applicationInfo = applicationInfo;
            String str = applicationInfo.permission;
            if (str != null) {
                applicationInfo.permission = str.intern();
            }
            parcel.readParcelableList(arrayList, classLoader);
            fixupOwner(arrayList);
            parcel.readParcelableList(arrayList2, classLoader);
            fixupOwner(arrayList2);
            parcel.readParcelableList(arrayList3, classLoader);
            fixupOwner(arrayList3);
            parcel.readParcelableList(arrayList4, classLoader);
            fixupOwner(arrayList4);
            parcel.readParcelableList(arrayList5, classLoader);
            fixupOwner(arrayList5);
            parcel.readParcelableList(arrayList6, classLoader);
            fixupOwner(arrayList6);
            parcel.readParcelableList(arrayList7, classLoader);
            fixupOwner(arrayList7);
            parcel.readStringList(arrayList8);
            internStringArrayList(arrayList8);
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            this.protectedBroadcasts = arrayListCreateStringArrayList;
            internStringArrayList(arrayListCreateStringArrayList);
            this.parentPackage = (Package) parcel.readParcelable(classLoader);
            ArrayList<Package> arrayList9 = new ArrayList<>();
            this.childPackages = arrayList9;
            parcel.readParcelableList(arrayList9, classLoader);
            if (this.childPackages.size() == 0) {
                this.childPackages = null;
            }
            String string = parcel.readString();
            this.staticSharedLibName = string;
            if (string != null) {
                this.staticSharedLibName = string.intern();
            }
            this.staticSharedLibVersion = parcel.readInt();
            ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
            this.libraryNames = arrayListCreateStringArrayList2;
            internStringArrayList(arrayListCreateStringArrayList2);
            ArrayList<String> arrayListCreateStringArrayList3 = parcel.createStringArrayList();
            this.usesLibraries = arrayListCreateStringArrayList3;
            internStringArrayList(arrayListCreateStringArrayList3);
            ArrayList<String> arrayListCreateStringArrayList4 = parcel.createStringArrayList();
            this.usesOptionalLibraries = arrayListCreateStringArrayList4;
            internStringArrayList(arrayListCreateStringArrayList4);
            this.usesLibraryFiles = parcel.readStringArray();
            int i2 = parcel.readInt();
            if (i2 > 0) {
                ArrayList<String> arrayList10 = new ArrayList<>(i2);
                this.usesStaticLibraries = arrayList10;
                parcel.readStringList(arrayList10);
                internStringArrayList(this.usesStaticLibraries);
                int[] iArr = new int[i2];
                this.usesStaticLibrariesVersions = iArr;
                parcel.readIntArray(iArr);
                this.usesStaticLibrariesCertDigests = new String[i2][];
                for (int i3 = 0; i3 < i2; i3++) {
                    this.usesStaticLibrariesCertDigests[i3] = parcel.createStringArray();
                }
            }
            ArrayList<ActivityIntentInfo> arrayList11 = new ArrayList<>();
            this.preferredActivityFilters = arrayList11;
            parcel.readParcelableList(arrayList11, classLoader);
            if (this.preferredActivityFilters.size() == 0) {
                this.preferredActivityFilters = null;
            }
            this.mOriginalPackages = parcel.createStringArrayList();
            this.mRealPackage = parcel.readString();
            this.mAdoptPermissions = parcel.createStringArrayList();
            this.mAppMetaData = parcel.readBundle();
            this.mVersionCode = parcel.readInt();
            String string2 = parcel.readString();
            this.mVersionName = string2;
            if (string2 != null) {
                this.mVersionName = string2.intern();
            }
            String string3 = parcel.readString();
            this.mSharedUserId = string3;
            if (string3 != null) {
                this.mSharedUserId = string3.intern();
            }
            this.mSharedUserLabel = parcel.readInt();
            this.mSignatures = (Signature[]) parcel.readParcelableArray(classLoader, Signature.class);
            this.mCertificates = (Certificate[][]) parcel.readSerializable();
            this.mPreferredOrder = parcel.readInt();
            ArrayList<ConfigurationInfo> arrayList12 = new ArrayList<>();
            this.configPreferences = arrayList12;
            parcel.readParcelableList(arrayList12, classLoader);
            if (this.configPreferences.size() == 0) {
                this.configPreferences = null;
            }
            ArrayList<FeatureInfo> arrayList13 = new ArrayList<>();
            this.reqFeatures = arrayList13;
            parcel.readParcelableList(arrayList13, classLoader);
            if (this.reqFeatures.size() == 0) {
                this.reqFeatures = null;
            }
            ArrayList<FeatureGroupInfo> arrayList14 = new ArrayList<>();
            this.featureGroups = arrayList14;
            parcel.readParcelableList(arrayList14, classLoader);
            if (this.featureGroups.size() == 0) {
                this.featureGroups = null;
            }
            this.installLocation = parcel.readInt();
            this.coreApp = parcel.readInt() == 1;
            this.mRequiredForAllUsers = parcel.readInt() == 1;
            this.mRestrictedAccountType = parcel.readString();
            this.mRequiredAccountType = parcel.readString();
            this.mOverlayTarget = parcel.readString();
            this.mOverlayPriority = parcel.readInt();
            this.mIsStaticOverlay = parcel.readInt() == 1;
            this.mTrustedOverlay = parcel.readInt() == 1;
            this.mSigningKeys = parcel.readArraySet(classLoader);
            this.mUpgradeKeySets = parcel.readArraySet(classLoader);
            this.mKeySetMapping = readKeySetMapping(parcel);
            this.cpuAbiOverride = parcel.readString();
            this.use32bitAbi = parcel.readInt() == 1;
            this.restrictUpdateHash = parcel.createByteArray();
            this.visibleToInstantApps = parcel.readInt() == 1;
        }
    }
}
