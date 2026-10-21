package androidx.transition;

import android.accessibilityservice.c;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    @Deprecated
    public TransitionValues() {
    }

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

    public TransitionValues(@NonNull View view) {
        this.view = view;
    }
}
