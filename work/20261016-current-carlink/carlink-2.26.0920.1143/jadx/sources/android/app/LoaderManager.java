package android.app;

import android.content.Loader;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class LoaderManager {

    public interface LoaderCallbacks<D> {
        Loader<D> onCreateLoader(int i2, Bundle bundle);

        void onLoadFinished(Loader<D> loader, D d2);

        void onLoaderReset(Loader<D> loader);
    }

    public static void enableDebugLogging(boolean z2) {
        LoaderManagerImpl.DEBUG = z2;
    }

    public abstract void destroyLoader(int i2);

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public FragmentHostCallback getFragmentHostCallback() {
        return null;
    }

    public abstract <D> Loader<D> getLoader(int i2);

    public abstract <D> Loader<D> initLoader(int i2, Bundle bundle, LoaderCallbacks<D> loaderCallbacks);

    public abstract <D> Loader<D> restartLoader(int i2, Bundle bundle, LoaderCallbacks<D> loaderCallbacks);
}
