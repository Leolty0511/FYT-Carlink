package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.service.notification.ZenModeConfig;
import com.android.internal.R;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class RecoverableSecurityException extends SecurityException implements Parcelable {
    public static final Parcelable.Creator<RecoverableSecurityException> CREATOR = new Parcelable.Creator<RecoverableSecurityException>() { // from class: android.app.RecoverableSecurityException.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecoverableSecurityException createFromParcel(Parcel parcel) {
            return new RecoverableSecurityException(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecoverableSecurityException[] newArray(int i2) {
            return new RecoverableSecurityException[i2];
        }
    };
    private static final String TAG = "RecoverableSecurityException";
    private final RemoteAction mUserAction;
    private final CharSequence mUserMessage;

    public static class LocalDialog extends DialogFragment {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCreateDialog$0(RecoverableSecurityException recoverableSecurityException, DialogInterface dialogInterface, int i2) {
            try {
                recoverableSecurityException.mUserAction.getActionIntent().send();
            } catch (PendingIntent.CanceledException unused) {
            }
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            final RecoverableSecurityException recoverableSecurityException = (RecoverableSecurityException) getArguments().getParcelable(RecoverableSecurityException.TAG);
            return new AlertDialog.Builder(getActivity()).setMessage(recoverableSecurityException.mUserMessage).setPositiveButton(recoverableSecurityException.mUserAction.getTitle(), new DialogInterface.OnClickListener() { // from class: android.app.n
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    RecoverableSecurityException.LocalDialog.lambda$onCreateDialog$0(recoverableSecurityException, dialogInterface, i2);
                }
            }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
        }
    }

    public RecoverableSecurityException(Parcel parcel) {
        this(new SecurityException(parcel.readString()), parcel.readCharSequence(), RemoteAction.CREATOR.createFromParcel(parcel));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RemoteAction getUserAction() {
        return this.mUserAction;
    }

    public CharSequence getUserMessage() {
        return this.mUserMessage;
    }

    public void showAsDialog(Activity activity) {
        LocalDialog localDialog = new LocalDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable(TAG, this);
        localDialog.setArguments(bundle);
        String str = "RecoverableSecurityException_" + this.mUserAction.getActionIntent().getCreatorUid();
        FragmentManager fragmentManager = activity.getFragmentManager();
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(str);
        if (fragmentFindFragmentByTag != null) {
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
        }
        fragmentTransactionBeginTransaction.add(localDialog, str);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    @Deprecated
    public void showAsNotification(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        String str = "RecoverableSecurityException_" + this.mUserAction.getActionIntent().getCreatorUid();
        notificationManager.createNotificationChannel(new NotificationChannel(str, TAG, 3));
        showAsNotification(context, str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(getMessage());
        parcel.writeCharSequence(this.mUserMessage);
        this.mUserAction.writeToParcel(parcel, i2);
    }

    public RecoverableSecurityException(Throwable th, CharSequence charSequence, RemoteAction remoteAction) {
        super(th.getMessage());
        this.mUserMessage = (CharSequence) Preconditions.checkNotNull(charSequence);
        this.mUserAction = (RemoteAction) Preconditions.checkNotNull(remoteAction);
    }

    public void showAsNotification(Context context, String str) {
        ((NotificationManager) context.getSystemService(NotificationManager.class)).notify(TAG, this.mUserAction.getActionIntent().getCreatorUid(), new Notification.Builder(context, str).setSmallIcon(R.drawable.ic_print_error).setContentTitle(this.mUserAction.getTitle()).setContentText(this.mUserMessage).setContentIntent(this.mUserAction.getActionIntent()).setCategory("err").build());
    }

    @Deprecated
    public RecoverableSecurityException(Throwable th, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        this(th, charSequence, new RemoteAction(Icon.createWithResource(ZenModeConfig.SYSTEM_AUTHORITY, R.drawable.ic_restart), charSequence2, charSequence2, pendingIntent));
    }
}
