package android.media;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaMetadataEditor {
    public static final int BITMAP_KEY_ARTWORK = 100;
    public static final int KEY_EDITABLE_MASK = 536870911;
    public static final SparseIntArray METADATA_KEYS_TYPE;
    public static final int METADATA_TYPE_BITMAP = 2;
    public static final int METADATA_TYPE_INVALID = -1;
    public static final int METADATA_TYPE_LONG = 0;
    public static final int METADATA_TYPE_RATING = 3;
    public static final int METADATA_TYPE_STRING = 1;
    public static final int RATING_KEY_BY_OTHERS = 101;
    public static final int RATING_KEY_BY_USER = 268435457;
    private static final String TAG = "MediaMetadataEditor";
    public long mEditableKeys;
    public Bitmap mEditorArtwork;
    public Bundle mEditorMetadata;
    public boolean mMetadataChanged = false;
    public boolean mApplied = false;
    public boolean mArtworkChanged = false;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(17);
        METADATA_KEYS_TYPE = sparseIntArray;
        sparseIntArray.put(0, 0);
        sparseIntArray.put(14, 0);
        sparseIntArray.put(9, 0);
        sparseIntArray.put(8, 0);
        sparseIntArray.put(1, 1);
        sparseIntArray.put(13, 1);
        sparseIntArray.put(7, 1);
        sparseIntArray.put(2, 1);
        sparseIntArray.put(3, 1);
        sparseIntArray.put(15, 1);
        sparseIntArray.put(4, 1);
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 1);
        sparseIntArray.put(11, 1);
        sparseIntArray.put(100, 2);
        sparseIntArray.put(101, 3);
        sparseIntArray.put(RATING_KEY_BY_USER, 3);
    }

    public synchronized void addEditableKey(int i2) {
        if (this.mApplied) {
            Log.e(TAG, "Can't change editable keys of a previously applied MetadataEditor");
            return;
        }
        if (i2 == 268435457) {
            this.mEditableKeys |= (long) (i2 & KEY_EDITABLE_MASK);
            this.mMetadataChanged = true;
        } else {
            Log.e(TAG, "Metadata key " + i2 + " cannot be edited");
        }
    }

    public abstract void apply();

    public synchronized void clear() {
        if (this.mApplied) {
            Log.e(TAG, "Can't clear a previously applied MediaMetadataEditor");
        } else {
            this.mEditorMetadata.clear();
            this.mEditorArtwork = null;
        }
    }

    public synchronized Bitmap getBitmap(int i2, Bitmap bitmap) {
        try {
            if (i2 != 100) {
                throw new IllegalArgumentException("Invalid type 'Bitmap' for key " + i2);
            }
            Bitmap bitmap2 = this.mEditorArtwork;
            if (bitmap2 != null) {
                bitmap = bitmap2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmap;
    }

    public synchronized int[] getEditableKeys() {
        if (this.mEditableKeys != 268435457) {
            return null;
        }
        return new int[]{RATING_KEY_BY_USER};
    }

    public synchronized long getLong(int i2, long j2) {
        if (METADATA_KEYS_TYPE.get(i2, -1) != 0) {
            throw new IllegalArgumentException("Invalid type 'long' for key " + i2);
        }
        return this.mEditorMetadata.getLong(String.valueOf(i2), j2);
    }

    public synchronized Object getObject(int i2, Object obj) {
        int i3 = METADATA_KEYS_TYPE.get(i2, -1);
        if (i3 == 0) {
            if (!this.mEditorMetadata.containsKey(String.valueOf(i2))) {
                return obj;
            }
            return Long.valueOf(this.mEditorMetadata.getLong(String.valueOf(i2)));
        }
        if (i3 == 1) {
            if (!this.mEditorMetadata.containsKey(String.valueOf(i2))) {
                return obj;
            }
            return this.mEditorMetadata.getString(String.valueOf(i2));
        }
        if (i3 != 2) {
            if (i3 == 3) {
                if (!this.mEditorMetadata.containsKey(String.valueOf(i2))) {
                    return obj;
                }
                return this.mEditorMetadata.getParcelable(String.valueOf(i2));
            }
        } else if (i2 == 100) {
            Bitmap bitmap = this.mEditorArtwork;
            if (bitmap != null) {
                obj = bitmap;
            }
            return obj;
        }
        throw new IllegalArgumentException("Invalid key " + i2);
    }

    public synchronized String getString(int i2, String str) {
        if (METADATA_KEYS_TYPE.get(i2, -1) != 1) {
            throw new IllegalArgumentException("Invalid type 'String' for key " + i2);
        }
        return this.mEditorMetadata.getString(String.valueOf(i2), str);
    }

    public synchronized MediaMetadataEditor putBitmap(int i2, Bitmap bitmap) {
        if (this.mApplied) {
            Log.e(TAG, "Can't edit a previously applied MediaMetadataEditor");
            return this;
        }
        if (i2 == 100) {
            this.mEditorArtwork = bitmap;
            this.mArtworkChanged = true;
            return this;
        }
        throw new IllegalArgumentException("Invalid type 'Bitmap' for key " + i2);
    }

    public synchronized MediaMetadataEditor putLong(int i2, long j2) {
        if (this.mApplied) {
            Log.e(TAG, "Can't edit a previously applied MediaMetadataEditor");
            return this;
        }
        if (METADATA_KEYS_TYPE.get(i2, -1) == 0) {
            this.mEditorMetadata.putLong(String.valueOf(i2), j2);
            this.mMetadataChanged = true;
            return this;
        }
        throw new IllegalArgumentException("Invalid type 'long' for key " + i2);
    }

    public synchronized MediaMetadataEditor putObject(int i2, Object obj) {
        if (this.mApplied) {
            Log.e(TAG, "Can't edit a previously applied MediaMetadataEditor");
            return this;
        }
        int i3 = METADATA_KEYS_TYPE.get(i2, -1);
        if (i3 == 0) {
            if (obj instanceof Long) {
                return putLong(i2, ((Long) obj).longValue());
            }
            throw new IllegalArgumentException("Not a non-null Long for key " + i2);
        }
        if (i3 == 1) {
            if (obj != null && !(obj instanceof String)) {
                throw new IllegalArgumentException("Not a String for key " + i2);
            }
            return putString(i2, (String) obj);
        }
        if (i3 != 2) {
            if (i3 == 3) {
                this.mEditorMetadata.putParcelable(String.valueOf(i2), (Parcelable) obj);
                this.mMetadataChanged = true;
                return this;
            }
            throw new IllegalArgumentException("Invalid key " + i2);
        }
        if (obj != null && !(obj instanceof Bitmap)) {
            throw new IllegalArgumentException("Not a Bitmap for key " + i2);
        }
        return putBitmap(i2, (Bitmap) obj);
    }

    public synchronized MediaMetadataEditor putString(int i2, String str) {
        if (this.mApplied) {
            Log.e(TAG, "Can't edit a previously applied MediaMetadataEditor");
            return this;
        }
        if (METADATA_KEYS_TYPE.get(i2, -1) == 1) {
            this.mEditorMetadata.putString(String.valueOf(i2), str);
            this.mMetadataChanged = true;
            return this;
        }
        throw new IllegalArgumentException("Invalid type 'String' for key " + i2);
    }

    public synchronized void removeEditableKeys() {
        if (this.mApplied) {
            Log.e(TAG, "Can't remove all editable keys of a previously applied MetadataEditor");
            return;
        }
        if (this.mEditableKeys != 0) {
            this.mEditableKeys = 0L;
            this.mMetadataChanged = true;
        }
    }
}
