package android.printservice;

import android.accessibilityservice.c;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class PrintServiceInfo implements Parcelable {
    public static final Parcelable.Creator<PrintServiceInfo> CREATOR = new Parcelable.Creator<PrintServiceInfo>() { // from class: android.printservice.PrintServiceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrintServiceInfo createFromParcel(Parcel parcel) {
            return new PrintServiceInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrintServiceInfo[] newArray(int i2) {
            return new PrintServiceInfo[i2];
        }
    };
    private static final String LOG_TAG = "PrintServiceInfo";
    private static final String TAG_PRINT_SERVICE = "print-service";
    private final String mAddPrintersActivityName;
    private final String mAdvancedPrintOptionsActivityName;
    private final String mId;
    private boolean mIsEnabled;
    private final ResolveInfo mResolveInfo;
    private final String mSettingsActivityName;

    public PrintServiceInfo(Parcel parcel) {
        this.mId = parcel.readString();
        this.mIsEnabled = parcel.readByte() != 0;
        this.mResolveInfo = (ResolveInfo) parcel.readParcelable(null);
        this.mSettingsActivityName = parcel.readString();
        this.mAddPrintersActivityName = parcel.readString();
        this.mAdvancedPrintOptionsActivityName = parcel.readString();
    }

    public static PrintServiceInfo create(Context context, ResolveInfo resolveInfo) {
        String str;
        String string;
        String str2;
        PackageManager packageManager = context.getPackageManager();
        XmlResourceParser xmlResourceParserLoadXmlMetaData = resolveInfo.serviceInfo.loadXmlMetaData(packageManager, PrintService.SERVICE_META_DATA);
        String string2 = null;
        if (xmlResourceParserLoadXmlMetaData != null) {
            for (int next = 0; next != 1 && next != 2; next = xmlResourceParserLoadXmlMetaData.next()) {
                try {
                    try {
                    } catch (Throwable th) {
                        xmlResourceParserLoadXmlMetaData.close();
                        throw th;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    str = null;
                    string = null;
                    Log.e(LOG_TAG, "Unable to load resources for: " + resolveInfo.serviceInfo.packageName);
                    xmlResourceParserLoadXmlMetaData.close();
                    return new PrintServiceInfo(resolveInfo, string2, string, str);
                } catch (IOException e2) {
                    e = e2;
                    str2 = null;
                    string = null;
                    Log.w(LOG_TAG, "Error reading meta-data:" + e);
                    xmlResourceParserLoadXmlMetaData.close();
                    str = str2;
                    return new PrintServiceInfo(resolveInfo, string2, string, str);
                } catch (XmlPullParserException e3) {
                    e = e3;
                    str2 = null;
                    string = null;
                    Log.w(LOG_TAG, "Error reading meta-data:" + e);
                    xmlResourceParserLoadXmlMetaData.close();
                    str = str2;
                    return new PrintServiceInfo(resolveInfo, string2, string, str);
                }
            }
            if (TAG_PRINT_SERVICE.equals(xmlResourceParserLoadXmlMetaData.getName())) {
                TypedArray typedArrayObtainAttributes = packageManager.getResourcesForApplication(resolveInfo.serviceInfo.applicationInfo).obtainAttributes(Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData), R.styleable.PrintService);
                String string3 = typedArrayObtainAttributes.getString(0);
                try {
                    string = typedArrayObtainAttributes.getString(1);
                    try {
                        string2 = typedArrayObtainAttributes.getString(3);
                        typedArrayObtainAttributes.recycle();
                        str = string2;
                        string2 = string3;
                    } catch (PackageManager.NameNotFoundException unused2) {
                        str = string2;
                        string2 = string3;
                        Log.e(LOG_TAG, "Unable to load resources for: " + resolveInfo.serviceInfo.packageName);
                    } catch (IOException e4) {
                        e = e4;
                        str2 = string2;
                        string2 = string3;
                        Log.w(LOG_TAG, "Error reading meta-data:" + e);
                        xmlResourceParserLoadXmlMetaData.close();
                        str = str2;
                        return new PrintServiceInfo(resolveInfo, string2, string, str);
                    } catch (XmlPullParserException e5) {
                        e = e5;
                        str2 = string2;
                        string2 = string3;
                        Log.w(LOG_TAG, "Error reading meta-data:" + e);
                        xmlResourceParserLoadXmlMetaData.close();
                        str = str2;
                        return new PrintServiceInfo(resolveInfo, string2, string, str);
                    }
                } catch (PackageManager.NameNotFoundException unused3) {
                    str = null;
                    string = null;
                } catch (IOException e6) {
                    e = e6;
                    string = null;
                    string2 = string3;
                    str2 = null;
                } catch (XmlPullParserException e7) {
                    e = e7;
                    string = null;
                    string2 = string3;
                    str2 = null;
                }
            } else {
                Log.e(LOG_TAG, "Ignoring meta-data that does not start with print-service tag");
                str = null;
                string = null;
            }
            xmlResourceParserLoadXmlMetaData.close();
        } else {
            str = null;
            string = null;
        }
        return new PrintServiceInfo(resolveInfo, string2, string, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PrintServiceInfo.class != obj.getClass()) {
            return false;
        }
        PrintServiceInfo printServiceInfo = (PrintServiceInfo) obj;
        String str = this.mId;
        if (str == null) {
            if (printServiceInfo.mId != null) {
                return false;
            }
        } else if (!str.equals(printServiceInfo.mId)) {
            return false;
        }
        return true;
    }

    public String getAddPrintersActivityName() {
        return this.mAddPrintersActivityName;
    }

    public String getAdvancedOptionsActivityName() {
        return this.mAdvancedPrintOptionsActivityName;
    }

    public ComponentName getComponentName() {
        ServiceInfo serviceInfo = this.mResolveInfo.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
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

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public void setIsEnabled(boolean z2) {
        this.mIsEnabled = z2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PrintServiceInfo{id=");
        sb.append(this.mId);
        sb.append("isEnabled=");
        sb.append(this.mIsEnabled);
        sb.append(", resolveInfo=");
        sb.append(this.mResolveInfo);
        sb.append(", settingsActivityName=");
        sb.append(this.mSettingsActivityName);
        sb.append(", addPrintersActivityName=");
        sb.append(this.mAddPrintersActivityName);
        sb.append(", advancedPrintOptionsActivityName=");
        return c.n(sb, this.mAdvancedPrintOptionsActivityName, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mId);
        parcel.writeByte(this.mIsEnabled ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.mResolveInfo, 0);
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeString(this.mAddPrintersActivityName);
        parcel.writeString(this.mAdvancedPrintOptionsActivityName);
    }

    public PrintServiceInfo(ResolveInfo resolveInfo, String str, String str2, String str3) {
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mId = new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToString();
        this.mResolveInfo = resolveInfo;
        this.mSettingsActivityName = str;
        this.mAddPrintersActivityName = str2;
        this.mAdvancedPrintOptionsActivityName = str3;
    }
}
