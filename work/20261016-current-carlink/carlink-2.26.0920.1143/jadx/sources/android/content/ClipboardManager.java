package android.content;

import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ClipboardManager extends android.text.ClipboardManager {
    static final int MSG_REPORT_PRIMARY_CLIP_CHANGED = 1;
    private final Context mContext;
    private final ArrayList<OnPrimaryClipChangedListener> mPrimaryClipChangedListeners = new ArrayList<>();
    private final IOnPrimaryClipChangedListener.Stub mPrimaryClipChangedServiceListener = new IOnPrimaryClipChangedListener.Stub() { // from class: android.content.ClipboardManager.1
        @Override // android.content.IOnPrimaryClipChangedListener
        public void dispatchPrimaryClipChanged() {
            ClipboardManager.this.mHandler.sendEmptyMessage(1);
        }
    };
    private final Handler mHandler = new Handler() { // from class: android.content.ClipboardManager.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            ClipboardManager.this.reportPrimaryClipChanged();
        }
    };
    private final IClipboard mService = IClipboard.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.CLIPBOARD_SERVICE));

    public interface OnPrimaryClipChangedListener {
        void onPrimaryClipChanged();
    }

    public ClipboardManager(Context context, Handler handler) {
        this.mContext = context;
    }

    public void addPrimaryClipChangedListener(OnPrimaryClipChangedListener onPrimaryClipChangedListener) {
        synchronized (this.mPrimaryClipChangedListeners) {
            if (this.mPrimaryClipChangedListeners.isEmpty()) {
                try {
                    this.mService.addPrimaryClipChangedListener(this.mPrimaryClipChangedServiceListener, this.mContext.getOpPackageName());
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            this.mPrimaryClipChangedListeners.add(onPrimaryClipChangedListener);
        }
    }

    public ClipData getPrimaryClip() {
        try {
            return this.mService.getPrimaryClip(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public ClipDescription getPrimaryClipDescription() {
        try {
            return this.mService.getPrimaryClipDescription(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.text.ClipboardManager
    @Deprecated
    public CharSequence getText() {
        ClipData primaryClip = getPrimaryClip();
        if (primaryClip == null || primaryClip.getItemCount() <= 0) {
            return null;
        }
        return primaryClip.getItemAt(0).coerceToText(this.mContext);
    }

    public boolean hasPrimaryClip() {
        try {
            return this.mService.hasPrimaryClip(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.text.ClipboardManager
    @Deprecated
    public boolean hasText() {
        try {
            return this.mService.hasClipboardText(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removePrimaryClipChangedListener(OnPrimaryClipChangedListener onPrimaryClipChangedListener) {
        synchronized (this.mPrimaryClipChangedListeners) {
            this.mPrimaryClipChangedListeners.remove(onPrimaryClipChangedListener);
            if (this.mPrimaryClipChangedListeners.isEmpty()) {
                try {
                    this.mService.removePrimaryClipChangedListener(this.mPrimaryClipChangedServiceListener);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
        }
    }

    public void reportPrimaryClipChanged() {
        synchronized (this.mPrimaryClipChangedListeners) {
            if (this.mPrimaryClipChangedListeners.size() <= 0) {
                return;
            }
            for (Object obj : this.mPrimaryClipChangedListeners.toArray()) {
                ((OnPrimaryClipChangedListener) obj).onPrimaryClipChanged();
            }
        }
    }

    public void setPrimaryClip(ClipData clipData) {
        if (clipData != null) {
            try {
                clipData.prepareToLeaveProcess(true);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        this.mService.setPrimaryClip(clipData, this.mContext.getOpPackageName());
    }

    @Override // android.text.ClipboardManager
    @Deprecated
    public void setText(CharSequence charSequence) {
        setPrimaryClip(ClipData.newPlainText(null, charSequence));
    }
}
