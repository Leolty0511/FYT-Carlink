package android.renderscript;

import java.io.UnsupportedEncodingException;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class BaseObj {
    private boolean mDestroyed;
    private int mID;
    private String mName;
    public RenderScript mRS;

    public BaseObj(int i2, RenderScript renderScript) {
        renderScript.validate();
        this.mRS = renderScript;
        this.mID = i2;
        this.mDestroyed = false;
    }

    private void helpDestroy() {
        boolean z2;
        int i2;
        synchronized (this) {
            z2 = true;
            if (this.mDestroyed) {
                z2 = false;
            } else {
                this.mDestroyed = true;
            }
        }
        if (z2) {
            ReentrantReadWriteLock.ReadLock lock = this.mRS.mRWLock.readLock();
            lock.lock();
            if (this.mRS.isAlive() && (i2 = this.mID) != 0) {
                this.mRS.nObjDestroy(i2);
            }
            lock.unlock();
            this.mRS = null;
            this.mID = 0;
        }
    }

    public void checkValid() {
        if (this.mID == 0) {
            throw new RSIllegalArgumentException("Invalid object.");
        }
    }

    public void destroy() {
        if (this.mDestroyed) {
            throw new RSInvalidStateException("Object already destroyed.");
        }
        helpDestroy();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return getClass() == obj.getClass() && this.mID == ((BaseObj) obj).mID;
    }

    public void finalize() {
        helpDestroy();
        super.finalize();
    }

    public int getID(RenderScript renderScript) {
        this.mRS.validate();
        if (this.mDestroyed) {
            throw new RSInvalidStateException("using a destroyed object.");
        }
        int i2 = this.mID;
        if (i2 == 0) {
            throw new RSRuntimeException("Internal error: Object id 0.");
        }
        if (renderScript == null || renderScript == this.mRS) {
            return i2;
        }
        throw new RSInvalidStateException("using object with mismatched context.");
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        return this.mID;
    }

    public void setID(int i2) {
        if (this.mID != 0) {
            throw new RSRuntimeException("Internal Error, reset of object ID.");
        }
        this.mID = i2;
    }

    public void setName(String str) {
        if (str == null) {
            throw new RSIllegalArgumentException("setName requires a string of non-zero length.");
        }
        if (str.length() < 1) {
            throw new RSIllegalArgumentException("setName does not accept a zero length string.");
        }
        if (this.mName != null) {
            throw new RSIllegalArgumentException("setName object already has a name.");
        }
        try {
            this.mRS.nAssignName(this.mID, str.getBytes("UTF-8"));
            this.mName = str;
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void updateFromNative() {
        this.mRS.validate();
        RenderScript renderScript = this.mRS;
        this.mName = renderScript.nGetName(getID(renderScript));
    }
}
