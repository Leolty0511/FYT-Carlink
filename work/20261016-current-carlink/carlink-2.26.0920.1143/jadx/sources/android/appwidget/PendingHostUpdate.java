package android.appwidget;

import android.os.Parcel;
import android.os.Parcelable;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes.dex */
public class PendingHostUpdate implements Parcelable {
    public static final Parcelable.Creator<PendingHostUpdate> CREATOR = new Parcelable.Creator<PendingHostUpdate>() { // from class: android.appwidget.PendingHostUpdate.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PendingHostUpdate createFromParcel(Parcel parcel) {
            return new PendingHostUpdate(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PendingHostUpdate[] newArray(int i2) {
            return new PendingHostUpdate[i2];
        }
    };
    static final int TYPE_PROVIDER_CHANGED = 1;
    static final int TYPE_VIEWS_UPDATE = 0;
    static final int TYPE_VIEW_DATA_CHANGED = 2;
    final int appWidgetId;
    final int type;
    int viewId;
    RemoteViews views;
    AppWidgetProviderInfo widgetInfo;

    public static PendingHostUpdate providerChanged(int i2, AppWidgetProviderInfo appWidgetProviderInfo) {
        PendingHostUpdate pendingHostUpdate = new PendingHostUpdate(i2, 1);
        pendingHostUpdate.widgetInfo = appWidgetProviderInfo;
        return pendingHostUpdate;
    }

    public static PendingHostUpdate updateAppWidget(int i2, RemoteViews remoteViews) {
        PendingHostUpdate pendingHostUpdate = new PendingHostUpdate(i2, 0);
        pendingHostUpdate.views = remoteViews;
        return pendingHostUpdate;
    }

    public static PendingHostUpdate viewDataChanged(int i2, int i3) {
        PendingHostUpdate pendingHostUpdate = new PendingHostUpdate(i2, 2);
        pendingHostUpdate.viewId = i3;
        return pendingHostUpdate;
    }

    private void writeNullParcelable(Parcelable parcelable, Parcel parcel, int i2) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, i2);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.appWidgetId);
        parcel.writeInt(this.type);
        int i3 = this.type;
        if (i3 == 0) {
            writeNullParcelable(this.views, parcel, i2);
        } else if (i3 == 1) {
            writeNullParcelable(this.widgetInfo, parcel, i2);
        } else {
            if (i3 != 2) {
                return;
            }
            parcel.writeInt(this.viewId);
        }
    }

    private PendingHostUpdate(int i2, int i3) {
        this.appWidgetId = i2;
        this.type = i3;
    }

    private PendingHostUpdate(Parcel parcel) {
        this.appWidgetId = parcel.readInt();
        int i2 = parcel.readInt();
        this.type = i2;
        if (i2 == 0) {
            if (parcel.readInt() != 0) {
                this.views = new RemoteViews(parcel);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            this.viewId = parcel.readInt();
        } else if (parcel.readInt() != 0) {
            this.widgetInfo = new AppWidgetProviderInfo(parcel);
        }
    }
}
