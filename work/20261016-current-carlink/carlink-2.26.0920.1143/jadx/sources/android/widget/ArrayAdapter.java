package android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ArrayAdapter<T> extends BaseAdapter implements Filterable, ThemedSpinnerAdapter {
    private final Context mContext;
    private LayoutInflater mDropDownInflater;
    private int mDropDownResource;
    private int mFieldId;
    private ArrayAdapter<T>.ArrayFilter mFilter;
    private final LayoutInflater mInflater;
    private final Object mLock;
    private boolean mNotifyOnChange;
    private List<T> mObjects;
    private boolean mObjectsFromResources;
    private ArrayList<T> mOriginalValues;
    private final int mResource;

    public class ArrayFilter extends Filter {
        private ArrayFilter() {
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (ArrayAdapter.this.mOriginalValues == null) {
                synchronized (ArrayAdapter.this.mLock) {
                    ArrayAdapter.this.mOriginalValues = new ArrayList(ArrayAdapter.this.mObjects);
                }
            }
            if (charSequence == null || charSequence.length() == 0) {
                synchronized (ArrayAdapter.this.mLock) {
                    arrayList = new ArrayList(ArrayAdapter.this.mOriginalValues);
                }
                filterResults.values = arrayList;
                filterResults.count = arrayList.size();
            } else {
                String lowerCase = charSequence.toString().toLowerCase();
                synchronized (ArrayAdapter.this.mLock) {
                    arrayList2 = new ArrayList(ArrayAdapter.this.mOriginalValues);
                }
                int size = arrayList2.size();
                ArrayList arrayList3 = new ArrayList();
                for (int i2 = 0; i2 < size; i2++) {
                    Object obj = arrayList2.get(i2);
                    String lowerCase2 = obj.toString().toLowerCase();
                    if (lowerCase2.startsWith(lowerCase)) {
                        arrayList3.add(obj);
                    } else {
                        for (String str : lowerCase2.split(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER)) {
                            if (str.startsWith(lowerCase)) {
                                arrayList3.add(obj);
                                break;
                            }
                        }
                    }
                }
                filterResults.values = arrayList3;
                filterResults.count = arrayList3.size();
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            ArrayAdapter.this.mObjects = (List) filterResults.values;
            if (filterResults.count > 0) {
                ArrayAdapter.this.notifyDataSetChanged();
            } else {
                ArrayAdapter.this.notifyDataSetInvalidated();
            }
        }
    }

    public ArrayAdapter(Context context, int i2) {
        this(context, i2, 0, new ArrayList());
    }

    public static ArrayAdapter<CharSequence> createFromResource(Context context, int i2, int i3) {
        return new ArrayAdapter<>(context, i3, 0, Arrays.asList(context.getResources().getTextArray(i2)), true);
    }

    private View createViewFromResource(LayoutInflater layoutInflater, int i2, View view, ViewGroup viewGroup, int i3) {
        TextView textView;
        if (view == null) {
            view = layoutInflater.inflate(i3, viewGroup, false);
        }
        try {
            int i4 = this.mFieldId;
            if (i4 == 0) {
                textView = (TextView) view;
            } else {
                textView = (TextView) view.findViewById(i4);
                if (textView == null) {
                    throw new RuntimeException("Failed to find view with ID " + this.mContext.getResources().getResourceName(this.mFieldId) + " in item layout");
                }
            }
            T item = getItem(i2);
            if (item instanceof CharSequence) {
                textView.setText((CharSequence) item);
            } else {
                textView.setText(item.toString());
            }
            return view;
        } catch (ClassCastException e2) {
            Log.e("ArrayAdapter", "You must supply a resource ID for a TextView");
            throw new IllegalStateException("ArrayAdapter requires the resource ID to be a TextView", e2);
        }
    }

    public void add(T t2) {
        synchronized (this.mLock) {
            ArrayList<T> arrayList = this.mOriginalValues;
            if (arrayList != null) {
                arrayList.add(t2);
            } else {
                this.mObjects.add(t2);
            }
            this.mObjectsFromResources = false;
        }
        if (this.mNotifyOnChange) {
            notifyDataSetChanged();
        }
    }

    public void addAll(Collection<? extends T> collection) {
        synchronized (this.mLock) {
            ArrayList<T> arrayList = this.mOriginalValues;
            if (arrayList != null) {
                arrayList.addAll(collection);
            } else {
                this.mObjects.addAll(collection);
            }
            this.mObjectsFromResources = false;
        }
        if (this.mNotifyOnChange) {
            notifyDataSetChanged();
        }
    }

    public void clear() {
        synchronized (this.mLock) {
            ArrayList<T> arrayList = this.mOriginalValues;
            if (arrayList != null) {
                arrayList.clear();
            } else {
                this.mObjects.clear();
            }
            this.mObjectsFromResources = false;
        }
        if (this.mNotifyOnChange) {
            notifyDataSetChanged();
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public CharSequence[] getAutofillOptions() {
        List<T> list;
        CharSequence[] autofillOptions = super.getAutofillOptions();
        if (autofillOptions != null) {
            return autofillOptions;
        }
        if (!this.mObjectsFromResources || (list = this.mObjects) == null || list.isEmpty()) {
            return null;
        }
        CharSequence[] charSequenceArr = new CharSequence[this.mObjects.size()];
        this.mObjects.toArray(charSequenceArr);
        return charSequenceArr;
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mObjects.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = this.mDropDownInflater;
        if (layoutInflater == null) {
            layoutInflater = this.mInflater;
        }
        return createViewFromResource(layoutInflater, i2, view, viewGroup, this.mDropDownResource);
    }

    @Override // android.widget.ThemedSpinnerAdapter
    public Resources.Theme getDropDownViewTheme() {
        LayoutInflater layoutInflater = this.mDropDownInflater;
        if (layoutInflater == null) {
            return null;
        }
        return layoutInflater.getContext().getTheme();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.mFilter == null) {
            this.mFilter = new ArrayFilter();
        }
        return this.mFilter;
    }

    @Override // android.widget.Adapter
    public T getItem(int i2) {
        return this.mObjects.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    public int getPosition(T t2) {
        return this.mObjects.indexOf(t2);
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        return createViewFromResource(this.mInflater, i2, view, viewGroup, this.mResource);
    }

    public void insert(T t2, int i2) {
        synchronized (this.mLock) {
            ArrayList<T> arrayList = this.mOriginalValues;
            if (arrayList != null) {
                arrayList.add(i2, t2);
            } else {
                this.mObjects.add(i2, t2);
            }
            this.mObjectsFromResources = false;
        }
        if (this.mNotifyOnChange) {
            notifyDataSetChanged();
        }
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.mNotifyOnChange = true;
    }

    public void remove(T t2) {
        synchronized (this.mLock) {
            ArrayList<T> arrayList = this.mOriginalValues;
            if (arrayList != null) {
                arrayList.remove(t2);
            } else {
                this.mObjects.remove(t2);
            }
            this.mObjectsFromResources = false;
        }
        if (this.mNotifyOnChange) {
            notifyDataSetChanged();
        }
    }

    public void setDropDownViewResource(int i2) {
        this.mDropDownResource = i2;
    }

    @Override // android.widget.ThemedSpinnerAdapter
    public void setDropDownViewTheme(Resources.Theme theme) {
        if (theme == null) {
            this.mDropDownInflater = null;
        } else if (theme == this.mInflater.getContext().getTheme()) {
            this.mDropDownInflater = this.mInflater;
        } else {
            this.mDropDownInflater = LayoutInflater.from(new ContextThemeWrapper(this.mContext, theme));
        }
    }

    public void setNotifyOnChange(boolean z2) {
        this.mNotifyOnChange = z2;
    }

    public void sort(Comparator<? super T> comparator) {
        synchronized (this.mLock) {
            ArrayList<T> arrayList = this.mOriginalValues;
            if (arrayList != null) {
                Collections.sort(arrayList, comparator);
            } else {
                Collections.sort(this.mObjects, comparator);
            }
        }
        if (this.mNotifyOnChange) {
            notifyDataSetChanged();
        }
    }

    public ArrayAdapter(Context context, int i2, int i3) {
        this(context, i2, i3, new ArrayList());
    }

    public ArrayAdapter(Context context, int i2, T[] tArr) {
        this(context, i2, 0, Arrays.asList(tArr));
    }

    public ArrayAdapter(Context context, int i2, int i3, T[] tArr) {
        this(context, i2, i3, Arrays.asList(tArr));
    }

    public ArrayAdapter(Context context, int i2, List<T> list) {
        this(context, i2, 0, list);
    }

    public ArrayAdapter(Context context, int i2, int i3, List<T> list) {
        this(context, i2, i3, list, false);
    }

    private ArrayAdapter(Context context, int i2, int i3, List<T> list, boolean z2) {
        this.mLock = new Object();
        this.mFieldId = 0;
        this.mNotifyOnChange = true;
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
        this.mDropDownResource = i2;
        this.mResource = i2;
        this.mObjects = list;
        this.mObjectsFromResources = z2;
        this.mFieldId = i3;
    }

    public void addAll(T... tArr) {
        synchronized (this.mLock) {
            ArrayList<T> arrayList = this.mOriginalValues;
            if (arrayList != null) {
                Collections.addAll(arrayList, tArr);
            } else {
                Collections.addAll(this.mObjects, tArr);
            }
            this.mObjectsFromResources = false;
        }
        if (this.mNotifyOnChange) {
            notifyDataSetChanged();
        }
    }
}
