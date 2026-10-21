package android.transition;

import android.accessibilityservice.c;
import android.util.ArrayMap;
import android.view.View;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new ArrayMap();
    final ArrayList<Transition> targetedTransitions = new ArrayList<>();

    public boolean equals(Object obj) {
        if (!(obj instanceof TransitionValues)) {
            return false;
        }
        TransitionValues transitionValues = (TransitionValues) obj;
        return this.view == transitionValues.view && this.values.equals(transitionValues.values);
    }

    public int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbU = c.u("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbU.append(this.view);
        sbU.append("\n");
        String strD = c.D(sbU.toString(), "    values:");
        for (String str : this.values.keySet()) {
            strD = strD + "    " + str + ": " + this.values.get(str) + "\n";
        }
        return strD;
    }
}
