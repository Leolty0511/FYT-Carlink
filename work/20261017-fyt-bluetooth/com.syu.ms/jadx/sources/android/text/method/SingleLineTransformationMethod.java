package android.text.method;

import android.net.http.CharArrayBuffers;

/* JADX INFO: loaded from: classes.dex */
public class SingleLineTransformationMethod extends ReplacementTransformationMethod {
    private static char[] ORIGINAL = {'\n', '\r'};
    private static char[] REPLACEMENT = {CharArrayBuffers.uppercaseAddon, 65279};
    private static SingleLineTransformationMethod sInstance;

    public static SingleLineTransformationMethod getInstance() {
        SingleLineTransformationMethod singleLineTransformationMethod = sInstance;
        if (singleLineTransformationMethod != null) {
            return singleLineTransformationMethod;
        }
        SingleLineTransformationMethod singleLineTransformationMethod2 = new SingleLineTransformationMethod();
        sInstance = singleLineTransformationMethod2;
        return singleLineTransformationMethod2;
    }

    @Override // android.text.method.ReplacementTransformationMethod
    public char[] getOriginal() {
        return ORIGINAL;
    }

    @Override // android.text.method.ReplacementTransformationMethod
    public char[] getReplacement() {
        return REPLACEMENT;
    }
}
