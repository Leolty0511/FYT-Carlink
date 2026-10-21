package android.view;

import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final class InputEventConsistencyVerifier {
    private static final String EVENT_TYPE_GENERIC_MOTION = "GenericMotionEvent";
    private static final String EVENT_TYPE_KEY = "KeyEvent";
    private static final String EVENT_TYPE_TOUCH = "TouchEvent";
    private static final String EVENT_TYPE_TRACKBALL = "TrackballEvent";
    public static final int FLAG_RAW_DEVICE_INPUT = 1;
    private static final boolean IS_ENG_BUILD = Build.IS_ENG;
    private static final int RECENT_EVENTS_TO_LOG = 5;
    private int mButtonsPressed;
    private final Object mCaller;
    private InputEvent mCurrentEvent;
    private String mCurrentEventType;
    private final int mFlags;
    private boolean mHoverEntered;
    private KeyState mKeyStateList;
    private int mLastEventSeq;
    private String mLastEventType;
    private int mLastNestingLevel;
    private final String mLogTag;
    private int mMostRecentEventIndex;
    private InputEvent[] mRecentEvents;
    private boolean[] mRecentEventsUnhandled;
    private int mTouchEventStreamDeviceId;
    private boolean mTouchEventStreamIsTainted;
    private int mTouchEventStreamPointers;
    private int mTouchEventStreamSource;
    private boolean mTouchEventStreamUnhandled;
    private boolean mTrackballDown;
    private boolean mTrackballUnhandled;
    private StringBuilder mViolationMessage;

    public static final class KeyState {
        private static KeyState mRecycledList;
        private static Object mRecycledListLock = new Object();
        public int deviceId;
        public int keyCode;
        public KeyState next;
        public int source;
        public boolean unhandled;

        private KeyState() {
        }

        public static KeyState obtain(int i2, int i3, int i4) {
            KeyState keyState;
            synchronized (mRecycledListLock) {
                keyState = mRecycledList;
                if (keyState != null) {
                    mRecycledList = keyState.next;
                } else {
                    keyState = new KeyState();
                }
            }
            keyState.deviceId = i2;
            keyState.source = i3;
            keyState.keyCode = i4;
            keyState.unhandled = false;
            return keyState;
        }

        public void recycle() {
            synchronized (mRecycledListLock) {
                KeyState keyState = mRecycledList;
                this.next = keyState;
                mRecycledList = keyState;
            }
        }
    }

    public InputEventConsistencyVerifier(Object obj, int i2) {
        this(obj, i2, null);
    }

    private void addKeyState(int i2, int i3, int i4) {
        KeyState keyStateObtain = KeyState.obtain(i2, i3, i4);
        keyStateObtain.next = this.mKeyStateList;
        this.mKeyStateList = keyStateObtain;
    }

    private static void appendEvent(StringBuilder sb, int i2, InputEvent inputEvent, boolean z2) {
        sb.append(i2);
        sb.append(": sent at ");
        sb.append(inputEvent.getEventTimeNano());
        sb.append(", ");
        if (z2) {
            sb.append("(unhandled) ");
        }
        sb.append(inputEvent);
    }

    private void ensureActionButtonIsNonZeroForThisAction(MotionEvent motionEvent) {
        if (motionEvent.getActionButton() == 0) {
            problem("No action button set. Action button should always be non-zero for " + MotionEvent.actionToString(motionEvent.getAction()));
        }
    }

    private void ensureHistorySizeIsZeroForThisAction(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        if (historySize != 0) {
            StringBuilder sbS = android.accessibilityservice.c.s("History size is ", historySize, " but it should always be 0 for ");
            sbS.append(MotionEvent.actionToString(motionEvent.getAction()));
            problem(sbS.toString());
        }
    }

    private void ensureMetaStateIsNormalized(int i2) {
        int iNormalizeMetaState = KeyEvent.normalizeMetaState(i2);
        if (iNormalizeMetaState != i2) {
            problem(String.format("Metastate not normalized.  Was 0x%08x but expected 0x%08x.", Integer.valueOf(i2), Integer.valueOf(iNormalizeMetaState)));
        }
    }

    private void ensurePointerCountIsOneForThisAction(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        if (pointerCount != 1) {
            StringBuilder sbS = android.accessibilityservice.c.s("Pointer count is ", pointerCount, " but it should always be 1 for ");
            sbS.append(MotionEvent.actionToString(motionEvent.getAction()));
            problem(sbS.toString());
        }
    }

    private KeyState findKeyState(int i2, int i3, int i4, boolean z2) {
        KeyState keyState = null;
        for (KeyState keyState2 = this.mKeyStateList; keyState2 != null; keyState2 = keyState2.next) {
            if (keyState2.deviceId == i2 && keyState2.source == i3 && keyState2.keyCode == i4) {
                if (z2) {
                    if (keyState != null) {
                        keyState.next = keyState2.next;
                    } else {
                        this.mKeyStateList = keyState2.next;
                    }
                    keyState2.next = null;
                }
                return keyState2;
            }
            keyState = keyState2;
        }
        return null;
    }

    private void finishEvent() {
        StringBuilder sb = this.mViolationMessage;
        if (sb != null && sb.length() != 0) {
            if (!this.mCurrentEvent.isTainted()) {
                StringBuilder sb2 = this.mViolationMessage;
                sb2.append("\n  in ");
                sb2.append(this.mCaller);
                this.mViolationMessage.append("\n  ");
                appendEvent(this.mViolationMessage, 0, this.mCurrentEvent, false);
                if (this.mRecentEvents != null) {
                    this.mViolationMessage.append("\n  -- recent events --");
                    int i2 = 0;
                    while (i2 < 5) {
                        int i3 = ((this.mMostRecentEventIndex + 5) - i2) % 5;
                        InputEvent inputEvent = this.mRecentEvents[i3];
                        if (inputEvent == null) {
                            break;
                        }
                        this.mViolationMessage.append("\n  ");
                        i2++;
                        appendEvent(this.mViolationMessage, i2, inputEvent, this.mRecentEventsUnhandled[i3]);
                    }
                }
                Log.d(this.mLogTag, this.mViolationMessage.toString());
                this.mCurrentEvent.setTainted(true);
            }
            this.mViolationMessage.setLength(0);
        }
        if (this.mRecentEvents == null) {
            this.mRecentEvents = new InputEvent[5];
            this.mRecentEventsUnhandled = new boolean[5];
        }
        int i4 = (this.mMostRecentEventIndex + 1) % 5;
        this.mMostRecentEventIndex = i4;
        InputEvent inputEvent2 = this.mRecentEvents[i4];
        if (inputEvent2 != null) {
            inputEvent2.recycle();
        }
        this.mRecentEvents[i4] = this.mCurrentEvent.copy();
        this.mRecentEventsUnhandled[i4] = false;
        this.mCurrentEvent = null;
        this.mCurrentEventType = null;
    }

    public static boolean isInstrumentationEnabled() {
        return IS_ENG_BUILD;
    }

    private void problem(String str) {
        if (this.mViolationMessage == null) {
            this.mViolationMessage = new StringBuilder();
        }
        if (this.mViolationMessage.length() == 0) {
            StringBuilder sb = this.mViolationMessage;
            sb.append(this.mCurrentEventType);
            sb.append(": ");
        } else {
            this.mViolationMessage.append("\n  ");
        }
        this.mViolationMessage.append(str);
    }

    private boolean startEvent(InputEvent inputEvent, int i2, String str) {
        int sequenceNumber = inputEvent.getSequenceNumber();
        if (sequenceNumber == this.mLastEventSeq && i2 < this.mLastNestingLevel && str == this.mLastEventType) {
            return false;
        }
        if (i2 > 0) {
            this.mLastEventSeq = sequenceNumber;
            this.mLastEventType = str;
            this.mLastNestingLevel = i2;
        } else {
            this.mLastEventSeq = -1;
            this.mLastEventType = null;
            this.mLastNestingLevel = 0;
        }
        this.mCurrentEvent = inputEvent;
        this.mCurrentEventType = str;
        return true;
    }

    public void onGenericMotionEvent(MotionEvent motionEvent, int i2) {
        if (startEvent(motionEvent, i2, EVENT_TYPE_GENERIC_MOTION)) {
            try {
                ensureMetaStateIsNormalized(motionEvent.getMetaState());
                int action = motionEvent.getAction();
                int source = motionEvent.getSource();
                int buttonState = motionEvent.getButtonState();
                int actionButton = motionEvent.getActionButton();
                if ((source & 2) != 0) {
                    switch (action) {
                        case 7:
                            ensurePointerCountIsOneForThisAction(motionEvent);
                            break;
                        case 8:
                            ensureHistorySizeIsZeroForThisAction(motionEvent);
                            ensurePointerCountIsOneForThisAction(motionEvent);
                            break;
                        case 9:
                            ensurePointerCountIsOneForThisAction(motionEvent);
                            this.mHoverEntered = true;
                            break;
                        case 10:
                            ensurePointerCountIsOneForThisAction(motionEvent);
                            if (!this.mHoverEntered) {
                                problem("ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER");
                            }
                            this.mHoverEntered = false;
                            break;
                        case 11:
                            ensureActionButtonIsNonZeroForThisAction(motionEvent);
                            if ((this.mButtonsPressed & actionButton) != 0) {
                                problem("Action button for ACTION_BUTTON_PRESS event is " + actionButton + ", but it has already been pressed and has yet to be released.");
                            }
                            int i3 = this.mButtonsPressed | actionButton;
                            this.mButtonsPressed = i3;
                            if (actionButton == 32 && (buttonState & 2) != 0) {
                                this.mButtonsPressed = i3 | 2;
                            } else if (actionButton == 64 && (buttonState & 4) != 0) {
                                this.mButtonsPressed = i3 | 4;
                            }
                            if (this.mButtonsPressed != buttonState) {
                                problem(String.format("Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x.", Integer.valueOf(buttonState), Integer.valueOf(this.mButtonsPressed)));
                            }
                            break;
                        case 12:
                            ensureActionButtonIsNonZeroForThisAction(motionEvent);
                            if ((this.mButtonsPressed & actionButton) != actionButton) {
                                problem("Action button for ACTION_BUTTON_RELEASE event is " + actionButton + ", but it was either never pressed or has already been released.");
                            }
                            int i4 = this.mButtonsPressed & (~actionButton);
                            this.mButtonsPressed = i4;
                            if (actionButton == 32 && (buttonState & 2) == 0) {
                                this.mButtonsPressed = i4 & (-3);
                            } else if (actionButton == 64 && (buttonState & 4) == 0) {
                                this.mButtonsPressed = i4 & (-5);
                            }
                            if (this.mButtonsPressed != buttonState) {
                                problem(String.format("Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x.", Integer.valueOf(buttonState), Integer.valueOf(this.mButtonsPressed)));
                            }
                            break;
                        default:
                            problem("Invalid action for generic pointer event.");
                            break;
                    }
                } else if ((source & 16) != 0) {
                    if (action != 2) {
                        problem("Invalid action for generic joystick event.");
                    } else {
                        ensurePointerCountIsOneForThisAction(motionEvent);
                    }
                }
            } finally {
                finishEvent();
            }
        }
    }

    public void onInputEvent(InputEvent inputEvent, int i2) {
        if (inputEvent instanceof KeyEvent) {
            onKeyEvent((KeyEvent) inputEvent, i2);
            return;
        }
        MotionEvent motionEvent = (MotionEvent) inputEvent;
        if (motionEvent.isTouchEvent()) {
            onTouchEvent(motionEvent, i2);
        } else if ((motionEvent.getSource() & 4) != 0) {
            onTrackballEvent(motionEvent, i2);
        } else {
            onGenericMotionEvent(motionEvent, i2);
        }
    }

    public void onKeyEvent(KeyEvent keyEvent, int i2) {
        if (startEvent(keyEvent, i2, EVENT_TYPE_KEY)) {
            try {
                ensureMetaStateIsNormalized(keyEvent.getMetaState());
                int action = keyEvent.getAction();
                int deviceId = keyEvent.getDeviceId();
                int source = keyEvent.getSource();
                int keyCode = keyEvent.getKeyCode();
                if (action == 0) {
                    KeyState keyStateFindKeyState = findKeyState(deviceId, source, keyCode, false);
                    if (keyStateFindKeyState == null) {
                        addKeyState(deviceId, source, keyCode);
                    } else if (keyStateFindKeyState.unhandled) {
                        keyStateFindKeyState.unhandled = false;
                    } else if ((this.mFlags & 1) == 0 && keyEvent.getRepeatCount() == 0) {
                        problem("ACTION_DOWN but key is already down and this event is not a key repeat.");
                    }
                } else if (action == 1) {
                    KeyState keyStateFindKeyState2 = findKeyState(deviceId, source, keyCode, true);
                    if (keyStateFindKeyState2 == null) {
                        problem("ACTION_UP but key was not down.");
                    } else {
                        keyStateFindKeyState2.recycle();
                    }
                } else if (action != 2) {
                    problem("Invalid action " + KeyEvent.actionToString(action) + " for key event.");
                }
            } finally {
                finishEvent();
            }
        }
    }

    public void onTouchEvent(MotionEvent motionEvent, int i2) {
        int i3;
        if (startEvent(motionEvent, i2, EVENT_TYPE_TOUCH)) {
            int action = motionEvent.getAction();
            boolean z2 = action == 0 || action == 3 || action == 4;
            if (z2 && (this.mTouchEventStreamIsTainted || this.mTouchEventStreamUnhandled)) {
                this.mTouchEventStreamIsTainted = false;
                this.mTouchEventStreamUnhandled = false;
                this.mTouchEventStreamPointers = 0;
            }
            if (this.mTouchEventStreamIsTainted) {
                motionEvent.setTainted(true);
            }
            try {
                ensureMetaStateIsNormalized(motionEvent.getMetaState());
                int deviceId = motionEvent.getDeviceId();
                int source = motionEvent.getSource();
                if (!z2 && (i3 = this.mTouchEventStreamDeviceId) != -1 && (i3 != deviceId || this.mTouchEventStreamSource != source)) {
                    problem("Touch event stream contains events from multiple sources: previous device id " + this.mTouchEventStreamDeviceId + ", previous source " + Integer.toHexString(this.mTouchEventStreamSource) + ", new device id " + deviceId + ", new source " + Integer.toHexString(source));
                }
                this.mTouchEventStreamDeviceId = deviceId;
                this.mTouchEventStreamSource = source;
                int pointerCount = motionEvent.getPointerCount();
                if ((source & 2) == 0) {
                    problem("Source was not SOURCE_CLASS_POINTER.");
                } else if (action == 0) {
                    if (this.mTouchEventStreamPointers != 0) {
                        problem("ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture.");
                    }
                    ensureHistorySizeIsZeroForThisAction(motionEvent);
                    ensurePointerCountIsOneForThisAction(motionEvent);
                    this.mTouchEventStreamPointers = 1 << motionEvent.getPointerId(0);
                } else if (action == 1) {
                    ensureHistorySizeIsZeroForThisAction(motionEvent);
                    ensurePointerCountIsOneForThisAction(motionEvent);
                    this.mTouchEventStreamPointers = 0;
                    this.mTouchEventStreamIsTainted = false;
                } else if (action == 2) {
                    int iBitCount = Integer.bitCount(this.mTouchEventStreamPointers);
                    if (pointerCount != iBitCount) {
                        problem("ACTION_MOVE contained " + pointerCount + " pointers but there are currently " + iBitCount + " pointers down.");
                        this.mTouchEventStreamIsTainted = true;
                    }
                } else if (action == 3) {
                    this.mTouchEventStreamPointers = 0;
                    this.mTouchEventStreamIsTainted = false;
                } else if (action != 4) {
                    int actionMasked = motionEvent.getActionMasked();
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionMasked == 5) {
                        if (this.mTouchEventStreamPointers == 0) {
                            problem("ACTION_POINTER_DOWN but no other pointers were down.");
                            this.mTouchEventStreamIsTainted = true;
                        }
                        if (actionIndex < 0 || actionIndex >= pointerCount) {
                            problem("ACTION_POINTER_DOWN index is " + actionIndex + " but the pointer count is " + pointerCount + ".");
                            this.mTouchEventStreamIsTainted = true;
                        } else {
                            int pointerId = motionEvent.getPointerId(actionIndex);
                            int i4 = 1 << pointerId;
                            int i5 = this.mTouchEventStreamPointers;
                            if ((i5 & i4) != 0) {
                                problem("ACTION_POINTER_DOWN specified pointer id " + pointerId + " which is already down.");
                                this.mTouchEventStreamIsTainted = true;
                            } else {
                                this.mTouchEventStreamPointers = i5 | i4;
                            }
                        }
                        ensureHistorySizeIsZeroForThisAction(motionEvent);
                    } else if (actionMasked == 6) {
                        if (actionIndex < 0 || actionIndex >= pointerCount) {
                            problem("ACTION_POINTER_UP index is " + actionIndex + " but the pointer count is " + pointerCount + ".");
                            this.mTouchEventStreamIsTainted = true;
                        } else {
                            int pointerId2 = motionEvent.getPointerId(actionIndex);
                            int i6 = 1 << pointerId2;
                            int i7 = this.mTouchEventStreamPointers;
                            if ((i7 & i6) == 0) {
                                problem("ACTION_POINTER_UP specified pointer id " + pointerId2 + " which is not currently down.");
                                this.mTouchEventStreamIsTainted = true;
                            } else {
                                this.mTouchEventStreamPointers = (~i6) & i7;
                            }
                        }
                        ensureHistorySizeIsZeroForThisAction(motionEvent);
                    } else {
                        problem("Invalid action " + MotionEvent.actionToString(action) + " for touch event.");
                    }
                } else {
                    if (this.mTouchEventStreamPointers != 0) {
                        problem("ACTION_OUTSIDE but pointers are still down.");
                    }
                    ensureHistorySizeIsZeroForThisAction(motionEvent);
                    ensurePointerCountIsOneForThisAction(motionEvent);
                    this.mTouchEventStreamIsTainted = false;
                }
            } finally {
                finishEvent();
            }
        }
    }

    public void onTrackballEvent(MotionEvent motionEvent, int i2) {
        if (startEvent(motionEvent, i2, EVENT_TYPE_TRACKBALL)) {
            try {
                ensureMetaStateIsNormalized(motionEvent.getMetaState());
                int action = motionEvent.getAction();
                if ((motionEvent.getSource() & 4) != 0) {
                    if (action == 0) {
                        if (!this.mTrackballDown || this.mTrackballUnhandled) {
                            this.mTrackballDown = true;
                            this.mTrackballUnhandled = false;
                        } else {
                            problem("ACTION_DOWN but trackball is already down.");
                        }
                        ensureHistorySizeIsZeroForThisAction(motionEvent);
                        ensurePointerCountIsOneForThisAction(motionEvent);
                    } else if (action == 1) {
                        if (this.mTrackballDown) {
                            this.mTrackballDown = false;
                            this.mTrackballUnhandled = false;
                        } else {
                            problem("ACTION_UP but trackball is not down.");
                        }
                        ensureHistorySizeIsZeroForThisAction(motionEvent);
                        ensurePointerCountIsOneForThisAction(motionEvent);
                    } else if (action != 2) {
                        problem("Invalid action " + MotionEvent.actionToString(action) + " for trackball event.");
                    } else {
                        ensurePointerCountIsOneForThisAction(motionEvent);
                    }
                    if (this.mTrackballDown && motionEvent.getPressure() <= 0.0f) {
                        problem("Trackball is down but pressure is not greater than 0.");
                    } else if (!this.mTrackballDown && motionEvent.getPressure() != 0.0f) {
                        problem("Trackball is up but pressure is not equal to 0.");
                    }
                } else {
                    problem("Source was not SOURCE_CLASS_TRACKBALL.");
                }
            } finally {
                finishEvent();
            }
        }
    }

    public void onUnhandledEvent(InputEvent inputEvent, int i2) {
        if (i2 != this.mLastNestingLevel) {
            return;
        }
        boolean[] zArr = this.mRecentEventsUnhandled;
        if (zArr != null) {
            zArr[this.mMostRecentEventIndex] = true;
        }
        if (inputEvent instanceof KeyEvent) {
            KeyEvent keyEvent = (KeyEvent) inputEvent;
            KeyState keyStateFindKeyState = findKeyState(keyEvent.getDeviceId(), keyEvent.getSource(), keyEvent.getKeyCode(), false);
            if (keyStateFindKeyState != null) {
                keyStateFindKeyState.unhandled = true;
                return;
            }
            return;
        }
        MotionEvent motionEvent = (MotionEvent) inputEvent;
        if (motionEvent.isTouchEvent()) {
            this.mTouchEventStreamUnhandled = true;
        } else {
            if ((motionEvent.getSource() & 4) == 0 || !this.mTrackballDown) {
                return;
            }
            this.mTrackballUnhandled = true;
        }
    }

    public void reset() {
        this.mLastEventSeq = -1;
        this.mLastNestingLevel = 0;
        this.mTrackballDown = false;
        this.mTrackballUnhandled = false;
        this.mTouchEventStreamPointers = 0;
        this.mTouchEventStreamIsTainted = false;
        this.mTouchEventStreamUnhandled = false;
        this.mHoverEntered = false;
        this.mButtonsPressed = 0;
        while (true) {
            KeyState keyState = this.mKeyStateList;
            if (keyState == null) {
                return;
            }
            this.mKeyStateList = keyState.next;
            keyState.recycle();
        }
    }

    public InputEventConsistencyVerifier(Object obj, int i2, String str) {
        this.mTouchEventStreamDeviceId = -1;
        this.mCaller = obj;
        this.mFlags = i2;
        this.mLogTag = str == null ? "InputEventConsistencyVerifier" : str;
    }
}
