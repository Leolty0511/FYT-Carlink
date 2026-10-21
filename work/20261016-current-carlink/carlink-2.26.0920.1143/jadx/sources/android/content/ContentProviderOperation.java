package android.content;

import android.accessibilityservice.c;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ContentProviderOperation implements Parcelable {
    public static final Parcelable.Creator<ContentProviderOperation> CREATOR = new Parcelable.Creator<ContentProviderOperation>() { // from class: android.content.ContentProviderOperation.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContentProviderOperation createFromParcel(Parcel parcel) {
            return new ContentProviderOperation(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContentProviderOperation[] newArray(int i2) {
            return new ContentProviderOperation[i2];
        }
    };
    private static final String TAG = "ContentProviderOperation";
    public static final int TYPE_ASSERT = 4;
    public static final int TYPE_DELETE = 3;
    public static final int TYPE_INSERT = 1;
    public static final int TYPE_UPDATE = 2;
    private final Integer mExpectedCount;
    private final String mSelection;
    private final String[] mSelectionArgs;
    private final Map<Integer, Integer> mSelectionArgsBackReferences;
    private final int mType;
    private final Uri mUri;
    private final ContentValues mValues;
    private final ContentValues mValuesBackReferences;
    private final boolean mYieldAllowed;

    public static class Builder {
        private Integer mExpectedCount;
        private String mSelection;
        private String[] mSelectionArgs;
        private Map<Integer, Integer> mSelectionArgsBackReferences;
        private final int mType;
        private final Uri mUri;
        private ContentValues mValues;
        private ContentValues mValuesBackReferences;
        private boolean mYieldAllowed;

        public ContentProviderOperation build() {
            ContentValues contentValues;
            ContentValues contentValues2;
            ContentValues contentValues3;
            ContentValues contentValues4;
            if (this.mType == 2 && (((contentValues3 = this.mValues) == null || contentValues3.isEmpty()) && ((contentValues4 = this.mValuesBackReferences) == null || contentValues4.isEmpty()))) {
                throw new IllegalArgumentException("Empty values");
            }
            if (this.mType == 4 && (((contentValues = this.mValues) == null || contentValues.isEmpty()) && (((contentValues2 = this.mValuesBackReferences) == null || contentValues2.isEmpty()) && this.mExpectedCount == null))) {
                throw new IllegalArgumentException("Empty values");
            }
            return new ContentProviderOperation(this);
        }

        public Builder withExpectedCount(int i2) {
            int i3 = this.mType;
            if (i3 != 2 && i3 != 3 && i3 != 4) {
                throw new IllegalArgumentException("only updates, deletes, and asserts can have expected counts");
            }
            this.mExpectedCount = Integer.valueOf(i2);
            return this;
        }

        public Builder withSelection(String str, String[] strArr) {
            int i2 = this.mType;
            if (i2 != 2 && i2 != 3 && i2 != 4) {
                throw new IllegalArgumentException("only updates, deletes, and asserts can have selections");
            }
            this.mSelection = str;
            if (strArr == null) {
                this.mSelectionArgs = null;
            } else {
                String[] strArr2 = new String[strArr.length];
                this.mSelectionArgs = strArr2;
                System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            }
            return this;
        }

        public Builder withSelectionBackReference(int i2, int i3) {
            int i4 = this.mType;
            if (i4 != 2 && i4 != 3 && i4 != 4) {
                throw new IllegalArgumentException("only updates, deletes, and asserts can have selection back-references");
            }
            if (this.mSelectionArgsBackReferences == null) {
                this.mSelectionArgsBackReferences = new HashMap();
            }
            this.mSelectionArgsBackReferences.put(Integer.valueOf(i2), Integer.valueOf(i3));
            return this;
        }

        public Builder withValue(String str, Object obj) {
            int i2 = this.mType;
            if (i2 != 1 && i2 != 2 && i2 != 4) {
                throw new IllegalArgumentException("only inserts and updates can have values");
            }
            if (this.mValues == null) {
                this.mValues = new ContentValues();
            }
            if (obj == null) {
                this.mValues.putNull(str);
            } else if (obj instanceof String) {
                this.mValues.put(str, (String) obj);
            } else if (obj instanceof Byte) {
                this.mValues.put(str, (Byte) obj);
            } else if (obj instanceof Short) {
                this.mValues.put(str, (Short) obj);
            } else if (obj instanceof Integer) {
                this.mValues.put(str, (Integer) obj);
            } else if (obj instanceof Long) {
                this.mValues.put(str, (Long) obj);
            } else if (obj instanceof Float) {
                this.mValues.put(str, (Float) obj);
            } else if (obj instanceof Double) {
                this.mValues.put(str, (Double) obj);
            } else if (obj instanceof Boolean) {
                this.mValues.put(str, (Boolean) obj);
            } else {
                if (!(obj instanceof byte[])) {
                    throw new IllegalArgumentException("bad value type: ".concat(obj.getClass().getName()));
                }
                this.mValues.put(str, (byte[]) obj);
            }
            return this;
        }

        public Builder withValueBackReference(String str, int i2) {
            int i3 = this.mType;
            if (i3 != 1 && i3 != 2 && i3 != 4) {
                throw new IllegalArgumentException("only inserts, updates, and asserts can have value back-references");
            }
            if (this.mValuesBackReferences == null) {
                this.mValuesBackReferences = new ContentValues();
            }
            this.mValuesBackReferences.put(str, Integer.valueOf(i2));
            return this;
        }

        public Builder withValueBackReferences(ContentValues contentValues) {
            int i2 = this.mType;
            if (i2 != 1 && i2 != 2 && i2 != 4) {
                throw new IllegalArgumentException("only inserts, updates, and asserts can have value back-references");
            }
            this.mValuesBackReferences = contentValues;
            return this;
        }

        public Builder withValues(ContentValues contentValues) {
            int i2 = this.mType;
            if (i2 != 1 && i2 != 2 && i2 != 4) {
                throw new IllegalArgumentException("only inserts, updates, and asserts can have values");
            }
            if (this.mValues == null) {
                this.mValues = new ContentValues();
            }
            this.mValues.putAll(contentValues);
            return this;
        }

        public Builder withYieldAllowed(boolean z2) {
            this.mYieldAllowed = z2;
            return this;
        }

        private Builder(int i2, Uri uri) {
            if (uri == null) {
                throw new IllegalArgumentException("uri must not be null");
            }
            this.mType = i2;
            this.mUri = uri;
        }
    }

    private long backRefToValue(ContentProviderResult[] contentProviderResultArr, int i2, Integer num) {
        if (num.intValue() < i2) {
            ContentProviderResult contentProviderResult = contentProviderResultArr[num.intValue()];
            Uri uri = contentProviderResult.uri;
            return uri != null ? ContentUris.parseId(uri) : contentProviderResult.count.intValue();
        }
        Log.e(TAG, toString());
        throw new ArrayIndexOutOfBoundsException("asked for back ref " + num + " but there are only " + i2 + " back refs");
    }

    public static Builder newAssertQuery(Uri uri) {
        return new Builder(4, uri);
    }

    public static Builder newDelete(Uri uri) {
        return new Builder(3, uri);
    }

    public static Builder newInsert(Uri uri) {
        return new Builder(1, uri);
    }

    public static Builder newUpdate(Uri uri) {
        return new Builder(2, uri);
    }

    public ContentProviderResult apply(ContentProvider contentProvider, ContentProviderResult[] contentProviderResultArr, int i2) throws OperationApplicationException {
        String[] strArr;
        int iUpdate;
        ContentValues contentValuesResolveValueBackReferences = resolveValueBackReferences(contentProviderResultArr, i2);
        String[] strArrResolveSelectionArgsBackReferences = resolveSelectionArgsBackReferences(contentProviderResultArr, i2);
        int i3 = this.mType;
        if (i3 == 1) {
            Uri uriInsert = contentProvider.insert(this.mUri, contentValuesResolveValueBackReferences);
            if (uriInsert != null) {
                return new ContentProviderResult(uriInsert);
            }
            throw new OperationApplicationException("insert failed");
        }
        if (i3 == 3) {
            iUpdate = contentProvider.delete(this.mUri, this.mSelection, strArrResolveSelectionArgsBackReferences);
        } else if (i3 == 2) {
            iUpdate = contentProvider.update(this.mUri, contentValuesResolveValueBackReferences, this.mSelection, strArrResolveSelectionArgsBackReferences);
        } else {
            if (i3 != 4) {
                Log.e(TAG, toString());
                throw new IllegalStateException("bad type, " + this.mType);
            }
            if (contentValuesResolveValueBackReferences != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<Map.Entry<String, Object>> it = contentValuesResolveValueBackReferences.valueSet().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getKey());
                }
                strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            } else {
                strArr = null;
            }
            Cursor cursorQuery = contentProvider.query(this.mUri, strArr, this.mSelection, strArrResolveSelectionArgsBackReferences, null);
            try {
                int count = cursorQuery.getCount();
                if (strArr != null) {
                    while (cursorQuery.moveToNext()) {
                        for (int i4 = 0; i4 < strArr.length; i4++) {
                            String string = cursorQuery.getString(i4);
                            String asString = contentValuesResolveValueBackReferences.getAsString(strArr[i4]);
                            if (!TextUtils.equals(string, asString)) {
                                Log.e(TAG, toString());
                                throw new OperationApplicationException("Found value " + string + " when expected " + asString + " for column " + strArr[i4]);
                            }
                        }
                    }
                }
                cursorQuery.close();
                iUpdate = count;
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        Integer num = this.mExpectedCount;
        if (num == null || num.intValue() == iUpdate) {
            return new ContentProviderResult(iUpdate);
        }
        Log.e(TAG, toString());
        throw new OperationApplicationException(c.d("wrong number of rows: ", iUpdate));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getType() {
        return this.mType;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public ContentProviderOperation getWithoutUserIdInUri() {
        return ContentProvider.uriHasUserId(this.mUri) ? new ContentProviderOperation(this, true) : this;
    }

    public boolean isAssertQuery() {
        return this.mType == 4;
    }

    public boolean isDelete() {
        return this.mType == 3;
    }

    public boolean isInsert() {
        return this.mType == 1;
    }

    public boolean isReadOperation() {
        return this.mType == 4;
    }

    public boolean isUpdate() {
        return this.mType == 2;
    }

    public boolean isWriteOperation() {
        int i2 = this.mType;
        return i2 == 3 || i2 == 1 || i2 == 2;
    }

    public boolean isYieldAllowed() {
        return this.mYieldAllowed;
    }

    public String[] resolveSelectionArgsBackReferences(ContentProviderResult[] contentProviderResultArr, int i2) {
        if (this.mSelectionArgsBackReferences == null) {
            return this.mSelectionArgs;
        }
        String[] strArr = this.mSelectionArgs;
        String[] strArr2 = new String[strArr.length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        for (Map.Entry<Integer, Integer> entry : this.mSelectionArgsBackReferences.entrySet()) {
            strArr2[entry.getKey().intValue()] = String.valueOf(backRefToValue(contentProviderResultArr, i2, Integer.valueOf(entry.getValue().intValue())));
        }
        return strArr2;
    }

    public ContentValues resolveValueBackReferences(ContentProviderResult[] contentProviderResultArr, int i2) {
        if (this.mValuesBackReferences == null) {
            return this.mValues;
        }
        ContentValues contentValues = this.mValues == null ? new ContentValues() : new ContentValues(this.mValues);
        Iterator<Map.Entry<String, Object>> it = this.mValuesBackReferences.valueSet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            Integer asInteger = this.mValuesBackReferences.getAsInteger(key);
            if (asInteger == null) {
                Log.e(TAG, toString());
                throw new IllegalArgumentException(c.k("values backref ", key, " is not an integer"));
            }
            contentValues.put(key, Long.valueOf(backRefToValue(contentProviderResultArr, i2, asInteger)));
        }
        return contentValues;
    }

    public String toString() {
        return "mType: " + this.mType + ", mUri: " + this.mUri + ", mSelection: " + this.mSelection + ", mExpectedCount: " + this.mExpectedCount + ", mYieldAllowed: " + this.mYieldAllowed + ", mValues: " + this.mValues + ", mValuesBackReferences: " + this.mValuesBackReferences + ", mSelectionArgsBackReferences: " + this.mSelectionArgsBackReferences;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        Uri.writeToParcel(parcel, this.mUri);
        if (this.mValues != null) {
            parcel.writeInt(1);
            this.mValues.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.mSelection != null) {
            parcel.writeInt(1);
            parcel.writeString(this.mSelection);
        } else {
            parcel.writeInt(0);
        }
        if (this.mSelectionArgs != null) {
            parcel.writeInt(1);
            parcel.writeStringArray(this.mSelectionArgs);
        } else {
            parcel.writeInt(0);
        }
        if (this.mExpectedCount != null) {
            parcel.writeInt(1);
            parcel.writeInt(this.mExpectedCount.intValue());
        } else {
            parcel.writeInt(0);
        }
        if (this.mValuesBackReferences != null) {
            parcel.writeInt(1);
            this.mValuesBackReferences.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.mSelectionArgsBackReferences != null) {
            parcel.writeInt(1);
            parcel.writeInt(this.mSelectionArgsBackReferences.size());
            for (Map.Entry<Integer, Integer> entry : this.mSelectionArgsBackReferences.entrySet()) {
                parcel.writeInt(entry.getKey().intValue());
                parcel.writeInt(entry.getValue().intValue());
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mYieldAllowed ? 1 : 0);
    }

    private ContentProviderOperation(Builder builder) {
        this.mType = builder.mType;
        this.mUri = builder.mUri;
        this.mValues = builder.mValues;
        this.mSelection = builder.mSelection;
        this.mSelectionArgs = builder.mSelectionArgs;
        this.mExpectedCount = builder.mExpectedCount;
        this.mSelectionArgsBackReferences = builder.mSelectionArgsBackReferences;
        this.mValuesBackReferences = builder.mValuesBackReferences;
        this.mYieldAllowed = builder.mYieldAllowed;
    }

    private ContentProviderOperation(Parcel parcel) {
        this.mType = parcel.readInt();
        this.mUri = Uri.CREATOR.createFromParcel(parcel);
        this.mValues = parcel.readInt() != 0 ? ContentValues.CREATOR.createFromParcel(parcel) : null;
        this.mSelection = parcel.readInt() != 0 ? parcel.readString() : null;
        this.mSelectionArgs = parcel.readInt() != 0 ? parcel.readStringArray() : null;
        this.mExpectedCount = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
        this.mValuesBackReferences = parcel.readInt() != 0 ? ContentValues.CREATOR.createFromParcel(parcel) : null;
        HashMap map = parcel.readInt() != 0 ? new HashMap() : null;
        this.mSelectionArgsBackReferences = map;
        if (map != null) {
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                this.mSelectionArgsBackReferences.put(Integer.valueOf(parcel.readInt()), Integer.valueOf(parcel.readInt()));
            }
        }
        this.mYieldAllowed = parcel.readInt() != 0;
    }

    public ContentProviderOperation(ContentProviderOperation contentProviderOperation, boolean z2) {
        this.mType = contentProviderOperation.mType;
        if (z2) {
            this.mUri = ContentProvider.getUriWithoutUserId(contentProviderOperation.mUri);
        } else {
            this.mUri = contentProviderOperation.mUri;
        }
        this.mValues = contentProviderOperation.mValues;
        this.mSelection = contentProviderOperation.mSelection;
        this.mSelectionArgs = contentProviderOperation.mSelectionArgs;
        this.mExpectedCount = contentProviderOperation.mExpectedCount;
        this.mSelectionArgsBackReferences = contentProviderOperation.mSelectionArgsBackReferences;
        this.mValuesBackReferences = contentProviderOperation.mValuesBackReferences;
        this.mYieldAllowed = contentProviderOperation.mYieldAllowed;
    }
}
