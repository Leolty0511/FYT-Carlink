package android.view.autofill;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Rect;
import android.metrics.LogMaker;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.autofill.FillEventHistory;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class AutofillManager {
    public static final int ACTION_START_SESSION = 1;
    public static final int ACTION_VALUE_CHANGED = 4;
    public static final int ACTION_VIEW_ENTERED = 2;
    public static final int ACTION_VIEW_EXITED = 3;
    private static final int AUTHENTICATION_ID_DATASET_ID_MASK = 65535;
    private static final int AUTHENTICATION_ID_DATASET_ID_SHIFT = 16;
    public static final int AUTHENTICATION_ID_DATASET_ID_UNDEFINED = 65535;
    public static final String EXTRA_ASSIST_STRUCTURE = "android.view.autofill.extra.ASSIST_STRUCTURE";
    public static final String EXTRA_AUTHENTICATION_RESULT = "android.view.autofill.extra.AUTHENTICATION_RESULT";
    public static final String EXTRA_CLIENT_STATE = "android.view.autofill.extra.CLIENT_STATE";
    public static final String EXTRA_RESTORE_SESSION_TOKEN = "android.view.autofill.extra.RESTORE_SESSION_TOKEN";
    public static final int FLAG_ADD_CLIENT_DEBUG = 2;
    public static final int FLAG_ADD_CLIENT_ENABLED = 1;
    public static final int FLAG_ADD_CLIENT_VERBOSE = 4;
    private static final String LAST_AUTOFILLED_DATA_TAG = "android:lastAutoFilledData";
    public static final int NO_SESSION = Integer.MIN_VALUE;
    public static final int PENDING_UI_OPERATION_CANCEL = 1;
    public static final int PENDING_UI_OPERATION_RESTORE = 2;
    private static final String SESSION_ID_TAG = "android:sessionId";
    public static final int STATE_ACTIVE = 1;
    public static final int STATE_FINISHED = 2;
    public static final int STATE_SHOWING_SAVE_UI = 3;
    private static final String STATE_TAG = "android:state";
    public static final int STATE_UNKNOWN = 0;
    private static final String TAG = "AutofillManager";

    @GuardedBy("mLock")
    private AutofillCallback mCallback;
    private final Context mContext;

    @GuardedBy("mLock")
    private boolean mEnabled;

    @GuardedBy("mLock")
    private ArraySet<AutofillId> mFillableIds;

    @GuardedBy("mLock")
    private ParcelableMap mLastAutofilledData;
    private final IAutoFillManager mService;

    @GuardedBy("mLock")
    private IAutoFillManagerClient mServiceClient;

    @GuardedBy("mLock")
    private TrackedViews mTrackedViews;
    private final MetricsLogger mMetricsLogger = new MetricsLogger();
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private int mSessionId = Integer.MIN_VALUE;

    @GuardedBy("mLock")
    private int mState = 0;

    public static abstract class AutofillCallback {
        public static final int EVENT_INPUT_HIDDEN = 2;
        public static final int EVENT_INPUT_SHOWN = 1;
        public static final int EVENT_INPUT_UNAVAILABLE = 3;

        @Retention(RetentionPolicy.SOURCE)
        public @interface AutofillEventType {
        }

        public void onAutofillEvent(View view, int i2) {
        }

        public void onAutofillEvent(View view, int i2, int i3) {
        }
    }

    public interface AutofillClient {
        void autofillCallbackAuthenticate(int i2, IntentSender intentSender, Intent intent);

        boolean autofillCallbackRequestHideFillUi();

        boolean autofillCallbackRequestShowFillUi(View view, int i2, int i3, Rect rect, IAutofillWindowPresenter iAutofillWindowPresenter);

        void autofillCallbackResetableStateAvailable();

        View findViewByAutofillIdTraversal(int i2);

        View[] findViewsByAutofillIdTraversal(int[] iArr);

        boolean[] getViewVisibility(int[] iArr);

        boolean isVisibleForAutofill();

        void runOnUiThread(Runnable runnable);
    }

    public static final class AutofillManagerClient extends IAutoFillManagerClient.Stub {
        private final WeakReference<AutofillManager> mAfm;

        public AutofillManagerClient(AutofillManager autofillManager) {
            this.mAfm = new WeakReference<>(autofillManager);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$startIntentSender$6(AutofillManager autofillManager, IntentSender intentSender, Intent intent) {
            try {
                autofillManager.mContext.startIntentSender(intentSender, intent, 0, 0, 0);
            } catch (IntentSender.SendIntentException e2) {
                Log.e(AutofillManager.TAG, "startIntentSender() failed for intent:" + intentSender, e2);
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void authenticate(final int i2, final int i3, final IntentSender intentSender, final Intent intent) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$1400(autofillManager, i2, i3, intentSender, intent);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void autofill(final int i2, final List<AutofillId> list, final List<AutofillValue> list2) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$1500(autofillManager, i2, list, list2);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void notifyNoFillUi(final int i2, final AutofillId autofillId, final boolean z2) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$1100(autofillManager, i2, autofillId, z2);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void requestHideFillUi(int i2, final AutofillId autofillId) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$1200(autofillManager, autofillId);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void requestShowFillUi(final int i2, final AutofillId autofillId, final int i3, final int i4, final Rect rect, final IAutofillWindowPresenter iAutofillWindowPresenter) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$1300(autofillManager, i2, autofillId, i3, i4, rect, iAutofillWindowPresenter);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void setSaveUiState(final int i2, final boolean z2) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$800(autofillManager, i2, z2);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void setSessionFinished(final int i2) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$700(autofillManager, i2);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void setState(final boolean z2, final boolean z3, final boolean z4) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$1600(autofillManager, z2, z3, z4);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void setTrackedViews(final int i2, final AutofillId[] autofillIdArr, final boolean z2, final AutofillId[] autofillIdArr2) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.access$900(autofillManager, i2, autofillIdArr, z2, autofillIdArr2);
                    }
                });
            }
        }

        @Override // android.view.autofill.IAutoFillManagerClient
        public void startIntentSender(final IntentSender intentSender, final Intent intent) {
            final AutofillManager autofillManager = this.mAfm.get();
            if (autofillManager != null) {
                autofillManager.post(new Runnable() { // from class: android.view.autofill.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AutofillManager.AutofillManagerClient.lambda$startIntentSender$6(autofillManager, intentSender, intent);
                    }
                });
            }
        }
    }

    public class TrackedViews {
        private ArraySet<AutofillId> mInvisibleTrackedIds;
        private ArraySet<AutofillId> mVisibleTrackedIds;

        public TrackedViews(AutofillId[] autofillIdArr) {
            AutofillClient clientLocked = AutofillManager.this.getClientLocked();
            if (autofillIdArr != null && clientLocked != null) {
                boolean[] viewVisibility = clientLocked.isVisibleForAutofill() ? clientLocked.getViewVisibility(AutofillManager.this.getViewIds(autofillIdArr)) : new boolean[autofillIdArr.length];
                int length = autofillIdArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    AutofillId autofillId = autofillIdArr[i2];
                    if (viewVisibility[i2]) {
                        this.mVisibleTrackedIds = addToSet(this.mVisibleTrackedIds, autofillId);
                    } else {
                        this.mInvisibleTrackedIds = addToSet(this.mInvisibleTrackedIds, autofillId);
                    }
                }
            }
            if (Helper.sVerbose) {
                Log.v(AutofillManager.TAG, "TrackedViews(trackedIds=" + autofillIdArr + "):  mVisibleTrackedIds=" + this.mVisibleTrackedIds + " mInvisibleTrackedIds=" + this.mInvisibleTrackedIds);
            }
            if (this.mVisibleTrackedIds == null) {
                AutofillManager.this.finishSessionLocked();
            }
        }

        private <T> ArraySet<T> addToSet(ArraySet<T> arraySet, T t2) {
            if (arraySet == null) {
                arraySet = new ArraySet<>(1);
            }
            arraySet.add(t2);
            return arraySet;
        }

        private <T> boolean isInSet(ArraySet<T> arraySet, T t2) {
            return arraySet != null && arraySet.contains(t2);
        }

        private <T> ArraySet<T> removeFromSet(ArraySet<T> arraySet, T t2) {
            if (arraySet == null) {
                return null;
            }
            arraySet.remove(t2);
            if (arraySet.isEmpty()) {
                return null;
            }
            return arraySet;
        }

        public void notifyViewVisibilityChanged(AutofillId autofillId, boolean z2) {
            AutofillClient clientLocked = AutofillManager.this.getClientLocked();
            if (Helper.sDebug) {
                Log.d(AutofillManager.TAG, "notifyViewVisibilityChanged(): id=" + autofillId + " isVisible=" + z2);
            }
            if (clientLocked != null && clientLocked.isVisibleForAutofill()) {
                if (z2) {
                    if (isInSet(this.mInvisibleTrackedIds, autofillId)) {
                        this.mInvisibleTrackedIds = removeFromSet(this.mInvisibleTrackedIds, autofillId);
                        this.mVisibleTrackedIds = addToSet(this.mVisibleTrackedIds, autofillId);
                    }
                } else if (isInSet(this.mVisibleTrackedIds, autofillId)) {
                    this.mVisibleTrackedIds = removeFromSet(this.mVisibleTrackedIds, autofillId);
                    this.mInvisibleTrackedIds = addToSet(this.mInvisibleTrackedIds, autofillId);
                }
            }
            if (this.mVisibleTrackedIds == null) {
                if (Helper.sVerbose) {
                    Log.v(AutofillManager.TAG, "No more visible ids. Invisibile = " + this.mInvisibleTrackedIds);
                }
                AutofillManager.this.finishSessionLocked();
            }
        }

        public void onVisibleForAutofillLocked() {
            ArraySet<AutofillId> arraySetAddToSet;
            AutofillClient clientLocked = AutofillManager.this.getClientLocked();
            if (clientLocked != null) {
                ArraySet<AutofillId> arraySetAddToSet2 = null;
                if (this.mInvisibleTrackedIds != null) {
                    ArrayList arrayList = new ArrayList(this.mInvisibleTrackedIds);
                    boolean[] viewVisibility = clientLocked.getViewVisibility(AutofillManager.this.getViewIds(arrayList));
                    int size = arrayList.size();
                    arraySetAddToSet = null;
                    for (int i2 = 0; i2 < size; i2++) {
                        AutofillId autofillId = (AutofillId) arrayList.get(i2);
                        if (viewVisibility[i2]) {
                            arraySetAddToSet2 = addToSet(arraySetAddToSet2, autofillId);
                            if (Helper.sDebug) {
                                Log.d(AutofillManager.TAG, "onVisibleForAutofill() " + autofillId + " became visible");
                            }
                        } else {
                            arraySetAddToSet = addToSet(arraySetAddToSet, autofillId);
                        }
                    }
                } else {
                    arraySetAddToSet = null;
                }
                if (this.mVisibleTrackedIds != null) {
                    ArrayList arrayList2 = new ArrayList(this.mVisibleTrackedIds);
                    boolean[] viewVisibility2 = clientLocked.getViewVisibility(AutofillManager.this.getViewIds(arrayList2));
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        AutofillId autofillId2 = (AutofillId) arrayList2.get(i3);
                        if (viewVisibility2[i3]) {
                            arraySetAddToSet2 = addToSet(arraySetAddToSet2, autofillId2);
                        } else {
                            arraySetAddToSet = addToSet(arraySetAddToSet, autofillId2);
                            if (Helper.sDebug) {
                                Log.d(AutofillManager.TAG, "onVisibleForAutofill() " + autofillId2 + " became invisible");
                            }
                        }
                    }
                }
                this.mInvisibleTrackedIds = arraySetAddToSet;
                this.mVisibleTrackedIds = arraySetAddToSet2;
            }
            if (this.mVisibleTrackedIds == null) {
                AutofillManager.this.finishSessionLocked();
            }
        }
    }

    public AutofillManager(Context context, IAutoFillManager iAutoFillManager) {
        this.mContext = context;
        this.mService = iAutoFillManager;
    }

    public static /* synthetic */ void access$1100(AutofillManager autofillManager, int i2, AutofillId autofillId, boolean z2) {
        autofillManager.notifyNoFillUi(i2, autofillId, z2);
    }

    public static /* synthetic */ void access$1200(AutofillManager autofillManager, AutofillId autofillId) {
        autofillManager.requestHideFillUi(autofillId);
    }

    public static /* synthetic */ void access$1300(AutofillManager autofillManager, int i2, AutofillId autofillId, int i3, int i4, Rect rect, IAutofillWindowPresenter iAutofillWindowPresenter) {
        autofillManager.requestShowFillUi(i2, autofillId, i3, i4, rect, iAutofillWindowPresenter);
    }

    public static /* synthetic */ void access$1400(AutofillManager autofillManager, int i2, int i3, IntentSender intentSender, Intent intent) {
        autofillManager.authenticate(i2, i3, intentSender, intent);
    }

    public static /* synthetic */ void access$1500(AutofillManager autofillManager, int i2, List list, List list2) {
        autofillManager.autofill(i2, list, list2);
    }

    public static /* synthetic */ void access$1600(AutofillManager autofillManager, boolean z2, boolean z3, boolean z4) {
        autofillManager.setState(z2, z3, z4);
    }

    public static /* synthetic */ void access$700(AutofillManager autofillManager, int i2) {
        autofillManager.setSessionFinished(i2);
    }

    public static /* synthetic */ void access$800(AutofillManager autofillManager, int i2, boolean z2) {
        autofillManager.setSaveUiState(i2, z2);
    }

    public static /* synthetic */ void access$900(AutofillManager autofillManager, int i2, AutofillId[] autofillIdArr, boolean z2, AutofillId[] autofillIdArr2) {
        autofillManager.setTrackedViews(i2, autofillIdArr, z2, autofillIdArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void authenticate(int i2, int i3, IntentSender intentSender, Intent intent) {
        AutofillClient clientLocked;
        synchronized (this.mLock) {
            if (i2 == this.mSessionId && (clientLocked = getClientLocked()) != null) {
                clientLocked.autofillCallbackAuthenticate(i3, intentSender, intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autofill(int i2, List<AutofillId> list, List<AutofillValue> list2) {
        synchronized (this.mLock) {
            if (i2 != this.mSessionId) {
                return;
            }
            AutofillClient clientLocked = getClientLocked();
            if (clientLocked == null) {
                return;
            }
            int size = list.size();
            View[] viewArrFindViewsByAutofillIdTraversal = clientLocked.findViewsByAutofillIdTraversal(getViewIds(list));
            ArrayMap arrayMap = null;
            int size2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                AutofillId autofillId = list.get(i3);
                AutofillValue autofillValue = list2.get(i3);
                int viewId = autofillId.getViewId();
                View view = viewArrFindViewsByAutofillIdTraversal[i3];
                if (view == null) {
                    Log.w(TAG, "autofill(): no View with id " + viewId);
                } else if (autofillId.isVirtual()) {
                    if (arrayMap == null) {
                        arrayMap = new ArrayMap(1);
                    }
                    SparseArray sparseArray = (SparseArray) arrayMap.get(view);
                    if (sparseArray == null) {
                        sparseArray = new SparseArray(5);
                        arrayMap.put(view, sparseArray);
                    }
                    sparseArray.put(autofillId.getVirtualChildId(), autofillValue);
                } else {
                    if (this.mLastAutofilledData == null) {
                        this.mLastAutofilledData = new ParcelableMap(size - i3);
                    }
                    this.mLastAutofilledData.put(autofillId, autofillValue);
                    view.autofill(autofillValue);
                    setAutofilledIfValuesIs(view, autofillValue);
                    size2++;
                }
            }
            if (arrayMap != null) {
                for (int i4 = 0; i4 < arrayMap.size(); i4++) {
                    View view2 = (View) arrayMap.keyAt(i4);
                    SparseArray<AutofillValue> sparseArray2 = (SparseArray) arrayMap.valueAt(i4);
                    view2.autofill(sparseArray2);
                    size2 += sparseArray2.size();
                }
            }
            this.mMetricsLogger.write(new LogMaker(MetricsProto.MetricsEvent.AUTOFILL_DATASET_APPLIED).setPackageName(this.mContext.getPackageName()).addTaggedData(MetricsProto.MetricsEvent.FIELD_AUTOFILL_NUM_VALUES, Integer.valueOf(size)).addTaggedData(MetricsProto.MetricsEvent.FIELD_AUTOFILL_NUM_VIEWS_FILLED, Integer.valueOf(size2)));
        }
    }

    private void cancelSessionLocked() {
        if (Helper.sVerbose) {
            Log.v(TAG, "cancelSessionLocked(): " + getStateAsStringLocked());
        }
        if (isActiveLocked()) {
            try {
                this.mService.cancelSession(this.mSessionId, this.mContext.getUserId());
                resetSessionLocked();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    private void ensureServiceClientAddedIfNeededLocked() {
        if (getClientLocked() != null && this.mServiceClient == null) {
            AutofillManagerClient autofillManagerClient = new AutofillManagerClient(this);
            this.mServiceClient = autofillManagerClient;
            try {
                int iAddClient = this.mService.addClient(autofillManagerClient, this.mContext.getUserId());
                this.mEnabled = (iAddClient & 1) != 0;
                Helper.sDebug = (iAddClient & 2) != 0;
                Helper.sVerbose = (iAddClient & 4) != 0;
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    private View findView(AutofillId autofillId) {
        AutofillClient clientLocked = getClientLocked();
        if (clientLocked == null) {
            return null;
        }
        return clientLocked.findViewByAutofillIdTraversal(autofillId.getViewId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishSessionLocked() {
        if (Helper.sVerbose) {
            Log.v(TAG, "finishSessionLocked(): " + getStateAsStringLocked());
        }
        if (isActiveLocked()) {
            try {
                this.mService.finishSession(this.mSessionId, this.mContext.getUserId());
                resetSessionLocked();
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    private static AutofillId getAutofillId(View view) {
        return new AutofillId(view.getAutofillViewId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AutofillClient getClientLocked() {
        return this.mContext.getAutofillClient();
    }

    public static int getDatasetIdFromAuthenticationId(int i2) {
        return i2 & 65535;
    }

    public static int getRequestIdFromAuthenticationId(int i2) {
        return i2 >> 16;
    }

    private String getStateAsStringLocked() {
        int i2 = this.mState;
        if (i2 == 0) {
            return "STATE_UNKNOWN";
        }
        if (i2 == 1) {
            return "STATE_ACTIVE";
        }
        if (i2 == 2) {
            return "STATE_FINISHED";
        }
        if (i2 == 3) {
            return "STATE_SHOWING_SAVE_UI";
        }
        return "INVALID:" + this.mState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] getViewIds(AutofillId[] autofillIdArr) {
        int length = autofillIdArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = autofillIdArr[i2].getViewId();
        }
        return iArr;
    }

    private boolean isActiveLocked() {
        return this.mState == 1;
    }

    private boolean isFinishedLocked() {
        return this.mState == 2;
    }

    public static int makeAuthenticationId(int i2, int i3) {
        return (i2 << 16) | (i3 & 65535);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyNoFillUi(int i2, AutofillId autofillId, boolean z2) {
        AutofillCallback autofillCallback;
        if (Helper.sVerbose) {
            Log.v(TAG, "notifyNoFillUi(): sessionId=" + i2 + ", autofillId=" + autofillId + ", finished=" + z2);
        }
        View viewFindView = findView(autofillId);
        if (viewFindView == null) {
            return;
        }
        synchronized (this.mLock) {
            autofillCallback = (this.mSessionId != i2 || getClientLocked() == null) ? null : this.mCallback;
        }
        if (autofillCallback != null) {
            if (autofillId.isVirtual()) {
                autofillCallback.onAutofillEvent(viewFindView, autofillId.getVirtualChildId(), 3);
            } else {
                autofillCallback.onAutofillEvent(viewFindView, 3);
            }
        }
        if (z2) {
            setSessionFinished(2);
        }
    }

    private void notifyViewVisibilityChangedInternal(View view, int i2, boolean z2, boolean z3) {
        ArraySet<AutofillId> arraySet;
        synchronized (this.mLock) {
            if (this.mEnabled && isActiveLocked()) {
                AutofillId autofillId = z3 ? getAutofillId(view, i2) : view.getAutofillId();
                if (!z2 && (arraySet = this.mFillableIds) != null && arraySet.contains(autofillId)) {
                    if (Helper.sDebug) {
                        Log.d(TAG, "Hidding UI when view " + autofillId + " became invisible");
                    }
                    requestHideFillUi(autofillId, view);
                }
                TrackedViews trackedViews = this.mTrackedViews;
                if (trackedViews != null) {
                    trackedViews.notifyViewVisibilityChanged(autofillId, z2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void post(Runnable runnable) {
        AutofillClient clientLocked = getClientLocked();
        if (clientLocked != null) {
            clientLocked.runOnUiThread(runnable);
        } else if (Helper.sVerbose) {
            Log.v(TAG, "ignoring post() because client is null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestHideFillUi(AutofillId autofillId) {
        View viewFindView = findView(autofillId);
        if (Helper.sVerbose) {
            Log.v(TAG, "requestHideFillUi(" + autofillId + "): anchor = " + viewFindView);
        }
        if (viewFindView == null) {
            return;
        }
        requestHideFillUi(autofillId, viewFindView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestShowFillUi(int i2, AutofillId autofillId, int i3, int i4, Rect rect, IAutofillWindowPresenter iAutofillWindowPresenter) {
        AutofillCallback autofillCallback;
        AutofillClient clientLocked;
        View viewFindView = findView(autofillId);
        if (viewFindView == null) {
            return;
        }
        synchronized (this.mLock) {
            if (this.mSessionId != i2 || (clientLocked = getClientLocked()) == null || !clientLocked.autofillCallbackRequestShowFillUi(viewFindView, i3, i4, rect, iAutofillWindowPresenter) || (autofillCallback = this.mCallback) == null) {
                autofillCallback = null;
            }
        }
        if (autofillCallback != null) {
            if (autofillId.isVirtual()) {
                autofillCallback.onAutofillEvent(viewFindView, autofillId.getVirtualChildId(), 1);
            } else {
                autofillCallback.onAutofillEvent(viewFindView, 1);
            }
        }
    }

    private void resetSessionLocked() {
        this.mSessionId = Integer.MIN_VALUE;
        this.mState = 0;
        this.mTrackedViews = null;
        this.mFillableIds = null;
    }

    private void setAutofilledIfValuesIs(View view, AutofillValue autofillValue) {
        if (Objects.equals(view.getAutofillValue(), autofillValue)) {
            synchronized (this.mLock) {
                if (this.mLastAutofilledData == null) {
                    this.mLastAutofilledData = new ParcelableMap(1);
                }
                this.mLastAutofilledData.put(getAutofillId(view), autofillValue);
            }
            view.setAutofilled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSaveUiState(int i2, boolean z2) {
        if (Helper.sDebug) {
            Log.d(TAG, "setSaveUiState(" + i2 + "): " + z2);
        }
        synchronized (this.mLock) {
            if (this.mSessionId != Integer.MIN_VALUE) {
                Log.w(TAG, "setSaveUiState(" + i2 + ", " + z2 + ") called on existing session " + this.mSessionId + "; cancelling it");
                cancelSessionLocked();
            }
            if (z2) {
                this.mSessionId = i2;
                this.mState = 3;
            } else {
                this.mSessionId = Integer.MIN_VALUE;
                this.mState = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSessionFinished(int i2) {
        synchronized (this.mLock) {
            if (Helper.sVerbose) {
                Log.v(TAG, "setSessionFinished(): from " + this.mState + " to " + i2);
            }
            resetSessionLocked();
            this.mState = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(boolean z2, boolean z3, boolean z4) {
        synchronized (this.mLock) {
            this.mEnabled = z2;
            if (!z2 || z3) {
                resetSessionLocked();
            }
            if (z4) {
                this.mServiceClient = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTrackedViews(int i2, AutofillId[] autofillIdArr, boolean z2, AutofillId[] autofillIdArr2) {
        synchronized (this.mLock) {
            if (this.mEnabled && this.mSessionId == i2) {
                if (z2) {
                    this.mTrackedViews = new TrackedViews(autofillIdArr);
                } else {
                    this.mTrackedViews = null;
                }
                if (autofillIdArr2 != null) {
                    if (this.mFillableIds == null) {
                        this.mFillableIds = new ArraySet<>(autofillIdArr2.length);
                    }
                    for (AutofillId autofillId : autofillIdArr2) {
                        this.mFillableIds.add(autofillId);
                    }
                    if (Helper.sVerbose) {
                        Log.v(TAG, "setTrackedViews(): fillableIds=" + autofillIdArr2 + ", mFillableIds" + this.mFillableIds);
                    }
                }
            }
        }
    }

    private void startSessionLocked(AutofillId autofillId, Rect rect, AutofillValue autofillValue, int i2) {
        if (Helper.sVerbose) {
            Log.v(TAG, "startSessionLocked(): id=" + autofillId + ", bounds=" + rect + ", value=" + autofillValue + ", flags=" + i2 + ", state=" + getStateAsStringLocked());
        }
        if (this.mState != 0 && (i2 & 1) == 0) {
            if (Helper.sVerbose) {
                Log.v(TAG, "not automatically starting session for " + autofillId + " on state " + getStateAsStringLocked());
                return;
            }
            return;
        }
        try {
            int iStartSession = this.mService.startSession(this.mContext.getActivityToken(), this.mServiceClient.asBinder(), autofillId, rect, autofillValue, this.mContext.getUserId(), this.mCallback != null, i2, this.mContext.getOpPackageName());
            this.mSessionId = iStartSession;
            if (iStartSession != Integer.MIN_VALUE) {
                this.mState = 1;
            }
            AutofillClient clientLocked = getClientLocked();
            if (clientLocked != null) {
                clientLocked.autofillCallbackResetableStateAvailable();
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private void updateSessionLocked(AutofillId autofillId, Rect rect, AutofillValue autofillValue, int i2, int i3) {
        if (Helper.sVerbose && i2 != 3) {
            Log.v(TAG, "updateSessionLocked(): id=" + autofillId + ", bounds=" + rect + ", value=" + autofillValue + ", action=" + i2 + ", flags=" + i3);
        }
        try {
            if (!((i3 & 1) != 0)) {
                this.mService.updateSession(this.mSessionId, autofillId, rect, autofillValue, i2, i3, this.mContext.getUserId());
                return;
            }
            int iUpdateOrRestartSession = this.mService.updateOrRestartSession(this.mContext.getActivityToken(), this.mServiceClient.asBinder(), autofillId, rect, autofillValue, this.mContext.getUserId(), this.mCallback != null, i3, this.mContext.getOpPackageName(), this.mSessionId, i2);
            if (iUpdateOrRestartSession != this.mSessionId) {
                if (Helper.sDebug) {
                    Log.d(TAG, "Session restarted: " + this.mSessionId + "=>" + iUpdateOrRestartSession);
                }
                this.mSessionId = iUpdateOrRestartSession;
                this.mState = iUpdateOrRestartSession == Integer.MIN_VALUE ? 0 : 1;
                AutofillClient clientLocked = getClientLocked();
                if (clientLocked != null) {
                    clientLocked.autofillCallbackResetableStateAvailable();
                }
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void cancel() {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                if (this.mEnabled || isActiveLocked()) {
                    cancelSessionLocked();
                }
            }
        }
    }

    public void commit() {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                if (this.mEnabled || isActiveLocked()) {
                    finishSessionLocked();
                }
            }
        }
    }

    public void disableAutofillServices() {
        if (hasAutofillFeature()) {
            try {
                this.mService.disableOwnedAutofillServices(this.mContext.getUserId());
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public void disableOwnedAutofillServices() {
        disableAutofillServices();
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.println("AutofillManager:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("sessionId: ");
        printWriter.println(this.mSessionId);
        printWriter.print(str2);
        printWriter.print("state: ");
        printWriter.println(getStateAsStringLocked());
        printWriter.print(str2);
        printWriter.print("enabled: ");
        android.accessibilityservice.c.y(printWriter, this.mEnabled, str2, "hasService: ");
        android.accessibilityservice.c.y(printWriter, this.mService != null, str2, "hasCallback: ");
        android.accessibilityservice.c.y(printWriter, this.mCallback != null, str2, "last autofilled data: ");
        printWriter.println(this.mLastAutofilledData);
        printWriter.print(str2);
        printWriter.print("tracked views: ");
        if (this.mTrackedViews == null) {
            printWriter.println("null");
        } else {
            String str3 = str2 + "  ";
            printWriter.println();
            printWriter.print(str3);
            printWriter.print("visible:");
            printWriter.println(this.mTrackedViews.mVisibleTrackedIds);
            printWriter.print(str3);
            printWriter.print("invisible:");
            printWriter.println(this.mTrackedViews.mInvisibleTrackedIds);
        }
        printWriter.print(str2);
        printWriter.print("fillable ids: ");
        printWriter.println(this.mFillableIds);
    }

    public FillEventHistory getFillEventHistory() {
        try {
            return this.mService.getFillEventHistory();
        } catch (RemoteException e2) {
            e2.rethrowFromSystemServer();
            return null;
        }
    }

    public boolean hasAutofillFeature() {
        return this.mService != null;
    }

    public boolean hasEnabledAutofillServices() {
        IAutoFillManager iAutoFillManager = this.mService;
        if (iAutoFillManager == null) {
            return false;
        }
        try {
            return iAutoFillManager.isServiceEnabled(this.mContext.getUserId(), this.mContext.getPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isAutofillSupported() {
        IAutoFillManager iAutoFillManager = this.mService;
        if (iAutoFillManager == null) {
            return false;
        }
        try {
            return iAutoFillManager.isServiceSupported(this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isEnabled() {
        boolean z2;
        if (!hasAutofillFeature()) {
            return false;
        }
        synchronized (this.mLock) {
            ensureServiceClientAddedIfNeededLocked();
            z2 = this.mEnabled;
        }
        return z2;
    }

    public void notifyValueChanged(View view) {
        AutofillValue autofillValue;
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                AutofillValue autofillValue2 = null;
                AutofillId autofillId = null;
                boolean z2 = false;
                if (this.mLastAutofilledData == null) {
                    view.setAutofilled(false);
                    autofillValue = null;
                } else {
                    AutofillId autofillId2 = getAutofillId(view);
                    if (this.mLastAutofilledData.containsKey(autofillId2)) {
                        autofillValue2 = view.getAutofillValue();
                        if (Objects.equals(this.mLastAutofilledData.get(autofillId2), autofillValue2)) {
                            view.setAutofilled(true);
                        } else {
                            view.setAutofilled(false);
                            this.mLastAutofilledData.remove(autofillId2);
                        }
                        z2 = true;
                    } else {
                        view.setAutofilled(false);
                    }
                    AutofillValue autofillValue3 = autofillValue2;
                    autofillId = autofillId2;
                    autofillValue = autofillValue3;
                }
                if (this.mEnabled && isActiveLocked()) {
                    if (autofillId == null) {
                        autofillId = getAutofillId(view);
                    }
                    if (!z2) {
                        autofillValue = view.getAutofillValue();
                    }
                    updateSessionLocked(autofillId, null, autofillValue, 4, 0);
                    return;
                }
                if (Helper.sVerbose && this.mEnabled) {
                    Log.v(TAG, "notifyValueChanged(" + view + "): ignoring on state " + getStateAsStringLocked());
                }
            }
        }
    }

    public void notifyViewEntered(View view) {
        notifyViewEntered(view, 0);
    }

    public void notifyViewExited(View view) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                ensureServiceClientAddedIfNeededLocked();
                if (this.mEnabled && isActiveLocked()) {
                    updateSessionLocked(getAutofillId(view), null, null, 3, 0);
                }
            }
        }
    }

    public void notifyViewVisibilityChanged(View view, boolean z2) {
        notifyViewVisibilityChangedInternal(view, 0, z2, false);
    }

    public void onAuthenticationResult(int i2, Intent intent) {
        if (hasAutofillFeature()) {
            if (Helper.sDebug) {
                Log.d(TAG, "onAuthenticationResult(): d=" + intent);
            }
            synchronized (this.mLock) {
                if (isActiveLocked() && intent != null) {
                    Parcelable parcelableExtra = intent.getParcelableExtra(EXTRA_AUTHENTICATION_RESULT);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(EXTRA_AUTHENTICATION_RESULT, parcelableExtra);
                    try {
                        this.mService.setAuthenticationResult(bundle, this.mSessionId, i2, this.mContext.getUserId());
                    } catch (RemoteException e2) {
                        Log.e(TAG, "Error delivering authentication result", e2);
                    }
                }
            }
        }
    }

    public void onCreate(Bundle bundle) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                this.mLastAutofilledData = (ParcelableMap) bundle.getParcelable(LAST_AUTOFILLED_DATA_TAG);
                if (isActiveLocked()) {
                    Log.w(TAG, "New session was started before onCreate()");
                    return;
                }
                this.mSessionId = bundle.getInt(SESSION_ID_TAG, Integer.MIN_VALUE);
                this.mState = bundle.getInt(STATE_TAG, 0);
                if (this.mSessionId != Integer.MIN_VALUE) {
                    ensureServiceClientAddedIfNeededLocked();
                    AutofillClient clientLocked = getClientLocked();
                    if (clientLocked != null) {
                        try {
                            if (this.mService.restoreSession(this.mSessionId, this.mContext.getActivityToken(), this.mServiceClient.asBinder())) {
                                if (Helper.sDebug) {
                                    Log.d(TAG, "session " + this.mSessionId + " was restored");
                                }
                                clientLocked.autofillCallbackResetableStateAvailable();
                            } else {
                                Log.w(TAG, "Session " + this.mSessionId + " could not be restored");
                                this.mSessionId = Integer.MIN_VALUE;
                                this.mState = 0;
                            }
                        } catch (RemoteException e2) {
                            Log.e(TAG, "Could not figure out if there was an autofill session", e2);
                        }
                    }
                }
            }
        }
    }

    public void onPendingSaveUi(int i2, IBinder iBinder) {
        if (Helper.sVerbose) {
            Log.v(TAG, "onPendingSaveUi(" + i2 + "): " + iBinder);
        }
        synchronized (this.mLock) {
            try {
                this.mService.onPendingSaveUi(i2, iBinder);
            } catch (RemoteException e2) {
                e2.rethrowFromSystemServer();
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                int i2 = this.mSessionId;
                if (i2 != Integer.MIN_VALUE) {
                    bundle.putInt(SESSION_ID_TAG, i2);
                }
                int i3 = this.mState;
                if (i3 != 0) {
                    bundle.putInt(STATE_TAG, i3);
                }
                ParcelableMap parcelableMap = this.mLastAutofilledData;
                if (parcelableMap != null) {
                    bundle.putParcelable(LAST_AUTOFILLED_DATA_TAG, parcelableMap);
                }
            }
        }
    }

    public void onVisibleForAutofill() {
        TrackedViews trackedViews;
        synchronized (this.mLock) {
            if (this.mEnabled && isActiveLocked() && (trackedViews = this.mTrackedViews) != null) {
                trackedViews.onVisibleForAutofillLocked();
            }
        }
    }

    public void registerCallback(AutofillCallback autofillCallback) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                if (autofillCallback == null) {
                    return;
                }
                boolean z2 = this.mCallback != null;
                this.mCallback = autofillCallback;
                if (!z2) {
                    try {
                        this.mService.setHasCallback(this.mSessionId, this.mContext.getUserId(), true);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }
    }

    public void requestAutofill(View view) {
        notifyViewEntered(view, 1);
    }

    public void unregisterCallback(AutofillCallback autofillCallback) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                if (autofillCallback != null) {
                    AutofillCallback autofillCallback2 = this.mCallback;
                    if (autofillCallback2 != null && autofillCallback == autofillCallback2) {
                        this.mCallback = null;
                        try {
                            this.mService.setHasCallback(this.mSessionId, this.mContext.getUserId(), false);
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
                        }
                    }
                }
            }
        }
    }

    private static AutofillId getAutofillId(View view, int i2) {
        return new AutofillId(view.getAutofillViewId(), i2);
    }

    private void notifyViewEntered(View view, int i2) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                if (isFinishedLocked() && (i2 & 1) == 0) {
                    if (Helper.sVerbose) {
                        Log.v(TAG, "notifyViewEntered(flags=" + i2 + ", view=" + view + "): ignored on state " + getStateAsStringLocked());
                    }
                    return;
                }
                ensureServiceClientAddedIfNeededLocked();
                AutofillCallback autofillCallback = null;
                if (this.mEnabled) {
                    AutofillId autofillId = getAutofillId(view);
                    AutofillValue autofillValue = view.getAutofillValue();
                    if (isActiveLocked()) {
                        updateSessionLocked(autofillId, null, autofillValue, 2, i2);
                    } else {
                        startSessionLocked(autofillId, null, autofillValue, i2);
                    }
                } else {
                    AutofillCallback autofillCallback2 = this.mCallback;
                    if (autofillCallback2 != null) {
                        autofillCallback = autofillCallback2;
                    }
                }
                if (autofillCallback != null) {
                    this.mCallback.onAutofillEvent(view, 3);
                }
            }
        }
    }

    public void notifyViewVisibilityChanged(View view, int i2, boolean z2) {
        notifyViewVisibilityChangedInternal(view, i2, z2, true);
    }

    public void requestAutofill(View view, int i2, Rect rect) {
        notifyViewEntered(view, i2, rect, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] getViewIds(List<AutofillId> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = list.get(i2).getViewId();
        }
        return iArr;
    }

    private void requestHideFillUi(AutofillId autofillId, View view) {
        AutofillCallback autofillCallback;
        synchronized (this.mLock) {
            AutofillClient clientLocked = getClientLocked();
            if (clientLocked == null || !clientLocked.autofillCallbackRequestHideFillUi() || (autofillCallback = this.mCallback) == null) {
                autofillCallback = null;
            }
        }
        if (autofillCallback != null) {
            if (autofillId.isVirtual()) {
                autofillCallback.onAutofillEvent(view, autofillId.getVirtualChildId(), 2);
            } else {
                autofillCallback.onAutofillEvent(view, 2);
            }
        }
    }

    public void notifyViewExited(View view, int i2) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                ensureServiceClientAddedIfNeededLocked();
                if (this.mEnabled && isActiveLocked()) {
                    updateSessionLocked(getAutofillId(view, i2), null, null, 3, 0);
                }
            }
        }
    }

    public void notifyViewEntered(View view, int i2, Rect rect) {
        notifyViewEntered(view, i2, rect, 0);
    }

    private void notifyViewEntered(View view, int i2, Rect rect, int i3) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                if (isFinishedLocked() && (i3 & 1) == 0) {
                    if (Helper.sVerbose) {
                        Log.v(TAG, "notifyViewEntered(flags=" + i3 + ", view=" + view + ", virtualId=" + i2 + "): ignored on state " + getStateAsStringLocked());
                    }
                    return;
                }
                ensureServiceClientAddedIfNeededLocked();
                AutofillCallback autofillCallback = null;
                if (!this.mEnabled) {
                    AutofillCallback autofillCallback2 = this.mCallback;
                    if (autofillCallback2 != null) {
                        autofillCallback = autofillCallback2;
                    }
                } else {
                    AutofillId autofillId = getAutofillId(view, i2);
                    if (!isActiveLocked()) {
                        startSessionLocked(autofillId, rect, null, i3);
                    } else {
                        updateSessionLocked(autofillId, rect, null, 2, i3);
                    }
                }
                if (autofillCallback != null) {
                    autofillCallback.onAutofillEvent(view, i2, 3);
                }
            }
        }
    }

    public void notifyValueChanged(View view, int i2, AutofillValue autofillValue) {
        if (hasAutofillFeature()) {
            synchronized (this.mLock) {
                if (this.mEnabled && isActiveLocked()) {
                    updateSessionLocked(getAutofillId(view, i2), null, autofillValue, 4, 0);
                }
            }
        }
    }
}
