package android.database;

import android.accessibilityservice.c;
import android.content.res.Resources;
import android.database.sqlite.SQLiteClosable;
import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseIntArray;
import com.android.internal.R;
import dalvik.system.CloseGuard;

/* JADX INFO: loaded from: classes.dex */
public class CursorWindow extends SQLiteClosable implements Parcelable {
    private static final String STATS_TAG = "CursorWindowStats";
    private static int sCursorWindowSize = -1;
    private final CloseGuard mCloseGuard;
    private final String mName;
    private int mStartPos;
    public long mWindowPtr;
    public static final Parcelable.Creator<CursorWindow> CREATOR = new Parcelable.Creator<CursorWindow>() { // from class: android.database.CursorWindow.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CursorWindow createFromParcel(Parcel parcel) {
            return new CursorWindow(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CursorWindow[] newArray(int i2) {
            return new CursorWindow[i2];
        }
    };
    private static final LongSparseArray<Integer> sWindowToPidMap = new LongSparseArray<>();

    private void dispose() {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            closeGuard.close();
        }
        long j2 = this.mWindowPtr;
        if (j2 != 0) {
            recordClosingOfWindow(j2);
            nativeDispose(this.mWindowPtr);
            this.mWindowPtr = 0L;
        }
    }

    private static native boolean nativeAllocRow(long j2);

    private static native void nativeClear(long j2);

    private static native void nativeCopyStringToBuffer(long j2, int i2, int i3, CharArrayBuffer charArrayBuffer);

    private static native long nativeCreate(String str, int i2);

    private static native long nativeCreateFromParcel(Parcel parcel);

    private static native void nativeDispose(long j2);

    private static native void nativeFreeLastRow(long j2);

    private static native byte[] nativeGetBlob(long j2, int i2, int i3);

    private static native double nativeGetDouble(long j2, int i2, int i3);

    private static native long nativeGetLong(long j2, int i2, int i3);

    private static native String nativeGetName(long j2);

    private static native int nativeGetNumRows(long j2);

    private static native String nativeGetString(long j2, int i2, int i3);

    private static native int nativeGetType(long j2, int i2, int i3);

    private static native boolean nativePutBlob(long j2, byte[] bArr, int i2, int i3);

    private static native boolean nativePutDouble(long j2, double d2, int i2, int i3);

    private static native boolean nativePutLong(long j2, long j3, int i2, int i3);

    private static native boolean nativePutNull(long j2, int i2, int i3);

    private static native boolean nativePutString(long j2, String str, int i2, int i3);

    private static native boolean nativeSetNumColumns(long j2, int i2);

    private static native void nativeWriteToParcel(long j2, Parcel parcel);

    public static CursorWindow newFromParcel(Parcel parcel) {
        return CREATOR.createFromParcel(parcel);
    }

