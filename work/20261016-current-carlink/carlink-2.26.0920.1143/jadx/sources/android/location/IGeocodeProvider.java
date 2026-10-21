package android.location;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IGeocodeProvider extends IInterface {

    public static abstract class Stub extends Binder implements IGeocodeProvider {
        private static final String DESCRIPTOR = "android.location.IGeocodeProvider";
        static final int TRANSACTION_getFromLocation = 1;
        static final int TRANSACTION_getFromLocationName = 2;

        public static class Proxy implements IGeocodeProvider {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.location.IGeocodeProvider
            public String getFromLocation(double d2, double d3, int i2, GeocoderParams geocoderParams, List<Address> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeDouble(d3);
                    parcelObtain.writeInt(i2);
                    if (geocoderParams != null) {
                        parcelObtain.writeInt(1);
                        geocoderParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    String string = parcelObtain2.readString();
                    parcelObtain2.readTypedList(list, Address.CREATOR);
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.location.IGeocodeProvider
            public String getFromLocationName(String str, double d2, double d3, double d4, double d5, int i2, GeocoderParams geocoderParams, List<Address> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeDouble(d3);
                    parcelObtain.writeDouble(d4);
                    parcelObtain.writeDouble(d5);
                    parcelObtain.writeInt(i2);
                    if (geocoderParams != null) {
                        parcelObtain.writeInt(1);
                        geocoderParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    String string = parcelObtain2.readString();
                    parcelObtain2.readTypedList(list, Address.CREATOR);
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGeocodeProvider asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGeocodeProvider)) ? new Proxy(iBinder) : (IGeocodeProvider) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            GeocoderParams geocoderParamsCreateFromParcel;
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                double d2 = parcel.readDouble();
                double d3 = parcel.readDouble();
                int i4 = parcel.readInt();
                geocoderParamsCreateFromParcel = parcel.readInt() != 0 ? GeocoderParams.CREATOR.createFromParcel(parcel) : null;
                ArrayList arrayList = new ArrayList();
                String fromLocation = getFromLocation(d2, d3, i4, geocoderParamsCreateFromParcel, arrayList);
                parcel2.writeNoException();
                parcel2.writeString(fromLocation);
                parcel2.writeTypedList(arrayList);
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            String string = parcel.readString();
            double d4 = parcel.readDouble();
            double d5 = parcel.readDouble();
            double d6 = parcel.readDouble();
            double d7 = parcel.readDouble();
            int i5 = parcel.readInt();
            geocoderParamsCreateFromParcel = parcel.readInt() != 0 ? GeocoderParams.CREATOR.createFromParcel(parcel) : null;
            ArrayList arrayList2 = new ArrayList();
            String fromLocationName = getFromLocationName(string, d4, d5, d6, d7, i5, geocoderParamsCreateFromParcel, arrayList2);
            parcel2.writeNoException();
            parcel2.writeString(fromLocationName);
            parcel2.writeTypedList(arrayList2);
            return true;
        }
    }

    String getFromLocation(double d2, double d3, int i2, GeocoderParams geocoderParams, List<Address> list);

    String getFromLocationName(String str, double d2, double d3, double d4, double d5, int i2, GeocoderParams geocoderParams, List<Address> list);
}
