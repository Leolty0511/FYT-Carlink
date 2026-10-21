package android.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CursorTreeAdapter extends BaseExpandableListAdapter implements Filterable, CursorFilter.CursorFilterClient {
    private boolean mAutoRequery;
    SparseArray<MyCursorHelper> mChildrenCursorHelpers;
    private Context mContext;
    CursorFilter mCursorFilter;
    FilterQueryProvider mFilterQueryProvider;
    MyCursorHelper mGroupCursorHelper;
    private Handler mHandler;

    public class MyCursorHelper {
        private MyContentObserver mContentObserver;
        private Cursor mCursor;
        private MyDataSetObserver mDataSetObserver;
        private boolean mDataValid;
        private int mRowIDColumn;

        public class MyContentObserver extends ContentObserver {
            public MyContentObserver() {
                super(CursorTreeAdapter.this.mHandler);
            }

            @Override // android.database.ContentObserver
            public boolean deliverSelfNotifications() {
                return true;
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z2) {
                if (!CursorTreeAdapter.this.mAutoRequery || MyCursorHelper.this.mCursor == null || MyCursorHelper.this.mCursor.isClosed()) {
                    return;
                }
                MyCursorHelper myCursorHelper = MyCursorHelper.this;
                myCursorHelper.mDataValid = myCursorHelper.mCursor.requery();
            }
        }

        public class MyDataSetObserver extends DataSetObserver {
            private MyDataSetObserver() {
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                MyCursorHelper.this.mDataValid = true;
                CursorTreeAdapter.this.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                MyCursorHelper.this.mDataValid = false;
                CursorTreeAdapter.this.notifyDataSetInvalidated();
            }
        }

        public MyCursorHelper(Cursor cursor) {
            boolean z2 = cursor != null;
            this.mCursor = cursor;
            this.mDataValid = z2;
            this.mRowIDColumn = z2 ? cursor.getColumnIndex("_id") : -1;
            this.mContentObserver = new MyContentObserver();
            this.mDataSetObserver = new MyDataSetObserver();
            if (z2) {
                cursor.registerContentObserver(this.mContentObserver);
                cursor.registerDataSetObserver(this.mDataSetObserver);
            }
        }

        public void changeCursor(Cursor cursor, boolean z2) {
            if (cursor == this.mCursor) {
                return;
            }
            deactivate();
            this.mCursor = cursor;
            if (cursor == null) {
                this.mRowIDColumn = -1;
                this.mDataValid = false;
                CursorTreeAdapter.this.notifyDataSetInvalidated();
            } else {
                cursor.registerContentObserver(this.mContentObserver);
                cursor.registerDataSetObserver(this.mDataSetObserver);
                this.mRowIDColumn = cursor.getColumnIndex("_id");
                this.mDataValid = true;
                CursorTreeAdapter.this.notifyDataSetChanged(z2);
            }
        }

        public void deactivate() {
            Cursor cursor = this.mCursor;
            if (cursor == null) {
                return;
            }
            cursor.unregisterContentObserver(this.mContentObserver);
            this.mCursor.unregisterDataSetObserver(this.mDataSetObserver);
            this.mCursor.close();
            this.mCursor = null;
        }

        public int getCount() {
            Cursor cursor;
            if (!this.mDataValid || (cursor = this.mCursor) == null) {
                return 0;
            }
            return cursor.getCount();
        }

        public Cursor getCursor() {
            return this.mCursor;
        }

        public long getId(int i2) {
            Cursor cursor;
            if (this.mDataValid && (cursor = this.mCursor) != null && cursor.moveToPosition(i2)) {
                return this.mCursor.getLong(this.mRowIDColumn);
            }
            return 0L;
        }

        public boolean isValid() {
            return this.mDataValid && this.mCursor != null;
        }

        public Cursor moveTo(int i2) {
            Cursor cursor;
            if (this.mDataValid && (cursor = this.mCursor) != null && cursor.moveToPosition(i2)) {
                return this.mCursor;
            }
            return null;
        }
    }

    public CursorTreeAdapter(Cursor cursor, Context context) {
        init(cursor, context, true);
    }

    private void init(Cursor cursor, Context context, boolean z2) {
        this.mContext = context;
        this.mHandler = new Handler();
        this.mAutoRequery = z2;
        this.mGroupCursorHelper = new MyCursorHelper(cursor);
        this.mChildrenCursorHelpers = new SparseArray<>();
    }

    private synchronized void releaseCursorHelpers() {
        for (int size = this.mChildrenCursorHelpers.size() - 1; size >= 0; size--) {
            this.mChildrenCursorHelpers.valueAt(size).deactivate();
        }
        this.mChildrenCursorHelpers.clear();
    }

    public abstract void bindChildView(View view, Context context, Cursor cursor, boolean z2);

    public abstract void bindGroupView(View view, Context context, Cursor cursor, boolean z2);

    @Override // android.widget.CursorFilter.CursorFilterClient
    public void changeCursor(Cursor cursor) {
        this.mGroupCursorHelper.changeCursor(cursor, true);
    }

    public synchronized void deactivateChildrenCursorHelper(int i2) {
        MyCursorHelper childrenCursorHelper = getChildrenCursorHelper(i2, true);
        this.mChildrenCursorHelpers.remove(i2);
        childrenCursorHelper.deactivate();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i2, int i3) {
        return getChildrenCursorHelper(i2, true).getId(i3);
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i2, int i3, boolean z2, View view, ViewGroup viewGroup) {
        Cursor cursorMoveTo = getChildrenCursorHelper(i2, true).moveTo(i3);
        if (cursorMoveTo == null) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (view == null) {
            view = newChildView(this.mContext, cursorMoveTo, z2, viewGroup);
        }
        bindChildView(view, this.mContext, cursorMoveTo, z2);
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i2) {
        MyCursorHelper childrenCursorHelper = getChildrenCursorHelper(i2, true);
        if (!this.mGroupCursorHelper.isValid() || childrenCursorHelper == null) {
            return 0;
        }
        return childrenCursorHelper.getCount();
    }

    public abstract Cursor getChildrenCursor(Cursor cursor);

    public synchronized MyCursorHelper getChildrenCursorHelper(int i2, boolean z2) {
        MyCursorHelper myCursorHelper = this.mChildrenCursorHelpers.get(i2);
        if (myCursorHelper == null) {
            if (this.mGroupCursorHelper.moveTo(i2) == null) {
                return null;
            }
            MyCursorHelper myCursorHelper2 = new MyCursorHelper(getChildrenCursor(this.mGroupCursorHelper.getCursor()));
            this.mChildrenCursorHelpers.put(i2, myCursorHelper2);
            myCursorHelper = myCursorHelper2;
        }
        return myCursorHelper;
    }

    @Override // android.widget.CursorFilter.CursorFilterClient
    public Cursor getCursor() {
        return this.mGroupCursorHelper.getCursor();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.mCursorFilter == null) {
            this.mCursorFilter = new CursorFilter(this);
        }
        return this.mCursorFilter;
    }

    public FilterQueryProvider getFilterQueryProvider() {
        return this.mFilterQueryProvider;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.mGroupCursorHelper.getCount();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i2) {
        return this.mGroupCursorHelper.getId(i2);
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i2, boolean z2, View view, ViewGroup viewGroup) {
        Cursor cursorMoveTo = this.mGroupCursorHelper.moveTo(i2);
        if (cursorMoveTo == null) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (view == null) {
            view = newGroupView(this.mContext, cursorMoveTo, z2, viewGroup);
        }
        bindGroupView(view, this.mContext, cursorMoveTo, z2);
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

    public abstract View newChildView(Context context, Cursor cursor, boolean z2, ViewGroup viewGroup);

    public abstract View newGroupView(Context context, Cursor cursor, boolean z2, ViewGroup viewGroup);

    @Override // android.widget.BaseExpandableListAdapter
    public void notifyDataSetChanged() {
        notifyDataSetChanged(true);
    }

    @Override // android.widget.BaseExpandableListAdapter
    public void notifyDataSetInvalidated() {
        releaseCursorHelpers();
        super.notifyDataSetInvalidated();
    }

    @Override // android.widget.BaseExpandableListAdapter, android.widget.ExpandableListAdapter
    public void onGroupCollapsed(int i2) {
        deactivateChildrenCursorHelper(i2);
    }

    @Override // android.widget.CursorFilter.CursorFilterClient
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.mFilterQueryProvider;
        return filterQueryProvider != null ? filterQueryProvider.runQuery(charSequence) : this.mGroupCursorHelper.getCursor();
    }

    public void setChildrenCursor(int i2, Cursor cursor) {
        getChildrenCursorHelper(i2, false).changeCursor(cursor, false);
    }

    public void setFilterQueryProvider(FilterQueryProvider filterQueryProvider) {
        this.mFilterQueryProvider = filterQueryProvider;
    }

    public void setGroupCursor(Cursor cursor) {
        this.mGroupCursorHelper.changeCursor(cursor, false);
    }

    @Override // android.widget.CursorFilter.CursorFilterClient
    public String convertToString(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    @Override // android.widget.ExpandableListAdapter
    public Cursor getChild(int i2, int i3) {
        return getChildrenCursorHelper(i2, true).moveTo(i3);
    }

    @Override // android.widget.ExpandableListAdapter
    public Cursor getGroup(int i2) {
        return this.mGroupCursorHelper.moveTo(i2);
    }

    public void notifyDataSetChanged(boolean z2) {
        if (z2) {
            releaseCursorHelpers();
        }
        super.notifyDataSetChanged();
    }

    public CursorTreeAdapter(Cursor cursor, Context context, boolean z2) {
        init(cursor, context, z2);
    }
}
