package android.view.textclassifier;

/* JADX INFO: loaded from: classes2.dex */
public interface LinksInfo {
    public static final LinksInfo NO_OP = new LinksInfo() { // from class: android.view.textclassifier.b
        @Override // android.view.textclassifier.LinksInfo
        public final boolean apply(CharSequence charSequence) {
            return c.a(charSequence);
        }
    };

    boolean apply(CharSequence charSequence);
}
