package com.android.internal.widget;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class OpReorderer {
    final Callback mCallback;

    public interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i2, int i3, int i4, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    public OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean z2 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).cmd != 8) {
                z2 = true;
            } else if (z2) {
                return size;
            }
        }
        return -1;
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int i2, AdapterHelper.UpdateOp updateOp, int i3, AdapterHelper.UpdateOp updateOp2) {
        int i4 = updateOp.itemCount;
        int i5 = updateOp2.positionStart;
        int i6 = i4 < i5 ? -1 : 0;
        int i7 = updateOp.positionStart;
        if (i7 < i5) {
            i6++;
        }
        if (i5 <= i7) {
            updateOp.positionStart = i7 + updateOp2.itemCount;
        }
        int i8 = updateOp2.positionStart;
        if (i8 <= i4) {
            updateOp.itemCount = i4 + updateOp2.itemCount;
        }
        updateOp2.positionStart = i8 + i6;
        list.set(i2, updateOp2);
        list.set(i3, updateOp);
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int i2, int i3) {
        AdapterHelper.UpdateOp updateOp = list.get(i2);
        AdapterHelper.UpdateOp updateOp2 = list.get(i3);
        int i4 = updateOp2.cmd;
        if (i4 == 1) {
            swapMoveAdd(list, i2, updateOp, i3, updateOp2);
        } else if (i4 == 2) {
            swapMoveRemove(list, i2, updateOp, i3, updateOp2);
        } else {
            if (i4 != 4) {
                return;
            }
            swapMoveUpdate(list, i2, updateOp, i3, updateOp2);
        }
    }

    public void reorderOps(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder == -1) {
                return;
            } else {
                swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            }
        }
    }

    public void swapMoveRemove(List<AdapterHelper.UpdateOp> list, int i2, AdapterHelper.UpdateOp updateOp, int i3, AdapterHelper.UpdateOp updateOp2) {
        boolean z2;
        int i4 = updateOp.positionStart;
        int i5 = updateOp.itemCount;
        boolean z3 = false;
        if (i4 < i5) {
            if (updateOp2.positionStart == i4 && updateOp2.itemCount == i5 - i4) {
                z2 = false;
                z3 = true;
            } else {
                z2 = false;
            }
        } else if (updateOp2.positionStart == i5 + 1 && updateOp2.itemCount == i4 - i5) {
            z2 = true;
            z3 = true;
        } else {
            z2 = true;
        }
        int i6 = updateOp2.positionStart;
        if (i5 < i6) {
            updateOp2.positionStart = i6 - 1;
        } else {
            int i7 = updateOp2.itemCount;
            if (i5 < i6 + i7) {
                updateOp2.itemCount = i7 - 1;
                updateOp.cmd = 2;
                updateOp.itemCount = 1;
                if (updateOp2.itemCount == 0) {
                    list.remove(i3);
                    this.mCallback.recycleUpdateOp(updateOp2);
                    return;
                }
                return;
            }
        }
        int i8 = updateOp.positionStart;
        int i9 = updateOp2.positionStart;
        AdapterHelper.UpdateOp updateOpObtainUpdateOp = null;
        if (i8 <= i9) {
            updateOp2.positionStart = i9 + 1;
        } else {
            int i10 = updateOp2.itemCount;
            if (i8 < i9 + i10) {
                updateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(2, i8 + 1, (i9 + i10) - i8, null);
                updateOp2.itemCount = updateOp.positionStart - updateOp2.positionStart;
            }
        }
        if (z3) {
            list.set(i2, updateOp2);
            list.remove(i3);
            this.mCallback.recycleUpdateOp(updateOp);
            return;
        }
        if (z2) {
            if (updateOpObtainUpdateOp != null) {
                int i11 = updateOp.positionStart;
                if (i11 > updateOpObtainUpdateOp.positionStart) {
                    updateOp.positionStart = i11 - updateOpObtainUpdateOp.itemCount;
                }
                int i12 = updateOp.itemCount;
                if (i12 > updateOpObtainUpdateOp.positionStart) {
                    updateOp.itemCount = i12 - updateOpObtainUpdateOp.itemCount;
                }
            }
            int i13 = updateOp.positionStart;
            if (i13 > updateOp2.positionStart) {
                updateOp.positionStart = i13 - updateOp2.itemCount;
            }
            int i14 = updateOp.itemCount;
            if (i14 > updateOp2.positionStart) {
                updateOp.itemCount = i14 - updateOp2.itemCount;
            }
        } else {
            if (updateOpObtainUpdateOp != null) {
                int i15 = updateOp.positionStart;
                if (i15 >= updateOpObtainUpdateOp.positionStart) {
                    updateOp.positionStart = i15 - updateOpObtainUpdateOp.itemCount;
                }
                int i16 = updateOp.itemCount;
                if (i16 >= updateOpObtainUpdateOp.positionStart) {
                    updateOp.itemCount = i16 - updateOpObtainUpdateOp.itemCount;
                }
            }
            int i17 = updateOp.positionStart;
            if (i17 >= updateOp2.positionStart) {
                updateOp.positionStart = i17 - updateOp2.itemCount;
            }
            int i18 = updateOp.itemCount;
            if (i18 >= updateOp2.positionStart) {
                updateOp.itemCount = i18 - updateOp2.itemCount;
            }
        }
        list.set(i2, updateOp2);
        if (updateOp.positionStart != updateOp.itemCount) {
            list.set(i3, updateOp);
        } else {
            list.remove(i3);
        }
        if (updateOpObtainUpdateOp != null) {
            list.add(i2, updateOpObtainUpdateOp);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    public void swapMoveUpdate(List<AdapterHelper.UpdateOp> list, int i2, AdapterHelper.UpdateOp updateOp, int i3, AdapterHelper.UpdateOp updateOp2) {
        AdapterHelper.UpdateOp updateOpObtainUpdateOp;
        int i4;
        int i5;
        int i6;
        int i7 = updateOp.itemCount;
        int i8 = updateOp2.positionStart;
        AdapterHelper.UpdateOp updateOpObtainUpdateOp2 = null;
        if (i7 >= i8) {
            int i9 = updateOp2.itemCount;
            if (i7 < i8 + i9) {
                updateOp2.itemCount = i9 - 1;
                updateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(4, updateOp.positionStart, 1, updateOp2.payload);
            }
            i4 = updateOp.positionStart;
            i5 = updateOp2.positionStart;
            if (i4 <= i5) {
                updateOp2.positionStart = i5 + 1;
            } else {
                i6 = updateOp2.itemCount;
                if (i4 < i5 + i6) {
                    int i10 = (i5 + i6) - i4;
                    updateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, i4 + 1, i10, updateOp2.payload);
                    updateOp2.itemCount -= i10;
                }
            }
            list.set(i3, updateOp);
            if (updateOp2.itemCount > 0) {
                list.set(i2, updateOp2);
            } else {
                list.remove(i2);
                this.mCallback.recycleUpdateOp(updateOp2);
            }
            if (updateOpObtainUpdateOp != null) {
                list.add(i2, updateOpObtainUpdateOp);
            }
            if (updateOpObtainUpdateOp2 != null) {
                list.add(i2, updateOpObtainUpdateOp2);
            }
        }
        updateOp2.positionStart = i8 - 1;
        updateOpObtainUpdateOp = null;
        i4 = updateOp.positionStart;
        i5 = updateOp2.positionStart;
        if (i4 <= i5) {
            updateOp2.positionStart = i5 + 1;
        } else {
            i6 = updateOp2.itemCount;
            if (i4 < i5 + i6) {
                int i11 = (i5 + i6) - i4;
                updateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, i4 + 1, i11, updateOp2.payload);
                updateOp2.itemCount -= i11;
            }
        }
        list.set(i3, updateOp);
        if (updateOp2.itemCount > 0) {
            list.set(i2, updateOp2);
        } else {
            list.remove(i2);
            this.mCallback.recycleUpdateOp(updateOp2);
        }
        if (updateOpObtainUpdateOp != null) {
            list.add(i2, updateOpObtainUpdateOp);
        }
        if (updateOpObtainUpdateOp2 != null) {
            list.add(i2, updateOpObtainUpdateOp2);
        }
    }
}
