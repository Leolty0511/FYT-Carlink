package android.text;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.graphics.drawable.Drawable;
import android.media.TtmlUtils;
import android.net.wifi.WifiEnterpriseConfig;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.BulletSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.ParagraphStyle;
import android.text.style.QuoteSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import org.ccil.cowan.tagsoup.HTMLSchema;
import org.ccil.cowan.tagsoup.Parser;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes2.dex */
public class Html {
    public static final int FROM_HTML_MODE_COMPACT = 63;
    public static final int FROM_HTML_MODE_LEGACY = 0;
    public static final int FROM_HTML_OPTION_USE_CSS_COLORS = 256;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE = 32;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_DIV = 16;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_HEADING = 2;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_LIST = 8;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM = 4;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH = 1;
    private static final int TO_HTML_PARAGRAPH_FLAG = 1;
    public static final int TO_HTML_PARAGRAPH_LINES_CONSECUTIVE = 0;
    public static final int TO_HTML_PARAGRAPH_LINES_INDIVIDUAL = 1;

    public static class HtmlParser {
        private static final HTMLSchema schema = new HTMLSchema();

        private HtmlParser() {
        }
    }

    public interface ImageGetter {
        Drawable getDrawable(String str);
    }

    public interface TagHandler {
        void handleTag(boolean z2, String str, Editable editable, XMLReader xMLReader);
    }

    private Html() {
    }

    private static void encodeTextAlignmentByDiv(StringBuilder sb, Spanned spanned, int i2) {
        int length = spanned.length();
        int i3 = 0;
        while (i3 < length) {
            int iNextSpanTransition = spanned.nextSpanTransition(i3, length, ParagraphStyle.class);
            ParagraphStyle[] paragraphStyleArr = (ParagraphStyle[]) spanned.getSpans(i3, iNextSpanTransition, ParagraphStyle.class);
            String strJ = WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
            boolean z2 = false;
            for (ParagraphStyle paragraphStyle : paragraphStyleArr) {
                if (paragraphStyle instanceof AlignmentSpan) {
                    Layout.Alignment alignment = ((AlignmentSpan) paragraphStyle).getAlignment();
                    strJ = alignment == Layout.Alignment.ALIGN_CENTER ? c.j("align=\"center\" ", strJ) : alignment == Layout.Alignment.ALIGN_OPPOSITE ? c.j("align=\"right\" ", strJ) : c.j("align=\"left\" ", strJ);
                    z2 = true;
                }
            }
            if (z2) {
                sb.append("<div ");
                sb.append(strJ);
                sb.append(">");
            }
            withinDiv(sb, spanned, i3, iNextSpanTransition, i2);
            if (z2) {
                sb.append("</div>");
            }
            i3 = iNextSpanTransition;
        }
    }

    public static String escapeHtml(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder();
        withinStyle(sb, charSequence, 0, charSequence.length());
        return sb.toString();
    }

    @Deprecated
    public static Spanned fromHtml(String str) {
        return fromHtml(str, 0, null, null);
    }

    private static String getTextDirection(Spanned spanned, int i2, int i3) {
        return TextDirectionHeuristics.FIRSTSTRONG_LTR.isRtl(spanned, i2, i3 - i2) ? " dir=\"rtl\"" : " dir=\"ltr\"";
    }

