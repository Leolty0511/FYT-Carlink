package android.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public interface Adapter {
    public static final int IGNORE_ITEM_VIEW_TYPE = -1;
    public static final int NO_SELECTION = Integer.MIN_VALUE;

    CharSequence[] getAutofillOptions();

    int getCount();

    Object getItem(int i2);

    long getItemId(int i2);

    int getItemViewType(int i2);

    View getView(int i2, View view, ViewGroup viewGroup);

    int getViewTypeCount();

    boolean hasStableIds();

    boolean isEmpty();

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);
}
