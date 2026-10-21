package android.app;

import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class AppRelevance {
    public static final String ATTR_AR_TYPE = "type";
    public static final String ATTR_LAUNCHCOUNT = "launchcount";
    public static final String ATTR_NAME = "name";
    public static final String CONF_TAG_APPRELEVANCE = "apprelevance";
    public static final String CONF_TAG_APPRELEVANCE_DATA = "apredata";
    public static final String CONF_TAG_PKG = "arpkg";
    public static final long DURATION_15MIN = 900000;
    public static final long DURATION_1MIN = 60000;
    public static final long DURATION_2MIN = 120000;
    public static final long DURATION_30MIN = 1800000;
    public static final long DURATION_5MIN = 300000;
    private static final String TAG = "AppRelevance";
    public static final int TYPE_15MIN = 3;
    public static final int TYPE_1MIN = 0;
    public static final int TYPE_2MIN = 1;
    public static final int TYPE_30MIN = 4;
    public static final int TYPE_5MIN = 2;
    public static final int TYPE_COUNT = 5;
    public static final int TYPE_NOT_CARE = -1;
    HashMap<Integer, HashMap<String, RelevanceDate>> mData = new HashMap<>();
    private String packageName;

    public static class RelevanceDate {
        public long launchCount;

        public static RelevanceDate createFromXml(XmlPullParser xmlPullParser) {
            RelevanceDate relevanceDate = new RelevanceDate();
            relevanceDate.launchCount = Long.valueOf(AppRelevance.getAttrValue(xmlPullParser, AppRelevance.ATTR_LAUNCHCOUNT)).longValue();
            return relevanceDate;
        }

        public String toString() {
            return " count :" + this.launchCount;
        }

        public void writeToFile(XmlSerializer xmlSerializer) throws IOException {
            xmlSerializer.attribute(null, AppRelevance.ATTR_LAUNCHCOUNT, String.valueOf(this.launchCount));
        }
    }

    public AppRelevance(String str) {
        this.packageName = str;
        for (int i2 = 0; i2 < 5; i2++) {
            this.mData.put(Integer.valueOf(i2), new HashMap<>());
        }
    }

    public static String getAttrValue(XmlPullParser xmlPullParser, String str) {
        for (int attributeCount = xmlPullParser.getAttributeCount() - 1; attributeCount >= 0; attributeCount--) {
            String attributeName = xmlPullParser.getAttributeName(attributeCount);
            String attributeValue = xmlPullParser.getAttributeValue(attributeCount);
            if (str.equals(attributeName)) {
                return attributeValue;
            }
        }
        return null;
    }

    public static int getType(long j2) {
        if (j2 > 1800000) {
            return -1;
        }
        if (j2 > 900000) {
            return 4;
        }
        if (j2 > 300000) {
            return 3;
        }
        if (j2 > DURATION_2MIN) {
            return 2;
        }
        return j2 > 60000 ? 1 : 0;
    }

    public static AppRelevance restoreFromFile(String str, XmlPullParser xmlPullParser) {
        AppRelevance appRelevance = new AppRelevance(str);
        int iValueOf = 0;
        HashMap<String, RelevanceDate> map = null;
        String attrValue = "";
        RelevanceDate relevanceDateCreateFromXml = null;
        while (true) {
            try {
                int next = xmlPullParser.next();
                if (next == 1) {
                    break;
                }
                String name = xmlPullParser.getName();
                if (next == 2) {
                    if (CONF_TAG_APPRELEVANCE_DATA.equals(name)) {
                        iValueOf = Integer.valueOf(getAttrValue(xmlPullParser, "type"));
                        map = appRelevance.mData.get(iValueOf);
                    } else if (CONF_TAG_PKG.equals(name)) {
                        attrValue = getAttrValue(xmlPullParser, "name");
                        relevanceDateCreateFromXml = RelevanceDate.createFromXml(xmlPullParser);
                    }
                } else if (next != 3) {
                    continue;
                } else {
                    if (CONF_TAG_APPRELEVANCE.equals(name)) {
                        return appRelevance;
                    }
                    if (CONF_TAG_APPRELEVANCE_DATA.equals(name)) {
                        if (map != null) {
                            appRelevance.mData.put(iValueOf, map);
                        }
                    } else if (CONF_TAG_PKG.equals(name) && map != null && relevanceDateCreateFromXml != null) {
                        map.put(attrValue, relevanceDateCreateFromXml);
                    }
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            } catch (XmlPullParserException e3) {
                e3.printStackTrace();
            }
        }
        return appRelevance;
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        HashMap map;
        printWriter.println("dump " + this.packageName + " Relevance:");
        synchronized (this.mData) {
            map = (HashMap) this.mData.clone();
        }
        for (Integer num : map.keySet()) {
            HashMap map2 = (HashMap) map.get(num);
            printWriter.println("---type " + num + "---");
            for (String str : map2.keySet()) {
                printWriter.println(str + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + ((RelevanceDate) map2.get(str)));
            }
        }
    }

    public RelevanceDate getRelevanceDate(String str, int i2) {
        synchronized (this.mData) {
            try {
                if (i2 < 0 || i2 >= 5) {
                    return null;
                }
                return this.mData.get(Integer.valueOf(i2)).get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void update(String str, int i2) {
        synchronized (this.mData) {
            if (i2 >= 0 && i2 < 5) {
                RelevanceDate relevanceDate = getRelevanceDate(str, i2);
                if (relevanceDate == null) {
                    relevanceDate = new RelevanceDate();
                    this.mData.get(Integer.valueOf(i2)).put(str, relevanceDate);
                }
                relevanceDate.launchCount++;
            }
        }
    }

    public void writeToFile(XmlSerializer xmlSerializer) throws IOException {
        HashMap map;
        synchronized (this.mData) {
            map = (HashMap) this.mData.clone();
        }
        xmlSerializer.startTag(null, CONF_TAG_APPRELEVANCE);
        for (Integer num : map.keySet()) {
            HashMap map2 = (HashMap) map.get(num);
            xmlSerializer.startTag(null, CONF_TAG_APPRELEVANCE_DATA);
            xmlSerializer.attribute(null, "type", String.valueOf(num));
            for (String str : map2.keySet()) {
                xmlSerializer.startTag(null, CONF_TAG_PKG);
                xmlSerializer.attribute(null, "name", str);
                ((RelevanceDate) map2.get(str)).writeToFile(xmlSerializer);
                xmlSerializer.endTag(null, CONF_TAG_PKG);
            }
            xmlSerializer.endTag(null, CONF_TAG_APPRELEVANCE_DATA);
        }
        xmlSerializer.endTag(null, CONF_TAG_APPRELEVANCE);
    }

    public void dump() {
        HashMap map;
        Log.d(TAG, "dump " + this.packageName + " Relevance:");
        synchronized (this.mData) {
            map = (HashMap) this.mData.clone();
        }
        for (Integer num : map.keySet()) {
            HashMap map2 = (HashMap) map.get(num);
            Log.d(TAG, "---type " + num + "---");
            for (String str : map2.keySet()) {
                Log.d(TAG, str + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + ((RelevanceDate) map2.get(str)));
            }
        }
    }
}
