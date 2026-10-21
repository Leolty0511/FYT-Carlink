package android.app;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class ListActivity extends Activity {
    public ListAdapter mAdapter;
    public ListView mList;
    private Handler mHandler = new Handler();
    private boolean mFinishedStart = false;
    private Runnable mRequestFocus = new Runnable() { // from class: android.app.ListActivity.1
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            ListView listView = ListActivity.this.mList;
            listView.focusableViewAvailable(listView);
        }
    };
    private AdapterView.OnItemClickListener mOnClickListener = new AdapterView.OnItemClickListener() { // from class: android.app.ListActivity.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            ListActivity.this.onListItemClick((ListView) adapterView, view, i2, j2);
        }
    };

    private void ensureList() {
        if (this.mList != null) {
            return;
        }
        setContentView(17367124);
    }

    public ListAdapter getListAdapter() {
        return this.mAdapter;
    }

    public ListView getListView() {
        ensureList();
        return this.mList;
    }

    public long getSelectedItemId() {
        return this.mList.getSelectedItemId();
    }

    public int getSelectedItemPosition() {
        return this.mList.getSelectedItemPosition();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        View viewFindViewById = findViewById(R.id.empty);
        ListView listView = (ListView) findViewById(R.id.list);
        this.mList = listView;
        if (listView == null) {
            throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
        }
        if (viewFindViewById != null) {
            listView.setEmptyView(viewFindViewById);
        }
        this.mList.setOnItemClickListener(this.mOnClickListener);
        if (this.mFinishedStart) {
            setListAdapter(this.mAdapter);
        }
        this.mHandler.post(this.mRequestFocus);
        this.mFinishedStart = true;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        super.onDestroy();
    }

    public void onListItemClick(ListView listView, View view, int i2, long j2) {
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        ensureList();
        super.onRestoreInstanceState(bundle);
    }

    public void setListAdapter(ListAdapter listAdapter) {
        synchronized (this) {
            ensureList();
            this.mAdapter = listAdapter;
            this.mList.setAdapter(listAdapter);
        }
    }

    public void setSelection(int i2) {
        this.mList.setSelection(i2);
    }
}
