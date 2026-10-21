package android.drm;

import android.accessibilityservice.c;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class DrmErrorEvent extends DrmEvent {
    public static final int TYPE_ACQUIRE_DRM_INFO_FAILED = 2008;
    public static final int TYPE_NOT_SUPPORTED = 2003;
    public static final int TYPE_NO_INTERNET_CONNECTION = 2005;
    public static final int TYPE_OUT_OF_MEMORY = 2004;
    public static final int TYPE_PROCESS_DRM_INFO_FAILED = 2006;
    public static final int TYPE_REMOVE_ALL_RIGHTS_FAILED = 2007;
    public static final int TYPE_RIGHTS_NOT_INSTALLED = 2001;
    public static final int TYPE_RIGHTS_RENEWAL_NOT_ALLOWED = 2002;

    public DrmErrorEvent(int i2, int i3, String str) {
        super(i2, i3, str);
        checkTypeValidity(i3);
    }

    private void checkTypeValidity(int i2) {
        if (i2 < 2001 || i2 > 2008) {
            throw new IllegalArgumentException(c.d("Unsupported type: ", i2));
        }
    }

    public DrmErrorEvent(int i2, int i3, String str, HashMap<String, Object> map) {
        super(i2, i3, str, map);
        checkTypeValidity(i3);
    }
}
