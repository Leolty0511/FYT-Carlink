package android.media;

import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.net.Uri;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MediaInserter {
    private final int mBufferSizePerUri;
    private final ContentProviderClient mProvider;
    private final HashMap<Uri, List<ContentValues>> mRowMap = new HashMap<>();
    private final HashMap<Uri, List<ContentValues>> mPriorityRowMap = new HashMap<>();

    public MediaInserter(ContentProviderClient contentProviderClient, int i2) {
        this.mProvider = contentProviderClient;
        this.mBufferSizePerUri = i2;
    }

    private void flush(Uri uri, List<ContentValues> list) {
        if (list.isEmpty()) {
            return;
        }
        this.mProvider.bulkInsert(uri, (ContentValues[]) list.toArray(new ContentValues[list.size()]));
        list.clear();
    }

    private void flushAllPriority() {
        for (Uri uri : this.mPriorityRowMap.keySet()) {
            flush(uri, this.mPriorityRowMap.get(uri));
        }
        this.mPriorityRowMap.clear();
    }

    public void flushAll() {
        flushAllPriority();
        for (Uri uri : this.mRowMap.keySet()) {
            flush(uri, this.mRowMap.get(uri));
        }
        this.mRowMap.clear();
    }

    public void insert(Uri uri, ContentValues contentValues) {
        insert(uri, contentValues, false);
    }

    public void insertwithPriority(Uri uri, ContentValues contentValues) {
        insert(uri, contentValues, true);
    }

    private void insert(Uri uri, ContentValues contentValues, boolean z2) {
        HashMap<Uri, List<ContentValues>> map = z2 ? this.mPriorityRowMap : this.mRowMap;
        List<ContentValues> arrayList = map.get(uri);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(uri, arrayList);
        }
        arrayList.add(new ContentValues(contentValues));
        if (arrayList.size() >= this.mBufferSizePerUri) {
            flushAllPriority();
            flush(uri, arrayList);
        }
    }
}
