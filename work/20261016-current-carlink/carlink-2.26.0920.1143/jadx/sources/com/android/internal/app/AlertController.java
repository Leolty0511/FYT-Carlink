package com.android.internal.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import com.android.internal.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class AlertController {
    public static final int MICRO = 1;
    private ListAdapter mAdapter;
    private int mAlertDialogLayout;
    private Button mButtonNegative;
    private Message mButtonNegativeMessage;
    private CharSequence mButtonNegativeText;
    private Button mButtonNeutral;
    private Message mButtonNeutralMessage;
    private CharSequence mButtonNeutralText;
    private int mButtonPanelSideLayout;
    private Button mButtonPositive;
    private Message mButtonPositiveMessage;
    private CharSequence mButtonPositiveText;
    private final Context mContext;
    private View mCustomTitleView;
    private final DialogInterface mDialogInterface;
    private boolean mForceInverseBackground;
    private Handler mHandler;
    private Drawable mIcon;
    private ImageView mIconView;
    private int mListItemLayout;
    private int mListLayout;
    protected ListView mListView;
    protected CharSequence mMessage;
    protected TextView mMessageView;
    private int mMultiChoiceItemLayout;
    protected ScrollView mScrollView;
    private boolean mShowTitle;
    private int mSingleChoiceItemLayout;
    private CharSequence mTitle;
    private TextView mTitleView;
    private View mView;
    private int mViewLayoutResId;
    private int mViewSpacingBottom;
    private int mViewSpacingLeft;
    private int mViewSpacingRight;
    private int mViewSpacingTop;
    protected final Window mWindow;
    private boolean mViewSpacingSpecified = false;
    private int mIconId = 0;
    private int mCheckedItem = -1;
    private int mButtonPanelLayoutHint = 0;
    private final View.OnClickListener mButtonHandler = new View.OnClickListener() { // from class: com.android.internal.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            if (view == AlertController.this.mButtonPositive && AlertController.this.mButtonPositiveMessage != null) {
                messageObtain = Message.obtain(AlertController.this.mButtonPositiveMessage);
            } else if (view != AlertController.this.mButtonNegative || AlertController.this.mButtonNegativeMessage == null) {
                messageObtain = (view != AlertController.this.mButtonNeutral || AlertController.this.mButtonNeutralMessage == null) ? null : Message.obtain(AlertController.this.mButtonNeutralMessage);
            } else {
                messageObtain = Message.obtain(AlertController.this.mButtonNegativeMessage);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController.this.mHandler.obtainMessage(1, AlertController.this.mDialogInterface).sendToTarget();
        }
    };

    public static class AlertParams {
        public ListAdapter mAdapter;
        public boolean[] mCheckedItems;
        public final Context mContext;
        public Cursor mCursor;
        public View mCustomTitleView;
        public boolean mForceInverseBackground;
        public Drawable mIcon;
        public final LayoutInflater mInflater;
        public String mIsCheckedColumn;
        public boolean mIsMultiChoice;
        public boolean mIsSingleChoice;
        public CharSequence[] mItems;
        public String mLabelColumn;
        public CharSequence mMessage;
        public DialogInterface.OnClickListener mNegativeButtonListener;
        public CharSequence mNegativeButtonText;
        public DialogInterface.OnClickListener mNeutralButtonListener;
        public CharSequence mNeutralButtonText;
        public DialogInterface.OnCancelListener mOnCancelListener;
        public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
        public DialogInterface.OnClickListener mOnClickListener;
        public DialogInterface.OnDismissListener mOnDismissListener;
        public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
        public DialogInterface.OnKeyListener mOnKeyListener;
        public OnPrepareListViewListener mOnPrepareListViewListener;
        public DialogInterface.OnClickListener mPositiveButtonListener;
        public CharSequence mPositiveButtonText;
        public CharSequence mTitle;
        public View mView;
        public int mViewLayoutResId;
        public int mViewSpacingBottom;
        public int mViewSpacingLeft;
        public int mViewSpacingRight;
        public int mViewSpacingTop;
        public int mIconId = 0;
        public int mIconAttrId = 0;
        public boolean mViewSpacingSpecified = false;
        public int mCheckedItem = -1;
        public boolean mRecycleOnMeasure = true;
        public boolean mCancelable = true;

        public interface OnPrepareListViewListener {
            void onPrepareListView(ListView listView);
        }

        public AlertParams(Context context) {
            this.mContext = context;
            this.mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        }

        private void createListView(final AlertController alertController) {
            ListAdapter checkedItemAdapter;
            final RecycleListView recycleListView = (RecycleListView) this.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
            if (this.mIsMultiChoice) {
                Cursor cursor = this.mCursor;
                checkedItemAdapter = cursor == null ? new ArrayAdapter<CharSequence>(this.mContext, alertController.mMultiChoiceItemLayout, 16908308, this.mItems) { // from class: com.android.internal.app.AlertController.AlertParams.1
                    @Override // android.widget.ArrayAdapter, android.widget.Adapter
                    public View getView(int i2, View view, ViewGroup viewGroup) {
                        View view2 = super.getView(i2, view, viewGroup);
                        boolean[] zArr = AlertParams.this.mCheckedItems;
                        if (zArr != null && zArr[i2]) {
                            recycleListView.setItemChecked(i2, true);
                        }
                        return view2;
                    }
                } : new CursorAdapter(this.mContext, cursor, false) { // from class: com.android.internal.app.AlertController.AlertParams.2
                    private final int mIsCheckedIndex;
                    private final int mLabelIndex;

                    {
                        Cursor cursor2 = getCursor();
                        this.mLabelIndex = cursor2.getColumnIndexOrThrow(AlertParams.this.mLabelColumn);
                        this.mIsCheckedIndex = cursor2.getColumnIndexOrThrow(AlertParams.this.mIsCheckedColumn);
                    }

                    @Override // android.widget.CursorAdapter
                    public void bindView(View view, Context context, Cursor cursor2) {
                        ((CheckedTextView) view.findViewById(16908308)).setText(cursor2.getString(this.mLabelIndex));
                        recycleListView.setItemChecked(cursor2.getPosition(), cursor2.getInt(this.mIsCheckedIndex) == 1);
                    }

                    @Override // android.widget.CursorAdapter
                    public View newView(Context context, Cursor cursor2, ViewGroup viewGroup) {
                        return AlertParams.this.mInflater.inflate(alertController.mMultiChoiceItemLayout, viewGroup, false);
                    }
                };
            } else {
                int i2 = this.mIsSingleChoice ? alertController.mSingleChoiceItemLayout : alertController.mListItemLayout;
                Cursor cursor2 = this.mCursor;
                if (cursor2 != null) {
                    checkedItemAdapter = new SimpleCursorAdapter(this.mContext, i2, cursor2, new String[]{this.mLabelColumn}, new int[]{16908308});
                } else {
                    checkedItemAdapter = this.mAdapter;
                    if (checkedItemAdapter == null) {
                        checkedItemAdapter = new CheckedItemAdapter(this.mContext, i2, 16908308, this.mItems);
                    }
                }
            }
            OnPrepareListViewListener onPrepareListViewListener = this.mOnPrepareListViewListener;
            if (onPrepareListViewListener != null) {
                onPrepareListViewListener.onPrepareListView(recycleListView);
            }
            alertController.mAdapter = checkedItemAdapter;
            alertController.mCheckedItem = this.mCheckedItem;
            if (this.mOnClickListener != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.internal.app.AlertController.AlertParams.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j2) {
                        AlertParams.this.mOnClickListener.onClick(alertController.mDialogInterface, i3);
                        if (AlertParams.this.mIsSingleChoice) {
                            return;
                        }
                        alertController.mDialogInterface.dismiss();
                    }
                });
            } else if (this.mOnCheckboxClickListener != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.internal.app.AlertController.AlertParams.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j2) {
                        boolean[] zArr = AlertParams.this.mCheckedItems;
                        if (zArr != null) {
                            zArr[i3] = recycleListView.isItemChecked(i3);
                        }
                        AlertParams.this.mOnCheckboxClickListener.onClick(alertController.mDialogInterface, i3, recycleListView.isItemChecked(i3));
                    }
                });
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.mOnItemSelectedListener;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.mIsSingleChoice) {
                recycleListView.setChoiceMode(1);
            } else if (this.mIsMultiChoice) {
                recycleListView.setChoiceMode(2);
            }
            recycleListView.mRecycleOnMeasure = this.mRecycleOnMeasure;
            alertController.mListView = recycleListView;
        }

        public void apply(AlertController alertController) {
            View view = this.mCustomTitleView;
            if (view != null) {
                alertController.setCustomTitle(view);
            } else {
                CharSequence charSequence = this.mTitle;
                if (charSequence != null) {
                    alertController.setTitle(charSequence);
                }
                Drawable drawable = this.mIcon;
                if (drawable != null) {
                    alertController.setIcon(drawable);
                }
                int i2 = this.mIconId;
                if (i2 != 0) {
                    alertController.setIcon(i2);
                }
                int i3 = this.mIconAttrId;
                if (i3 != 0) {
                    alertController.setIcon(alertController.getIconAttributeResId(i3));
                }
            }
            CharSequence charSequence2 = this.mMessage;
            if (charSequence2 != null) {
                alertController.setMessage(charSequence2);
            }
            CharSequence charSequence3 = this.mPositiveButtonText;
            if (charSequence3 != null) {
                alertController.setButton(-1, charSequence3, this.mPositiveButtonListener, null);
            }
            CharSequence charSequence4 = this.mNegativeButtonText;
            if (charSequence4 != null) {
                alertController.setButton(-2, charSequence4, this.mNegativeButtonListener, null);
            }
            CharSequence charSequence5 = this.mNeutralButtonText;
            if (charSequence5 != null) {
                alertController.setButton(-3, charSequence5, this.mNeutralButtonListener, null);
            }
            if (this.mForceInverseBackground) {
                alertController.setInverseBackgroundForced(true);
            }
            if (this.mItems != null || this.mCursor != null || this.mAdapter != null) {
                createListView(alertController);
            }
            View view2 = this.mView;
            if (view2 != null) {
                if (this.mViewSpacingSpecified) {
                    alertController.setView(view2, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
                    return;
                } else {
                    alertController.setView(view2);
                    return;
                }
            }
            int i4 = this.mViewLayoutResId;
            if (i4 != 0) {
                alertController.setView(i4);
            }
        }
    }

    public static final class ButtonHandler extends Handler {
        private static final int MSG_DISMISS_DIALOG = 1;
        private WeakReference<DialogInterface> mDialog;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.mDialog = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == -3 || i2 == -2 || i2 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.mDialog.get(), message.what);
            } else {
                if (i2 != 1) {
                    return;
                }
                try {
                    ((DialogInterface) message.obj).dismiss();
                } catch (Exception unused) {
                    Log.w("AlertController", "The Window has already destroyed, asyn may occur");
                }
            }
        }
    }

    public static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        public CheckedItemAdapter(Context context, int i2, int i3, CharSequence[] charSequenceArr) {
            super(context, i2, i3, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public static class RecycleListView extends ListView {
        private final int mPaddingBottomNoButtons;
        private final int mPaddingTopNoTitle;
        boolean mRecycleOnMeasure;

        public RecycleListView(Context context) {
            this(context, null);
        }

        @Override // android.widget.ListView
        public boolean recycleOnMeasure() {
            return this.mRecycleOnMeasure;
        }

        public void setHasDecor(boolean z2, boolean z3) {
            if (z3 && z2) {
                return;
            }
            setPadding(getPaddingLeft(), z2 ? getPaddingTop() : this.mPaddingTopNoTitle, getPaddingRight(), z3 ? getPaddingBottom() : this.mPaddingBottomNoButtons);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mRecycleOnMeasure = true;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecycleListView);
            this.mPaddingBottomNoButtons = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
            this.mPaddingTopNoTitle = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, -1);
        }
    }

    public AlertController(Context context, DialogInterface dialogInterface, Window window) {
        this.mContext = context;
        this.mDialogInterface = dialogInterface;
        this.mWindow = window;
        this.mHandler = new ButtonHandler(dialogInterface);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
        this.mAlertDialogLayout = typedArrayObtainStyledAttributes.getResourceId(10, R.layout.alert_dialog);
        this.mButtonPanelSideLayout = typedArrayObtainStyledAttributes.getResourceId(11, 0);
        this.mListLayout = typedArrayObtainStyledAttributes.getResourceId(15, R.layout.select_dialog);
        this.mMultiChoiceItemLayout = typedArrayObtainStyledAttributes.getResourceId(16, 17367059);
        this.mSingleChoiceItemLayout = typedArrayObtainStyledAttributes.getResourceId(21, 17367058);
        this.mListItemLayout = typedArrayObtainStyledAttributes.getResourceId(14, 17367057);
        this.mShowTitle = typedArrayObtainStyledAttributes.getBoolean(20, true);
        typedArrayObtainStyledAttributes.recycle();
        window.requestFeature(1);
    }

    public static boolean canTextInput(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (canTextInput(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void centerButton(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
        View viewFindViewById = this.mWindow.findViewById(R.id.leftSpacer);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
        View viewFindViewById2 = this.mWindow.findViewById(R.id.rightSpacer);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(0);
        }
    }

    public static final AlertController create(Context context, DialogInterface dialogInterface, Window window) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
        int i2 = typedArrayObtainStyledAttributes.getInt(12, 0);
        typedArrayObtainStyledAttributes.recycle();
        return i2 != 1 ? new AlertController(context, dialogInterface, window) : new MicroAlertController(context, dialogInterface, window);
    }

    private static void manageScrollIndicators(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    private ViewGroup resolvePanel(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    private int selectContentView() {
        int i2 = this.mButtonPanelSideLayout;
        if (i2 == 0) {
            return this.mAlertDialogLayout;
        }
        return this.mButtonPanelLayoutHint == 1 ? i2 : this.mAlertDialogLayout;
    }

    private void setBackground(TypedArray typedArray, View view, View view2, View view3, View view4, boolean z2, boolean z3, boolean z4) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        ListAdapter listAdapter;
        if (typedArray.getBoolean(17, true)) {
            i2 = R.drawable.popup_full_dark;
            i3 = R.drawable.popup_top_dark;
            i4 = R.drawable.popup_center_dark;
            i5 = R.drawable.popup_bottom_dark;
            i6 = R.drawable.popup_full_bright;
            i7 = R.drawable.popup_top_bright;
            i8 = R.drawable.popup_center_bright;
            i9 = R.drawable.popup_bottom_bright;
            i10 = R.drawable.popup_bottom_medium;
        } else {
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 0;
        }
        int resourceId = typedArray.getResourceId(5, i7);
        int resourceId2 = typedArray.getResourceId(1, i3);
        int resourceId3 = typedArray.getResourceId(6, i8);
        int resourceId4 = typedArray.getResourceId(2, i4);
        View[] viewArr = new View[4];
        boolean[] zArr = new boolean[4];
        if (z2) {
            viewArr[0] = view;
            zArr[0] = false;
            i11 = 1;
        } else {
            i11 = 0;
        }
        viewArr[i11] = view2.getVisibility() == 8 ? null : view2;
        zArr[i11] = this.mListView != null;
        int i12 = i11 + 1;
        if (z3) {
            viewArr[i12] = view3;
            zArr[i12] = this.mForceInverseBackground;
            i12++;
        }
        if (z4) {
            viewArr[i12] = view4;
            zArr[i12] = true;
        }
        View view5 = null;
        int i13 = 0;
        boolean z5 = false;
        boolean z6 = false;
        for (int i14 = 4; i13 < i14; i14 = 4) {
            View view6 = viewArr[i13];
            if (view6 == null) {
                resourceId2 = resourceId2;
            } else {
                if (view5 != null) {
                    if (z5) {
                        view5.setBackgroundResource(z6 ? resourceId3 : resourceId4);
                    } else {
                        if (z6) {
                            resourceId2 = resourceId;
                        }
                        view5.setBackgroundResource(resourceId2);
                    }
                    z5 = true;
                } else {
                    resourceId2 = resourceId2;
                }
                z6 = zArr[i13];
                view5 = view6;
            }
            i13++;
            resourceId2 = resourceId2;
        }
        if (view5 != null) {
            if (z5) {
                int resourceId5 = typedArray.getResourceId(7, i9);
                int resourceId6 = typedArray.getResourceId(8, i10);
                int resourceId7 = typedArray.getResourceId(3, i5);
                if (!z6) {
                    resourceId5 = resourceId7;
                } else if (z4) {
                    resourceId5 = resourceId6;
                }
                view5.setBackgroundResource(resourceId5);
            } else {
                int resourceId8 = typedArray.getResourceId(4, i6);
                int resourceId9 = typedArray.getResourceId(0, i2);
                if (!z6) {
                    resourceId8 = resourceId9;
                }
                view5.setBackgroundResource(resourceId8);
            }
        }
        ListView listView = this.mListView;
        if (listView == null || (listAdapter = this.mAdapter) == null) {
            return;
        }
        listView.setAdapter(listAdapter);
        int i15 = this.mCheckedItem;
        if (i15 > -1) {
            listView.setItemChecked(i15, true);
            listView.setSelectionFromTop(i15, typedArray.getDimensionPixelSize(19, 0));
        }
    }

    private void setupCustomContent(ViewGroup viewGroup) {
        View viewInflate = this.mView;
        if (viewInflate == null) {
            viewInflate = this.mViewLayoutResId != 0 ? LayoutInflater.from(this.mContext).inflate(this.mViewLayoutResId, viewGroup, false) : null;
        }
        boolean z2 = viewInflate != null;
        if (!z2 || !canTextInput(viewInflate)) {
            this.mWindow.setFlags(131072, 131072);
        }
        if (!z2) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.mWindow.findViewById(16908331);
        frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.mViewSpacingSpecified) {
            frameLayout.setPadding(this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
        }
        if (this.mListView != null) {
            ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).weight = 0.0f;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setupView() throws Throwable {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        View viewFindViewById4 = this.mWindow.findViewById(R.id.parentPanel);
        View viewFindViewById5 = viewFindViewById4.findViewById(R.id.topPanel);
        View viewFindViewById6 = viewFindViewById4.findViewById(R.id.contentPanel);
        View viewFindViewById7 = viewFindViewById4.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById4.findViewById(R.id.customPanel);
        setupCustomContent(viewGroup);
        View viewFindViewById8 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById9 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById10 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupResolvePanel = resolvePanel(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupResolvePanel2 = resolvePanel(viewFindViewById9, viewFindViewById6);
        ViewGroup viewGroupResolvePanel3 = resolvePanel(viewFindViewById10, viewFindViewById7);
        setupContent(viewGroupResolvePanel2);
        setupButtons(viewGroupResolvePanel3);
        setupTitle(viewGroupResolvePanel);
        boolean z2 = viewGroup.getVisibility() != 8;
        boolean z3 = (viewGroupResolvePanel == null || viewGroupResolvePanel.getVisibility() == 8) ? 0 : 1;
        boolean z4 = (viewGroupResolvePanel3 == null || viewGroupResolvePanel3.getVisibility() == 8) ? false : true;
        if (!z4) {
            if (viewGroupResolvePanel2 != null && (viewFindViewById3 = viewGroupResolvePanel2.findViewById(R.id.textSpacerNoButtons)) != null) {
                viewFindViewById3.setVisibility(0);
            }
            this.mWindow.setCloseOnTouchOutsideIfNotSet(true);
        }
        if (z3 != 0) {
            ScrollView scrollView = this.mScrollView;
            if (scrollView != null) {
                scrollView.setClipToPadding(true);
            }
            if (this.mMessage == null && this.mListView == null && !z2) {
                viewFindViewById2 = viewGroupResolvePanel.findViewById(R.id.titleDividerTop);
            } else {
                viewFindViewById2 = !z2 ? viewGroupResolvePanel.findViewById(R.id.titleDividerNoCustom) : null;
                if (viewFindViewById2 == null) {
                    viewFindViewById2 = viewGroupResolvePanel.findViewById(R.id.titleDivider);
                }
            }
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(0);
            }
        } else if (viewGroupResolvePanel2 != null && (viewFindViewById = viewGroupResolvePanel2.findViewById(R.id.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.mListView;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z3, z4);
        }
        if (!z2) {
            View view = this.mListView;
            if (view == null) {
                view = this.mScrollView;
            }
            if (view != null) {
                view.setScrollIndicators((z4 ? 2 : 0) | z3, 3);
            }
        }
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
        setBackground(typedArrayObtainStyledAttributes, viewGroupResolvePanel, viewGroupResolvePanel2, viewGroup, viewGroupResolvePanel3, z3, z2, z4);
        typedArrayObtainStyledAttributes.recycle();
    }

    private static boolean shouldCenterSingleButton(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public Button getButton(int i2) {
        if (i2 == -3) {
            return this.mButtonNeutral;
        }
        if (i2 == -2) {
            return this.mButtonNegative;
        }
        if (i2 != -1) {
            return null;
        }
        return this.mButtonPositive;
    }

    public int getIconAttributeResId(int i2) {
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView getListView() {
        return this.mListView;
    }

    public void installContent(AlertParams alertParams) {
        alertParams.apply(this);
        installContent();
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        ScrollView scrollView = this.mScrollView;
        return scrollView != null && scrollView.executeKeyEvent(keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        ScrollView scrollView = this.mScrollView;
        return scrollView != null && scrollView.executeKeyEvent(keyEvent);
    }

    public void setButton(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.mHandler.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.mButtonNeutralText = charSequence;
            this.mButtonNeutralMessage = message;
        } else if (i2 == -2) {
            this.mButtonNegativeText = charSequence;
            this.mButtonNegativeMessage = message;
        } else {
            if (i2 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.mButtonPositiveText = charSequence;
            this.mButtonPositiveMessage = message;
        }
    }

    public void setButtonPanelLayoutHint(int i2) {
        this.mButtonPanelLayoutHint = i2;
    }

    public void setCustomTitle(View view) {
        this.mCustomTitleView = view;
    }

    public void setIcon(int i2) {
        this.mIcon = null;
        this.mIconId = i2;
        ImageView imageView = this.mIconView;
        if (imageView != null) {
            if (i2 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.mIconView.setImageResource(this.mIconId);
            }
        }
    }

    public void setInverseBackgroundForced(boolean z2) {
        this.mForceInverseBackground = z2;
    }

    public void setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
        TextView textView = this.mMessageView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        TextView textView = this.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setView(int i2) {
        this.mView = null;
        this.mViewLayoutResId = i2;
        this.mViewSpacingSpecified = false;
    }

    public void setupButtons(ViewGroup viewGroup) {
        int i2;
        Button button = (Button) viewGroup.findViewById(16908313);
        this.mButtonPositive = button;
        button.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonPositiveText)) {
            this.mButtonPositive.setVisibility(8);
            i2 = 0;
        } else {
            this.mButtonPositive.setText(this.mButtonPositiveText);
            this.mButtonPositive.setVisibility(0);
            i2 = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(16908314);
        this.mButtonNegative = button2;
        button2.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonNegativeText)) {
            this.mButtonNegative.setVisibility(8);
        } else {
            this.mButtonNegative.setText(this.mButtonNegativeText);
            this.mButtonNegative.setVisibility(0);
            i2 |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(16908315);
        this.mButtonNeutral = button3;
        button3.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonNeutralText)) {
            this.mButtonNeutral.setVisibility(8);
        } else {
            this.mButtonNeutral.setText(this.mButtonNeutralText);
            this.mButtonNeutral.setVisibility(0);
            i2 |= 4;
        }
        if (shouldCenterSingleButton(this.mContext)) {
            if (i2 == 1) {
                centerButton(this.mButtonPositive);
            } else if (i2 == 2) {
                centerButton(this.mButtonNegative);
            } else if (i2 == 4) {
                centerButton(this.mButtonNeutral);
            }
        }
        if (i2 != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    public void setupContent(ViewGroup viewGroup) {
        ScrollView scrollView = (ScrollView) viewGroup.findViewById(R.id.scrollView);
        this.mScrollView = scrollView;
        scrollView.setFocusable(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.mMessageView = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.mMessage;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.mScrollView.removeView(this.mMessageView);
        if (this.mListView == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.mScrollView.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.mScrollView);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.mListView, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    public void setupTitle(ViewGroup viewGroup) throws Throwable {
        if (this.mCustomTitleView != null && this.mShowTitle) {
            viewGroup.addView(this.mCustomTitleView, 0, new ViewGroup.LayoutParams(-1, -2));
            this.mWindow.findViewById(R.id.title_template).setVisibility(8);
            return;
        }
        this.mIconView = (ImageView) this.mWindow.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.mTitle)) || !this.mShowTitle) {
            this.mWindow.findViewById(R.id.title_template).setVisibility(8);
            this.mIconView.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.mWindow.findViewById(R.id.alertTitle);
        this.mTitleView = textView;
        textView.setText(this.mTitle);
        int i2 = this.mIconId;
        if (i2 != 0) {
            this.mIconView.setImageResource(i2);
            return;
        }
        Drawable drawable = this.mIcon;
        if (drawable != null) {
            this.mIconView.setImageDrawable(drawable);
        } else {
            this.mTitleView.setPadding(this.mIconView.getPaddingLeft(), this.mIconView.getPaddingTop(), this.mIconView.getPaddingRight(), this.mIconView.getPaddingBottom());
            this.mIconView.setVisibility(8);
        }
    }

    public void installContent() {
        this.mWindow.setContentView(selectContentView());
        setupView();
    }

    public void setView(View view) {
        this.mView = view;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = false;
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        this.mIconId = 0;
        ImageView imageView = this.mIconView;
        if (imageView != null) {
            if (drawable != null) {
                imageView.setVisibility(0);
                this.mIconView.setImageDrawable(drawable);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public void setView(View view, int i2, int i3, int i4, int i5) {
        this.mView = view;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = true;
        this.mViewSpacingLeft = i2;
        this.mViewSpacingTop = i3;
        this.mViewSpacingRight = i4;
        this.mViewSpacingBottom = i5;
    }
}
