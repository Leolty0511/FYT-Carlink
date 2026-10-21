package android.view.textservice;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Slog;
import android.util.Xml;
import i.a;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class SpellCheckerInfo implements Parcelable {
    public static final Parcelable.Creator<SpellCheckerInfo> CREATOR = new Parcelable.Creator<SpellCheckerInfo>() { // from class: android.view.textservice.SpellCheckerInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpellCheckerInfo createFromParcel(Parcel parcel) {
            return new SpellCheckerInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpellCheckerInfo[] newArray(int i2) {
            return new SpellCheckerInfo[i2];
        }
    };
    private static final String TAG = "SpellCheckerInfo";
    private final String mId;
    private final int mLabel;
    private final ResolveInfo mService;
    private final String mSettingsActivityName;
    private final ArrayList<SpellCheckerSubtype> mSubtypes;

    public SpellCheckerInfo(Context context, ResolveInfo resolveInfo) {
        int next;
        this.mSubtypes = new ArrayList<>();
        this.mService = resolveInfo;
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mId = new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToShortString();
        PackageManager packageManager = context.getPackageManager();
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, SpellCheckerSession.SERVICE_META_DATA);
                if (xmlResourceParserLoadXmlMetaData == null) {
                    throw new XmlPullParserException("No android.view.textservice.scs meta-data");
                }
                Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                do {
                    next = xmlResourceParserLoadXmlMetaData.next();
                    if (next == 1) {
                        break;
                    }
                } while (next != 2);
                if (!"spell-checker".equals(xmlResourceParserLoadXmlMetaData.getName())) {
                    throw new XmlPullParserException("Meta-data does not start with spell-checker tag");
                }
                TypedArray typedArrayObtainAttributes = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, a.SpellChecker);
                int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
                String string = typedArrayObtainAttributes.getString(1);
                typedArrayObtainAttributes.recycle();
                int depth = xmlResourceParserLoadXmlMetaData.getDepth();
                while (true) {
                    int next2 = xmlResourceParserLoadXmlMetaData.next();
                    if ((next2 == 3 && xmlResourceParserLoadXmlMetaData.getDepth() <= depth) || next2 == 1) {
                        break;
                    }
                    if (next2 == 2) {
                        if (!"subtype".equals(xmlResourceParserLoadXmlMetaData.getName())) {
                            throw new XmlPullParserException("Meta-data in spell-checker does not start with subtype tag");
                        }
                        TypedArray typedArrayObtainAttributes2 = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, a.SpellChecker_Subtype);
                        this.mSubtypes.add(new SpellCheckerSubtype(typedArrayObtainAttributes2.getResourceId(0, 0), typedArrayObtainAttributes2.getString(1), typedArrayObtainAttributes2.getString(2)));
                    }
                }
                xmlResourceParserLoadXmlMetaData.close();
                this.mLabel = resourceId;
                this.mSettingsActivityName = string;
            } catch (Exception e2) {
                Slog.e(TAG, "Caught exception: " + e2);
                throw new XmlPullParserException("Unable to create context for: " + serviceInfo.packageName);
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

    public ComponentName getComponent() {
        ServiceInfo serviceInfo = this.mService.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
    }

    public String getId() {
        return this.mId;
    }

    public String getPackageName() {
        return this.mService.serviceInfo.packageName;
    }

    public ServiceInfo getServiceInfo() {
        return this.mService.serviceInfo;
    }

    public String getSettingsActivity() {
        return this.mSettingsActivityName;
    }

    public SpellCheckerSubtype getSubtypeAt(int i2) {
        return this.mSubtypes.get(i2);
    }

    public int getSubtypeCount() {
        return this.mSubtypes.size();
    }

    public Drawable loadIcon(PackageManager packageManager) {
        return this.mService.loadIcon(packageManager);
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        return (this.mLabel == 0 || packageManager == null) ? ProxyProperties.LOCAL_EXCL_LIST : packageManager.getText(getPackageName(), this.mLabel, this.mService.serviceInfo.applicationInfo);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mLabel);
        parcel.writeString(this.mId);
        parcel.writeString(this.mSettingsActivityName);
        this.mService.writeToParcel(parcel, i2);
        parcel.writeTypedList(this.mSubtypes);
    }

    public SpellCheckerInfo(Parcel parcel) {
        ArrayList<SpellCheckerSubtype> arrayList = new ArrayList<>();
        this.mSubtypes = arrayList;
        this.mLabel = parcel.readInt();
        this.mId = parcel.readString();
        this.mSettingsActivityName = parcel.readString();
        this.mService = ResolveInfo.CREATOR.createFromParcel(parcel);
        parcel.readTypedList(arrayList, SpellCheckerSubtype.CREATOR);
    }
}
