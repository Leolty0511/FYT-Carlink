package android.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import i.a;
import java.text.NumberFormat;

/* JADX INFO: loaded from: classes.dex */
public class ProgressDialog extends AlertDialog {
    public static final int STYLE_HORIZONTAL = 1;
    public static final int STYLE_SPINNER = 0;
    private boolean mHasStarted;
    private int mIncrementBy;
    private int mIncrementSecondaryBy;
    private boolean mIndeterminate;
    private Drawable mIndeterminateDrawable;
    private int mMax;
    private CharSequence mMessage;
    private TextView mMessageView;
    private ProgressBar mProgress;
    private Drawable mProgressDrawable;
    private TextView mProgressNumber;
    private String mProgressNumberFormat;
    private TextView mProgressPercent;
    private NumberFormat mProgressPercentFormat;
    private int mProgressStyle;
    private int mProgressVal;
    private int mSecondaryProgressVal;
    private Handler mViewUpdateHandler;

    public ProgressDialog(Context context) {
        super(context);
        this.mProgressStyle = 0;
        initFormats();
    }

    private void initFormats() {
        this.mProgressNumberFormat = "%1d/%2d";
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        this.mProgressPercentFormat = percentInstance;
        percentInstance.setMaximumFractionDigits(0);
    }

    private void onProgressChanged() {
        Handler handler;
        if (this.mProgressStyle != 1 || (handler = this.mViewUpdateHandler) == null || handler.hasMessages(0)) {
            return;
        }
        this.mViewUpdateHandler.sendEmptyMessage(0);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2) {
        return show(context, charSequence, charSequence2, false);
    }

    public int getMax() {
        ProgressBar progressBar = this.mProgress;
        return progressBar != null ? progressBar.getMax() : this.mMax;
    }

    public int getProgress() {
        ProgressBar progressBar = this.mProgress;
        return progressBar != null ? progressBar.getProgress() : this.mProgressVal;
    }

    public int getSecondaryProgress() {
        ProgressBar progressBar = this.mProgress;
        return progressBar != null ? progressBar.getSecondaryProgress() : this.mSecondaryProgressVal;
    }

    public void incrementProgressBy(int i2) {
        ProgressBar progressBar = this.mProgress;
        if (progressBar == null) {
            this.mIncrementBy += i2;
        } else {
            progressBar.incrementProgressBy(i2);
            onProgressChanged();
        }
    }

    public void incrementSecondaryProgressBy(int i2) {
        ProgressBar progressBar = this.mProgress;
        if (progressBar == null) {
            this.mIncrementSecondaryBy += i2;
        } else {
            progressBar.incrementSecondaryProgressBy(i2);
            onProgressChanged();
        }
    }

