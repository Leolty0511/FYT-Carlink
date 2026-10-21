package com.android.internal.app;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.android.internal.R;
import com.android.internal.widget.ResolverDrawerLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AccessibilityButtonChooserActivity extends Activity {
    private static final String MAGNIFICATION_COMPONENT_ID = "com.android.server.accessibility.MagnificationController";
    private AccessibilityButtonTarget mMagnificationTarget = null;
    private List<AccessibilityButtonTarget> mTargets = null;

    public class TargetAdapter extends BaseAdapter {
        private TargetAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return AccessibilityButtonChooserActivity.this.mTargets.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            View viewInflate = AccessibilityButtonChooserActivity.this.getLayoutInflater().inflate(R.layout.accessibility_button_chooser_item, viewGroup, false);
            AccessibilityButtonTarget accessibilityButtonTarget = (AccessibilityButtonTarget) AccessibilityButtonChooserActivity.this.mTargets.get(i2);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.accessibility_button_target_icon);
            TextView textView = (TextView) viewInflate.findViewById(R.id.accessibility_button_target_label);
            imageView.setImageDrawable(accessibilityButtonTarget.getDrawable());
            textView.setText(accessibilityButtonTarget.getLabel());
            return viewInflate;
        }
    }

    private static List<AccessibilityButtonTarget> getServiceAccessibilityButtonTargets(Context context) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = ((AccessibilityManager) context.getSystemService(Context.ACCESSIBILITY_SERVICE)).getEnabledAccessibilityServiceList(-1);
        if (enabledAccessibilityServiceList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(enabledAccessibilityServiceList.size());
        for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
            if ((accessibilityServiceInfo.flags & 256) != 0) {
                arrayList.add(new AccessibilityButtonTarget(context, accessibilityServiceInfo));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(AdapterView adapterView, View view, int i2, long j2) {
        onTargetSelected(this.mTargets.get(i2));
    }

    private void onTargetSelected(AccessibilityButtonTarget accessibilityButtonTarget) {
        Settings.Secure.putString(getContentResolver(), Settings.Secure.ACCESSIBILITY_BUTTON_TARGET_COMPONENT, accessibilityButtonTarget.getId());
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.accessibility_button_chooser);
        ResolverDrawerLayout resolverDrawerLayout = (ResolverDrawerLayout) findViewById(R.id.contentPanel);
        if (resolverDrawerLayout != null) {
            resolverDrawerLayout.setOnDismissedListener(new a(this));
        }
        if (TextUtils.isEmpty(Settings.Secure.getString(getContentResolver(), Settings.Secure.ACCESSIBILITY_BUTTON_TARGET_COMPONENT))) {
            ((TextView) findViewById(R.id.accessibility_button_prompt)).setVisibility(0);
        }
        this.mMagnificationTarget = new AccessibilityButtonTarget(this, MAGNIFICATION_COMPONENT_ID, R.string.accessibility_magnification_chooser_text, R.drawable.ic_accessibility_magnification);
        this.mTargets = getServiceAccessibilityButtonTargets(this);
        if (Settings.Secure.getInt(getContentResolver(), Settings.Secure.ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED, 0) == 1) {
            this.mTargets.add(this.mMagnificationTarget);
        }
        if (this.mTargets.size() < 2) {
            finish();
        }
        GridView gridView = (GridView) findViewById(R.id.accessibility_button_chooser_grid);
        gridView.setAdapter((ListAdapter) new TargetAdapter());
        gridView.setOnItemClickListener(new a(this));
    }

    public static class AccessibilityButtonTarget {
        public Drawable mDrawable;
        public String mId;
        public CharSequence mLabel;

        public AccessibilityButtonTarget(Context context, AccessibilityServiceInfo accessibilityServiceInfo) {
            this.mId = accessibilityServiceInfo.getComponentName().flattenToString();
            this.mLabel = accessibilityServiceInfo.getResolveInfo().loadLabel(context.getPackageManager());
            this.mDrawable = accessibilityServiceInfo.getResolveInfo().loadIcon(context.getPackageManager());
        }

        public Drawable getDrawable() {
            return this.mDrawable;
        }

        public String getId() {
            return this.mId;
        }

        public CharSequence getLabel() {
            return this.mLabel;
        }

        public AccessibilityButtonTarget(Context context, String str, int i2, int i3) {
            this.mId = str;
            this.mLabel = context.getText(i2);
            this.mDrawable = context.getDrawable(i3);
        }
    }
}
