package android.widget;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AppSecurityPermissions {
    private static final String TAG = "AppSecurityPermissions";
    public static final int WHICH_ALL = 65535;
    public static final int WHICH_DEVICE = 2;
    public static final int WHICH_NEW = 4;
    public static final int WHICH_PERSONAL = 1;
    private static final boolean localLOGV = false;
    private final Context mContext;
    private final LayoutInflater mInflater;
    private final CharSequence mNewPermPrefix;
    private String mPackageName;
    private final PermissionInfoComparator mPermComparator;
    private final PermissionGroupInfoComparator mPermGroupComparator;
    private final Map<String, MyPermissionGroupInfo> mPermGroups;
    private final List<MyPermissionGroupInfo> mPermGroupsList;
    private final List<MyPermissionInfo> mPermsList;
    private final PackageManager mPm;

    public static class MyPermissionInfo extends PermissionInfo {
        public int mExistingReqFlags;
        public CharSequence mLabel;
        public boolean mNew;
        public int mNewReqFlags;

        public MyPermissionInfo(PermissionInfo permissionInfo) {
            super(permissionInfo);
        }
    }

    public static class PermissionGroupInfoComparator implements Comparator<MyPermissionGroupInfo> {
        private final Collator sCollator = Collator.getInstance();

        @Override // java.util.Comparator
        public final int compare(MyPermissionGroupInfo myPermissionGroupInfo, MyPermissionGroupInfo myPermissionGroupInfo2) {
            int i2 = myPermissionGroupInfo.flags;
            if (((myPermissionGroupInfo2.flags ^ i2) & 1) != 0) {
                return (i2 & 1) != 0 ? -1 : 1;
            }
            int i3 = myPermissionGroupInfo.priority;
            int i4 = myPermissionGroupInfo2.priority;
            if (i3 != i4) {
                return i3 > i4 ? -1 : 1;
            }
            return this.sCollator.compare(myPermissionGroupInfo.mLabel, myPermissionGroupInfo2.mLabel);
        }
    }

    public static class PermissionInfoComparator implements Comparator<MyPermissionInfo> {
        private final Collator sCollator = Collator.getInstance();

        @Override // java.util.Comparator
        public final int compare(MyPermissionInfo myPermissionInfo, MyPermissionInfo myPermissionInfo2) {
            return this.sCollator.compare(myPermissionInfo.mLabel, myPermissionInfo2.mLabel);
        }
    }

    public static class PermissionItemView extends LinearLayout implements View.OnClickListener {
        public AlertDialog mDialog;
        public MyPermissionGroupInfo mGroup;
        private String mPackageName;
        public MyPermissionInfo mPerm;
        private boolean mShowRevokeUI;

        public PermissionItemView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mShowRevokeUI = false;
            setClickable(true);
        }

        private void addRevokeUIIfNecessary(AlertDialog.Builder builder) {
            if (this.mShowRevokeUI) {
                if ((this.mPerm.mExistingReqFlags & 1) != 0) {
                    return;
                }
                builder.setNegativeButton(17040779, new DialogInterface.OnClickListener() { // from class: android.widget.AppSecurityPermissions.PermissionItemView.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        PermissionItemView.this.getContext().getPackageManager().revokePermission(PermissionItemView.this.mPackageName, PermissionItemView.this.mPerm.name);
                        PermissionItemView.this.setVisibility(8);
                    }
                });
                builder.setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CharSequence charSequenceLoadLabel;
            if (this.mGroup == null || this.mPerm == null) {
                return;
            }
            AlertDialog alertDialog = this.mDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
            PackageManager packageManager = getContext().getPackageManager();
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setTitle(this.mGroup.mLabel);
            MyPermissionInfo myPermissionInfo = this.mPerm;
            if (myPermissionInfo.descriptionRes != 0) {
                builder.setMessage(myPermissionInfo.loadDescription(packageManager));
            } else {
                try {
                    charSequenceLoadLabel = packageManager.getApplicationInfo(myPermissionInfo.packageName, 0).loadLabel(packageManager);
                } catch (PackageManager.NameNotFoundException unused) {
                    charSequenceLoadLabel = this.mPerm.packageName;
                }
                StringBuilder sb = new StringBuilder(128);
                sb.append(getContext().getString(17040481, charSequenceLoadLabel));
                sb.append("\n\n");
                sb.append(this.mPerm.name);
                builder.setMessage(sb.toString());
            }
            builder.setCancelable(true);
            builder.setIcon(this.mGroup.loadGroupIcon(packageManager));
            addRevokeUIIfNecessary(builder);
            AlertDialog alertDialogShow = builder.show();
            this.mDialog = alertDialogShow;
            alertDialogShow.setCanceledOnTouchOutside(true);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AlertDialog alertDialog = this.mDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
        }

        public void setPermission(MyPermissionGroupInfo myPermissionGroupInfo, MyPermissionInfo myPermissionInfo, boolean z2, CharSequence charSequence, String str, boolean z3) {
            this.mGroup = myPermissionGroupInfo;
            this.mPerm = myPermissionInfo;
            this.mShowRevokeUI = z3;
            this.mPackageName = str;
            ImageView imageView = (ImageView) findViewById(16908946);
            TextView textView = (TextView) findViewById(16908947);
            Drawable drawableLoadGroupIcon = z2 ? myPermissionGroupInfo.loadGroupIcon(getContext().getPackageManager()) : null;
            CharSequence charSequence2 = myPermissionInfo.mLabel;
            CharSequence charSequence3 = charSequence2;
            charSequence3 = charSequence2;
            if (myPermissionInfo.mNew && charSequence != null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                Parcel parcelObtain = Parcel.obtain();
                TextUtils.writeToParcel(charSequence, parcelObtain, 0);
                parcelObtain.setDataPosition(0);
                CharSequence charSequenceCreateFromParcel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcelObtain);
                parcelObtain.recycle();
                spannableStringBuilder.append(charSequenceCreateFromParcel);
                spannableStringBuilder.append(charSequence2);
                charSequence3 = spannableStringBuilder;
            }
            imageView.setImageDrawable(drawableLoadGroupIcon);
            textView.setText(charSequence3);
            setOnClickListener(this);
        }
    }

    private AppSecurityPermissions(Context context) {
        this.mPermGroups = new HashMap();
        this.mPermGroupsList = new ArrayList();
        this.mPermGroupComparator = new PermissionGroupInfoComparator();
        this.mPermComparator = new PermissionInfoComparator();
        this.mPermsList = new ArrayList();
        this.mContext = context;
        this.mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        this.mPm = context.getPackageManager();
        this.mNewPermPrefix = context.getText(17040480);
    }

    private void addPermToList(List<MyPermissionInfo> list, MyPermissionInfo myPermissionInfo) {
        if (myPermissionInfo.mLabel == null) {
            myPermissionInfo.mLabel = myPermissionInfo.loadLabel(this.mPm);
        }
        int iBinarySearch = Collections.binarySearch(list, myPermissionInfo, this.mPermComparator);
        if (iBinarySearch < 0) {
            list.add((-iBinarySearch) - 1, myPermissionInfo);
        }
    }

    private void displayPermissions(List<MyPermissionGroupInfo> list, LinearLayout linearLayout, int i2, boolean z2) {
        linearLayout.removeAllViews();
        int i3 = (int) (this.mContext.getResources().getDisplayMetrics().density * 8.0f);
        for (int i4 = 0; i4 < list.size(); i4++) {
            MyPermissionGroupInfo myPermissionGroupInfo = list.get(i4);
            List<MyPermissionInfo> permissionList = getPermissionList(myPermissionGroupInfo, i2);
            int i5 = 0;
            while (i5 < permissionList.size()) {
                View permissionItemView = getPermissionItemView(myPermissionGroupInfo, permissionList.get(i5), i5 == 0, i2 != 4 ? this.mNewPermPrefix : null, z2);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                if (i5 == 0) {
                    layoutParams.topMargin = i3;
                }
                if (i5 == myPermissionGroupInfo.mAllPermissions.size() - 1) {
                    layoutParams.bottomMargin = i3;
                }
                if (linearLayout.getChildCount() == 0) {
                    layoutParams.topMargin *= 2;
                }
                linearLayout.addView(permissionItemView, layoutParams);
                i5++;
            }
        }
    }

    private void extractPerms(PackageInfo packageInfo, Set<MyPermissionInfo> set, PackageInfo packageInfo2) {
        String str;
        MyPermissionGroupInfo myPermissionGroupInfo;
        String[] strArr = packageInfo.requestedPermissions;
        int[] iArr = packageInfo.requestedPermissionsFlags;
        if (strArr == null || strArr.length == 0) {
            return;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str2 = strArr[i2];
            if (packageInfo2 == null || packageInfo != packageInfo2 || (iArr[i2] & 2) != 0) {
                try {
                    PermissionInfo permissionInfo = this.mPm.getPermissionInfo(str2, 0);
                    if (permissionInfo != null) {
                        int i3 = -1;
                        if (packageInfo2 != null && packageInfo2.requestedPermissions != null) {
                            int i4 = 0;
                            while (true) {
                                String[] strArr2 = packageInfo2.requestedPermissions;
                                if (i4 >= strArr2.length) {
                                    break;
                                }
                                if (str2.equals(strArr2[i4])) {
                                    i3 = i4;
                                    break;
                                }
                                i4++;
                            }
                        }
                        int i5 = i3 >= 0 ? packageInfo2.requestedPermissionsFlags[i3] : 0;
                        if (isDisplayablePermission(permissionInfo, iArr[i2], i5)) {
                            String str3 = permissionInfo.group;
                            if (str3 == null) {
                                str = permissionInfo.packageName;
                                permissionInfo.group = str;
                            } else {
                                str = str3;
                            }
                            if (this.mPermGroups.get(str) == null) {
                                PermissionGroupInfo permissionGroupInfo = str3 != null ? this.mPm.getPermissionGroupInfo(str3, 0) : null;
                                if (permissionGroupInfo != null) {
                                    myPermissionGroupInfo = new MyPermissionGroupInfo(permissionGroupInfo);
                                } else {
                                    String str4 = permissionInfo.packageName;
                                    permissionInfo.group = str4;
                                    if (this.mPermGroups.get(str4) == null) {
                                        new MyPermissionGroupInfo(permissionInfo);
                                    }
                                    myPermissionGroupInfo = new MyPermissionGroupInfo(permissionInfo);
                                }
                                this.mPermGroups.put(permissionInfo.group, myPermissionGroupInfo);
                            }
                            boolean z2 = packageInfo2 != null && (i5 & 2) == 0;
                            MyPermissionInfo myPermissionInfo = new MyPermissionInfo(permissionInfo);
                            myPermissionInfo.mNewReqFlags = iArr[i2];
                            myPermissionInfo.mExistingReqFlags = i5;
                            myPermissionInfo.mNew = z2;
                            set.add(myPermissionInfo);
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.i(TAG, "Ignoring unknown permission:" + str2);
                }
            }
        }
    }

    private void getAllUsedPermissions(int i2, Set<MyPermissionInfo> set) {
        String[] packagesForUid = this.mPm.getPackagesForUid(i2);
        if (packagesForUid == null || packagesForUid.length == 0) {
            return;
        }
        for (String str : packagesForUid) {
            getPermissionsForPackage(str, set);
        }
    }

    public static View getPermissionItemView(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z2) {
        return getPermissionItemViewOld(context, (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE), charSequence, charSequence2, z2, context.getResources().getDrawable(z2 ? 17302203 : 17302425));
    }

    private static View getPermissionItemViewOld(Context context, LayoutInflater layoutInflater, CharSequence charSequence, CharSequence charSequence2, boolean z2, Drawable drawable) {
        View viewInflate = layoutInflater.inflate(17367085, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(16908950);
        TextView textView2 = (TextView) viewInflate.findViewById(16908951);
        ((ImageView) viewInflate.findViewById(16908946)).setImageDrawable(drawable);
        if (charSequence != null) {
            textView.setText(charSequence);
            textView2.setText(charSequence2);
        } else {
            textView.setText(charSequence2);
            textView2.setVisibility(8);
        }
        return viewInflate;
    }

    private List<MyPermissionInfo> getPermissionList(MyPermissionGroupInfo myPermissionGroupInfo, int i2) {
        if (i2 == 4) {
            return myPermissionGroupInfo.mNewPermissions;
        }
        if (i2 == 1) {
            return myPermissionGroupInfo.mPersonalPermissions;
        }
        return i2 == 2 ? myPermissionGroupInfo.mDevicePermissions : myPermissionGroupInfo.mAllPermissions;
    }

    private void getPermissionsForPackage(String str, Set<MyPermissionInfo> set) {
        try {
            PackageInfo packageInfo = this.mPm.getPackageInfo(str, 4096);
            extractPerms(packageInfo, set, packageInfo);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w(TAG, "Couldn't retrieve permissions for package: " + str);
        }
    }

    private boolean isDisplayablePermission(PermissionInfo permissionInfo, int i2, int i3) {
        int i4 = permissionInfo.protectionLevel;
        int i5 = i4 & 15;
        boolean z2 = i5 == 0;
        boolean z3 = i5 == 1;
        boolean z4 = (i2 & 1) != 0;
        boolean z5 = (i4 & 32) != 0;
        boolean z6 = (i3 & 2) != 0;
        boolean z7 = (i2 & 2) != 0;
        if ((z2 || z3) && (z4 || z6 || z7)) {
            return true;
        }
        return z5 && z6;
    }

    private void setPermissions(List<MyPermissionInfo> list) {
        MyPermissionGroupInfo myPermissionGroupInfo;
        if (list != null) {
            for (MyPermissionInfo myPermissionInfo : list) {
                if (isDisplayablePermission(myPermissionInfo, myPermissionInfo.mNewReqFlags, myPermissionInfo.mExistingReqFlags) && (myPermissionGroupInfo = this.mPermGroups.get(myPermissionInfo.group)) != null) {
                    myPermissionInfo.mLabel = myPermissionInfo.loadLabel(this.mPm);
                    addPermToList(myPermissionGroupInfo.mAllPermissions, myPermissionInfo);
                    if (myPermissionInfo.mNew) {
                        addPermToList(myPermissionGroupInfo.mNewPermissions, myPermissionInfo);
                    }
                    if ((myPermissionGroupInfo.flags & 1) != 0) {
                        addPermToList(myPermissionGroupInfo.mPersonalPermissions, myPermissionInfo);
                    } else {
                        addPermToList(myPermissionGroupInfo.mDevicePermissions, myPermissionInfo);
                    }
                }
            }
        }
        for (MyPermissionGroupInfo myPermissionGroupInfo2 : this.mPermGroups.values()) {
            if (myPermissionGroupInfo2.labelRes == 0 && myPermissionGroupInfo2.nonLocalizedLabel == null) {
                try {
                    myPermissionGroupInfo2.mLabel = this.mPm.getApplicationInfo(myPermissionGroupInfo2.packageName, 0).loadLabel(this.mPm);
                } catch (PackageManager.NameNotFoundException unused) {
                    myPermissionGroupInfo2.mLabel = myPermissionGroupInfo2.loadLabel(this.mPm);
                }
            } else {
                myPermissionGroupInfo2.mLabel = myPermissionGroupInfo2.loadLabel(this.mPm);
            }
            this.mPermGroupsList.add(myPermissionGroupInfo2);
        }
        Collections.sort(this.mPermGroupsList, this.mPermGroupComparator);
    }

    public int getPermissionCount() {
        return getPermissionCount(65535);
    }

    public View getPermissionsView() {
        return getPermissionsView(65535, false);
    }

    public View getPermissionsViewWithRevokeButtons() {
        return getPermissionsView(65535, true);
    }

    public int getPermissionCount(int i2) {
        int size = 0;
        for (int i3 = 0; i3 < this.mPermGroupsList.size(); i3++) {
            size += getPermissionList(this.mPermGroupsList.get(i3), i2).size();
        }
        return size;
    }

    public View getPermissionsView(int i2) {
        return getPermissionsView(i2, false);
    }

    private View getPermissionsView(int i2, boolean z2) {
        LinearLayout linearLayout = (LinearLayout) this.mInflater.inflate(17367086, (ViewGroup) null);
        LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(16908953);
        View viewFindViewById = linearLayout.findViewById(16908952);
        displayPermissions(this.mPermGroupsList, linearLayout2, i2, z2);
        if (linearLayout2.getChildCount() <= 0) {
            viewFindViewById.setVisibility(0);
        }
        return linearLayout;
    }

    private PermissionItemView getPermissionItemView(MyPermissionGroupInfo myPermissionGroupInfo, MyPermissionInfo myPermissionInfo, boolean z2, CharSequence charSequence, boolean z3) {
        return getPermissionItemView(this.mContext, this.mInflater, myPermissionGroupInfo, myPermissionInfo, z2, charSequence, this.mPackageName, z3);
    }

    private static PermissionItemView getPermissionItemView(Context context, LayoutInflater layoutInflater, MyPermissionGroupInfo myPermissionGroupInfo, MyPermissionInfo myPermissionInfo, boolean z2, CharSequence charSequence, String str, boolean z3) {
        PermissionItemView permissionItemView = (PermissionItemView) layoutInflater.inflate((myPermissionInfo.flags & 1) != 0 ? 17367084 : 17367083, (ViewGroup) null);
        permissionItemView.setPermission(myPermissionGroupInfo, myPermissionInfo, z2, charSequence, str, z3);
        return permissionItemView;
    }

    public static class MyPermissionGroupInfo extends PermissionGroupInfo {
        public final ArrayList<MyPermissionInfo> mAllPermissions;
        public final ArrayList<MyPermissionInfo> mDevicePermissions;
        public CharSequence mLabel;
        public final ArrayList<MyPermissionInfo> mNewPermissions;
        public final ArrayList<MyPermissionInfo> mPersonalPermissions;

        public MyPermissionGroupInfo(PermissionInfo permissionInfo) {
            this.mNewPermissions = new ArrayList<>();
            this.mPersonalPermissions = new ArrayList<>();
            this.mDevicePermissions = new ArrayList<>();
            this.mAllPermissions = new ArrayList<>();
            String str = permissionInfo.packageName;
            this.name = str;
            this.packageName = str;
        }

        public Drawable loadGroupIcon(PackageManager packageManager) {
            if (this.icon != 0) {
                return loadIcon(packageManager);
            }
            try {
                return packageManager.getApplicationInfo(this.packageName, 0).loadIcon(packageManager);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        public MyPermissionGroupInfo(PermissionGroupInfo permissionGroupInfo) {
            super(permissionGroupInfo);
            this.mNewPermissions = new ArrayList<>();
            this.mPersonalPermissions = new ArrayList<>();
            this.mDevicePermissions = new ArrayList<>();
            this.mAllPermissions = new ArrayList<>();
        }
    }

    public AppSecurityPermissions(Context context, String str) {
        int i2;
        this(context);
        this.mPackageName = str;
        HashSet hashSet = new HashSet();
        try {
            ApplicationInfo applicationInfo = this.mPm.getPackageInfo(str, 4096).applicationInfo;
            if (applicationInfo != null && (i2 = applicationInfo.uid) != -1) {
                getAllUsedPermissions(i2, hashSet);
            }
            this.mPermsList.addAll(hashSet);
            setPermissions(this.mPermsList);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w(TAG, "Couldn't retrieve permissions for package:" + str);
        }
    }

    public AppSecurityPermissions(Context context, PackageInfo packageInfo) {
        this(context);
        HashSet hashSet = new HashSet();
        if (packageInfo == null) {
            return;
        }
        String str = packageInfo.packageName;
        this.mPackageName = str;
        PackageInfo packageInfo2 = null;
        if (packageInfo.requestedPermissions != null) {
            try {
                packageInfo2 = this.mPm.getPackageInfo(str, 4096);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            extractPerms(packageInfo, hashSet, packageInfo2);
        }
        String str2 = packageInfo.sharedUserId;
        if (str2 != null) {
            try {
                getAllUsedPermissions(this.mPm.getUidForSharedUser(str2), hashSet);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w(TAG, "Couldn't retrieve shared user id for: " + packageInfo.packageName);
            }
        }
        this.mPermsList.addAll(hashSet);
        setPermissions(this.mPermsList);
    }
}
