package t;

import android.transition.Transition;
import android.transition.TransitionManager;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f17208a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Transition f17209b = null;

    public static void a(ViewGroup viewGroup) {
        if (f17208a) {
            TransitionManager.beginDelayedTransition(viewGroup, f17209b);
        }
    }
}
