package android.text;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.provider.UserDictionary;
import android.view.View;
import com.android.internal.R;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class AutoText {
    private static final int DEFAULT = 14337;
    private static final int INCREMENT = 1024;
    private static final int RIGHT = 9300;
    private static final int TRIE_C = 0;
    private static final int TRIE_CHILD = 2;
    private static final int TRIE_NEXT = 3;
    private static final char TRIE_NULL = 65535;
    private static final int TRIE_OFF = 1;
    private static final int TRIE_ROOT = 0;
    private static final int TRIE_SIZEOF = 4;
    private static AutoText sInstance = new AutoText(Resources.getSystem());
    private static Object sLock = new Object();
    private Locale mLocale;
    private int mSize;
    private String mText;
    private char[] mTrie;
    private char mTrieUsed;

    private AutoText(Resources resources) {
        this.mLocale = resources.getConfiguration().locale;
        init(resources);
    }

    private void add(String str, char c) {
        boolean z2;
        int length = str.length();
        this.mSize++;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            while (true) {
                char[] cArr = this.mTrie;
                char c2 = cArr[i2];
                if (c2 == 65535) {
                    z2 = false;
                    break;
                }
                if (cCharAt == cArr[c2 + 0]) {
                    if (i3 == length - 1) {
                        cArr[c2 + 1] = c;
                        return;
                    } else {
                        i2 = c2 + 2;
                        z2 = true;
                        break;
                    }
                }
                i2 = c2 + 3;
            }
            if (!z2) {
                char cNewTrieNode = newTrieNode();
                char[] cArr2 = this.mTrie;
                cArr2[i2] = cNewTrieNode;
                cArr2[cNewTrieNode + 0] = cCharAt;
                cArr2[cArr2[i2] + 1] = TRIE_NULL;
                cArr2[cArr2[i2] + 3] = TRIE_NULL;
                cArr2[cArr2[i2] + 2] = TRIE_NULL;
                if (i3 == length - 1) {
                    cArr2[cArr2[i2] + 1] = c;
                    return;
                }
                i2 = cArr2[i2] + 2;
            }
        }
    }

    public static String get(CharSequence charSequence, int i2, int i3, View view) {
        return getInstance(view).lookup(charSequence, i2, i3);
    }

    private static AutoText getInstance(View view) {
        AutoText autoText;
        Resources resources = view.getContext().getResources();
        Locale locale = resources.getConfiguration().locale;
        synchronized (sLock) {
            autoText = sInstance;
            if (!locale.equals(autoText.mLocale)) {
                autoText = new AutoText(resources);
                sInstance = autoText;
            }
        }
        return autoText;
    }

    public static int getSize(View view) {
        return getInstance(view).getSize();
    }

    private void init(Resources resources) {
        char length;
        XmlResourceParser xml = resources.getXml(R.xml.autotext);
        StringBuilder sb = new StringBuilder(RIGHT);
        char[] cArr = new char[14337];
        this.mTrie = cArr;
        cArr[0] = TRIE_NULL;
        this.mTrieUsed = (char) 1;
        try {
            try {
                try {
                    XmlUtils.beginDocument(xml, "words");
                    while (true) {
                        XmlUtils.nextElement(xml);
                        String name = xml.getName();
                        if (name == null || !name.equals(UserDictionary.Words.WORD)) {
                            break;
                            break;
                        }
                        String attributeValue = xml.getAttributeValue(null, "src");
                        if (xml.next() == 4) {
                            String text = xml.getText();
                            if (text.equals("")) {
                                length = 0;
                            } else {
                                length = (char) sb.length();
                                sb.append((char) text.length());
                                sb.append(text);
                            }
                            add(attributeValue, length);
                        }
                    }
                    resources.flushLayoutCache();
                    xml.close();
                    this.mText = sb.toString();
                } catch (XmlPullParserException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (IOException e3) {
                throw new RuntimeException(e3);
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    private String lookup(CharSequence charSequence, int i2, int i3) {
        char c;
        char c2 = this.mTrie[0];
        while (i2 < i3) {
            char cCharAt = charSequence.charAt(i2);
            while (c2 != 65535) {
                char[] cArr = this.mTrie;
                if (cCharAt == cArr[c2 + 0]) {
                    if (i2 != i3 - 1 || (c = cArr[c2 + 1]) == 65535) {
                        c2 = cArr[c2 + 2];
                        break;
                    }
                    char cCharAt2 = this.mText.charAt(c);
                    int i4 = c + 1;
                    return this.mText.substring(i4, cCharAt2 + i4);
                }
                c2 = cArr[c2 + 3];
            }
            if (c2 == 65535) {
                return null;
            }
            i2++;
        }
        return null;
    }

    private char newTrieNode() {
        int i2 = this.mTrieUsed + 4;
        char[] cArr = this.mTrie;
        if (i2 > cArr.length) {
            char[] cArr2 = new char[cArr.length + 1024];
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.mTrie = cArr2;
        }
        char c = this.mTrieUsed;
        this.mTrieUsed = (char) (c + 4);
        return c;
    }

    private int getSize() {
        return this.mSize;
    }
}
