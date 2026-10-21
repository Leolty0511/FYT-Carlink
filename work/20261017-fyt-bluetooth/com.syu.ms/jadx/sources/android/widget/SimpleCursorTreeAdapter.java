package android.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.ProxyProperties;
import android.net.Uri;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleCursorTreeAdapter extends ResourceCursorTreeAdapter {
    private int[] mChildFrom;
    private String[] mChildFromNames;
    private int[] mChildTo;
    private int[] mGroupFrom;
    private String[] mGroupFromNames;
    private int[] mGroupTo;
    private ViewBinder mViewBinder;

    public interface ViewBinder {
        boolean setViewValue(View view, Cursor cursor, int i2);
    }

    public SimpleCursorTreeAdapter(Context context, Cursor cursor, int i2, int i3, String[] strArr, int[] iArr, int i4, int i5, String[] strArr2, int[] iArr2) {
        super(context, cursor, i2, i3, i4, i5);
        init(strArr, iArr, strArr2, iArr2);
    }

    private void bindView(View view, Context context, Cursor cursor, int[] iArr, int[] iArr2) throws Throwable {
        ViewBinder viewBinder = this.mViewBinder;
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            View viewFindViewById = view.findViewById(iArr2[i2]);
            if (viewFindViewById != null) {
                if (viewBinder != null ? viewBinder.setViewValue(viewFindViewById, cursor, iArr[i2]) : false) {
                    continue;
                } else {
                    String string = cursor.getString(iArr[i2]);
                    if (string == null) {
                        string = ProxyProperties.LOCAL_EXCL_LIST;
                    }
                    if (viewFindViewById instanceof TextView) {
                        setViewText((TextView) viewFindViewById, string);
                    } else {
                        if (!(viewFindViewById instanceof ImageView)) {
                            throw new IllegalStateException("SimpleCursorTreeAdapter can bind values only to TextView and ImageView!");
                        }
                        setViewImage((ImageView) viewFindViewById, string);
                    }
                }
            }
        }
    }

    private void init(String[] strArr, int[] iArr, String[] strArr2, int[] iArr2) {
        this.mGroupFromNames = strArr;
        this.mGroupTo = iArr;
        this.mChildFromNames = strArr2;
        this.mChildTo = iArr2;
    }

    private void initFromColumns(Cursor cursor, String[] strArr, int[] iArr) {
        for (int length = strArr.length - 1; length >= 0; length--) {
            iArr[length] = cursor.getColumnIndexOrThrow(strArr[length]);
        }
    }

    @Override // android.widget.CursorTreeAdapter
    public void bindChildView(View view, Context context, Cursor cursor, boolean z2) throws Throwable {
        if (this.mChildFrom == null) {
            String[] strArr = this.mChildFromNames;
            int[] iArr = new int[strArr.length];
            this.mChildFrom = iArr;
            initFromColumns(cursor, strArr, iArr);
        }
        bindView(view, context, cursor, this.mChildFrom, this.mChildTo);
    }

    @Override // android.widget.CursorTreeAdapter
    public void bindGroupView(View view, Context context, Cursor cursor, boolean z2) throws Throwable {
        if (this.mGroupFrom == null) {
            String[] strArr = this.mGroupFromNames;
            int[] iArr = new int[strArr.length];
            this.mGroupFrom = iArr;
            initFromColumns(cursor, strArr, iArr);
        }
        bindView(view, context, cursor, this.mGroupFrom, this.mGroupTo);
    }

    public ViewBinder getViewBinder() {
        return this.mViewBinder;
    }

    public void setViewBinder(ViewBinder viewBinder) {
        this.mViewBinder = viewBinder;
    }

    public void setViewImage(ImageView imageView, String str) throws Throwable {
        try {
            imageView.setImageResource(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            imageView.setImageURI(Uri.parse(str));
        }
    }

    public void setViewText(TextView textView, String str) {
        textView.setText(str);
    }

    public SimpleCursorTreeAdapter(Context context, Cursor cursor, int i2, int i3, String[] strArr, int[] iArr, int i4, String[] strArr2, int[] iArr2) {
        super(context, cursor, i2, i3, i4);
        init(strArr, iArr, strArr2, iArr2);
    }

    public SimpleCursorTreeAdapter(Context context, Cursor cursor, int i2, String[] strArr, int[] iArr, int i3, String[] strArr2, int[] iArr2) {
        super(context, cursor, i2, i3);
        init(strArr, iArr, strArr2, iArr2);
    }
}
