package android.provider;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class SearchIndexableResource extends SearchIndexableData {
    public int xmlResId;

    public SearchIndexableResource(int i2, int i3, String str, int i4) {
        this.rank = i2;
        this.xmlResId = i3;
        this.className = str;
        this.iconResId = i4;
    }

    @Override // android.provider.SearchIndexableData
    public String toString() {
        StringBuilder sb = new StringBuilder("SearchIndexableResource[");
        sb.append(super.toString());
        sb.append(", xmlResId: ");
        return android.accessibilityservice.c.m(sb, this.xmlResId, "]");
    }

    public SearchIndexableResource(Context context) {
        super(context);
    }
}
