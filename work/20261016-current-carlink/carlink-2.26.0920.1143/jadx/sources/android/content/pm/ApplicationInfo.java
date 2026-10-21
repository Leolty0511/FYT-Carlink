package android.content.pm;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.service.notification.ZenModeConfig;
import android.text.TextUtils;
import android.util.Printer;
import android.util.SparseArray;
import com.android.internal.R;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.ArrayUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.Collator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationInfo extends PackageItemInfo implements Parcelable {
    public static final int CATEGORY_AUDIO = 1;
    public static final int CATEGORY_GAME = 0;
    public static final int CATEGORY_IMAGE = 3;
    public static final int CATEGORY_MAPS = 6;
    public static final int CATEGORY_NEWS = 5;
    public static final int CATEGORY_PRODUCTIVITY = 7;
    public static final int CATEGORY_SOCIAL = 4;
    public static final int CATEGORY_UNDEFINED = -1;
    public static final int CATEGORY_VIDEO = 2;
    public static final Parcelable.Creator<ApplicationInfo> CREATOR = new Parcelable.Creator<ApplicationInfo>() { // from class: android.content.pm.ApplicationInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApplicationInfo createFromParcel(Parcel parcel) {
            return new ApplicationInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApplicationInfo[] newArray(int i2) {
            return new ApplicationInfo[i2];
        }
    };
    public static final int FLAG_ALLOW_BACKUP = 32768;
    public static final int FLAG_ALLOW_CLEAR_USER_DATA = 64;
    public static final int FLAG_ALLOW_TASK_REPARENTING = 32;
    public static final int FLAG_DEBUGGABLE = 2;
    public static final int FLAG_EXTERNAL_STORAGE = 262144;
    public static final int FLAG_EXTRACT_NATIVE_LIBS = 268435456;
    public static final int FLAG_FACTORY_TEST = 16;
    public static final int FLAG_FULL_BACKUP_ONLY = 67108864;
    public static final int FLAG_HARDWARE_ACCELERATED = 536870912;
    public static final int FLAG_HAS_CODE = 4;
    public static final int FLAG_INSTALLED = 8388608;
    public static final int FLAG_IS_DATA_ONLY = 16777216;

    @Deprecated
    public static final int FLAG_IS_GAME = 33554432;
    public static final int FLAG_KILL_AFTER_RESTORE = 65536;
    public static final int FLAG_LARGE_HEAP = 1048576;
    public static final int FLAG_MULTIARCH = Integer.MIN_VALUE;
    public static final int FLAG_PERSISTENT = 8;
    public static final int FLAG_RESIZEABLE_FOR_SCREENS = 4096;
    public static final int FLAG_RESTORE_ANY_VERSION = 131072;
    public static final int FLAG_STOPPED = 2097152;
    public static final int FLAG_SUPPORTS_LARGE_SCREENS = 2048;
    public static final int FLAG_SUPPORTS_NORMAL_SCREENS = 1024;
    public static final int FLAG_SUPPORTS_RTL = 4194304;
    public static final int FLAG_SUPPORTS_SCREEN_DENSITIES = 8192;
    public static final int FLAG_SUPPORTS_SMALL_SCREENS = 512;
    public static final int FLAG_SUPPORTS_XLARGE_SCREENS = 524288;
    public static final int FLAG_SUSPENDED = 1073741824;
    public static final int FLAG_SYSTEM = 1;
    public static final int FLAG_TEST_ONLY = 256;
    public static final int FLAG_UPDATED_SYSTEM_APP = 128;
    public static final int FLAG_USES_CLEARTEXT_TRAFFIC = 134217728;
    public static final int FLAG_VM_SAFE_MODE = 16384;
    public static final String METADATA_PRELOADED_FONTS = "preloaded_fonts";
    public static final int PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE = 1024;
    public static final int PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION = 4096;
    public static final int PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE = 2048;
    public static final int PRIVATE_FLAG_BACKUP_IN_FOREGROUND = 8192;
    public static final int PRIVATE_FLAG_CANT_SAVE_STATE = 2;
    public static final int PRIVATE_FLAG_DEFAULT_TO_DEVICE_PROTECTED_STORAGE = 32;
    public static final int PRIVATE_FLAG_DIRECT_BOOT_AWARE = 64;
    public static final int PRIVATE_FLAG_FORWARD_LOCK = 4;
    public static final int PRIVATE_FLAG_HAS_DOMAIN_URLS = 16;
    public static final int PRIVATE_FLAG_HIDDEN = 1;
    public static final int PRIVATE_FLAG_INSTANT = 128;
    public static final int PRIVATE_FLAG_ISOLATED_SPLIT_LOADING = 32768;
    public static final int PRIVATE_FLAG_PARTIALLY_DIRECT_BOOT_AWARE = 256;
    public static final int PRIVATE_FLAG_PRIVILEGED = 8;
    public static final int PRIVATE_FLAG_REQUIRED_FOR_SYSTEM_USER = 512;
    public static final int PRIVATE_FLAG_STATIC_SHARED_LIBRARY = 16384;
    public static final int PRIVATE_FLAG_VIRTUAL_PRELOAD = 65536;
    public String backupAgentName;
    public int category;
    public String classLoaderName;
    public String className;
    public int compatibleWidthLimitDp;
    public String credentialProtectedDataDir;
    public String dataDir;
    public int descriptionRes;
    public String deviceProtectedDataDir;
    public boolean enabled;
    public int enabledSetting;
    public int flags;
    public int fullBackupContent;
    public String hasMultiArchLib;
    public int installLocation;
    public int largestWidthLimitDp;
    public String manageSpaceActivityName;
    public float maxAspectRatio;
    public int minSdkVersion;
    public String nativeLibraryDir;
    public String nativeLibraryRootDir;
    public boolean nativeLibraryRootRequiresIsa;
    public int networkSecurityConfigRes;
    public String permission;
    public String primaryCpuAbi;
    public int privateFlags;
    public String processName;
    public String publicSourceDir;
    public int requiresSmallestWidthDp;
    public String[] resourceDirs;
    public String scanPublicSourceDir;
    public String scanSourceDir;
    public String seInfo;
    public String seInfoUser;
    public String secondaryCpuAbi;
    public String secondaryNativeLibraryDir;
    public String[] sharedLibraryFiles;
    public String sourceDir;
    public String[] splitClassLoaderNames;
    public SparseArray<int[]> splitDependencies;
    public String[] splitNames;
    public String[] splitPublicSourceDirs;
    public String[] splitSourceDirs;
    public UUID storageUuid;
    public int targetSandboxVersion;
    public int targetSdkVersion;
    public String taskAffinity;
    public int theme;
    public int uiOptions;
    public int uid;
    public int versionCode;

    @Deprecated
    public String volumeUuid;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ApplicationInfoPrivateFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Category {
    }

    public static class DisplayNameComparator implements Comparator<ApplicationInfo> {
        private PackageManager mPM;
        private final Collator sCollator = Collator.getInstance();

        public DisplayNameComparator(PackageManager packageManager) {
            this.mPM = packageManager;
        }

        @Override // java.util.Comparator
        public final int compare(ApplicationInfo applicationInfo, ApplicationInfo applicationInfo2) {
            CharSequence applicationLabel = this.mPM.getApplicationLabel(applicationInfo);
            if (applicationLabel == null) {
                applicationLabel = applicationInfo.packageName;
            }
            CharSequence applicationLabel2 = this.mPM.getApplicationLabel(applicationInfo2);
            if (applicationLabel2 == null) {
                applicationLabel2 = applicationInfo2.packageName;
            }
            return this.sCollator.compare(applicationLabel.toString(), applicationLabel2.toString());
        }
    }

    public static CharSequence getCategoryTitle(Context context, int i2) {
        switch (i2) {
            case 0:
                return context.getText(R.string.app_category_game);
            case 1:
                return context.getText(R.string.app_category_audio);
            case 2:
                return context.getText(R.string.app_category_video);
            case 3:
                return context.getText(R.string.app_category_image);
            case 4:
                return context.getText(R.string.app_category_social);
            case 5:
                return context.getText(R.string.app_category_news);
            case 6:
                return context.getText(R.string.app_category_maps);
            case 7:
                return context.getText(R.string.app_category_productivity);
            default:
                return null;
        }
    }

    private boolean isPackageUnavailable(PackageManager packageManager) {
        try {
            return packageManager.getPackageInfo(this.packageName, 0) == null;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void disableCompatibilityMode() {
        this.flags |= 540160;
    }

    public void dump(Printer printer, String str) {
        dump(printer, str, 3);
    }

    @Override // android.content.pm.PackageItemInfo
    public ApplicationInfo getApplicationInfo() {
        return this;
    }

    public String getBaseCodePath() {
        return this.sourceDir;
    }

    public String getBaseResourcePath() {
        return this.publicSourceDir;
    }

    public String getCodePath() {
        return this.scanSourceDir;
    }

    public String getResourcePath() {
        return this.scanPublicSourceDir;
    }

    public String[] getSplitCodePaths() {
        return this.splitSourceDirs;
    }

    public String[] getSplitResourcePaths() {
        return this.splitPublicSourceDirs;
    }

    public boolean hasCode() {
        return (this.flags & 4) != 0;
    }

    public boolean hasRtlSupport() {
        return (this.flags & 4194304) == 4194304;
    }

    public void initForUser(int i2) {
        this.uid = UserHandle.getUid(i2, UserHandle.getAppId(this.uid));
        if (ZenModeConfig.SYSTEM_AUTHORITY.equals(this.packageName)) {
            this.dataDir = Environment.getDataSystemDirectory().getAbsolutePath();
            return;
        }
        this.deviceProtectedDataDir = Environment.getDataUserDePackageDirectory(this.volumeUuid, i2, this.packageName).getAbsolutePath();
        String absolutePath = Environment.getDataUserCePackageDirectory(this.volumeUuid, i2, this.packageName).getAbsolutePath();
        this.credentialProtectedDataDir = absolutePath;
        if ((this.privateFlags & 32) != 0) {
            this.dataDir = this.deviceProtectedDataDir;
        } else {
            this.dataDir = absolutePath;
        }
    }

    public boolean isDefaultToDeviceProtectedStorage() {
        return (this.privateFlags & 32) != 0;
    }

    public boolean isDirectBootAware() {
        return (this.privateFlags & 64) != 0;
    }

    public boolean isEncryptionAware() {
        return isDirectBootAware() || isPartiallyDirectBootAware();
    }

    public boolean isExternalAsec() {
        return TextUtils.isEmpty(this.volumeUuid) && (this.flags & 262144) != 0;
    }

    public boolean isForwardLocked() {
        return (this.privateFlags & 4) != 0;
    }

    public boolean isInstantApp() {
        return (this.privateFlags & 128) != 0;
    }

    public boolean isInternal() {
        return (this.flags & 262144) == 0;
    }

    public boolean isPartiallyDirectBootAware() {
        return (this.privateFlags & 256) != 0;
    }

    public boolean isPrivilegedApp() {
        return (this.privateFlags & 8) != 0;
    }

    public boolean isRequiredForSystemUser() {
        return (this.privateFlags & 512) != 0;
    }

    public boolean isStaticSharedLibrary() {
        return (this.privateFlags & 16384) != 0;
    }

    public boolean isSystemApp() {
        return (this.flags & 1) != 0;
    }

    public boolean isUpdatedSystemApp() {
        return (this.flags & 128) != 0;
    }

    public boolean isVirtualPreload() {
        return (this.privateFlags & 65536) != 0;
    }

    @Override // android.content.pm.PackageItemInfo
    public Drawable loadDefaultIcon(PackageManager packageManager) {
        return ((this.flags & 262144) == 0 || !isPackageUnavailable(packageManager)) ? packageManager.getDefaultActivityIcon() : Resources.getSystem().getDrawable(R.drawable.sym_app_on_sd_unavailable_icon);
    }

    public CharSequence loadDescription(PackageManager packageManager) {
        CharSequence text;
        int i2 = this.descriptionRes;
        if (i2 == 0 || (text = packageManager.getText(this.packageName, i2, this)) == null) {
            return null;
        }
        return text;
    }

    public boolean requestsIsolatedSplitLoading() {
        return (this.privateFlags & 32768) != 0;
    }

    public void setBaseCodePath(String str) {
        this.sourceDir = str;
    }

    public void setBaseResourcePath(String str) {
        this.publicSourceDir = str;
    }

    public void setCodePath(String str) {
        this.scanSourceDir = str;
    }

    public void setResourcePath(String str) {
        this.scanPublicSourceDir = str;
    }

    public void setSplitCodePaths(String[] strArr) {
        this.splitSourceDirs = strArr;
    }

    public void setSplitResourcePaths(String[] strArr) {
        this.splitPublicSourceDirs = strArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ApplicationInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        return c.n(sb, this.packageName, "}");
    }

    public boolean usesCompatibilityMode() {
        return this.targetSdkVersion < 4 || (this.flags & 540160) == 0;
    }

    @Override // android.content.pm.PackageItemInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.taskAffinity);
        parcel.writeString(this.permission);
        parcel.writeString(this.processName);
        parcel.writeString(this.className);
        parcel.writeInt(this.theme);
        parcel.writeInt(this.flags);
        parcel.writeInt(this.privateFlags);
        parcel.writeInt(this.requiresSmallestWidthDp);
        parcel.writeInt(this.compatibleWidthLimitDp);
        parcel.writeInt(this.largestWidthLimitDp);
        if (this.storageUuid != null) {
            parcel.writeInt(1);
            parcel.writeLong(this.storageUuid.getMostSignificantBits());
            parcel.writeLong(this.storageUuid.getLeastSignificantBits());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.scanSourceDir);
        parcel.writeString(this.scanPublicSourceDir);
        parcel.writeString(this.sourceDir);
        parcel.writeString(this.publicSourceDir);
        parcel.writeStringArray(this.splitNames);
        parcel.writeStringArray(this.splitSourceDirs);
        parcel.writeStringArray(this.splitPublicSourceDirs);
        parcel.writeSparseArray(this.splitDependencies);
        parcel.writeString(this.nativeLibraryDir);
        parcel.writeString(this.secondaryNativeLibraryDir);
        parcel.writeString(this.nativeLibraryRootDir);
        parcel.writeInt(this.nativeLibraryRootRequiresIsa ? 1 : 0);
        parcel.writeString(this.primaryCpuAbi);
        parcel.writeString(this.secondaryCpuAbi);
        parcel.writeString(this.hasMultiArchLib);
        parcel.writeStringArray(this.resourceDirs);
        parcel.writeString(this.seInfo);
        parcel.writeString(this.seInfoUser);
        parcel.writeStringArray(this.sharedLibraryFiles);
        parcel.writeString(this.dataDir);
        parcel.writeString(this.deviceProtectedDataDir);
        parcel.writeString(this.credentialProtectedDataDir);
        parcel.writeInt(this.uid);
        parcel.writeInt(this.minSdkVersion);
        parcel.writeInt(this.targetSdkVersion);
        parcel.writeInt(this.versionCode);
        parcel.writeInt(this.enabled ? 1 : 0);
        parcel.writeInt(this.enabledSetting);
        parcel.writeInt(this.installLocation);
        parcel.writeString(this.manageSpaceActivityName);
        parcel.writeString(this.backupAgentName);
        parcel.writeInt(this.descriptionRes);
        parcel.writeInt(this.uiOptions);
        parcel.writeInt(this.fullBackupContent);
        parcel.writeInt(this.networkSecurityConfigRes);
        parcel.writeInt(this.category);
        parcel.writeInt(this.targetSandboxVersion);
        parcel.writeString(this.classLoaderName);
        parcel.writeStringArray(this.splitClassLoaderNames);
    }

    public ApplicationInfo() {
        this.fullBackupContent = 0;
        this.uiOptions = 0;
        this.flags = 0;
        this.requiresSmallestWidthDp = 0;
        this.compatibleWidthLimitDp = 0;
        this.largestWidthLimitDp = 0;
        this.seInfo = PhoneConstants.APN_TYPE_DEFAULT;
        this.enabled = true;
        this.enabledSetting = 0;
        this.installLocation = -1;
        this.category = -1;
    }

    public void dump(Printer printer, String str, int i2) {
        super.dumpFront(printer, str);
        int i3 = i2 & 1;
        if (i3 != 0 && this.className != null) {
            c.B(c.u(str, "className="), this.className, printer);
        }
        if (this.permission != null) {
            c.B(c.u(str, "permission="), this.permission, printer);
        }
        c.B(c.u(str, "processName="), this.processName, printer);
        if (i3 != 0) {
            c.B(c.u(str, "taskAffinity="), this.taskAffinity, printer);
        }
        StringBuilder sbU = c.u(str, "uid=");
        sbU.append(this.uid);
        sbU.append(" flags=0x");
        c.x(this.flags, sbU, " privateFlags=0x");
        c.x(this.privateFlags, sbU, " theme=0x");
        sbU.append(Integer.toHexString(this.theme));
        printer.println(sbU.toString());
        if (i3 != 0) {
            StringBuilder sbU2 = c.u(str, "requiresSmallestWidthDp=");
            sbU2.append(this.requiresSmallestWidthDp);
            sbU2.append(" compatibleWidthLimitDp=");
            sbU2.append(this.compatibleWidthLimitDp);
            sbU2.append(" largestWidthLimitDp=");
            sbU2.append(this.largestWidthLimitDp);
            printer.println(sbU2.toString());
        }
        c.B(c.u(str, "sourceDir="), this.sourceDir, printer);
        if (!Objects.equals(this.sourceDir, this.publicSourceDir)) {
            c.B(c.u(str, "publicSourceDir="), this.publicSourceDir, printer);
        }
        if (!ArrayUtils.isEmpty(this.splitSourceDirs)) {
            c.B(c.u(str, "splitSourceDirs="), Arrays.toString(this.splitSourceDirs), printer);
        }
        if (!ArrayUtils.isEmpty(this.splitPublicSourceDirs) && !Arrays.equals(this.splitSourceDirs, this.splitPublicSourceDirs)) {
            c.B(c.u(str, "splitPublicSourceDirs="), Arrays.toString(this.splitPublicSourceDirs), printer);
        }
        if (this.resourceDirs != null) {
            c.B(c.u(str, "resourceDirs="), Arrays.toString(this.resourceDirs), printer);
        }
        if (i3 != 0 && this.seInfo != null) {
            StringBuilder sbU3 = c.u(str, "seinfo=");
            sbU3.append(this.seInfo);
            printer.println(sbU3.toString());
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("seinfoUser=");
            c.B(sb, this.seInfoUser, printer);
        }
        c.B(c.u(str, "dataDir="), this.dataDir, printer);
        if (i3 != 0) {
            StringBuilder sbU4 = c.u(str, "deviceProtectedDataDir=");
            sbU4.append(this.deviceProtectedDataDir);
            printer.println(sbU4.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append("credentialProtectedDataDir=");
            c.B(sb2, this.credentialProtectedDataDir, printer);
            if (this.sharedLibraryFiles != null) {
                c.B(c.u(str, "sharedLibraryFiles="), Arrays.toString(this.sharedLibraryFiles), printer);
            }
        }
        if (this.classLoaderName != null) {
            c.B(c.u(str, "classLoaderName="), this.classLoaderName, printer);
        }
        if (!ArrayUtils.isEmpty(this.splitClassLoaderNames)) {
            c.B(c.u(str, "splitClassLoaderNames="), Arrays.toString(this.splitClassLoaderNames), printer);
        }
        StringBuilder sbU5 = c.u(str, "enabled=");
        sbU5.append(this.enabled);
        sbU5.append(" minSdkVersion=");
        sbU5.append(this.minSdkVersion);
        sbU5.append(" targetSdkVersion=");
        sbU5.append(this.targetSdkVersion);
        sbU5.append(" versionCode=");
        sbU5.append(this.versionCode);
        sbU5.append(" targetSandboxVersion=");
        sbU5.append(this.targetSandboxVersion);
        printer.println(sbU5.toString());
        if (i3 != 0) {
            if (this.manageSpaceActivityName != null) {
                c.B(c.u(str, "manageSpaceActivityName="), this.manageSpaceActivityName, printer);
            }
            if (this.descriptionRes != 0) {
                StringBuilder sbU6 = c.u(str, "description=0x");
                sbU6.append(Integer.toHexString(this.descriptionRes));
                printer.println(sbU6.toString());
            }
            if (this.uiOptions != 0) {
                StringBuilder sbU7 = c.u(str, "uiOptions=0x");
                sbU7.append(Integer.toHexString(this.uiOptions));
                printer.println(sbU7.toString());
            }
            c.B(c.u(str, "supportsRtl="), hasRtlSupport() ? "true" : "false", printer);
            if (this.fullBackupContent > 0) {
                StringBuilder sbU8 = c.u(str, "fullBackupContent=@xml/");
                sbU8.append(this.fullBackupContent);
                printer.println(sbU8.toString());
            } else {
                c.B(c.u(str, "fullBackupContent="), this.fullBackupContent < 0 ? "false" : "true", printer);
            }
            if (this.networkSecurityConfigRes != 0) {
                StringBuilder sbU9 = c.u(str, "networkSecurityConfigRes=0x");
                sbU9.append(Integer.toHexString(this.networkSecurityConfigRes));
                printer.println(sbU9.toString());
            }
            if (this.category != -1) {
                StringBuilder sbU10 = c.u(str, "category=");
                sbU10.append(this.category);
                printer.println(sbU10.toString());
            }
        }
        super.dumpBack(printer, str);
    }

    public ApplicationInfo(ApplicationInfo applicationInfo) {
        super(applicationInfo);
        this.fullBackupContent = 0;
        this.uiOptions = 0;
        this.flags = 0;
        this.requiresSmallestWidthDp = 0;
        this.compatibleWidthLimitDp = 0;
        this.largestWidthLimitDp = 0;
        this.seInfo = PhoneConstants.APN_TYPE_DEFAULT;
        this.enabled = true;
        this.enabledSetting = 0;
        this.installLocation = -1;
        this.category = -1;
        this.taskAffinity = applicationInfo.taskAffinity;
        this.permission = applicationInfo.permission;
        this.processName = applicationInfo.processName;
        this.className = applicationInfo.className;
        this.theme = applicationInfo.theme;
        this.flags = applicationInfo.flags;
        this.privateFlags = applicationInfo.privateFlags;
        this.requiresSmallestWidthDp = applicationInfo.requiresSmallestWidthDp;
        this.compatibleWidthLimitDp = applicationInfo.compatibleWidthLimitDp;
        this.largestWidthLimitDp = applicationInfo.largestWidthLimitDp;
        this.volumeUuid = applicationInfo.volumeUuid;
        this.storageUuid = applicationInfo.storageUuid;
        this.scanSourceDir = applicationInfo.scanSourceDir;
        this.scanPublicSourceDir = applicationInfo.scanPublicSourceDir;
        this.sourceDir = applicationInfo.sourceDir;
        this.publicSourceDir = applicationInfo.publicSourceDir;
        this.splitNames = applicationInfo.splitNames;
        this.splitSourceDirs = applicationInfo.splitSourceDirs;
        this.splitPublicSourceDirs = applicationInfo.splitPublicSourceDirs;
        this.splitDependencies = applicationInfo.splitDependencies;
        this.nativeLibraryDir = applicationInfo.nativeLibraryDir;
        this.secondaryNativeLibraryDir = applicationInfo.secondaryNativeLibraryDir;
        this.nativeLibraryRootDir = applicationInfo.nativeLibraryRootDir;
        this.nativeLibraryRootRequiresIsa = applicationInfo.nativeLibraryRootRequiresIsa;
        this.primaryCpuAbi = applicationInfo.primaryCpuAbi;
        this.secondaryCpuAbi = applicationInfo.secondaryCpuAbi;
        this.hasMultiArchLib = applicationInfo.hasMultiArchLib;
        this.resourceDirs = applicationInfo.resourceDirs;
        this.seInfo = applicationInfo.seInfo;
        this.seInfoUser = applicationInfo.seInfoUser;
        this.sharedLibraryFiles = applicationInfo.sharedLibraryFiles;
        this.dataDir = applicationInfo.dataDir;
        this.deviceProtectedDataDir = applicationInfo.deviceProtectedDataDir;
        this.credentialProtectedDataDir = applicationInfo.credentialProtectedDataDir;
        this.uid = applicationInfo.uid;
        this.minSdkVersion = applicationInfo.minSdkVersion;
        this.targetSdkVersion = applicationInfo.targetSdkVersion;
        this.versionCode = applicationInfo.versionCode;
        this.enabled = applicationInfo.enabled;
        this.enabledSetting = applicationInfo.enabledSetting;
        this.installLocation = applicationInfo.installLocation;
        this.manageSpaceActivityName = applicationInfo.manageSpaceActivityName;
        this.descriptionRes = applicationInfo.descriptionRes;
        this.uiOptions = applicationInfo.uiOptions;
        this.backupAgentName = applicationInfo.backupAgentName;
        this.fullBackupContent = applicationInfo.fullBackupContent;
        this.networkSecurityConfigRes = applicationInfo.networkSecurityConfigRes;
        this.category = applicationInfo.category;
        this.targetSandboxVersion = applicationInfo.targetSandboxVersion;
        this.classLoaderName = applicationInfo.classLoaderName;
        this.splitClassLoaderNames = applicationInfo.splitClassLoaderNames;
    }

    private ApplicationInfo(Parcel parcel) {
        super(parcel);
        this.fullBackupContent = 0;
        this.uiOptions = 0;
        this.flags = 0;
        this.requiresSmallestWidthDp = 0;
        this.compatibleWidthLimitDp = 0;
        this.largestWidthLimitDp = 0;
        this.seInfo = PhoneConstants.APN_TYPE_DEFAULT;
        this.enabled = true;
        this.enabledSetting = 0;
        this.installLocation = -1;
        this.category = -1;
        this.taskAffinity = parcel.readString();
        this.permission = parcel.readString();
        this.processName = parcel.readString();
        this.className = parcel.readString();
        this.theme = parcel.readInt();
        this.flags = parcel.readInt();
        this.privateFlags = parcel.readInt();
        this.requiresSmallestWidthDp = parcel.readInt();
        this.compatibleWidthLimitDp = parcel.readInt();
        this.largestWidthLimitDp = parcel.readInt();
        if (parcel.readInt() != 0) {
            UUID uuid = new UUID(parcel.readLong(), parcel.readLong());
            this.storageUuid = uuid;
            this.volumeUuid = StorageManager.convert(uuid);
        }
        this.scanSourceDir = parcel.readString();
        this.scanPublicSourceDir = parcel.readString();
        this.sourceDir = parcel.readString();
        this.publicSourceDir = parcel.readString();
        this.splitNames = parcel.readStringArray();
        this.splitSourceDirs = parcel.readStringArray();
        this.splitPublicSourceDirs = parcel.readStringArray();
        this.splitDependencies = parcel.readSparseArray(null);
        this.nativeLibraryDir = parcel.readString();
        this.secondaryNativeLibraryDir = parcel.readString();
        this.nativeLibraryRootDir = parcel.readString();
        this.nativeLibraryRootRequiresIsa = parcel.readInt() != 0;
        this.primaryCpuAbi = parcel.readString();
        this.secondaryCpuAbi = parcel.readString();
        this.hasMultiArchLib = parcel.readString();
        this.resourceDirs = parcel.readStringArray();
        this.seInfo = parcel.readString();
        this.seInfoUser = parcel.readString();
        this.sharedLibraryFiles = parcel.readStringArray();
        this.dataDir = parcel.readString();
        this.deviceProtectedDataDir = parcel.readString();
        this.credentialProtectedDataDir = parcel.readString();
        this.uid = parcel.readInt();
        this.minSdkVersion = parcel.readInt();
        this.targetSdkVersion = parcel.readInt();
        this.versionCode = parcel.readInt();
        this.enabled = parcel.readInt() != 0;
        this.enabledSetting = parcel.readInt();
        this.installLocation = parcel.readInt();
        this.manageSpaceActivityName = parcel.readString();
        this.backupAgentName = parcel.readString();
        this.descriptionRes = parcel.readInt();
        this.uiOptions = parcel.readInt();
        this.fullBackupContent = parcel.readInt();
        this.networkSecurityConfigRes = parcel.readInt();
        this.category = parcel.readInt();
        this.targetSandboxVersion = parcel.readInt();
        this.classLoaderName = parcel.readString();
        this.splitClassLoaderNames = parcel.readStringArray();
    }
}
