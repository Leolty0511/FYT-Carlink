package android.content;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes.dex */
public class UndoOwner {
    Object mData;
    final UndoManager mManager;
    int mOpCount;
    int mSavedIdx;
    int mStateSeq;
    final String mTag;

    public UndoOwner(String str, UndoManager undoManager) {
        if (str == null) {
            throw new NullPointerException("tag can't be null");
        }
        if (undoManager == null) {
            throw new NullPointerException("manager can't be null");
        }
        this.mTag = str;
        this.mManager = undoManager;
    }

    public Object getData() {
        return this.mData;
    }

    public String getTag() {
        return this.mTag;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UndoOwner:[mTag=");
        sb.append(this.mTag);
        sb.append(" mManager=");
        sb.append(this.mManager);
        sb.append(" mData=");
        sb.append(this.mData);
        sb.append(" mData=");
        sb.append(this.mData);
        sb.append(" mOpCount=");
        sb.append(this.mOpCount);
        sb.append(" mStateSeq=");
        sb.append(this.mStateSeq);
        sb.append(" mSavedIdx=");
        return c.m(sb, this.mSavedIdx, "]");
    }
}
