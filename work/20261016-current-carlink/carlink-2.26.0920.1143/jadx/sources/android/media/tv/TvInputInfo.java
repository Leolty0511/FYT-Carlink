package android.media.tv;

import android.accessibilityservice.c;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.hardware.hdmi.HdmiDeviceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class TvInputInfo implements Parcelable {
    public static final Parcelable.Creator<TvInputInfo> CREATOR = new Parcelable.Creator<TvInputInfo>() { // from class: android.media.tv.TvInputInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TvInputInfo createFromParcel(Parcel parcel) {
            return new TvInputInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TvInputInfo[] newArray(int i2) {
            return new TvInputInfo[i2];
        }
    };
    private static final boolean DEBUG = false;
    public static final String EXTRA_INPUT_ID = "android.media.tv.extra.INPUT_ID";
    private static final String TAG = "TvInputInfo";
    public static final int TYPE_COMPONENT = 1004;
    public static final int TYPE_COMPOSITE = 1001;
    public static final int TYPE_DISPLAY_PORT = 1008;
    public static final int TYPE_DVI = 1006;
    public static final int TYPE_HDMI = 1007;
    public static final int TYPE_OTHER = 1000;
    public static final int TYPE_SCART = 1003;
    public static final int TYPE_SVIDEO = 1002;
    public static final int TYPE_TUNER = 0;
    public static final int TYPE_VGA = 1005;
    private final boolean mCanRecord;
    private final Bundle mExtras;
    private final HdmiDeviceInfo mHdmiDeviceInfo;
    private final Icon mIcon;
    private final Icon mIconDisconnected;
    private final Icon mIconStandby;
    private Uri mIconUri;
    private final String mId;
    private final boolean mIsConnectedToHdmiSwitch;
    private final boolean mIsHardwareInput;
    private final CharSequence mLabel;
    private final int mLabelResId;
    private final String mParentId;
    private final ResolveInfo mService;
    private final String mSetupActivity;
    private final int mTunerCount;
    private final int mType;

    public static final class Builder {
        private static final String DELIMITER_INFO_IN_ID = "/";
        private static final int LENGTH_HDMI_DEVICE_ID = 2;
        private static final int LENGTH_HDMI_PHYSICAL_ADDRESS = 4;
        private static final String PREFIX_HARDWARE_DEVICE = "HW";
        private static final String PREFIX_HDMI_DEVICE = "HDMI";
        private static final String XML_START_TAG_NAME = "tv-input";
        private static final SparseIntArray sHardwareTypeToTvInputType;
        private Boolean mCanRecord;
        private final Context mContext;
        private Bundle mExtras;
        private HdmiDeviceInfo mHdmiDeviceInfo;
        private Icon mIcon;
        private Icon mIconDisconnected;
        private Icon mIconStandby;
        private CharSequence mLabel;
        private int mLabelResId;
        private String mParentId;
        private final ResolveInfo mResolveInfo;
        private String mSetupActivity;
        private Integer mTunerCount;
        private TvInputHardwareInfo mTvInputHardwareInfo;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sHardwareTypeToTvInputType = sparseIntArray;
            sparseIntArray.put(1, 1000);
            sparseIntArray.put(2, 0);
            sparseIntArray.put(3, 1001);
            sparseIntArray.put(4, 1002);
            sparseIntArray.put(5, 1003);
            sparseIntArray.put(6, 1004);
            sparseIntArray.put(7, 1005);
            sparseIntArray.put(8, 1006);
            sparseIntArray.put(9, 1007);
            sparseIntArray.put(10, 1008);
        }

        public Builder(Context context, ComponentName componentName) {
            if (context == null) {
                throw new IllegalArgumentException("context cannot be null.");
            }
            ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(new Intent(TvInputService.SERVICE_INTERFACE).setComponent(componentName), 132);
            this.mResolveInfo = resolveInfoResolveService;
            if (resolveInfoResolveService == null) {
                throw new IllegalArgumentException("Invalid component. Can't find the service.");
            }
            this.mContext = context;
        }

        private static String generateInputId(ComponentName componentName) {
            return componentName.flattenToShortString();
        }

        private void parseServiceMetadata(int i2) {
            int next;
            ServiceInfo serviceInfo = this.mResolveInfo.serviceInfo;
            PackageManager packageManager = this.mContext.getPackageManager();
            try {
                XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, TvInputService.SERVICE_META_DATA);
                try {
                    if (xmlResourceParserLoadXmlMetaData == null) {
                        throw new IllegalStateException("No android.media.tv.input meta-data found for " + serviceInfo.name);
                    }
                    Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                    do {
                        next = xmlResourceParserLoadXmlMetaData.next();
                        if (next == 1) {
                            break;
                        }
                    } while (next != 2);
                    if (!XML_START_TAG_NAME.equals(xmlResourceParserLoadXmlMetaData.getName())) {
                        throw new IllegalStateException("Meta-data does not start with tv-input tag for " + serviceInfo.name);
                    }
                    TypedArray typedArrayObtainAttributes = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, R.styleable.TvInputService);
                    this.mSetupActivity = typedArrayObtainAttributes.getString(1);
                    if (this.mCanRecord == null) {
                        this.mCanRecord = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(2, false));
                    }
                    if (this.mTunerCount == null && i2 == 0) {
                        this.mTunerCount = Integer.valueOf(typedArrayObtainAttributes.getInt(3, 1));
                    }
                    typedArrayObtainAttributes.recycle();
                    xmlResourceParserLoadXmlMetaData.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (xmlResourceParserLoadXmlMetaData != null) {
                            try {
                                xmlResourceParserLoadXmlMetaData.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            } catch (PackageManager.NameNotFoundException e2) {
                throw new IllegalStateException("No resources found for " + serviceInfo.packageName, e2);
            } catch (IOException e3) {
                e = e3;
                throw new IllegalStateException("Failed reading meta-data for " + serviceInfo.packageName, e);
            } catch (XmlPullParserException e4) {
                e = e4;
                throw new IllegalStateException("Failed reading meta-data for " + serviceInfo.packageName, e);
            }
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0067  */
        /* JADX WARN: Code duplicated, block: B:17:0x006a  */
        /* JADX WARN: Code duplicated, block: B:21:0x0075  */
        public TvInputInfo build() {
            String strGenerateInputId;
            int i2;
            boolean z2;
            int i3;
            Boolean bool;
            boolean zBooleanValue;
            ServiceInfo serviceInfo = this.mResolveInfo.serviceInfo;
            ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
            HdmiDeviceInfo hdmiDeviceInfo = this.mHdmiDeviceInfo;
            boolean z3 = true;
            if (hdmiDeviceInfo == null) {
                TvInputHardwareInfo tvInputHardwareInfo = this.mTvInputHardwareInfo;
                if (tvInputHardwareInfo != null) {
                    String strGenerateInputId2 = generateInputId(componentName, tvInputHardwareInfo);
                    i3 = sHardwareTypeToTvInputType.get(this.mTvInputHardwareInfo.getType(), 0);
                    strGenerateInputId = strGenerateInputId2;
                    z2 = false;
                } else {
                    strGenerateInputId = generateInputId(componentName);
                    i2 = 0;
                    z3 = false;
                    z2 = false;
                }
                parseServiceMetadata(i2);
                ResolveInfo resolveInfo = this.mResolveInfo;
                CharSequence charSequence = this.mLabel;
                int i4 = this.mLabelResId;
                Icon icon = this.mIcon;
                Icon icon2 = this.mIconStandby;
                Icon icon3 = this.mIconDisconnected;
                String str = this.mSetupActivity;
                bool = this.mCanRecord;
                if (bool == null) {
                    zBooleanValue = false;
                } else {
                    zBooleanValue = bool.booleanValue();
                }
                Integer num = this.mTunerCount;
                return new TvInputInfo(resolveInfo, strGenerateInputId, i2, z3, charSequence, i4, icon, icon2, icon3, str, zBooleanValue, num != null ? num.intValue() : 0, this.mHdmiDeviceInfo, z2, this.mParentId, this.mExtras);
            }
            i3 = 1007;
            strGenerateInputId = generateInputId(componentName, hdmiDeviceInfo);
            z2 = (this.mHdmiDeviceInfo.getPhysicalAddress() & 4095) != 0;
            i2 = i3;
            parseServiceMetadata(i2);
            ResolveInfo resolveInfo2 = this.mResolveInfo;
            CharSequence charSequence2 = this.mLabel;
            int i5 = this.mLabelResId;
            Icon icon4 = this.mIcon;
            Icon icon5 = this.mIconStandby;
            Icon icon6 = this.mIconDisconnected;
            String str2 = this.mSetupActivity;
            bool = this.mCanRecord;
            if (bool == null) {
                zBooleanValue = false;
            } else {
                zBooleanValue = bool.booleanValue();
            }
            Integer num2 = this.mTunerCount;
            return new TvInputInfo(resolveInfo2, strGenerateInputId, i2, z3, charSequence2, i5, icon4, icon5, icon6, str2, zBooleanValue, num2 != null ? num2.intValue() : 0, this.mHdmiDeviceInfo, z2, this.mParentId, this.mExtras);
        }

        public Builder setCanRecord(boolean z2) {
            this.mCanRecord = Boolean.valueOf(z2);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setHdmiDeviceInfo(HdmiDeviceInfo hdmiDeviceInfo) {
            if (this.mTvInputHardwareInfo != null) {
                Log.w(TvInputInfo.TAG, "TvInputHardwareInfo will not be used to build this TvInputInfo");
                this.mTvInputHardwareInfo = null;
            }
            this.mHdmiDeviceInfo = hdmiDeviceInfo;
            return this;
        }

        public Builder setIcon(Icon icon) {
            this.mIcon = icon;
            return this;
        }

        public Builder setLabel(CharSequence charSequence) {
            if (this.mLabelResId != 0) {
                throw new IllegalStateException("Resource ID for label is already set.");
            }
            this.mLabel = charSequence;
            return this;
        }

        public Builder setParentId(String str) {
            this.mParentId = str;
            return this;
        }

        public Builder setTunerCount(int i2) {
            this.mTunerCount = Integer.valueOf(i2);
            return this;
        }

        public Builder setTvInputHardwareInfo(TvInputHardwareInfo tvInputHardwareInfo) {
            if (this.mHdmiDeviceInfo != null) {
                Log.w(TvInputInfo.TAG, "mHdmiDeviceInfo will not be used to build this TvInputInfo");
                this.mHdmiDeviceInfo = null;
            }
            this.mTvInputHardwareInfo = tvInputHardwareInfo;
            return this;
        }

        private static String generateInputId(ComponentName componentName, HdmiDeviceInfo hdmiDeviceInfo) {
            return componentName.flattenToShortString() + String.format(Locale.ENGLISH, "/HDMI%04X%02X", Integer.valueOf(hdmiDeviceInfo.getPhysicalAddress()), Integer.valueOf(hdmiDeviceInfo.getId()));
        }

        public Builder setIcon(Icon icon, int i2) {
            if (i2 == 0) {
                this.mIcon = icon;
            } else if (i2 == 1) {
                this.mIconStandby = icon;
            } else {
                if (i2 != 2) {
                    throw new IllegalArgumentException(c.d("Unknown state: ", i2));
                }
                this.mIconDisconnected = icon;
            }
            return this;
        }

        public Builder setLabel(int i2) {
            if (this.mLabel == null) {
                this.mLabelResId = i2;
                return this;
            }
            throw new IllegalStateException("Label text is already set.");
        }

        private static String generateInputId(ComponentName componentName, TvInputHardwareInfo tvInputHardwareInfo) {
            return componentName.flattenToShortString() + "/HW" + tvInputHardwareInfo.getDeviceId();
        }

        public Builder(Context context, ResolveInfo resolveInfo) {
            if (context == null) {
                throw new IllegalArgumentException("context cannot be null");
            }
            if (resolveInfo != null) {
                this.mContext = context;
                this.mResolveInfo = resolveInfo;
                return;
            }
            throw new IllegalArgumentException("resolveInfo cannot be null");
        }
    }

    public static final class TvInputSettings {
        private static final String CUSTOM_NAME_SEPARATOR = ",";
        private static final String TV_INPUT_SEPARATOR = ":";

        private TvInputSettings() {
        }

        private static void ensureValidField(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException(c.D(str, " should not empty "));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String getCustomLabel(Context context, String str, int i2) {
            return getCustomLabels(context, i2).get(str);
        }

        public static Map<String, String> getCustomLabels(Context context, int i2) {
            String stringForUser = Settings.Secure.getStringForUser(context.getContentResolver(), Settings.Secure.TV_INPUT_CUSTOM_LABELS, i2);
            HashMap map = new HashMap();
            if (TextUtils.isEmpty(stringForUser)) {
                return map;
            }
            for (String str : stringForUser.split(":")) {
                String[] strArrSplit = str.split(CUSTOM_NAME_SEPARATOR);
                map.put(Uri.decode(strArrSplit[0]), Uri.decode(strArrSplit[1]));
            }
            return map;
        }

        public static Set<String> getHiddenTvInputIds(Context context, int i2) {
            String stringForUser = Settings.Secure.getStringForUser(context.getContentResolver(), Settings.Secure.TV_INPUT_HIDDEN_INPUTS, i2);
            HashSet hashSet = new HashSet();
            if (TextUtils.isEmpty(stringForUser)) {
                return hashSet;
            }
            for (String str : stringForUser.split(":")) {
                hashSet.add(Uri.decode(str));
            }
            return hashSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isHidden(Context context, String str, int i2) {
            return getHiddenTvInputIds(context, i2).contains(str);
        }

        public static void putCustomLabels(Context context, Map<String, String> map, int i2) {
            StringBuilder sb = new StringBuilder();
            boolean z2 = true;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                ensureValidField(entry.getKey());
                ensureValidField(entry.getValue());
                if (z2) {
                    z2 = false;
                } else {
                    sb.append(":");
                }
                sb.append(Uri.encode(entry.getKey()));
                sb.append(CUSTOM_NAME_SEPARATOR);
                sb.append(Uri.encode(entry.getValue()));
            }
            Settings.Secure.putStringForUser(context.getContentResolver(), Settings.Secure.TV_INPUT_CUSTOM_LABELS, sb.toString(), i2);
            TvInputManager tvInputManager = (TvInputManager) context.getSystemService(Context.TV_INPUT_SERVICE);
            Iterator<String> it = map.keySet().iterator();
            while (it.hasNext()) {
                TvInputInfo tvInputInfo = tvInputManager.getTvInputInfo(it.next());
                if (tvInputInfo != null) {
                    tvInputManager.updateTvInputInfo(tvInputInfo);
                }
            }
        }

        public static void putHiddenTvInputs(Context context, Set<String> set, int i2) {
            StringBuilder sb = new StringBuilder();
            boolean z2 = true;
            for (String str : set) {
                ensureValidField(str);
                if (z2) {
                    z2 = false;
                } else {
                    sb.append(":");
                }
                sb.append(Uri.encode(str));
            }
            Settings.Secure.putStringForUser(context.getContentResolver(), Settings.Secure.TV_INPUT_HIDDEN_INPUTS, sb.toString(), i2);
            TvInputManager tvInputManager = (TvInputManager) context.getSystemService(Context.TV_INPUT_SERVICE);
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                TvInputInfo tvInputInfo = tvInputManager.getTvInputInfo(it.next());
                if (tvInputInfo != null) {
                    tvInputManager.updateTvInputInfo(tvInputInfo);
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    @Deprecated
    public static TvInputInfo createTvInputInfo(Context context, ResolveInfo resolveInfo, HdmiDeviceInfo hdmiDeviceInfo, String str, String str2, Uri uri) {
        TvInputInfo tvInputInfoBuild = new Builder(context, resolveInfo).setHdmiDeviceInfo(hdmiDeviceInfo).setParentId(str).setLabel(str2).build();
        tvInputInfoBuild.mIconUri = uri;
        return tvInputInfoBuild;
    }

    private Drawable loadServiceIcon(Context context) {
        ServiceInfo serviceInfo = this.mService.serviceInfo;
        if (serviceInfo.icon == 0 && serviceInfo.applicationInfo.icon == 0) {
            return null;
        }
        return serviceInfo.loadIcon(context.getPackageManager());
    }

    public boolean canRecord() {
        return this.mCanRecord;
    }

    @Deprecated
    public Intent createSettingsIntent() {
        return null;
    }

    public Intent createSetupIntent() {
        if (TextUtils.isEmpty(this.mSetupActivity)) {
            return null;
        }
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.setClassName(this.mService.serviceInfo.packageName, this.mSetupActivity);
        intent.putExtra(EXTRA_INPUT_ID, getId());
        return intent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TvInputInfo)) {
            return false;
        }
        TvInputInfo tvInputInfo = (TvInputInfo) obj;
        return Objects.equals(this.mService, tvInputInfo.mService) && TextUtils.equals(this.mId, tvInputInfo.mId) && this.mType == tvInputInfo.mType && this.mIsHardwareInput == tvInputInfo.mIsHardwareInput && TextUtils.equals(this.mLabel, tvInputInfo.mLabel) && Objects.equals(this.mIconUri, tvInputInfo.mIconUri) && this.mLabelResId == tvInputInfo.mLabelResId && Objects.equals(this.mIcon, tvInputInfo.mIcon) && Objects.equals(this.mIconStandby, tvInputInfo.mIconStandby) && Objects.equals(this.mIconDisconnected, tvInputInfo.mIconDisconnected) && TextUtils.equals(this.mSetupActivity, tvInputInfo.mSetupActivity) && this.mCanRecord == tvInputInfo.mCanRecord && this.mTunerCount == tvInputInfo.mTunerCount && Objects.equals(this.mHdmiDeviceInfo, tvInputInfo.mHdmiDeviceInfo) && this.mIsConnectedToHdmiSwitch == tvInputInfo.mIsConnectedToHdmiSwitch && TextUtils.equals(this.mParentId, tvInputInfo.mParentId) && Objects.equals(this.mExtras, tvInputInfo.mExtras);
    }

    public ComponentName getComponent() {
        ServiceInfo serviceInfo = this.mService.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public HdmiDeviceInfo getHdmiDeviceInfo() {
        if (this.mType == 1007) {
            return this.mHdmiDeviceInfo;
        }
        return null;
    }

    public String getId() {
        return this.mId;
    }

    public String getParentId() {
        return this.mParentId;
    }

    public ServiceInfo getServiceInfo() {
        return this.mService.serviceInfo;
    }

    public int getTunerCount() {
        return this.mTunerCount;
    }

    public int getType() {
        return this.mType;
    }

    public int hashCode() {
        return this.mId.hashCode();
    }

    public boolean isConnectedToHdmiSwitch() {
        return this.mIsConnectedToHdmiSwitch;
    }

    public boolean isHardwareInput() {
        return this.mIsHardwareInput;
    }

    public boolean isHidden(Context context) {
        return TvInputSettings.isHidden(context, this.mId, UserHandle.myUserId());
    }

    public boolean isPassthroughInput() {
        return this.mType != 0;
    }

    public CharSequence loadCustomLabel(Context context) {
        return TvInputSettings.getCustomLabel(context, this.mId, UserHandle.myUserId());
    }

    public Drawable loadIcon(Context context) throws Throwable {
        Icon icon = this.mIcon;
        if (icon != null) {
            return icon.loadDrawable(context);
        }
        if (this.mIconUri != null) {
            try {
                InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(this.mIconUri);
                try {
                    Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                    if (drawableCreateFromStream != null) {
                        if (inputStreamOpenInputStream != null) {
                            inputStreamOpenInputStream.close();
                        }
                        return drawableCreateFromStream;
                    }
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (inputStreamOpenInputStream != null) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            } catch (IOException e2) {
                Log.w(TAG, "Loading the default icon due to a failure on loading " + this.mIconUri, e2);
            }
        }
        return loadServiceIcon(context);
    }

    public CharSequence loadLabel(Context context) {
        if (this.mLabelResId != 0) {
            return context.getPackageManager().getText(this.mService.serviceInfo.packageName, this.mLabelResId, null);
        }
        return !TextUtils.isEmpty(this.mLabel) ? this.mLabel : this.mService.loadLabel(context.getPackageManager());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TvInputInfo{id=");
        sb.append(this.mId);
        sb.append(", pkg=");
        sb.append(this.mService.serviceInfo.packageName);
        sb.append(", service=");
        return c.n(sb, this.mService.serviceInfo.name, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.mService.writeToParcel(parcel, i2);
        parcel.writeString(this.mId);
        parcel.writeInt(this.mType);
        parcel.writeByte(this.mIsHardwareInput ? (byte) 1 : (byte) 0);
        TextUtils.writeToParcel(this.mLabel, parcel, i2);
        parcel.writeParcelable(this.mIconUri, i2);
        parcel.writeInt(this.mLabelResId);
        parcel.writeParcelable(this.mIcon, i2);
        parcel.writeParcelable(this.mIconStandby, i2);
        parcel.writeParcelable(this.mIconDisconnected, i2);
        parcel.writeString(this.mSetupActivity);
        parcel.writeByte(this.mCanRecord ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mTunerCount);
        parcel.writeParcelable(this.mHdmiDeviceInfo, i2);
        parcel.writeByte(this.mIsConnectedToHdmiSwitch ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mParentId);
        parcel.writeBundle(this.mExtras);
    }

    private TvInputInfo(ResolveInfo resolveInfo, String str, int i2, boolean z2, CharSequence charSequence, int i3, Icon icon, Icon icon2, Icon icon3, String str2, boolean z3, int i4, HdmiDeviceInfo hdmiDeviceInfo, boolean z4, String str3, Bundle bundle) {
        this.mService = resolveInfo;
        this.mId = str;
        this.mType = i2;
        this.mIsHardwareInput = z2;
        this.mLabel = charSequence;
        this.mLabelResId = i3;
        this.mIcon = icon;
        this.mIconStandby = icon2;
        this.mIconDisconnected = icon3;
        this.mSetupActivity = str2;
        this.mCanRecord = z3;
        this.mTunerCount = i4;
        this.mHdmiDeviceInfo = hdmiDeviceInfo;
        this.mIsConnectedToHdmiSwitch = z4;
        this.mParentId = str3;
        this.mExtras = bundle;
    }

    @Deprecated
    public static TvInputInfo createTvInputInfo(Context context, ResolveInfo resolveInfo, HdmiDeviceInfo hdmiDeviceInfo, String str, int i2, Icon icon) {
        return new Builder(context, resolveInfo).setHdmiDeviceInfo(hdmiDeviceInfo).setParentId(str).setLabel(i2).setIcon(icon).build();
    }

    public Drawable loadIcon(Context context, int i2) {
        if (i2 == 0) {
            return loadIcon(context);
        }
        if (i2 == 1) {
            Icon icon = this.mIconStandby;
            if (icon != null) {
                return icon.loadDrawable(context);
            }
            return null;
        }
        if (i2 == 2) {
            Icon icon2 = this.mIconDisconnected;
            if (icon2 != null) {
                return icon2.loadDrawable(context);
            }
            return null;
        }
        throw new IllegalArgumentException(c.d("Unknown state: ", i2));
    }

    @Deprecated
    public static TvInputInfo createTvInputInfo(Context context, ResolveInfo resolveInfo, TvInputHardwareInfo tvInputHardwareInfo, String str, Uri uri) {
        TvInputInfo tvInputInfoBuild = new Builder(context, resolveInfo).setTvInputHardwareInfo(tvInputHardwareInfo).setLabel(str).build();
        tvInputInfoBuild.mIconUri = uri;
        return tvInputInfoBuild;
    }

    @Deprecated
    public static TvInputInfo createTvInputInfo(Context context, ResolveInfo resolveInfo, TvInputHardwareInfo tvInputHardwareInfo, int i2, Icon icon) {
        return new Builder(context, resolveInfo).setTvInputHardwareInfo(tvInputHardwareInfo).setLabel(i2).setIcon(icon).build();
    }

    private TvInputInfo(Parcel parcel) {
        this.mService = ResolveInfo.CREATOR.createFromParcel(parcel);
        this.mId = parcel.readString();
        this.mType = parcel.readInt();
        this.mIsHardwareInput = parcel.readByte() == 1;
        this.mLabel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mIconUri = (Uri) parcel.readParcelable(null);
        this.mLabelResId = parcel.readInt();
        this.mIcon = (Icon) parcel.readParcelable(null);
        this.mIconStandby = (Icon) parcel.readParcelable(null);
        this.mIconDisconnected = (Icon) parcel.readParcelable(null);
        this.mSetupActivity = parcel.readString();
        this.mCanRecord = parcel.readByte() == 1;
        this.mTunerCount = parcel.readInt();
        this.mHdmiDeviceInfo = (HdmiDeviceInfo) parcel.readParcelable(null);
        this.mIsConnectedToHdmiSwitch = parcel.readByte() == 1;
        this.mParentId = parcel.readString();
        this.mExtras = parcel.readBundle();
    }
}
