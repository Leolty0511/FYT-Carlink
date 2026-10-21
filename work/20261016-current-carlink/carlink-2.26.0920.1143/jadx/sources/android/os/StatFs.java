package android.os;

import android.system.ErrnoException;
import android.system.Os;
import android.system.StructStatVfs;

/* JADX INFO: loaded from: classes.dex */
public class StatFs {
    private StructStatVfs mStat;

    public StatFs(String str) {
        this.mStat = doStat(str);
    }

    private static StructStatVfs doStat(String str) {
        try {
            return Os.statvfs(str);
        } catch (ErrnoException e2) {
            throw new IllegalArgumentException(android.accessibilityservice.c.j("Invalid path: ", str), e2);
        }
    }

    @Deprecated
    public int getAvailableBlocks() {
        return (int) this.mStat.f_bavail;
    }

    public long getAvailableBlocksLong() {
        return this.mStat.f_bavail;
    }

    public long getAvailableBytes() {
        StructStatVfs structStatVfs = this.mStat;
        return structStatVfs.f_bavail * structStatVfs.f_frsize;
    }

    @Deprecated
    public int getBlockCount() {
        return (int) this.mStat.f_blocks;
    }

    public long getBlockCountLong() {
        return this.mStat.f_blocks;
    }

    @Deprecated
    public int getBlockSize() {
        return (int) this.mStat.f_frsize;
    }

    public long getBlockSizeLong() {
        return this.mStat.f_frsize;
    }

    @Deprecated
    public int getFreeBlocks() {
        return (int) this.mStat.f_bfree;
    }

    public long getFreeBlocksLong() {
        return this.mStat.f_bfree;
    }

    public long getFreeBytes() {
        StructStatVfs structStatVfs = this.mStat;
        return structStatVfs.f_bfree * structStatVfs.f_frsize;
    }

    public long getTotalBytes() {
        StructStatVfs structStatVfs = this.mStat;
        return structStatVfs.f_blocks * structStatVfs.f_frsize;
    }

    public void restat(String str) {
        this.mStat = doStat(str);
    }
}
