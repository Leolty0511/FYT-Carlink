package android.text.util;

import android.net.LinkQualityInfo;
import android.net.ProxyProperties;
import android.telephony.PhoneNumberUtils;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.util.Patterns;
import android.webkit.WebView;
import android.widget.TextView;
import com.android.i18n.phonenumbers.PhoneNumberMatch;
import com.android.i18n.phonenumbers.PhoneNumberUtil;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class Linkify {
    public static final int ALL = 15;
    public static final int EMAIL_ADDRESSES = 2;
    public static final int MAP_ADDRESSES = 8;
    public static final int PHONE_NUMBERS = 4;
    private static final int PHONE_NUMBER_MINIMUM_DIGITS = 5;
    public static final int WEB_URLS = 1;
    public static final MatchFilter sUrlMatchFilter = new MatchFilter() { // from class: android.text.util.Linkify.1
        @Override // android.text.util.Linkify.MatchFilter
        public final boolean acceptMatch(CharSequence charSequence, int i2, int i3) {
            return i2 == 0 || charSequence.charAt(i2 - 1) != '@';
        }
    };
    public static final MatchFilter sPhoneNumberMatchFilter = new MatchFilter() { // from class: android.text.util.Linkify.2
        @Override // android.text.util.Linkify.MatchFilter
        public final boolean acceptMatch(CharSequence charSequence, int i2, int i3) {
            int i4 = 0;
            while (i2 < i3) {
                if (Character.isDigit(charSequence.charAt(i2)) && (i4 = i4 + 1) >= 5) {
                    return true;
                }
                i2++;
            }
            return false;
        }
    };
    public static final TransformFilter sPhoneNumberTransformFilter = new TransformFilter() { // from class: android.text.util.Linkify.3
        @Override // android.text.util.Linkify.TransformFilter
        public final String transformUrl(Matcher matcher, String str) {
            return Patterns.digitsAndPlusOnly(matcher);
        }
    };

    public interface MatchFilter {
        boolean acceptMatch(CharSequence charSequence, int i2, int i3);
    }

    public interface TransformFilter {
        String transformUrl(Matcher matcher, String str);
    }

    private static final void addLinkMovementMethod(TextView textView) {
        MovementMethod movementMethod = textView.getMovementMethod();
        if ((movementMethod == null || !(movementMethod instanceof LinkMovementMethod)) && textView.getLinksClickable()) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    public static final boolean addLinks(Spannable spannable, int i2) {
        if (i2 == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(uRLSpanArr[length]);
        }
        ArrayList<LinkSpec> arrayList = new ArrayList();
        if ((i2 & 1) != 0) {
            gatherLinks(arrayList, spannable, Patterns.WEB_URL, new String[]{"http://", "https://", "rtsp://"}, sUrlMatchFilter, null);
        }
        if ((i2 & 2) != 0) {
            gatherLinks(arrayList, spannable, Patterns.EMAIL_ADDRESS, new String[]{"mailto:"}, null, null);
        }
        if ((i2 & 4) != 0) {
            gatherTelLinks(arrayList, spannable);
        }
        if ((i2 & 8) != 0) {
            gatherMapLinks(arrayList, spannable);
        }
        pruneOverlaps(arrayList);
        if (arrayList.size() == 0) {
            return false;
        }
        for (LinkSpec linkSpec : arrayList) {
            applyLink(linkSpec.url, linkSpec.start, linkSpec.end, spannable);
        }
        return true;
    }

    private static final void applyLink(String str, int i2, int i3, Spannable spannable) {
        spannable.setSpan(new URLSpan(str), i2, i3, 33);
    }

    private static final void gatherLinks(ArrayList<LinkSpec> arrayList, Spannable spannable, Pattern pattern, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (matchFilter == null || matchFilter.acceptMatch(spannable, iStart, iEnd)) {
                LinkSpec linkSpec = new LinkSpec();
                linkSpec.url = makeUrl(matcher.group(0), strArr, matcher, transformFilter);
                linkSpec.start = iStart;
                linkSpec.end = iEnd;
                arrayList.add(linkSpec);
            }
        }
    }

    private static final void gatherMapLinks(ArrayList<LinkSpec> arrayList, Spannable spannable) {
        int iIndexOf;
        String string = spannable.toString();
        int i2 = 0;
        while (true) {
            String strFindAddress = WebView.findAddress(string);
            if (strFindAddress == null || (iIndexOf = string.indexOf(strFindAddress)) < 0) {
                return;
            }
            LinkSpec linkSpec = new LinkSpec();
            int length = strFindAddress.length() + iIndexOf;
            linkSpec.start = iIndexOf + i2;
            i2 += length;
            linkSpec.end = i2;
            string = string.substring(length);
            try {
                linkSpec.url = WebView.SCHEME_GEO + URLEncoder.encode(strFindAddress, "UTF-8");
                arrayList.add(linkSpec);
            } catch (UnsupportedEncodingException unused) {
            }
        }
    }

    private static final void gatherTelLinks(ArrayList<LinkSpec> arrayList, Spannable spannable) {
        for (PhoneNumberMatch phoneNumberMatch : PhoneNumberUtil.getInstance().findNumbers(spannable.toString(), Locale.getDefault().getCountry(), PhoneNumberUtil.Leniency.POSSIBLE, LinkQualityInfo.UNKNOWN_LONG)) {
            LinkSpec linkSpec = new LinkSpec();
            linkSpec.url = WebView.SCHEME_TEL + PhoneNumberUtils.normalizeNumber(phoneNumberMatch.rawString());
            linkSpec.start = phoneNumberMatch.start();
            linkSpec.end = phoneNumberMatch.end();
            arrayList.add(linkSpec);
        }
    }

    private static final String makeUrl(String str, String[] strArr, Matcher matcher, TransformFilter transformFilter) {
        boolean z2;
        if (transformFilter != null) {
            str = transformFilter.transformUrl(matcher, str);
        }
        int i2 = 0;
        while (true) {
            z2 = true;
            if (i2 >= strArr.length) {
                z2 = false;
                break;
            }
            if (str.regionMatches(true, 0, strArr[i2], 0, strArr[i2].length())) {
                if (!str.regionMatches(false, 0, strArr[i2], 0, strArr[i2].length())) {
                    str = strArr[i2] + str.substring(strArr[i2].length());
                    break;
                }
                break;
            }
            i2++;
        }
        if (z2) {
            return str;
        }
        return strArr[0] + str;
    }

    private static final void pruneOverlaps(ArrayList<LinkSpec> arrayList) {
        int i2;
        int i3;
        Collections.sort(arrayList, new Comparator<LinkSpec>() { // from class: android.text.util.Linkify.4
            @Override // java.util.Comparator
            public final boolean equals(Object obj) {
                return false;
            }

            @Override // java.util.Comparator
            public final int compare(LinkSpec linkSpec, LinkSpec linkSpec2) {
                int i4;
                int i5;
                int i6 = linkSpec.start;
                int i7 = linkSpec2.start;
                if (i6 < i7) {
                    return -1;
                }
                if (i6 <= i7 && (i4 = linkSpec.end) >= (i5 = linkSpec2.end)) {
                    return i4 > i5 ? -1 : 0;
                }
                return 1;
            }
        });
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size - 1) {
            LinkSpec linkSpec = arrayList.get(i4);
            int i5 = i4 + 1;
            LinkSpec linkSpec2 = arrayList.get(i5);
            int i6 = linkSpec.start;
            int i7 = linkSpec2.start;
            if (i6 <= i7 && (i2 = linkSpec.end) > i7) {
                int i8 = linkSpec2.end;
                if (i8 > i2 && i2 - i6 <= i8 - i7) {
                    i3 = i2 - i6 < i8 - i7 ? i4 : -1;
                } else {
                    i3 = i5;
                }
                if (i3 != -1) {
                    arrayList.remove(i3);
                    size--;
                }
            }
            i4 = i5;
        }
    }

    public static final boolean addLinks(TextView textView, int i2) {
        if (i2 == 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (!addLinks((Spannable) text, i2)) {
                return false;
            }
            addLinkMovementMethod(textView);
            return true;
        }
        SpannableString spannableStringValueOf = SpannableString.valueOf(text);
        if (!addLinks(spannableStringValueOf, i2)) {
            return false;
        }
        addLinkMovementMethod(textView);
        textView.setText(spannableStringValueOf);
        return true;
    }

    public static final void addLinks(TextView textView, Pattern pattern, String str) {
        addLinks(textView, pattern, str, (MatchFilter) null, (TransformFilter) null);
    }

    public static final void addLinks(TextView textView, Pattern pattern, String str, MatchFilter matchFilter, TransformFilter transformFilter) {
        SpannableString spannableStringValueOf = SpannableString.valueOf(textView.getText());
        if (addLinks(spannableStringValueOf, pattern, str, matchFilter, transformFilter)) {
            textView.setText(spannableStringValueOf);
            addLinkMovementMethod(textView);
        }
    }

    public static final boolean addLinks(Spannable spannable, Pattern pattern, String str) {
        return addLinks(spannable, pattern, str, (MatchFilter) null, (TransformFilter) null);
    }

    public static final boolean addLinks(Spannable spannable, Pattern pattern, String str, MatchFilter matchFilter, TransformFilter transformFilter) {
        String lowerCase = str == null ? ProxyProperties.LOCAL_EXCL_LIST : str.toLowerCase(Locale.ROOT);
        Matcher matcher = pattern.matcher(spannable);
        boolean z2 = false;
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (matchFilter != null ? matchFilter.acceptMatch(spannable, iStart, iEnd) : true) {
                applyLink(makeUrl(matcher.group(0), new String[]{lowerCase}, matcher, transformFilter), iStart, iEnd, spannable);
                z2 = true;
            }
        }
        return z2;
    }
}
