package com.android.internal.policy;

import android.app.KeyguardManager;
import android.app.SearchManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.media.session.MediaSessionLegacyHelper;
import android.net.Uri;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.FallbackEventHandler;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneFallbackEventHandler implements FallbackEventHandler {
    private static final boolean DEBUG = false;
    private static String TAG = "PhoneFallbackEventHandler";
    AudioManager mAudioManager;
    Context mContext;
    KeyguardManager mKeyguardManager;
    SearchManager mSearchManager;
    TelephonyManager mTelephonyManager;
    View mView;

    public PhoneFallbackEventHandler(Context context) {
        this.mContext = context;
    }

    private void handleMediaKeyEvent(KeyEvent keyEvent) {
        MediaSessionLegacyHelper.getHelper(this.mContext).sendMediaButtonEvent(keyEvent, false);
    }

    private boolean isUserSetupComplete() {
        return Settings.Secure.getInt(this.mContext.getContentResolver(), Settings.Secure.USER_SETUP_COMPLETE, 0) != 0;
    }

    @Override // android.view.FallbackEventHandler
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        int keyCode = keyEvent.getKeyCode();
        return action == 0 ? onKeyDown(keyCode, keyEvent) : onKeyUp(keyCode, keyEvent);
    }

    public AudioManager getAudioManager() {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        }
        return this.mAudioManager;
    }

    public KeyguardManager getKeyguardManager() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = (KeyguardManager) this.mContext.getSystemService(Context.KEYGUARD_SERVICE);
        }
        return this.mKeyguardManager;
    }

    public SearchManager getSearchManager() {
        if (this.mSearchManager == null) {
            this.mSearchManager = (SearchManager) this.mContext.getSystemService("search");
        }
        return this.mSearchManager;
    }

    public TelephonyManager getTelephonyManager() {
        if (this.mTelephonyManager == null) {
            this.mTelephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        }
        return this.mTelephonyManager;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:45:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00af A[RETURN] */
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        KeyEvent.DispatcherState keyDispatcherState = this.mView.getKeyDispatcherState();
        if (i2 != 5) {
            if (i2 != 27) {
                if (i2 != 79 && i2 != 130) {
                    if (i2 != 164) {
                        if (i2 != 222) {
                            if (i2 != 24 && i2 != 25) {
                                if (i2 != 126 && i2 != 127) {
                                    switch (i2) {
                                        case 84:
                                            if (!getKeyguardManager().inKeyguardRestrictedInputMode() && keyDispatcherState != null) {
                                                if (keyEvent.getRepeatCount() == 0) {
                                                    keyDispatcherState.startTracking(keyEvent, this);
                                                } else if (keyEvent.isLongPress() && keyDispatcherState.isTracking(keyEvent)) {
                                                    Configuration configuration = this.mContext.getResources().getConfiguration();
                                                    if (configuration.keyboard == 1 || configuration.hardKeyboardHidden == 2) {
                                                        if (!isUserSetupComplete()) {
                                                            Log.i(TAG, "Not dispatching SEARCH long press because user setup is in progress.");
                                                        } else {
                                                            Intent intent = new Intent(Intent.ACTION_SEARCH_LONG_PRESS);
                                                            intent.setFlags(268435456);
                                                            try {
                                                                this.mView.performHapticFeedback(0);
                                                                sendCloseSystemWindows();
                                                                getSearchManager().stopSearch();
                                                                this.mContext.startActivity(intent);
                                                                keyDispatcherState.performedLongPress(keyEvent);
                                                                return true;
                                                            } catch (ActivityNotFoundException unused) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            break;
                                        case 85:
                                            if (getTelephonyManager().getCallState() != 0) {
                                                return true;
                                            }
                                            break;
                                    }
                                } else if (getTelephonyManager().getCallState() != 0) {
                                    return true;
                                }
                            }
                        }
                    }
                    MediaSessionLegacyHelper.getHelper(this.mContext).sendVolumeKeyEvent(keyEvent, Integer.MIN_VALUE, false);
                    return true;
                }
                handleMediaKeyEvent(keyEvent);
                return true;
            }
            if (!getKeyguardManager().inKeyguardRestrictedInputMode() && keyDispatcherState != null) {
                if (keyEvent.getRepeatCount() == 0) {
                    keyDispatcherState.startTracking(keyEvent, this);
                } else if (keyEvent.isLongPress() && keyDispatcherState.isTracking(keyEvent)) {
                    keyDispatcherState.performedLongPress(keyEvent);
                    if (isUserSetupComplete()) {
                        this.mView.performHapticFeedback(0);
                        sendCloseSystemWindows();
                        Intent intent2 = new Intent(Intent.ACTION_CAMERA_BUTTON, (Uri) null);
                        intent2.addFlags(268435456);
                        intent2.putExtra(Intent.EXTRA_KEY_EVENT, keyEvent);
                        this.mContext.sendOrderedBroadcastAsUser(intent2, UserHandle.CURRENT_OR_SELF, null, null, null, 0, null, null);
                    } else {
                        Log.i(TAG, "Not dispatching CAMERA long press because user setup is in progress.");
                    }
                }
                return true;
            }
        } else if (!getKeyguardManager().inKeyguardRestrictedInputMode() && keyDispatcherState != null) {
            if (keyEvent.getRepeatCount() == 0) {
                keyDispatcherState.startTracking(keyEvent, this);
            } else if (keyEvent.isLongPress() && keyDispatcherState.isTracking(keyEvent)) {
                keyDispatcherState.performedLongPress(keyEvent);
                if (isUserSetupComplete()) {
                    this.mView.performHapticFeedback(0);
                    Intent intent3 = new Intent(Intent.ACTION_VOICE_COMMAND);
                    intent3.setFlags(268435456);
                    try {
                        sendCloseSystemWindows();
                        this.mContext.startActivity(intent3);
                    } catch (ActivityNotFoundException unused2) {
                        startCallActivity();
                    }
                } else {
                    Log.i(TAG, "Not starting call activity because user setup is in progress.");
                }
            }
            return true;
        }
        return false;
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        KeyEvent.DispatcherState keyDispatcherState = this.mView.getKeyDispatcherState();
        if (keyDispatcherState != null) {
            keyDispatcherState.handleUpEvent(keyEvent);
        }
        if (i2 != 5) {
            if (i2 != 27) {
                if (i2 != 79 && i2 != 130) {
                    if (i2 != 164) {
                        if (i2 != 222) {
                            if (i2 != 24 && i2 != 25) {
                                if (i2 != 126 && i2 != 127) {
                                    switch (i2) {
                                    }
                                }
                            }
                        }
                    }
                    if (!keyEvent.isCanceled()) {
                        MediaSessionLegacyHelper.getHelper(this.mContext).sendVolumeKeyEvent(keyEvent, Integer.MIN_VALUE, false);
                    }
                    return true;
                }
                handleMediaKeyEvent(keyEvent);
                return true;
            }
            if (!getKeyguardManager().inKeyguardRestrictedInputMode()) {
                if (keyEvent.isTracking()) {
                    keyEvent.isCanceled();
                }
                return true;
            }
        } else if (!getKeyguardManager().inKeyguardRestrictedInputMode()) {
            if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                if (isUserSetupComplete()) {
                    startCallActivity();
                } else {
                    Log.i(TAG, "Not starting call activity because user setup is in progress.");
                }
            }
            return true;
        }
        return false;
    }

    @Override // android.view.FallbackEventHandler
    public void preDispatchKeyEvent(KeyEvent keyEvent) {
        getAudioManager().preDispatchKeyEvent(keyEvent, Integer.MIN_VALUE);
    }

    public void sendCloseSystemWindows() {
        PhoneWindow.sendCloseSystemWindows(this.mContext, null);
    }

    @Override // android.view.FallbackEventHandler
    public void setView(View view) {
        this.mView = view;
    }

    public void startCallActivity() {
        sendCloseSystemWindows();
        Intent intent = new Intent(Intent.ACTION_CALL_BUTTON);
        intent.setFlags(268435456);
        try {
            this.mContext.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Log.w(TAG, "No activity found for android.intent.action.CALL_BUTTON.");
        }
    }
}