    public boolean isIndeterminate() {
        ProgressBar progressBar = this.mProgress;
        return progressBar != null ? progressBar.isIndeterminate() : this.mIndeterminate;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, a.AlertDialog, R.attr.alertDialogStyle, 0);
        if (this.mProgressStyle == 1) {
            this.mViewUpdateHandler = new Handler() { // from class: android.app.ProgressDialog.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    int progress = ProgressDialog.this.mProgress.getProgress();
                    int max = ProgressDialog.this.mProgress.getMax();
                    if (ProgressDialog.this.mProgressNumberFormat != null) {
                        ProgressDialog.this.mProgressNumber.setText(String.format(ProgressDialog.this.mProgressNumberFormat, Integer.valueOf(progress), Integer.valueOf(max)));
                    } else {
                        ProgressDialog.this.mProgressNumber.setText(ProxyProperties.LOCAL_EXCL_LIST);
                    }
                    if (ProgressDialog.this.mProgressPercentFormat == null) {
                        ProgressDialog.this.mProgressPercent.setText(ProxyProperties.LOCAL_EXCL_LIST);
                        return;
                    }
                    SpannableString spannableString = new SpannableString(ProgressDialog.this.mProgressPercentFormat.format(((double) progress) / ((double) max)));
                    spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                    ProgressDialog.this.mProgressPercent.setText(spannableString);
                }
            };
            View viewInflate = layoutInflaterFrom.inflate(typedArrayObtainStyledAttributes.getResourceId(16, 17367078), (ViewGroup) null);
            this.mProgress = (ProgressBar) viewInflate.findViewById(R.id.progress);
            this.mProgressNumber = (TextView) viewInflate.findViewById(16908938);
            this.mProgressPercent = (TextView) viewInflate.findViewById(16908937);
            setView(viewInflate);
        } else {
            View viewInflate2 = layoutInflaterFrom.inflate(typedArrayObtainStyledAttributes.getResourceId(15, 17367170), (ViewGroup) null);
            this.mProgress = (ProgressBar) viewInflate2.findViewById(R.id.progress);
            this.mMessageView = (TextView) viewInflate2.findViewById(R.id.message);
            setView(viewInflate2);
        }
        typedArrayObtainStyledAttributes.recycle();
        int i2 = this.mMax;
        if (i2 > 0) {
            setMax(i2);
        }
        int i3 = this.mProgressVal;
        if (i3 > 0) {
            setProgress(i3);
        }
        int i4 = this.mSecondaryProgressVal;
        if (i4 > 0) {
            setSecondaryProgress(i4);
        }
        int i5 = this.mIncrementBy;
        if (i5 > 0) {
            incrementProgressBy(i5);
        }
        int i6 = this.mIncrementSecondaryBy;
        if (i6 > 0) {
            incrementSecondaryProgressBy(i6);
        }
        Drawable drawable = this.mProgressDrawable;
        if (drawable != null) {
            setProgressDrawable(drawable);
        }
        Drawable drawable2 = this.mIndeterminateDrawable;
        if (drawable2 != null) {
            setIndeterminateDrawable(drawable2);
        }
        CharSequence charSequence = this.mMessage;
        if (charSequence != null) {
            setMessage(charSequence);
        }
        setIndeterminate(this.mIndeterminate);
        onProgressChanged();
        super.onCreate(bundle);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        this.mHasStarted = true;
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        this.mHasStarted = false;
    }

    public void setIndeterminate(boolean z2) {
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            progressBar.setIndeterminate(z2);
        } else {
            this.mIndeterminate = z2;
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            progressBar.setIndeterminateDrawable(drawable);
        } else {
            this.mIndeterminateDrawable = drawable;
        }
    }

    public void setMax(int i2) {
        ProgressBar progressBar = this.mProgress;
        if (progressBar == null) {
            this.mMax = i2;
        } else {
            progressBar.setMax(i2);
            onProgressChanged();
        }
    }

    @Override // android.app.AlertDialog
    public void setMessage(CharSequence charSequence) {
        if (this.mProgress == null) {
            this.mMessage = charSequence;
        } else if (this.mProgressStyle == 1) {
            super.setMessage(charSequence);
        } else {
            this.mMessageView.setText(charSequence);
        }
    }

    public void setProgress(int i2) {
        if (!this.mHasStarted) {
            this.mProgressVal = i2;
        } else {
            this.mProgress.setProgress(i2);
            onProgressChanged();
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            progressBar.setProgressDrawable(drawable);
        } else {
            this.mProgressDrawable = drawable;
        }
    }

    public void setProgressNumberFormat(String str) {
        this.mProgressNumberFormat = str;
        onProgressChanged();
    }

    public void setProgressPercentFormat(NumberFormat numberFormat) {
        this.mProgressPercentFormat = numberFormat;
        onProgressChanged();
    }

    public void setProgressStyle(int i2) {
        this.mProgressStyle = i2;
    }

    public void setSecondaryProgress(int i2) {
        ProgressBar progressBar = this.mProgress;
        if (progressBar == null) {
            this.mSecondaryProgressVal = i2;
        } else {
            progressBar.setSecondaryProgress(i2);
            onProgressChanged();
        }
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z2) {
        return show(context, charSequence, charSequence2, z2, false, null);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z2, boolean z3) {
        return show(context, charSequence, charSequence2, z2, z3, null);
    }

    public ProgressDialog(Context context, int i2) {
        super(context, i2);
        this.mProgressStyle = 0;
        initFormats();
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z2, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle(charSequence);
        progressDialog.setMessage(charSequence2);
        progressDialog.setIndeterminate(z2);
        progressDialog.setCancelable(z3);
        progressDialog.setOnCancelListener(onCancelListener);
        progressDialog.show();
        return progressDialog;
    }
}
