package k;

import android.appwidget.AppWidgetProviderInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: k.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0061a extends Binder implements a {
        private static final String DESCRIPTOR = "com.android.internal.appwidget.IAppWidgetHost";
        public static final int TRANSACTION_providerChanged = 2;
        public static final int TRANSACTION_providersChanged = 3;
        public static final int TRANSACTION_updateAppWidget = 1;
        public static final int TRANSACTION_viewDataChanged = 4;

        /* JADX INFO: renamed from: k.a$a$a, reason: collision with other inner class name */
        public static class C0062a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f3050a;

            public C0062a(IBinder iBinder) {
                this.f3050a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3050a;
            }
        }

        public AbstractBinderC0061a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0062a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                updateAppWidget(parcel.readInt(), parcel.readInt() != 0 ? RemoteViews.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                providerChanged(parcel.readInt(), parcel.readInt() != 0 ? AppWidgetProviderInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                providersChanged(parcel.readInt());
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                viewDataChanged(parcel.readInt(), parcel.readInt(), parcel.readInt());
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void providerChanged(int i2, AppWidgetProviderInfo appWidgetProviderInfo, int i3);

    void providersChanged(int i2);

    void updateAppWidget(int i2, RemoteViews remoteViews, int i3);

    void viewDataChanged(int i2, int i3, int i4);
}
