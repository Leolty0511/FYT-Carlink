package android.view.inputmethod;

import android.os.Parcel;
import android.util.Slog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class InputMethodSubtypeArray {
    private static final String TAG = "InputMethodSubtypeArray";
    private volatile byte[] mCompressedData;
    private final int mCount;
    private volatile int mDecompressedSize;
    private volatile InputMethodSubtype[] mInstance;
    private final Object mLockObject = new Object();

    public InputMethodSubtypeArray(List<InputMethodSubtype> list) {
        if (list == null) {
            this.mCount = 0;
            return;
        }
        int size = list.size();
        this.mCount = size;
        this.mInstance = (InputMethodSubtype[]) list.toArray(new InputMethodSubtype[size]);
    }

    private static byte[] compress(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(bArr);
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        } catch (Exception e2) {
            Slog.e(TAG, "Failed to compress the data.", e2);
            return null;
        }
    }

    private static byte[] decompress(byte[] bArr, int i2) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                try {
                    byte[] bArr2 = new byte[i2];
                    int i3 = 0;
                    while (i3 < i2) {
                        int i4 = gZIPInputStream.read(bArr2, i3, i2 - i3);
                        if (i4 < 0) {
                            break;
                        }
                        i3 += i4;
                    }
                    if (i2 != i3) {
                        gZIPInputStream.close();
                        byteArrayInputStream.close();
                        return null;
                    }
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return bArr2;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            gZIPInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        } catch (Exception e2) {
            Slog.e(TAG, "Failed to decompress the data.", e2);
            return null;
        }
    }

    private static byte[] marshall(InputMethodSubtype[] inputMethodSubtypeArr) throws Throwable {
        Parcel parcelObtain;
        try {
            parcelObtain = Parcel.obtain();
            try {
                parcelObtain.writeTypedArray(inputMethodSubtypeArr, 0);
                byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                return bArrMarshall;
            } catch (Throwable th) {
                th = th;
                if (parcelObtain != null) {
                    parcelObtain.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            parcelObtain = null;
        }
    }

    private static InputMethodSubtype[] unmarshall(byte[] bArr) throws Throwable {
        Parcel parcelObtain;
        try {
            parcelObtain = Parcel.obtain();
            try {
                parcelObtain.unmarshall(bArr, 0, bArr.length);
                parcelObtain.setDataPosition(0);
                InputMethodSubtype[] inputMethodSubtypeArr = (InputMethodSubtype[]) parcelObtain.createTypedArray(InputMethodSubtype.CREATOR);
                parcelObtain.recycle();
                return inputMethodSubtypeArr;
            } catch (Throwable th) {
                th = th;
                if (parcelObtain != null) {
                    parcelObtain.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            parcelObtain = null;
        }
    }

    public InputMethodSubtype get(int i2) {
        if (i2 < 0 || this.mCount <= i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        InputMethodSubtype[] inputMethodSubtypeArrUnmarshall = this.mInstance;
        if (inputMethodSubtypeArrUnmarshall == null) {
            synchronized (this.mLockObject) {
                inputMethodSubtypeArrUnmarshall = this.mInstance;
                if (inputMethodSubtypeArrUnmarshall == null) {
                    byte[] bArrDecompress = decompress(this.mCompressedData, this.mDecompressedSize);
                    this.mCompressedData = null;
                    this.mDecompressedSize = 0;
                    if (bArrDecompress != null) {
                        inputMethodSubtypeArrUnmarshall = unmarshall(bArrDecompress);
                    } else {
                        Slog.e(TAG, "Failed to decompress data. Returns null as fallback.");
                        inputMethodSubtypeArrUnmarshall = new InputMethodSubtype[this.mCount];
                    }
                    this.mInstance = inputMethodSubtypeArrUnmarshall;
                }
            }
        }
        return inputMethodSubtypeArrUnmarshall[i2];
    }

    public int getCount() {
        return this.mCount;
    }

    public void writeToParcel(Parcel parcel) {
        int length;
        int i2 = this.mCount;
        if (i2 == 0) {
            parcel.writeInt(i2);
            return;
        }
        byte[] bArr = this.mCompressedData;
        int i3 = this.mDecompressedSize;
        if (bArr == null && i3 == 0) {
            synchronized (this.mLockObject) {
                bArr = this.mCompressedData;
                i3 = this.mDecompressedSize;
                if (bArr == null && i3 == 0) {
                    byte[] bArrMarshall = marshall(this.mInstance);
                    byte[] bArrCompress = compress(bArrMarshall);
                    if (bArrCompress == null) {
                        Slog.i(TAG, "Failed to compress data.");
                        length = -1;
                    } else {
                        length = bArrMarshall.length;
                    }
                    this.mDecompressedSize = length;
                    this.mCompressedData = bArrCompress;
                    i3 = length;
                    bArr = bArrCompress;
                }
            }
        }
        if (bArr == null || i3 <= 0) {
            Slog.i(TAG, "Unexpected state. Behaving as an empty array.");
            parcel.writeInt(0);
        } else {
            parcel.writeInt(this.mCount);
            parcel.writeInt(i3);
            parcel.writeByteArray(bArr);
        }
    }

    public InputMethodSubtypeArray(Parcel parcel) {
        int i2 = parcel.readInt();
        this.mCount = i2;
        if (i2 > 0) {
            this.mDecompressedSize = parcel.readInt();
            this.mCompressedData = parcel.createByteArray();
        }
    }
}
