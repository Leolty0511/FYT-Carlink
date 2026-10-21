package j;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.media.MediaRouter;
import android.util.Log;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {
    public static DialogFragment a(Activity activity, int i2, View.OnClickListener onClickListener) {
        MediaRouter mediaRouter = (MediaRouter) activity.getSystemService(Context.MEDIA_ROUTER_SERVICE);
        FragmentManager fragmentManager = activity.getFragmentManager();
        MediaRouter.RouteInfo selectedRoute = mediaRouter.getSelectedRoute();
        if (!selectedRoute.isDefault() && selectedRoute.matchesTypes(i2)) {
            if (fragmentManager.findFragmentByTag("android.app.MediaRouteButton:MediaRouteControllerDialogFragment") != null) {
                Log.w("MediaRouter", "showDialog(): Route controller dialog already showing!");
                return null;
            }
            j jVar = new j();
            jVar.show(fragmentManager, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment");
            return jVar;
        }
        if (fragmentManager.findFragmentByTag("android.app.MediaRouteButton:MediaRouteChooserDialogFragment") != null) {
            Log.w("MediaRouter", "showDialog(): Route chooser dialog already showing!");
            return null;
        }
        h hVar = new h();
        hVar.d(i2);
        hVar.c(onClickListener);
        hVar.show(fragmentManager, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment");
        return hVar;
    }
}
