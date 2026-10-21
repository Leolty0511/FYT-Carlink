package android.filterfw.core;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class KeyValueMap extends HashMap<String, Object> {
    public static KeyValueMap fromKeyValues(Object... objArr) {
        KeyValueMap keyValueMap = new KeyValueMap();
        keyValueMap.setKeyValues(objArr);
        return keyValueMap;
    }

    public float getFloat(String str) {
        Object obj = get(str);
        return (obj != null ? (Float) obj : null).floatValue();
    }

    public int getInt(String str) {
        Object obj = get(str);
        return (obj != null ? (Integer) obj : null).intValue();
    }

    public String getString(String str) {
        Object obj = get(str);
        if (obj != null) {
            return (String) obj;
        }
        return null;
    }

    public void setKeyValues(Object... objArr) {
        if (objArr.length % 2 != 0) {
            throw new RuntimeException("Key-Value arguments passed into setKeyValues must be an alternating list of keys and values!");
        }
        for (int i2 = 0; i2 < objArr.length; i2 += 2) {
            if (!(objArr[i2] instanceof String)) {
                throw new RuntimeException("Key-value argument " + i2 + " must be a key of type String, but found an object of type " + objArr[i2].getClass() + "!");
            }
            put((String) objArr[i2], objArr[i2 + 1]);
        }
    }

    @Override // java.util.AbstractMap
    public String toString() {
        StringWriter stringWriter = new StringWriter();
        for (Map.Entry<String, Object> entry : entrySet()) {
            Object value = entry.getValue();
            stringWriter.write(entry.getKey() + " = " + (value instanceof String ? "\"" + value + "\"" : value.toString()) + ";\n");
        }
        return stringWriter.toString();
    }
}
