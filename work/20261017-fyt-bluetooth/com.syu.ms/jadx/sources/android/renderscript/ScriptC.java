package android.renderscript;

import android.content.res.Resources;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ScriptC extends Script {
    private static final String CACHE_PATH = "com.android.renderscript.cache";
    private static final String TAG = "ScriptC";
    public static String mCachePath;

    public ScriptC(int i2, RenderScript renderScript) {
        super(i2, renderScript);
    }

    private static synchronized int internalCreate(RenderScript renderScript, Resources resources, int i2) {
        byte[] bArr;
        int i3;
        String resourceEntryName;
        InputStream inputStreamOpenRawResource = resources.openRawResource(i2);
        try {
            try {
                bArr = new byte[1024];
                i3 = 0;
                while (true) {
                    int length = bArr.length - i3;
                    if (length == 0) {
                        int length2 = bArr.length * 2;
                        byte[] bArr2 = new byte[length2];
                        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                        length = length2 - i3;
                        bArr = bArr2;
                    }
                    int i4 = inputStreamOpenRawResource.read(bArr, i3, length);
                    if (i4 <= 0) {
                        break;
                    }
                    i3 += i4;
                }
                inputStreamOpenRawResource.close();
                resourceEntryName = resources.getResourceEntryName(i2);
                if (mCachePath == null) {
                    File file = new File(RenderScript.mCacheDir, CACHE_PATH);
                    mCachePath = file.getAbsolutePath();
                    file.mkdirs();
                }
            } catch (Throwable th) {
                inputStreamOpenRawResource.close();
                throw th;
            }
        } catch (IOException unused) {
            throw new Resources.NotFoundException();
        }
        return renderScript.nScriptCCreate(resourceEntryName, mCachePath, bArr, i3);
    }

    public ScriptC(RenderScript renderScript, Resources resources, int i2) {
        super(0, renderScript);
        int iInternalCreate = internalCreate(renderScript, resources, i2);
        if (iInternalCreate == 0) {
            throw new RSRuntimeException("Loading of ScriptC script failed.");
        }
        setID(iInternalCreate);
    }
}
