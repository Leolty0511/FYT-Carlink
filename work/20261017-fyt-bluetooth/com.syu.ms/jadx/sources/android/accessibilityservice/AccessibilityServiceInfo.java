package android.accessibilityservice;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.accessibility.AccessibilityEvent;
import i.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityServiceInfo implements Parcelable {
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final Parcelable.Creator<AccessibilityServiceInfo> CREATOR;
    public static final int DEFAULT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_AUDIBLE = 4;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FEEDBACK_GENERIC = 16;
    public static final int FEEDBACK_HAPTIC = 2;
    public static final int FEEDBACK_SPOKEN = 1;
    public static final int FEEDBACK_VISUAL = 8;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;
    private static final String TAG_ACCESSIBILITY_SERVICE = "accessibility-service";
    private static final SparseArray<CapabilityInfo> sAvailableCapabilityInfos;
    public int eventTypes;
    public int feedbackType;
    public int flags;
    private int mCapabilities;
    private int mDescriptionResId;
    private String mId;
    private String mNonLocalizedDescription;
    private ResolveInfo mResolveInfo;
    private String mSettingsActivityName;
    public long notificationTimeout;
    public String[] packageNames;

    public static final class CapabilityInfo {
        public final int capability;
        public final int descResId;
        public final int titleResId;

        public CapabilityInfo(int i2, int i3, int i4) {
            this.capability = i2;
            this.titleResId = i3;
            this.descResId = i4;
        }
    }

    static {
        SparseArray<CapabilityInfo> sparseArray = new SparseArray<>();
        sAvailableCapabilityInfos = sparseArray;
        sparseArray.put(1, new CapabilityInfo(1, 17039635, 17039636));
        sparseArray.put(2, new CapabilityInfo(2, 17039637, 17039638));
        sparseArray.put(4, new CapabilityInfo(4, 17039639, 17039640));
        sparseArray.put(8, new CapabilityInfo(8, 17039641, 17039642));
        CREATOR = new Parcelable.Creator<AccessibilityServiceInfo>() { // from class: android.accessibilityservice.AccessibilityServiceInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AccessibilityServiceInfo createFromParcel(Parcel parcel) {
                AccessibilityServiceInfo accessibilityServiceInfo = new AccessibilityServiceInfo();
                accessibilityServiceInfo.initFromParcel(parcel);
                return accessibilityServiceInfo;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AccessibilityServiceInfo[] newArray(int i2) {
                return new AccessibilityServiceInfo[i2];
            }
        };
    }

    public AccessibilityServiceInfo() {
    }

    private static void appendCapabilities(StringBuilder sb, int i2) {
        sb.append("capabilities:");
        sb.append("[");
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            sb.append(capabilityToString(iNumberOfTrailingZeros));
            i2 &= ~iNumberOfTrailingZeros;
            if (i2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
    }

    private static void appendEventTypes(StringBuilder sb, int i2) {
        sb.append("eventTypes:");
        sb.append("[");
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            sb.append(AccessibilityEvent.eventTypeToString(iNumberOfTrailingZeros));
            i2 &= ~iNumberOfTrailingZeros;
            if (i2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
    }

    private static void appendFeedbackTypes(StringBuilder sb, int i2) {
        sb.append("feedbackTypes:");
        sb.append("[");
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            sb.append(feedbackTypeToString(iNumberOfTrailingZeros));
            i2 &= ~iNumberOfTrailingZeros;
            if (i2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
    }

    private static void appendFlags(StringBuilder sb, int i2) {
        sb.append("flags:");
        sb.append("[");
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            sb.append(flagToString(iNumberOfTrailingZeros));
            i2 &= ~iNumberOfTrailingZeros;
            if (i2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
    }

    private static void appendPackageNames(StringBuilder sb, String[] strArr) {
        sb.append("packageNames:");
        sb.append("[");
        if (strArr != null) {
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                sb.append(strArr[i2]);
                if (i2 < length - 1) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
    }

    public static String capabilityToString(int i2) {
        if (i2 == 1) {
            return "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT";
        }
        if (i2 == 2) {
            return "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION";
        }
        if (i2 != 4) {
            return i2 != 8 ? "UNKNOWN" : "CAPABILITY_CAN_FILTER_KEY_EVENTS";
        }
        return "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
    }

    public static String feedbackTypeToString(int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            if (iNumberOfTrailingZeros == 1) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_SPOKEN");
            } else if (iNumberOfTrailingZeros == 2) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_HAPTIC");
            } else if (iNumberOfTrailingZeros == 4) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_AUDIBLE");
            } else if (iNumberOfTrailingZeros == 8) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_VISUAL");
            } else if (iNumberOfTrailingZeros == 16) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_GENERIC");
            } else if (iNumberOfTrailingZeros == 32) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_BRAILLE");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String flagToString(int i2) {
        if (i2 == 1) {
            return "DEFAULT";
        }
        if (i2 == 2) {
            return "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS";
        }
        if (i2 == 4) {
            return "FLAG_REQUEST_TOUCH_EXPLORATION_MODE";
        }
        if (i2 == 8) {
            return "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
        }
        if (i2 == 16) {
            return "FLAG_REPORT_VIEW_IDS";
        }
        if (i2 != 32) {
            return null;
        }
        return "FLAG_REQUEST_FILTER_KEY_EVENTS";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initFromParcel(Parcel parcel) {
        this.eventTypes = parcel.readInt();
        this.packageNames = parcel.readStringArray();
        this.feedbackType = parcel.readInt();
        this.notificationTimeout = parcel.readLong();
        this.flags = parcel.readInt();
        this.mId = parcel.readString();
        this.mResolveInfo = (ResolveInfo) parcel.readParcelable(null);
        this.mSettingsActivityName = parcel.readString();
        this.mCapabilities = parcel.readInt();
        this.mDescriptionResId = parcel.readInt();
        this.mNonLocalizedDescription = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AccessibilityServiceInfo accessibilityServiceInfo = (AccessibilityServiceInfo) obj;
        String str = this.mId;
        if (str == null) {
            if (accessibilityServiceInfo.mId != null) {
                return false;
            }
        } else if (!str.equals(accessibilityServiceInfo.mId)) {
            return false;
        }
        return true;
    }

    public boolean getCanRetrieveWindowContent() {
        return (this.mCapabilities & 1) != 0;
    }

    public int getCapabilities() {
        return this.mCapabilities;
    }

    public List<CapabilityInfo> getCapabilityInfos() {
        int i2 = this.mCapabilities;
        if (i2 == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            CapabilityInfo capabilityInfo = sAvailableCapabilityInfos.get(iNumberOfTrailingZeros);
            if (capabilityInfo != null) {
                arrayList.add(capabilityInfo);
            }
        }
        return arrayList;
    }

    public String getDescription() {
        return this.mNonLocalizedDescription;
    }

    public String getId() {
        return this.mId;
    }

    public ResolveInfo getResolveInfo() {
        return this.mResolveInfo;
    }

    public String getSettingsActivityName() {
        return this.mSettingsActivityName;
    }

    public int hashCode() {
        String str = this.mId;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public String loadDescription(PackageManager packageManager) {
        int i2 = this.mDescriptionResId;
        if (i2 == 0) {
            return this.mNonLocalizedDescription;
        }
        ServiceInfo serviceInfo = this.mResolveInfo.serviceInfo;
        CharSequence text = packageManager.getText(serviceInfo.packageName, i2, serviceInfo.applicationInfo);
        if (text != null) {
            return text.toString().trim();
        }
        return null;
    }

    public void setCapabilities(int i2) {
        this.mCapabilities = i2;
    }

    public void setComponentName(ComponentName componentName) {
        this.mId = componentName.flattenToShortString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        appendEventTypes(sb, this.eventTypes);
        sb.append(", ");
        appendPackageNames(sb, this.packageNames);
        sb.append(", ");
        appendFeedbackTypes(sb, this.feedbackType);
        sb.append(", ");
        sb.append("notificationTimeout: ");
        sb.append(this.notificationTimeout);
        sb.append(", ");
        appendFlags(sb, this.flags);
        sb.append(", ");
        sb.append("id: ");
        sb.append(this.mId);
        sb.append(", ");
        sb.append("resolveInfo: ");
        sb.append(this.mResolveInfo);
        sb.append(", ");
        sb.append("settingsActivityName: ");
        sb.append(this.mSettingsActivityName);
        sb.append(", ");
        appendCapabilities(sb, this.mCapabilities);
        return sb.toString();
    }

    public void updateDynamicallyConfigurableProperties(AccessibilityServiceInfo accessibilityServiceInfo) {
        this.eventTypes = accessibilityServiceInfo.eventTypes;
        this.packageNames = accessibilityServiceInfo.packageNames;
        this.feedbackType = accessibilityServiceInfo.feedbackType;
        this.notificationTimeout = accessibilityServiceInfo.notificationTimeout;
        this.flags = accessibilityServiceInfo.flags;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.eventTypes);
        parcel.writeStringArray(this.packageNames);
        parcel.writeInt(this.feedbackType);
        parcel.writeLong(this.notificationTimeout);
        parcel.writeInt(this.flags);
        parcel.writeString(this.mId);
        parcel.writeParcelable(this.mResolveInfo, 0);
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeInt(this.mCapabilities);
        parcel.writeInt(this.mDescriptionResId);
        parcel.writeString(this.mNonLocalizedDescription);
    }

    public AccessibilityServiceInfo(ResolveInfo resolveInfo, Context context) {
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mId = new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToShortString();
        this.mResolveInfo = resolveInfo;
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                PackageManager packageManager = context.getPackageManager();
                XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, AccessibilityService.SERVICE_META_DATA);
                if (xmlResourceParserLoadXmlMetaData == null) {
                    if (xmlResourceParserLoadXmlMetaData != null) {
                        xmlResourceParserLoadXmlMetaData.close();
                        return;
                    }
                    return;
                }
                for (int next = 0; next != 1 && next != 2; next = xmlResourceParserLoadXmlMetaData.next()) {
                }
                if (!TAG_ACCESSIBILITY_SERVICE.equals(xmlResourceParserLoadXmlMetaData.getName())) {
                    throw new XmlPullParserException("Meta-data does not start withaccessibility-service tag");
                }
                TypedArray typedArrayObtainAttributes = packageManager.getResourcesForApplication(serviceInfo.applicationInfo).obtainAttributes(Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData), a.AccessibilityService);
                this.eventTypes = typedArrayObtainAttributes.getInt(2, 0);
                String string = typedArrayObtainAttributes.getString(3);
                if (string != null) {
                    this.packageNames = string.split("(\\s)*,(\\s)*");
                }
                this.feedbackType = typedArrayObtainAttributes.getInt(4, 0);
                this.notificationTimeout = typedArrayObtainAttributes.getInt(5, 0);
                this.flags = typedArrayObtainAttributes.getInt(6, 0);
                this.mSettingsActivityName = typedArrayObtainAttributes.getString(1);
                if (typedArrayObtainAttributes.getBoolean(7, false)) {
                    this.mCapabilities = 1 | this.mCapabilities;
                }
                if (typedArrayObtainAttributes.getBoolean(8, false)) {
                    this.mCapabilities = 2 | this.mCapabilities;
                }
                if (typedArrayObtainAttributes.getBoolean(9, false)) {
                    this.mCapabilities = 4 | this.mCapabilities;
                }
                if (typedArrayObtainAttributes.getBoolean(10, false)) {
                    this.mCapabilities |= 8;
                }
                TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(0);
                if (typedValuePeekValue != null) {
                    this.mDescriptionResId = typedValuePeekValue.resourceId;
                    CharSequence charSequenceCoerceToString = typedValuePeekValue.coerceToString();
                    if (charSequenceCoerceToString != null) {
                        this.mNonLocalizedDescription = charSequenceCoerceToString.toString().trim();
                    }
                }
                typedArrayObtainAttributes.recycle();
                xmlResourceParserLoadXmlMetaData.close();
            } catch (PackageManager.NameNotFoundException unused) {
                throw new XmlPullParserException("Unable to create context for: " + serviceInfo.packageName);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
