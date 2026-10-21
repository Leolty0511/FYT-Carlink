package android.renderscript;

import android.content.res.Resources;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ScriptC extends Script {
    private static final String TAG = "ScriptC";

    public ScriptC(int i2, RenderScript renderScript) {
        super(i2, renderScript);
    }

    private static synchronized long internalCreate(RenderScript renderScript, Resources resources, int i2) {
        byte[] bArr;
        int i3;
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
                        inputStreamOpenRawResource.close();
                    } else {
                        i3 += i4;
                    }
                }
            } catch (IOException unused) {
                throw new Resources.NotFoundException();
            }
        } catch (Throwable th) {
            inputStreamOpenRawResource.close();
            throw th;
        }
        return renderScript.nScriptCCreate(resources.getResourceEntryName(i2), RenderScript.getCachePath(), bArr, i3);
    }

    private static synchronized long internalStringCreate(RenderScript renderScript, String str, byte[] bArr) {
        return renderScript.nScriptCCreate(str, RenderScript.getCachePath(), bArr, bArr.length);
    }

    public ScriptC(long j2, RenderScript renderScript) {
        super(j2, renderScript);
    }

    public ScriptC(RenderScript renderScript, Resources resources, int i2) {
        super(0L, renderScript);
        long jInternalCreate = internalCreate(renderScript, resources, i2);
        if (jInternalCreate != 0) {
            setID(jInternalCreate);
            return;
        }
        throw new RSRuntimeException("Loading of ScriptC script failed.");
    }

    public ScriptC(RenderScript renderScript, String str, byte[] bArr, byte[] bArr2) {
        long jInternalStringCreate;
        super(0L, renderScript);
        if (RenderScript.sPointerSize == 4) {
            jInternalStringCreate = internalStringCreate(renderScript, str, bArr);
        } else {
            jInternalStringCreate = internalStringCreate(renderScript, str, bArr2);
        }
        if (jInternalStringCreate != 0) {
            setID(jInternalStringCreate);
            return;
        }
        throw new RSRuntimeException("Loading of ScriptC script failed.");
    }
}
