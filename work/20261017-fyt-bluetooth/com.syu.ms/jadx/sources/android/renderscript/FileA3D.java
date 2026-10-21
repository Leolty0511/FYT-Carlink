package android.renderscript;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class FileA3D extends BaseObj {
    public IndexEntry[] mFileEntries;
    public InputStream mInputStream;

    /* JADX INFO: renamed from: android.renderscript.FileA3D$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$renderscript$FileA3D$EntryType;

        static {
            int[] iArr = new int[EntryType.values().length];
            $SwitchMap$android$renderscript$FileA3D$EntryType = iArr;
            try {
                iArr[EntryType.MESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum EntryType {
        UNKNOWN(0),
        MESH(1);

        public int mID;

        EntryType(int i2) {
            this.mID = i2;
        }

        public static EntryType toEntryType(int i2) {
            return values()[i2];
        }
    }

    public static class IndexEntry {
        public EntryType mEntryType;
        public int mID;
        public int mIndex;
        public BaseObj mLoadedObj = null;
        public String mName;
        public RenderScript mRS;

        public IndexEntry(RenderScript renderScript, int i2, int i3, String str, EntryType entryType) {
            this.mRS = renderScript;
            this.mIndex = i2;
            this.mID = i3;
            this.mName = str;
            this.mEntryType = entryType;
        }

        public static synchronized BaseObj internalCreate(RenderScript renderScript, IndexEntry indexEntry) {
            BaseObj baseObj = indexEntry.mLoadedObj;
            if (baseObj != null) {
                return baseObj;
            }
            if (indexEntry.mEntryType == EntryType.UNKNOWN) {
                return null;
            }
            int iNFileA3DGetEntryByIndex = renderScript.nFileA3DGetEntryByIndex(indexEntry.mID, indexEntry.mIndex);
            if (iNFileA3DGetEntryByIndex == 0) {
                return null;
            }
            if (AnonymousClass1.$SwitchMap$android$renderscript$FileA3D$EntryType[indexEntry.mEntryType.ordinal()] == 1) {
                indexEntry.mLoadedObj = new Mesh(iNFileA3DGetEntryByIndex, renderScript);
            }
            indexEntry.mLoadedObj.updateFromNative();
            return indexEntry.mLoadedObj;
        }

        public EntryType getEntryType() {
            return this.mEntryType;
        }

        public Mesh getMesh() {
            return (Mesh) getObject();
        }

        public String getName() {
            return this.mName;
        }

        public BaseObj getObject() {
            this.mRS.validate();
            return internalCreate(this.mRS, this);
        }
    }

    public FileA3D(int i2, RenderScript renderScript, InputStream inputStream) {
        super(i2, renderScript);
        this.mInputStream = inputStream;
    }

    public static FileA3D createFromAsset(RenderScript renderScript, AssetManager assetManager, String str) {
        renderScript.validate();
        int iNFileA3DCreateFromAsset = renderScript.nFileA3DCreateFromAsset(assetManager, str);
        if (iNFileA3DCreateFromAsset != 0) {
            FileA3D fileA3D = new FileA3D(iNFileA3DCreateFromAsset, renderScript, null);
            fileA3D.initEntries();
            return fileA3D;
        }
        throw new RSRuntimeException("Unable to create a3d file from asset " + str);
    }

    public static FileA3D createFromFile(RenderScript renderScript, String str) {
        int iNFileA3DCreateFromFile = renderScript.nFileA3DCreateFromFile(str);
        if (iNFileA3DCreateFromFile != 0) {
            FileA3D fileA3D = new FileA3D(iNFileA3DCreateFromFile, renderScript, null);
            fileA3D.initEntries();
            return fileA3D;
        }
        throw new RSRuntimeException("Unable to create a3d file from " + str);
    }

    public static FileA3D createFromResource(RenderScript renderScript, Resources resources, int i2) {
        renderScript.validate();
        try {
            InputStream inputStreamOpenRawResource = resources.openRawResource(i2);
            if (!(inputStreamOpenRawResource instanceof AssetManager.AssetInputStream)) {
                throw new RSRuntimeException("Unsupported asset stream");
            }
            int iNFileA3DCreateFromAssetStream = renderScript.nFileA3DCreateFromAssetStream(((AssetManager.AssetInputStream) inputStreamOpenRawResource).getAssetInt());
            if (iNFileA3DCreateFromAssetStream != 0) {
                FileA3D fileA3D = new FileA3D(iNFileA3DCreateFromAssetStream, renderScript, inputStreamOpenRawResource);
                fileA3D.initEntries();
                return fileA3D;
            }
            throw new RSRuntimeException("Unable to create a3d file from resource " + i2);
        } catch (Exception unused) {
            throw new RSRuntimeException("Unable to open resource " + i2);
        }
    }

    private void initEntries() {
        RenderScript renderScript = this.mRS;
        int iNFileA3DGetNumIndexEntries = renderScript.nFileA3DGetNumIndexEntries(getID(renderScript));
        if (iNFileA3DGetNumIndexEntries <= 0) {
            return;
        }
        this.mFileEntries = new IndexEntry[iNFileA3DGetNumIndexEntries];
        int[] iArr = new int[iNFileA3DGetNumIndexEntries];
        String[] strArr = new String[iNFileA3DGetNumIndexEntries];
        RenderScript renderScript2 = this.mRS;
        renderScript2.nFileA3DGetIndexEntries(getID(renderScript2), iNFileA3DGetNumIndexEntries, iArr, strArr);
        for (int i2 = 0; i2 < iNFileA3DGetNumIndexEntries; i2++) {
            IndexEntry[] indexEntryArr = this.mFileEntries;
            RenderScript renderScript3 = this.mRS;
            indexEntryArr[i2] = new IndexEntry(renderScript3, i2, getID(renderScript3), strArr[i2], EntryType.toEntryType(iArr[i2]));
        }
    }

    public IndexEntry getIndexEntry(int i2) {
        if (getIndexEntryCount() == 0 || i2 < 0) {
            return null;
        }
        IndexEntry[] indexEntryArr = this.mFileEntries;
        if (i2 >= indexEntryArr.length) {
            return null;
        }
        return indexEntryArr[i2];
    }

    public int getIndexEntryCount() {
        IndexEntry[] indexEntryArr = this.mFileEntries;
        if (indexEntryArr == null) {
            return 0;
        }
        return indexEntryArr.length;
    }

    public static FileA3D createFromFile(RenderScript renderScript, File file) {
        return createFromFile(renderScript, file.getAbsolutePath());
    }
}
