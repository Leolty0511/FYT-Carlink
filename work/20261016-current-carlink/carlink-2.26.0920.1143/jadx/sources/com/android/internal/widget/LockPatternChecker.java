package com.android.internal.widget;

import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class LockPatternChecker {

    public interface OnCheckCallback {
        void onCancelled();

        void onChecked(boolean z2, int i2);

        void onEarlyMatched();
    }

    public interface OnVerifyCallback {
        void onVerified(byte[] bArr, int i2);
    }

    public static AsyncTask<?, ?, ?> checkPassword(final LockPatternUtils lockPatternUtils, final String str, final int i2, final OnCheckCallback onCheckCallback) {
        AsyncTask<Void, Void, Boolean> asyncTask = new AsyncTask<Void, Void, Boolean>() { // from class: com.android.internal.widget.LockPatternChecker.5
            private int mThrottleTimeout;

            @Override // android.os.AsyncTask
            public void onCancelled() {
                onCheckCallback.onCancelled();
            }

            @Override // android.os.AsyncTask
            public Boolean doInBackground(Void... voidArr) {
                try {
                    LockPatternUtils lockPatternUtils2 = lockPatternUtils;
                    String str2 = str;
                    int i3 = i2;
                    OnCheckCallback onCheckCallback2 = onCheckCallback;
                    onCheckCallback2.getClass();
                    return Boolean.valueOf(lockPatternUtils2.checkPassword(str2, i3, new e(onCheckCallback2, 1)));
                } catch (LockPatternUtils.RequestThrottledException e2) {
                    this.mThrottleTimeout = e2.getTimeoutMs();
                    return Boolean.FALSE;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Boolean bool) {
                onCheckCallback.onChecked(bool.booleanValue(), this.mThrottleTimeout);
            }
        };
        asyncTask.execute(new Void[0]);
        return asyncTask;
    }

    public static AsyncTask<?, ?, ?> checkPattern(final LockPatternUtils lockPatternUtils, final List<LockPatternView.Cell> list, final int i2, final OnCheckCallback onCheckCallback) {
        AsyncTask<Void, Void, Boolean> asyncTask = new AsyncTask<Void, Void, Boolean>() { // from class: com.android.internal.widget.LockPatternChecker.2
            private int mThrottleTimeout;
            private List<LockPatternView.Cell> patternCopy;

            @Override // android.os.AsyncTask
            public void onCancelled() {
                onCheckCallback.onCancelled();
            }

            @Override // android.os.AsyncTask
            public void onPreExecute() {
                this.patternCopy = new ArrayList(list);
            }

            @Override // android.os.AsyncTask
            public Boolean doInBackground(Void... voidArr) {
                try {
                    LockPatternUtils lockPatternUtils2 = lockPatternUtils;
                    List<LockPatternView.Cell> list2 = this.patternCopy;
                    int i3 = i2;
                    OnCheckCallback onCheckCallback2 = onCheckCallback;
                    onCheckCallback2.getClass();
                    return Boolean.valueOf(lockPatternUtils2.checkPattern(list2, i3, new e(onCheckCallback2, 0)));
                } catch (LockPatternUtils.RequestThrottledException e2) {
                    this.mThrottleTimeout = e2.getTimeoutMs();
                    return Boolean.FALSE;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Boolean bool) {
                onCheckCallback.onChecked(bool.booleanValue(), this.mThrottleTimeout);
            }
        };
        asyncTask.execute(new Void[0]);
        return asyncTask;
    }

    public static AsyncTask<?, ?, ?> verifyPassword(final LockPatternUtils lockPatternUtils, final String str, final long j2, final int i2, final OnVerifyCallback onVerifyCallback) {
        AsyncTask<Void, Void, byte[]> asyncTask = new AsyncTask<Void, Void, byte[]>() { // from class: com.android.internal.widget.LockPatternChecker.3
            private int mThrottleTimeout;

            @Override // android.os.AsyncTask
            public byte[] doInBackground(Void... voidArr) {
                try {
                    return lockPatternUtils.verifyPassword(str, j2, i2);
                } catch (LockPatternUtils.RequestThrottledException e2) {
                    this.mThrottleTimeout = e2.getTimeoutMs();
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(byte[] bArr) {
                onVerifyCallback.onVerified(bArr, this.mThrottleTimeout);
            }
        };
        asyncTask.execute(new Void[0]);
        return asyncTask;
    }

    public static AsyncTask<?, ?, ?> verifyPattern(final LockPatternUtils lockPatternUtils, final List<LockPatternView.Cell> list, final long j2, final int i2, final OnVerifyCallback onVerifyCallback) {
        AsyncTask<Void, Void, byte[]> asyncTask = new AsyncTask<Void, Void, byte[]>() { // from class: com.android.internal.widget.LockPatternChecker.1
            private int mThrottleTimeout;
            private List<LockPatternView.Cell> patternCopy;

            @Override // android.os.AsyncTask
            public void onPreExecute() {
                this.patternCopy = new ArrayList(list);
            }

            @Override // android.os.AsyncTask
            public byte[] doInBackground(Void... voidArr) {
                try {
                    return lockPatternUtils.verifyPattern(this.patternCopy, j2, i2);
                } catch (LockPatternUtils.RequestThrottledException e2) {
                    this.mThrottleTimeout = e2.getTimeoutMs();
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(byte[] bArr) {
                onVerifyCallback.onVerified(bArr, this.mThrottleTimeout);
            }
        };
        asyncTask.execute(new Void[0]);
        return asyncTask;
    }

    public static AsyncTask<?, ?, ?> verifyTiedProfileChallenge(final LockPatternUtils lockPatternUtils, final String str, final boolean z2, final long j2, final int i2, final OnVerifyCallback onVerifyCallback) {
        AsyncTask<Void, Void, byte[]> asyncTask = new AsyncTask<Void, Void, byte[]>() { // from class: com.android.internal.widget.LockPatternChecker.4
            private int mThrottleTimeout;

            @Override // android.os.AsyncTask
            public byte[] doInBackground(Void... voidArr) {
                try {
                    return lockPatternUtils.verifyTiedProfileChallenge(str, z2, j2, i2);
                } catch (LockPatternUtils.RequestThrottledException e2) {
                    this.mThrottleTimeout = e2.getTimeoutMs();
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(byte[] bArr) {
                onVerifyCallback.onVerified(bArr, this.mThrottleTimeout);
            }
        };
        asyncTask.execute(new Void[0]);
        return asyncTask;
    }
}
