package android.content.pm.split;

import android.accessibilityservice.c;
import android.content.pm.PackageParser;
import android.content.res.AssetManager;
import android.os.Build;
import com.android.internal.util.ArrayUtils;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class DefaultSplitAssetLoader implements SplitAssetLoader {
    private final String mBaseCodePath;
    private AssetManager mCachedAssetManager;
    private final int mFlags;
    private final String[] mSplitCodePaths;

    public DefaultSplitAssetLoader(PackageParser.PackageLite packageLite, int i2) {
        this.mBaseCodePath = packageLite.baseCodePath;
        this.mSplitCodePaths = packageLite.splitCodePaths;
        this.mFlags = i2;
    }

    private static void loadApkIntoAssetManager(AssetManager assetManager, String str, int i2) throws PackageParser.PackageParserException {
        if ((i2 & 4) != 0 && !PackageParser.isApkPath(str)) {
            throw new PackageParser.PackageParserException(-100, c.j("Invalid package file: ", str));
        }
        if (assetManager.addAssetPath(str) == 0) {
            throw new PackageParser.PackageParserException(-101, c.j("Failed adding asset path: ", str));
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        AssetManager assetManager = this.mCachedAssetManager;
        if (assetManager != null) {
            IoUtils.closeQuietly(assetManager);
        }
    }

    @Override // android.content.pm.split.SplitAssetLoader
    public AssetManager getBaseAssetManager() throws Throwable {
        AssetManager assetManager;
        AssetManager assetManager2 = this.mCachedAssetManager;
        if (assetManager2 != null) {
            return assetManager2;
        }
        AssetManager assetManager3 = new AssetManager();
        try {
            try {
                assetManager3.setConfiguration(0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Build.VERSION.RESOURCES_SDK_INT);
                assetManager = assetManager3;
                try {
                    loadApkIntoAssetManager(assetManager, this.mBaseCodePath, this.mFlags);
                    if (!ArrayUtils.isEmpty(this.mSplitCodePaths)) {
                        for (String str : this.mSplitCodePaths) {
                            loadApkIntoAssetManager(assetManager, str, this.mFlags);
                        }
                    }
                    this.mCachedAssetManager = assetManager;
                    return assetManager;
                } catch (Throwable th) {
                    th = th;
                    IoUtils.closeQuietly(assetManager);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                assetManager = assetManager3;
            }
        } catch (Throwable th3) {
            th = th3;
            assetManager = assetManager3;
        }
    }

    @Override // android.content.pm.split.SplitAssetLoader
    public AssetManager getSplitAssetManager(int i2) {
        return getBaseAssetManager();
    }
}
