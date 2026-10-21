package android.media;

import android.net.ProxyProperties;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class Tokenizer {
    private static final String TAG = "Tokenizer";
    private int mHandledLen;
    private String mLine;
    private OnTokenListener mListener;
    private TokenizerPhase mPhase;
    private TokenizerPhase mDataTokenizer = new DataTokenizer();
    private TokenizerPhase mTagTokenizer = new TagTokenizer();

    public class DataTokenizer implements TokenizerPhase {
        private StringBuilder mData;

        public DataTokenizer() {
        }

        private boolean replaceEscape(String str, String str2, int i2) {
            if (!Tokenizer.this.mLine.startsWith(str, i2)) {
                return false;
            }
            this.mData.append(Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen, i2));
            this.mData.append(str2);
            Tokenizer.this.mHandledLen = i2 + str.length();
            int unused = Tokenizer.this.mHandledLen;
            return true;
        }

        @Override // android.media.Tokenizer.TokenizerPhase
        public TokenizerPhase start() {
            this.mData = new StringBuilder();
            return this;
        }

        @Override // android.media.Tokenizer.TokenizerPhase
        public void tokenize() {
            int length = Tokenizer.this.mLine.length();
            for (int i2 = Tokenizer.this.mHandledLen; i2 < Tokenizer.this.mLine.length(); i2++) {
                if (Tokenizer.this.mLine.charAt(i2) != '&') {
                    if (Tokenizer.this.mLine.charAt(i2) == '<') {
                        Tokenizer tokenizer = Tokenizer.this;
                        tokenizer.mPhase = tokenizer.mTagTokenizer.start();
                        length = i2;
                        break;
                    }
                } else if (!replaceEscape("&amp;", "&", i2) && !replaceEscape("&lt;", "<", i2) && !replaceEscape("&gt;", ">", i2) && !replaceEscape("&lrm;", "\u200e", i2) && !replaceEscape("&rlm;", "\u200f", i2)) {
                    replaceEscape("&nbsp;", " ", i2);
                }
            }
            this.mData.append(Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen, length));
            Tokenizer.this.mListener.onData(this.mData.toString());
            StringBuilder sb = this.mData;
            sb.delete(0, sb.length());
            Tokenizer.this.mHandledLen = length;
        }
    }

    public interface OnTokenListener {
        void onData(String str);

        void onEnd(String str);

        void onLineEnd();

        void onStart(String str, String[] strArr, String str2);

        void onTimeStamp(long j2);
    }

    public class TagTokenizer implements TokenizerPhase {
        private String mAnnotation;
        private boolean mAtAnnotation;
        private String mName;

        public TagTokenizer() {
        }

        private void yield_tag() {
            if (this.mName.startsWith("/")) {
                Tokenizer.this.mListener.onEnd(this.mName.substring(1));
                return;
            }
            if (this.mName.length() > 0 && Character.isDigit(this.mName.charAt(0))) {
                try {
                    Tokenizer.this.mListener.onTimeStamp(WebVttParser.parseTimestampMs(this.mName));
                    return;
                } catch (NumberFormatException unused) {
                    Log.d(Tokenizer.TAG, "invalid timestamp tag: <" + this.mName + ">");
                    return;
                }
            }
            String strReplaceAll = this.mAnnotation.replaceAll("\\s+", " ");
            this.mAnnotation = strReplaceAll;
            if (strReplaceAll.startsWith(" ")) {
                this.mAnnotation = this.mAnnotation.substring(1);
            }
            if (this.mAnnotation.endsWith(" ")) {
                String str = this.mAnnotation;
                this.mAnnotation = str.substring(0, str.length() - 1);
            }
            String[] strArrSplit = null;
            int iIndexOf = this.mName.indexOf(46);
            if (iIndexOf >= 0) {
                strArrSplit = this.mName.substring(iIndexOf + 1).split("\\.");
                this.mName = this.mName.substring(0, iIndexOf);
            }
            Tokenizer.this.mListener.onStart(this.mName, strArrSplit, this.mAnnotation);
        }

        @Override // android.media.Tokenizer.TokenizerPhase
        public TokenizerPhase start() {
            this.mAnnotation = ProxyProperties.LOCAL_EXCL_LIST;
            this.mName = ProxyProperties.LOCAL_EXCL_LIST;
            this.mAtAnnotation = false;
            return this;
        }

        @Override // android.media.Tokenizer.TokenizerPhase
        public void tokenize() {
            if (!this.mAtAnnotation) {
                Tokenizer.access$108(Tokenizer.this);
            }
            if (Tokenizer.this.mHandledLen < Tokenizer.this.mLine.length()) {
                String[] strArrSplit = (this.mAtAnnotation || Tokenizer.this.mLine.charAt(Tokenizer.this.mHandledLen) == '/') ? Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen).split(">") : Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen).split("[\t\f >]");
                String strSubstring = Tokenizer.this.mLine.substring(Tokenizer.this.mHandledLen, Tokenizer.this.mHandledLen + strArrSplit[0].length());
                Tokenizer.access$112(Tokenizer.this, strArrSplit[0].length());
                if (this.mAtAnnotation) {
                    this.mAnnotation += " " + strSubstring;
                } else {
                    this.mName = strSubstring;
                }
            }
            this.mAtAnnotation = true;
            if (Tokenizer.this.mHandledLen >= Tokenizer.this.mLine.length() || Tokenizer.this.mLine.charAt(Tokenizer.this.mHandledLen) != '>') {
                return;
            }
            yield_tag();
            Tokenizer tokenizer = Tokenizer.this;
            tokenizer.mPhase = tokenizer.mDataTokenizer.start();
            Tokenizer.access$108(Tokenizer.this);
        }
    }

    public interface TokenizerPhase {
        TokenizerPhase start();

        void tokenize();
    }

    public Tokenizer(OnTokenListener onTokenListener) {
        reset();
        this.mListener = onTokenListener;
    }

    public static /* synthetic */ int access$108(Tokenizer tokenizer) {
        int i2 = tokenizer.mHandledLen;
        tokenizer.mHandledLen = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int access$112(Tokenizer tokenizer, int i2) {
        int i3 = tokenizer.mHandledLen + i2;
        tokenizer.mHandledLen = i3;
        return i3;
    }

    public void reset() {
        this.mPhase = this.mDataTokenizer.start();
    }

    public void tokenize(String str) {
        this.mHandledLen = 0;
        this.mLine = str;
        while (this.mHandledLen < this.mLine.length()) {
            this.mPhase.tokenize();
        }
        if (this.mPhase instanceof TagTokenizer) {
            return;
        }
        this.mListener.onLineEnd();
    }
}
