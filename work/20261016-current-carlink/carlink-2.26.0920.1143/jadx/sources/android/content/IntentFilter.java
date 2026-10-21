package android.content;

import android.accessibilityservice.c;
import android.app.m;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PatternMatcher;
import android.text.TextUtils;
import android.util.AndroidException;
import android.util.Log;
import android.util.Printer;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class IntentFilter implements Parcelable {
    private static final String ACTION_STR = "action";
    private static final String AGLOB_STR = "aglob";
    private static final String AUTH_STR = "auth";
    private static final String AUTO_VERIFY_STR = "autoVerify";
    private static final String CAT_STR = "cat";
    public static final Parcelable.Creator<IntentFilter> CREATOR = new Parcelable.Creator<IntentFilter>() { // from class: android.content.IntentFilter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IntentFilter createFromParcel(Parcel parcel) {
            return new IntentFilter(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IntentFilter[] newArray(int i2) {
            return new IntentFilter[i2];
        }
    };
    private static final String HOST_STR = "host";
    private static final String LITERAL_STR = "literal";
    public static final int MATCH_ADJUSTMENT_MASK = 65535;
    public static final int MATCH_ADJUSTMENT_NORMAL = 32768;
    public static final int MATCH_CATEGORY_EMPTY = 1048576;
    public static final int MATCH_CATEGORY_HOST = 3145728;
    public static final int MATCH_CATEGORY_MASK = 268369920;
    public static final int MATCH_CATEGORY_PATH = 5242880;
    public static final int MATCH_CATEGORY_PORT = 4194304;
    public static final int MATCH_CATEGORY_SCHEME = 2097152;
    public static final int MATCH_CATEGORY_SCHEME_SPECIFIC_PART = 5767168;
    public static final int MATCH_CATEGORY_TYPE = 6291456;
    private static final String NAME_STR = "name";
    public static final int NO_MATCH_ACTION = -3;
    public static final int NO_MATCH_CATEGORY = -4;
    public static final int NO_MATCH_DATA = -2;
    public static final int NO_MATCH_TYPE = -1;
    private static final String PATH_STR = "path";
    private static final String PORT_STR = "port";
    private static final String PREFIX_STR = "prefix";
    public static final String SCHEME_HTTP = "http";
    public static final String SCHEME_HTTPS = "https";
    private static final String SCHEME_STR = "scheme";
    private static final String SGLOB_STR = "sglob";
    private static final String SSP_STR = "ssp";
    private static final int STATE_NEED_VERIFY = 16;
    private static final int STATE_NEED_VERIFY_CHECKED = 256;
    private static final int STATE_VERIFIED = 4096;
    private static final int STATE_VERIFY_AUTO = 1;
    public static final int SYSTEM_HIGH_PRIORITY = 1000;
    public static final int SYSTEM_LOW_PRIORITY = -1000;
    private static final String TYPE_STR = "type";
    public static final int VISIBILITY_EXPLICIT = 1;
    public static final int VISIBILITY_IMPLICIT = 2;
    public static final int VISIBILITY_NONE = 0;
    private final ArrayList<String> mActions;
    private ArrayList<String> mCategories;
    private ArrayList<AuthorityEntry> mDataAuthorities;
    private ArrayList<PatternMatcher> mDataPaths;
    private ArrayList<PatternMatcher> mDataSchemeSpecificParts;
    private ArrayList<String> mDataSchemes;
    private ArrayList<String> mDataTypes;
    private boolean mHasPartialTypes;
    private int mInstantAppVisibility;
    private int mOrder;
    private int mPriority;
    private int mVerifyState;

    @Retention(RetentionPolicy.SOURCE)
    public @interface InstantAppVisibility {
    }

    public static class MalformedMimeTypeException extends AndroidException {
        public MalformedMimeTypeException() {
        }

        public MalformedMimeTypeException(String str) {
            super(str);
        }
    }

    public IntentFilter() {
        this.mCategories = null;
        this.mDataSchemes = null;
        this.mDataSchemeSpecificParts = null;
        this.mDataAuthorities = null;
        this.mDataPaths = null;
        this.mDataTypes = null;
        this.mHasPartialTypes = false;
        this.mPriority = 0;
        this.mActions = new ArrayList<>();
    }

    private static String[] addStringToSet(String[] strArr, String str, int[] iArr, int i2) {
        if (findStringInSet(strArr, str, iArr, i2) >= 0) {
            return strArr;
        }
        if (strArr == null) {
            String[] strArr2 = new String[2];
            strArr2[0] = str;
            iArr[i2] = 1;
            return strArr2;
        }
        int i3 = iArr[i2];
        if (i3 < strArr.length) {
            strArr[i3] = str;
            iArr[i2] = i3 + 1;
            return strArr;
        }
        String[] strArr3 = new String[m.z(i3, 3, 2, 2)];
        System.arraycopy(strArr, 0, strArr3, 0, i3);
        strArr3[i3] = str;
        iArr[i2] = i3 + 1;
        return strArr3;
    }

    public static IntentFilter create(String str, String str2) {
        try {
            return new IntentFilter(str, str2);
        } catch (MalformedMimeTypeException e2) {
            throw new RuntimeException("Bad MIME type", e2);
        }
    }

    private final boolean findMimeType(String str) {
        ArrayList<String> arrayList = this.mDataTypes;
        if (str == null) {
            return false;
        }
        if (arrayList.contains(str)) {
            return true;
        }
        int length = str.length();
        if (length == 3 && str.equals("*/*")) {
            return !arrayList.isEmpty();
        }
        if (this.mHasPartialTypes && arrayList.contains(PhoneConstants.APN_TYPE_ALL)) {
            return true;
        }
        int iIndexOf = str.indexOf(47);
        if (iIndexOf > 0) {
            if (this.mHasPartialTypes && arrayList.contains(str.substring(0, iIndexOf))) {
                return true;
            }
            if (length == iIndexOf + 2) {
                int i2 = iIndexOf + 1;
                if (str.charAt(i2) == '*') {
                    int size = arrayList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        if (str.regionMatches(0, arrayList.get(i3), 0, i2)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private static int findStringInSet(String[] strArr, String str, int[] iArr, int i2) {
        if (strArr == null) {
            return -1;
        }
        int i3 = iArr[i2];
        for (int i4 = 0; i4 < i3; i4++) {
            if (strArr[i4].equals(str)) {
                return i4;
            }
        }
        return -1;
    }

    private static String[] removeStringFromSet(String[] strArr, String str, int[] iArr, int i2) {
        int iFindStringInSet = findStringInSet(strArr, str, iArr, i2);
        if (iFindStringInSet < 0) {
            return strArr;
        }
        int i3 = iArr[i2];
        if (i3 <= strArr.length / 4) {
            String[] strArr2 = new String[strArr.length / 3];
            if (iFindStringInSet > 0) {
                System.arraycopy(strArr, 0, strArr2, 0, iFindStringInSet);
            }
            int i4 = iFindStringInSet + 1;
            if (i4 < i3) {
                System.arraycopy(strArr, i4, strArr2, iFindStringInSet, i3 - i4);
            }
            return strArr2;
        }
        int i5 = iFindStringInSet + 1;
        int i6 = i3 - i5;
        if (i6 > 0) {
            System.arraycopy(strArr, i5, strArr, iFindStringInSet, i6);
        }
        int i7 = i3 - 1;
        strArr[i7] = null;
        iArr[i2] = i7;
        return strArr;
    }

    public final Iterator<String> actionsIterator() {
        ArrayList<String> arrayList = this.mActions;
        if (arrayList != null) {
            return arrayList.iterator();
        }
        return null;
    }

    public final void addAction(String str) {
        if (this.mActions.contains(str)) {
            return;
        }
        this.mActions.add(str.intern());
    }

    public final void addCategory(String str) {
        if (this.mCategories == null) {
            this.mCategories = new ArrayList<>();
        }
        if (this.mCategories.contains(str)) {
            return;
        }
        this.mCategories.add(str.intern());
    }

    public final void addDataAuthority(String str, String str2) {
        if (str2 != null) {
            str2 = str2.intern();
        }
        addDataAuthority(new AuthorityEntry(str.intern(), str2));
    }

    public final void addDataPath(String str, int i2) {
        addDataPath(new PatternMatcher(str.intern(), i2));
    }

    public final void addDataScheme(String str) {
        if (this.mDataSchemes == null) {
            this.mDataSchemes = new ArrayList<>();
        }
        if (this.mDataSchemes.contains(str)) {
            return;
        }
        this.mDataSchemes.add(str.intern());
    }

    public final void addDataSchemeSpecificPart(String str, int i2) {
        addDataSchemeSpecificPart(new PatternMatcher(str, i2));
    }

    public final void addDataType(String str) throws MalformedMimeTypeException {
        int i2;
        int iIndexOf = str.indexOf(47);
        int length = str.length();
        if (iIndexOf <= 0 || length < (i2 = iIndexOf + 2)) {
            throw new MalformedMimeTypeException(str);
        }
        if (this.mDataTypes == null) {
            this.mDataTypes = new ArrayList<>();
        }
        if (length != i2 || str.charAt(iIndexOf + 1) != '*') {
            if (this.mDataTypes.contains(str)) {
                return;
            }
            this.mDataTypes.add(str.intern());
        } else {
            String strSubstring = str.substring(0, iIndexOf);
            if (!this.mDataTypes.contains(strSubstring)) {
                this.mDataTypes.add(strSubstring.intern());
            }
            this.mHasPartialTypes = true;
        }
    }

    public final Iterator<AuthorityEntry> authoritiesIterator() {
        ArrayList<AuthorityEntry> arrayList = this.mDataAuthorities;
        if (arrayList != null) {
            return arrayList.iterator();
        }
        return null;
    }

    public final Iterator<String> categoriesIterator() {
        ArrayList<String> arrayList = this.mCategories;
        if (arrayList != null) {
            return arrayList.iterator();
        }
        return null;
    }

    public final int countActions() {
        return this.mActions.size();
    }

    public final int countCategories() {
        ArrayList<String> arrayList = this.mCategories;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public final int countDataAuthorities() {
        ArrayList<AuthorityEntry> arrayList = this.mDataAuthorities;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public final int countDataPaths() {
        ArrayList<PatternMatcher> arrayList = this.mDataPaths;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public final int countDataSchemeSpecificParts() {
        ArrayList<PatternMatcher> arrayList = this.mDataSchemeSpecificParts;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public final int countDataSchemes() {
        ArrayList<String> arrayList = this.mDataSchemes;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public final int countDataTypes() {
        ArrayList<String> arrayList = this.mDataTypes;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public boolean debugCheck() {
        return true;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        StringBuilder sb = new StringBuilder(256);
        if (this.mActions.size() > 0) {
            Iterator<String> it = this.mActions.iterator();
            while (it.hasNext()) {
                sb.setLength(0);
                sb.append(str);
                sb.append("Action: \"");
                sb.append(it.next());
                sb.append("\"");
                printer.println(sb.toString());
            }
        }
        ArrayList<String> arrayList = this.mCategories;
        if (arrayList != null) {
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                sb.setLength(0);
                sb.append(str);
                sb.append("Category: \"");
                sb.append(it2.next());
                sb.append("\"");
                printer.println(sb.toString());
            }
        }
        ArrayList<String> arrayList2 = this.mDataSchemes;
        if (arrayList2 != null) {
            Iterator<String> it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                sb.setLength(0);
                sb.append(str);
                sb.append("Scheme: \"");
                sb.append(it3.next());
                sb.append("\"");
                printer.println(sb.toString());
            }
        }
        ArrayList<PatternMatcher> arrayList3 = this.mDataSchemeSpecificParts;
        if (arrayList3 != null) {
            for (PatternMatcher patternMatcher : arrayList3) {
                sb.setLength(0);
                sb.append(str);
                sb.append("Ssp: \"");
                sb.append(patternMatcher);
                c.B(sb, "\"", printer);
            }
        }
        ArrayList<AuthorityEntry> arrayList4 = this.mDataAuthorities;
        if (arrayList4 != null) {
            for (AuthorityEntry authorityEntry : arrayList4) {
                sb.setLength(0);
                sb.append(str);
                sb.append("Authority: \"");
                sb.append(authorityEntry.mHost);
                sb.append("\": ");
                sb.append(authorityEntry.mPort);
                if (authorityEntry.mWild) {
                    sb.append(" WILD");
                }
                printer.println(sb.toString());
            }
        }
        ArrayList<PatternMatcher> arrayList5 = this.mDataPaths;
        if (arrayList5 != null) {
            for (PatternMatcher patternMatcher2 : arrayList5) {
                sb.setLength(0);
                sb.append(str);
                sb.append("Path: \"");
                sb.append(patternMatcher2);
                c.B(sb, "\"", printer);
            }
        }
        ArrayList<String> arrayList6 = this.mDataTypes;
        if (arrayList6 != null) {
            Iterator<String> it4 = arrayList6.iterator();
            while (it4.hasNext()) {
                sb.setLength(0);
                sb.append(str);
                sb.append("Type: \"");
                sb.append(it4.next());
                sb.append("\"");
                printer.println(sb.toString());
            }
        }
        if (this.mPriority != 0 || this.mHasPartialTypes) {
            m.v(sb, 0, str, "mPriority=");
            sb.append(this.mPriority);
            sb.append(", mHasPartialTypes=");
            sb.append(this.mHasPartialTypes);
            printer.println(sb.toString());
        }
        if (getAutoVerify()) {
            sb.setLength(0);
            sb.append(str);
            sb.append("AutoVerify=");
            sb.append(getAutoVerify());
            printer.println(sb.toString());
        }
    }

    public final String getAction(int i2) {
        return this.mActions.get(i2);
    }

    public final boolean getAutoVerify() {
        return (this.mVerifyState & 1) == 1;
    }

    public final String getCategory(int i2) {
        return this.mCategories.get(i2);
    }

    public final AuthorityEntry getDataAuthority(int i2) {
        return this.mDataAuthorities.get(i2);
    }

    public final PatternMatcher getDataPath(int i2) {
        return this.mDataPaths.get(i2);
    }

    public final String getDataScheme(int i2) {
        return this.mDataSchemes.get(i2);
    }

    public final PatternMatcher getDataSchemeSpecificPart(int i2) {
        return this.mDataSchemeSpecificParts.get(i2);
    }

    public final String getDataType(int i2) {
        return this.mDataTypes.get(i2);
    }

    public String[] getHosts() {
        ArrayList<String> hostsList = getHostsList();
        return (String[]) hostsList.toArray(new String[hostsList.size()]);
    }

    public ArrayList<String> getHostsList() {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<AuthorityEntry> itAuthoritiesIterator = authoritiesIterator();
        if (itAuthoritiesIterator != null) {
            while (itAuthoritiesIterator.hasNext()) {
                arrayList.add(itAuthoritiesIterator.next().getHost());
            }
        }
        return arrayList;
    }

    public final int getOrder() {
        return this.mOrder;
    }

    public final int getPriority() {
        return this.mPriority;
    }

    public int getVisibilityToInstantApp() {
        return this.mInstantAppVisibility;
    }

    public final boolean handleAllWebDataURI() {
        return hasCategory(Intent.CATEGORY_APP_BROWSER) || (handlesWebUris(false) && countDataAuthorities() == 0);
    }

    public final boolean handlesWebUris(boolean z2) {
        ArrayList<String> arrayList;
        if (!hasAction("android.intent.action.VIEW") || !hasCategory(Intent.CATEGORY_BROWSABLE) || (arrayList = this.mDataSchemes) == null || arrayList.size() == 0) {
            return false;
        }
        int size = this.mDataSchemes.size();
        for (int i2 = 0; i2 < size; i2++) {
            String str = this.mDataSchemes.get(i2);
            boolean z3 = SCHEME_HTTP.equals(str) || SCHEME_HTTPS.equals(str);
            if (z2) {
                if (!z3) {
                    return false;
                }
            } else if (z3) {
                return true;
            }
        }
        return z2;
    }

    public final boolean hasAction(String str) {
        return str != null && this.mActions.contains(str);
    }

    public final boolean hasCategory(String str) {
        ArrayList<String> arrayList = this.mCategories;
        return arrayList != null && arrayList.contains(str);
    }

    public final boolean hasDataAuthority(Uri uri) {
        return matchDataAuthority(uri) >= 0;
    }

    public final boolean hasDataPath(String str) {
        ArrayList<PatternMatcher> arrayList = this.mDataPaths;
        if (arrayList == null) {
            return false;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mDataPaths.get(i2).match(str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasDataScheme(String str) {
        ArrayList<String> arrayList = this.mDataSchemes;
        return arrayList != null && arrayList.contains(str);
    }

    public final boolean hasDataSchemeSpecificPart(String str) {
        ArrayList<PatternMatcher> arrayList = this.mDataSchemeSpecificParts;
        if (arrayList == null) {
            return false;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mDataSchemeSpecificParts.get(i2).match(str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasDataType(String str) {
        return this.mDataTypes != null && findMimeType(str);
    }

    public final boolean hasExactDataType(String str) {
        ArrayList<String> arrayList = this.mDataTypes;
        return arrayList != null && arrayList.contains(str);
    }

    public boolean isExplicitlyVisibleToInstantApp() {
        return this.mInstantAppVisibility == 1;
    }

    public boolean isImplicitlyVisibleToInstantApp() {
        return this.mInstantAppVisibility == 2;
    }

    public final boolean isVerified() {
        int i2 = this.mVerifyState;
        return (i2 & 256) == 256 && (i2 & 16) == 16;
    }

    public boolean isVisibleToInstantApp() {
        return this.mInstantAppVisibility != 0;
    }

    public final int match(ContentResolver contentResolver, Intent intent, boolean z2, String str) {
        return match(intent.getAction(), z2 ? intent.resolveType(contentResolver) : intent.getType(), intent.getScheme(), intent.getData(), intent.getCategories(), str);
    }

    public final boolean matchAction(String str) {
        return hasAction(str);
    }

    public final String matchCategories(Set<String> set) {
        if (set == null) {
            return null;
        }
        Iterator<String> it = set.iterator();
        if (this.mCategories == null) {
            if (it.hasNext()) {
                return it.next();
            }
            return null;
        }
        while (it.hasNext()) {
            String next = it.next();
            if (!this.mCategories.contains(next)) {
                return next;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0056, code lost:
    
        if (r6 == (-2)) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int matchData(java.lang.String r5, java.lang.String r6, android.net.Uri r7) {
        /*
            r4 = this;
            java.util.ArrayList<java.lang.String> r0 = r4.mDataTypes
            java.util.ArrayList<java.lang.String> r1 = r4.mDataSchemes
            r2 = -2
            if (r0 != 0) goto L11
            if (r1 != 0) goto L11
            if (r5 != 0) goto L10
            if (r7 != 0) goto L10
            r2 = 1081344(0x108000, float:1.515286E-39)
        L10:
            return r2
        L11:
            java.lang.String r3 = ""
            if (r1 == 0) goto L59
            if (r6 == 0) goto L18
            goto L19
        L18:
            r6 = r3
        L19:
            boolean r6 = r1.contains(r6)
            if (r6 == 0) goto L58
            java.util.ArrayList<android.os.PatternMatcher> r6 = r4.mDataSchemeSpecificParts
            r1 = 5767168(0x580000, float:8.081524E-39)
            if (r6 == 0) goto L35
            if (r7 == 0) goto L35
            java.lang.String r6 = r7.getSchemeSpecificPart()
            boolean r6 = r4.hasDataSchemeSpecificPart(r6)
            if (r6 == 0) goto L33
            r6 = r1
            goto L37
        L33:
            r6 = r2
            goto L37
        L35:
            r6 = 2097152(0x200000, float:2.938736E-39)
        L37:
            if (r6 == r1) goto L56
            java.util.ArrayList<android.content.IntentFilter$AuthorityEntry> r1 = r4.mDataAuthorities
            if (r1 == 0) goto L56
            int r6 = r4.matchDataAuthority(r7)
            if (r6 < 0) goto L55
            java.util.ArrayList<android.os.PatternMatcher> r1 = r4.mDataPaths
            if (r1 != 0) goto L48
            goto L56
        L48:
            java.lang.String r6 = r7.getPath()
            boolean r6 = r4.hasDataPath(r6)
            if (r6 == 0) goto L55
            r6 = 5242880(0x500000, float:7.34684E-39)
            goto L56
        L55:
            return r2
        L56:
            if (r6 != r2) goto L74
        L58:
            return r2
        L59:
            if (r6 == 0) goto L72
            boolean r7 = r3.equals(r6)
            if (r7 != 0) goto L72
            java.lang.String r7 = "content"
            boolean r7 = r7.equals(r6)
            if (r7 != 0) goto L72
            java.lang.String r7 = "file"
            boolean r6 = r7.equals(r6)
            if (r6 != 0) goto L72
            return r2
        L72:
            r6 = 1048576(0x100000, float:1.469368E-39)
        L74:
            r7 = -1
            if (r0 == 0) goto L81
            boolean r5 = r4.findMimeType(r5)
            if (r5 == 0) goto L80
            r6 = 6291456(0x600000, float:8.816208E-39)
            goto L84
        L80:
            return r7
        L81:
            if (r5 == 0) goto L84
            return r7
        L84:
            r5 = 32768(0x8000, float:4.5918E-41)
            int r6 = r6 + r5
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: android.content.IntentFilter.matchData(java.lang.String, java.lang.String, android.net.Uri):int");
    }

    public final int matchDataAuthority(Uri uri) {
        ArrayList<AuthorityEntry> arrayList = this.mDataAuthorities;
        if (arrayList != null && uri != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                int iMatch = this.mDataAuthorities.get(i2).match(uri);
                if (iMatch >= 0) {
                    return iMatch;
                }
            }
        }
        return -2;
    }

    public final boolean needsVerification() {
        return getAutoVerify() && handlesWebUris(true);
    }

    public final Iterator<PatternMatcher> pathsIterator() {
        ArrayList<PatternMatcher> arrayList = this.mDataPaths;
        if (arrayList != null) {
            return arrayList.iterator();
        }
        return null;
    }

    public void readFromXml(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, AUTO_VERIFY_STR);
        setAutoVerify(TextUtils.isEmpty(attributeValue) ? false : Boolean.getBoolean(attributeValue));
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
            if (next != 3 && next != 4) {
                String name = xmlPullParser.getName();
                if (name.equals("action")) {
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, "name");
                    if (attributeValue2 != null) {
                        addAction(attributeValue2);
                    }
                } else if (name.equals(CAT_STR)) {
                    String attributeValue3 = xmlPullParser.getAttributeValue(null, "name");
                    if (attributeValue3 != null) {
                        addCategory(attributeValue3);
                    }
                } else if (name.equals("type")) {
                    String attributeValue4 = xmlPullParser.getAttributeValue(null, "name");
                    if (attributeValue4 != null) {
                        try {
                            addDataType(attributeValue4);
                        } catch (MalformedMimeTypeException unused) {
                        }
                    }
                } else if (name.equals(SCHEME_STR)) {
                    String attributeValue5 = xmlPullParser.getAttributeValue(null, "name");
                    if (attributeValue5 != null) {
                        addDataScheme(attributeValue5);
                    }
                } else if (name.equals(SSP_STR)) {
                    String attributeValue6 = xmlPullParser.getAttributeValue(null, LITERAL_STR);
                    if (attributeValue6 != null) {
                        addDataSchemeSpecificPart(attributeValue6, 0);
                    } else {
                        String attributeValue7 = xmlPullParser.getAttributeValue(null, PREFIX_STR);
                        if (attributeValue7 != null) {
                            addDataSchemeSpecificPart(attributeValue7, 1);
                        } else {
                            String attributeValue8 = xmlPullParser.getAttributeValue(null, SGLOB_STR);
                            if (attributeValue8 != null) {
                                addDataSchemeSpecificPart(attributeValue8, 2);
                            } else {
                                String attributeValue9 = xmlPullParser.getAttributeValue(null, AGLOB_STR);
                                if (attributeValue9 != null) {
                                    addDataSchemeSpecificPart(attributeValue9, 3);
                                }
                            }
                        }
                    }
                } else if (name.equals(AUTH_STR)) {
                    String attributeValue10 = xmlPullParser.getAttributeValue(null, HOST_STR);
                    String attributeValue11 = xmlPullParser.getAttributeValue(null, "port");
                    if (attributeValue10 != null) {
                        addDataAuthority(attributeValue10, attributeValue11);
                    }
                } else if (name.equals(PATH_STR)) {
                    String attributeValue12 = xmlPullParser.getAttributeValue(null, LITERAL_STR);
                    if (attributeValue12 != null) {
                        addDataPath(attributeValue12, 0);
                    } else {
                        String attributeValue13 = xmlPullParser.getAttributeValue(null, PREFIX_STR);
                        if (attributeValue13 != null) {
                            addDataPath(attributeValue13, 1);
                        } else {
                            String attributeValue14 = xmlPullParser.getAttributeValue(null, SGLOB_STR);
                            if (attributeValue14 != null) {
                                addDataPath(attributeValue14, 2);
                            } else {
                                String attributeValue15 = xmlPullParser.getAttributeValue(null, AGLOB_STR);
                                if (attributeValue15 != null) {
                                    addDataPath(attributeValue15, 3);
                                }
                            }
                        }
                    }
                } else {
                    Log.w("IntentFilter", "Unknown tag parsing IntentFilter: ".concat(name));
                }
                XmlUtils.skipCurrentTag(xmlPullParser);
            }
        }
    }

    public final Iterator<PatternMatcher> schemeSpecificPartsIterator() {
        ArrayList<PatternMatcher> arrayList = this.mDataSchemeSpecificParts;
        if (arrayList != null) {
            return arrayList.iterator();
        }
        return null;
    }

    public final Iterator<String> schemesIterator() {
        ArrayList<String> arrayList = this.mDataSchemes;
        if (arrayList != null) {
            return arrayList.iterator();
        }
        return null;
    }

    public final void setAutoVerify(boolean z2) {
        int i2 = this.mVerifyState & (-2);
        this.mVerifyState = i2;
        if (z2) {
            this.mVerifyState = i2 | 1;
        }
    }

    public final void setOrder(int i2) {
        this.mOrder = i2;
    }

    public final void setPriority(int i2) {
        this.mPriority = i2;
    }

    public void setVerified(boolean z2) {
        int i2 = (this.mVerifyState | 256) & (-4097);
        this.mVerifyState = i2;
        if (z2) {
            this.mVerifyState = i2 | 4096;
        }
    }

    public void setVisibilityToInstantApp(int i2) {
        this.mInstantAppVisibility = i2;
    }

    public final Iterator<String> typesIterator() {
        ArrayList<String> arrayList = this.mDataTypes;
        if (arrayList != null) {
            return arrayList.iterator();
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStringList(this.mActions);
        if (this.mCategories != null) {
            parcel.writeInt(1);
            parcel.writeStringList(this.mCategories);
        } else {
            parcel.writeInt(0);
        }
        if (this.mDataSchemes != null) {
            parcel.writeInt(1);
            parcel.writeStringList(this.mDataSchemes);
        } else {
            parcel.writeInt(0);
        }
        if (this.mDataTypes != null) {
            parcel.writeInt(1);
            parcel.writeStringList(this.mDataTypes);
        } else {
            parcel.writeInt(0);
        }
        ArrayList<PatternMatcher> arrayList = this.mDataSchemeSpecificParts;
        if (arrayList != null) {
            int size = arrayList.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                this.mDataSchemeSpecificParts.get(i3).writeToParcel(parcel, i2);
            }
        } else {
            parcel.writeInt(0);
        }
        ArrayList<AuthorityEntry> arrayList2 = this.mDataAuthorities;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            parcel.writeInt(size2);
            for (int i4 = 0; i4 < size2; i4++) {
                this.mDataAuthorities.get(i4).writeToParcel(parcel);
            }
        } else {
            parcel.writeInt(0);
        }
        ArrayList<PatternMatcher> arrayList3 = this.mDataPaths;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            parcel.writeInt(size3);
            for (int i5 = 0; i5 < size3; i5++) {
                this.mDataPaths.get(i5).writeToParcel(parcel, i2);
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mPriority);
        parcel.writeInt(this.mHasPartialTypes ? 1 : 0);
        parcel.writeInt(getAutoVerify() ? 1 : 0);
        parcel.writeInt(this.mInstantAppVisibility);
    }

    public void writeToXml(XmlSerializer xmlSerializer) throws IOException {
        if (getAutoVerify()) {
            xmlSerializer.attribute(null, AUTO_VERIFY_STR, Boolean.toString(true));
        }
        int iCountActions = countActions();
        for (int i2 = 0; i2 < iCountActions; i2++) {
            xmlSerializer.startTag(null, "action");
            xmlSerializer.attribute(null, "name", this.mActions.get(i2));
            xmlSerializer.endTag(null, "action");
        }
        int iCountCategories = countCategories();
        for (int i3 = 0; i3 < iCountCategories; i3++) {
            xmlSerializer.startTag(null, CAT_STR);
            xmlSerializer.attribute(null, "name", this.mCategories.get(i3));
            xmlSerializer.endTag(null, CAT_STR);
        }
        int iCountDataTypes = countDataTypes();
        for (int i4 = 0; i4 < iCountDataTypes; i4++) {
            xmlSerializer.startTag(null, "type");
            String strConcat = this.mDataTypes.get(i4);
            if (strConcat.indexOf(47) < 0) {
                strConcat = strConcat.concat("/*");
            }
            xmlSerializer.attribute(null, "name", strConcat);
            xmlSerializer.endTag(null, "type");
        }
        int iCountDataSchemes = countDataSchemes();
        for (int i5 = 0; i5 < iCountDataSchemes; i5++) {
            xmlSerializer.startTag(null, SCHEME_STR);
            xmlSerializer.attribute(null, "name", this.mDataSchemes.get(i5));
            xmlSerializer.endTag(null, SCHEME_STR);
        }
        int iCountDataSchemeSpecificParts = countDataSchemeSpecificParts();
        for (int i6 = 0; i6 < iCountDataSchemeSpecificParts; i6++) {
            xmlSerializer.startTag(null, SSP_STR);
            PatternMatcher patternMatcher = this.mDataSchemeSpecificParts.get(i6);
            int type = patternMatcher.getType();
            if (type == 0) {
                xmlSerializer.attribute(null, LITERAL_STR, patternMatcher.getPath());
            } else if (type == 1) {
                xmlSerializer.attribute(null, PREFIX_STR, patternMatcher.getPath());
            } else if (type == 2) {
                xmlSerializer.attribute(null, SGLOB_STR, patternMatcher.getPath());
            } else if (type == 3) {
                xmlSerializer.attribute(null, AGLOB_STR, patternMatcher.getPath());
            }
            xmlSerializer.endTag(null, SSP_STR);
        }
        int iCountDataAuthorities = countDataAuthorities();
        for (int i7 = 0; i7 < iCountDataAuthorities; i7++) {
            xmlSerializer.startTag(null, AUTH_STR);
            AuthorityEntry authorityEntry = this.mDataAuthorities.get(i7);
            xmlSerializer.attribute(null, HOST_STR, authorityEntry.getHost());
            if (authorityEntry.getPort() >= 0) {
                xmlSerializer.attribute(null, "port", Integer.toString(authorityEntry.getPort()));
            }
            xmlSerializer.endTag(null, AUTH_STR);
        }
        int iCountDataPaths = countDataPaths();
        for (int i8 = 0; i8 < iCountDataPaths; i8++) {
            xmlSerializer.startTag(null, PATH_STR);
            PatternMatcher patternMatcher2 = this.mDataPaths.get(i8);
            int type2 = patternMatcher2.getType();
            if (type2 == 0) {
                xmlSerializer.attribute(null, LITERAL_STR, patternMatcher2.getPath());
            } else if (type2 == 1) {
                xmlSerializer.attribute(null, PREFIX_STR, patternMatcher2.getPath());
            } else if (type2 == 2) {
                xmlSerializer.attribute(null, SGLOB_STR, patternMatcher2.getPath());
            } else if (type2 == 3) {
                xmlSerializer.attribute(null, AGLOB_STR, patternMatcher2.getPath());
            }
            xmlSerializer.endTag(null, PATH_STR);
        }
    }

    public final void addDataPath(PatternMatcher patternMatcher) {
        if (this.mDataPaths == null) {
            this.mDataPaths = new ArrayList<>();
        }
        this.mDataPaths.add(patternMatcher);
    }

    public final void addDataSchemeSpecificPart(PatternMatcher patternMatcher) {
        if (this.mDataSchemeSpecificParts == null) {
            this.mDataSchemeSpecificParts = new ArrayList<>();
        }
        this.mDataSchemeSpecificParts.add(patternMatcher);
    }

    public final boolean hasDataAuthority(AuthorityEntry authorityEntry) {
        ArrayList<AuthorityEntry> arrayList = this.mDataAuthorities;
        if (arrayList == null) {
            return false;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mDataAuthorities.get(i2).match(authorityEntry)) {
                return true;
            }
        }
        return false;
    }

    public static final class AuthorityEntry {
        private final String mHost;
        private final String mOrigHost;
        private final int mPort;
        private final boolean mWild;

        public AuthorityEntry(String str, String str2) {
            this.mOrigHost = str;
            boolean z2 = false;
            if (str.length() > 0 && str.charAt(0) == '*') {
                z2 = true;
            }
            this.mWild = z2;
            this.mHost = z2 ? str.substring(1).intern() : str;
            this.mPort = str2 != null ? Integer.parseInt(str2) : -1;
        }

        public boolean equals(Object obj) {
            if (obj instanceof AuthorityEntry) {
                return match((AuthorityEntry) obj);
            }
            return false;
        }

        public String getHost() {
            return this.mOrigHost;
        }

        public int getPort() {
            return this.mPort;
        }

        public boolean match(AuthorityEntry authorityEntry) {
            return this.mWild == authorityEntry.mWild && this.mHost.equals(authorityEntry.mHost) && this.mPort == authorityEntry.mPort;
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeString(this.mOrigHost);
            parcel.writeString(this.mHost);
            parcel.writeInt(this.mWild ? 1 : 0);
            parcel.writeInt(this.mPort);
        }

        public int match(Uri uri) {
            String host = uri.getHost();
            if (host == null) {
                return -2;
            }
            if (this.mWild) {
                if (host.length() < this.mHost.length()) {
                    return -2;
                }
                host = host.substring(host.length() - this.mHost.length());
            }
            if (host.compareToIgnoreCase(this.mHost) != 0) {
                return -2;
            }
            int i2 = this.mPort;
            if (i2 >= 0) {
                return i2 != uri.getPort() ? -2 : 4194304;
            }
            return IntentFilter.MATCH_CATEGORY_HOST;
        }

        public AuthorityEntry(Parcel parcel) {
            this.mOrigHost = parcel.readString();
            this.mHost = parcel.readString();
            this.mWild = parcel.readInt() != 0;
            this.mPort = parcel.readInt();
        }
    }

    public final void addDataAuthority(AuthorityEntry authorityEntry) {
        if (this.mDataAuthorities == null) {
            this.mDataAuthorities = new ArrayList<>();
        }
        this.mDataAuthorities.add(authorityEntry);
    }

    public final boolean hasDataPath(PatternMatcher patternMatcher) {
        ArrayList<PatternMatcher> arrayList = this.mDataPaths;
        if (arrayList == null) {
            return false;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            PatternMatcher patternMatcher2 = this.mDataPaths.get(i2);
            if (patternMatcher2.getType() == patternMatcher.getType() && patternMatcher2.getPath().equals(patternMatcher.getPath())) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasDataSchemeSpecificPart(PatternMatcher patternMatcher) {
        ArrayList<PatternMatcher> arrayList = this.mDataSchemeSpecificParts;
        if (arrayList == null) {
            return false;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            PatternMatcher patternMatcher2 = this.mDataSchemeSpecificParts.get(i2);
            if (patternMatcher2.getType() == patternMatcher.getType() && patternMatcher2.getPath().equals(patternMatcher.getPath())) {
                return true;
            }
        }
        return false;
    }

    public final int match(String str, String str2, String str3, Uri uri, Set<String> set, String str4) {
        if (str != null && !matchAction(str)) {
            return -3;
        }
        int iMatchData = matchData(str2, str3, uri);
        if (iMatchData >= 0 && matchCategories(set) != null) {
            return -4;
        }
        return iMatchData;
    }

    public IntentFilter(String str) {
        this.mCategories = null;
        this.mDataSchemes = null;
        this.mDataSchemeSpecificParts = null;
        this.mDataAuthorities = null;
        this.mDataPaths = null;
        this.mDataTypes = null;
        this.mHasPartialTypes = false;
        this.mPriority = 0;
        this.mActions = new ArrayList<>();
        addAction(str);
    }

    public IntentFilter(String str, String str2) throws MalformedMimeTypeException {
        this.mCategories = null;
        this.mDataSchemes = null;
        this.mDataSchemeSpecificParts = null;
        this.mDataAuthorities = null;
        this.mDataPaths = null;
        this.mDataTypes = null;
        this.mHasPartialTypes = false;
        this.mPriority = 0;
        this.mActions = new ArrayList<>();
        addAction(str);
        addDataType(str2);
    }

    public IntentFilter(IntentFilter intentFilter) {
        this.mCategories = null;
        this.mDataSchemes = null;
        this.mDataSchemeSpecificParts = null;
        this.mDataAuthorities = null;
        this.mDataPaths = null;
        this.mDataTypes = null;
        this.mHasPartialTypes = false;
        this.mPriority = intentFilter.mPriority;
        this.mOrder = intentFilter.mOrder;
        this.mActions = new ArrayList<>(intentFilter.mActions);
        if (intentFilter.mCategories != null) {
            this.mCategories = new ArrayList<>(intentFilter.mCategories);
        }
        if (intentFilter.mDataTypes != null) {
            this.mDataTypes = new ArrayList<>(intentFilter.mDataTypes);
        }
        if (intentFilter.mDataSchemes != null) {
            this.mDataSchemes = new ArrayList<>(intentFilter.mDataSchemes);
        }
        if (intentFilter.mDataSchemeSpecificParts != null) {
            this.mDataSchemeSpecificParts = new ArrayList<>(intentFilter.mDataSchemeSpecificParts);
        }
        if (intentFilter.mDataAuthorities != null) {
            this.mDataAuthorities = new ArrayList<>(intentFilter.mDataAuthorities);
        }
        if (intentFilter.mDataPaths != null) {
            this.mDataPaths = new ArrayList<>(intentFilter.mDataPaths);
        }
        this.mHasPartialTypes = intentFilter.mHasPartialTypes;
        this.mVerifyState = intentFilter.mVerifyState;
        this.mInstantAppVisibility = intentFilter.mInstantAppVisibility;
    }

    public IntentFilter(Parcel parcel) {
        this.mCategories = null;
        this.mDataSchemes = null;
        this.mDataSchemeSpecificParts = null;
        this.mDataAuthorities = null;
        this.mDataPaths = null;
        this.mDataTypes = null;
        this.mHasPartialTypes = false;
        ArrayList<String> arrayList = new ArrayList<>();
        this.mActions = arrayList;
        parcel.readStringList(arrayList);
        if (parcel.readInt() != 0) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            this.mCategories = arrayList2;
            parcel.readStringList(arrayList2);
        }
        if (parcel.readInt() != 0) {
            ArrayList<String> arrayList3 = new ArrayList<>();
            this.mDataSchemes = arrayList3;
            parcel.readStringList(arrayList3);
        }
        if (parcel.readInt() != 0) {
            ArrayList<String> arrayList4 = new ArrayList<>();
            this.mDataTypes = arrayList4;
            parcel.readStringList(arrayList4);
        }
        int i2 = parcel.readInt();
        if (i2 > 0) {
            this.mDataSchemeSpecificParts = new ArrayList<>(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                this.mDataSchemeSpecificParts.add(new PatternMatcher(parcel));
            }
        }
        int i4 = parcel.readInt();
        if (i4 > 0) {
            this.mDataAuthorities = new ArrayList<>(i4);
            for (int i5 = 0; i5 < i4; i5++) {
                this.mDataAuthorities.add(new AuthorityEntry(parcel));
            }
        }
        int i6 = parcel.readInt();
        if (i6 > 0) {
            this.mDataPaths = new ArrayList<>(i6);
            for (int i7 = 0; i7 < i6; i7++) {
                this.mDataPaths.add(new PatternMatcher(parcel));
            }
        }
        this.mPriority = parcel.readInt();
        this.mHasPartialTypes = parcel.readInt() > 0;
        setAutoVerify(parcel.readInt() > 0);
        setVisibilityToInstantApp(parcel.readInt());
    }
}
