package android.drm;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class DrmInfo {
    private final HashMap<String, Object> mAttributes = new HashMap<>();
    private byte[] mData;
    private final int mInfoType;
    private final String mMimeType;

    public DrmInfo(int i2, byte[] bArr, String str) {
        this.mInfoType = i2;
        this.mMimeType = str;
        this.mData = bArr;
        if (isValid()) {
            return;
        }
        throw new IllegalArgumentException("infoType: " + i2 + ",mimeType: " + str + ",data: " + Arrays.toString(bArr));
    }

    public Object get(String str) {
        return this.mAttributes.get(str);
    }

    public byte[] getData() {
        return this.mData;
    }

    public int getInfoType() {
        return this.mInfoType;
    }

    public String getMimeType() {
        return this.mMimeType;
    }

    public boolean isValid() {
        byte[] bArr;
        String str = this.mMimeType;
        return (str == null || str.equals("") || (bArr = this.mData) == null || bArr.length <= 0 || !DrmInfoRequest.isValidType(this.mInfoType)) ? false : true;
    }

    public Iterator<Object> iterator() {
        return this.mAttributes.values().iterator();
    }

    public Iterator<String> keyIterator() {
        return this.mAttributes.keySet().iterator();
    }

    public void put(String str, Object obj) {
        this.mAttributes.put(str, obj);
    }

    public DrmInfo(int i2, String str, String str2) {
        this.mInfoType = i2;
        this.mMimeType = str2;
        try {
            this.mData = DrmUtils.readBytes(str);
        } catch (IOException unused) {
            this.mData = null;
        }
        if (isValid()) {
            return;
        }
        Arrays.toString(this.mData);
        throw new IllegalArgumentException();
    }
}
