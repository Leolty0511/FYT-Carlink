package android.app;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class ProcState {
    private static final String ATTR_PKG = "pkgName";
    private static final String ATTR_PROC = "procName";
    private static final String ATTR_TOP_PSS = "topPss";
    private static final String ATTR_TOP_PSS_SAMPLE_COUNT = "topPssCount";
    private static final String ATTR_USERID = "userid";
    private static final String TAG = "ProcState";
    public long avgTopPss;
    public Integer mUserId;
    public String packageName;
    public String processName;
    public long topPssSampleCount;

    public ProcState(String str, Integer num) {
        this.packageName = str;
        this.processName = str;
        this.avgTopPss = 0L;
        this.topPssSampleCount = 0L;
        this.mUserId = num;
    }

    public static ProcState restoreFromFile(XmlPullParser xmlPullParser) {
        ProcState procState = new ProcState();
        int attributeCount = xmlPullParser.getAttributeCount();
        while (true) {
            attributeCount--;
            if (attributeCount < 0) {
                return procState;
            }
            String attributeName = xmlPullParser.getAttributeName(attributeCount);
            String attributeValue = xmlPullParser.getAttributeValue(attributeCount);
            if (ATTR_USERID.equals(attributeName)) {
                procState.mUserId = Integer.valueOf(attributeValue);
            } else if (ATTR_PKG.equals(attributeName)) {
                procState.packageName = attributeValue;
            } else if (ATTR_PROC.equals(attributeName)) {
                procState.processName = attributeValue;
            } else if (ATTR_TOP_PSS.equals(attributeName)) {
                procState.avgTopPss = Long.valueOf(attributeValue).longValue();
            } else if (ATTR_TOP_PSS_SAMPLE_COUNT.equals(attributeName)) {
                procState.topPssSampleCount = Long.valueOf(attributeValue).longValue();
            } else {
                m.r("error attr name....:", attributeName, TAG);
            }
        }
    }

    public String toString() {
        return "UID:" + this.mUserId + "|pkg:" + this.packageName + "|proc:" + this.processName + "|pss:" + this.avgTopPss + "|cou t" + this.topPssSampleCount;
    }

    public void writeToFile(XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.attribute(null, ATTR_USERID, String.valueOf(this.mUserId));
        xmlSerializer.attribute(null, ATTR_PKG, this.packageName);
        xmlSerializer.attribute(null, ATTR_PROC, this.processName);
        xmlSerializer.attribute(null, ATTR_TOP_PSS, String.valueOf(this.avgTopPss));
        xmlSerializer.attribute(null, ATTR_TOP_PSS_SAMPLE_COUNT, String.valueOf(this.topPssSampleCount));
    }

    public ProcState(String str, String str2, long j2, long j3, int i2) {
        this.packageName = str;
        this.processName = str2;
        this.avgTopPss = j2;
        this.topPssSampleCount = j3;
        this.mUserId = Integer.valueOf(i2);
    }

    public ProcState() {
    }
}
