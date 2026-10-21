package android.app;

import android.provider.FontsContract;
import android.telecom.Logging.EventManager;
import android.util.Pair;
import com.android.internal.graphics.palette.Palette;
import com.android.internal.widget.NotificationActionListLayout;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f47b;

    public /* synthetic */ r(int i2) {
        this.f47b = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f47b) {
            case 0:
                return WallpaperColors.lambda$fromBitmap$1((Palette.Swatch) obj, (Palette.Swatch) obj2);
            case 1:
                return FontsContract.lambda$static$13((byte[]) obj, (byte[]) obj2);
            case 2:
                return EventManager.lambda$dumpEventsTimeline$0((Pair) obj, (Pair) obj2);
            default:
                return NotificationActionListLayout.lambda$static$0((Pair) obj, (Pair) obj2);
        }
    }
}
