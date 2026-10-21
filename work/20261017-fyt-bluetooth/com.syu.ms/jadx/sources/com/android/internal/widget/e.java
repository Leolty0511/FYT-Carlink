package com.android.internal.widget;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes.dex */
public interface e extends IInterface {

    public static abstract class a extends Binder implements e {
        private static final String DESCRIPTOR = "com.android.internal.widget.IRemoteViewsFactory";
        public static final int TRANSACTION_getCount = 4;
        public static final int TRANSACTION_getItemId = 8;
        public static final int TRANSACTION_getLoadingView = 6;
        public static final int TRANSACTION_getViewAt = 5;
        public static final int TRANSACTION_getViewTypeCount = 7;
        public static final int TRANSACTION_hasStableIds = 9;
        public static final int TRANSACTION_isCreated = 10;
        public static final int TRANSACTION_onDataSetChanged = 1;
        public static final int TRANSACTION_onDataSetChangedAsync = 2;
        public static final int TRANSACTION_onDestroy = 3;

        /* JADX INFO: renamed from: com.android.internal.widget.e$a$a, reason: collision with other inner class name */
        public static class C0032a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f1516a;

            public C0032a(IBinder iBinder) {
                this.f1516a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1516a;
            }

            @Override // com.android.internal.widget.e
            public int getCount() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1516a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.widget.e
            public long getItemId(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.f1516a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.widget.e
            public RemoteViews getLoadingView() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1516a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? RemoteViews.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.widget.e
            public RemoteViews getViewAt(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.f1516a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? RemoteViews.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.widget.e
            public int getViewTypeCount() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1516a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.widget.e
            public boolean hasStableIds() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1516a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.widget.e
            public boolean isCreated() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1516a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.widget.e
            public void onDataSetChanged() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.f1516a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static e asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new C0032a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDataSetChanged();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDataSetChangedAsync();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDestroy(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int count = getCount();
                    parcel2.writeNoException();
                    parcel2.writeInt(count);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    RemoteViews viewAt = getViewAt(parcel.readInt());
                    parcel2.writeNoException();
                    if (viewAt != null) {
                        parcel2.writeInt(1);
                        viewAt.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    RemoteViews loadingView = getLoadingView();
                    parcel2.writeNoException();
                    if (loadingView != null) {
                        parcel2.writeInt(1);
                        loadingView.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int viewTypeCount = getViewTypeCount();
                    parcel2.writeNoException();
                    parcel2.writeInt(viewTypeCount);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    long itemId = getItemId(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(itemId);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasStableIds = hasStableIds();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasStableIds ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsCreated = isCreated();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCreated ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int getCount();

    long getItemId(int i2);

    RemoteViews getLoadingView();

    RemoteViews getViewAt(int i2);

    int getViewTypeCount();

    boolean hasStableIds();

    boolean isCreated();

    void onDataSetChanged();

    void onDataSetChangedAsync();

    void onDestroy(Intent intent);
}
