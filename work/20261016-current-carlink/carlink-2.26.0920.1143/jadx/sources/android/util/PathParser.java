package android.util;

import android.graphics.Path;
import dalvik.annotation.optimization.FastNative;

/* JADX INFO: loaded from: classes2.dex */
public class PathParser {
    static final String LOGTAG = "PathParser";

    public static boolean canMorph(PathData pathData, PathData pathData2) {
        return nCanMorph(pathData.mNativePathData, pathData2.mNativePathData);
    }

    public static Path createPathFromPathData(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Path string can not be null.");
        }
        Path path = new Path();
        nParseStringForPath(path.mNativePath, str, str.length());
        return path;
    }

    public static boolean interpolatePathData(PathData pathData, PathData pathData2, PathData pathData3, float f2) {
        return nInterpolatePathData(pathData.mNativePathData, pathData2.mNativePathData, pathData3.mNativePathData, f2);
    }

    @FastNative
    private static native boolean nCanMorph(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreateEmptyPathData();

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native long nCreatePathData(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreatePathDataFromString(String str, int i2);

    @FastNative
    private static native void nCreatePathFromPathData(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nFinalize(long j2);

    @FastNative
    private static native boolean nInterpolatePathData(long j2, long j3, long j4, float f2);

    private static native void nParseStringForPath(long j2, String str, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    public static native void nSetPathData(long j2, long j3);

    public static class PathData {
        long mNativePathData;

        public PathData() {
            this.mNativePathData = 0L;
            this.mNativePathData = PathParser.nCreateEmptyPathData();
        }

        public void finalize() throws Throwable {
            long j2 = this.mNativePathData;
            if (j2 != 0) {
                PathParser.nFinalize(j2);
                this.mNativePathData = 0L;
            }
            super.finalize();
        }

        public long getNativePtr() {
            return this.mNativePathData;
        }

        public void setPathData(PathData pathData) {
            PathParser.nSetPathData(this.mNativePathData, pathData.mNativePathData);
        }

        public PathData(PathData pathData) {
            this.mNativePathData = 0L;
            this.mNativePathData = PathParser.nCreatePathData(pathData.mNativePathData);
        }

        public PathData(String str) {
            this.mNativePathData = 0L;
            long jNCreatePathDataFromString = PathParser.nCreatePathDataFromString(str, str.length());
            this.mNativePathData = jNCreatePathDataFromString;
            if (jNCreatePathDataFromString == 0) {
                throw new IllegalArgumentException("Invalid pathData: ".concat(str));
            }
        }
    }

    public static void createPathFromPathData(Path path, PathData pathData) {
        nCreatePathFromPathData(path.mNativePath, pathData.mNativePathData);
    }
}