    private String printStats() {
        StringBuilder sb = new StringBuilder();
        int iMyPid = Process.myPid();
        SparseIntArray sparseIntArray = new SparseIntArray();
        LongSparseArray<Integer> longSparseArray = sWindowToPidMap;
        synchronized (longSparseArray) {
            int size = longSparseArray.size();
            if (size == 0) {
                return "";
            }
            for (int i2 = 0; i2 < size; i2++) {
                int iIntValue = sWindowToPidMap.valueAt(i2).intValue();
                sparseIntArray.put(iIntValue, sparseIntArray.get(iIntValue) + 1);
            }
            int size2 = sparseIntArray.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size2; i4++) {
                sb.append(" (# cursors opened by ");
                int iKeyAt = sparseIntArray.keyAt(i4);
                if (iKeyAt == iMyPid) {
                    sb.append("this proc=");
                } else {
                    sb.append("pid " + iKeyAt + "=");
                }
                int i5 = sparseIntArray.get(iKeyAt);
                sb.append(i5 + ")");
                i3 += i5;
            }
            return c.e("# Open Cursors=", i3, sb.length() > 980 ? sb.substring(0, 980) : sb.toString());
        }
    }

    private void recordClosingOfWindow(long j2) {
        LongSparseArray<Integer> longSparseArray = sWindowToPidMap;
        synchronized (longSparseArray) {
            if (longSparseArray.size() == 0) {
                return;
            }
            longSparseArray.delete(j2);
        }
    }

    private void recordNewWindow(int i2, long j2) {
        LongSparseArray<Integer> longSparseArray = sWindowToPidMap;
        synchronized (longSparseArray) {
            longSparseArray.put(j2, Integer.valueOf(i2));
            if (Log.isLoggable(STATS_TAG, 2)) {
                Log.i(STATS_TAG, "Created a new Cursor. " + printStats());
            }
        }
    }

    public boolean allocRow() {
        acquireReference();
        try {
            return nativeAllocRow(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public void clear() {
        acquireReference();
        try {
            this.mStartPos = 0;
            nativeClear(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public void copyStringToBuffer(int i2, int i3, CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("CharArrayBuffer should not be null");
        }
        acquireReference();
        try {
            nativeCopyStringToBuffer(this.mWindowPtr, i2 - this.mStartPos, i3, charArrayBuffer);
        } finally {
            releaseReference();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            dispose();
        } finally {
            super.finalize();
        }
    }

    public void freeLastRow() {
        acquireReference();
        try {
            nativeFreeLastRow(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public byte[] getBlob(int i2, int i3) {
        acquireReference();
        try {
            return nativeGetBlob(this.mWindowPtr, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public double getDouble(int i2, int i3) {
        acquireReference();
        try {
            return nativeGetDouble(this.mWindowPtr, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public float getFloat(int i2, int i3) {
        return (float) getDouble(i2, i3);
    }

    public int getInt(int i2, int i3) {
        return (int) getLong(i2, i3);
    }

    public long getLong(int i2, int i3) {
        acquireReference();
        try {
            return nativeGetLong(this.mWindowPtr, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public String getName() {
        return this.mName;
    }

    public int getNumRows() {
        acquireReference();
        try {
            return nativeGetNumRows(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public short getShort(int i2, int i3) {
        return (short) getLong(i2, i3);
    }

    public int getStartPosition() {
        return this.mStartPos;
    }

    public String getString(int i2, int i3) {
        acquireReference();
        try {
            return nativeGetString(this.mWindowPtr, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public int getType(int i2, int i3) {
        acquireReference();
        try {
            return nativeGetType(this.mWindowPtr, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    @Deprecated
    public boolean isBlob(int i2, int i3) {
        int type = getType(i2, i3);
        return type == 4 || type == 0;
    }

    @Deprecated
    public boolean isFloat(int i2, int i3) {
        return getType(i2, i3) == 2;
    }

    @Deprecated
    public boolean isLong(int i2, int i3) {
        return getType(i2, i3) == 1;
    }

    @Deprecated
    public boolean isNull(int i2, int i3) {
        return getType(i2, i3) == 0;
    }

    @Deprecated
    public boolean isString(int i2, int i3) {
        int type = getType(i2, i3);
        return type == 3 || type == 0;
    }

    @Override // android.database.sqlite.SQLiteClosable
    public void onAllReferencesReleased() {
        dispose();
    }

    public boolean putBlob(byte[] bArr, int i2, int i3) {
        acquireReference();
        try {
            return nativePutBlob(this.mWindowPtr, bArr, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public boolean putDouble(double d2, int i2, int i3) {
        acquireReference();
        try {
            return nativePutDouble(this.mWindowPtr, d2, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public boolean putLong(long j2, int i2, int i3) {
        acquireReference();
        try {
            return nativePutLong(this.mWindowPtr, j2, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public boolean putNull(int i2, int i3) {
        acquireReference();
        try {
            return nativePutNull(this.mWindowPtr, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public boolean putString(String str, int i2, int i3) {
        acquireReference();
        try {
            return nativePutString(this.mWindowPtr, str, i2 - this.mStartPos, i3);
        } finally {
            releaseReference();
        }
    }

    public boolean setNumColumns(int i2) {
        acquireReference();
        try {
            return nativeSetNumColumns(this.mWindowPtr, i2);
        } finally {
            releaseReference();
        }
    }

    public void setStartPosition(int i2) {
        this.mStartPos = i2;
    }

    public String toString() {
        return getName() + " {" + Long.toHexString(this.mWindowPtr) + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        acquireReference();
        try {
            parcel.writeInt(this.mStartPos);
            nativeWriteToParcel(this.mWindowPtr, parcel);
            releaseReference();
            if ((i2 & 1) != 0) {
                releaseReference();
            }
        } catch (Throwable th) {
            releaseReference();
            throw th;
        }
    }

    public CursorWindow(String str) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mStartPos = 0;
        str = (str == null || str.length() == 0) ? "<unnamed>" : str;
        this.mName = str;
        if (sCursorWindowSize < 0) {
            sCursorWindowSize = Resources.getSystem().getInteger(R.integer.config_cursorWindowSize) * 1024;
        }
        long jNativeCreate = nativeCreate(str, sCursorWindowSize);
        this.mWindowPtr = jNativeCreate;
        if (jNativeCreate != 0) {
            closeGuard.open("close");
            recordNewWindow(Binder.getCallingPid(), this.mWindowPtr);
        } else {
            throw new CursorWindowAllocationException("Cursor window allocation of " + (sCursorWindowSize / 1024) + " kb failed. " + printStats());
        }
    }

    @Deprecated
    public CursorWindow(boolean z2) {
        this((String) null);
    }

    private CursorWindow(Parcel parcel) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mStartPos = parcel.readInt();
        long jNativeCreateFromParcel = nativeCreateFromParcel(parcel);
        this.mWindowPtr = jNativeCreateFromParcel;
        if (jNativeCreateFromParcel != 0) {
            this.mName = nativeGetName(jNativeCreateFromParcel);
            closeGuard.open("close");
            return;
        }
        throw new CursorWindowAllocationException("Cursor window could not be created from binder.");
    }
}
