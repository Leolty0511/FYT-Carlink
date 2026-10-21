package android.view.autofill;

import android.os.Bundle;
import java.util.Arrays;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class Helper {
    public static final String REDACTED = "[REDACTED]";
    public static boolean sDebug = false;
    public static boolean sVerbose = false;

    private Helper() {
        throw new UnsupportedOperationException("contains static members only");
    }

    public static StringBuilder append(StringBuilder sb, Bundle bundle) {
        if (bundle == null || !sDebug) {
            sb.append("N/A");
        } else if (sVerbose) {
            Set<String> setKeySet = bundle.keySet();
            sb.append("[Bundle with ");
            sb.append(setKeySet.size());
            sb.append(" extras:");
            for (String str : setKeySet) {
                Object string = bundle.get(str);
                sb.append(' ');
                sb.append(str);
                sb.append('=');
                if (string instanceof Object[]) {
                    string = Arrays.toString((Objects[]) string);
                }
                sb.append(string);
            }
            sb.append(']');
        } else {
            sb.append(REDACTED);
        }
        return sb;
    }
}
