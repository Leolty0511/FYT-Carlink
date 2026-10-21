package android.content.pm;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class PackageInfo implements Parcelable {
    public static final Parcelable.Creator<PackageInfo> CREATOR = new Parcelable.Creator<PackageInfo>() { // from class: android.content.pm.PackageInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PackageInfo createFromParcel(Parcel parcel) {
            return new PackageInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PackageInfo[] newArray(int i2) {
            return new PackageInfo[i2];
        }
    };
    public static final int FLAG_OVERLAY_STATIC = 2;
    public static final int FLAG_OVERLAY_TRUSTED = 4;
    public static final int INSTALL_LOCATION_AUTO = 0;
    public static final int INSTALL_LOCATION_INTERNAL_ONLY = 1;
    public static final int INSTALL_LOCATION_PREFER_EXTERNAL = 2;
    public static final int INSTALL_LOCATION_UNSPECIFIED = -1;
    public static final int REQUESTED_PERMISSION_GRANTED = 2;
    public static final int REQUESTED_PERMISSION_REQUIRED = 1;
    public ActivityInfo[] activities;
    public ApplicationInfo applicationInfo;
    public int baseRevisionCode;
    public ConfigurationInfo[] configPreferences;
    public boolean coreApp;
    public FeatureGroupInfo[] featureGroups;
    public long firstInstallTime;
    public int[] gids;
    public int installLocation;
    public InstrumentationInfo[] instrumentation;
    public boolean isStub;
    public long lastUpdateTime;
    public int overlayFlags;
    public int overlayPriority;
    public String overlayTarget;
    public String packageName;
    public PermissionInfo[] permissions;
    public ProviderInfo[] providers;
    public ActivityInfo[] receivers;
    public FeatureInfo[] reqFeatures;
    public String[] requestedPermissions;
    public int[] requestedPermissionsFlags;
    public String requiredAccountType;
    public boolean requiredForAllUsers;
    public String restrictedAccountType;
    public ServiceInfo[] services;
    public String sharedUserId;
    public int sharedUserLabel;
    public Signature[] signatures;
    public String[] splitNames;
    public int[] splitRevisionCodes;
    public int versionCode;
    public String versionName;

    private void propagateApplicationInfo(ApplicationInfo applicationInfo, ComponentInfo[] componentInfoArr) {
        if (componentInfoArr != null) {
            for (ComponentInfo componentInfo : componentInfoArr) {
                componentInfo.applicationInfo = applicationInfo;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PackageInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        return c.n(sb, this.packageName, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.packageName);
        parcel.writeStringArray(this.splitNames);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.versionName);
        parcel.writeInt(this.baseRevisionCode);
        parcel.writeIntArray(this.splitRevisionCodes);
        parcel.writeString(this.sharedUserId);
        parcel.writeInt(this.sharedUserLabel);
        if (this.applicationInfo != null) {
            parcel.writeInt(1);
            this.applicationInfo.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.firstInstallTime);
        parcel.writeLong(this.lastUpdateTime);
        parcel.writeIntArray(this.gids);
        int i3 = i2 | 2;
        parcel.writeTypedArray(this.activities, i3);
        parcel.writeTypedArray(this.receivers, i3);
        parcel.writeTypedArray(this.services, i3);
        parcel.writeTypedArray(this.providers, i3);
        parcel.writeTypedArray(this.instrumentation, i2);
        parcel.writeTypedArray(this.permissions, i2);
        parcel.writeStringArray(this.requestedPermissions);
        parcel.writeIntArray(this.requestedPermissionsFlags);
        parcel.writeTypedArray(this.signatures, i2);
        parcel.writeTypedArray(this.configPreferences, i2);
        parcel.writeTypedArray(this.reqFeatures, i2);
        parcel.writeTypedArray(this.featureGroups, i2);
        parcel.writeInt(this.installLocation);
        parcel.writeInt(this.isStub ? 1 : 0);
        parcel.writeInt(this.coreApp ? 1 : 0);
        parcel.writeInt(this.requiredForAllUsers ? 1 : 0);
        parcel.writeString(this.restrictedAccountType);
        parcel.writeString(this.requiredAccountType);
        parcel.writeString(this.overlayTarget);
        parcel.writeInt(this.overlayPriority);
        parcel.writeInt(this.overlayFlags);
    }

    public PackageInfo() {
        this.installLocation = 1;
    }

    private PackageInfo(Parcel parcel) {
        this.installLocation = 1;
        this.packageName = parcel.readString();
        this.splitNames = parcel.createStringArray();
        this.versionCode = parcel.readInt();
        this.versionName = parcel.readString();
        this.baseRevisionCode = parcel.readInt();
        this.splitRevisionCodes = parcel.createIntArray();
        this.sharedUserId = parcel.readString();
        this.sharedUserLabel = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.applicationInfo = ApplicationInfo.CREATOR.createFromParcel(parcel);
        }
        this.firstInstallTime = parcel.readLong();
        this.lastUpdateTime = parcel.readLong();
        this.gids = parcel.createIntArray();
        Parcelable.Creator<ActivityInfo> creator = ActivityInfo.CREATOR;
        this.activities = (ActivityInfo[]) parcel.createTypedArray(creator);
        this.receivers = (ActivityInfo[]) parcel.createTypedArray(creator);
        this.services = (ServiceInfo[]) parcel.createTypedArray(ServiceInfo.CREATOR);
        this.providers = (ProviderInfo[]) parcel.createTypedArray(ProviderInfo.CREATOR);
        this.instrumentation = (InstrumentationInfo[]) parcel.createTypedArray(InstrumentationInfo.CREATOR);
        this.permissions = (PermissionInfo[]) parcel.createTypedArray(PermissionInfo.CREATOR);
        this.requestedPermissions = parcel.createStringArray();
        this.requestedPermissionsFlags = parcel.createIntArray();
        this.signatures = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
        this.configPreferences = (ConfigurationInfo[]) parcel.createTypedArray(ConfigurationInfo.CREATOR);
        this.reqFeatures = (FeatureInfo[]) parcel.createTypedArray(FeatureInfo.CREATOR);
        this.featureGroups = (FeatureGroupInfo[]) parcel.createTypedArray(FeatureGroupInfo.CREATOR);
        this.installLocation = parcel.readInt();
        this.isStub = parcel.readInt() != 0;
        this.coreApp = parcel.readInt() != 0;
        this.requiredForAllUsers = parcel.readInt() != 0;
        this.restrictedAccountType = parcel.readString();
        this.requiredAccountType = parcel.readString();
        this.overlayTarget = parcel.readString();
        this.overlayPriority = parcel.readInt();
        this.overlayFlags = parcel.readInt();
        ApplicationInfo applicationInfo = this.applicationInfo;
        if (applicationInfo != null) {
            propagateApplicationInfo(applicationInfo, this.activities);
            propagateApplicationInfo(this.applicationInfo, this.receivers);
            propagateApplicationInfo(this.applicationInfo, this.services);
            propagateApplicationInfo(this.applicationInfo, this.providers);
        }
    }
}
