package android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {
    private LayoutInflater mDropDownInflater;
    private int mDropDownLayout;
    private LayoutInflater mInflater;
    private int mLayout;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i2, Cursor cursor) {
        super(context, cursor);
        this.mDropDownLayout = i2;
        this.mLayout = i2;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        this.mInflater = layoutInflater;
        this.mDropDownInflater = layoutInflater;
    }

    @Override // android.widget.CursorAdapter
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mDropDownInflater.inflate(this.mDropDownLayout, viewGroup, false);
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mLayout, viewGroup, false);
    }

    public void setDropDownViewResource(int i2) {
        this.mDropDownLayout = i2;
    }

    @Override // android.widget.CursorAdapter, android.widget.ThemedSpinnerAdapter
    public void setDropDownViewTheme(Resources.Theme theme) {
        super.setDropDownViewTheme(theme);
        if (theme == null) {
            this.mDropDownInflater = null;
        } else if (theme == this.mInflater.getContext().getTheme()) {
            this.mDropDownInflater = this.mInflater;
        } else {
            this.mDropDownInflater = LayoutInflater.from(new ContextThemeWrapper(this.mContext, theme));
        }
    }

    public void setViewResource(int i2) {
        this.mLayout = i2;
    }

    public ResourceCursorAdapter(Context context, int i2, Cursor cursor, boolean z2) {
        super(context, cursor, z2);
        this.mDropDownLayout = i2;
        this.mLayout = i2;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        this.mInflater = layoutInflater;
        this.mDropDownInflater = layoutInflater;
    }

    public ResourceCursorAdapter(Context context, int i2, Cursor cursor, int i3) {
        super(context, cursor, i3);
        this.mDropDownLayout = i2;
        this.mLayout = i2;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        this.mInflater = layoutInflater;
        this.mDropDownInflater = layoutInflater;
    }
}
