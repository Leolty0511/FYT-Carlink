package android.nfc.cardemulation;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import i.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class ApduServiceInfo implements Parcelable {
    public static final Parcelable.Creator<ApduServiceInfo> CREATOR = new Parcelable.Creator<ApduServiceInfo>() { // from class: android.nfc.cardemulation.ApduServiceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApduServiceInfo createFromParcel(Parcel parcel) {
            ResolveInfo resolveInfoCreateFromParcel = ResolveInfo.CREATOR.createFromParcel(parcel);
            String string = parcel.readString();
            boolean z2 = parcel.readInt() != 0;
            ArrayList arrayList = new ArrayList();
            if (parcel.readInt() > 0) {
                parcel.readTypedList(arrayList, AidGroup.CREATOR);
            }
            return new ApduServiceInfo(resolveInfoCreateFromParcel, z2, string, arrayList, parcel.readInt() != 0, parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApduServiceInfo[] newArray(int i2) {
            return new ApduServiceInfo[i2];
        }
    };
    public static final String TAG = "ApduServiceInfo";
    public final ArrayList<AidGroup> mAidGroups;
    public final ArrayList<String> mAids;
    public final int mBannerResourceId;
    public final HashMap<String, AidGroup> mCategoryToGroup;
    public final String mDescription;
    public final boolean mOnHost;
    public final boolean mRequiresDeviceUnlock;
    public final ResolveInfo mService;

    public ApduServiceInfo(ResolveInfo resolveInfo, boolean z2, String str, ArrayList<AidGroup> arrayList, boolean z3, int i2) {
        this.mService = resolveInfo;
        this.mDescription = str;
        this.mAidGroups = arrayList;
        this.mAids = new ArrayList<>();
        this.mCategoryToGroup = new HashMap<>();
        this.mOnHost = z2;
        this.mRequiresDeviceUnlock = z3;
        for (AidGroup aidGroup : arrayList) {
            this.mCategoryToGroup.put(aidGroup.category, aidGroup);
            this.mAids.addAll(aidGroup.aids);
        }
        this.mBannerResourceId = i2;
    }

    public static boolean isValidAid(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        if (length == 0 || length % 2 != 0) {
            Log.e(TAG, "AID " + str + " is not correctly formatted.");
            return false;
        }
        if (length >= 10) {
            return true;
        }
        Log.e(TAG, "AID " + str + " is shorter than 5 bytes.");
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ApduServiceInfo) {
            return ((ApduServiceInfo) obj).getComponent().equals(getComponent());
        }
        return false;
    }

    public ArrayList<AidGroup> getAidGroups() {
        return this.mAidGroups;
    }

    public ArrayList<String> getAids() {
        return this.mAids;
    }

    public ComponentName getComponent() {
        ServiceInfo serviceInfo = this.mService.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
    }

    public String getDescription() {
        return this.mDescription;
    }

    public boolean hasCategory(String str) {
        return this.mCategoryToGroup.containsKey(str);
    }

    public int hashCode() {
        return getComponent().hashCode();
    }

    public boolean isOnHost() {
        return this.mOnHost;
    }

    public Drawable loadBanner(PackageManager packageManager) {
        try {
            return packageManager.getResourcesForApplication(this.mService.serviceInfo.packageName).getDrawable(this.mBannerResourceId);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "Could not load banner.");
            return null;
        } catch (Resources.NotFoundException unused2) {
            Log.e(TAG, "Could not load banner.");
            return null;
        }
    }

    public Drawable loadIcon(PackageManager packageManager) {
        return this.mService.loadIcon(packageManager);
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        return this.mService.loadLabel(packageManager);
    }

    public boolean requiresUnlock() {
        return this.mRequiresDeviceUnlock;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ApduService: ");
        sb.append(getComponent());
        sb.append(", description: " + this.mDescription);
        sb.append(", AID Groups: ");
        Iterator<AidGroup> it = this.mAidGroups.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.mService.writeToParcel(parcel, i2);
        parcel.writeString(this.mDescription);
        parcel.writeInt(this.mOnHost ? 1 : 0);
        parcel.writeInt(this.mAidGroups.size());
        if (this.mAidGroups.size() > 0) {
            parcel.writeTypedList(this.mAidGroups);
        }
        parcel.writeInt(this.mRequiresDeviceUnlock ? 1 : 0);
        parcel.writeInt(this.mBannerResourceId);
    }

    public static class AidGroup implements Parcelable {
        public static final Parcelable.Creator<AidGroup> CREATOR = new Parcelable.Creator<AidGroup>() { // from class: android.nfc.cardemulation.ApduServiceInfo.AidGroup.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AidGroup createFromParcel(Parcel parcel) {
                String string = parcel.readString();
                String string2 = parcel.readString();
                int i2 = parcel.readInt();
                ArrayList arrayList = new ArrayList();
                if (i2 > 0) {
                    parcel.readStringList(arrayList);
                }
                return new AidGroup(arrayList, string, string2);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AidGroup[] newArray(int i2) {
                return new AidGroup[i2];
            }
        };
        public final ArrayList<String> aids;
        public final String category;
        public final String description;

        public AidGroup(ArrayList<String> arrayList, String str, String str2) {
            this.aids = arrayList;
            this.category = str;
            this.description = str2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ArrayList<String> getAids() {
            return this.aids;
        }

        public String getCategory() {
            return this.category;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Category: " + this.category + ", description: " + this.description + ", AIDs:");
            Iterator<String> it = this.aids.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(", ");
            }
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.category);
            parcel.writeString(this.description);
            parcel.writeInt(this.aids.size());
            if (this.aids.size() > 0) {
                parcel.writeStringList(this.aids);
            }
        }

        public AidGroup(String str, String str2) {
            this.aids = new ArrayList<>();
            this.category = str;
            this.description = str2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:91:0x01dd  */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x01b4: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:82:0x01b4 */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x01b6: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:83:0x01b6 */
    public ApduServiceInfo(PackageManager packageManager, ResolveInfo resolveInfo, boolean z2) throws Throwable {
        XmlResourceParser xmlResourceParser;
        XmlResourceParser xmlResourceParserLoadXmlMetaData;
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        XmlResourceParser xmlResourceParser2 = null;
        try {
            try {
                try {
                    if (z2) {
                        xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, HostApduService.SERVICE_META_DATA);
                        if (xmlResourceParserLoadXmlMetaData == null) {
                            throw new XmlPullParserException("No android.nfc.cardemulation.host_apdu_service meta-data");
                        }
                    } else {
                        xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, OffHostApduService.SERVICE_META_DATA);
                        if (xmlResourceParserLoadXmlMetaData == null) {
                            throw new XmlPullParserException("No android.nfc.cardemulation.off_host_apdu_service meta-data");
                        }
                    }
                    for (int eventType = xmlResourceParserLoadXmlMetaData.getEventType(); eventType != 2 && eventType != 1; eventType = xmlResourceParserLoadXmlMetaData.next()) {
                    }
                    String name = xmlResourceParserLoadXmlMetaData.getName();
                    if (z2 && !"host-apdu-service".equals(name)) {
                        throw new XmlPullParserException("Meta-data does not start with <host-apdu-service> tag");
                    }
                    if (!z2 && !"offhost-apdu-service".equals(name)) {
                        throw new XmlPullParserException("Meta-data does not start with <offhost-apdu-service> tag");
                    }
                    Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                    if (z2) {
                        TypedArray typedArrayObtainAttributes = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, a.HostApduService);
                        this.mService = resolveInfo;
                        this.mDescription = typedArrayObtainAttributes.getString(0);
                        this.mRequiresDeviceUnlock = typedArrayObtainAttributes.getBoolean(1, false);
                        this.mBannerResourceId = typedArrayObtainAttributes.getResourceId(2, -1);
                        typedArrayObtainAttributes.recycle();
                    } else {
                        TypedArray typedArrayObtainAttributes2 = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, a.OffHostApduService);
                        this.mService = resolveInfo;
                        this.mDescription = typedArrayObtainAttributes2.getString(0);
                        this.mRequiresDeviceUnlock = false;
                        this.mBannerResourceId = typedArrayObtainAttributes2.getResourceId(1, -1);
                        typedArrayObtainAttributes2.recycle();
                    }
                    this.mAidGroups = new ArrayList<>();
                    this.mCategoryToGroup = new HashMap<>();
                    this.mAids = new ArrayList<>();
                    this.mOnHost = z2;
                    int depth = xmlResourceParserLoadXmlMetaData.getDepth();
                    loop1: while (true) {
                        AidGroup aidGroup = null;
                        while (true) {
                            int next = xmlResourceParserLoadXmlMetaData.next();
                            if ((next == 3 && xmlResourceParserLoadXmlMetaData.getDepth() <= depth) || next == 1) {
                                break loop1;
                            }
                            String name2 = xmlResourceParserLoadXmlMetaData.getName();
                            if (next == 2 && "aid-group".equals(name2) && aidGroup == null) {
                                TypedArray typedArrayObtainAttributes3 = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, a.AidGroup);
                                String string = typedArrayObtainAttributes3.getString(0);
                                String string2 = typedArrayObtainAttributes3.getString(1);
                                string2 = CardEmulation.CATEGORY_PAYMENT.equals(string2) ? string2 : CardEmulation.CATEGORY_OTHER;
                                AidGroup aidGroup2 = this.mCategoryToGroup.get(string2);
                                if (aidGroup2 != null) {
                                    if (!CardEmulation.CATEGORY_OTHER.equals(string2)) {
                                        Log.e(TAG, "Not allowing multiple aid-groups in the " + string2 + " category");
                                        aidGroup2 = null;
                                    }
                                } else {
                                    aidGroup2 = new AidGroup(string2, string);
                                }
                                typedArrayObtainAttributes3.recycle();
                                aidGroup = aidGroup2;
                            } else if (next != 3 || !"aid-group".equals(name2) || aidGroup == null) {
                                if (next == 2 && "aid-filter".equals(name2) && aidGroup != null) {
                                    TypedArray typedArrayObtainAttributes4 = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, a.AidFilter);
                                    String upperCase = typedArrayObtainAttributes4.getString(0).toUpperCase();
                                    if (isValidAid(upperCase) && !aidGroup.aids.contains(upperCase)) {
                                        aidGroup.aids.add(upperCase);
                                        this.mAids.add(upperCase);
                                    } else {
                                        Log.e(TAG, "Ignoring invalid or duplicate aid: " + upperCase);
                                    }
                                    typedArrayObtainAttributes4.recycle();
                                }
                            }
                        }
                        if (aidGroup.aids.size() > 0) {
                            if (!this.mCategoryToGroup.containsKey(aidGroup.category)) {
                                this.mAidGroups.add(aidGroup);
                                this.mCategoryToGroup.put(aidGroup.category, aidGroup);
                            }
                        } else {
                            Log.e(TAG, "Not adding <aid-group> with empty or invalid AIDs");
                        }
                    }
                    xmlResourceParserLoadXmlMetaData.close();
                } catch (Throwable th) {
                    th = th;
                    if (xmlResourceParser2 != null) {
                        xmlResourceParser2.close();
                    }
                    throw th;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                throw new XmlPullParserException("Unable to create context for: " + serviceInfo.packageName);
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new XmlPullParserException("Unable to create context for: " + serviceInfo.packageName);
        } catch (Throwable th2) {
            th = th2;
            xmlResourceParser2 = xmlResourceParser;
            if (xmlResourceParser2 != null) {
                xmlResourceParser2.close();
            }
            throw th;
        }
    }
}
