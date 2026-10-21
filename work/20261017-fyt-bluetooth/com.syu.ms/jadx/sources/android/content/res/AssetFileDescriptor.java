package android.content.res;

import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class AssetFileDescriptor implements Parcelable, Closeable {
    public static final Parcelable.Creator<AssetFileDescriptor> CREATOR = new Parcelable.Creator<AssetFileDescriptor>() { // from class: android.content.res.AssetFileDescriptor.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AssetFileDescriptor createFromParcel(Parcel parcel) {
            return new AssetFileDescriptor(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AssetFileDescriptor[] newArray(int i2) {
            return new AssetFileDescriptor[i2];
        }
    };
    public static final long UNKNOWN_LENGTH = -1;
    private final Bundle mExtras;
    private final ParcelFileDescriptor mFd;
    private final long mLength;
    private final long mStartOffset;

    public AssetFileDescriptor(ParcelFileDescriptor parcelFileDescriptor, long j2, long j3) {
        this(parcelFileDescriptor, j2, j3, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mFd.close();
    }

    public FileInputStream createInputStream() {
        return this.mLength < 0 ? new ParcelFileDescriptor.AutoCloseInputStream(this.mFd) : new AutoCloseInputStream(this);
    }

    public FileOutputStream createOutputStream() {
        return this.mLength < 0 ? new ParcelFileDescriptor.AutoCloseOutputStream(this.mFd) : new AutoCloseOutputStream(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.mFd.describeContents();
    }

    public long getDeclaredLength() {
        return this.mLength;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public FileDescriptor getFileDescriptor() {
        return this.mFd.getFileDescriptor();
    }

    public long getLength() {
        long j2 = this.mLength;
        if (j2 >= 0) {
            return j2;
        }
        long statSize = this.mFd.getStatSize();
        if (statSize >= 0) {
            return statSize;
        }
        return -1L;
    }

    public ParcelFileDescriptor getParcelFileDescriptor() {
        return this.mFd;
    }

    public long getStartOffset() {
        return this.mStartOffset;
    }

    public String toString() {
        return "{AssetFileDescriptor: " + this.mFd + " start=" + this.mStartOffset + " len=" + this.mLength + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.mFd.writeToParcel(parcel, i2);
        parcel.writeLong(this.mStartOffset);
        parcel.writeLong(this.mLength);
        if (this.mExtras == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeBundle(this.mExtras);
        }
    }

    public static class AutoCloseInputStream extends ParcelFileDescriptor.AutoCloseInputStream {
        private long mRemaining;

        public AutoCloseInputStream(AssetFileDescriptor assetFileDescriptor) throws IOException {
            super(assetFileDescriptor.getParcelFileDescriptor());
            super.skip(assetFileDescriptor.getStartOffset());
            this.mRemaining = (int) assetFileDescriptor.getLength();
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public int available() {
            long j2 = this.mRemaining;
            if (j2 < 0) {
                return super.available();
            }
            if (j2 < 2147483647L) {
                return (int) j2;
            }
            return Integer.MAX_VALUE;
        }

        @Override // java.io.InputStream
        public void mark(int i2) {
            if (this.mRemaining >= 0) {
                return;
            }
            super.mark(i2);
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            if (this.mRemaining >= 0) {
                return false;
            }
            return super.markSupported();
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public int read() {
            byte[] bArr = new byte[1];
            if (read(bArr, 0, 1) == -1) {
                return -1;
            }
            return bArr[0] & 255;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            if (this.mRemaining >= 0) {
                return;
            }
            super.reset();
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public long skip(long j2) throws IOException {
            long j3 = this.mRemaining;
            if (j3 < 0) {
                return super.skip(j2);
            }
            if (j3 == 0) {
                return -1L;
            }
            if (j2 > j3) {
                j2 = j3;
            }
            long jSkip = super.skip(j2);
            if (jSkip >= 0) {
                this.mRemaining -= jSkip;
            }
            return jSkip;
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) throws IOException {
            long j2 = this.mRemaining;
            if (j2 < 0) {
                return super.read(bArr, i2, i3);
            }
            if (j2 == 0) {
                return -1;
            }
            if (i3 > j2) {
                i3 = (int) j2;
            }
            int i4 = super.read(bArr, i2, i3);
            if (i4 >= 0) {
                this.mRemaining -= (long) i4;
            }
            return i4;
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public int read(byte[] bArr) {
            return read(bArr, 0, bArr.length);
        }
    }

    public AssetFileDescriptor(ParcelFileDescriptor parcelFileDescriptor, long j2, long j3, Bundle bundle) {
        if (parcelFileDescriptor == null) {
            throw new IllegalArgumentException("fd must not be null");
        }
        if (j3 < 0 && j2 != 0) {
            throw new IllegalArgumentException("startOffset must be 0 when using UNKNOWN_LENGTH");
        }
        this.mFd = parcelFileDescriptor;
        this.mStartOffset = j2;
        this.mLength = j3;
        this.mExtras = bundle;
    }

    public static class AutoCloseOutputStream extends ParcelFileDescriptor.AutoCloseOutputStream {
        private long mRemaining;

        public AutoCloseOutputStream(AssetFileDescriptor assetFileDescriptor) throws IOException {
            super(assetFileDescriptor.getParcelFileDescriptor());
            if (assetFileDescriptor.getParcelFileDescriptor().seekTo(assetFileDescriptor.getStartOffset()) < 0) {
                throw new IOException("Unable to seek");
            }
            this.mRemaining = (int) assetFileDescriptor.getLength();
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) throws IOException {
            long j2 = this.mRemaining;
            if (j2 < 0) {
                super.write(bArr, i2, i3);
            } else {
                if (j2 == 0) {
                    return;
                }
                if (i3 > j2) {
                    i3 = (int) j2;
                }
                super.write(bArr, i2, i3);
                this.mRemaining -= (long) i3;
            }
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            long j2 = this.mRemaining;
            if (j2 < 0) {
                super.write(bArr);
                return;
            }
            if (j2 == 0) {
                return;
            }
            int length = bArr.length;
            if (length > j2) {
                length = (int) j2;
            }
            super.write(bArr);
            this.mRemaining -= (long) length;
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public void write(int i2) throws IOException {
            long j2 = this.mRemaining;
            if (j2 < 0) {
                super.write(i2);
            } else {
                if (j2 == 0) {
                    return;
                }
                super.write(i2);
                this.mRemaining--;
            }
        }
    }

    public AssetFileDescriptor(Parcel parcel) {
        this.mFd = ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
        this.mStartOffset = parcel.readLong();
        this.mLength = parcel.readLong();
        if (parcel.readInt() != 0) {
            this.mExtras = parcel.readBundle();
        } else {
            this.mExtras = null;
        }
    }
}
