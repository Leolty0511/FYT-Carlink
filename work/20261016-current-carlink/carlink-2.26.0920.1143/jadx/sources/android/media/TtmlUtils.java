package android.media;

import android.accessibilityservice.c;
import android.app.backup.FullBackup;
import android.net.wifi.WifiEnterpriseConfig;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class TtmlUtils {
    public static final String ATTR_BEGIN = "begin";
    public static final String ATTR_DURATION = "dur";
    public static final String ATTR_END = "end";
    public static final long INVALID_TIMESTAMP = Long.MAX_VALUE;
    public static final String PCDATA = "#pcdata";
    public static final String TAG_BODY = "body";
    public static final String TAG_BR = "br";
    public static final String TAG_DIV = "div";
    public static final String TAG_HEAD = "head";
    public static final String TAG_LAYOUT = "layout";
    public static final String TAG_METADATA = "metadata";
    public static final String TAG_P = "p";
    public static final String TAG_REGION = "region";
    public static final String TAG_SMPTE_DATA = "smpte:data";
    public static final String TAG_SMPTE_IMAGE = "smpte:image";
    public static final String TAG_SMPTE_INFORMATION = "smpte:information";
    public static final String TAG_SPAN = "span";
    public static final String TAG_STYLE = "style";
    public static final String TAG_STYLING = "styling";
    public static final String TAG_TT = "tt";
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    private TtmlUtils() {
    }

    public static String applyDefaultSpacePolicy(String str) {
        return applySpacePolicy(str, true);
    }

    public static String applySpacePolicy(String str, boolean z2) {
        String strReplaceAll = str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n");
        if (z2) {
            strReplaceAll = strReplaceAll.replaceAll("\n", WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        return strReplaceAll.replaceAll("[ \t\\x0B\f\r]+", WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
    }

    public static String extractText(TtmlNode ttmlNode, long j2, long j3) {
        StringBuilder sb = new StringBuilder();
        extractText(ttmlNode, j2, j3, sb, false);
        return sb.toString().replaceAll("\n$", "");
    }

    public static String extractTtmlFragment(TtmlNode ttmlNode, long j2, long j3) {
        StringBuilder sb = new StringBuilder();
        extractTtmlFragment(ttmlNode, j2, j3, sb);
        return sb.toString();
    }

    public static long parseTimeExpression(String str, int i2, int i3, int i4) {
        double d2;
        double d3;
        Matcher matcher = CLOCK_TIME.matcher(str);
        if (matcher.matches()) {
            double d4 = (Long.parseLong(matcher.group(1)) * 3600) + (Long.parseLong(matcher.group(2)) * 60) + Long.parseLong(matcher.group(3));
            String strGroup = matcher.group(4);
            double d5 = d4 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d6 = d5 + (strGroup2 != null ? Long.parseLong(strGroup2) / ((double) i2) : 0.0d);
            String strGroup3 = matcher.group(6);
            return (long) ((d6 + (strGroup3 != null ? (Long.parseLong(strGroup3) / ((double) i3)) / ((double) i2) : 0.0d)) * 1000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (!matcher2.matches()) {
            throw new NumberFormatException(c.j("Malformed time expression : ", str));
        }
        double d7 = Double.parseDouble(matcher2.group(1));
        String strGroup4 = matcher2.group(2);
        if (!strGroup4.equals("h")) {
            if (strGroup4.equals("m")) {
                d3 = 6.0E7d;
            } else if (strGroup4.equals("s")) {
                d7 *= 1000000.0d;
            } else if (strGroup4.equals("ms")) {
                d7 *= 1000.0d;
            } else {
                if (strGroup4.equals(FullBackup.FILES_TREE_TOKEN)) {
                    d2 = i2;
                } else if (strGroup4.equals("t")) {
                    d2 = i4;
                }
                d7 /= d2;
                d7 *= 1000000.0d;
            }
            return (long) d7;
        }
        d3 = 3.6E9d;
        d7 *= d3;
        return (long) d7;
    }

    private static void extractText(TtmlNode ttmlNode, long j2, long j3, StringBuilder sb, boolean z2) {
        if (ttmlNode.mName.equals(PCDATA) && z2) {
            sb.append(ttmlNode.mText);
            return;
        }
        if (ttmlNode.mName.equals(TAG_BR) && z2) {
            sb.append("\n");
            return;
        }
        if (!ttmlNode.mName.equals(TAG_METADATA) && ttmlNode.isActive(j2, j3)) {
            boolean zEquals = ttmlNode.mName.equals(TAG_P);
            int length = sb.length();
            for (int i2 = 0; i2 < ttmlNode.mChildren.size(); i2++) {
                extractText(ttmlNode.mChildren.get(i2), j2, j3, sb, zEquals || z2);
            }
            if (!zEquals || length == sb.length()) {
                return;
            }
            sb.append("\n");
        }
    }

    private static void extractTtmlFragment(TtmlNode ttmlNode, long j2, long j3, StringBuilder sb) {
        if (ttmlNode.mName.equals(PCDATA)) {
            sb.append(ttmlNode.mText);
            return;
        }
        if (ttmlNode.mName.equals(TAG_BR)) {
            sb.append("<br/>");
            return;
        }
        if (ttmlNode.isActive(j2, j3)) {
            sb.append("<");
            sb.append(ttmlNode.mName);
            sb.append(ttmlNode.mAttributes);
            sb.append(">");
            for (int i2 = 0; i2 < ttmlNode.mChildren.size(); i2++) {
                extractTtmlFragment(ttmlNode.mChildren.get(i2), j2, j3, sb);
            }
            sb.append("</");
            sb.append(ttmlNode.mName);
            sb.append(">");
        }
    }
}
