package android.text;

import android.app.backup.FullBackup;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.net.http.CharArrayBuffers;
import android.provider.CalendarContract;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.ParagraphStyle;
import android.text.style.QuoteSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TextAppearanceSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import java.io.IOException;
import java.io.StringReader;
import org.ccil.cowan.tagsoup.Parser;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes.dex */
class HtmlToSpannedConverter implements ContentHandler {
    private static final float[] HEADER_SIZES = {1.5f, 1.4f, 1.3f, 1.2f, 1.1f, 1.0f};
    private Html.ImageGetter mImageGetter;
    private XMLReader mReader;
    private String mSource;
    private SpannableStringBuilder mSpannableStringBuilder = new SpannableStringBuilder();
    private Html.TagHandler mTagHandler;

    public static class Big {
        private Big() {
        }
    }

    public static class Blockquote {
        private Blockquote() {
        }
    }

    public static class Bold {
        private Bold() {
        }
    }

    public static class Font {
        public String mColor;
        public String mFace;

        public Font(String str, String str2) {
            this.mColor = str;
            this.mFace = str2;
        }
    }

    public static class Header {
        private int mLevel;

        public Header(int i2) {
            this.mLevel = i2;
        }
    }

    public static class Href {
        public String mHref;

        public Href(String str) {
            this.mHref = str;
        }
    }

    public static class Italic {
        private Italic() {
        }
    }

    public static class Monospace {
        private Monospace() {
        }
    }

    public static class Small {
        private Small() {
        }
    }

    public static class Sub {
        private Sub() {
        }
    }

    public static class Super {
        private Super() {
        }
    }

    public static class Underline {
        private Underline() {
        }
    }

    public HtmlToSpannedConverter(String str, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, Parser parser) {
        this.mSource = str;
        this.mImageGetter = imageGetter;
        this.mTagHandler = tagHandler;
        this.mReader = parser;
    }

    private static void end(SpannableStringBuilder spannableStringBuilder, Class cls, Object obj) {
        int length = spannableStringBuilder.length();
        Object last = getLast(spannableStringBuilder, cls);
        int spanStart = spannableStringBuilder.getSpanStart(last);
        spannableStringBuilder.removeSpan(last);
        if (spanStart != length) {
            spannableStringBuilder.setSpan(obj, spanStart, length, 33);
        }
    }

    private static void endA(SpannableStringBuilder spannableStringBuilder) {
        String str;
        int length = spannableStringBuilder.length();
        Object last = getLast(spannableStringBuilder, Href.class);
        int spanStart = spannableStringBuilder.getSpanStart(last);
        spannableStringBuilder.removeSpan(last);
        if (spanStart == length || (str = ((Href) last).mHref) == null) {
            return;
        }
        spannableStringBuilder.setSpan(new URLSpan(str), spanStart, length, 33);
    }

