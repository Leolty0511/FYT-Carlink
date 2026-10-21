package android.text;

import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.net.http.CharArrayBuffers;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.ParagraphStyle;
import android.text.style.QuoteSpan;
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
import u.a;

/* JADX INFO: loaded from: classes.dex */
public class Html {

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

    public static String escapeHtml(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder();
        withinStyle(sb, charSequence, 0, charSequence.length());
        return sb.toString();
    }

    public static Spanned fromHtml(String str) {
        return fromHtml(str, null, null);
    }

    private static String getOpenParaTagWithDirection(Spanned spanned, int i2, int i3) {
        int i4 = i3 - i2;
        byte[] bArr = new byte[a.e(i4)];
        char[] cArrObtain = TextUtils.obtain(i4);
        TextUtils.getChars(spanned, i2, i3, cArrObtain, 0);
        return AndroidBidi.bidi(2, cArrObtain, bArr, i4, false) != -1 ? "<p dir=\"ltr\">" : "<p dir=\"rtl\">";
    }

    public static String toHtml(Spanned spanned) {
        StringBuilder sb = new StringBuilder();
        withinHtml(sb, spanned);
        return sb.toString();
    }

    private static void withinBlockquote(StringBuilder sb, Spanned spanned, int i2, int i3) {
        sb.append(getOpenParaTagWithDirection(spanned, i2, i3));
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
            withinParagraph(sb, spanned, i4, iIndexOf - i5, i5, iIndexOf == i3);
            i4 = iIndexOf;
        }
        sb.append("</p>\n");
    }

    private static void withinDiv(StringBuilder sb, Spanned spanned, int i2, int i3) {
        while (i2 < i3) {
            int iNextSpanTransition = spanned.nextSpanTransition(i2, i3, QuoteSpan.class);
            QuoteSpan[] quoteSpanArr = (QuoteSpan[]) spanned.getSpans(i2, iNextSpanTransition, QuoteSpan.class);
            for (QuoteSpan quoteSpan : quoteSpanArr) {
                sb.append("<blockquote>");
            }
            withinBlockquote(sb, spanned, i2, iNextSpanTransition);
            for (QuoteSpan quoteSpan2 : quoteSpanArr) {
                sb.append("</blockquote>\n");
            }
            i2 = iNextSpanTransition;
        }
    }

    private static void withinHtml(StringBuilder sb, Spanned spanned) {
        int length = spanned.length();
        int i2 = 0;
        while (i2 < spanned.length()) {
            int iNextSpanTransition = spanned.nextSpanTransition(i2, length, ParagraphStyle.class);
            ParagraphStyle[] paragraphStyleArr = (ParagraphStyle[]) spanned.getSpans(i2, iNextSpanTransition, ParagraphStyle.class);
            String str = " ";
            boolean z2 = false;
            for (int i3 = 0; i3 < paragraphStyleArr.length; i3++) {
                if (paragraphStyleArr[i3] instanceof AlignmentSpan) {
                    Layout.Alignment alignment = ((AlignmentSpan) paragraphStyleArr[i3]).getAlignment();
                    if (alignment == Layout.Alignment.ALIGN_CENTER) {
                        str = "align=\"center\" " + str;
                    } else if (alignment == Layout.Alignment.ALIGN_OPPOSITE) {
                        str = "align=\"right\" " + str;
                    } else {
                        str = "align=\"left\" " + str;
                    }
                    z2 = true;
                }
            }
            if (z2) {
                sb.append("<div ");
                sb.append(str);
                sb.append(">");
            }
            withinDiv(sb, spanned, i2, iNextSpanTransition);
            if (z2) {
                sb.append("</div>");
            }
            i2 = iNextSpanTransition;
        }
    }

    private static void withinParagraph(StringBuilder sb, Spanned spanned, int i2, int i3, int i4, boolean z2) {
        int i5 = i2;
        while (i5 < i3) {
            int iNextSpanTransition = spanned.nextSpanTransition(i5, i3, CharacterStyle.class);
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) spanned.getSpans(i5, iNextSpanTransition, CharacterStyle.class);
            for (int i6 = 0; i6 < characterStyleArr.length; i6++) {
                if (characterStyleArr[i6] instanceof StyleSpan) {
                    int style = ((StyleSpan) characterStyleArr[i6]).getStyle();
                    if ((style & 1) != 0) {
                        sb.append("<b>");
                    }
                    if ((style & 2) != 0) {
                        sb.append("<i>");
                    }
                }
                if ((characterStyleArr[i6] instanceof TypefaceSpan) && ((TypefaceSpan) characterStyleArr[i6]).getFamily().equals("monospace")) {
                    sb.append("<tt>");
                }
                if (characterStyleArr[i6] instanceof SuperscriptSpan) {
                    sb.append("<sup>");
                }
                if (characterStyleArr[i6] instanceof SubscriptSpan) {
                    sb.append("<sub>");
                }
                if (characterStyleArr[i6] instanceof UnderlineSpan) {
                    sb.append("<u>");
                }
                if (characterStyleArr[i6] instanceof StrikethroughSpan) {
                    sb.append("<strike>");
                }
                if (characterStyleArr[i6] instanceof URLSpan) {
                    sb.append("<a href=\"");
                    sb.append(((URLSpan) characterStyleArr[i6]).getURL());
                    sb.append("\">");
                }
                if (characterStyleArr[i6] instanceof ImageSpan) {
                    sb.append("<img src=\"");
                    sb.append(((ImageSpan) characterStyleArr[i6]).getSource());
                    sb.append("\">");
                    i5 = iNextSpanTransition;
                }
                if (characterStyleArr[i6] instanceof AbsoluteSizeSpan) {
                    sb.append("<font size =\"");
                    sb.append(((AbsoluteSizeSpan) characterStyleArr[i6]).getSize() / 6);
                    sb.append("\">");
                }
                if (characterStyleArr[i6] instanceof ForegroundColorSpan) {
                    sb.append("<font color =\"#");
                    String hexString = Integer.toHexString(((ForegroundColorSpan) characterStyleArr[i6]).getForegroundColor() + 16777216);
                    while (hexString.length() < 6) {
                        hexString = "0" + hexString;
                    }
                    sb.append(hexString);
                    sb.append("\">");
                }
            }
            withinStyle(sb, spanned, i5, iNextSpanTransition);
            for (int length = characterStyleArr.length - 1; length >= 0; length--) {
                if (characterStyleArr[length] instanceof ForegroundColorSpan) {
                    sb.append("</font>");
                }
                if (characterStyleArr[length] instanceof AbsoluteSizeSpan) {
                    sb.append("</font>");
                }
                if (characterStyleArr[length] instanceof URLSpan) {
                    sb.append("</a>");
                }
                if (characterStyleArr[length] instanceof StrikethroughSpan) {
                    sb.append("</strike>");
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
                if ((characterStyleArr[length] instanceof TypefaceSpan) && ((TypefaceSpan) characterStyleArr[length]).getFamily().equals("monospace")) {
                    sb.append("</tt>");
                }
                if (characterStyleArr[length] instanceof StyleSpan) {
                    int style2 = ((StyleSpan) characterStyleArr[length]).getStyle();
                    if ((style2 & 1) != 0) {
                        sb.append("</b>");
                    }
                    if ((style2 & 2) != 0) {
                        sb.append("</i>");
                    }
                }
            }
            i5 = iNextSpanTransition;
        }
        String str = z2 ? ProxyProperties.LOCAL_EXCL_LIST : "</p>\n" + getOpenParaTagWithDirection(spanned, i2, i3);
        if (i4 == 1) {
            sb.append("<br>\n");
            return;
        }
        if (i4 == 2) {
            sb.append(str);
            return;
        }
        for (int i7 = 2; i7 < i4; i7++) {
            sb.append("<br>");
        }
        sb.append(str);
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
                    sb.append(CharArrayBuffers.uppercaseAddon);
                } else {
                    sb.append(cCharAt2);
                }
            } else if (cCharAt2 < 56320 && (i4 = i2 + 1) < i3 && (cCharAt = charSequence.charAt(i4)) >= 56320 && cCharAt <= 57343) {
                sb.append("&#");
                sb.append(65536 | ((cCharAt2 - 55296) << 10) | (cCharAt - 56320));
                sb.append(";");
                i2 = i4;
            }
            i2++;
        }
    }

    public static Spanned fromHtml(String str, ImageGetter imageGetter, TagHandler tagHandler) {
        Parser parser = new Parser();
        try {
            parser.setProperty("http://www.ccil.org/~cowan/tagsoup/properties/schema", HtmlParser.schema);
            return new HtmlToSpannedConverter(str, imageGetter, tagHandler, parser).convert();
        } catch (SAXNotRecognizedException e2) {
            throw new RuntimeException(e2);
        } catch (SAXNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }
}
