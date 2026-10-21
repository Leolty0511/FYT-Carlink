package android.renderscript;

import dalvik.system.CloseGuard;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class BaseObj {
    final CloseGuard guard = CloseGuard.get();
    private boolean mDestroyed;
    private long mID;
    private String mName;
    RenderScript mRS;

    public BaseObj(long j2, RenderScript renderScript) {
        renderScript.validate();
        this.mRS = renderScript;
        this.mID = j2;
        this.mDestroyed = false;
    }

    private void helpDestroy() {
        boolean z2;
        synchronized (this) {
            if (this.mDestroyed) {
                z2 = false;
            } else {
                z2 = true;
                this.mDestroyed = true;
            }
        }
        if (z2) {
            this.guard.close();
            ReentrantReadWriteLock.ReadLock lock = this.mRS.mRWLock.readLock();
            lock.lock();
            if (this.mRS.isAlive()) {
                long j2 = this.mID;
                if (j2 != 0) {
                    this.mRS.nObjDestroy(j2);
                }
            }
            lock.unlock();
            this.mRS = null;
            this.mID = 0L;
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
        return obj != null && getClass() == obj.getClass() && this.mID == ((BaseObj) obj).mID;
    }

    public void finalize() {
        try {
            CloseGuard closeGuard = this.guard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            helpDestroy();
        } finally {
            super.finalize();
        }
    }

    public long getID(RenderScript renderScript) {
        this.mRS.validate();
        if (this.mDestroyed) {
            throw new RSInvalidStateException("using a destroyed object.");
        }
        long j2 = this.mID;
        if (j2 == 0) {
            throw new RSRuntimeException("Internal error: Object id 0.");
        }
        if (renderScript == null || renderScript == this.mRS) {
            return j2;
        }
        throw new RSInvalidStateException("using object with mismatched context.");
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        long j2 = this.mID;
        return (int) ((j2 >> 32) ^ (268435455 & j2));
    }

    public void setID(long j2) {
        if (this.mID != 0) {
            throw new RSRuntimeException("Internal Error, reset of object ID.");
        }
        this.mID = j2;
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
