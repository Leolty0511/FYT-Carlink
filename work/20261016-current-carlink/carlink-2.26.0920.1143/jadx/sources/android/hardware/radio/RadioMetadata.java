package android.hardware.radio;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class RadioMetadata implements Parcelable {
    public static final Parcelable.Creator<RadioMetadata> CREATOR;
    private static final ArrayMap<String, Integer> METADATA_KEYS_TYPE;
    public static final String METADATA_KEY_ALBUM = "android.hardware.radio.metadata.ALBUM";
    public static final String METADATA_KEY_ART = "android.hardware.radio.metadata.ART";
    public static final String METADATA_KEY_ARTIST = "android.hardware.radio.metadata.ARTIST";
    public static final String METADATA_KEY_CLOCK = "android.hardware.radio.metadata.CLOCK";
    public static final String METADATA_KEY_GENRE = "android.hardware.radio.metadata.GENRE";
    public static final String METADATA_KEY_ICON = "android.hardware.radio.metadata.ICON";
    public static final String METADATA_KEY_RBDS_PTY = "android.hardware.radio.metadata.RBDS_PTY";
    public static final String METADATA_KEY_RDS_PI = "android.hardware.radio.metadata.RDS_PI";
    public static final String METADATA_KEY_RDS_PS = "android.hardware.radio.metadata.RDS_PS";
    public static final String METADATA_KEY_RDS_PTY = "android.hardware.radio.metadata.RDS_PTY";
    public static final String METADATA_KEY_RDS_RT = "android.hardware.radio.metadata.RDS_RT";
    public static final String METADATA_KEY_TITLE = "android.hardware.radio.metadata.TITLE";
    private static final int METADATA_TYPE_BITMAP = 2;
    private static final int METADATA_TYPE_CLOCK = 3;
    private static final int METADATA_TYPE_INT = 0;
    private static final int METADATA_TYPE_INVALID = -1;
    private static final int METADATA_TYPE_TEXT = 1;
    private static final int NATIVE_KEY_ALBUM = 7;
    private static final int NATIVE_KEY_ART = 10;
    private static final int NATIVE_KEY_ARTIST = 6;
    private static final int NATIVE_KEY_CLOCK = 11;
    private static final int NATIVE_KEY_GENRE = 8;
    private static final int NATIVE_KEY_ICON = 9;
    private static final int NATIVE_KEY_INVALID = -1;
    private static final SparseArray<String> NATIVE_KEY_MAPPING;
    private static final int NATIVE_KEY_RBDS_PTY = 3;
    private static final int NATIVE_KEY_RDS_PI = 0;
    private static final int NATIVE_KEY_RDS_PS = 1;
    private static final int NATIVE_KEY_RDS_PTY = 2;
    private static final int NATIVE_KEY_RDS_RT = 4;
    private static final int NATIVE_KEY_TITLE = 5;
    private static final String TAG = "BroadcastRadio.metadata";
    private final Bundle mBundle;

    public static final class Clock implements Parcelable {
        public static final Parcelable.Creator<Clock> CREATOR = new Parcelable.Creator<Clock>() { // from class: android.hardware.radio.RadioMetadata.Clock.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Clock createFromParcel(Parcel parcel) {
                return new Clock(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Clock[] newArray(int i2) {
                return new Clock[i2];
            }
        };
        private final int mTimezoneOffsetMinutes;
        private final long mUtcEpochSeconds;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getTimezoneOffsetMinutes() {
            return this.mTimezoneOffsetMinutes;
        }

        public long getUtcEpochSeconds() {
            return this.mUtcEpochSeconds;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.mUtcEpochSeconds);
            parcel.writeInt(this.mTimezoneOffsetMinutes);
        }

        public Clock(long j2, int i2) {
            this.mUtcEpochSeconds = j2;
            this.mTimezoneOffsetMinutes = i2;
        }

        private Clock(Parcel parcel) {
            this.mUtcEpochSeconds = parcel.readLong();
            this.mTimezoneOffsetMinutes = parcel.readInt();
        }
    }

    static {
        ArrayMap<String, Integer> arrayMap = new ArrayMap<>();
        METADATA_KEYS_TYPE = arrayMap;
        arrayMap.put(METADATA_KEY_RDS_PI, 0);
        arrayMap.put(METADATA_KEY_RDS_PS, 1);
        arrayMap.put(METADATA_KEY_RDS_PTY, 0);
        arrayMap.put(METADATA_KEY_RBDS_PTY, 0);
        arrayMap.put(METADATA_KEY_RDS_RT, 1);
        arrayMap.put(METADATA_KEY_TITLE, 1);
        arrayMap.put(METADATA_KEY_ARTIST, 1);
        arrayMap.put(METADATA_KEY_ALBUM, 1);
        arrayMap.put(METADATA_KEY_GENRE, 1);
        arrayMap.put(METADATA_KEY_ICON, 2);
        arrayMap.put(METADATA_KEY_ART, 2);
        arrayMap.put(METADATA_KEY_CLOCK, 3);
        SparseArray<String> sparseArray = new SparseArray<>();
        NATIVE_KEY_MAPPING = sparseArray;
        sparseArray.put(0, METADATA_KEY_RDS_PI);
        sparseArray.put(1, METADATA_KEY_RDS_PS);
        sparseArray.put(2, METADATA_KEY_RDS_PTY);
        sparseArray.put(3, METADATA_KEY_RBDS_PTY);
        sparseArray.put(4, METADATA_KEY_RDS_RT);
        sparseArray.put(5, METADATA_KEY_TITLE);
        sparseArray.put(6, METADATA_KEY_ARTIST);
        sparseArray.put(7, METADATA_KEY_ALBUM);
        sparseArray.put(8, METADATA_KEY_GENRE);
        sparseArray.put(9, METADATA_KEY_ICON);
        sparseArray.put(10, METADATA_KEY_ART);
        sparseArray.put(11, METADATA_KEY_CLOCK);
        CREATOR = new Parcelable.Creator<RadioMetadata>() { // from class: android.hardware.radio.RadioMetadata.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RadioMetadata createFromParcel(Parcel parcel) {
                return new RadioMetadata(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RadioMetadata[] newArray(int i2) {
                return new RadioMetadata[i2];
            }
        };
    }

    public static String getKeyFromNativeKey(int i2) {
        return NATIVE_KEY_MAPPING.get(i2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putInt(Bundle bundle, String str, int i2) {
        int iIntValue = METADATA_KEYS_TYPE.getOrDefault(str, -1).intValue();
        if (iIntValue != 0 && iIntValue != 2) {
            throw new IllegalArgumentException(android.accessibilityservice.c.k("The ", str, " key cannot be used to put an int"));
        }
        bundle.putInt(str, i2);
    }

    public boolean containsKey(String str) {
        return this.mBundle.containsKey(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Deprecated
    public Bitmap getBitmap(String str) {
        try {
            return (Bitmap) this.mBundle.getParcelable(str);
        } catch (Exception e2) {
            Log.w(TAG, "Failed to retrieve a key as Bitmap.", e2);
            return null;
        }
    }

    public int getBitmapId(String str) {
        if (METADATA_KEY_ICON.equals(str) || METADATA_KEY_ART.equals(str)) {
            return getInt(str);
        }
        return 0;
    }

    public Clock getClock(String str) {
        try {
            return (Clock) this.mBundle.getParcelable(str);
        } catch (Exception e2) {
            Log.w(TAG, "Failed to retrieve a key as Clock.", e2);
            return null;
        }
    }

    public int getInt(String str) {
        return this.mBundle.getInt(str, 0);
    }

    public String getString(String str) {
        return this.mBundle.getString(str);
    }

    public Set<String> keySet() {
        return this.mBundle.keySet();
    }

    public int putBitmapFromNative(int i2, byte[] bArr) {
        String keyFromNativeKey = getKeyFromNativeKey(i2);
        ArrayMap<String, Integer> arrayMap = METADATA_KEYS_TYPE;
        if (arrayMap.containsKey(keyFromNativeKey) && arrayMap.get(keyFromNativeKey).intValue() == 2) {
            try {
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                if (bitmapDecodeByteArray != null) {
                    this.mBundle.putParcelable(keyFromNativeKey, bitmapDecodeByteArray);
                    return 0;
                }
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public int putClockFromNative(int i2, long j2, int i3) {
        String keyFromNativeKey = getKeyFromNativeKey(i2);
        ArrayMap<String, Integer> arrayMap = METADATA_KEYS_TYPE;
        if (!arrayMap.containsKey(keyFromNativeKey) || arrayMap.get(keyFromNativeKey).intValue() != 3) {
            return -1;
        }
        this.mBundle.putParcelable(keyFromNativeKey, new Clock(j2, i3));
        return 0;
    }

    public int putIntFromNative(int i2, int i3) {
        try {
            putInt(this.mBundle, getKeyFromNativeKey(i2), i3);
            return 0;
        } catch (IllegalArgumentException unused) {
            return -1;
        }
    }

    public int putStringFromNative(int i2, String str) {
        String keyFromNativeKey = getKeyFromNativeKey(i2);
        ArrayMap<String, Integer> arrayMap = METADATA_KEYS_TYPE;
        if (!arrayMap.containsKey(keyFromNativeKey) || arrayMap.get(keyFromNativeKey).intValue() != 1) {
            return -1;
        }
        this.mBundle.putString(keyFromNativeKey, str);
        return 0;
    }

    public int size() {
        return this.mBundle.size();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeBundle(this.mBundle);
    }

    public static final class Builder {
        private final Bundle mBundle;

        public Builder() {
            this.mBundle = new Bundle();
        }

        private Bitmap scaleBitmap(Bitmap bitmap, int i2) {
            float f2 = i2;
            float fMin = Math.min(f2 / bitmap.getWidth(), f2 / bitmap.getHeight());
            return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMin), (int) (bitmap.getHeight() * fMin), true);
        }

        public RadioMetadata build() {
            return new RadioMetadata(this.mBundle);
        }

        public Builder putBitmap(String str, Bitmap bitmap) {
            if (!RadioMetadata.METADATA_KEYS_TYPE.containsKey(str) || ((Integer) RadioMetadata.METADATA_KEYS_TYPE.get(str)).intValue() != 2) {
                throw new IllegalArgumentException(android.accessibilityservice.c.k("The ", str, " key cannot be used to put a Bitmap"));
            }
            this.mBundle.putParcelable(str, bitmap);
            return this;
        }

        public Builder putClock(String str, long j2, int i2) {
            if (!RadioMetadata.METADATA_KEYS_TYPE.containsKey(str) || ((Integer) RadioMetadata.METADATA_KEYS_TYPE.get(str)).intValue() != 3) {
                throw new IllegalArgumentException(android.accessibilityservice.c.k("The ", str, " key cannot be used to put a RadioMetadata.Clock."));
            }
            this.mBundle.putParcelable(str, new Clock(j2, i2));
            return this;
        }

        public Builder putInt(String str, int i2) {
            RadioMetadata.putInt(this.mBundle, str, i2);
            return this;
        }

        public Builder putString(String str, String str2) {
            if (!RadioMetadata.METADATA_KEYS_TYPE.containsKey(str) || ((Integer) RadioMetadata.METADATA_KEYS_TYPE.get(str)).intValue() != 1) {
                throw new IllegalArgumentException(android.accessibilityservice.c.k("The ", str, " key cannot be used to put a String"));
            }
            this.mBundle.putString(str, str2);
            return this;
        }

        public Builder(RadioMetadata radioMetadata) {
            this.mBundle = new Bundle(radioMetadata.mBundle);
        }

        public Builder(RadioMetadata radioMetadata, int i2) {
            this(radioMetadata);
            for (String str : this.mBundle.keySet()) {
                Object obj = this.mBundle.get(str);
                if (obj != null && (obj instanceof Bitmap)) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i2 || bitmap.getWidth() > i2) {
                        putBitmap(str, scaleBitmap(bitmap, i2));
                    }
                }
            }
        }
    }

    public RadioMetadata() {
        this.mBundle = new Bundle();
    }

    private RadioMetadata(Bundle bundle) {
        this.mBundle = new Bundle(bundle);
    }

    private RadioMetadata(Parcel parcel) {
        this.mBundle = parcel.readBundle();
    }
}
