package android.content;

import android.os.Parcel;
import android.text.TextUtils;
import android.util.ArrayMap;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class UndoManager {
    public static final int MERGE_MODE_ANY = 2;
    public static final int MERGE_MODE_NONE = 0;
    public static final int MERGE_MODE_UNIQUE = 1;
    private boolean mInUndo;
    private boolean mMerged;
    private int mNextSavedIdx;
    private UndoOwner[] mStateOwners;
    private int mStateSeq;
    private int mUpdateCount;
    private UndoState mWorking;
    private final ArrayMap<String, UndoOwner> mOwners = new ArrayMap<>(1);
    private final ArrayList<UndoState> mUndos = new ArrayList<>();
    private final ArrayList<UndoState> mRedos = new ArrayList<>();
    private int mHistorySize = 20;
    private int mCommitId = 1;

    private void createWorkingState() {
        int i2 = this.mCommitId;
        this.mCommitId = i2 + 1;
        this.mWorking = new UndoState(this, i2);
        if (this.mCommitId < 0) {
            this.mCommitId = 1;
        }
    }

    private void pushWorkingState() {
        int size = this.mUndos.size() + 1;
        if (this.mWorking.hasData()) {
            this.mUndos.add(this.mWorking);
            forgetRedos(null, -1);
            this.mWorking.commit();
            if (size >= 2) {
                this.mUndos.get(size - 2).makeExecuted();
            }
        } else {
            this.mWorking.destroy();
        }
        this.mWorking = null;
        int i2 = this.mHistorySize;
        if (i2 < 0 || size <= i2) {
            return;
        }
        forgetUndos(null, size - i2);
    }

    public void addOperation(UndoOperation<?> undoOperation, int i2) {
        UndoState topUndo;
        if (this.mWorking == null) {
            throw new IllegalStateException("Must be called during an update");
        }
        if (undoOperation.getOwner().mManager != this) {
            throw new IllegalArgumentException("Given operation's owner is not in this undo manager.");
        }
        if (i2 != 0 && !this.mMerged && !this.mWorking.hasData() && (topUndo = getTopUndo(null)) != null && ((i2 == 2 || !topUndo.hasMultipleOwners()) && topUndo.canMerge() && topUndo.hasOperation(undoOperation.getOwner()))) {
            this.mWorking.destroy();
            this.mWorking = topUndo;
            this.mUndos.remove(topUndo);
            this.mMerged = true;
        }
        this.mWorking.addOperation(undoOperation);
    }

    public void beginUpdate(CharSequence charSequence) {
        if (this.mInUndo) {
            throw new IllegalStateException("Can't being update while performing undo/redo");
        }
        if (this.mUpdateCount <= 0) {
            createWorkingState();
            this.mMerged = false;
            this.mUpdateCount = 0;
        }
        this.mWorking.updateLabel(charSequence);
        this.mUpdateCount++;
    }

    public int commitState(UndoOwner undoOwner) {
        UndoState undoState = this.mWorking;
        if (undoState == null || !undoState.hasData()) {
            UndoState topUndo = getTopUndo(null);
            if (topUndo == null) {
                return -1;
            }
            if (undoOwner != null && !topUndo.hasOperation(undoOwner)) {
                return -1;
            }
            topUndo.setCanMerge(false);
            return topUndo.getCommitId();
        }
        if (undoOwner != null && !this.mWorking.hasOperation(undoOwner)) {
            return -1;
        }
        this.mWorking.setCanMerge(false);
        int commitId = this.mWorking.getCommitId();
        pushWorkingState();
        createWorkingState();
        this.mMerged = true;
        return commitId;
    }

    public int countRedos(UndoOwner[] undoOwnerArr) {
        if (undoOwnerArr == null) {
            return this.mRedos.size();
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int iFindNextState = findNextState(this.mRedos, undoOwnerArr, i2);
            if (iFindNextState < 0) {
                return i3;
            }
            i3++;
            i2 = iFindNextState + 1;
        }
    }

    public int countUndos(UndoOwner[] undoOwnerArr) {
        if (undoOwnerArr == null) {
            return this.mUndos.size();
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int iFindNextState = findNextState(this.mUndos, undoOwnerArr, i2);
            if (iFindNextState < 0) {
                return i3;
            }
            i3++;
            i2 = iFindNextState + 1;
        }
    }

    public void endUpdate() {
        if (this.mWorking == null) {
            throw new IllegalStateException("Must be called during an update");
        }
        int i2 = this.mUpdateCount - 1;
        this.mUpdateCount = i2;
        if (i2 == 0) {
            pushWorkingState();
        }
    }

    public int findNextState(ArrayList<UndoState> arrayList, UndoOwner[] undoOwnerArr, int i2) {
        int size = arrayList.size();
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 >= size) {
            return -1;
        }
        if (undoOwnerArr == null) {
            return i2;
        }
        while (i2 < size) {
            if (matchOwners(arrayList.get(i2), undoOwnerArr)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public int findPrevState(ArrayList<UndoState> arrayList, UndoOwner[] undoOwnerArr, int i2) {
        int size = arrayList.size();
        if (i2 == -1) {
            i2 = size - 1;
        }
        if (i2 >= size) {
            return -1;
        }
        if (undoOwnerArr == null) {
            return i2;
        }
        while (i2 >= 0) {
            if (matchOwners(arrayList.get(i2), undoOwnerArr)) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public int forgetRedos(UndoOwner[] undoOwnerArr, int i2) {
        if (i2 < 0) {
            i2 = this.mRedos.size();
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < this.mRedos.size() && i4 < i2) {
            UndoState undoState = this.mRedos.get(i3);
            if (i2 <= 0 || !matchOwners(undoState, undoOwnerArr)) {
                i3++;
            } else {
                undoState.destroy();
                this.mRedos.remove(i3);
                i4++;
            }
        }
        return i4;
    }

    public int forgetUndos(UndoOwner[] undoOwnerArr, int i2) {
        if (i2 < 0) {
            i2 = this.mUndos.size();
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < this.mUndos.size() && i4 < i2) {
            UndoState undoState = this.mUndos.get(i3);
            if (i2 <= 0 || !matchOwners(undoState, undoOwnerArr)) {
                i3++;
            } else {
                undoState.destroy();
                this.mUndos.remove(i3);
                i4++;
            }
        }
        return i4;
    }

    public int getHistorySize() {
        return this.mHistorySize;
    }

    public UndoOperation<?> getLastOperation(int i2) {
        return getLastOperation(null, null, i2);
    }

    public UndoOwner getOwner(String str, Object obj) {
        if (str == null) {
            throw new NullPointerException("tag can't be null");
        }
        if (obj == null) {
            throw new NullPointerException("data can't be null");
        }
        UndoOwner undoOwner = this.mOwners.get(str);
        if (undoOwner == null) {
            UndoOwner undoOwner2 = new UndoOwner(str, this);
            undoOwner2.mData = obj;
            this.mOwners.put(str, undoOwner2);
            return undoOwner2;
        }
        Object obj2 = undoOwner.mData;
        if (obj2 != obj) {
            if (obj2 != null) {
                throw new IllegalStateException("Owner " + undoOwner + " already exists with data " + undoOwner.mData + " but giving different data " + obj);
            }
            undoOwner.mData = obj;
        }
        return undoOwner;
    }

    public CharSequence getRedoLabel(UndoOwner[] undoOwnerArr) {
        UndoState topRedo = getTopRedo(undoOwnerArr);
        if (topRedo != null) {
            return topRedo.getLabel();
        }
        return null;
    }

    public UndoState getTopRedo(UndoOwner[] undoOwnerArr) {
        int iFindPrevState;
        if (this.mRedos.size() > 0 && (iFindPrevState = findPrevState(this.mRedos, undoOwnerArr, -1)) >= 0) {
            return this.mRedos.get(iFindPrevState);
        }
        return null;
    }

    public UndoState getTopUndo(UndoOwner[] undoOwnerArr) {
        int iFindPrevState;
        if (this.mUndos.size() > 0 && (iFindPrevState = findPrevState(this.mUndos, undoOwnerArr, -1)) >= 0) {
            return this.mUndos.get(iFindPrevState);
        }
        return null;
    }

    public CharSequence getUndoLabel(UndoOwner[] undoOwnerArr) {
        UndoState topUndo = getTopUndo(undoOwnerArr);
        if (topUndo != null) {
            return topUndo.getLabel();
        }
        return null;
    }

    public int getUpdateNestingLevel() {
        return this.mUpdateCount;
    }

    public boolean hasOperation(UndoOwner undoOwner) {
        UndoState undoState = this.mWorking;
        if (undoState != null) {
            return undoState.hasOperation(undoOwner);
        }
        throw new IllegalStateException("Must be called during an update");
    }

    public boolean isInUndo() {
        return this.mInUndo;
    }

    public boolean isInUpdate() {
        return this.mUpdateCount > 0;
    }

    public boolean matchOwners(UndoState undoState, UndoOwner[] undoOwnerArr) {
        if (undoOwnerArr == null) {
            return true;
        }
        for (UndoOwner undoOwner : undoOwnerArr) {
            if (undoState.matchOwner(undoOwner)) {
                return true;
            }
        }
        return false;
    }

    public int redo(UndoOwner[] undoOwnerArr, int i2) {
        if (this.mWorking != null) {
            throw new IllegalStateException("Can't be called during an update");
        }
        this.mInUndo = true;
        int iFindPrevState = -1;
        int i3 = 0;
        while (i2 > 0) {
            iFindPrevState = findPrevState(this.mRedos, undoOwnerArr, iFindPrevState);
            if (iFindPrevState < 0) {
                break;
            }
            UndoState undoStateRemove = this.mRedos.remove(iFindPrevState);
            undoStateRemove.redo();
            this.mUndos.add(undoStateRemove);
            i2--;
            i3++;
        }
        this.mInUndo = false;
        return i3;
    }

    public void removeOwner(UndoOwner undoOwner) {
    }

    public void restoreInstanceState(Parcel parcel, ClassLoader classLoader) {
        if (this.mUpdateCount > 0) {
            throw new IllegalStateException("Can't save state while updating");
        }
        forgetUndos(null, -1);
        forgetRedos(null, -1);
        this.mHistorySize = parcel.readInt();
        this.mStateOwners = new UndoOwner[parcel.readInt()];
        while (true) {
            int i2 = parcel.readInt();
            if (i2 == 0) {
                return;
            }
            UndoState undoState = new UndoState(this, parcel, classLoader);
            if (i2 == 1) {
                this.mUndos.add(0, undoState);
            } else {
                this.mRedos.add(0, undoState);
            }
        }
    }

    public UndoOwner restoreOwner(Parcel parcel) {
        int i2 = parcel.readInt();
        UndoOwner undoOwner = this.mStateOwners[i2];
        if (undoOwner != null) {
            return undoOwner;
        }
        String string = parcel.readString();
        int i3 = parcel.readInt();
        UndoOwner undoOwner2 = new UndoOwner(string, this);
        undoOwner2.mOpCount = i3;
        this.mStateOwners[i2] = undoOwner2;
        this.mOwners.put(string, undoOwner2);
        return undoOwner2;
    }

    public void saveInstanceState(Parcel parcel) {
        if (this.mUpdateCount > 0) {
            throw new IllegalStateException("Can't save state while updating");
        }
        int i2 = this.mStateSeq + 1;
        this.mStateSeq = i2;
        if (i2 <= 0) {
            this.mStateSeq = 0;
        }
        this.mNextSavedIdx = 0;
        parcel.writeInt(this.mHistorySize);
        parcel.writeInt(this.mOwners.size());
        int size = this.mUndos.size();
        while (size > 0) {
            parcel.writeInt(1);
            size--;
            this.mUndos.get(size).writeToParcel(parcel);
        }
        int size2 = this.mRedos.size();
        while (size2 > 0) {
            parcel.writeInt(2);
            size2--;
            this.mRedos.get(size2).writeToParcel(parcel);
        }
        parcel.writeInt(0);
    }

    public void saveOwner(UndoOwner undoOwner, Parcel parcel) {
        int i2 = undoOwner.mStateSeq;
        int i3 = this.mStateSeq;
        if (i2 == i3) {
            parcel.writeInt(undoOwner.mSavedIdx);
            return;
        }
        undoOwner.mStateSeq = i3;
        int i4 = this.mNextSavedIdx;
        undoOwner.mSavedIdx = i4;
        parcel.writeInt(i4);
        parcel.writeString(undoOwner.mTag);
        parcel.writeInt(undoOwner.mOpCount);
        this.mNextSavedIdx++;
    }

    public void setHistorySize(int i2) {
        this.mHistorySize = i2;
        if (i2 < 0 || countUndos(null) <= this.mHistorySize) {
            return;
        }
        forgetUndos(null, countUndos(null) - this.mHistorySize);
    }

    public void setUndoLabel(CharSequence charSequence) {
        UndoState undoState = this.mWorking;
        if (undoState == null) {
            throw new IllegalStateException("Must be called during an update");
        }
        undoState.setLabel(charSequence);
    }

    public void suggestUndoLabel(CharSequence charSequence) {
        UndoState undoState = this.mWorking;
        if (undoState == null) {
            throw new IllegalStateException("Must be called during an update");
        }
        undoState.updateLabel(charSequence);
    }

    public boolean uncommitState(int i2, UndoOwner undoOwner) {
        UndoState undoState = this.mWorking;
        if (undoState != null && undoState.getCommitId() == i2) {
            if (undoOwner == null || this.mWorking.hasOperation(undoOwner)) {
                return this.mWorking.setCanMerge(true);
            }
            return false;
        }
        UndoState topUndo = getTopUndo(null);
        if (topUndo == null) {
            return false;
        }
        if ((undoOwner == null || topUndo.hasOperation(undoOwner)) && topUndo.getCommitId() == i2) {
            return topUndo.setCanMerge(true);
        }
        return false;
    }

    public int undo(UndoOwner[] undoOwnerArr, int i2) {
        if (this.mWorking != null) {
            throw new IllegalStateException("Can't be called during an update");
        }
        this.mInUndo = true;
        UndoState topUndo = getTopUndo(null);
        if (topUndo != null) {
            topUndo.makeExecuted();
        }
        int iFindPrevState = -1;
        int i3 = 0;
        while (i2 > 0) {
            iFindPrevState = findPrevState(this.mUndos, undoOwnerArr, iFindPrevState);
            if (iFindPrevState < 0) {
                break;
            }
            UndoState undoStateRemove = this.mUndos.remove(iFindPrevState);
            undoStateRemove.undo();
            this.mRedos.add(undoStateRemove);
            i2--;
            i3++;
        }
        this.mInUndo = false;
        return i3;
    }

    public UndoOperation<?> getLastOperation(UndoOwner undoOwner, int i2) {
        return getLastOperation(null, undoOwner, i2);
    }

    public <T extends UndoOperation> T getLastOperation(Class<T> cls, UndoOwner undoOwner, int i2) {
        UndoState topUndo;
        T t2;
        UndoState undoState = this.mWorking;
        if (undoState != null) {
            if (i2 != 0 && !this.mMerged && !undoState.hasData() && (topUndo = getTopUndo(null)) != null && ((i2 == 2 || !topUndo.hasMultipleOwners()) && topUndo.canMerge() && (t2 = (T) topUndo.getLastOperation(cls, undoOwner)) != null && t2.allowMerge())) {
                this.mWorking.destroy();
                this.mWorking = topUndo;
                this.mUndos.remove(topUndo);
                this.mMerged = true;
                return t2;
            }
            return (T) this.mWorking.getLastOperation(cls, undoOwner);
        }
        throw new IllegalStateException("Must be called during an update");
    }

    public static final class UndoState {
        private boolean mCanMerge;
        private final int mCommitId;
        private boolean mExecuted;
        private CharSequence mLabel;
        private final UndoManager mManager;
        private final ArrayList<UndoOperation<?>> mOperations;
        private ArrayList<UndoOperation<?>> mRecent;

        public UndoState(UndoManager undoManager, int i2) {
            this.mOperations = new ArrayList<>();
            this.mCanMerge = true;
            this.mManager = undoManager;
            this.mCommitId = i2;
        }

        public void addOperation(UndoOperation<?> undoOperation) {
            if (this.mOperations.contains(undoOperation)) {
                throw new IllegalStateException("Already holds " + undoOperation);
            }
            this.mOperations.add(undoOperation);
            if (this.mRecent == null) {
                ArrayList<UndoOperation<?>> arrayList = new ArrayList<>();
                this.mRecent = arrayList;
                arrayList.add(undoOperation);
            }
            undoOperation.mOwner.mOpCount++;
        }

        public boolean canMerge() {
            return this.mCanMerge && !this.mExecuted;
        }

        public void commit() {
            ArrayList<UndoOperation<?>> arrayList = this.mRecent;
            int size = arrayList != null ? arrayList.size() : 0;
            for (int i2 = 0; i2 < size; i2++) {
                this.mRecent.get(i2).commit();
            }
            this.mRecent = null;
        }

        public int countOperations() {
            return this.mOperations.size();
        }

        public void destroy() {
            for (int size = this.mOperations.size() - 1; size >= 0; size--) {
                UndoOwner undoOwner = this.mOperations.get(size).mOwner;
                int i2 = undoOwner.mOpCount - 1;
                undoOwner.mOpCount = i2;
                if (i2 <= 0) {
                    if (i2 < 0) {
                        throw new IllegalStateException("Underflow of op count on owner " + undoOwner + " in op " + this.mOperations.get(size));
                    }
                    this.mManager.removeOwner(undoOwner);
                }
            }
        }

        public int getCommitId() {
            return this.mCommitId;
        }

        public CharSequence getLabel() {
            return this.mLabel;
        }

        public <T extends UndoOperation> T getLastOperation(Class<T> cls, UndoOwner undoOwner) {
            int size = this.mOperations.size();
            if (cls == null && undoOwner == null) {
                if (size > 0) {
                    return this.mOperations.get(size - 1);
                }
                return null;
            }
            for (int i2 = size - 1; i2 >= 0; i2--) {
                UndoOperation<?> undoOperation = this.mOperations.get(i2);
                if (undoOwner == null || undoOperation.getOwner() == undoOwner) {
                    if (cls == null || undoOperation.getClass() == cls) {
                        return undoOperation;
                    }
                    return null;
                }
            }
            return null;
        }

        public boolean hasData() {
            for (int size = this.mOperations.size() - 1; size >= 0; size--) {
                if (this.mOperations.get(size).hasData()) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasMultipleOwners() {
            int size = this.mOperations.size();
            if (size <= 1) {
                return false;
            }
            UndoOwner owner = this.mOperations.get(0).getOwner();
            for (int i2 = 1; i2 < size; i2++) {
                if (this.mOperations.get(i2).getOwner() != owner) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasOperation(UndoOwner undoOwner) {
            int size = this.mOperations.size();
            if (undoOwner == null) {
                return size != 0;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (this.mOperations.get(i2).getOwner() == undoOwner) {
                    return true;
                }
            }
            return false;
        }

        public void makeExecuted() {
            this.mExecuted = true;
        }

        public boolean matchOwner(UndoOwner undoOwner) {
            for (int size = this.mOperations.size() - 1; size >= 0; size--) {
                if (this.mOperations.get(size).matchOwner(undoOwner)) {
                    return true;
                }
            }
            return false;
        }

        public void redo() {
            int size = this.mOperations.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mOperations.get(i2).redo();
            }
        }

        public boolean setCanMerge(boolean z2) {
            if (z2 && this.mExecuted) {
                return false;
            }
            this.mCanMerge = z2;
            return true;
        }

        public void setLabel(CharSequence charSequence) {
            this.mLabel = charSequence;
        }

        public void undo() {
            for (int size = this.mOperations.size() - 1; size >= 0; size--) {
                this.mOperations.get(size).undo();
            }
        }

        public void updateLabel(CharSequence charSequence) {
            if (this.mLabel != null) {
                this.mLabel = charSequence;
            }
        }

        public void writeToParcel(Parcel parcel) {
            if (this.mRecent != null) {
                throw new IllegalStateException("Can't save state before committing");
            }
            parcel.writeInt(this.mCommitId);
            parcel.writeInt(this.mCanMerge ? 1 : 0);
            parcel.writeInt(this.mExecuted ? 1 : 0);
            TextUtils.writeToParcel(this.mLabel, parcel, 0);
            int size = this.mOperations.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                UndoOperation<?> undoOperation = this.mOperations.get(i2);
                this.mManager.saveOwner(undoOperation.mOwner, parcel);
                parcel.writeParcelable(undoOperation, 0);
            }
        }

        public UndoState(UndoManager undoManager, Parcel parcel, ClassLoader classLoader) {
            this.mOperations = new ArrayList<>();
            this.mCanMerge = true;
            this.mManager = undoManager;
            this.mCommitId = parcel.readInt();
            this.mCanMerge = parcel.readInt() != 0;
            this.mExecuted = parcel.readInt() != 0;
            this.mLabel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                UndoOwner undoOwnerRestoreOwner = this.mManager.restoreOwner(parcel);
                UndoOperation<?> undoOperation = (UndoOperation) parcel.readParcelable(classLoader);
                undoOperation.mOwner = undoOwnerRestoreOwner;
                this.mOperations.add(undoOperation);
            }
        }
    }
}
