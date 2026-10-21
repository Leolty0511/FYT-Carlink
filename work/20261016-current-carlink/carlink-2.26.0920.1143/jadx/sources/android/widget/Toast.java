package android.widget;

import android.app.INotificationManager;
import android.app.ITransientNotification;
import android.content.Context;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class Toast {
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    static final String TAG = "Toast";
    static final boolean localLOGV = true;
    private static INotificationManager sService;
    final Context mContext;
    int mDuration;
    View mNextView;
    final TN mTN;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Duration {
    }

    public static class TN extends ITransientNotification.Stub {
        private static final int CANCEL = 2;
        private static final int HIDE = 1;
        static final long LONG_DURATION_TIMEOUT = 7000;
        static final long SHORT_DURATION_TIMEOUT = 4000;
        private static final int SHOW = 0;
        int mDuration;
        int mGravity;
        final Handler mHandler;
        float mHorizontalMargin;
        View mNextView;
        String mPackageName;
        private final WindowManager.LayoutParams mParams;
        float mVerticalMargin;
        View mView;
        WindowManager mWM;
        int mX;
        int mY;

        public TN(String str, Looper looper) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.mParams = layoutParams;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            layoutParams.type = 2005;
            layoutParams.setTitle(Toast.TAG);
            layoutParams.flags = 152;
            this.mPackageName = str;
            if (looper == null && (looper = Looper.myLooper()) == null) {
                throw new RuntimeException("Can't toast on a thread that has not called Looper.prepare()");
            }
            this.mHandler = new Handler(looper, null) { // from class: android.widget.Toast.TN.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i2 = message.what;
                    if (i2 == 0) {
                        TN.this.handleShow((IBinder) message.obj);
                        return;
                    }
                    if (i2 == 1) {
                        TN.this.handleHide();
                        TN.this.mNextView = null;
                    } else {
                        if (i2 != 2) {
                            return;
                        }
                        TN.this.handleHide();
                        TN.this.mNextView = null;
                        try {
                            INotificationManager service = Toast.getService();
                            TN tn = TN.this;
                            service.cancelToast(tn.mPackageName, tn);
                        } catch (RemoteException unused) {
                        }
                    }
                }
            };
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

        public void cancel() {
            Log.v(Toast.TAG, "CANCEL: " + this);
            this.mHandler.obtainMessage(2).sendToTarget();
        }

        public void handleHide() {
            Log.v(Toast.TAG, "HANDLE HIDE: " + this + " mView=" + this.mView);
            View view = this.mView;
            if (view != null) {
                if (view.getParent() != null) {
                    Log.v(Toast.TAG, "REMOVE! " + this.mView + " in " + this);
                    this.mWM.removeViewImmediate(this.mView);
                }
                this.mView = null;
            }
        }

        public void handleShow(IBinder iBinder) {
            Log.v(Toast.TAG, "HANDLE SHOW: " + this + " mView=" + this.mView + " mNextView=" + this.mNextView);
            if (this.mHandler.hasMessages(2) || this.mHandler.hasMessages(1) || this.mView == this.mNextView) {
                return;
            }
            handleHide();
            View view = this.mNextView;
            this.mView = view;
            Context applicationContext = view.getContext().getApplicationContext();
            String opPackageName = this.mView.getContext().getOpPackageName();
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
            layoutParams.f211x = this.mX;
            layoutParams.f212y = this.mY;
            layoutParams.verticalMargin = this.mVerticalMargin;
            layoutParams.horizontalMargin = this.mHorizontalMargin;
            layoutParams.packageName = opPackageName;
            layoutParams.hideTimeoutMilliseconds = this.mDuration == 1 ? LONG_DURATION_TIMEOUT : SHORT_DURATION_TIMEOUT;
            layoutParams.token = iBinder;
            if (this.mView.getParent() != null) {
                Log.v(Toast.TAG, "REMOVE! " + this.mView + " in " + this);
                this.mWM.removeView(this.mView);
            }
            Log.v(Toast.TAG, "ADD! " + this.mView + " in " + this);
            try {
                this.mWM.addView(this.mView, this.mParams);
                trySendAccessibilityEvent();
            } catch (WindowManager.BadTokenException e2) {
                e2.printStackTrace();
                this.mWM.removeViewImmediate(this.mView);
            }
        }

        @Override // android.app.ITransientNotification
        public void hide() {
            Log.v(Toast.TAG, "HIDE: " + this);
            this.mHandler.obtainMessage(1).sendToTarget();
        }

        @Override // android.app.ITransientNotification
        public void show(IBinder iBinder) {
            Log.v(Toast.TAG, "SHOW: " + this);
            this.mHandler.obtainMessage(0, iBinder).sendToTarget();
        }
    }

    public Toast(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static INotificationManager getService() {
        INotificationManager iNotificationManager = sService;
        if (iNotificationManager != null) {
            return iNotificationManager;
        }
        INotificationManager iNotificationManagerAsInterface = INotificationManager.Stub.asInterface(ServiceManager.getService(Context.NOTIFICATION_SERVICE));
        sService = iNotificationManagerAsInterface;
        return iNotificationManagerAsInterface;
    }

    public static Toast makeText(Context context, CharSequence charSequence, int i2) {
        return makeText(context, null, charSequence, i2);
    }

    public void cancel() {
        Log.v(TAG, "Toast CANCEL: " + this + " view = " + this.mNextView + " caller: " + Debug.getCallers(1));
        this.mTN.cancel();
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

    public WindowManager.LayoutParams getWindowParams() {
        return this.mTN.mParams;
    }

    public int getXOffset() {
        return this.mTN.mX;
    }

    public int getYOffset() {
        return this.mTN.mY;
    }

    public void setDuration(int i2) {
        this.mDuration = i2;
        this.mTN.mDuration = i2;
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
        String opPackageName = this.mContext.getOpPackageName();
        TN tn = this.mTN;
        tn.mNextView = this.mNextView;
        try {
            Log.v(TAG, "Toast SHOW: " + this + " view = " + this.mNextView + " caller: " + Debug.getCallers(1));
            service.enqueueToast(opPackageName, tn, this.mDuration);
        } catch (RemoteException unused) {
        }
    }

    public Toast(Context context, Looper looper) {
        this.mContext = context;
        TN tn = new TN(context.getPackageName(), looper);
        this.mTN = tn;
        tn.mY = context.getResources().getDimensionPixelSize(R.dimen.toast_y_offset);
        tn.mGravity = context.getResources().getInteger(R.integer.config_toastDefaultGravity);
    }

    public static Toast makeText(Context context, Looper looper, CharSequence charSequence, int i2) {
        Toast toast = new Toast(context, looper);
        View viewInflate = ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(R.layout.transient_notification, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(16908299)).setText(charSequence);
        toast.mNextView = viewInflate;
        toast.mDuration = i2;
        return toast;
    }

    public void setText(CharSequence charSequence) {
        View view = this.mNextView;
        if (view == null) {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
        TextView textView = (TextView) view.findViewById(16908299);
        if (textView == null) {
            throw new RuntimeException("This Toast was not created with Toast.makeText()");
        }
        textView.setText(charSequence);
    }

    public static Toast makeText(Context context, int i2, int i3) {
        return makeText(context, context.getResources().getText(i2), i3);
    }
}
