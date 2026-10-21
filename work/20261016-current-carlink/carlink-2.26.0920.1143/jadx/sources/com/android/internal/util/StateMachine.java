package com.android.internal.util;

import android.accessibilityservice.c;
import android.app.m;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public class StateMachine {
    public static final boolean HANDLED = true;
    public static final boolean NOT_HANDLED = false;
    private static final int SM_INIT_CMD = -2;
    private static final int SM_QUIT_CMD = -1;
    private String mName;
    private SmHandler mSmHandler;
    private HandlerThread mSmThread;

    public static class LogRec {
        private IState mDstState;
        private String mInfo;
        private IState mOrgState;
        private StateMachine mSm;
        private IState mState;
        private long mTime;
        private int mWhat;

        public LogRec(StateMachine stateMachine, Message message, String str, IState iState, IState iState2, IState iState3) {
            update(stateMachine, message, str, iState, iState2, iState3);
        }

        public IState getDestState() {
            return this.mDstState;
        }

        public String getInfo() {
            return this.mInfo;
        }

        public IState getOriginalState() {
            return this.mOrgState;
        }

        public IState getState() {
            return this.mState;
        }

        public long getTime() {
            return this.mTime;
        }

        public long getWhat() {
            return this.mWhat;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("time=");
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(this.mTime);
            sb.append(String.format("%tm-%td %tH:%tM:%tS.%tL", calendar, calendar, calendar, calendar, calendar, calendar));
            sb.append(" processed=");
            IState iState = this.mState;
            sb.append(iState == null ? "<null>" : iState.getName());
            sb.append(" org=");
            IState iState2 = this.mOrgState;
            sb.append(iState2 == null ? "<null>" : iState2.getName());
            sb.append(" dest=");
            IState iState3 = this.mDstState;
            sb.append(iState3 != null ? iState3.getName() : "<null>");
            sb.append(" what=");
            StateMachine stateMachine = this.mSm;
            String whatToString = stateMachine != null ? stateMachine.getWhatToString(this.mWhat) : "";
            if (TextUtils.isEmpty(whatToString)) {
                sb.append(this.mWhat);
                sb.append("(0x");
                c.x(this.mWhat, sb, ")");
            } else {
                sb.append(whatToString);
            }
            if (!TextUtils.isEmpty(this.mInfo)) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sb.append(this.mInfo);
            }
            return sb.toString();
        }

        public void update(StateMachine stateMachine, Message message, String str, IState iState, IState iState2, IState iState3) {
            this.mSm = stateMachine;
            this.mTime = System.currentTimeMillis();
            this.mWhat = message != null ? message.what : 0;
            this.mInfo = str;
            this.mState = iState;
            this.mOrgState = iState2;
            this.mDstState = iState3;
        }
    }

    public static class LogRecords {
        private static final int DEFAULT_SIZE = 20;
        private int mCount;
        private boolean mLogOnlyTransitions;
        private Vector<LogRec> mLogRecVector;
        private int mMaxSize;
        private int mOldestIndex;

        public synchronized void add(StateMachine stateMachine, Message message, String str, IState iState, IState iState2, IState iState3) {
            this.mCount++;
            if (this.mLogRecVector.size() < this.mMaxSize) {
                this.mLogRecVector.add(new LogRec(stateMachine, message, str, iState, iState2, iState3));
            } else {
                LogRec logRec = this.mLogRecVector.get(this.mOldestIndex);
                int i2 = this.mOldestIndex + 1;
                this.mOldestIndex = i2;
                if (i2 >= this.mMaxSize) {
                    this.mOldestIndex = 0;
                }
                logRec.update(stateMachine, message, str, iState, iState2, iState3);
            }
        }

        public synchronized void cleanup() {
            this.mLogRecVector.clear();
        }

        public synchronized int count() {
            return this.mCount;
        }

        public synchronized LogRec get(int i2) {
            int i3 = this.mOldestIndex + i2;
            int i4 = this.mMaxSize;
            if (i3 >= i4) {
                i3 -= i4;
            }
            if (i3 >= size()) {
                return null;
            }
            return this.mLogRecVector.get(i3);
        }

        public synchronized boolean logOnlyTransitions() {
            return this.mLogOnlyTransitions;
        }

        public synchronized void setLogOnlyTransitions(boolean z2) {
            this.mLogOnlyTransitions = z2;
        }

        public synchronized void setSize(int i2) {
            this.mMaxSize = i2;
            this.mOldestIndex = 0;
            this.mCount = 0;
            this.mLogRecVector.clear();
        }

        public synchronized int size() {
            return this.mLogRecVector.size();
        }

        private LogRecords() {
            this.mLogRecVector = new Vector<>();
            this.mMaxSize = 20;
            this.mOldestIndex = 0;
            this.mCount = 0;
            this.mLogOnlyTransitions = false;
        }
    }

    public static class SmHandler extends Handler {
        private static final Object mSmHandlerObj = new Object();
        private boolean mDbg;
        private ArrayList<Message> mDeferredMessages;
        private State mDestState;
        private HaltingState mHaltingState;
        private boolean mHasQuit;
        private State mInitialState;
        private boolean mIsConstructionCompleted;
        private LogRecords mLogRecords;
        private Message mMsg;
        private QuittingState mQuittingState;
        private StateMachine mSm;
        private HashMap<State, StateInfo> mStateInfo;
        private StateInfo[] mStateStack;
        private int mStateStackTopIndex;
        private StateInfo[] mTempStateStack;
        private int mTempStateStackCount;
        private boolean mTransitionInProgress;

        public class HaltingState extends State {
            private HaltingState() {
            }

            @Override // com.android.internal.util.State, com.android.internal.util.IState
            public boolean processMessage(Message message) {
                SmHandler.this.mSm.haltedProcessMessage(message);
                return true;
            }
        }

        public class QuittingState extends State {
            private QuittingState() {
            }

            @Override // com.android.internal.util.State, com.android.internal.util.IState
            public boolean processMessage(Message message) {
                return false;
            }
        }

        public class StateInfo {
            boolean active;
            StateInfo parentStateInfo;
            State state;

            private StateInfo() {
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("state=");
                sb.append(this.state.getName());
                sb.append(",active=");
                sb.append(this.active);
                sb.append(",parent=");
                StateInfo stateInfo = this.parentStateInfo;
                sb.append(stateInfo == null ? "null" : stateInfo.state.getName());
                return sb.toString();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final StateInfo addState(State state, State state2) {
            StateInfo stateInfoAddState;
            if (this.mDbg) {
                StateMachine stateMachine = this.mSm;
                StringBuilder sb = new StringBuilder("addStateInternal: E state=");
                sb.append(state.getName());
                sb.append(",parent=");
                sb.append(state2 == null ? "" : state2.getName());
                stateMachine.log(sb.toString());
            }
            if (state2 != null) {
                stateInfoAddState = this.mStateInfo.get(state2);
                if (stateInfoAddState == null) {
                    stateInfoAddState = addState(state2, null);
                }
            } else {
                stateInfoAddState = null;
            }
            StateInfo stateInfo = this.mStateInfo.get(state);
            if (stateInfo == null) {
                stateInfo = new StateInfo();
                this.mStateInfo.put(state, stateInfo);
            }
            StateInfo stateInfo2 = stateInfo.parentStateInfo;
            if (stateInfo2 != null && stateInfo2 != stateInfoAddState) {
                throw new RuntimeException("state already added");
            }
            stateInfo.state = state;
            stateInfo.parentStateInfo = stateInfoAddState;
            stateInfo.active = false;
            if (this.mDbg) {
                this.mSm.log("addStateInternal: X stateInfo: " + stateInfo);
            }
            return stateInfo;
        }

        private final void cleanupAfterQuitting() {
            if (this.mSm.mSmThread != null) {
                getLooper().quit();
                this.mSm.mSmThread = null;
            }
            this.mSm.mSmHandler = null;
            this.mSm = null;
            this.mMsg = null;
            this.mLogRecords.cleanup();
            this.mStateStack = null;
            this.mTempStateStack = null;
            this.mStateInfo.clear();
            this.mInitialState = null;
            this.mDestState = null;
            this.mDeferredMessages.clear();
            this.mHasQuit = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void completeConstruction() {
            if (this.mDbg) {
                this.mSm.log("completeConstruction: E");
            }
            int i2 = 0;
            for (StateInfo stateInfo : this.mStateInfo.values()) {
                int i3 = 0;
                while (stateInfo != null) {
                    stateInfo = stateInfo.parentStateInfo;
                    i3++;
                }
                if (i2 < i3) {
                    i2 = i3;
                }
            }
            if (this.mDbg) {
                this.mSm.log("completeConstruction: maxDepth=" + i2);
            }
            this.mStateStack = new StateInfo[i2];
            this.mTempStateStack = new StateInfo[i2];
            setupInitialStateStack();
            sendMessageAtFrontOfQueue(obtainMessage(-2, mSmHandlerObj));
            if (this.mDbg) {
                this.mSm.log("completeConstruction: X");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void deferMessage(Message message) {
            if (this.mDbg) {
                this.mSm.log("deferMessage: msg=" + message.what);
            }
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.copyFrom(message);
            this.mDeferredMessages.add(messageObtainMessage);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Message getCurrentMessage() {
            return this.mMsg;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final IState getCurrentState() {
            return this.mStateStack[this.mStateStackTopIndex].state;
        }

        private final void invokeEnterMethods(int i2) {
            int i3 = i2;
            while (true) {
                int i4 = this.mStateStackTopIndex;
                if (i3 > i4) {
                    this.mTransitionInProgress = false;
                    return;
                }
                if (i2 == i4) {
                    this.mTransitionInProgress = false;
                }
                if (this.mDbg) {
                    this.mSm.log("invokeEnterMethods: " + this.mStateStack[i3].state.getName());
                }
                this.mStateStack[i3].state.enter();
                this.mStateStack[i3].active = true;
                i3++;
            }
        }

        private final void invokeExitMethods(StateInfo stateInfo) {
            StateInfo stateInfo2;
            while (true) {
                int i2 = this.mStateStackTopIndex;
                if (i2 < 0 || (stateInfo2 = this.mStateStack[i2]) == stateInfo) {
                    return;
                }
                State state = stateInfo2.state;
                if (this.mDbg) {
                    this.mSm.log("invokeExitMethods: " + state.getName());
                }
                state.exit();
                StateInfo[] stateInfoArr = this.mStateStack;
                int i3 = this.mStateStackTopIndex;
                stateInfoArr[i3].active = false;
                this.mStateStackTopIndex = i3 - 1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isDbg() {
            return this.mDbg;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isQuit(Message message) {
            return message.what == -1 && message.obj == mSmHandlerObj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$removeState$0(StateInfo stateInfo, StateInfo stateInfo2) {
            return stateInfo2.parentStateInfo == stateInfo;
        }

        private final void moveDeferredMessageAtFrontOfQueue() {
            for (int size = this.mDeferredMessages.size() - 1; size >= 0; size--) {
                Message message = this.mDeferredMessages.get(size);
                if (this.mDbg) {
                    this.mSm.log("moveDeferredMessageAtFrontOfQueue; what=" + message.what);
                }
                sendMessageAtFrontOfQueue(message);
            }
            this.mDeferredMessages.clear();
        }

        private final int moveTempStateStackToStateStack() {
            int i2 = this.mStateStackTopIndex + 1;
            int i3 = i2;
            for (int i4 = this.mTempStateStackCount - 1; i4 >= 0; i4--) {
                if (this.mDbg) {
                    this.mSm.log("moveTempStackToStateStack: i=" + i4 + ",j=" + i3);
                }
                this.mStateStack[i3] = this.mTempStateStack[i4];
                i3++;
            }
            this.mStateStackTopIndex = i3 - 1;
            if (this.mDbg) {
                StateMachine stateMachine = this.mSm;
                StringBuilder sb = new StringBuilder("moveTempStackToStateStack: X mStateStackTop=");
                m.u(sb, this.mStateStackTopIndex, ",startingIndex=", i2, ",Top=");
                sb.append(this.mStateStack[this.mStateStackTopIndex].state.getName());
                stateMachine.log(sb.toString());
            }
            return i2;
        }

        private void performTransitions(State state, Message message) {
            State state2 = this.mStateStack[this.mStateStackTopIndex].state;
            boolean z2 = this.mSm.recordLogRec(this.mMsg) && message.obj != mSmHandlerObj;
            if (this.mLogRecords.logOnlyTransitions()) {
                if (this.mDestState != null) {
                    LogRecords logRecords = this.mLogRecords;
                    StateMachine stateMachine = this.mSm;
                    Message message2 = this.mMsg;
                    logRecords.add(stateMachine, message2, stateMachine.getLogRecString(message2), state, state2, this.mDestState);
                }
            } else if (z2) {
                LogRecords logRecords2 = this.mLogRecords;
                StateMachine stateMachine2 = this.mSm;
                Message message3 = this.mMsg;
                logRecords2.add(stateMachine2, message3, stateMachine2.getLogRecString(message3), state, state2, this.mDestState);
            }
            State state3 = this.mDestState;
            if (state3 != null) {
                while (true) {
                    if (this.mDbg) {
                        this.mSm.log("handleMessage: new destination call exit/enter");
                    }
                    StateInfo stateInfo = setupTempStateStackWithStatesToEnter(state3);
                    this.mTransitionInProgress = true;
                    invokeExitMethods(stateInfo);
                    invokeEnterMethods(moveTempStateStackToStateStack());
                    moveDeferredMessageAtFrontOfQueue();
                    State state4 = this.mDestState;
                    if (state3 == state4) {
                        break;
                    } else {
                        state3 = state4;
                    }
                }
                this.mDestState = null;
            }
            if (state3 != null) {
                if (state3 == this.mQuittingState) {
                    this.mSm.onQuitting();
                    cleanupAfterQuitting();
                } else if (state3 == this.mHaltingState) {
                    this.mSm.onHalting();
                }
            }
        }

        private final State processMsg(Message message) {
            StateInfo stateInfo = this.mStateStack[this.mStateStackTopIndex];
            if (this.mDbg) {
                this.mSm.log("processMsg: " + stateInfo.state.getName());
            }
            if (isQuit(message)) {
                transitionTo(this.mQuittingState);
            } else {
                while (!stateInfo.state.processMessage(message)) {
                    stateInfo = stateInfo.parentStateInfo;
                    if (stateInfo == null) {
                        this.mSm.unhandledMessage(message);
                        break;
                    }
                    if (this.mDbg) {
                        this.mSm.log("processMsg: " + stateInfo.state.getName());
                    }
                }
            }
            if (stateInfo != null) {
                return stateInfo.state;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void quit() {
            if (this.mDbg) {
                this.mSm.log("quit:");
            }
            sendMessage(obtainMessage(-1, mSmHandlerObj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void quitNow() {
            if (this.mDbg) {
                this.mSm.log("quitNow:");
            }
            sendMessageAtFrontOfQueue(obtainMessage(-1, mSmHandlerObj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Type inference failed for: r2v0, types: [com.android.internal.util.a] */
        public void removeState(State state) {
            final StateInfo stateInfo = this.mStateInfo.get(state);
            if (stateInfo == null || stateInfo.active || this.mStateInfo.values().stream().filter(new Predicate() { // from class: com.android.internal.util.a
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return StateMachine.SmHandler.lambda$removeState$0(stateInfo, (StateMachine.SmHandler.StateInfo) obj);
                }
            }).findAny().isPresent()) {
                return;
            }
            this.mStateInfo.remove(state);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setDbg(boolean z2) {
            this.mDbg = z2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setInitialState(State state) {
            if (this.mDbg) {
                this.mSm.log("setInitialState: initialState=" + state.getName());
            }
            this.mInitialState = state;
        }

        private final void setupInitialStateStack() {
            if (this.mDbg) {
                this.mSm.log("setupInitialStateStack: E mInitialState=" + this.mInitialState.getName());
            }
            StateInfo stateInfo = this.mStateInfo.get(this.mInitialState);
            this.mTempStateStackCount = 0;
            while (stateInfo != null) {
                StateInfo[] stateInfoArr = this.mTempStateStack;
                int i2 = this.mTempStateStackCount;
                stateInfoArr[i2] = stateInfo;
                stateInfo = stateInfo.parentStateInfo;
                this.mTempStateStackCount = i2 + 1;
            }
            this.mStateStackTopIndex = -1;
            moveTempStateStackToStateStack();
        }

        private final StateInfo setupTempStateStackWithStatesToEnter(State state) {
            this.mTempStateStackCount = 0;
            StateInfo stateInfo = this.mStateInfo.get(state);
            do {
                StateInfo[] stateInfoArr = this.mTempStateStack;
                int i2 = this.mTempStateStackCount;
                this.mTempStateStackCount = i2 + 1;
                stateInfoArr[i2] = stateInfo;
                stateInfo = stateInfo.parentStateInfo;
                if (stateInfo == null) {
                    break;
                }
            } while (!stateInfo.active);
            if (this.mDbg) {
                this.mSm.log("setupTempStateStackWithStatesToEnter: X mTempStateStackCount=" + this.mTempStateStackCount + ",curStateInfo: " + stateInfo);
            }
            return stateInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void transitionTo(IState iState) {
            if (this.mTransitionInProgress) {
                Log.wtf(this.mSm.mName, "transitionTo called while transition already in progress to " + this.mDestState + ", new target state=" + iState);
            }
            this.mDestState = (State) iState;
            if (this.mDbg) {
                this.mSm.log("transitionTo: destState=" + this.mDestState.getName());
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            State stateProcessMsg;
            int i2;
            StateMachine stateMachine;
            int i3;
            if (this.mHasQuit) {
                return;
            }
            StateMachine stateMachine2 = this.mSm;
            if (stateMachine2 != null && (i3 = message.what) != -2 && i3 != -1) {
                stateMachine2.onPreHandleMessage(message);
            }
            if (this.mDbg) {
                this.mSm.log("handleMessage: E msg.what=" + message.what);
            }
            this.mMsg = message;
            boolean z2 = this.mIsConstructionCompleted;
            if (z2) {
                stateProcessMsg = processMsg(message);
            } else {
                if (z2 || message.what != -2 || message.obj != mSmHandlerObj) {
                    throw new RuntimeException("StateMachine.handleMessage: The start method not called, received msg: " + message);
                }
                this.mIsConstructionCompleted = true;
                invokeEnterMethods(0);
                stateProcessMsg = null;
            }
            performTransitions(stateProcessMsg, message);
            if (this.mDbg && (stateMachine = this.mSm) != null) {
                stateMachine.log("handleMessage: X");
            }
            StateMachine stateMachine3 = this.mSm;
            if (stateMachine3 == null || (i2 = message.what) == -2 || i2 == -1) {
                return;
            }
            stateMachine3.onPostHandleMessage(message);
        }

        private SmHandler(Looper looper, StateMachine stateMachine) {
            super(looper);
            this.mHasQuit = false;
            this.mDbg = false;
            this.mLogRecords = new LogRecords();
            this.mStateStackTopIndex = -1;
            this.mHaltingState = new HaltingState();
            this.mQuittingState = new QuittingState();
            this.mStateInfo = new HashMap<>();
            this.mTransitionInProgress = false;
            this.mDeferredMessages = new ArrayList<>();
            this.mSm = stateMachine;
            addState(this.mHaltingState, null);
            addState(this.mQuittingState, null);
        }
    }

    public StateMachine(String str) {
        HandlerThread handlerThread = new HandlerThread(str);
        this.mSmThread = handlerThread;
        handlerThread.start();
        initStateMachine(str, this.mSmThread.getLooper());
    }

    private void initStateMachine(String str, Looper looper) {
        this.mName = str;
        this.mSmHandler = new SmHandler(looper, this);
    }

    public void addLogRec(String str) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.mLogRecords.add(this, smHandler.getCurrentMessage(), str, smHandler.getCurrentState(), smHandler.mStateStack[smHandler.mStateStackTopIndex].state, smHandler.mDestState);
    }

    public final void addState(State state, State state2) {
        this.mSmHandler.addState(state, state2);
    }

    public final Collection<LogRec> copyLogRecs() {
        Vector vector = new Vector();
        SmHandler smHandler = this.mSmHandler;
        if (smHandler != null) {
            Iterator it = smHandler.mLogRecords.mLogRecVector.iterator();
            while (it.hasNext()) {
                vector.add((LogRec) it.next());
            }
        }
        return vector;
    }

    public final void deferMessage(Message message) {
        this.mSmHandler.deferMessage(message);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println(getName() + SettingsStringUtil.DELIMITER);
        StringBuilder sb = new StringBuilder(" total records=");
        sb.append(getLogRecCount());
        printWriter.println(sb.toString());
        for (int i2 = 0; i2 < getLogRecSize(); i2++) {
            StringBuilder sbS = c.s(" rec[", i2, "]: ");
            sbS.append(getLogRec(i2).toString());
            printWriter.println(sbS.toString());
            printWriter.flush();
        }
        printWriter.println("curState=" + getCurrentState().getName());
    }

    public final Message getCurrentMessage() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return null;
        }
        return smHandler.getCurrentMessage();
    }

    public final IState getCurrentState() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return null;
        }
        return smHandler.getCurrentState();
    }

    public final Handler getHandler() {
        return this.mSmHandler;
    }

    public final LogRec getLogRec(int i2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return null;
        }
        return smHandler.mLogRecords.get(i2);
    }

    public final int getLogRecCount() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return 0;
        }
        return smHandler.mLogRecords.count();
    }

    public final int getLogRecMaxSize() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return 0;
        }
        return smHandler.mLogRecords.mMaxSize;
    }

    public final int getLogRecSize() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return 0;
        }
        return smHandler.mLogRecords.size();
    }

    public String getLogRecString(Message message) {
        return "";
    }

    public final String getName() {
        return this.mName;
    }

    public String getWhatToString(int i2) {
        return null;
    }

    public void haltedProcessMessage(Message message) {
    }

    public final boolean hasDeferredMessages(int i2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return false;
        }
        Iterator it = smHandler.mDeferredMessages.iterator();
        while (it.hasNext()) {
            if (((Message) it.next()).what == i2) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasMessages(int i2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return false;
        }
        return smHandler.hasMessages(i2);
    }

    public boolean isDbg() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return false;
        }
        return smHandler.isDbg();
    }

    public final boolean isQuit(Message message) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return message.what == -1;
        }
        return smHandler.isQuit(message);
    }

    public void log(String str) {
        Log.d(this.mName, str);
    }

    public void logAndAddLogRec(String str) {
        addLogRec(str);
        log(str);
    }

    public void logd(String str) {
        Log.d(this.mName, str);
    }

    public void loge(String str) {
        Log.e(this.mName, str);
    }

    public void logi(String str) {
        Log.i(this.mName, str);
    }

    public void logv(String str) {
        Log.v(this.mName, str);
    }

    public void logw(String str) {
        Log.w(this.mName, str);
    }

    public final Message obtainMessage() {
        return Message.obtain(this.mSmHandler);
    }

    public void onHalting() {
    }

    public void onPostHandleMessage(Message message) {
    }

    public void onPreHandleMessage(Message message) {
    }

    public void onQuitting() {
    }

    public final void quit() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.quit();
    }

    public final void quitNow() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.quitNow();
    }

    public boolean recordLogRec(Message message) {
        return true;
    }

    public final void removeDeferredMessages(int i2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        Iterator it = smHandler.mDeferredMessages.iterator();
        while (it.hasNext()) {
            if (((Message) it.next()).what == i2) {
                it.remove();
            }
        }
    }

    public final void removeMessages(int i2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.removeMessages(i2);
    }

    public final void removeState(State state) {
        this.mSmHandler.removeState(state);
    }

    public void sendMessage(int i2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessage(obtainMessage(i2));
    }

    public final void sendMessageAtFrontOfQueue(int i2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageAtFrontOfQueue(obtainMessage(i2));
    }

    public void sendMessageDelayed(int i2, long j2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageDelayed(obtainMessage(i2), j2);
    }

    public void setDbg(boolean z2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.setDbg(z2);
    }

    public final void setInitialState(State state) {
        this.mSmHandler.setInitialState(state);
    }

    public final void setLogOnlyTransitions(boolean z2) {
        this.mSmHandler.mLogRecords.setLogOnlyTransitions(z2);
    }

    public final void setLogRecSize(int i2) {
        this.mSmHandler.mLogRecords.setSize(i2);
    }

    public void start() {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.completeConstruction();
    }

    public String toString() {
        String str;
        String string = "(null)";
        try {
            String string2 = this.mName.toString();
            try {
                string = this.mSmHandler.getCurrentState().getName().toString();
            } catch (NullPointerException unused) {
            }
            str = string;
            string = string2;
        } catch (NullPointerException unused2) {
            str = "(null)";
        }
        return c.l("name=", string, " state=", str);
    }

    public final void transitionTo(IState iState) {
        this.mSmHandler.transitionTo(iState);
    }

    public final void transitionToHaltingState() {
        SmHandler smHandler = this.mSmHandler;
        smHandler.transitionTo(smHandler.mHaltingState);
    }

    public void unhandledMessage(Message message) {
        if (this.mSmHandler.mDbg) {
            loge(" - unhandledMessage: msg.what=" + message.what);
        }
    }

    public final void addState(State state) {
        this.mSmHandler.addState(state, null);
    }

    public void loge(String str, Throwable th) {
        Log.e(this.mName, str, th);
    }

    public final Message obtainMessage(int i2) {
        return Message.obtain(this.mSmHandler, i2);
    }

    public final Message obtainMessage(int i2, Object obj) {
        return Message.obtain(this.mSmHandler, i2, obj);
    }

    public void sendMessage(int i2, Object obj) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessage(obtainMessage(i2, obj));
    }

    public final void sendMessageAtFrontOfQueue(int i2, Object obj) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageAtFrontOfQueue(obtainMessage(i2, obj));
    }

    public void sendMessageDelayed(int i2, Object obj, long j2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageDelayed(obtainMessage(i2, obj), j2);
    }

    public final Message obtainMessage(int i2, int i3) {
        return Message.obtain(this.mSmHandler, i2, i3, 0);
    }

    public final Message obtainMessage(int i2, int i3, int i4) {
        return Message.obtain(this.mSmHandler, i2, i3, i4);
    }

    public void sendMessage(int i2, int i3) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessage(obtainMessage(i2, i3));
    }

    public final void sendMessageAtFrontOfQueue(int i2, int i3) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageAtFrontOfQueue(obtainMessage(i2, i3));
    }

    public void sendMessageDelayed(int i2, int i3, long j2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageDelayed(obtainMessage(i2, i3), j2);
    }

    public StateMachine(String str, Looper looper) {
        initStateMachine(str, looper);
    }

    public final Message obtainMessage(int i2, int i3, int i4, Object obj) {
        return Message.obtain(this.mSmHandler, i2, i3, i4, obj);
    }

    public void sendMessage(int i2, int i3, int i4) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessage(obtainMessage(i2, i3, i4));
    }

    public final void sendMessageAtFrontOfQueue(int i2, int i3, int i4) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageAtFrontOfQueue(obtainMessage(i2, i3, i4));
    }

    public void sendMessageDelayed(int i2, int i3, int i4, long j2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageDelayed(obtainMessage(i2, i3, i4), j2);
    }

    public StateMachine(String str, Handler handler) {
        initStateMachine(str, handler.getLooper());
    }

    public void sendMessage(int i2, int i3, int i4, Object obj) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessage(obtainMessage(i2, i3, i4, obj));
    }

    public final void sendMessageAtFrontOfQueue(int i2, int i3, int i4, Object obj) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageAtFrontOfQueue(obtainMessage(i2, i3, i4, obj));
    }

    public void sendMessageDelayed(int i2, int i3, int i4, Object obj, long j2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageDelayed(obtainMessage(i2, i3, i4, obj), j2);
    }

    public void sendMessage(Message message) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessage(message);
    }

    public final void sendMessageAtFrontOfQueue(Message message) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageAtFrontOfQueue(message);
    }

    public void sendMessageDelayed(Message message, long j2) {
        SmHandler smHandler = this.mSmHandler;
        if (smHandler == null) {
            return;
        }
        smHandler.sendMessageDelayed(message, j2);
    }
}
