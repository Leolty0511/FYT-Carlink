package android.gesture;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class GestureLibraries {

    public static class FileGestureLibrary extends GestureLibrary {
        private final File mPath;

        public FileGestureLibrary(File file) {
            this.mPath = file;
        }

        @Override // android.gesture.GestureLibrary
        public boolean isReadOnly() {
            return !this.mPath.canWrite();
        }

        @Override // android.gesture.GestureLibrary
        public boolean load() throws Throwable {
            File file = this.mPath;
            if (file.exists() && file.canRead()) {
                try {
                    this.mStore.load(new FileInputStream(file), true);
                    return true;
                } catch (FileNotFoundException e2) {
                    Log.d(GestureConstants.LOG_TAG, "Could not load the gesture library from " + this.mPath, e2);
                } catch (IOException e3) {
                    Log.d(GestureConstants.LOG_TAG, "Could not load the gesture library from " + this.mPath, e3);
                }
            }
            return false;
        }

        @Override // android.gesture.GestureLibrary
        public boolean save() throws Throwable {
            if (!this.mStore.hasChanged()) {
                return true;
            }
            File file = this.mPath;
            File parentFile = file.getParentFile();
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                return false;
            }
            try {
                file.createNewFile();
                this.mStore.save(new FileOutputStream(file), true);
                return true;
            } catch (FileNotFoundException e2) {
                Log.d(GestureConstants.LOG_TAG, "Could not save the gesture library in " + this.mPath, e2);
                return false;
            } catch (IOException e3) {
                Log.d(GestureConstants.LOG_TAG, "Could not save the gesture library in " + this.mPath, e3);
                return false;
            }
        }
    }

    public static class ResourceGestureLibrary extends GestureLibrary {
        private final WeakReference<Context> mContext;
        private final int mResourceId;

        public ResourceGestureLibrary(Context context, int i2) {
            this.mContext = new WeakReference<>(context);
            this.mResourceId = i2;
        }

        @Override // android.gesture.GestureLibrary
        public boolean isReadOnly() {
            return true;
        }

        @Override // android.gesture.GestureLibrary
        public boolean load() throws Throwable {
            Context context = this.mContext.get();
            if (context != null) {
                try {
                    this.mStore.load(context.getResources().openRawResource(this.mResourceId), true);
                    return true;
                } catch (IOException e2) {
                    Log.d(GestureConstants.LOG_TAG, "Could not load the gesture library from raw resource " + context.getResources().getResourceName(this.mResourceId), e2);
                }
            }
            return false;
        }

        @Override // android.gesture.GestureLibrary
        public boolean save() {
            return false;
        }
    }

    private GestureLibraries() {
    }

    public static GestureLibrary fromFile(String str) {
        return fromFile(new File(str));
    }

    public static GestureLibrary fromPrivateFile(Context context, String str) {
        return fromFile(context.getFileStreamPath(str));
    }

    public static GestureLibrary fromRawResource(Context context, int i2) {
        return new ResourceGestureLibrary(context, i2);
    }

    public static GestureLibrary fromFile(File file) {
        return new FileGestureLibrary(file);
    }
}
