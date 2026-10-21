package android.service.autofill;

import android.Manifest;
import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.RemoteException;
import android.util.Log;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class AutofillServiceInfo {
    private static final String TAG = "AutofillServiceInfo";
    private final ServiceInfo mServiceInfo;
    private final String mSettingsActivity;

    public AutofillServiceInfo(PackageManager packageManager, ComponentName componentName, int i2) {
        this(packageManager, getServiceInfoOrThrow(componentName, i2));
    }

    private static TypedArray getMetaDataArray(PackageManager packageManager, ServiceInfo serviceInfo) {
        int next;
        if (!Manifest.permission.BIND_AUTOFILL_SERVICE.equals(serviceInfo.permission) && !Manifest.permission.BIND_AUTOFILL.equals(serviceInfo.permission)) {
            Log.w(TAG, "AutofillService from '" + serviceInfo.packageName + "' does not require permission android.permission.BIND_AUTOFILL_SERVICE");
            throw new SecurityException("Service does not require permission android.permission.BIND_AUTOFILL_SERVICE");
        }
        XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, AutofillService.SERVICE_META_DATA);
        if (xmlResourceParserLoadXmlMetaData == null) {
            return null;
        }
        do {
            try {
                try {
                    next = xmlResourceParserLoadXmlMetaData.next();
                    if (next == 1) {
                        break;
                    }
                } catch (Throwable th) {
                    xmlResourceParserLoadXmlMetaData.close();
                    throw th;
                }
            } catch (IOException | XmlPullParserException e2) {
                Log.e(TAG, "Error parsing auto fill service meta-data", e2);
                xmlResourceParserLoadXmlMetaData.close();
                return null;
            }
        } while (next != 2);
        if (!"autofill-service".equals(xmlResourceParserLoadXmlMetaData.getName())) {
            Log.e(TAG, "Meta-data does not start with autofill-service tag");
            xmlResourceParserLoadXmlMetaData.close();
            return null;
        }
        try {
            TypedArray typedArrayObtainAttributes = packageManager.getResourcesForApplication(serviceInfo.applicationInfo).obtainAttributes(Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData), R.styleable.AutofillService);
            xmlResourceParserLoadXmlMetaData.close();
            return typedArrayObtainAttributes;
        } catch (PackageManager.NameNotFoundException e3) {
            Log.e(TAG, "Error getting application resources", e3);
            xmlResourceParserLoadXmlMetaData.close();
            return null;
        }
    }

    private static ServiceInfo getServiceInfoOrThrow(ComponentName componentName, int i2) throws PackageManager.NameNotFoundException {
        try {
            ServiceInfo serviceInfo = AppGlobals.getPackageManager().getServiceInfo(componentName, 128, i2);
            if (serviceInfo != null) {
                return serviceInfo;
            }
        } catch (RemoteException unused) {
        }
        throw new PackageManager.NameNotFoundException(componentName.toString());
    }

    public ServiceInfo getServiceInfo() {
        return this.mServiceInfo;
    }

    public String getSettingsActivity() {
        return this.mSettingsActivity;
    }

    public String toString() {
        ServiceInfo serviceInfo = this.mServiceInfo;
        return serviceInfo == null ? "null" : serviceInfo.toString();
    }

    public AutofillServiceInfo(PackageManager packageManager, ServiceInfo serviceInfo) {
        this.mServiceInfo = serviceInfo;
        TypedArray metaDataArray = getMetaDataArray(packageManager, serviceInfo);
        if (metaDataArray == null) {
            this.mSettingsActivity = null;
        } else {
            this.mSettingsActivity = metaDataArray.getString(0);
            metaDataArray.recycle();
        }
    }
}
