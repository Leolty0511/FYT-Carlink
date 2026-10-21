package android.provider;

import android.content.Context;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class SearchIndexableData {
    public String className;
    public Context context;
    public boolean enabled;
    public int iconResId;
    public String intentAction;
    public String intentTargetClass;
    public String intentTargetPackage;
    public String key;
    public Locale locale;
    public String packageName;
    public int rank;
    public int userId;

    public SearchIndexableData() {
        this.userId = -1;
        this.locale = Locale.getDefault();
        this.enabled = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SearchIndexableData[context: ");
        sb.append(this.context);
        sb.append(", locale: ");
        sb.append(this.locale);
        sb.append(", enabled: ");
        sb.append(this.enabled);
        sb.append(", rank: ");
        sb.append(this.rank);
        sb.append(", key: ");
        sb.append(this.key);
        sb.append(", userId: ");
        sb.append(this.userId);
        sb.append(", className: ");
        sb.append(this.className);
        sb.append(", packageName: ");
        sb.append(this.packageName);
        sb.append(", iconResId: ");
        sb.append(this.iconResId);
        sb.append(", intentAction: ");
        sb.append(this.intentAction);
        sb.append(", intentTargetPackage: ");
        sb.append(this.intentTargetPackage);
        sb.append(", intentTargetClass: ");
        return android.accessibilityservice.c.n(sb, this.intentTargetClass, "]");
    }

    public SearchIndexableData(Context context) {
        this();
        this.context = context;
    }
}
