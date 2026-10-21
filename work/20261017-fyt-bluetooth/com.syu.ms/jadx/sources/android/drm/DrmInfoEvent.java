package android.drm;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class DrmInfoEvent extends DrmEvent {
    public static final int TYPE_ACCOUNT_ALREADY_REGISTERED = 5;
    public static final int TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT = 1;
    public static final int TYPE_REMOVE_RIGHTS = 2;
    public static final int TYPE_RIGHTS_INSTALLED = 3;
    public static final int TYPE_RIGHTS_REMOVED = 6;
    public static final int TYPE_WAIT_FOR_RIGHTS = 4;

    public DrmInfoEvent(int i2, int i3, String str) {
        super(i2, i3, str);
        checkTypeValidity(i3);
    }

    private void checkTypeValidity(int i2) {
        if ((i2 >= 1 && i2 <= 6) || i2 == 1001 || i2 == 1002) {
            return;
        }
        throw new IllegalArgumentException("Unsupported type: " + i2);
    }

    public DrmInfoEvent(int i2, int i3, String str, HashMap<String, Object> map) {
        super(i2, i3, str, map);
        checkTypeValidity(i3);
    }
}
