package android.media.browse;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class MediaBrowserUtils {
    public static boolean areSameOptions(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        if (bundle == null) {
            return bundle2.getInt(MediaBrowser.EXTRA_PAGE, -1) == -1 && bundle2.getInt(MediaBrowser.EXTRA_PAGE_SIZE, -1) == -1;
        }
        if (bundle2 == null) {
            return bundle.getInt(MediaBrowser.EXTRA_PAGE, -1) == -1 && bundle.getInt(MediaBrowser.EXTRA_PAGE_SIZE, -1) == -1;
        }
        return bundle.getInt(MediaBrowser.EXTRA_PAGE, -1) == bundle2.getInt(MediaBrowser.EXTRA_PAGE, -1) && bundle.getInt(MediaBrowser.EXTRA_PAGE_SIZE, -1) == bundle2.getInt(MediaBrowser.EXTRA_PAGE_SIZE, -1);
    }

    public static boolean hasDuplicatedItems(Bundle bundle, Bundle bundle2) {
        int i2;
        int i3;
        int i4;
        int i5 = bundle == null ? -1 : bundle.getInt(MediaBrowser.EXTRA_PAGE, -1);
        int i6 = bundle2 == null ? -1 : bundle2.getInt(MediaBrowser.EXTRA_PAGE, -1);
        int i7 = bundle == null ? -1 : bundle.getInt(MediaBrowser.EXTRA_PAGE_SIZE, -1);
        int i8 = bundle2 == null ? -1 : bundle2.getInt(MediaBrowser.EXTRA_PAGE_SIZE, -1);
        int i9 = Integer.MAX_VALUE;
        if (i5 == -1 || i7 == -1) {
            i2 = Integer.MAX_VALUE;
            i3 = 0;
        } else {
            i3 = i5 * i7;
            i2 = (i7 + i3) - 1;
        }
        if (i6 == -1 || i8 == -1) {
            i4 = 0;
        } else {
            i4 = i6 * i8;
            i9 = (i8 + i4) - 1;
        }
        if (i3 > i4 || i4 > i2) {
            return i3 <= i9 && i9 <= i2;
        }
        return true;
    }
}
