package com.android.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AccountViewAdapter extends BaseAdapter {
    private Context mContext;
    private List<AccountElements> mData;

    public static class AccountElements {
        private Drawable mDrawable;
        private int mIcon;
        private String mName;
        private String mNumber;

        public AccountElements(int i2, String str, String str2) {
            this(i2, null, str, str2);
        }

        public Drawable getDrawable() {
            return this.mDrawable;
        }

        public int getIcon() {
            return this.mIcon;
        }

        public String getName() {
            return this.mName;
        }

        public String getNumber() {
            return this.mNumber;
        }

        public AccountElements(Drawable drawable, String str, String str2) {
            this(0, drawable, str, str2);
        }

        private AccountElements(int i2, Drawable drawable, String str, String str2) {
            this.mIcon = i2;
            this.mDrawable = drawable;
            this.mName = str;
            this.mNumber = str2;
        }
    }

    public AccountViewAdapter(Context context, List<AccountElements> list) {
        this.mContext = context;
        this.mData = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mData.size();
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
        AccountItemView accountItemView = view == null ? new AccountItemView(this.mContext) : (AccountItemView) view;
        accountItemView.setViewItem((AccountElements) getItem(i2));
        return accountItemView;
    }

    public void updateData(List<AccountElements> list) {
        this.mData = list;
        notifyDataSetChanged();
    }
}
