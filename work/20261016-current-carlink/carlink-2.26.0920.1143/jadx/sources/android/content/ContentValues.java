package android.content;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ContentValues implements Parcelable {
    public static final Parcelable.Creator<ContentValues> CREATOR = new Parcelable.Creator<ContentValues>() { // from class: android.content.ContentValues.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContentValues createFromParcel(Parcel parcel) {
            return new ContentValues(parcel.readHashMap(null));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContentValues[] newArray(int i2) {
            return new ContentValues[i2];
        }
    };
    public static final String TAG = "ContentValues";
    private HashMap<String, Object> mValues;

    public void clear() {
        this.mValues.clear();
    }

    public boolean containsKey(String str) {
        return this.mValues.containsKey(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ContentValues) {
            return this.mValues.equals(((ContentValues) obj).mValues);
        }
        return false;
    }

    public Object get(String str) {
        return this.mValues.get(str);
    }

    public Boolean getAsBoolean(String str) {
        Object obj = this.mValues.get(str);
        try {
            return (Boolean) obj;
        } catch (ClassCastException e2) {
            if (obj instanceof CharSequence) {
                return Boolean.valueOf(Boolean.valueOf(obj.toString()).booleanValue() || WifiEnterpriseConfig.ENGINE_ENABLE.equals(obj));
            }
            if (obj instanceof Number) {
                return Boolean.valueOf(((Number) obj).intValue() != 0);
            }
            Log.e(TAG, "Cannot cast value for " + str + " to a Boolean: " + obj, e2);
            return null;
        }
    }

    public Byte getAsByte(String str) {
        Object obj = this.mValues.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return Byte.valueOf(((Number) obj).byteValue());
        } catch (ClassCastException e2) {
            if (!(obj instanceof CharSequence)) {
                Log.e(TAG, "Cannot cast value for " + str + " to a Byte: " + obj, e2);
                return null;
            }
            try {
                return Byte.valueOf(obj.toString());
            } catch (NumberFormatException unused) {
                Log.e(TAG, "Cannot parse Byte value for " + obj + " at key " + str);
                return null;
            }
        }
    }

    public byte[] getAsByteArray(String str) {
        Object obj = this.mValues.get(str);
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        return null;
    }

    public Double getAsDouble(String str) {
        Object obj = this.mValues.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return Double.valueOf(((Number) obj).doubleValue());
        } catch (ClassCastException e2) {
            if (!(obj instanceof CharSequence)) {
                Log.e(TAG, "Cannot cast value for " + str + " to a Double: " + obj, e2);
                return null;
            }
            try {
                return Double.valueOf(obj.toString());
            } catch (NumberFormatException unused) {
                Log.e(TAG, "Cannot parse Double value for " + obj + " at key " + str);
                return null;
            }
        }
    }

    public Float getAsFloat(String str) {
        Object obj = this.mValues.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return Float.valueOf(((Number) obj).floatValue());
        } catch (ClassCastException e2) {
            if (!(obj instanceof CharSequence)) {
                Log.e(TAG, "Cannot cast value for " + str + " to a Float: " + obj, e2);
                return null;
            }
            try {
                return Float.valueOf(obj.toString());
            } catch (NumberFormatException unused) {
                Log.e(TAG, "Cannot parse Float value for " + obj + " at key " + str);
                return null;
            }
        }
    }

    public Integer getAsInteger(String str) {
        Object obj = this.mValues.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return Integer.valueOf(((Number) obj).intValue());
        } catch (ClassCastException e2) {
            if (!(obj instanceof CharSequence)) {
                Log.e(TAG, "Cannot cast value for " + str + " to a Integer: " + obj, e2);
                return null;
            }
            try {
                return Integer.valueOf(obj.toString());
            } catch (NumberFormatException unused) {
                Log.e(TAG, "Cannot parse Integer value for " + obj + " at key " + str);
                return null;
            }
        }
    }

    public Long getAsLong(String str) {
        Object obj = this.mValues.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return Long.valueOf(((Number) obj).longValue());
        } catch (ClassCastException e2) {
            if (!(obj instanceof CharSequence)) {
                Log.e(TAG, "Cannot cast value for " + str + " to a Long: " + obj, e2);
                return null;
            }
            try {
                return Long.valueOf(obj.toString());
            } catch (NumberFormatException unused) {
                Log.e(TAG, "Cannot parse Long value for " + obj + " at key " + str);
                return null;
            }
        }
    }

    public Short getAsShort(String str) {
        Object obj = this.mValues.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return Short.valueOf(((Number) obj).shortValue());
        } catch (ClassCastException e2) {
            if (!(obj instanceof CharSequence)) {
                Log.e(TAG, "Cannot cast value for " + str + " to a Short: " + obj, e2);
                return null;
            }
            try {
                return Short.valueOf(obj.toString());
            } catch (NumberFormatException unused) {
                Log.e(TAG, "Cannot parse Short value for " + obj + " at key " + str);
                return null;
            }
        }
    }

    public String getAsString(String str) {
        Object obj = this.mValues.get(str);
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    @Deprecated
    public ArrayList<String> getStringArrayList(String str) {
        return (ArrayList) this.mValues.get(str);
    }

    public int hashCode() {
        return this.mValues.hashCode();
    }

    public boolean isEmpty() {
        return this.mValues.isEmpty();
    }

    public Set<String> keySet() {
        return this.mValues.keySet();
    }

    public void put(String str, String str2) {
        this.mValues.put(str, str2);
    }

    public void putAll(ContentValues contentValues) {
        this.mValues.putAll(contentValues.mValues);
    }

    public void putNull(String str) {
        this.mValues.put(str, null);
    }

    @Deprecated
    public void putStringArrayList(String str, ArrayList<String> arrayList) {
        this.mValues.put(str, arrayList);
    }

    public void remove(String str) {
        this.mValues.remove(str);
    }

    public int size() {
        return this.mValues.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.mValues.keySet()) {
            String asString = getAsString(str);
            if (sb.length() > 0) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            sb.append(str + "=" + asString);
        }
        return sb.toString();
    }

    public Set<Map.Entry<String, Object>> valueSet() {
        return this.mValues.entrySet();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeMap(this.mValues);
    }

    public ContentValues() {
        this.mValues = new HashMap<>(8);
    }

    public void put(String str, Byte b2) {
        this.mValues.put(str, b2);
    }

    public void put(String str, Short sh) {
        this.mValues.put(str, sh);
    }

    public ContentValues(int i2) {
        this.mValues = new HashMap<>(i2, 1.0f);
    }

    public void put(String str, Integer num) {
        this.mValues.put(str, num);
    }

    public void put(String str, Long l2) {
        this.mValues.put(str, l2);
    }

    public ContentValues(ContentValues contentValues) {
        this.mValues = new HashMap<>(contentValues.mValues);
    }

    public void put(String str, Float f2) {
        this.mValues.put(str, f2);
    }

    public void put(String str, Double d2) {
        this.mValues.put(str, d2);
    }

    private ContentValues(HashMap<String, Object> map) {
        this.mValues = map;
    }

    public void put(String str, Boolean bool) {
        this.mValues.put(str, bool);
    }

    public void put(String str, byte[] bArr) {
        this.mValues.put(str, bArr);
    }
}
