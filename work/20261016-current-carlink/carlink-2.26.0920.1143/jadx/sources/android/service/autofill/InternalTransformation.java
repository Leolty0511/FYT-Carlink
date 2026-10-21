package android.service.autofill;

import android.os.Parcelable;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes.dex */
abstract class InternalTransformation implements Transformation, Parcelable {
    public abstract void apply(ValueFinder valueFinder, RemoteViews remoteViews, int i2);
}
