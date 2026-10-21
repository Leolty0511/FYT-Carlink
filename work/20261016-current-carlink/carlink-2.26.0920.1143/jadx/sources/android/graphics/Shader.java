package android.graphics;

import libcore.util.NativeAllocationRegistry;

/* JADX INFO: loaded from: classes.dex */
public class Shader {
    private Runnable mCleaner;
    private Matrix mLocalMatrix;
    private long mNativeInstance;

    public static class NoImagePreloadHolder {
        public static final NativeAllocationRegistry sRegistry = new NativeAllocationRegistry(Shader.class.getClassLoader(), Shader.nativeGetFinalizer(), 50);

        private NoImagePreloadHolder() {
        }
    }

    public enum TileMode {
        CLAMP(0),
        REPEAT(1),
        MIRROR(2);

        final int nativeInt;

        TileMode(int i2) {
            this.nativeInt = i2;
        }
    }

    @Deprecated
    public Shader() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeGetFinalizer();

    public Shader copy() {
        Shader shader = new Shader();
        copyLocalMatrix(shader);
        return shader;
    }

    public void copyLocalMatrix(Shader shader) {
        shader.mLocalMatrix.set(this.mLocalMatrix);
    }

    public long createNativeInstance(long j2) {
        return 0L;
    }

    public final void discardNativeInstance() {
        if (this.mNativeInstance != 0) {
            this.mCleaner.run();
            this.mCleaner = null;
            this.mNativeInstance = 0L;
        }
    }

    public boolean getLocalMatrix(Matrix matrix) {
        Matrix matrix2 = this.mLocalMatrix;
        if (matrix2 == null) {
            return false;
        }
        matrix.set(matrix2);
        return true;
    }

    public final long getNativeInstance() {
        verifyNativeInstance();
        if (this.mNativeInstance == 0) {
            Matrix matrix = this.mLocalMatrix;
            long jCreateNativeInstance = createNativeInstance(matrix == null ? 0L : matrix.native_instance);
            this.mNativeInstance = jCreateNativeInstance;
            if (jCreateNativeInstance != 0) {
                this.mCleaner = NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, jCreateNativeInstance);
            }
        }
        return this.mNativeInstance;
    }

    public void setLocalMatrix(Matrix matrix) {
        if (matrix == null || matrix.isIdentity()) {
            if (this.mLocalMatrix != null) {
                this.mLocalMatrix = null;
                discardNativeInstance();
                return;
            }
            return;
        }
        Matrix matrix2 = this.mLocalMatrix;
        if (matrix2 == null) {
            this.mLocalMatrix = new Matrix(matrix);
            discardNativeInstance();
        } else {
            if (matrix2.equals(matrix)) {
                return;
            }
            this.mLocalMatrix.set(matrix);
            discardNativeInstance();
        }
    }

    public void verifyNativeInstance() {
    }
}
