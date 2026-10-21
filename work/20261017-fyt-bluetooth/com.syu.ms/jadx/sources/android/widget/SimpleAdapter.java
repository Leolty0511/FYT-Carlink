package android.widget;

import android.content.Context;
import android.net.ProxyProperties;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SimpleAdapter extends BaseAdapter implements Filterable {
    private List<? extends Map<String, ?>> mData;
    private int mDropDownResource;
    private SimpleFilter mFilter;
    private String[] mFrom;
    private LayoutInflater mInflater;
    private int mResource;
    private int[] mTo;
    private ArrayList<Map<String, ?>> mUnfilteredData;
    private ViewBinder mViewBinder;

    public class SimpleFilter extends Filter {
        private SimpleFilter() {
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (SimpleAdapter.this.mUnfilteredData == null) {
                SimpleAdapter.this.mUnfilteredData = new ArrayList(SimpleAdapter.this.mData);
            }
            if (charSequence == null || charSequence.length() == 0) {
                ArrayList arrayList = SimpleAdapter.this.mUnfilteredData;
                filterResults.values = arrayList;
                filterResults.count = arrayList.size();
            } else {
                String lowerCase = charSequence.toString().toLowerCase();
                ArrayList arrayList2 = SimpleAdapter.this.mUnfilteredData;
                int size = arrayList2.size();
                ArrayList arrayList3 = new ArrayList(size);
                for (int i2 = 0; i2 < size; i2++) {
                    Map map = (Map) arrayList2.get(i2);
                    if (map != null) {
                        int length = SimpleAdapter.this.mTo.length;
                        for (int i3 = 0; i3 < length; i3++) {
                            for (String str : ((String) map.get(SimpleAdapter.this.mFrom[i3])).split(" ")) {
                                if (str.toLowerCase().startsWith(lowerCase)) {
                                    arrayList3.add(map);
                                    break;
                                }
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
            SimpleAdapter.this.mData = (List) filterResults.values;
            if (filterResults.count > 0) {
                SimpleAdapter.this.notifyDataSetChanged();
            } else {
                SimpleAdapter.this.notifyDataSetInvalidated();
            }
        }
    }

    public interface ViewBinder {
        boolean setViewValue(View view, Object obj, String str);
    }

    public SimpleAdapter(Context context, List<? extends Map<String, ?>> list, int i2, String[] strArr, int[] iArr) {
        this.mData = list;
        this.mDropDownResource = i2;
        this.mResource = i2;
        this.mFrom = strArr;
        this.mTo = iArr;
        this.mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    private void bindView(int i2, View view) throws Throwable {
        Map<String, ?> map = this.mData.get(i2);
        if (map == null) {
            return;
        }
        ViewBinder viewBinder = this.mViewBinder;
        String[] strArr = this.mFrom;
        int[] iArr = this.mTo;
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            View viewFindViewById = view.findViewById(iArr[i3]);
            if (viewFindViewById != 0) {
                Object obj = map.get(strArr[i3]);
                String str = ProxyProperties.LOCAL_EXCL_LIST;
                String string = obj == null ? ProxyProperties.LOCAL_EXCL_LIST : obj.toString();
                if (string != null) {
                    str = string;
                }
                if (viewBinder != null ? viewBinder.setViewValue(viewFindViewById, obj, str) : false) {
                    continue;
                } else if (viewFindViewById instanceof Checkable) {
                    if (obj instanceof Boolean) {
                        ((Checkable) viewFindViewById).setChecked(((Boolean) obj).booleanValue());
                    } else {
                        if (!(viewFindViewById instanceof TextView)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(viewFindViewById.getClass().getName());
                            sb.append(" should be bound to a Boolean, not a ");
                            sb.append(obj == null ? "<unknown type>" : obj.getClass());
                            throw new IllegalStateException(sb.toString());
                        }
                        setViewText((TextView) viewFindViewById, str);
                    }
                } else if (viewFindViewById instanceof TextView) {
                    setViewText((TextView) viewFindViewById, str);
                } else {
                    if (!(viewFindViewById instanceof ImageView)) {
                        throw new IllegalStateException(viewFindViewById.getClass().getName() + " is not a  view that can be bounds by this SimpleAdapter");
                    }
                    if (obj instanceof Integer) {
                        setViewImage((ImageView) viewFindViewById, ((Integer) obj).intValue());
                    } else {
                        setViewImage((ImageView) viewFindViewById, str);
                    }
                }
            }
        }
    }

    private View createViewFromResource(int i2, View view, ViewGroup viewGroup, int i3) throws Throwable {
        if (view == null) {
            view = this.mInflater.inflate(i3, viewGroup, false);
        }
        bindView(i2, view);
        return view;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mData.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        return createViewFromResource(i2, view, viewGroup, this.mDropDownResource);
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.mFilter == null) {
            this.mFilter = new SimpleFilter();
        }
        return this.mFilter;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.mData.get(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        return createViewFromResource(i2, view, viewGroup, this.mResource);
    }

    public ViewBinder getViewBinder() {
        return this.mViewBinder;
    }

    public void setDropDownViewResource(int i2) {
        this.mDropDownResource = i2;
    }

    public void setViewBinder(ViewBinder viewBinder) {
        this.mViewBinder = viewBinder;
    }

    public void setViewImage(ImageView imageView, int i2) throws Throwable {
        imageView.setImageResource(i2);
    }

    public void setViewText(TextView textView, String str) {
        textView.setText(str);
    }

    public void setViewImage(ImageView imageView, String str) throws Throwable {
        try {
            imageView.setImageResource(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            imageView.setImageURI(Uri.parse(str));
        }
    }
}
