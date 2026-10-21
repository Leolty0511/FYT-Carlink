package android.media;

import android.net.wifi.WifiEnterpriseConfig;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.StringReader;
import java.util.LinkedList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
class TtmlParser {
    private static final int DEFAULT_FRAMERATE = 30;
    private static final int DEFAULT_SUBFRAMERATE = 1;
    private static final int DEFAULT_TICKRATE = 1;
    static final String TAG = "TtmlParser";
    private long mCurrentRunId;
    private final TtmlNodeListener mListener;
    private XmlPullParser mParser;

    public TtmlParser(TtmlNodeListener ttmlNodeListener) {
        this.mListener = ttmlNodeListener;
    }

    private void extractAttribute(XmlPullParser xmlPullParser, int i2, StringBuilder sb) {
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sb.append(xmlPullParser.getAttributeName(i2));
        sb.append("=\"");
        sb.append(xmlPullParser.getAttributeValue(i2));
        sb.append("\"");
    }

    private boolean isEndOfDoc() {
        return this.mParser.getEventType() == 1;
    }

    private static boolean isSupportedTag(String str) {
        return str.equals(TtmlUtils.TAG_TT) || str.equals(TtmlUtils.TAG_HEAD) || str.equals("body") || str.equals(TtmlUtils.TAG_DIV) || str.equals(TtmlUtils.TAG_P) || str.equals(TtmlUtils.TAG_SPAN) || str.equals(TtmlUtils.TAG_BR) || str.equals(TtmlUtils.TAG_STYLE) || str.equals(TtmlUtils.TAG_STYLING) || str.equals(TtmlUtils.TAG_LAYOUT) || str.equals(TtmlUtils.TAG_REGION) || str.equals(TtmlUtils.TAG_METADATA) || str.equals(TtmlUtils.TAG_SMPTE_IMAGE) || str.equals(TtmlUtils.TAG_SMPTE_DATA) || str.equals(TtmlUtils.TAG_SMPTE_INFORMATION);
    }

    private void loadParser(String str) throws XmlPullParserException {
        XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
        xmlPullParserFactoryNewInstance.setNamespaceAware(false);
        this.mParser = xmlPullParserFactoryNewInstance.newPullParser();
        this.mParser.setInput(new StringReader(str));
    }

    private TtmlNode parseNode(TtmlNode ttmlNode) {
        long j2;
        if (this.mParser.getEventType() != 2) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        long timeExpression = 0;
        long timeExpression2 = Long.MAX_VALUE;
        long timeExpression3 = 0;
        for (int i2 = 0; i2 < this.mParser.getAttributeCount(); i2++) {
            String attributeName = this.mParser.getAttributeName(i2);
            String attributeValue = this.mParser.getAttributeValue(i2);
            String strReplaceFirst = attributeName.replaceFirst("^.*:", "");
            if (strReplaceFirst.equals("begin")) {
                timeExpression = TtmlUtils.parseTimeExpression(attributeValue, 30, 1, 1);
            } else if (strReplaceFirst.equals("end")) {
                timeExpression2 = TtmlUtils.parseTimeExpression(attributeValue, 30, 1, 1);
            } else if (strReplaceFirst.equals(TtmlUtils.ATTR_DURATION)) {
                timeExpression3 = TtmlUtils.parseTimeExpression(attributeValue, 30, 1, 1);
            } else {
                extractAttribute(this.mParser, i2, sb);
            }
        }
        if (ttmlNode != null) {
            long j3 = ttmlNode.mStartTimeMs;
            timeExpression += j3;
            j2 = Long.MAX_VALUE;
            if (timeExpression2 != Long.MAX_VALUE) {
                timeExpression2 += j3;
            }
        } else {
            j2 = Long.MAX_VALUE;
        }
        if (timeExpression3 > 0) {
            if (timeExpression2 != j2) {
                Log.e(TAG, "'dur' and 'end' attributes are defined at the same time.'end' value is ignored.");
            }
            timeExpression2 = timeExpression + timeExpression3;
        }
        if (ttmlNode != null && timeExpression2 == j2) {
            long j4 = ttmlNode.mEndTimeMs;
            if (j4 != j2 && timeExpression2 > j4) {
                timeExpression2 = j4;
            }
        }
        return new TtmlNode(this.mParser.getName(), sb.toString(), null, timeExpression, timeExpression2, ttmlNode, this.mCurrentRunId);
    }

    private void parseTtml() throws XmlPullParserException, IOException {
        LinkedList linkedList = new LinkedList();
        boolean z2 = true;
        int i2 = 0;
        while (!isEndOfDoc()) {
            int eventType = this.mParser.getEventType();
            TtmlNode ttmlNode = (TtmlNode) linkedList.peekLast();
            if (z2) {
                if (eventType == 2) {
                    if (isSupportedTag(this.mParser.getName())) {
                        TtmlNode node = parseNode(ttmlNode);
                        linkedList.addLast(node);
                        if (ttmlNode != null) {
                            ttmlNode.mChildren.add(node);
                        }
                    } else {
                        Log.w(TAG, "Unsupported tag " + this.mParser.getName() + " is ignored.");
                        i2++;
                        z2 = false;
                    }
                } else if (eventType == 4) {
                    String strApplyDefaultSpacePolicy = TtmlUtils.applyDefaultSpacePolicy(this.mParser.getText());
                    if (!TextUtils.isEmpty(strApplyDefaultSpacePolicy)) {
                        ttmlNode.mChildren.add(new TtmlNode(TtmlUtils.PCDATA, "", strApplyDefaultSpacePolicy, 0L, Long.MAX_VALUE, ttmlNode, this.mCurrentRunId));
                    }
                } else if (eventType == 3) {
                    if (this.mParser.getName().equals(TtmlUtils.TAG_P)) {
                        this.mListener.onTtmlNodeParsed((TtmlNode) linkedList.getLast());
                    } else if (this.mParser.getName().equals(TtmlUtils.TAG_TT)) {
                        this.mListener.onRootNodeParsed((TtmlNode) linkedList.getLast());
                    }
                    linkedList.removeLast();
                }
            } else if (eventType == 2) {
                i2++;
            } else if (eventType == 3 && (i2 = i2 - 1) == 0) {
                z2 = true;
            }
            this.mParser.next();
        }
    }

    public void parse(String str, long j2) throws XmlPullParserException, IOException {
        this.mParser = null;
        this.mCurrentRunId = j2;
        loadParser(str);
        parseTtml();
    }
}