    private static String getTextStyles(Spanned spanned, int i2, int i3, boolean z2, boolean z3) {
        String str = null;
        String str2 = z2 ? "margin-top:0; margin-bottom:0;" : null;
        if (z3) {
            AlignmentSpan[] alignmentSpanArr = (AlignmentSpan[]) spanned.getSpans(i2, i3, AlignmentSpan.class);
            for (int length = alignmentSpanArr.length - 1; length >= 0; length--) {
                AlignmentSpan alignmentSpan = alignmentSpanArr[length];
                if ((spanned.getSpanFlags(alignmentSpan) & 51) == 51) {
                    Layout.Alignment alignment = alignmentSpan.getAlignment();
                    if (alignment != Layout.Alignment.ALIGN_NORMAL) {
                        if (alignment != Layout.Alignment.ALIGN_CENTER) {
                            if (alignment != Layout.Alignment.ALIGN_OPPOSITE) {
                                break;
                            }
                            str = "text-align:end;";
                            break;
                        }
                        str = "text-align:center;";
                        break;
                    }
                    str = "text-align:start;";
                    break;
                }
            }
        }
        if (str2 == null && str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(" style=\"");
        if (str2 != null && str != null) {
            sb.append(str2);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(str);
        } else if (str2 != null) {
            sb.append(str2);
        } else if (str != null) {
            sb.append(str);
        }
        sb.append("\"");
        return sb.toString();
    }

    @Deprecated
    public static String toHtml(Spanned spanned) {
        return toHtml(spanned, 0);
    }

    private static void withinBlockquote(StringBuilder sb, Spanned spanned, int i2, int i3, int i4) {
        if ((i4 & 1) == 0) {
            withinBlockquoteConsecutive(sb, spanned, i2, i3);
        } else {
            withinBlockquoteIndividual(sb, spanned, i2, i3);
        }
    }

    private static void withinBlockquoteConsecutive(StringBuilder sb, Spanned spanned, int i2, int i3) {
        sb.append("<p");
        sb.append(getTextDirection(spanned, i2, i3));
        sb.append(">");
        int i4 = i2;
        while (i4 < i3) {
            int iIndexOf = TextUtils.indexOf((CharSequence) spanned, '\n', i4, i3);
            if (iIndexOf < 0) {
                iIndexOf = i3;
            }
            int i5 = 0;
            while (iIndexOf < i3 && spanned.charAt(iIndexOf) == '\n') {
                i5++;
                iIndexOf++;
            }
            withinParagraph(sb, spanned, i4, iIndexOf - i5);
            if (i5 == 1) {
                sb.append("<br>\n");
            } else {
                for (int i6 = 2; i6 < i5; i6++) {
                    sb.append("<br>");
                }
                if (iIndexOf != i3) {
                    sb.append("</p>\n");
                    sb.append("<p");
                    sb.append(getTextDirection(spanned, i2, i3));
                    sb.append(">");
                }
            }
            i4 = iIndexOf;
        }
        sb.append("</p>\n");
    }

    private static void withinBlockquoteIndividual(StringBuilder sb, Spanned spanned, int i2, int i3) {
        boolean z2;
        boolean z3 = false;
        while (i2 <= i3) {
            int iIndexOf = TextUtils.indexOf((CharSequence) spanned, '\n', i2, i3);
            if (iIndexOf < 0) {
                iIndexOf = i3;
            }
            if (iIndexOf == i2) {
                if (z3) {
                    sb.append("</ul>\n");
                    z3 = false;
                }
                sb.append("<br>\n");
            } else {
                ParagraphStyle[] paragraphStyleArr = (ParagraphStyle[]) spanned.getSpans(i2, iIndexOf, ParagraphStyle.class);
                int length = paragraphStyleArr.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        z2 = false;
                        break;
                    }
                    ParagraphStyle paragraphStyle = paragraphStyleArr[i4];
                    if ((spanned.getSpanFlags(paragraphStyle) & 51) == 51 && (paragraphStyle instanceof BulletSpan)) {
                        z2 = true;
                        break;
                    }
                    i4++;
                }
                if (z2 && !z3) {
                    sb.append("<ul");
                    sb.append(getTextStyles(spanned, i2, iIndexOf, true, false));
                    sb.append(">\n");
                    z3 = true;
                }
                if (z3 && !z2) {
                    sb.append("</ul>\n");
                    z3 = false;
                }
                String str = z2 ? "li" : TtmlUtils.TAG_P;
                sb.append("<");
                sb.append(str);
                sb.append(getTextDirection(spanned, i2, iIndexOf));
                sb.append(getTextStyles(spanned, i2, iIndexOf, !z2, true));
                sb.append(">");
                withinParagraph(sb, spanned, i2, iIndexOf);
                sb.append("</");
                sb.append(str);
                sb.append(">\n");
                if (iIndexOf == i3 && z3) {
                    sb.append("</ul>\n");
                    z3 = false;
                }
            }
            i2 = iIndexOf + 1;
        }
    }

    private static void withinDiv(StringBuilder sb, Spanned spanned, int i2, int i3, int i4) {
        while (i2 < i3) {
            int iNextSpanTransition = spanned.nextSpanTransition(i2, i3, QuoteSpan.class);
            QuoteSpan[] quoteSpanArr = (QuoteSpan[]) spanned.getSpans(i2, iNextSpanTransition, QuoteSpan.class);
            for (QuoteSpan quoteSpan : quoteSpanArr) {
                sb.append("<blockquote>");
            }
            withinBlockquote(sb, spanned, i2, iNextSpanTransition, i4);
            for (QuoteSpan quoteSpan2 : quoteSpanArr) {
                sb.append("</blockquote>\n");
            }
            i2 = iNextSpanTransition;
        }
    }

    private static void withinHtml(StringBuilder sb, Spanned spanned, int i2) {
        if ((i2 & 1) == 0) {
            encodeTextAlignmentByDiv(sb, spanned, i2);
        } else {
            withinDiv(sb, spanned, 0, spanned.length(), i2);
        }
    }

    private static void withinParagraph(StringBuilder sb, Spanned spanned, int i2, int i3) {
        while (i2 < i3) {
            int iNextSpanTransition = spanned.nextSpanTransition(i2, i3, CharacterStyle.class);
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) spanned.getSpans(i2, iNextSpanTransition, CharacterStyle.class);
            for (int i4 = 0; i4 < characterStyleArr.length; i4++) {
                CharacterStyle characterStyle = characterStyleArr[i4];
                if (characterStyle instanceof StyleSpan) {
                    int style = ((StyleSpan) characterStyle).getStyle();
                    if ((style & 1) != 0) {
                        sb.append("<b>");
                    }
                    if ((style & 2) != 0) {
                        sb.append("<i>");
                    }
                }
                CharacterStyle characterStyle2 = characterStyleArr[i4];
                if ((characterStyle2 instanceof TypefaceSpan) && "monospace".equals(((TypefaceSpan) characterStyle2).getFamily())) {
                    sb.append("<tt>");
                }
                if (characterStyleArr[i4] instanceof SuperscriptSpan) {
                    sb.append("<sup>");
                }
                if (characterStyleArr[i4] instanceof SubscriptSpan) {
                    sb.append("<sub>");
                }
                if (characterStyleArr[i4] instanceof UnderlineSpan) {
                    sb.append("<u>");
                }
                if (characterStyleArr[i4] instanceof StrikethroughSpan) {
                    sb.append("<span style=\"text-decoration:line-through;\">");
                }
                if (characterStyleArr[i4] instanceof URLSpan) {
                    sb.append("<a href=\"");
                    sb.append(((URLSpan) characterStyleArr[i4]).getURL());
                    sb.append("\">");
                }
                if (characterStyleArr[i4] instanceof ImageSpan) {
                    sb.append("<img src=\"");
                    sb.append(((ImageSpan) characterStyleArr[i4]).getSource());
                    sb.append("\">");
                    i2 = iNextSpanTransition;
                }
                CharacterStyle characterStyle3 = characterStyleArr[i4];
                if (characterStyle3 instanceof AbsoluteSizeSpan) {
                    AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) characterStyle3;
                    float size = absoluteSizeSpan.getSize();
                    if (!absoluteSizeSpan.getDip()) {
                        size /= ActivityThread.currentApplication().getResources().getDisplayMetrics().density;
                    }
                    sb.append(String.format("<span style=\"font-size:%.0fpx\";>", Float.valueOf(size)));
                }
                CharacterStyle characterStyle4 = characterStyleArr[i4];
                if (characterStyle4 instanceof RelativeSizeSpan) {
                    sb.append(String.format("<span style=\"font-size:%.2fem;\">", Float.valueOf(((RelativeSizeSpan) characterStyle4).getSizeChange())));
                }
                CharacterStyle characterStyle5 = characterStyleArr[i4];
                if (characterStyle5 instanceof ForegroundColorSpan) {
                    sb.append(String.format("<span style=\"color:#%06X;\">", Integer.valueOf(((ForegroundColorSpan) characterStyle5).getForegroundColor() & 16777215)));
                }
                CharacterStyle characterStyle6 = characterStyleArr[i4];
                if (characterStyle6 instanceof BackgroundColorSpan) {
                    sb.append(String.format("<span style=\"background-color:#%06X;\">", Integer.valueOf(((BackgroundColorSpan) characterStyle6).getBackgroundColor() & 16777215)));
                }
            }
            withinStyle(sb, spanned, i2, iNextSpanTransition);
            for (int length = characterStyleArr.length - 1; length >= 0; length--) {
                if (characterStyleArr[length] instanceof BackgroundColorSpan) {
                    sb.append("</span>");
                }
                if (characterStyleArr[length] instanceof ForegroundColorSpan) {
                    sb.append("</span>");
                }
                if (characterStyleArr[length] instanceof RelativeSizeSpan) {
                    sb.append("</span>");
                }
                if (characterStyleArr[length] instanceof AbsoluteSizeSpan) {
                    sb.append("</span>");
                }
                if (characterStyleArr[length] instanceof URLSpan) {
                    sb.append("</a>");
                }
                if (characterStyleArr[length] instanceof StrikethroughSpan) {
                    sb.append("</span>");
                }
                if (characterStyleArr[length] instanceof UnderlineSpan) {
                    sb.append("</u>");
                }
                if (characterStyleArr[length] instanceof SubscriptSpan) {
                    sb.append("</sub>");
                }
                if (characterStyleArr[length] instanceof SuperscriptSpan) {
                    sb.append("</sup>");
                }
                CharacterStyle characterStyle7 = characterStyleArr[length];
                if ((characterStyle7 instanceof TypefaceSpan) && ((TypefaceSpan) characterStyle7).getFamily().equals("monospace")) {
                    sb.append("</tt>");
                }
                CharacterStyle characterStyle8 = characterStyleArr[length];
                if (characterStyle8 instanceof StyleSpan) {
                    int style2 = ((StyleSpan) characterStyle8).getStyle();
                    if ((style2 & 1) != 0) {
                        sb.append("</b>");
                    }
                    if ((style2 & 2) != 0) {
                        sb.append("</i>");
                    }
                }
            }
            i2 = iNextSpanTransition;
        }
    }

    private static void withinStyle(StringBuilder sb, CharSequence charSequence, int i2, int i3) {
        int i4;
        char cCharAt;
        while (i2 < i3) {
            char cCharAt2 = charSequence.charAt(i2);
            if (cCharAt2 == '<') {
                sb.append("&lt;");
            } else if (cCharAt2 == '>') {
                sb.append("&gt;");
            } else if (cCharAt2 == '&') {
                sb.append("&amp;");
            } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                if (cCharAt2 > '~' || cCharAt2 < ' ') {
                    sb.append("&#");
                    sb.append((int) cCharAt2);
                    sb.append(";");
                } else if (cCharAt2 == ' ') {
                    while (true) {
                        int i5 = i2 + 1;
                        if (i5 >= i3 || charSequence.charAt(i5) != ' ') {
                            break;
                        }
                        sb.append("&nbsp;");
                        i2 = i5;
                    }
                    sb.append(' ');
                } else {
                    sb.append(cCharAt2);
                }
            } else if (cCharAt2 < 56320 && (i4 = i2 + 1) < i3 && (cCharAt = charSequence.charAt(i4)) >= 56320 && cCharAt <= 57343) {
                sb.append("&#");
                sb.append(((cCharAt2 - 55296) << 10) | 65536 | (cCharAt - 56320));
                sb.append(";");
                i2 = i4;
            }
            i2++;
        }
    }

    public static Spanned fromHtml(String str, int i2) {
        return fromHtml(str, i2, null, null);
    }

    public static String toHtml(Spanned spanned, int i2) {
        StringBuilder sb = new StringBuilder();
        withinHtml(sb, spanned, i2);
        return sb.toString();
    }

    @Deprecated
    public static Spanned fromHtml(String str, ImageGetter imageGetter, TagHandler tagHandler) {
        return fromHtml(str, 0, imageGetter, tagHandler);
    }

    public static Spanned fromHtml(String str, int i2, ImageGetter imageGetter, TagHandler tagHandler) {
        Parser parser = new Parser();
        try {
            parser.setProperty("http://www.ccil.org/~cowan/tagsoup/properties/schema", HtmlParser.schema);
            return new HtmlToSpannedConverter(str, imageGetter, tagHandler, parser, i2).convert();
        } catch (SAXNotRecognizedException e2) {
            throw new RuntimeException(e2);
        } catch (SAXNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }
}
