package android.app.admin;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Printer;
import android.util.SparseArray;
import android.util.Xml;
import i.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class DeviceAdminInfo implements Parcelable {
    public static final Parcelable.Creator<DeviceAdminInfo> CREATOR;
    public static final String TAG = "DeviceAdminInfo";
    public static final int USES_ENCRYPTED_STORAGE = 7;
    public static final int USES_POLICY_DISABLE_CAMERA = 8;
    public static final int USES_POLICY_DISABLE_KEYGUARD_FEATURES = 9;
    public static final int USES_POLICY_EXPIRE_PASSWORD = 6;
    public static final int USES_POLICY_FORCE_LOCK = 3;
    public static final int USES_POLICY_LIMIT_PASSWORD = 0;
    public static final int USES_POLICY_RESET_PASSWORD = 2;
    public static final int USES_POLICY_SETS_GLOBAL_PROXY = 5;
    public static final int USES_POLICY_WATCH_LOGIN = 1;
    public static final int USES_POLICY_WIPE_DATA = 4;
    public final ResolveInfo mReceiver;
    public int mUsesPolicies;
    public boolean mVisible;
    public static ArrayList<PolicyInfo> sPoliciesDisplayOrder = new ArrayList<>();
    public static HashMap<String, Integer> sKnownPolicies = new HashMap<>();
    public static SparseArray<PolicyInfo> sRevKnownPolicies = new SparseArray<>();

    public static class PolicyInfo {
        public final int description;
        public final int ident;
        public final int label;
        public final String tag;

        public PolicyInfo(int i2, String str, int i3, int i4) {
            this.ident = i2;
            this.tag = str;
            this.label = i3;
            this.description = i4;
        }
    }

    static {
        sPoliciesDisplayOrder.add(new PolicyInfo(4, "wipe-data", 17040047, 17040048));
        sPoliciesDisplayOrder.add(new PolicyInfo(2, "reset-password", 17040043, 17040044));
        sPoliciesDisplayOrder.add(new PolicyInfo(0, "limit-password", 17040039, 17040040));
        sPoliciesDisplayOrder.add(new PolicyInfo(1, "watch-login", 17040041, 17040042));
        sPoliciesDisplayOrder.add(new PolicyInfo(3, "force-lock", 17040045, 17040046));
        sPoliciesDisplayOrder.add(new PolicyInfo(5, "set-global-proxy", 17040049, 17040050));
        sPoliciesDisplayOrder.add(new PolicyInfo(6, "expire-password", 17040051, 17040052));
        sPoliciesDisplayOrder.add(new PolicyInfo(7, "encrypted-storage", 17040053, 17040054));
        sPoliciesDisplayOrder.add(new PolicyInfo(8, "disable-camera", 17040055, 17040056));
        sPoliciesDisplayOrder.add(new PolicyInfo(9, "disable-keyguard-features", 17040057, 17040058));
        for (int i2 = 0; i2 < sPoliciesDisplayOrder.size(); i2++) {
            PolicyInfo policyInfo = sPoliciesDisplayOrder.get(i2);
            sRevKnownPolicies.put(policyInfo.ident, policyInfo);
            sKnownPolicies.put(policyInfo.tag, Integer.valueOf(policyInfo.ident));
        }
        CREATOR = new Parcelable.Creator<DeviceAdminInfo>() { // from class: android.app.admin.DeviceAdminInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DeviceAdminInfo createFromParcel(Parcel parcel) {
                return new DeviceAdminInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DeviceAdminInfo[] newArray(int i3) {
                return new DeviceAdminInfo[i3];
            }
        };
    }

    public DeviceAdminInfo(Context context, ResolveInfo resolveInfo) {
        int next;
        this.mReceiver = resolveInfo;
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        PackageManager packageManager = context.getPackageManager();
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                XmlResourceParser xmlResourceParserLoadXmlMetaData = activityInfo.loadXmlMetaData(packageManager, DeviceAdminReceiver.DEVICE_ADMIN_META_DATA);
                if (xmlResourceParserLoadXmlMetaData == null) {
                    throw new XmlPullParserException("No android.app.device_admin meta-data");
                }
                Resources resourcesForApplication = packageManager.getResourcesForApplication(activityInfo.applicationInfo);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                do {
                    next = xmlResourceParserLoadXmlMetaData.next();
                    if (next == 1) {
                        break;
                    }
                } while (next != 2);
                if (!"device-admin".equals(xmlResourceParserLoadXmlMetaData.getName())) {
                    throw new XmlPullParserException("Meta-data does not start with device-admin tag");
                }
                TypedArray typedArrayObtainAttributes = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, a.DeviceAdmin);
                this.mVisible = typedArrayObtainAttributes.getBoolean(0, true);
                typedArrayObtainAttributes.recycle();
                int depth = xmlResourceParserLoadXmlMetaData.getDepth();
                while (true) {
                    int next2 = xmlResourceParserLoadXmlMetaData.next();
                    if (next2 == 1 || (next2 == 3 && xmlResourceParserLoadXmlMetaData.getDepth() <= depth)) {
                        break;
                    }
                    if (next2 != 3 && next2 != 4 && xmlResourceParserLoadXmlMetaData.getName().equals("uses-policies")) {
                        int depth2 = xmlResourceParserLoadXmlMetaData.getDepth();
                        while (true) {
                            int next3 = xmlResourceParserLoadXmlMetaData.next();
                            if (next3 == 1 || (next3 == 3 && xmlResourceParserLoadXmlMetaData.getDepth() <= depth2)) {
                                break;
                            }
                            if (next3 != 3 && next3 != 4) {
                                String name = xmlResourceParserLoadXmlMetaData.getName();
                                Integer num = sKnownPolicies.get(name);
                                if (num != null) {
                                    this.mUsesPolicies |= 1 << num.intValue();
                                } else {
                                    Log.w(TAG, "Unknown tag under uses-policies of " + getComponent() + ": " + name);
                                }
                            }
                        }
                    }
                }
                xmlResourceParserLoadXmlMetaData.close();
            } catch (PackageManager.NameNotFoundException unused) {
                throw new XmlPullParserException("Unable to create context for: " + activityInfo.packageName);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        printer.println(str + "Receiver:");
        this.mReceiver.dump(printer, str + "  ");
    }

    public ActivityInfo getActivityInfo() {
        return this.mReceiver.activityInfo;
    }

    public ComponentName getComponent() {
        ActivityInfo activityInfo = this.mReceiver.activityInfo;
        return new ComponentName(activityInfo.packageName, activityInfo.name);
    }

    public String getPackageName() {
        return this.mReceiver.activityInfo.packageName;
    }

    public String getReceiverName() {
        return this.mReceiver.activityInfo.name;
    }

    public String getTagForPolicy(int i2) {
        return sRevKnownPolicies.get(i2).tag;
    }

    public ArrayList<PolicyInfo> getUsedPolicies() {
        ArrayList<PolicyInfo> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < sPoliciesDisplayOrder.size(); i2++) {
            PolicyInfo policyInfo = sPoliciesDisplayOrder.get(i2);
            if (usesPolicy(policyInfo.ident)) {
                arrayList.add(policyInfo);
            }
        }
        return arrayList;
    }

    public boolean isVisible() {
        return this.mVisible;
    }

    public CharSequence loadDescription(PackageManager packageManager) {
        ResolveInfo resolveInfo = this.mReceiver;
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        int i2 = activityInfo.descriptionRes;
        if (i2 == 0) {
            throw new Resources.NotFoundException();
        }
        String str = resolveInfo.resolvePackageName;
        ApplicationInfo applicationInfo = null;
        if (str == null) {
            str = activityInfo.packageName;
            applicationInfo = activityInfo.applicationInfo;
        }
        return packageManager.getText(str, i2, applicationInfo);
    }

    public Drawable loadIcon(PackageManager packageManager) {
        return this.mReceiver.loadIcon(packageManager);
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        return this.mReceiver.loadLabel(packageManager);
    }

    public void readPoliciesFromXml(XmlPullParser xmlPullParser) {
        this.mUsesPolicies = Integer.parseInt(xmlPullParser.getAttributeValue(null, "flags"));
    }

    public String toString() {
        return "DeviceAdminInfo{" + this.mReceiver.activityInfo.name + "}";
    }

    public boolean usesPolicy(int i2) {
        return ((1 << i2) & this.mUsesPolicies) != 0;
    }

    public void writePoliciesToXml(XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.attribute(null, "flags", Integer.toString(this.mUsesPolicies));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.mReceiver.writeToParcel(parcel, i2);
        parcel.writeInt(this.mUsesPolicies);
    }

    public DeviceAdminInfo(Parcel parcel) {
        this.mReceiver = ResolveInfo.CREATOR.createFromParcel(parcel);
        this.mUsesPolicies = parcel.readInt();
    }
}
