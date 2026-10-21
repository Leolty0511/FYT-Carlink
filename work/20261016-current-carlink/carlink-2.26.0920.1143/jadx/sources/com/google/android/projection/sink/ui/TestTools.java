package com.google.android.projection.sink.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.VideoSink;
import com.google.android.projection.sink.GalIntegration;
import com.google.android.projection.sink.InstrumentClusterListener;
import com.google.android.projection.sink.R;
import com.google.android.projection.sink.audio.AudioFocusManager;
import com.google.android.projection.sink.audio.NativeGuidancePlayer;
import com.google.android.projection.sink.audio.NativeMusicPlayer;
import com.google.android.projection.sink.debug.DebugContext;
import com.google.android.projection.sink.debug.SimulatedLocationProvider;
import com.google.android.projection.sink.navigation.NavigationFocusManager;
import com.google.android.projection.sink.sensors.SensorManager;
import com.google.android.projection.sink.settings.Settings;

/* JADX INFO: loaded from: classes3.dex */
public class TestTools {
    static final int[] KEYBOARD_LOCKOUT_BUTTON_IDS = {R.id.keyboard_lockout_auto, R.id.keyboard_lockout_force, R.id.keyboard_lockout_override};
    private static final int KEYBOARD_LOCKOUT_DISABLE_TIMEOUT = 300000;
    private static final String TAG = "AHU.MAIN_ACTIVITY";
    private final AudioFocusManager mAudioFocusManager;
    private final Context mContext;
    private TextView mCurrentSpeedView;
    private final DebugContext mDebugContext;
    private final LinearLayout mDebugLayout;
    private final View.OnTouchListener mDpadTouchListener;
    private final GalIntegration mGal;
    private final TextView mNativeBackgroundText;
    private final NativeGuidancePlayer mNativeGuidancePlayer;
    private final LinearLayout mNativeLayout;
    private final Button mNativeMusicPlay;
    private final NativeMusicPlayer mNativeMusicPlayer;
    private final Button mNativeMusicStop;
    private final ToggleButton mNavFocusToggle;
    private final NavigationFocusManager mNavigationFocusManager;
    private final View mRootView;
    private final SensorManager mSensorDispatcher;
    private final Settings mSettings;
    private View mSimulatedLocationControls;
    private final ToggleButton mVfToggle;
    private final NativePanelUpdateHandler mNativePanelUpdateHandler = new NativePanelUpdateHandler();
    private final Runnable mKeyboardLockoutRevert = new Runnable() { // from class: com.google.android.projection.sink.ui.TestTools.15
        @Override // java.lang.Runnable
        public void run() {
            TestTools testTools = TestTools.this;
            testTools.onKeyboardLockoutButtonClick(testTools.mRootView.findViewById(R.id.keyboard_lockout_auto));
        }
    };

    public class ButtonTouchListener implements View.OnTouchListener {
        private final int mKeyCode;