    private static void endFont(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length();
        Object last = getLast(spannableStringBuilder, Font.class);
        int spanStart = spannableStringBuilder.getSpanStart(last);
        spannableStringBuilder.removeSpan(last);
        if (spanStart != length) {
            Font font = (Font) last;
            if (!TextUtils.isEmpty(font.mColor)) {
                if (font.mColor.startsWith("@")) {
                    Resources system = Resources.getSystem();
                    int identifier = system.getIdentifier(font.mColor.substring(1), CalendarContract.ColorsColumns.COLOR, "android");
                    if (identifier != 0) {
                        spannableStringBuilder.setSpan(new TextAppearanceSpan(null, 0, 0, system.getColorStateList(identifier), null), spanStart, length, 33);
                    }
                } else {
                    int htmlColor = Color.getHtmlColor(font.mColor);
                    if (htmlColor != -1) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(htmlColor | (-16777216)), spanStart, length, 33);
                    }
                }
            }
            String str = font.mFace;
            if (str != null) {
                spannableStringBuilder.setSpan(new TypefaceSpan(str), spanStart, length, 33);
            }
        }
    }

    private static void endHeader(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length();
        Object last = getLast(spannableStringBuilder, Header.class);
        int spanStart = spannableStringBuilder.getSpanStart(last);
        spannableStringBuilder.removeSpan(last);
        while (length > spanStart && spannableStringBuilder.charAt(length - 1) == '\n') {
            length--;
        }
        if (spanStart != length) {
            spannableStringBuilder.setSpan(new RelativeSizeSpan(HEADER_SIZES[((Header) last).mLevel]), spanStart, length, 33);
            spannableStringBuilder.setSpan(new StyleSpan(1), spanStart, length, 33);
        }
    }

    private static Object getLast(Spanned spanned, Class cls) {
        Object[] spans = spanned.getSpans(0, spanned.length(), cls);
        if (spans.length == 0) {
            return null;
        }
        return spans[spans.length - 1];
    }

    private static void handleBr(SpannableStringBuilder spannableStringBuilder) {
        spannableStringBuilder.append("\n");
    }

    private void handleEndTag(String str) {
        if (str.equalsIgnoreCase("br")) {
            handleBr(this.mSpannableStringBuilder);
            return;
        }
        if (str.equalsIgnoreCase("p")) {
            handleP(this.mSpannableStringBuilder);
            return;
        }
        if (str.equalsIgnoreCase("div")) {
            handleP(this.mSpannableStringBuilder);
            return;
        }
        if (str.equalsIgnoreCase("strong")) {
            end(this.mSpannableStringBuilder, Bold.class, new StyleSpan(1));
            return;
        }
        if (str.equalsIgnoreCase("b")) {
            end(this.mSpannableStringBuilder, Bold.class, new StyleSpan(1));
            return;
        }
        if (str.equalsIgnoreCase("em")) {
            end(this.mSpannableStringBuilder, Italic.class, new StyleSpan(2));
            return;
        }
        if (str.equalsIgnoreCase("cite")) {
            end(this.mSpannableStringBuilder, Italic.class, new StyleSpan(2));
            return;
        }
        if (str.equalsIgnoreCase("dfn")) {
            end(this.mSpannableStringBuilder, Italic.class, new StyleSpan(2));
            return;
        }
        if (str.equalsIgnoreCase("i")) {
            end(this.mSpannableStringBuilder, Italic.class, new StyleSpan(2));
            return;
        }
        if (str.equalsIgnoreCase("big")) {
            end(this.mSpannableStringBuilder, Big.class, new RelativeSizeSpan(1.25f));
            return;
        }
        if (str.equalsIgnoreCase("small")) {
            end(this.mSpannableStringBuilder, Small.class, new RelativeSizeSpan(0.8f));
            return;
        }
        if (str.equalsIgnoreCase("font")) {
            endFont(this.mSpannableStringBuilder);
            return;
        }
        if (str.equalsIgnoreCase("blockquote")) {
            handleP(this.mSpannableStringBuilder);
            end(this.mSpannableStringBuilder, Blockquote.class, new QuoteSpan());
            return;
        }
        if (str.equalsIgnoreCase("tt")) {
            end(this.mSpannableStringBuilder, Monospace.class, new TypefaceSpan("monospace"));
            return;
        }
        if (str.equalsIgnoreCase(FullBackup.APK_TREE_TOKEN)) {
            endA(this.mSpannableStringBuilder);
            return;
        }
        if (str.equalsIgnoreCase("u")) {
            end(this.mSpannableStringBuilder, Underline.class, new UnderlineSpan());
            return;
        }
        if (str.equalsIgnoreCase("sup")) {
            end(this.mSpannableStringBuilder, Super.class, new SuperscriptSpan());
            return;
        }
        if (str.equalsIgnoreCase("sub")) {
            end(this.mSpannableStringBuilder, Sub.class, new SubscriptSpan());
            return;
        }
        if (str.length() == 2 && Character.toLowerCase(str.charAt(0)) == 'h' && str.charAt(1) >= '1' && str.charAt(1) <= '6') {
            handleP(this.mSpannableStringBuilder);
            endHeader(this.mSpannableStringBuilder);
        } else {
            Html.TagHandler tagHandler = this.mTagHandler;
            if (tagHandler != null) {
                tagHandler.handleTag(false, str, this.mSpannableStringBuilder, this.mReader);
            }
        }
    }

    private static void handleP(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length();
        if (length < 1 || spannableStringBuilder.charAt(length - 1) != '\n') {
            if (length != 0) {
                spannableStringBuilder.append("\n\n");
            }
        } else if (length < 2 || spannableStringBuilder.charAt(length - 2) != '\n') {
            spannableStringBuilder.append("\n");
        }
    }

    private void handleStartTag(String str, Attributes attributes) {
        if (str.equalsIgnoreCase("br")) {
            return;
        }
        if (str.equalsIgnoreCase("p")) {
            handleP(this.mSpannableStringBuilder);
            return;
        }
        if (str.equalsIgnoreCase("div")) {
            handleP(this.mSpannableStringBuilder);
            return;
        }
        if (str.equalsIgnoreCase("strong")) {
            start(this.mSpannableStringBuilder, new Bold());
            return;
        }
        if (str.equalsIgnoreCase("b")) {
            start(this.mSpannableStringBuilder, new Bold());
            return;
        }
        if (str.equalsIgnoreCase("em")) {
            start(this.mSpannableStringBuilder, new Italic());
            return;
        }
        if (str.equalsIgnoreCase("cite")) {
            start(this.mSpannableStringBuilder, new Italic());
            return;
        }
        if (str.equalsIgnoreCase("dfn")) {
            start(this.mSpannableStringBuilder, new Italic());
            return;
        }
        if (str.equalsIgnoreCase("i")) {
            start(this.mSpannableStringBuilder, new Italic());
            return;
        }
        if (str.equalsIgnoreCase("big")) {
            start(this.mSpannableStringBuilder, new Big());
            return;
        }
        if (str.equalsIgnoreCase("small")) {
            start(this.mSpannableStringBuilder, new Small());
            return;
        }
        if (str.equalsIgnoreCase("font")) {
            startFont(this.mSpannableStringBuilder, attributes);
            return;
        }
        if (str.equalsIgnoreCase("blockquote")) {
            handleP(this.mSpannableStringBuilder);
            start(this.mSpannableStringBuilder, new Blockquote());
            return;
        }
        if (str.equalsIgnoreCase("tt")) {
            start(this.mSpannableStringBuilder, new Monospace());
            return;
        }
        if (str.equalsIgnoreCase(FullBackup.APK_TREE_TOKEN)) {
            startA(this.mSpannableStringBuilder, attributes);
            return;
        }
        if (str.equalsIgnoreCase("u")) {
            start(this.mSpannableStringBuilder, new Underline());
            return;
        }
        if (str.equalsIgnoreCase("sup")) {
            start(this.mSpannableStringBuilder, new Super());
            return;
        }
        if (str.equalsIgnoreCase("sub")) {
            start(this.mSpannableStringBuilder, new Sub());
            return;
        }
        if (str.length() == 2 && Character.toLowerCase(str.charAt(0)) == 'h' && str.charAt(1) >= '1' && str.charAt(1) <= '6') {
            handleP(this.mSpannableStringBuilder);
            start(this.mSpannableStringBuilder, new Header(str.charAt(1) - '1'));
        } else {
            if (str.equalsIgnoreCase("img")) {
                startImg(this.mSpannableStringBuilder, attributes, this.mImageGetter);
                return;
            }
            Html.TagHandler tagHandler = this.mTagHandler;
            if (tagHandler != null) {
                tagHandler.handleTag(true, str, this.mSpannableStringBuilder, this.mReader);
            }
        }
    }

    private static void start(SpannableStringBuilder spannableStringBuilder, Object obj) {
        int length = spannableStringBuilder.length();
        spannableStringBuilder.setSpan(obj, length, length, 17);
    }

    private static void startA(SpannableStringBuilder spannableStringBuilder, Attributes attributes) {
        String value = attributes.getValue(ProxyProperties.LOCAL_EXCL_LIST, "href");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.setSpan(new Href(value), length, length, 17);
    }

    private static void startFont(SpannableStringBuilder spannableStringBuilder, Attributes attributes) {
        String value = attributes.getValue(ProxyProperties.LOCAL_EXCL_LIST, CalendarContract.ColorsColumns.COLOR);
        String value2 = attributes.getValue(ProxyProperties.LOCAL_EXCL_LIST, "face");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.setSpan(new Font(value, value2), length, length, 17);
    }

    private static void startImg(SpannableStringBuilder spannableStringBuilder, Attributes attributes, Html.ImageGetter imageGetter) {
        String value = attributes.getValue(ProxyProperties.LOCAL_EXCL_LIST, "src");
        Drawable drawable = imageGetter != null ? imageGetter.getDrawable(value) : null;
        if (drawable == null) {
            drawable = Resources.getSystem().getDrawable(17303150);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append("￼");
        spannableStringBuilder.setSpan(new ImageSpan(drawable, value), length, spannableStringBuilder.length(), 33);
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) {
        char cCharAt;
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < i3; i4++) {
            char c2 = cArr[i4 + i2];
            if (c2 == ' ' || c2 == '\n') {
                int length = sb.length();
                if (length == 0) {
                    int length2 = this.mSpannableStringBuilder.length();
                    cCharAt = length2 == 0 ? '\n' : this.mSpannableStringBuilder.charAt(length2 - 1);
                } else {
                    cCharAt = sb.charAt(length - 1);
                }
                if (cCharAt != ' ' && cCharAt != '\n') {
                    sb.append(CharArrayBuffers.uppercaseAddon);
                }
            } else {
                sb.append(c2);
            }
        }
        this.mSpannableStringBuilder.append((CharSequence) sb);
    }

    public Spanned convert() {
        this.mReader.setContentHandler(this);
        try {
            this.mReader.parse(new InputSource(new StringReader(this.mSource)));
            SpannableStringBuilder spannableStringBuilder = this.mSpannableStringBuilder;
            Object[] spans = spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), ParagraphStyle.class);
            for (int i2 = 0; i2 < spans.length; i2++) {
                int spanStart = this.mSpannableStringBuilder.getSpanStart(spans[i2]);
                int spanEnd = this.mSpannableStringBuilder.getSpanEnd(spans[i2]);
                int i3 = spanEnd - 2;
                if (i3 >= 0 && this.mSpannableStringBuilder.charAt(spanEnd - 1) == '\n' && this.mSpannableStringBuilder.charAt(i3) == '\n') {
                    spanEnd--;
                }
                if (spanEnd == spanStart) {
                    this.mSpannableStringBuilder.removeSpan(spans[i2]);
                } else {
                    this.mSpannableStringBuilder.setSpan(spans[i2], spanStart, spanEnd, 51);
                }
            }
            return this.mSpannableStringBuilder;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        } catch (SAXException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() {
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        handleEndTag(str2);
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i2, int i3) {
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) {
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) {
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() {
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        handleStartTag(str2, attributes);
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
    }
}
