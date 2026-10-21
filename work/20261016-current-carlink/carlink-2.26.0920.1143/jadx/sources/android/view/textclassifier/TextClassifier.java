package android.view.textclassifier;

import android.os.LocaleList;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public interface TextClassifier {
    public static final String DEFAULT_LOG_TAG = "TextClassifierImpl";
    public static final TextClassifier NO_OP = new TextClassifier() { // from class: android.view.textclassifier.TextClassifier.1
        @Override // android.view.textclassifier.TextClassifier
        public TextClassification classifyText(CharSequence charSequence, int i2, int i3, LocaleList localeList) {
            return TextClassification.EMPTY;
        }

        @Override // android.view.textclassifier.TextClassifier
        public final /* synthetic */ LinksInfo getLinks(CharSequence charSequence, int i2, LocaleList localeList) {
            return e.a(this, charSequence, i2, localeList);
        }

        @Override // android.view.textclassifier.TextClassifier
        public final /* synthetic */ TextClassifierConstants getSettings() {
            return e.b(this);
        }

        @Override // android.view.textclassifier.TextClassifier
        public final /* synthetic */ void logEvent(String str, String str2) {
            e.c(this, str, str2);
        }

        @Override // android.view.textclassifier.TextClassifier
        public TextSelection suggestSelection(CharSequence charSequence, int i2, int i3, LocaleList localeList) {
            return new TextSelection.Builder(i2, i3).build();
        }
    };
    public static final String TYPE_ADDRESS = "address";
    public static final String TYPE_EMAIL = "email";
    public static final String TYPE_OTHER = "other";
    public static final String TYPE_PHONE = "phone";
    public static final String TYPE_UNKNOWN = "";
    public static final String TYPE_URL = "url";

    @Retention(RetentionPolicy.SOURCE)
    public @interface EntityType {
    }

    TextClassification classifyText(CharSequence charSequence, int i2, int i3, LocaleList localeList);

    LinksInfo getLinks(CharSequence charSequence, int i2, LocaleList localeList);

    TextClassifierConstants getSettings();

    void logEvent(String str, String str2);

    TextSelection suggestSelection(CharSequence charSequence, int i2, int i3, LocaleList localeList);
}
