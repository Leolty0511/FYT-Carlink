package android.view.inputmethod;

import android.accessibilityservice.c;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
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
import android.util.Printer;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public final class InputMethodInfo implements Parcelable {
    public static final Parcelable.Creator<InputMethodInfo> CREATOR = new Parcelable.Creator<InputMethodInfo>() { // from class: android.view.inputmethod.InputMethodInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputMethodInfo createFromParcel(Parcel parcel) {
            return new InputMethodInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputMethodInfo[] newArray(int i2) {
            return new InputMethodInfo[i2];
        }
    };
    static final String TAG = "InputMethodInfo";
    private final boolean mForceDefault;
    final String mId;
    private final boolean mIsAuxIme;
    final int mIsDefaultResId;
    final ResolveInfo mService;
    final String mSettingsActivityName;
    private final InputMethodSubtypeArray mSubtypes;
    private final boolean mSupportsSwitchingToNextInputMethod;

    public InputMethodInfo(Context context, ResolveInfo resolveInfo) {
        this(context, resolveInfo, null);
    }

    private static ResolveInfo buildDummyResolveInfo(String str, String str2, CharSequence charSequence) {
        ResolveInfo resolveInfo = new ResolveInfo();
        ServiceInfo serviceInfo = new ServiceInfo();
        ApplicationInfo applicationInfo = new ApplicationInfo();
        applicationInfo.packageName = str;
        applicationInfo.enabled = true;
        serviceInfo.applicationInfo = applicationInfo;
        serviceInfo.enabled = true;
        serviceInfo.packageName = str;
        serviceInfo.name = str2;
        serviceInfo.exported = true;
        serviceInfo.nonLocalizedLabel = charSequence;
        resolveInfo.serviceInfo = serviceInfo;
        return resolveInfo;
    }

    public static String computeId(ResolveInfo resolveInfo) {
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToShortString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        StringBuilder sbU = c.u(str, "mId=");
        sbU.append(this.mId);
        sbU.append(" mSettingsActivityName=");
        sbU.append(this.mSettingsActivityName);
        sbU.append(" mSupportsSwitchingToNextInputMethod=");
        sbU.append(this.mSupportsSwitchingToNextInputMethod);
        printer.println(sbU.toString());
        printer.println(str + "mIsDefaultResId=0x" + Integer.toHexString(this.mIsDefaultResId));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("Service:");
        printer.println(sb.toString());
        this.mService.dump(printer, str + "  ");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof InputMethodInfo)) {
            return this.mId.equals(((InputMethodInfo) obj).mId);
        }
        return false;
    }

    public ComponentName getComponent() {
        ServiceInfo serviceInfo = this.mService.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
    }

    public String getId() {
        return this.mId;
    }

    public int getIsDefaultResourceId() {
        return this.mIsDefaultResId;
    }

    public String getPackageName() {
        return this.mService.serviceInfo.packageName;
    }

    public ServiceInfo getServiceInfo() {
        return this.mService.serviceInfo;
    }

    public String getServiceName() {
        return this.mService.serviceInfo.name;
    }

    public String getSettingsActivity() {
        return this.mSettingsActivityName;
    }

    public InputMethodSubtype getSubtypeAt(int i2) {
        return this.mSubtypes.get(i2);
    }

    public int getSubtypeCount() {
        return this.mSubtypes.getCount();
    }

    public int hashCode() {
        return this.mId.hashCode();
    }

    public boolean isAuxiliaryIme() {
        return this.mIsAuxIme;
    }

    public boolean isDefault(Context context) {
        if (this.mForceDefault) {
            return true;
        }
        try {
            if (getIsDefaultResourceId() == 0) {
                return false;
            }
            return context.createPackageContext(getPackageName(), 0).getResources().getBoolean(getIsDefaultResourceId());
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException unused) {
            return false;
        }
    }

    public Drawable loadIcon(PackageManager packageManager) {
        return this.mService.loadIcon(packageManager);
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        return this.mService.loadLabel(packageManager);
    }

    public boolean supportsSwitchingToNextInputMethod() {
        return this.mSupportsSwitchingToNextInputMethod;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("InputMethodInfo{");
        sb.append(this.mId);
        sb.append(", settings: ");
        return c.n(sb, this.mSettingsActivityName, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mId);
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeInt(this.mIsDefaultResId);
        parcel.writeInt(this.mIsAuxIme ? 1 : 0);
        parcel.writeInt(this.mSupportsSwitchingToNextInputMethod ? 1 : 0);
        this.mService.writeToParcel(parcel, i2);
        this.mSubtypes.writeToParcel(parcel);
    }

    public InputMethodInfo(Context context, ResolveInfo resolveInfo, List<InputMethodSubtype> list) {
        int next;
        int i2;
        int i3;
        this.mService = resolveInfo;
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mId = computeId(resolveInfo);
        this.mForceDefault = false;
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, InputMethod.SERVICE_META_DATA);
                if (xmlResourceParserLoadXmlMetaData == null) {
                    throw new XmlPullParserException("No android.view.im meta-data");
                }
                Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                do {
                    next = xmlResourceParserLoadXmlMetaData.next();
                    i2 = 2;
                    i3 = 1;
                    if (next == 1) {
                        break;
                    }
                } while (next != 2);
                if (!"input-method".equals(xmlResourceParserLoadXmlMetaData.getName())) {
                    throw new XmlPullParserException("Meta-data does not start with input-method tag");
                }
                TypedArray typedArrayObtainAttributes = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, R.styleable.InputMethod);
                String string = typedArrayObtainAttributes.getString(1);
                int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
                boolean z2 = typedArrayObtainAttributes.getBoolean(2, false);
                typedArrayObtainAttributes.recycle();
                int depth = xmlResourceParserLoadXmlMetaData.getDepth();
                boolean z3 = true;
                while (true) {
                    int next2 = xmlResourceParserLoadXmlMetaData.next();
                    if ((next2 == 3 && xmlResourceParserLoadXmlMetaData.getDepth() <= depth) || next2 == i3) {
                        break;
                    }
                    if (next2 == i2) {
                        if (!"subtype".equals(xmlResourceParserLoadXmlMetaData.getName())) {
                            throw new XmlPullParserException("Meta-data in input-method does not start with subtype tag");
                        }
                        TypedArray typedArrayObtainAttributes2 = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, R.styleable.InputMethod_Subtype);
                        Resources resources = resourcesForApplication;
                        InputMethodSubtype inputMethodSubtypeBuild = new InputMethodSubtype.InputMethodSubtypeBuilder().setSubtypeNameResId(typedArrayObtainAttributes2.getResourceId(0, 0)).setSubtypeIconResId(typedArrayObtainAttributes2.getResourceId(1, 0)).setLanguageTag(typedArrayObtainAttributes2.getString(9)).setSubtypeLocale(typedArrayObtainAttributes2.getString(2)).setSubtypeMode(typedArrayObtainAttributes2.getString(3)).setSubtypeExtraValue(typedArrayObtainAttributes2.getString(4)).setIsAuxiliary(typedArrayObtainAttributes2.getBoolean(5, false)).setOverridesImplicitlyEnabledSubtype(typedArrayObtainAttributes2.getBoolean(6, false)).setSubtypeId(typedArrayObtainAttributes2.getInt(7, 0)).setIsAsciiCapable(typedArrayObtainAttributes2.getBoolean(8, false)).build();
                        z3 = inputMethodSubtypeBuild.isAuxiliary() ? z3 : false;
                        arrayList.add(inputMethodSubtypeBuild);
                        i3 = 1;
                        resourcesForApplication = resources;
                        i2 = 2;
                    }
                }
                xmlResourceParserLoadXmlMetaData.close();
                z3 = arrayList.size() == 0 ? false : z3;
                if (list != null) {
                    int size = list.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        InputMethodSubtype inputMethodSubtype = list.get(i4);
                        if (arrayList.contains(inputMethodSubtype)) {
                            Slog.w(TAG, "Duplicated subtype definition found: " + inputMethodSubtype.getLocale() + ", " + inputMethodSubtype.getMode());
                        } else {
                            arrayList.add(inputMethodSubtype);
                        }
                    }
                }
                this.mSubtypes = new InputMethodSubtypeArray(arrayList);
                this.mSettingsActivityName = string;
                this.mIsDefaultResId = resourceId;
                this.mIsAuxIme = z3;
                this.mSupportsSwitchingToNextInputMethod = z2;
            } catch (PackageManager.NameNotFoundException | IndexOutOfBoundsException | NumberFormatException unused) {
                throw new XmlPullParserException("Unable to create context for: " + serviceInfo.packageName);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    public InputMethodInfo(Parcel parcel) {
        this.mId = parcel.readString();
        this.mSettingsActivityName = parcel.readString();
        this.mIsDefaultResId = parcel.readInt();
        this.mIsAuxIme = parcel.readInt() == 1;
        this.mSupportsSwitchingToNextInputMethod = parcel.readInt() == 1;
        this.mService = ResolveInfo.CREATOR.createFromParcel(parcel);
        this.mSubtypes = new InputMethodSubtypeArray(parcel);
        this.mForceDefault = false;
    }

    public InputMethodInfo(String str, String str2, CharSequence charSequence, String str3) {
        this(buildDummyResolveInfo(str, str2, charSequence), false, str3, null, 0, false, true);
    }

    public InputMethodInfo(ResolveInfo resolveInfo, boolean z2, String str, List<InputMethodSubtype> list, int i2, boolean z3) {
        this(resolveInfo, z2, str, list, i2, z3, true);
    }

    public InputMethodInfo(ResolveInfo resolveInfo, boolean z2, String str, List<InputMethodSubtype> list, int i2, boolean z3, boolean z4) {
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mService = resolveInfo;
        this.mId = new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToShortString();
        this.mSettingsActivityName = str;
        this.mIsDefaultResId = i2;
        this.mIsAuxIme = z2;
        this.mSubtypes = new InputMethodSubtypeArray(list);
        this.mForceDefault = z3;
        this.mSupportsSwitchingToNextInputMethod = z4;
    }
}
