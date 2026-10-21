package android.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SimpleExpandableListAdapter extends BaseExpandableListAdapter {
    private List<? extends List<? extends Map<String, ?>>> mChildData;
    private String[] mChildFrom;
    private int mChildLayout;
    private int[] mChildTo;
    private int mCollapsedGroupLayout;
    private int mExpandedGroupLayout;
    private List<? extends Map<String, ?>> mGroupData;
    private String[] mGroupFrom;
    private int[] mGroupTo;
    private LayoutInflater mInflater;
    private int mLastChildLayout;

    public SimpleExpandableListAdapter(Context context, List<? extends Map<String, ?>> list, int i2, String[] strArr, int[] iArr, List<? extends List<? extends Map<String, ?>>> list2, int i3, String[] strArr2, int[] iArr2) {
        this(context, list, i2, i2, strArr, iArr, list2, i3, i3, strArr2, iArr2);
    }

    private void bindView(View view, Map<String, ?> map, String[] strArr, int[] iArr) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            TextView textView = (TextView) view.findViewById(iArr[i2]);
            if (textView != null) {
                textView.setText((String) map.get(strArr[i2]));
            }
        }
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i2, int i3) {
        return this.mChildData.get(i2).get(i3);
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i2, int i3) {
        return i3;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i2, int i3, boolean z2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = newChildView(z2, viewGroup);
        }
        bindView(view, this.mChildData.get(i2).get(i3), this.mChildFrom, this.mChildTo);
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i2) {
        return this.mChildData.get(i2).size();
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i2) {
        return this.mGroupData.get(i2);
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.mGroupData.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i2, boolean z2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = newGroupView(z2, viewGroup);
        }
        bindView(view, this.mGroupData.get(i2), this.mGroupFrom, this.mGroupTo);
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i2, int i3) {
        return true;
    }

    public View newChildView(boolean z2, ViewGroup viewGroup) {
        return this.mInflater.inflate(z2 ? this.mLastChildLayout : this.mChildLayout, viewGroup, false);
    }

    public View newGroupView(boolean z2, ViewGroup viewGroup) {
        return this.mInflater.inflate(z2 ? this.mExpandedGroupLayout : this.mCollapsedGroupLayout, viewGroup, false);
    }

    public SimpleExpandableListAdapter(Context context, List<? extends Map<String, ?>> list, int i2, int i3, String[] strArr, int[] iArr, List<? extends List<? extends Map<String, ?>>> list2, int i4, String[] strArr2, int[] iArr2) {
        this(context, list, i2, i3, strArr, iArr, list2, i4, i4, strArr2, iArr2);
    }

    public SimpleExpandableListAdapter(Context context, List<? extends Map<String, ?>> list, int i2, int i3, String[] strArr, int[] iArr, List<? extends List<? extends Map<String, ?>>> list2, int i4, int i5, String[] strArr2, int[] iArr2) {
        this.mGroupData = list;
        this.mExpandedGroupLayout = i2;
        this.mCollapsedGroupLayout = i3;
        this.mGroupFrom = strArr;
        this.mGroupTo = iArr;
        this.mChildData = list2;
        this.mChildLayout = i4;
        this.mLastChildLayout = i5;
        this.mChildFrom = strArr2;
        this.mChildTo = iArr2;
        this.mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }
}
