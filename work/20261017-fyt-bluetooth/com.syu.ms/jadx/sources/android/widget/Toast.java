package android.widget;

import android.R;
import android.app.INotificationManager;
import android.app.ITransientNotification;
import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: classes.dex */
public class Toast {
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    public static final String TAG = "Toast";
    public static final boolean localLOGV = false;
    private static INotificationManager sService;
    public final Context mContext;
    public int mDuration;
    public View mNextView;
    public final TN mTN;

    public static class TN extends ITransientNotification.Stub {
        public int mGravity;
        public final Handler mHandler;
        public float mHorizontalMargin;
        public View mNextView;
        private final WindowManager.LayoutParams mParams;
        public float mVerticalMargin;
        public View mView;
        public WindowManager mWM;
        public int mX;
        public int mY;
        public final Runnable mShow = new Runnable() { // from class: android.widget.Toast.TN.1
            @Override // java.lang.Runnable
            public void run() {
                TN.this.handleShow();
            }
        };
        public final Runnable mHide = new Runnable() { // from class: android.widget.Toast.TN.2
            @Override // java.lang.Runnable
            public void run() {
                TN.this.handleHide();
                TN.this.mNextView = null;
            }
        };

        public TN() {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.mParams = layoutParams;
            this.mHandler = new Handler();
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation_Toast;
            layoutParams.type = 2005;
            layoutParams.setTitle(Toast.TAG);
            layoutParams.flags = 152;
        }

        private void trySendAccessibilityEvent() {
            AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(this.mView.getContext());
            if (accessibilityManager.isEnabled()) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(64);
                accessibilityEventObtain.setClassName(getClass().getName());
                accessibilityEventObtain.setPackageName(this.mView.getContext().getPackageName());
                this.mView.dispatchPopulateAccessibilityEvent(accessibilityEventObtain);
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
            }
        }

        public void handleHide() {
            View view = this.mView;
            if (view != null) {
                if (view.getParent() != null) {
                    this.mWM.removeView(this.mView);
                }
                this.mView = null;
            }
        }

        public void handleShow() {
            if (this.mView != this.mNextView) {
                handleHide();
                View view = this.mNextView;
                this.mView = view;
                Context applicationContext = view.getContext().getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = this.mView.getContext();
                }
                this.mWM = (WindowManager) applicationContext.getSystemService(Context.WINDOW_SERVICE);
                int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, this.mView.getContext().getResources().getConfiguration().getLayoutDirection());
                WindowManager.LayoutParams layoutParams = this.mParams;
                layoutParams.gravity = absoluteGravity;
                if ((absoluteGravity & 7) == 7) {
                    layoutParams.horizontalWeight = 1.0f;
                }
                if ((absoluteGravity & 112) == 112) {
                    layoutParams.verticalWeight = 1.0f;
                }
                layoutParams.f206x = this.mX;
                layoutParams.f207y = this.mY;
                layoutParams.verticalMargin = this.mVerticalMargin;
                layoutParams.horizontalMargin = this.mHorizontalMargin;
                if (this.mView.getParent() != null) {
                    this.mWM.removeView(this.mView);
                }
                this.mWM.addView(this.mView, this.mParams);
                trySendAccessibilityEvent();
            }
        }

        @Override // android.app.ITransientNotification
        public void hide() {
            this.mHandler.post(this.mHide);
        }

        @Override // android.app.ITransientNotification
        public void show() {
            this.mHandler.post(this.mShow);
        }
    }

    public Toast(Context context) {
        this.mContext = context;
        TN tn = new TN();
        this.mTN = tn;
        tn.mY = context.getResources().getDimensionPixelSize(17104907);
        tn.mGravity = context.getResources().getInteger(17694790);
    }

    private static INotificationManager getService() {
        INotificationManager iNotificationManager = sService;
        if (iNotificationManager != null) {
            return iNotificationManager;
        }
        INotificationManager iNotificationManagerAsInterface = INotificationManager.Stub.asInterface(ServiceManager.getService(Context.NOTIFICATION_SERVICE));
        sService = iNotificationManagerAsInterface;
        return iNotificationManagerAsInterface;
    }

    public static Toast makeText(Context context, CharSequence charSequence, int i2) {
        Toast toast = new Toast(context);
        View viewInflate = ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(17367221, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.message)).setText(charSequence);
        toast.mNextView = viewInflate;
        toast.mDuration = i2;
        return toast;
    }

    public void cancel() {
        this.mTN.hide();
        try {
            getService().cancelToast(this.mContext.getPackageName(), this.mTN);
        } catch (RemoteException unused) {
        }
    }

    public int getDuration() {
        return this.mDuration;
    }

    public int getGravity() {
        return this.mTN.mGravity;
    }

    public float getHorizontalMargin() {
        return this.mTN.mHorizontalMargin;
    }

    public float getVerticalMargin() {
        return this.mTN.mVerticalMargin;
    }

    public View getView() {
        return this.mNextView;
    }

    public int getXOffset() {
        return this.mTN.mX;
    }

    public int getYOffset() {
        return this.mTN.mY;
    }

    public void setDuration(int i2) {
        this.mDuration = i2;
    }

    public void setGravity(int i2, int i3, int i4) {
        TN tn = this.mTN;
        tn.mGravity = i2;
        tn.mX = i3;
        tn.mY = i4;
    }

    public void setMargin(float f2, float f3) {
        TN tn = this.mTN;
        tn.mHorizontalMargin = f2;
        tn.mVerticalMargin = f3;
    }

    public void setText(int i2) {
        setText(this.mContext.getText(i2));
    }

    public void setView(View view) {
        this.mNextView = view;
    }

    public void show() {
        if (this.mNextView == null) {
            throw new RuntimeException("setView must have been called");
        }
        INotificationManager service = getService();
        String packageName = this.mContext.getPackageName();
        TN tn = this.mTN;
        tn.mNextView = this.mNextView;
        try {
            service.enqueueToast(packageName, tn, this.mDuration);
        } catch (RemoteException unused) {
        }
    }

    public void setText(CharSequence charSequence) {
        View view = this.mNextView;
        if (view == null) {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
        TextView textView = (TextView) view.findViewById(R.id.message);
        if (textView == null) {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
        textView.setText(charSequence);
    }

    public static Toast makeText(Context context, int i2, int i3) {
        return makeText(context, context.getResources().getText(i2), i3);
    }
}
