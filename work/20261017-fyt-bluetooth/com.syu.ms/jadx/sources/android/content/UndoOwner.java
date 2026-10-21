package android.content;

/* JADX INFO: loaded from: classes.dex */
public class UndoOwner {
    public Object mData;
    public UndoManager mManager;
    public int mOpCount;
    public int mSavedIdx;
    public int mStateSeq;
    public final String mTag;

    public UndoOwner(String str) {
        this.mTag = str;
    }

    public Object getData() {
        return this.mData;
    }

    public String getTag() {
        return this.mTag;
    }
}