        public ButtonTouchListener(int i2) {
            this.mKeyCode = i2;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0 && actionMasked != 1) {
                return false;
            }
            TestTools.this.mGal.mainDisplayInputSource.sendKeyEvent(new KeyEvent(actionMasked, this.mKeyCode));
            return true;
        }
    }

    public class NativePanelUpdateHandler extends Handler {
        private Drawable mIcon;
        private String mLabel;

        private NativePanelUpdateHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                ToggleButton toggleButton = (ToggleButton) TestTools.this.mDebugLayout.findViewById(R.id.video_focus);
                toggleButton.setButtonDrawable(this.mIcon);
                toggleButton.setTextOn(((Object) toggleButton.getTextOn()) + " (" + this.mLabel + ")");
                toggleButton.setTextOff(((Object) toggleButton.getTextOff()) + " (" + this.mLabel + ")");
                if (toggleButton.isChecked()) {
                    toggleButton.setText(toggleButton.getTextOn());
                    return;
                } else {
                    toggleButton.setText(toggleButton.getTextOff());
                    return;
                }
            }
            if (i2 == 2) {
                String string = message.getData().getString(InstrumentClusterListener.NAVIGATION_STRING);
                byte[] byteArray = message.getData().getByteArray(InstrumentClusterListener.NAVIGATION_BITMAP);
                if (string != null) {
                    ((TextView) TestTools.this.mDebugLayout.findViewById(R.id.navigation_text)).setText(string);
                }
                if (byteArray != null) {
                    ((ImageView) TestTools.this.mDebugLayout.findViewById(R.id.navigation_image)).setImageBitmap(BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length));
                    return;
                }
                return;
            }
            if (i2 == 3) {
                String string2 = message.getData().getString(InstrumentClusterListener.MEDIA_STATUS_STRING);
                if (string2 != null) {
                    ((TextView) TestTools.this.mDebugLayout.findViewById(R.id.media_status_text)).setText(string2);
                }
                byte[] byteArray2 = message.getData().getByteArray(InstrumentClusterListener.MEDIA_ALBUM_ART);
                if (byteArray2 != null) {
                    ((ImageView) TestTools.this.mDebugLayout.findViewById(R.id.media_album_art)).setImageBitmap(BitmapFactory.decodeByteArray(byteArray2, 0, byteArray2.length));
                    return;
                }
                return;
            }
            if (i2 != 4) {
                if (i2 != 5) {
                    return;
                }
                String string3 = message.getData().getString(InstrumentClusterListener.PHONE_STATUS_STRING);
                if (string3 != null) {
                    ((TextView) TestTools.this.mDebugLayout.findViewById(R.id.phone_status_text)).setText(string3);
                }
                byte[] byteArray3 = message.getData().getByteArray(InstrumentClusterListener.PHONE_STATUS_PHOTO);
                ImageView imageView = (ImageView) TestTools.this.mDebugLayout.findViewById(R.id.phone_status_photo);
                if (byteArray3 == null) {
                    imageView.setVisibility(8);
                    return;
                }
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray3, 0, byteArray3.length);
                imageView.setVisibility(0);
                imageView.setImageBitmap(bitmapDecodeByteArray);
                return;
            }
            String string4 = message.getData().getString(InstrumentClusterListener.MEDIA_BROWSER_ROOT_STRING);
            if (string4 != null) {
                ((TextView) TestTools.this.mDebugLayout.findViewById(R.id.media_browser_root_text)).setText(string4);
            }
            String string5 = message.getData().getString(InstrumentClusterListener.MEDIA_BROWSER_SOURCE_STRING);
            if (string5 != null) {
                ((TextView) TestTools.this.mDebugLayout.findViewById(R.id.media_browser_source_text)).setText(string5);
            }
            String string6 = message.getData().getString(InstrumentClusterListener.MEDIA_BROWSER_LIST_STRING);
            if (string6 != null) {
                ((TextView) TestTools.this.mDebugLayout.findViewById(R.id.media_browser_list_text)).setText(string6);
            }
            String string7 = message.getData().getString(InstrumentClusterListener.MEDIA_BROWSER_SONG_STRING);
            if (string7 != null) {
                ((TextView) TestTools.this.mDebugLayout.findViewById(R.id.media_browser_song_text)).setText(string7);
            }
        }

        public void setApplicationIcon(Drawable drawable, String str) {
            this.mIcon = drawable;
            this.mLabel = str;
            sendEmptyMessage(1);
        }
    }

    public TestTools(Context context, DebugContext debugContext, GalIntegration galIntegration, AudioFocusManager audioFocusManager, NavigationFocusManager navigationFocusManager, SensorManager sensorManager, View view) {
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.google.android.projection.sink.ui.TestTools.20
            /* JADX WARN: Code duplicated, block: B:39:0x0074  */
            /* JADX WARN: Code duplicated, block: B:40:0x0085 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:41:0x0087  */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                int number;
                int i2;
                int actionMasked = motionEvent.getActionMasked();
                boolean z2 = true;
                boolean z3 = false;
                if (actionMasked != 0 && actionMasked != 1) {
                    return false;
                }
                int id = view2.getId();
                if (id == R.id.dpad_up) {
                    number = 19;
                } else if (id == R.id.dpad_down) {
                    number = 20;
                } else if (id == R.id.dpad_left) {
                    number = 21;
                } else {
                    if (id != R.id.dpad_right) {
                        if (id == R.id.dpad_center) {
                            number = 23;
                        } else if (id == R.id.rotary_ccw) {
                            number = Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber();
                            i2 = -1;
                        } else if (id == R.id.rotary_cw) {
                            number = Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber();
                            i2 = 1;
                        } else if (id == R.id.rotary_ccw_fling) {
                            number = Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber();
                            i2 = -5;
                        } else if (id == R.id.rotary_cw_fling) {
                            number = Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber();
                            i2 = 5;
                        } else {
                            number = 0;
                            i2 = 0;
                            z3 = true;
                            z2 = false;
                        }
                        if (z2 && TestTools.this.mGal != null) {
                            if (z3) {
                                TestTools.this.mGal.mainDisplayInputSource.sendKeyEvent(new KeyEvent(actionMasked, number));
                            } else if (actionMasked == 0) {
                                TestTools.this.mGal.mainDisplayInputSource.sendRelativeEvent(number, i2);
                            }
                        }
                        return z2;
                    }
                    number = 22;
                }
                i2 = 0;
                z3 = true;
                if (z2) {
                    if (z3) {
                        TestTools.this.mGal.mainDisplayInputSource.sendKeyEvent(new KeyEvent(actionMasked, number));
                    } else if (actionMasked == 0) {
                        TestTools.this.mGal.mainDisplayInputSource.sendRelativeEvent(number, i2);
                    }
                }
                return z2;
            }
        };
        this.mDpadTouchListener = onTouchListener;
        this.mContext = context;
        this.mDebugContext = debugContext;
        this.mGal = galIntegration;
        Settings settings = new Settings(context);
        this.mSettings = settings;
        this.mAudioFocusManager = audioFocusManager;
        this.mNavigationFocusManager = navigationFocusManager;
        this.mSensorDispatcher = sensorManager;
        this.mRootView = view;
        this.mNativeLayout = (LinearLayout) view.findViewById(R.id.native_layout);
        this.mNativeBackgroundText = (TextView) view.findViewById(R.id.native_text);
        this.mNativeMusicPlayer = NativeMusicPlayer.createMusicPlayer(context, audioFocusManager, R.raw.john_harrison_with_the_wichita_state_university_chamber_players_05_summer_mvt_2_adagio);
        this.mNativeGuidancePlayer = NativeGuidancePlayer.createGuidancePlayer(context, audioFocusManager, R.raw.alarm_classic);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.tools);
        this.mDebugLayout = linearLayout;
        linearLayout.setVisibility(4);
        ToggleButton toggleButton = (ToggleButton) view.findViewById(R.id.video_focus);
        this.mVfToggle = toggleButton;
        toggleButton.setChecked(true);
        toggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.google.android.projection.sink.ui.TestTools.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                TestTools.this.mGal.mainDisplayVideoSink.setVideoFocus(z2 ? VideoSink.VIDEO_FOCUS_PROJECTED : VideoSink.VIDEO_FOCUS_NATIVE, -1, true);
            }
        });
        ToggleButton toggleButton2 = (ToggleButton) view.findViewById(R.id.audio_focus);
        toggleButton2.setChecked(true);
        toggleButton2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.google.android.projection.sink.ui.TestTools.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                if (TestTools.this.mAudioFocusManager != null) {
                    if (z2) {
                        TestTools.this.mAudioFocusManager.enablePhoneFocus();
                    } else {
                        TestTools.this.mAudioFocusManager.disablePhoneFocus();
                    }
                }
            }
        });
        ((Button) view.findViewById(R.id.native_transient_audio)).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TestTools.this.mNativeGuidancePlayer != null) {
                    TestTools.this.mNativeGuidancePlayer.play();
                }
            }
        });
        Button button = (Button) view.findViewById(R.id.native_music_play);
        this.mNativeMusicPlay = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TestTools.this.mNativeMusicPlayer != null) {
                    Log.i("AHU.MAIN_ACTIVITY", "play native music");
                    TestTools.this.mNativeMusicPlayer.play();
                }
            }
        });
        Button button2 = (Button) view.findViewById(R.id.native_music_stop);
        this.mNativeMusicStop = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TestTools.this.mNativeMusicPlayer != null) {
                    Log.i("AHU.MAIN_ACTIVITY", "stop native music");
                    TestTools.this.mNativeMusicPlayer.stop();
                }
            }
        });
        ToggleButton toggleButton3 = (ToggleButton) view.findViewById(R.id.nav_focus);
        this.mNavFocusToggle = toggleButton3;
        toggleButton3.setChecked(false);
        toggleButton3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.google.android.projection.sink.ui.TestTools.6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                TestTools.this.mNavigationFocusManager.enforceNavigationFocus(!z2);
            }
        });
        if (!settings.isRotaryControllerEnabled()) {
            view.findViewById(R.id.sim_dpad).setVisibility(8);
        }
        ((Button) view.findViewById(R.id.dpad_up)).setOnTouchListener(onTouchListener);
        ((Button) view.findViewById(R.id.dpad_down)).setOnTouchListener(onTouchListener);
        ((Button) view.findViewById(R.id.dpad_left)).setOnTouchListener(onTouchListener);
        ((Button) view.findViewById(R.id.dpad_right)).setOnTouchListener(onTouchListener);
        ((Button) view.findViewById(R.id.dpad_center)).setOnTouchListener(onTouchListener);
        ((Button) view.findViewById(R.id.rotary_cw)).setOnTouchListener(onTouchListener);
        ((Button) view.findViewById(R.id.rotary_ccw)).setOnTouchListener(onTouchListener);
        ((Button) view.findViewById(R.id.rotary_cw_fling)).setOnTouchListener(onTouchListener);
        ((Button) view.findViewById(R.id.rotary_ccw_fling)).setOnTouchListener(onTouchListener);
        view.findViewById(R.id.touchpad).setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.projection.sink.ui.TestTools.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (TestTools.this.mGal == null) {
                    return true;
                }
                TestTools.this.mGal.mainDisplayInputSource.sendTouchPadEvent(motionEvent);
                return true;
            }
        });
        ((Button) view.findViewById(R.id.call)).setOnTouchListener(new ButtonTouchListener(5));
        ((Button) view.findViewById(R.id.end_call)).setOnTouchListener(new ButtonTouchListener(6));
        ((Button) view.findViewById(R.id.media_prev)).setOnTouchListener(new ButtonTouchListener(88));
        ((Button) view.findViewById(R.id.media_next)).setOnTouchListener(new ButtonTouchListener(87));
        ((Button) view.findViewById(R.id.media_play)).setOnTouchListener(new ButtonTouchListener(126));
        ((Button) view.findViewById(R.id.media_pause)).setOnTouchListener(new ButtonTouchListener(127));
        ((Button) view.findViewById(R.id.media_play_pause)).setOnTouchListener(new ButtonTouchListener(85));
        ((Button) view.findViewById(R.id.bvra_button)).setOnTouchListener(new ButtonTouchListener(84));
        ((Button) view.findViewById(R.id.media_button)).setOnTouchListener(new ButtonTouchListener(209));
        ((Button) view.findViewById(R.id.tel_button)).setOnTouchListener(new ButtonTouchListener(Protos.KeyCode.KEYCODE_TEL.getNumber()));
        ((Button) view.findViewById(R.id.nav_button)).setOnTouchListener(new ButtonTouchListener(Protos.KeyCode.KEYCODE_NAVIGATION.getNumber()));
        ((Button) view.findViewById(R.id.back_button)).setOnTouchListener(new ButtonTouchListener(4));
        ((Button) view.findViewById(R.id.byebye_button)).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                TestTools.this.mGal.galReceiver.sendByeByeRequest(1);
            }
        });
        ((Button) view.findViewById(R.id.disconnect_gvve_button)).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (TestTools.this.mGal.galVerificationVendorExtension != null) {
                    TestTools.this.mGal.galVerificationVendorExtension.closeChannel();
                }
            }
        });
        for (int i2 : KEYBOARD_LOCKOUT_BUTTON_IDS) {
            ((ToggleButton) this.mRootView.findViewById(i2)).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TestTools.this.onKeyboardLockoutButtonClick(view2);
                }
            });
        }
        Button button3 = (Button) this.mRootView.findViewById(R.id.bluetooth_pairing_response_button);
        button3.setEnabled(false);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                TestTools.this.mGal.bluetooth.onReadyForPairing(((ToggleButton) TestTools.this.mDebugLayout.findViewById(R.id.bluetooth_already_paired_toggle)).isChecked());
            }
        });
        Button button4 = (Button) this.mRootView.findViewById(R.id.bluetooth_auth_data_button);
        button4.setEnabled(false);
        button4.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                TestTools.this.mGal.bluetooth.sendAuthData(((EditText) TestTools.this.mDebugLayout.findViewById(R.id.bluetooth_auth_data_text)).getText().toString(), 2);
            }
        });
        if (this.mSettings.isGpsSimulationEnabled()) {
            initializeSimulatorSpeedControls();
        }
        this.mNavigationFocusManager.registerListener(new NavigationFocusManager.NavigationFocusListener() { // from class: com.google.android.projection.sink.ui.TestTools.13
            @Override // com.google.android.projection.sink.navigation.NavigationFocusManager.NavigationFocusListener
            public void onNavigationFocusChanged(boolean z2) {
                TestTools.this.mNavFocusToggle.setChecked(!z2);
            }
        });
        final int[] iArr = {R.id.night_mode_auto, R.id.night_mode_day, R.id.night_mode_night};
        for (int i3 = 0; i3 < 3; i3++) {
            ((ToggleButton) this.mRootView.findViewById(iArr[i3])).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int[] iArr2 = iArr;
                    int length = iArr2.length;
                    for (int i4 = 0; i4 < length; i4++) {
                        int i5 = iArr2[i4];
                        ((ToggleButton) TestTools.this.mRootView.findViewById(i5)).setChecked(i5 == view2.getId());
                    }
                    if (view2.getId() == R.id.night_mode_auto) {
                        TestTools.this.mGal.galVerificationVendorExtension.overrideNightMode(null);
                    } else if (view2.getId() == R.id.night_mode_day) {
                        TestTools.this.mGal.galVerificationVendorExtension.overrideNightMode(Boolean.FALSE);
                    } else if (view2.getId() == R.id.night_mode_night) {
                        TestTools.this.mGal.galVerificationVendorExtension.overrideNightMode(Boolean.TRUE);
                    }
                }
            });
        }
    }

    private void initializeSimulatorSpeedControls() {
        View viewFindViewById = this.mDebugLayout.findViewById(R.id.simulated_location_controls);
        this.mSimulatedLocationControls = viewFindViewById;
        viewFindViewById.setClickable(true);
        this.mCurrentSpeedView = (TextView) this.mSimulatedLocationControls.findViewById(R.id.simulated_location_current_speed);
        updateSpeedControls(0);
        this.mSimulatedLocationControls.findViewById(R.id.simulated_location_faster).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TestTools.this.mDebugContext.getSimulatedLocationProvider().increaseSimulationSpeed();
            }
        });
        this.mSimulatedLocationControls.findViewById(R.id.simulated_location_slower).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TestTools.this.mDebugContext.getSimulatedLocationProvider().decreaseSimulationSpeed();
            }
        });
        this.mSimulatedLocationControls.findViewById(R.id.simulated_location_reset).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.projection.sink.ui.TestTools.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TestTools.this.mDebugContext.getSimulatedLocationProvider().resetSimulation();
            }
        });
        this.mSimulatedLocationControls.setVisibility(0);
        this.mDebugContext.getSimulatedLocationProvider().registerUiListener(new SimulatedLocationProvider.UiListener() { // from class: com.google.android.projection.sink.ui.TestTools.19
            @Override // com.google.android.projection.sink.debug.SimulatedLocationProvider.UiListener
            public void onSpeedChanged(int i2) {
                TestTools.this.updateSpeedControls(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeyboardLockoutButtonClick(View view) {
        this.mNativePanelUpdateHandler.removeCallbacks(this.mKeyboardLockoutRevert);
        if (view.getId() == R.id.keyboard_lockout_auto) {
            this.mDebugContext.setKeyboardLockoutMode(0);
        } else if (view.getId() == R.id.keyboard_lockout_force) {
            this.mDebugContext.setKeyboardLockoutMode(1);
        } else if (view.getId() == R.id.keyboard_lockout_override) {
            this.mDebugContext.setKeyboardLockoutMode(2);
            this.mNativePanelUpdateHandler.postDelayed(this.mKeyboardLockoutRevert, 300000L);
        }
        updateKeyboardLockoutUi();
        this.mSensorDispatcher.reportAvailable(13);
    }

    private void updateKeyboardLockoutUi() {
        ((ToggleButton) this.mRootView.findViewById(R.id.keyboard_lockout_auto)).setChecked(this.mDebugContext.getKeyboardLockoutMode() == 0);
        ((ToggleButton) this.mRootView.findViewById(R.id.keyboard_lockout_force)).setChecked(this.mDebugContext.getKeyboardLockoutMode() == 1);
        ((ToggleButton) this.mRootView.findViewById(R.id.keyboard_lockout_override)).setChecked(this.mDebugContext.getKeyboardLockoutMode() == 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpeedControls(int i2) {
        if (this.mCurrentSpeedView == null) {
            return;
        }
        this.mCurrentSpeedView.setText(i2 == 0 ? this.mContext.getString(R.string.simulated_location_stopped) : String.format(this.mContext.getString(R.string.simulated_location_format), Integer.valueOf(i2)));
    }

    public void forceKeyboardLockoutOverride() {
        this.mNativePanelUpdateHandler.removeCallbacks(this.mKeyboardLockoutRevert);
        this.mDebugContext.setKeyboardLockoutMode(2);
        updateKeyboardLockoutUi();
    }

    public Handler getTestUiUpdateHandler() {
        return this.mNativePanelUpdateHandler;
    }

    public void setApplicationIcon(Drawable drawable, String str) {
        this.mNativePanelUpdateHandler.setApplicationIcon(drawable, str);
    }

    public void setNativeContentEnabled(boolean z2, String str) {
        this.mVfToggle.setChecked(!z2);
        this.mNativeBackgroundText.setText(str);
        this.mNativeLayout.setVisibility(z2 ? 0 : 8);
    }

    public void toggleDebugToolbarVisibility() {
        if (this.mDebugLayout.getVisibility() == 0) {
            this.mDebugLayout.setVisibility(4);
        } else {
            this.mDebugLayout.setVisibility(0);
        }
    }
}
