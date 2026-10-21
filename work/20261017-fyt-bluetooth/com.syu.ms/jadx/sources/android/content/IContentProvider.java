package android.content;

import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.ICancellationSignal;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface IContentProvider extends IInterface {
    public static final int APPLY_BATCH_TRANSACTION = 20;
    public static final int BULK_INSERT_TRANSACTION = 13;
    public static final int CALL_TRANSACTION = 21;
    public static final int CANONICALIZE_TRANSACTION = 25;
    public static final int CREATE_CANCELATION_SIGNAL_TRANSACTION = 24;
    public static final int DELETE_TRANSACTION = 4;
    public static final int GET_STREAM_TYPES_TRANSACTION = 22;
    public static final int GET_TYPE_TRANSACTION = 2;
    public static final int INSERT_TRANSACTION = 3;
    public static final int OPEN_ASSET_FILE_TRANSACTION = 15;
    public static final int OPEN_FILE_TRANSACTION = 14;
    public static final int OPEN_TYPED_ASSET_FILE_TRANSACTION = 23;
    public static final int QUERY_TRANSACTION = 1;
    public static final int UNCANONICALIZE_TRANSACTION = 26;
    public static final int UPDATE_TRANSACTION = 10;
    public static final String descriptor = "android.content.IContentProvider";

    ContentProviderResult[] applyBatch(String str, ArrayList<ContentProviderOperation> arrayList);

    int bulkInsert(String str, Uri uri, ContentValues[] contentValuesArr);

    Bundle call(String str, String str2, String str3, Bundle bundle);

    Uri canonicalize(String str, Uri uri);

    ICancellationSignal createCancellationSignal();

    int delete(String str, Uri uri, String str2, String[] strArr);

    String[] getStreamTypes(Uri uri, String str);

    String getType(Uri uri);

    Uri insert(String str, Uri uri, ContentValues contentValues);

    AssetFileDescriptor openAssetFile(String str, Uri uri, String str2, ICancellationSignal iCancellationSignal);

    ParcelFileDescriptor openFile(String str, Uri uri, String str2, ICancellationSignal iCancellationSignal);

    AssetFileDescriptor openTypedAssetFile(String str, Uri uri, String str2, Bundle bundle, ICancellationSignal iCancellationSignal);

    Cursor query(String str, Uri uri, String[] strArr, String str2, String[] strArr2, String str3, ICancellationSignal iCancellationSignal);

    Uri uncanonicalize(String str, Uri uri);

    int update(String str, Uri uri, ContentValues contentValues, String str2, String[] strArr);
}
