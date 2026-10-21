package android.app;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class LauncherActivity extends ListActivity {
    public IconResizer mIconResizer;
    public Intent mIntent;
    public PackageManager mPackageManager;

    public class ActivityAdapter extends BaseAdapter implements Filterable {
        private final Object lock = new Object();
        public List<ListItem> mActivitiesList;
        private Filter mFilter;
        public final IconResizer mIconResizer;
        public final LayoutInflater mInflater;
        private ArrayList<ListItem> mOriginalValues;
        private final boolean mShowIcons;

        public class ArrayFilter extends Filter {
            private ArrayFilter() {
            }

            @Override // android.widget.Filter
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                if (ActivityAdapter.this.mOriginalValues == null) {
                    synchronized (ActivityAdapter.this.lock) {
                        ActivityAdapter.this.mOriginalValues = new ArrayList(ActivityAdapter.this.mActivitiesList);
                    }
                }
                if (charSequence == null || charSequence.length() == 0) {
                    synchronized (ActivityAdapter.this.lock) {
                        ArrayList arrayList = new ArrayList(ActivityAdapter.this.mOriginalValues);
                        filterResults.values = arrayList;
                        filterResults.count = arrayList.size();
                    }
                } else {
                    String lowerCase = charSequence.toString().toLowerCase();
                    ArrayList arrayList2 = ActivityAdapter.this.mOriginalValues;
                    int size = arrayList2.size();
                    ArrayList arrayList3 = new ArrayList(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        ListItem listItem = (ListItem) arrayList2.get(i2);
                        for (String str : listItem.label.toString().toLowerCase().split(" ")) {
                            if (str.startsWith(lowerCase)) {
                                arrayList3.add(listItem);
                                break;
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
                ActivityAdapter activityAdapter = ActivityAdapter.this;
                activityAdapter.mActivitiesList = (List) filterResults.values;
                if (filterResults.count > 0) {
                    activityAdapter.notifyDataSetChanged();
                } else {
                    activityAdapter.notifyDataSetInvalidated();
                }
            }
        }

        public ActivityAdapter(IconResizer iconResizer) {
            this.mIconResizer = iconResizer;
            this.mInflater = (LayoutInflater) LauncherActivity.this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            this.mShowIcons = LauncherActivity.this.onEvaluateShowIcons();
            this.mActivitiesList = LauncherActivity.this.makeListItems();
        }

        private void bindView(View view, ListItem listItem) {
            TextView textView = (TextView) view;
            textView.setText(listItem.label);
            if (this.mShowIcons) {
                if (listItem.icon == null) {
                    listItem.icon = this.mIconResizer.createIconThumbnail(listItem.resolveInfo.loadIcon(LauncherActivity.this.getPackageManager()));
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(listItem.icon, (Drawable) null, (Drawable) null, (Drawable) null);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<ListItem> list = this.mActivitiesList;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (this.mFilter == null) {
                this.mFilter = new ArrayFilter();
            }
            return this.mFilter;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return Integer.valueOf(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.mInflater.inflate(17367074, viewGroup, false);
            }
            bindView(view, this.mActivitiesList.get(i2));
            return view;
        }

        public Intent intentForPosition(int i2) {
            if (this.mActivitiesList == null) {
                return null;
            }
            Intent intent = new Intent(LauncherActivity.this.mIntent);
            ListItem listItem = this.mActivitiesList.get(i2);
            intent.setClassName(listItem.packageName, listItem.className);
            Bundle bundle = listItem.extras;
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            return intent;
        }

        public ListItem itemForPosition(int i2) {
            List<ListItem> list = this.mActivitiesList;
            if (list == null) {
                return null;
            }
            return list.get(i2);
        }
    }

    public class IconResizer {
        private Canvas mCanvas;
        private int mIconHeight;
        private int mIconWidth;
        private final Rect mOldBounds = new Rect();

        public IconResizer() {
            this.mIconWidth = -1;
            this.mIconHeight = -1;
            Canvas canvas = new Canvas();
            this.mCanvas = canvas;
            canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
            int dimension = (int) LauncherActivity.this.getResources().getDimension(R.dimen.app_icon_size);
            this.mIconHeight = dimension;
            this.mIconWidth = dimension;
        }

        public Drawable createIconThumbnail(Drawable drawable) {
            int i2 = this.mIconWidth;
            int i3 = this.mIconHeight;
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (drawable instanceof PaintDrawable) {
                PaintDrawable paintDrawable = (PaintDrawable) drawable;
                paintDrawable.setIntrinsicWidth(i2);
                paintDrawable.setIntrinsicHeight(i3);
            }
            if (i2 <= 0 || i3 <= 0) {
                return drawable;
            }
            if (i2 >= intrinsicWidth && i3 >= intrinsicHeight) {
                if (intrinsicWidth >= i2 || intrinsicHeight >= i3) {
                    return drawable;
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.mIconWidth, this.mIconHeight, Bitmap.Config.ARGB_8888);
                Canvas canvas = this.mCanvas;
                canvas.setBitmap(bitmapCreateBitmap);
                this.mOldBounds.set(drawable.getBounds());
                int i4 = (i2 - intrinsicWidth) / 2;
                int i5 = (i3 - intrinsicHeight) / 2;
                drawable.setBounds(i4, i5, intrinsicWidth + i4, intrinsicHeight + i5);
                drawable.draw(canvas);
                drawable.setBounds(this.mOldBounds);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(LauncherActivity.this.getResources(), bitmapCreateBitmap);
                canvas.setBitmap(null);
                return bitmapDrawable;
            }
            float f2 = intrinsicWidth / intrinsicHeight;
            if (intrinsicWidth > intrinsicHeight) {
                i3 = (int) (i2 / f2);
            } else if (intrinsicHeight > intrinsicWidth) {
                i2 = (int) (i3 * f2);
            }
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.mIconWidth, this.mIconHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas2 = this.mCanvas;
            canvas2.setBitmap(bitmapCreateBitmap2);
            this.mOldBounds.set(drawable.getBounds());
            int i6 = (this.mIconWidth - i2) / 2;
            int i7 = (this.mIconHeight - i3) / 2;
            drawable.setBounds(i6, i7, i2 + i6, i3 + i7);
            drawable.draw(canvas2);
            drawable.setBounds(this.mOldBounds);
            BitmapDrawable bitmapDrawable2 = new BitmapDrawable(LauncherActivity.this.getResources(), bitmapCreateBitmap2);
            canvas2.setBitmap(null);
            return bitmapDrawable2;
        }
    }

    private void updateAlertTitle() {
        TextView textView = (TextView) findViewById(16908928);
        if (textView != null) {
            textView.setText(getTitle());
        }
    }

    private void updateButtonText() {
        Button button = (Button) findViewById(R.id.button1);
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: android.app.LauncherActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LauncherActivity.this.finish();
                }
            });
        }
    }

    public Intent getTargetIntent() {
        return new Intent();
    }

    public Intent intentForPosition(int i2) {
        return ((ActivityAdapter) this.mAdapter).intentForPosition(i2);
    }

    public ListItem itemForPosition(int i2) {
        return ((ActivityAdapter) this.mAdapter).itemForPosition(i2);
    }

    public List<ListItem> makeListItems() {
        List<ResolveInfo> listOnQueryPackageManager = onQueryPackageManager(this.mIntent);
        onSortResultList(listOnQueryPackageManager);
        ArrayList arrayList = new ArrayList(listOnQueryPackageManager.size());
        int size = listOnQueryPackageManager.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new ListItem(this.mPackageManager, listOnQueryPackageManager.get(i2), null));
        }
        return arrayList;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mPackageManager = getPackageManager();
        requestWindowFeature(5);
        setProgressBarIndeterminateVisibility(true);
        onSetContentView();
        this.mIconResizer = new IconResizer();
        Intent intent = new Intent(getTargetIntent());
        this.mIntent = intent;
        intent.setComponent(null);
        ActivityAdapter activityAdapter = new ActivityAdapter(this.mIconResizer);
        this.mAdapter = activityAdapter;
        setListAdapter(activityAdapter);
        getListView().setTextFilterEnabled(true);
        updateAlertTitle();
        updateButtonText();
        setProgressBarIndeterminateVisibility(false);
    }

    public boolean onEvaluateShowIcons() {
        return true;
    }

    @Override // android.app.ListActivity
    public void onListItemClick(ListView listView, View view, int i2, long j2) {
        startActivity(intentForPosition(i2));
    }

    public List<ResolveInfo> onQueryPackageManager(Intent intent) {
        return this.mPackageManager.queryIntentActivities(intent, 0);
    }

    public void onSetContentView() {
        setContentView(17367073);
    }

    public void onSortResultList(List<ResolveInfo> list) {
        Collections.sort(list, new ResolveInfo.DisplayNameComparator(this.mPackageManager));
    }

    @Override // android.app.Activity
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        updateAlertTitle();
    }

    @Override // android.app.Activity
    public void setTitle(int i2) {
        super.setTitle(i2);
        updateAlertTitle();
    }

    public static class ListItem {
        public String className;
        public Bundle extras;
        public Drawable icon;
        public CharSequence label;
        public String packageName;
        public ResolveInfo resolveInfo;

        public ListItem(PackageManager packageManager, ResolveInfo resolveInfo, IconResizer iconResizer) {
            this.resolveInfo = resolveInfo;
            CharSequence charSequenceLoadLabel = resolveInfo.loadLabel(packageManager);
            this.label = charSequenceLoadLabel;
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            ComponentInfo componentInfo = activityInfo == null ? resolveInfo.serviceInfo : activityInfo;
            if (charSequenceLoadLabel == null && componentInfo != null) {
                this.label = activityInfo.name;
            }
            if (iconResizer != null) {
                this.icon = iconResizer.createIconThumbnail(resolveInfo.loadIcon(packageManager));
            }
            this.packageName = componentInfo.applicationInfo.packageName;
            this.className = componentInfo.name;
        }

        public ListItem() {
        }
    }
}
