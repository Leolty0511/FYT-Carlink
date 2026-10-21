package android.text.method;

/* JADX INFO: loaded from: classes2.dex */
public class HideReturnsTransformationMethod extends ReplacementTransformationMethod {
    private static char[] ORIGINAL = {'\r'};
    private static char[] REPLACEMENT = {65279};
    private static HideReturnsTransformationMethod sInstance;

    public static HideReturnsTransformationMethod getInstance() {
        HideReturnsTransformationMethod hideReturnsTransformationMethod = sInstance;
        if (hideReturnsTransformationMethod != null) {
            return hideReturnsTransformationMethod;
        }
        HideReturnsTransformationMethod hideReturnsTransformationMethod2 = new HideReturnsTransformationMethod();
        sInstance = hideReturnsTransformationMethod2;
        return hideReturnsTransformationMethod2;
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
