package android.transition;

import android.util.ArrayMap;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class TransitionValuesMaps {
    public ArrayMap<View, TransitionValues> viewValues = new ArrayMap<>();
    public SparseArray<TransitionValues> idValues = new SparseArray<>();
    public LongSparseArray<TransitionValues> itemIdValues = new LongSparseArray<>();
}
