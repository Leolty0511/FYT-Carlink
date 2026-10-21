package android.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.RemoteViews;
import com.android.internal.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public final class ViewStub extends View {
    private OnInflateListener mInflateListener;
    private int mInflatedId;
    private WeakReference<View> mInflatedViewRef;
    private LayoutInflater mInflater;
    private int mLayoutResource;

    public interface OnInflateListener {
        void onInflate(ViewStub viewStub, View view);
    }

    public class ViewReplaceRunnable implements Runnable {
        public final View view;

        public ViewReplaceRunnable(View view) {
            this.view = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewStub viewStub = ViewStub.this;
            viewStub.replaceSelfWithView(this.view, (ViewGroup) viewStub.getParent());
        }
    }

    public ViewStub(Context context) {
        this(context, 0);
    }

    private View inflateViewNoAdd(ViewGroup viewGroup) {
        LayoutInflater layoutInflaterFrom = this.mInflater;
        if (layoutInflaterFrom == null) {
            layoutInflaterFrom = LayoutInflater.from(this.mContext);
        }
        View viewInflate = layoutInflaterFrom.inflate(this.mLayoutResource, viewGroup, false);
        int i2 = this.mInflatedId;
        if (i2 != -1) {
            viewInflate.setId(i2);
        }
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replaceSelfWithView(View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.mInflatedId;
    }

    public LayoutInflater getLayoutInflater() {
        return this.mInflater;
    }

    public int getLayoutResource() {
        return this.mLayoutResource;
    }

    public View inflate() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.mLayoutResource == 0) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        View viewInflateViewNoAdd = inflateViewNoAdd(viewGroup);
        replaceSelfWithView(viewInflateViewNoAdd, viewGroup);
        this.mInflatedViewRef = new WeakReference<>(viewInflateViewNoAdd);
        OnInflateListener onInflateListener = this.mInflateListener;
        if (onInflateListener != null) {
            onInflateListener.onInflate(this, viewInflateViewNoAdd);
        }
        return viewInflateViewNoAdd;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(0, 0);
    }

    @RemotableViewMethod(asyncImpl = "setInflatedIdAsync")
    public void setInflatedId(int i2) {
        this.mInflatedId = i2;
    }

    public Runnable setInflatedIdAsync(int i2) {
        this.mInflatedId = i2;
        return null;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.mInflater = layoutInflater;
    }

    @RemotableViewMethod(asyncImpl = "setLayoutResourceAsync")
    public void setLayoutResource(int i2) {
        this.mLayoutResource = i2;
    }

    public Runnable setLayoutResourceAsync(int i2) {
        this.mLayoutResource = i2;
        return null;
    }

    public void setOnInflateListener(OnInflateListener onInflateListener) {
        this.mInflateListener = onInflateListener;
    }

    @Override // android.view.View
    @RemotableViewMethod(asyncImpl = "setVisibilityAsync")
    public void setVisibility(int i2) {
        WeakReference<View> weakReference = this.mInflatedViewRef;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i2);
            return;
        }
        super.setVisibility(i2);
        if (i2 == 0 || i2 == 4) {
            inflate();
        }
    }

    public Runnable setVisibilityAsync(int i2) {
        if (i2 == 0 || i2 == 4) {
            return new ViewReplaceRunnable(inflateViewNoAdd((ViewGroup) getParent()));
        }
        return null;
    }

    public ViewStub(Context context, int i2) {
        this(context, (AttributeSet) null);
        this.mLayoutResource = i2;
    }

    public ViewStub(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStub(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ViewStub(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewStub, i2, i3);
        this.mInflatedId = typedArrayObtainStyledAttributes.getResourceId(2, -1);
        this.mLayoutResource = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        this.mID = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }
}
