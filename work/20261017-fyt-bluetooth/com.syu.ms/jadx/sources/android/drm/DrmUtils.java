package android.drm;

import android.net.ProxyProperties;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class DrmUtils {

    public static class ExtendedMetadataParser {
        public HashMap<String, String> mMap;

        private int readByte(byte[] bArr, int i2) {
            return bArr[i2];
        }

        private String readMultipleBytes(byte[] bArr, int i2, int i3) {
            byte[] bArr2 = new byte[i2];
            int i4 = 0;
            int i5 = i3;
            while (i5 < i3 + i2) {
                bArr2[i4] = bArr[i5];
                i5++;
                i4++;
            }
            return new String(bArr2);
        }

        public String get(String str) {
            return this.mMap.get(str);
        }

        public Iterator<String> iterator() {
            return this.mMap.values().iterator();
        }

        public Iterator<String> keyIterator() {
            return this.mMap.keySet().iterator();
        }

        private ExtendedMetadataParser(byte[] bArr) {
            this.mMap = new HashMap<>();
            int i2 = 0;
            while (i2 < bArr.length) {
                int i3 = readByte(bArr, i2);
                int i4 = i2 + 1;
                int i5 = readByte(bArr, i4);
                int i6 = i4 + 1;
                String multipleBytes = readMultipleBytes(bArr, i3, i6);
                int i7 = i6 + i3;
                String multipleBytes2 = readMultipleBytes(bArr, i5, i7);
                if (multipleBytes2.equals(" ")) {
                    multipleBytes2 = ProxyProperties.LOCAL_EXCL_LIST;
                }
                i2 = i7 + i5;
                this.mMap.put(multipleBytes, multipleBytes2);
            }
        }
    }

    public static ExtendedMetadataParser getExtendedMetadataParser(byte[] bArr) {
        return new ExtendedMetadataParser(bArr);
    }

    private static void quietlyDispose(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static byte[] readBytes(String str) {
        return readBytes(new File(str));
    }

    public static void removeFile(String str) {
        new File(str).delete();
    }

    public static void writeToFile(String str, byte[] bArr) throws Throwable {
        if (str == null || bArr == null) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(str);
            try {
                fileOutputStream2.write(bArr);
                quietlyDispose(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                quietlyDispose(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void quietlyDispose(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static byte[] readBytes(File file) {
        byte[] bArr;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        try {
            int iAvailable = bufferedInputStream.available();
            if (iAvailable > 0) {
                bArr = new byte[iAvailable];
                bufferedInputStream.read(bArr);
            } else {
                bArr = null;
            }
            return bArr;
        } finally {
            quietlyDispose(bufferedInputStream);
            quietlyDispose(fileInputStream);
        }
    }
}
