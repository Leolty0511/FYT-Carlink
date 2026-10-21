package android.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ResourceCursorTreeAdapter extends CursorTreeAdapter {
    private int mChildLayout;
    private int mCollapsedGroupLayout;
    private int mExpandedGroupLayout;
    private LayoutInflater mInflater;
    private int mLastChildLayout;

    public ResourceCursorTreeAdapter(Context context, Cursor cursor, int i2, int i3, int i4, int i5) {
        super(cursor, context);
        this.mCollapsedGroupLayout = i2;
        this.mExpandedGroupLayout = i3;
        this.mChildLayout = i4;
        this.mLastChildLayout = i5;
        this.mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    @Override // android.widget.CursorTreeAdapter
    public View newChildView(Context context, Cursor cursor, boolean z2, ViewGroup viewGroup) {
        return this.mInflater.inflate(z2 ? this.mLastChildLayout : this.mChildLayout, viewGroup, false);
    }

    @Override // android.widget.CursorTreeAdapter
    public View newGroupView(Context context, Cursor cursor, boolean z2, ViewGroup viewGroup) {
        return this.mInflater.inflate(z2 ? this.mExpandedGroupLayout : this.mCollapsedGroupLayout, viewGroup, false);
    }

    public ResourceCursorTreeAdapter(Context context, Cursor cursor, int i2, int i3, int i4) {
        this(context, cursor, i2, i3, i4, i4);
    }

    public ResourceCursorTreeAdapter(Context context, Cursor cursor, int i2, int i3) {
        this(context, cursor, i2, i2, i3, i3);
    }
}
