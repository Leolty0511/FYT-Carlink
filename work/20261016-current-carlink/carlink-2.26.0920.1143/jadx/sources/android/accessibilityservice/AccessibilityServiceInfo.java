package android.accessibilityservice;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.R;
import com.android.internal.telephony.IccCardConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityServiceInfo implements Parcelable {
    public static final int CAPABILITY_CAN_CONTROL_MAGNIFICATION = 16;
    public static final int CAPABILITY_CAN_PERFORM_GESTURES = 32;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES = 64;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final Parcelable.Creator<AccessibilityServiceInfo> CREATOR = new Parcelable.Creator<AccessibilityServiceInfo>() { // from class: android.accessibilityservice.AccessibilityServiceInfo.1
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
    public static final int DEFAULT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_AUDIBLE = 4;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FEEDBACK_GENERIC = 16;
    public static final int FEEDBACK_HAPTIC = 2;
    public static final int FEEDBACK_SPOKEN = 1;
    public static final int FEEDBACK_VISUAL = 8;
    public static final int FLAG_ENABLE_ACCESSIBILITY_VOLUME = 128;
    public static final int FLAG_FORCE_DIRECT_BOOT_AWARE = 65536;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ACCESSIBILITY_BUTTON = 256;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_FINGERPRINT_GESTURES = 512;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;
    public static final int FLAG_RETRIEVE_INTERACTIVE_WINDOWS = 64;
    private static final String TAG_ACCESSIBILITY_SERVICE = "accessibility-service";
    private static SparseArray<CapabilityInfo> sAvailableCapabilityInfos;
    public int eventTypes;
    public int feedbackType;
    public int flags;
    private int mCapabilities;
    private ComponentName mComponentName;
    private int mDescriptionResId;
    private String mNonLocalizedDescription;
    private String mNonLocalizedSummary;
    private ResolveInfo mResolveInfo;
    private String mSettingsActivityName;
    private int mSummaryResId;
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
        if (i2 == 4) {
            return "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
        }
        if (i2 == 8) {
            return "CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS";
        }
        if (i2 == 16) {
            return "CAPABILITY_CAN_CONTROL_MAGNIFICATION";
        }
        if (i2 != 32) {
            return i2 != 64 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES";
        }
        return "CAPABILITY_CAN_PERFORM_GESTURES";
    }

    public static String feedbackTypeToString(int i2) {
        StringBuilder sbR = c.r("[");
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            if (iNumberOfTrailingZeros == 1) {
                if (sbR.length() > 1) {
                    sbR.append(", ");
                }
                sbR.append("FEEDBACK_SPOKEN");
            } else if (iNumberOfTrailingZeros == 2) {
                if (sbR.length() > 1) {
                    sbR.append(", ");
                }
                sbR.append("FEEDBACK_HAPTIC");
            } else if (iNumberOfTrailingZeros == 4) {
                if (sbR.length() > 1) {
                    sbR.append(", ");
                }
                sbR.append("FEEDBACK_AUDIBLE");
            } else if (iNumberOfTrailingZeros == 8) {
                if (sbR.length() > 1) {
                    sbR.append(", ");
                }
                sbR.append("FEEDBACK_VISUAL");
            } else if (iNumberOfTrailingZeros == 16) {
                if (sbR.length() > 1) {
                    sbR.append(", ");
                }
                sbR.append("FEEDBACK_GENERIC");
            } else if (iNumberOfTrailingZeros == 32) {
                if (sbR.length() > 1) {
                    sbR.append(", ");
                }
                sbR.append("FEEDBACK_BRAILLE");
            }
        }
        sbR.append("]");
        return sbR.toString();
    }

    private static boolean fingerprintAvailable(Context context) {
        return context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_FINGERPRINT) && ((FingerprintManager) context.getSystemService(FingerprintManager.class)).isHardwareDetected();
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
        if (i2 == 32) {
            return "FLAG_REQUEST_FILTER_KEY_EVENTS";
        }
        if (i2 == 64) {
            return "FLAG_RETRIEVE_INTERACTIVE_WINDOWS";
        }
        if (i2 == 128) {
            return "FLAG_ENABLE_ACCESSIBILITY_VOLUME";
        }
        if (i2 == 256) {
            return "FLAG_REQUEST_ACCESSIBILITY_BUTTON";
        }
        if (i2 != 512) {
            return null;
        }
        return "FLAG_REQUEST_FINGERPRINT_GESTURES";
    }

    private static SparseArray<CapabilityInfo> getCapabilityInfoSparseArray(Context context) {
        if (sAvailableCapabilityInfos == null) {
            SparseArray<CapabilityInfo> sparseArray = new SparseArray<>();
            sAvailableCapabilityInfos = sparseArray;
            sparseArray.put(1, new CapabilityInfo(1, R.string.capability_title_canRetrieveWindowContent, R.string.capability_desc_canRetrieveWindowContent));
            sAvailableCapabilityInfos.put(2, new CapabilityInfo(2, R.string.capability_title_canRequestTouchExploration, R.string.capability_desc_canRequestTouchExploration));
            sAvailableCapabilityInfos.put(8, new CapabilityInfo(8, R.string.capability_title_canRequestFilterKeyEvents, R.string.capability_desc_canRequestFilterKeyEvents));
            sAvailableCapabilityInfos.put(16, new CapabilityInfo(16, R.string.capability_title_canControlMagnification, R.string.capability_desc_canControlMagnification));
            sAvailableCapabilityInfos.put(32, new CapabilityInfo(32, R.string.capability_title_canPerformGestures, R.string.capability_desc_canPerformGestures));
            if (context == null || fingerprintAvailable(context)) {
                sAvailableCapabilityInfos.put(64, new CapabilityInfo(64, R.string.capability_title_canCaptureFingerprintGestures, R.string.capability_desc_canCaptureFingerprintGestures));
            }
        }
        return sAvailableCapabilityInfos;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initFromParcel(Parcel parcel) {
        this.eventTypes = parcel.readInt();
        this.packageNames = parcel.readStringArray();
        this.feedbackType = parcel.readInt();
        this.notificationTimeout = parcel.readLong();
        this.flags = parcel.readInt();
        this.mComponentName = (ComponentName) parcel.readParcelable(getClass().getClassLoader());
        this.mResolveInfo = (ResolveInfo) parcel.readParcelable(null);
        this.mSettingsActivityName = parcel.readString();
        this.mCapabilities = parcel.readInt();
        this.mSummaryResId = parcel.readInt();
        this.mNonLocalizedSummary = parcel.readString();
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
        ComponentName componentName = this.mComponentName;
        if (componentName == null) {
            if (accessibilityServiceInfo.mComponentName != null) {
                return false;
            }
        } else if (!componentName.equals(accessibilityServiceInfo.mComponentName)) {
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
        return getCapabilityInfos(null);
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public String getDescription() {
        return this.mNonLocalizedDescription;
    }

    public String getId() {
        return this.mComponentName.flattenToShortString();
    }

    public ResolveInfo getResolveInfo() {
        return this.mResolveInfo;
    }

    public String getSettingsActivityName() {
        return this.mSettingsActivityName;
    }

    public int hashCode() {
        ComponentName componentName = this.mComponentName;
        return (componentName == null ? 0 : componentName.hashCode()) + 31;
    }

    public boolean isDirectBootAware() {
        return (this.flags & 65536) != 0 || this.mResolveInfo.serviceInfo.directBootAware;
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

    public CharSequence loadSummary(PackageManager packageManager) {
        int i2 = this.mSummaryResId;
        if (i2 == 0) {
            return this.mNonLocalizedSummary;
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
        this.mComponentName = componentName;
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
        sb.append(getId());
        sb.append(", ");
        sb.append("resolveInfo: ");
        sb.append(this.mResolveInfo);
        sb.append(", ");
        sb.append("settingsActivityName: ");
        sb.append(this.mSettingsActivityName);
        sb.append(", ");
        sb.append("summary: ");
        sb.append(this.mNonLocalizedSummary);
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
        parcel.writeParcelable(this.mComponentName, i2);
        parcel.writeParcelable(this.mResolveInfo, 0);
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeInt(this.mCapabilities);
        parcel.writeInt(this.mSummaryResId);
        parcel.writeString(this.mNonLocalizedSummary);
        parcel.writeInt(this.mDescriptionResId);
        parcel.writeString(this.mNonLocalizedDescription);
    }

    public AccessibilityServiceInfo(ResolveInfo resolveInfo, Context context) {
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mComponentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
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
                TypedArray typedArrayObtainAttributes = packageManager.getResourcesForApplication(serviceInfo.applicationInfo).obtainAttributes(Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData), R.styleable.AccessibilityService);
                this.eventTypes = typedArrayObtainAttributes.getInt(3, 0);
                String string = typedArrayObtainAttributes.getString(4);
                if (string != null) {
                    this.packageNames = string.split("(\\s)*,(\\s)*");
                }
                this.feedbackType = typedArrayObtainAttributes.getInt(5, 0);
                this.notificationTimeout = typedArrayObtainAttributes.getInt(6, 0);
                this.flags = typedArrayObtainAttributes.getInt(7, 0);
                this.mSettingsActivityName = typedArrayObtainAttributes.getString(2);
                if (typedArrayObtainAttributes.getBoolean(8, false)) {
                    this.mCapabilities |= 1;
                }
                if (typedArrayObtainAttributes.getBoolean(9, false)) {
                    this.mCapabilities = 2 | this.mCapabilities;
                }
                if (typedArrayObtainAttributes.getBoolean(11, false)) {
                    this.mCapabilities = 8 | this.mCapabilities;
                }
                if (typedArrayObtainAttributes.getBoolean(12, false)) {
                    this.mCapabilities |= 16;
                }
                if (typedArrayObtainAttributes.getBoolean(13, false)) {
                    this.mCapabilities |= 32;
                }
                if (typedArrayObtainAttributes.getBoolean(14, false)) {
                    this.mCapabilities |= 64;
                }
                TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(0);
                if (typedValuePeekValue != null) {
                    this.mDescriptionResId = typedValuePeekValue.resourceId;
                    CharSequence charSequenceCoerceToString = typedValuePeekValue.coerceToString();
                    if (charSequenceCoerceToString != null) {
                        this.mNonLocalizedDescription = charSequenceCoerceToString.toString().trim();
                    }
                }
                TypedValue typedValuePeekValue2 = typedArrayObtainAttributes.peekValue(1);
                if (typedValuePeekValue2 != null) {
                    this.mSummaryResId = typedValuePeekValue2.resourceId;
                    CharSequence charSequenceCoerceToString2 = typedValuePeekValue2.coerceToString();
                    if (charSequenceCoerceToString2 != null) {
                        this.mNonLocalizedSummary = charSequenceCoerceToString2.toString().trim();
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

    public List<CapabilityInfo> getCapabilityInfos(Context context) {
        int i2 = this.mCapabilities;
        if (i2 == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<CapabilityInfo> capabilityInfoSparseArray = getCapabilityInfoSparseArray(context);
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            CapabilityInfo capabilityInfo = capabilityInfoSparseArray.get(iNumberOfTrailingZeros);
            if (capabilityInfo != null) {
                arrayList.add(capabilityInfo);
            }
        }
        return arrayList;
    }
}
