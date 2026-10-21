package android.service.voice;

import android.Manifest;
import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class VoiceInteractionServiceInfo {
    static final String TAG = "VoiceInteractionServiceInfo";
    private String mParseError;
    private String mRecognitionService;
    private ServiceInfo mServiceInfo;
    private String mSessionService;
    private String mSettingsActivity;
    private boolean mSupportsAssist;
    private boolean mSupportsLaunchFromKeyguard;
    private boolean mSupportsLocalInteraction;

    public VoiceInteractionServiceInfo(PackageManager packageManager, ComponentName componentName) {
        this(packageManager, packageManager.getServiceInfo(componentName, 128));
    }

    public static ServiceInfo getServiceInfoOrThrow(ComponentName componentName, int i2) throws PackageManager.NameNotFoundException {
        try {
            ServiceInfo serviceInfo = AppGlobals.getPackageManager().getServiceInfo(componentName, 269222016, i2);
            if (serviceInfo != null) {
                return serviceInfo;
            }
        } catch (RemoteException unused) {
        }
        throw new PackageManager.NameNotFoundException(componentName.toString());
    }

    public String getParseError() {
        return this.mParseError;
    }

    public String getRecognitionService() {
        return this.mRecognitionService;
    }

    public ServiceInfo getServiceInfo() {
        return this.mServiceInfo;
    }

    public String getSessionService() {
        return this.mSessionService;
    }

    public String getSettingsActivity() {
        return this.mSettingsActivity;
    }

    public boolean getSupportsAssist() {
        return this.mSupportsAssist;
    }

    public boolean getSupportsLaunchFromKeyguard() {
        return this.mSupportsLaunchFromKeyguard;
    }

    public boolean getSupportsLocalInteraction() {
        return this.mSupportsLocalInteraction;
    }

    public VoiceInteractionServiceInfo(PackageManager packageManager, ComponentName componentName, int i2) {
        this(packageManager, getServiceInfoOrThrow(componentName, i2));
    }

    public VoiceInteractionServiceInfo(PackageManager packageManager, ServiceInfo serviceInfo) {
        int next;
        if (serviceInfo == null) {
            this.mParseError = "Service not available";
            return;
        }
        if (!Manifest.permission.BIND_VOICE_INTERACTION.equals(serviceInfo.permission)) {
            this.mParseError = "Service does not require permission android.permission.BIND_VOICE_INTERACTION";
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    XmlResourceParser xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, VoiceInteractionService.SERVICE_META_DATA);
                    if (xmlResourceParserLoadXmlMetaData == null) {
                        this.mParseError = "No android.voice_interaction meta-data for " + serviceInfo.packageName;
                        if (xmlResourceParserLoadXmlMetaData != null) {
                            xmlResourceParserLoadXmlMetaData.close();
                            return;
                        }
                        return;
                    }
                    Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData);
                    do {
                        next = xmlResourceParserLoadXmlMetaData.next();
                        if (next == 1) {
                            break;
                        }
                    } while (next != 2);
                    if (!"voice-interaction-service".equals(xmlResourceParserLoadXmlMetaData.getName())) {
                        this.mParseError = "Meta-data does not start with voice-interaction-service tag";
                        xmlResourceParserLoadXmlMetaData.close();
                        return;
                    }
                    TypedArray typedArrayObtainAttributes = resourcesForApplication.obtainAttributes(attributeSetAsAttributeSet, R.styleable.VoiceInteractionService);
                    this.mSessionService = typedArrayObtainAttributes.getString(1);
                    this.mRecognitionService = typedArrayObtainAttributes.getString(2);
                    this.mSettingsActivity = typedArrayObtainAttributes.getString(0);
                    this.mSupportsAssist = typedArrayObtainAttributes.getBoolean(3, false);
                    this.mSupportsLaunchFromKeyguard = typedArrayObtainAttributes.getBoolean(4, false);
                    this.mSupportsLocalInteraction = typedArrayObtainAttributes.getBoolean(5, false);
                    typedArrayObtainAttributes.recycle();
                    if (this.mSessionService == null) {
                        this.mParseError = "No sessionService specified";
                        xmlResourceParserLoadXmlMetaData.close();
                    } else if (this.mRecognitionService == null) {
                        this.mParseError = "No recognitionService specified";
                        xmlResourceParserLoadXmlMetaData.close();
                    } else {
                        xmlResourceParserLoadXmlMetaData.close();
                        this.mServiceInfo = serviceInfo;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    this.mParseError = "Error parsing voice interation service meta-data: " + e2;
                    Log.w(TAG, "error parsing voice interaction service meta-data", e2);
                    if (0 != 0) {
                        xmlResourceParser.close();
                    }
                }
            } catch (IOException e3) {
                this.mParseError = "Error parsing voice interation service meta-data: " + e3;
                Log.w(TAG, "error parsing voice interaction service meta-data", e3);
                if (0 != 0) {
                    xmlResourceParser.close();
                }
            } catch (XmlPullParserException e4) {
                this.mParseError = "Error parsing voice interation service meta-data: " + e4;
                Log.w(TAG, "error parsing voice interaction service meta-data", e4);
                if (0 != 0) {
                    xmlResourceParser.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
