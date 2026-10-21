package android.content;

import android.content.res.AssetFileDescriptor;
import android.database.BulkCursorDescriptor;
import android.database.Cursor;
import android.database.CursorToBulkCursorAdaptor;
import android.database.DatabaseUtils;
import android.database.IContentObserver;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ICancellationSignal;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.SystemProperties;
import android.provider.CallLog;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import android.util.Log;
import com.android.internal.telephony.PhoneConstants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class ContentProviderNative extends Binder implements IContentProvider {
    public ContentProviderNative() {
        attachInterface(this, IContentProvider.descriptor);
    }

    public static IContentProvider asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IContentProvider iContentProvider = (IContentProvider) iBinder.queryLocalInterface(IContentProvider.descriptor);
        return iContentProvider != null ? iContentProvider : new ContentProviderProxy(iBinder);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public abstract String getProviderName();

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws Throwable {
        String[] strArr;
        int i4 = 0;
        try {
            if (i2 == 1) {
                parcel.enforceInterface(IContentProvider.descriptor);
                String string = parcel.readString();
                Uri uriCreateFromParcel = Uri.CREATOR.createFromParcel(parcel);
                int i5 = parcel.readInt();
                CursorToBulkCursorAdaptor cursorToBulkCursorAdaptor = null;
                if (i5 > 0) {
                    strArr = new String[i5];
                    for (int i6 = 0; i6 < i5; i6++) {
                        strArr[i6] = parcel.readString();
                    }
                } else {
                    strArr = null;
                }
                Bundle bundle = parcel.readBundle();
                if (SystemProperties.get("service.project.sec").equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                    String[] strArr2 = {"sms", PhoneConstants.APN_TYPE_MMS, "mms-sms", CallLog.AUTHORITY, "contacts;com.android.contacts", Contacts.AUTHORITY, ContactsContract.AUTHORITY, "icc", MediaStore.AUTHORITY, null};
                    uriCreateFromParcel.getPath();
                    String authority = uriCreateFromParcel.getAuthority();
                    int callingUid = Binder.getCallingUid();
                    int i7 = 0;
                    while (true) {
                        String str = strArr2[i7];
                        if (str == null) {
                            break;
                        }
                        if (authority.equals(str)) {
                            int iDojudge = Binder.dojudge(callingUid, strArr2[i7] + "query", 1, 0, null);
                            Log.i("jason add ", "proviedname[i]=" + strArr2[i7] + ", allow=" + iDojudge);
                            if (iDojudge >= 0) {
                                break;
                            }
                            bundle = ContentResolver.createSqlQueryBundle("1==0", null, null);
                            break;
                        }
                        i7++;
                    }
                }
                Bundle bundle2 = bundle;
                IContentObserver iContentObserverAsInterface = IContentObserver.Stub.asInterface(parcel.readStrongBinder());
                Cursor cursorQuery = query(string, uriCreateFromParcel, strArr, bundle2, ICancellationSignal.Stub.asInterface(parcel.readStrongBinder()));
                if (cursorQuery != null) {
                    try {
                        CursorToBulkCursorAdaptor cursorToBulkCursorAdaptor2 = new CursorToBulkCursorAdaptor(cursorQuery, iContentObserverAsInterface, getProviderName());
                        try {
                            BulkCursorDescriptor bulkCursorDescriptor = cursorToBulkCursorAdaptor2.getBulkCursorDescriptor();
                            try {
                                parcel2.writeNoException();
                                parcel2.writeInt(1);
                                bulkCursorDescriptor.writeToParcel(parcel2, 1);
                            } catch (Throwable th) {
                                th = th;
                                cursorQuery = null;
                                if (cursorToBulkCursorAdaptor != null) {
                                    cursorToBulkCursorAdaptor.close();
                                }
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursorQuery = null;
                            cursorToBulkCursorAdaptor = cursorToBulkCursorAdaptor2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } else {
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(IContentProvider.descriptor);
                String type = getType(Uri.CREATOR.createFromParcel(parcel));
                parcel2.writeNoException();
                parcel2.writeString(type);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(IContentProvider.descriptor);
                Uri uriInsert = insert(parcel.readString(), Uri.CREATOR.createFromParcel(parcel), ContentValues.CREATOR.createFromParcel(parcel));
                parcel2.writeNoException();
                Uri.writeToParcel(parcel2, uriInsert);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(IContentProvider.descriptor);
                int iDelete = delete(parcel.readString(), Uri.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readStringArray());
                parcel2.writeNoException();
                parcel2.writeInt(iDelete);
                return true;
            }
            if (i2 == 10) {
                parcel.enforceInterface(IContentProvider.descriptor);
                int iUpdate = update(parcel.readString(), Uri.CREATOR.createFromParcel(parcel), ContentValues.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readStringArray());
                parcel2.writeNoException();
                parcel2.writeInt(iUpdate);
                return true;
            }
            switch (i2) {
                case 13:
                    parcel.enforceInterface(IContentProvider.descriptor);
                    int iBulkInsert = bulkInsert(parcel.readString(), Uri.CREATOR.createFromParcel(parcel), (ContentValues[]) parcel.createTypedArray(ContentValues.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(iBulkInsert);
                    return true;
                case 14:
                    parcel.enforceInterface(IContentProvider.descriptor);
                    ParcelFileDescriptor parcelFileDescriptorOpenFile = openFile(parcel.readString(), Uri.CREATOR.createFromParcel(parcel), parcel.readString(), ICancellationSignal.Stub.asInterface(parcel.readStrongBinder()), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    if (parcelFileDescriptorOpenFile != null) {
                        parcel2.writeInt(1);
                        parcelFileDescriptorOpenFile.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 15:
                    parcel.enforceInterface(IContentProvider.descriptor);
                    AssetFileDescriptor assetFileDescriptorOpenAssetFile = openAssetFile(parcel.readString(), Uri.CREATOR.createFromParcel(parcel), parcel.readString(), ICancellationSignal.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (assetFileDescriptorOpenAssetFile != null) {
                        parcel2.writeInt(1);
                        assetFileDescriptorOpenAssetFile.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    switch (i2) {
                        case 20:
                            parcel.enforceInterface(IContentProvider.descriptor);
                            String string2 = parcel.readString();
                            int i8 = parcel.readInt();
                            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>(i8);
                            for (int i9 = 0; i9 < i8; i9++) {
                                arrayList.add(i9, ContentProviderOperation.CREATOR.createFromParcel(parcel));
                            }
                            ContentProviderResult[] contentProviderResultArrApplyBatch = applyBatch(string2, arrayList);
                            parcel2.writeNoException();
                            parcel2.writeTypedArray(contentProviderResultArrApplyBatch, 0);
                            return true;
                        case 21:
                            parcel.enforceInterface(IContentProvider.descriptor);
                            Bundle bundleCall = call(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readBundle());
                            parcel2.writeNoException();
                            parcel2.writeBundle(bundleCall);
                            return true;
                        case 22:
                            parcel.enforceInterface(IContentProvider.descriptor);
                            String[] streamTypes = getStreamTypes(Uri.CREATOR.createFromParcel(parcel), parcel.readString());
                            parcel2.writeNoException();
                            parcel2.writeStringArray(streamTypes);
                            return true;
                        case 23:
                            parcel.enforceInterface(IContentProvider.descriptor);
                            AssetFileDescriptor assetFileDescriptorOpenTypedAssetFile = openTypedAssetFile(parcel.readString(), Uri.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readBundle(), ICancellationSignal.Stub.asInterface(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            if (assetFileDescriptorOpenTypedAssetFile != null) {
                                parcel2.writeInt(1);
                                assetFileDescriptorOpenTypedAssetFile.writeToParcel(parcel2, 1);
                            } else {
                                parcel2.writeInt(0);
                            }
                            return true;
                        case 24:
                            parcel.enforceInterface(IContentProvider.descriptor);
                            ICancellationSignal iCancellationSignalCreateCancellationSignal = createCancellationSignal();
                            parcel2.writeNoException();
                            parcel2.writeStrongBinder(iCancellationSignalCreateCancellationSignal.asBinder());
                            return true;
                        case 25:
                            parcel.enforceInterface(IContentProvider.descriptor);
                            Uri uriCanonicalize = canonicalize(parcel.readString(), Uri.CREATOR.createFromParcel(parcel));
                            parcel2.writeNoException();
                            Uri.writeToParcel(parcel2, uriCanonicalize);
                            return true;
                        case 26:
                            parcel.enforceInterface(IContentProvider.descriptor);
                            Uri uriUncanonicalize = uncanonicalize(parcel.readString(), Uri.CREATOR.createFromParcel(parcel));
                            parcel2.writeNoException();
                            Uri.writeToParcel(parcel2, uriUncanonicalize);
                            return true;
                        case 27:
                            parcel.enforceInterface(IContentProvider.descriptor);
                            boolean zRefresh = refresh(parcel.readString(), Uri.CREATOR.createFromParcel(parcel), parcel.readBundle(), ICancellationSignal.Stub.asInterface(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            if (!zRefresh) {
                                i4 = -1;
                            }
                            parcel2.writeInt(i4);
                            return true;
                        default:
                            return super.onTransact(i2, parcel, parcel2, i3);
                    }
            }
        } catch (Exception e2) {
            DatabaseUtils.writeExceptionToParcel(parcel2, e2);
            return true;
        }
    }
}
