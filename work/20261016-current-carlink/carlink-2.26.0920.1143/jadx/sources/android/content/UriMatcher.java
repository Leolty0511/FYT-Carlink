package android.content;

import android.accessibilityservice.c;
import android.net.Uri;
import com.android.internal.telephony.PhoneConstants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UriMatcher {
    private static final int EXACT = 0;
    public static final int NO_MATCH = -1;
    private static final int NUMBER = 1;
    private static final int TEXT = 2;
    private ArrayList<UriMatcher> mChildren;
    private int mCode;
    private String mText;
    private int mWhich;

    public UriMatcher(int i2) {
        this.mCode = i2;
        this.mWhich = -1;
        this.mChildren = new ArrayList<>();
        this.mText = null;
    }

    public void addURI(String str, String str2, int i2) {
        String[] strArrSplit;
        if (i2 < 0) {
            throw new IllegalArgumentException(c.e("code ", i2, " is invalid: it must be positive"));
        }
        if (str2 != null) {
            if (str2.length() > 1 && str2.charAt(0) == '/') {
                str2 = str2.substring(1);
            }
            strArrSplit = str2.split("/");
        } else {
            strArrSplit = null;
        }
        int length = strArrSplit != null ? strArrSplit.length : 0;
        int i3 = -1;
        UriMatcher uriMatcher = this;
        while (i3 < length) {
            String str3 = i3 < 0 ? str : strArrSplit[i3];
            ArrayList<UriMatcher> arrayList = uriMatcher.mChildren;
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                UriMatcher uriMatcher2 = arrayList.get(i4);
                if (str3.equals(uriMatcher2.mText)) {
                    uriMatcher = uriMatcher2;
                    break;
                }
                i4++;
            }
            if (i4 == size) {
                UriMatcher uriMatcher3 = new UriMatcher();
                if (str3.equals("#")) {
                    uriMatcher3.mWhich = 1;
                } else if (str3.equals(PhoneConstants.APN_TYPE_ALL)) {
                    uriMatcher3.mWhich = 2;
                } else {
                    uriMatcher3.mWhich = 0;
                }
                uriMatcher3.mText = str3;
                uriMatcher.mChildren.add(uriMatcher3);
                uriMatcher = uriMatcher3;
            }
            i3++;
        }
        uriMatcher.mCode = i2;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0067 A[EDGE_INSN: B:35:0x0067->B:36:0x0068 BREAK  A[LOOP:2: B:26:0x004d->B:32:0x005c]] */
    public int match(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        int size = pathSegments.size();
        if (size == 0 && uri.getAuthority() == null) {
            return this.mCode;
        }
        UriMatcher uriMatcher = this;
        int i2 = -1;
        while (i2 < size) {
            String authority = i2 < 0 ? uri.getAuthority() : pathSegments.get(i2);
            ArrayList<UriMatcher> arrayList = uriMatcher.mChildren;
            if (arrayList == null) {
                break;
            }
            int size2 = arrayList.size();
            UriMatcher uriMatcher2 = null;
            for (int i3 = 0; i3 < size2; i3++) {
                UriMatcher uriMatcher3 = arrayList.get(i3);
                int i4 = uriMatcher3.mWhich;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 == 2) {
                            uriMatcher2 = uriMatcher3;
                            break;
                        }
                    } else {
                        int length = authority.length();
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                uriMatcher2 = uriMatcher3;
                                break;
                            }
                            char cCharAt = authority.charAt(i5);
                            if (cCharAt < '0' || cCharAt > '9') {
                                break;
                            }
                            i5++;
                        }
                    }
                } else if (uriMatcher3.mText.equals(authority)) {
                    uriMatcher2 = uriMatcher3;
                    break;
                }
                if (uriMatcher2 != null) {
                    break;
                }
            }
            uriMatcher = uriMatcher2;
            if (uriMatcher == null) {
                return -1;
            }
            i2++;
        }
        return uriMatcher.mCode;
    }

    private UriMatcher() {
        this.mCode = -1;
        this.mWhich = -1;
        this.mChildren = new ArrayList<>();
        this.mText = null;
    }
}
