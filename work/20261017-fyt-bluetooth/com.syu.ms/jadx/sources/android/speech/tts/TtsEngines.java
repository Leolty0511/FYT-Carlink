package android.speech.tts;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.net.ProxyProperties;
import android.provider.Settings;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import i.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class TtsEngines {
    private static final boolean DBG = false;
    private static final String LOCALE_DELIMITER = "-";
    private static final String TAG = "TtsEngines";
    private static final String XML_TAG_NAME = "tts-engine";
    private final Context mContext;

    public static class EngineInfoComparator implements Comparator<TextToSpeech.EngineInfo> {
        public static EngineInfoComparator INSTANCE = new EngineInfoComparator();

        private EngineInfoComparator() {
        }

        @Override // java.util.Comparator
        public int compare(TextToSpeech.EngineInfo engineInfo, TextToSpeech.EngineInfo engineInfo2) {
            boolean z2 = engineInfo.system;
            if (z2 && !engineInfo2.system) {
                return -1;
            }
            if (!engineInfo2.system || z2) {
                return engineInfo2.priority - engineInfo.priority;
            }
            return 1;
        }
    }

    public TtsEngines(Context context) {
        this.mContext = context;
    }

    private String getV1Locale() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        String string = Settings.Secure.getString(contentResolver, Settings.Secure.TTS_DEFAULT_LANG);
        String string2 = Settings.Secure.getString(contentResolver, Settings.Secure.TTS_DEFAULT_COUNTRY);
        String string3 = Settings.Secure.getString(contentResolver, Settings.Secure.TTS_DEFAULT_VARIANT);
        if (TextUtils.isEmpty(string)) {
            return getDefaultLocale();
        }
        if (TextUtils.isEmpty(string2)) {
            return string;
        }
        String str = string + LOCALE_DELIMITER + string2;
        if (TextUtils.isEmpty(string3)) {
            return str;
        }
        return str + LOCALE_DELIMITER + string3;
    }

    private boolean isSystemEngine(ServiceInfo serviceInfo) {
        ApplicationInfo applicationInfo = serviceInfo.applicationInfo;
        return (applicationInfo == null || (applicationInfo.flags & 1) == 0) ? false : true;
    }

    private static String parseEnginePrefFromList(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (String str3 : str.split(",")) {
            int iIndexOf = str3.indexOf(58);
            if (iIndexOf > 0 && str2.equals(str3.substring(0, iIndexOf))) {
                return str3.substring(iIndexOf + 1);
            }
        }
        return null;
    }

    public static String[] parseLocalePref(String str) {
        String[] strArr = {ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST};
        if (!TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split(LOCALE_DELIMITER);
            System.arraycopy(strArrSplit, 0, strArr, 0, strArrSplit.length);
        }
        return strArr;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00e9  */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x00e6: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:48:0x00e6 */
    private String settingsActivityFromServiceInfo(ServiceInfo serviceInfo, PackageManager packageManager) throws Throwable {
        XmlResourceParser xmlResourceParserLoadXmlMetaData;
        XmlResourceParser xmlResourceParser;
        int next;
        XmlResourceParser xmlResourceParser2 = null;
        try {
            try {
                xmlResourceParserLoadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, TextToSpeech.Engine.SERVICE_META_DATA);
                try {
                    if (xmlResourceParserLoadXmlMetaData == null) {
                        Log.w(TAG, "No meta-data found for :" + serviceInfo);
                        if (xmlResourceParserLoadXmlMetaData != null) {
                            xmlResourceParserLoadXmlMetaData.close();
                        }
                        return null;
                    }
                    Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
                    do {
                        next = xmlResourceParserLoadXmlMetaData.next();
                        if (next == 1) {
                            xmlResourceParserLoadXmlMetaData.close();
                            return null;
                        }
                    } while (next != 2);
                    if (XML_TAG_NAME.equals(xmlResourceParserLoadXmlMetaData.getName())) {
                        TypedArray typedArrayObtainAttributes = resourcesForApplication.obtainAttributes(Xml.asAttributeSet(xmlResourceParserLoadXmlMetaData), a.TextToSpeechEngine);
                        String string = typedArrayObtainAttributes.getString(0);
                        typedArrayObtainAttributes.recycle();
                        xmlResourceParserLoadXmlMetaData.close();
                        return string;
                    }
                    Log.w(TAG, "Package " + serviceInfo + " uses unknown tag :" + xmlResourceParserLoadXmlMetaData.getName());
                    xmlResourceParserLoadXmlMetaData.close();
                    return null;
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.w(TAG, "Could not load resources for : " + serviceInfo);
                    if (xmlResourceParserLoadXmlMetaData != null) {
                        xmlResourceParserLoadXmlMetaData.close();
                    }
                    return null;
                } catch (IOException e2) {
                    e = e2;
                    Log.w(TAG, "Error parsing metadata for " + serviceInfo + ":" + e);
                    if (xmlResourceParserLoadXmlMetaData != null) {
                        xmlResourceParserLoadXmlMetaData.close();
                    }
                    return null;
                } catch (XmlPullParserException e3) {
                    e = e3;
                    Log.w(TAG, "Error parsing metadata for " + serviceInfo + ":" + e);
                    if (xmlResourceParserLoadXmlMetaData != null) {
                        xmlResourceParserLoadXmlMetaData.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                xmlResourceParser2 = xmlResourceParser;
                if (xmlResourceParser2 != null) {
                    xmlResourceParser2.close();
                }
                throw th;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            xmlResourceParserLoadXmlMetaData = null;
        } catch (IOException e4) {
            e = e4;
            xmlResourceParserLoadXmlMetaData = null;
        } catch (XmlPullParserException e5) {
            e = e5;
            xmlResourceParserLoadXmlMetaData = null;
        } catch (Throwable th2) {
            th = th2;
            if (xmlResourceParser2 != null) {
                xmlResourceParser2.close();
            }
            throw th;
        }
    }

    private String updateValueInCommaSeparatedList(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str)) {
            sb.append(str2);
            sb.append(':');
            sb.append(str3);
        } else {
            boolean z2 = true;
            boolean z3 = false;
            for (String str4 : str.split(",")) {
                int iIndexOf = str4.indexOf(58);
                if (iIndexOf > 0) {
                    if (str2.equals(str4.substring(0, iIndexOf))) {
                        if (z2) {
                            z2 = false;
                        } else {
                            sb.append(PhoneNumberUtils.PAUSE);
                        }
                        sb.append(str2);
                        sb.append(':');
                        sb.append(str3);
                        z3 = true;
                    } else {
                        if (z2) {
                            z2 = false;
                        } else {
                            sb.append(PhoneNumberUtils.PAUSE);
                        }
                        sb.append(str4);
                    }
                }
            }
            if (!z3) {
                sb.append(PhoneNumberUtils.PAUSE);
                sb.append(str2);
                sb.append(':');
                sb.append(str3);
            }
        }
        return sb.toString();
    }

    public String getDefaultEngine() {
        String string = Settings.Secure.getString(this.mContext.getContentResolver(), Settings.Secure.TTS_DEFAULT_SYNTH);
        return isEngineInstalled(string) ? string : getHighestRankedEngineName();
    }

    public String getDefaultLocale() {
        Locale locale = Locale.getDefault();
        try {
            String iSO3Language = locale.getISO3Language();
            if (TextUtils.isEmpty(iSO3Language)) {
                Log.w(TAG, "Default locale is empty.");
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
            if (TextUtils.isEmpty(locale.getISO3Country())) {
                return iSO3Language;
            }
            String str = iSO3Language + LOCALE_DELIMITER + locale.getISO3Country();
            if (TextUtils.isEmpty(locale.getVariant())) {
                return str;
            }
            return str + LOCALE_DELIMITER + locale.getVariant();
        } catch (MissingResourceException unused) {
            return "eng-usa";
        }
    }

    public TextToSpeech.EngineInfo getEngineInfo(String str) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent(TextToSpeech.Engine.INTENT_ACTION_TTS_SERVICE);
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.size() != 1) {
            return null;
        }
        return getEngineInfo(listQueryIntentServices.get(0), packageManager);
    }

    public List<TextToSpeech.EngineInfo> getEngines() {
        PackageManager packageManager = this.mContext.getPackageManager();
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(new Intent(TextToSpeech.Engine.INTENT_ACTION_TTS_SERVICE), 65536);
        if (listQueryIntentServices == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(listQueryIntentServices.size());
        Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
        while (it.hasNext()) {
            TextToSpeech.EngineInfo engineInfo = getEngineInfo(it.next(), packageManager);
            if (engineInfo != null) {
                arrayList.add(engineInfo);
            }
        }
        Collections.sort(arrayList, EngineInfoComparator.INSTANCE);
        return arrayList;
    }

    public String getHighestRankedEngineName() {
        List<TextToSpeech.EngineInfo> engines = getEngines();
        if (engines.size() <= 0 || !engines.get(0).system) {
            return null;
        }
        return engines.get(0).name;
    }

    public String getLocalePrefForEngine(String str) {
        String enginePrefFromList = parseEnginePrefFromList(Settings.Secure.getString(this.mContext.getContentResolver(), Settings.Secure.TTS_DEFAULT_LOCALE), str);
        return TextUtils.isEmpty(enginePrefFromList) ? getV1Locale() : enginePrefFromList;
    }

    public Intent getSettingsIntent(String str) {
        ServiceInfo serviceInfo;
        String str2;
        PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent(TextToSpeech.Engine.INTENT_ACTION_TTS_SERVICE);
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 65664);
        if (listQueryIntentServices == null || listQueryIntentServices.size() != 1 || (serviceInfo = listQueryIntentServices.get(0).serviceInfo) == null || (str2 = settingsActivityFromServiceInfo(serviceInfo, packageManager)) == null) {
            return null;
        }
        Intent intent2 = new Intent();
        intent2.setClassName(str, str2);
        return intent2;
    }

    public boolean isEngineInstalled(String str) {
        return (str == null || getEngineInfo(str) == null) ? false : true;
    }

    public synchronized void updateLocalePrefForEngine(String str, String str2) {
        Settings.Secure.putString(this.mContext.getContentResolver(), Settings.Secure.TTS_DEFAULT_LOCALE, updateValueInCommaSeparatedList(Settings.Secure.getString(this.mContext.getContentResolver(), Settings.Secure.TTS_DEFAULT_LOCALE), str, str2).toString());
    }

    private TextToSpeech.EngineInfo getEngineInfo(ResolveInfo resolveInfo, PackageManager packageManager) {
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        if (serviceInfo == null) {
            return null;
        }
        TextToSpeech.EngineInfo engineInfo = new TextToSpeech.EngineInfo();
        engineInfo.name = serviceInfo.packageName;
        CharSequence charSequenceLoadLabel = serviceInfo.loadLabel(packageManager);
        engineInfo.label = TextUtils.isEmpty(charSequenceLoadLabel) ? engineInfo.name : charSequenceLoadLabel.toString();
        engineInfo.icon = serviceInfo.getIconResource();
        engineInfo.priority = resolveInfo.priority;
        engineInfo.system = isSystemEngine(serviceInfo);
        return engineInfo;
    }
}
