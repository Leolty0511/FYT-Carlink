package android.content.pm.split;

import android.content.res.AssetManager;

/* JADX INFO: loaded from: classes.dex */
public interface SplitAssetLoader extends AutoCloseable {
    AssetManager getBaseAssetManager();

    AssetManager getSplitAssetManager(int i2);
}
