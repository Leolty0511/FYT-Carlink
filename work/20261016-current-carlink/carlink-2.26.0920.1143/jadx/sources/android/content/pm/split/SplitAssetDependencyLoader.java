package android.content.pm.split;

import android.content.pm.PackageParser;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class SplitAssetDependencyLoader extends SplitDependencyLoader<PackageParser.PackageParserException> implements SplitAssetLoader {
    private AssetManager[] mCachedAssetManagers;
    private String[][] mCachedPaths;
    private final int mFlags;
    private final String[] mSplitPaths;

    public SplitAssetDependencyLoader(PackageParser.PackageLite packageLite, SparseArray<int[]> sparseArray, int i2) {
        super(sparseArray);
        String[] strArr = packageLite.splitCodePaths;
        String[] strArr2 = new String[strArr.length + 1];
        this.mSplitPaths = strArr2;
        strArr2[0] = packageLite.baseCodePath;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        this.mFlags = i2;
        this.mCachedPaths = new String[strArr2.length][];
        this.mCachedAssetManagers = new AssetManager[strArr2.length];
    }

    private static AssetManager createAssetManagerWithPaths(String[] strArr, int i2) throws Throwable {
        AssetManager assetManager;
        AssetManager assetManager2 = new AssetManager();
        try {
            AssetManager assetManager3 = assetManager2;
            try {
                assetManager2.setConfiguration(0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Build.VERSION.RESOURCES_SDK_INT);
                int length = strArr.length;
                int i3 = 0;
                while (i3 < length) {
                    String str = strArr[i3];
                    if ((i2 & 4) != 0 && !PackageParser.isApkPath(str)) {
                        throw new PackageParser.PackageParserException(-100, "Invalid package file: " + str);
                    }
                    assetManager = assetManager3;
                    try {
                        if (assetManager.addAssetPath(str) == 0) {
                            throw new PackageParser.PackageParserException(-101, "Failed adding asset path: " + str);
                        }
                        i3++;
                        assetManager3 = assetManager;
                    } catch (Throwable th) {
                        th = th;
                        IoUtils.closeQuietly(assetManager);
                        throw th;
                    }
                }
                return assetManager3;
            } catch (Throwable th2) {
                th = th2;
                assetManager = assetManager3;
            }
        } catch (Throwable th3) {
            th = th3;
            assetManager = assetManager2;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        for (AssetManager assetManager : this.mCachedAssetManagers) {
            IoUtils.closeQuietly(assetManager);
        }
    }

    @Override // android.content.pm.split.SplitDependencyLoader
    public void constructSplit(int i2, int[] iArr, int i3) {
        ArrayList arrayList = new ArrayList();
        if (i3 >= 0) {
            Collections.addAll(arrayList, this.mCachedPaths[i3]);
        }
        arrayList.add(this.mSplitPaths[i2]);
        for (int i4 : iArr) {
            arrayList.add(this.mSplitPaths[i4]);
        }
        this.mCachedPaths[i2] = (String[]) arrayList.toArray(new String[arrayList.size()]);
        this.mCachedAssetManagers[i2] = createAssetManagerWithPaths(this.mCachedPaths[i2], this.mFlags);
    }

    @Override // android.content.pm.split.SplitAssetLoader
    public AssetManager getBaseAssetManager() {
        loadDependenciesForSplit(0);
        return this.mCachedAssetManagers[0];
    }

    @Override // android.content.pm.split.SplitAssetLoader
    public AssetManager getSplitAssetManager(int i2) {
        int i3 = i2 + 1;
        loadDependenciesForSplit(i3);
        return this.mCachedAssetManagers[i3];
    }

    @Override // android.content.pm.split.SplitDependencyLoader
    public boolean isSplitCached(int i2) {
        return this.mCachedAssetManagers[i2] != null;
    }
}
