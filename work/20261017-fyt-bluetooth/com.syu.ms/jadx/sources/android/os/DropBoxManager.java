package android.os;

import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.GZIPInputStream;
import o.c;

/* JADX INFO: loaded from: classes.dex */
public class DropBoxManager {
    public static final String ACTION_DROPBOX_ENTRY_ADDED = "android.intent.action.DROPBOX_ENTRY_ADDED";
    public static final String EXTRA_TAG = "tag";
    public static final String EXTRA_TIME = "time";
    private static final int HAS_BYTE_ARRAY = 8;
    public static final int IS_EMPTY = 1;
    public static final int IS_GZIPPED = 4;
    public static final int IS_TEXT = 2;
    private static final String TAG = "DropBoxManager";
    private final c mService;

    public DropBoxManager(c cVar) {
        this.mService = cVar;
    }

    public void addData(String str, byte[] bArr, int i2) {
        Objects.requireNonNull(bArr, "data == null");
        try {
            this.mService.B1(new Entry(str, 0L, bArr, i2));
        } catch (RemoteException unused) {
        }
    }

    public void addFile(String str, File file, int i2) {
        Objects.requireNonNull(file, "file == null");
        Entry entry = new Entry(str, 0L, file, i2);
        try {
            this.mService.B1(entry);
        } catch (RemoteException unused) {
        } finally {
            entry.close();
        }
    }

    public void addText(String str, String str2) {
        try {
            this.mService.B1(new Entry(str, 0L, str2));
        } catch (RemoteException unused) {
        }
    }

    public Entry getNextEntry(String str, long j2) {
        try {
            return this.mService.u2(str, j2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean isTagEnabled(String str) {
        try {
            return this.mService.r0(str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public DropBoxManager() {
        this.mService = null;
    }

    public static class Entry implements Parcelable, Closeable {
        public static final Parcelable.Creator<Entry> CREATOR = new Parcelable.Creator() { // from class: android.os.DropBoxManager.Entry.1
            @Override // android.os.Parcelable.Creator
            public Entry createFromParcel(Parcel parcel) {
                String string = parcel.readString();
                long j2 = parcel.readLong();
                int i2 = parcel.readInt();
                return (i2 & 8) != 0 ? new Entry(string, j2, parcel.createByteArray(), i2 & (-9)) : new Entry(string, j2, parcel.readFileDescriptor(), i2);
            }

            @Override // android.os.Parcelable.Creator
            public Entry[] newArray(int i2) {
                return new Entry[i2];
            }
        };
        private final byte[] mData;
        private final ParcelFileDescriptor mFileDescriptor;
        private final int mFlags;
        private final String mTag;
        private final long mTimeMillis;

        public Entry(String str, long j2) {
            Objects.requireNonNull(str, "tag == null");
            this.mTag = str;
            this.mTimeMillis = j2;
            this.mData = null;
            this.mFileDescriptor = null;
            this.mFlags = 1;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                ParcelFileDescriptor parcelFileDescriptor = this.mFileDescriptor;
                if (parcelFileDescriptor != null) {
                    parcelFileDescriptor.close();
                }
            } catch (IOException unused) {
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return this.mFileDescriptor != null ? 1 : 0;
        }

        public int getFlags() {
            return this.mFlags & (-5);
        }

        public InputStream getInputStream() {
            InputStream autoCloseInputStream;
            if (this.mData != null) {
                autoCloseInputStream = new ByteArrayInputStream(this.mData);
            } else {
                if (this.mFileDescriptor == null) {
                    return null;
                }
                autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.mFileDescriptor);
            }
            return (this.mFlags & 4) != 0 ? new GZIPInputStream(autoCloseInputStream) : autoCloseInputStream;
        }

        public String getTag() {
            return this.mTag;
        }

        public String getText(int i2) throws Throwable {
            InputStream inputStream;
            InputStream inputStream2 = null;
            if ((this.mFlags & 2) == 0) {
                return null;
            }
            byte[] bArr = this.mData;
            if (bArr != null) {
                return new String(bArr, 0, Math.min(i2, bArr.length));
            }
            try {
                inputStream = getInputStream();
                if (inputStream == null) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    return null;
                }
                try {
                    byte[] bArr2 = new byte[i2];
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 >= 0) {
                        i4 += i3;
                        if (i4 >= i2) {
                            break;
                        }
                        i3 = inputStream.read(bArr2, i4, i2 - i4);
                    }
                    String str = new String(bArr2, 0, i4);
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                    return str;
                } catch (IOException unused3) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException unused5) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused6) {
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public long getTimeMillis() {
            return this.mTimeMillis;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mTag);
            parcel.writeLong(this.mTimeMillis);
            if (this.mFileDescriptor != null) {
                parcel.writeInt(this.mFlags & (-9));
                this.mFileDescriptor.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(this.mFlags | 8);
                parcel.writeByteArray(this.mData);
            }
        }

        public Entry(String str, long j2, String str2) {
            Objects.requireNonNull(str, "tag == null");
            Objects.requireNonNull(str2, "text == null");
            this.mTag = str;
            this.mTimeMillis = j2;
            this.mData = str2.getBytes();
            this.mFileDescriptor = null;
            this.mFlags = 2;
        }

        public Entry(String str, long j2, byte[] bArr, int i2) {
            Objects.requireNonNull(str, "tag == null");
            if (((i2 & 1) != 0) == (bArr == null)) {
                this.mTag = str;
                this.mTimeMillis = j2;
                this.mData = bArr;
                this.mFileDescriptor = null;
                this.mFlags = i2;
                return;
            }
            throw new IllegalArgumentException("Bad flags: " + i2);
        }

        public Entry(String str, long j2, ParcelFileDescriptor parcelFileDescriptor, int i2) {
            Objects.requireNonNull(str, "tag == null");
            if (((i2 & 1) != 0) == (parcelFileDescriptor == null)) {
                this.mTag = str;
                this.mTimeMillis = j2;
                this.mData = null;
                this.mFileDescriptor = parcelFileDescriptor;
                this.mFlags = i2;
                return;
            }
            throw new IllegalArgumentException("Bad flags: " + i2);
        }

        public Entry(String str, long j2, File file, int i2) {
            Objects.requireNonNull(str, "tag == null");
            if ((i2 & 1) == 0) {
                this.mTag = str;
                this.mTimeMillis = j2;
                this.mData = null;
                this.mFileDescriptor = ParcelFileDescriptor.open(file, 268435456);
                this.mFlags = i2;
                return;
            }
            throw new IllegalArgumentException("Bad flags: " + i2);
        }
    }
}
