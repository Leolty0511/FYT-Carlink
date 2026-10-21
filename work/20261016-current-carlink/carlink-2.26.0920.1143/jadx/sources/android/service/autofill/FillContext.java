package android.service.autofill;

import android.accessibilityservice.c;
import android.app.assist.AssistStructure;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.SparseIntArray;
import android.view.autofill.AutofillId;
import android.view.autofill.Helper;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public final class FillContext implements Parcelable {
    public static final Parcelable.Creator<FillContext> CREATOR = new Parcelable.Creator<FillContext>() { // from class: android.service.autofill.FillContext.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillContext createFromParcel(Parcel parcel) {
            return new FillContext(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillContext[] newArray(int i2) {
            return new FillContext[i2];
        }
    };
    private final int mRequestId;
    private final AssistStructure mStructure;
    private ArrayMap<AutofillId, AssistStructure.ViewNode> mViewNodeLookupTable;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AssistStructure.ViewNode findViewNodeByAutofillId(AutofillId autofillId) {
        LinkedList linkedList = new LinkedList();
        int windowNodeCount = this.mStructure.getWindowNodeCount();
        for (int i2 = 0; i2 < windowNodeCount; i2++) {
            linkedList.add(this.mStructure.getWindowNodeAt(i2).getRootViewNode());
        }
        while (!linkedList.isEmpty()) {
            AssistStructure.ViewNode viewNode = (AssistStructure.ViewNode) linkedList.removeFirst();
            if (autofillId.equals(viewNode.getAutofillId())) {
                return viewNode;
            }
            for (int i3 = 0; i3 < viewNode.getChildCount(); i3++) {
                linkedList.addLast(viewNode.getChildAt(i3));
            }
        }
        return null;
    }

    public AssistStructure.ViewNode[] findViewNodesByAutofillIds(AutofillId[] autofillIdArr) {
        LinkedList linkedList = new LinkedList();
        AssistStructure.ViewNode[] viewNodeArr = new AssistStructure.ViewNode[autofillIdArr.length];
        SparseIntArray sparseIntArray = new SparseIntArray(autofillIdArr.length);
        for (int i2 = 0; i2 < autofillIdArr.length; i2++) {
            ArrayMap<AutofillId, AssistStructure.ViewNode> arrayMap = this.mViewNodeLookupTable;
            if (arrayMap != null) {
                int iIndexOfKey = arrayMap.indexOfKey(autofillIdArr[i2]);
                if (iIndexOfKey >= 0) {
                    viewNodeArr[i2] = this.mViewNodeLookupTable.valueAt(iIndexOfKey);
                } else {
                    sparseIntArray.put(i2, 0);
                }
            } else {
                sparseIntArray.put(i2, 0);
            }
        }
        int windowNodeCount = this.mStructure.getWindowNodeCount();
        for (int i3 = 0; i3 < windowNodeCount; i3++) {
            linkedList.add(this.mStructure.getWindowNodeAt(i3).getRootViewNode());
        }
        while (sparseIntArray.size() > 0 && !linkedList.isEmpty()) {
            AssistStructure.ViewNode viewNode = (AssistStructure.ViewNode) linkedList.removeFirst();
            for (int i4 = 0; i4 < sparseIntArray.size(); i4++) {
                int iKeyAt = sparseIntArray.keyAt(i4);
                AutofillId autofillId = autofillIdArr[iKeyAt];
                if (autofillId.equals(viewNode.getAutofillId())) {
                    viewNodeArr[iKeyAt] = viewNode;
                    if (this.mViewNodeLookupTable == null) {
                        this.mViewNodeLookupTable = new ArrayMap<>(autofillIdArr.length);
                    }
                    this.mViewNodeLookupTable.put(autofillId, viewNode);
                    sparseIntArray.removeAt(i4);
                    break;
                }
            }
            for (int i5 = 0; i5 < viewNode.getChildCount(); i5++) {
                linkedList.addLast(viewNode.getChildAt(i5));
            }
        }
        for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
            if (this.mViewNodeLookupTable == null) {
                this.mViewNodeLookupTable = new ArrayMap<>(sparseIntArray.size());
            }
            this.mViewNodeLookupTable.put(autofillIdArr[sparseIntArray.keyAt(i6)], null);
        }
        return viewNodeArr;
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public AssistStructure getStructure() {
        return this.mStructure;
    }

    public String toString() {
        return !Helper.sDebug ? super.toString() : c.m(new StringBuilder("FillContext [reqId="), this.mRequestId, "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRequestId);
        parcel.writeParcelable(this.mStructure, i2);
    }

    public FillContext(int i2, AssistStructure assistStructure) {
        this.mRequestId = i2;
        this.mStructure = assistStructure;
    }

    private FillContext(Parcel parcel) {
        this(parcel.readInt(), (AssistStructure) parcel.readParcelable(null));
    }
}
