package android.app;

import android.content.Context;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.provider.SettingsStringUtil;
import android.util.ArrayMap;
import android.util.DebugUtils;
import android.util.Log;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.app.IVoiceInteractorCallback;
import com.android.internal.app.IVoiceInteractorRequest;
import com.android.internal.os.HandlerCaller;
import com.android.internal.os.SomeArgs;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class VoiceInteractor {
    static final boolean DEBUG = false;
    static final int MSG_ABORT_VOICE_RESULT = 4;
    static final int MSG_CANCEL_RESULT = 6;
    static final int MSG_COMMAND_RESULT = 5;
    static final int MSG_COMPLETE_VOICE_RESULT = 3;
    static final int MSG_CONFIRMATION_RESULT = 1;
    static final int MSG_PICK_OPTION_RESULT = 2;
    static final Request[] NO_REQUESTS = new Request[0];
    static final String TAG = "VoiceInteractor";
    final ArrayMap<IBinder, Request> mActiveRequests;
    Activity mActivity;
    final IVoiceInteractorCallback.Stub mCallback;
    Context mContext;
    final HandlerCaller mHandlerCaller;
    final HandlerCaller.Callback mHandlerCallerCallback;
    final IVoiceInteractor mInteractor;
    boolean mRetaining;

    public static class CommandRequest extends Request {
        final Bundle mArgs;
        final String mCommand;

        public CommandRequest(String str, Bundle bundle) {
            this.mCommand = str;
            this.mArgs = bundle;
        }

        @Override // android.app.VoiceInteractor.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mCommand=");
            printWriter.println(this.mCommand);
            if (this.mArgs != null) {
                printWriter.print(str);
                printWriter.print("mArgs=");
                printWriter.println(this.mArgs);
            }
        }

        @Override // android.app.VoiceInteractor.Request
        public String getRequestTypeName() {
            return "Command";
        }

        public void onCommandResult(boolean z2, Bundle bundle) {
        }

        @Override // android.app.VoiceInteractor.Request
        public IVoiceInteractorRequest submit(IVoiceInteractor iVoiceInteractor, String str, IVoiceInteractorCallback iVoiceInteractorCallback) {
            return iVoiceInteractor.startCommand(str, iVoiceInteractorCallback, this.mCommand, this.mArgs);
        }
    }

    public static abstract class Request {
        Activity mActivity;
        Context mContext;
        String mName;
        IVoiceInteractorRequest mRequestInterface;

        public void cancel() {
            IVoiceInteractorRequest iVoiceInteractorRequest = this.mRequestInterface;
            if (iVoiceInteractorRequest == null) {
                throw new IllegalStateException("Request " + this + " is no longer active");
            }
            try {
                iVoiceInteractorRequest.cancel();
            } catch (RemoteException e2) {
                Log.w(VoiceInteractor.TAG, "Voice interactor has died", e2);
            }
        }

        public void clear() {
            this.mRequestInterface = null;
            this.mContext = null;
            this.mActivity = null;
            this.mName = null;
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mRequestInterface=");
            printWriter.println(this.mRequestInterface.asBinder());
            printWriter.print(str);
            printWriter.print("mActivity=");
            printWriter.println(this.mActivity);
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.println(this.mName);
        }

        public Activity getActivity() {
            return this.mActivity;
        }

        public Context getContext() {
            return this.mContext;
        }

        public String getName() {
            return this.mName;
        }

        public String getRequestTypeName() {
            return "Request";
        }

        public void onAttached(Activity activity) {
        }

        public void onCancel() {
        }

        public void onDetached() {
        }

        public abstract IVoiceInteractorRequest submit(IVoiceInteractor iVoiceInteractor, String str, IVoiceInteractorCallback iVoiceInteractorCallback);

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            DebugUtils.buildShortClassTag(this, sb);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(getRequestTypeName());
            sb.append(" name=");
            sb.append(this.mName);
            sb.append('}');
            return sb.toString();
        }
    }

    public VoiceInteractor(IVoiceInteractor iVoiceInteractor, Context context, Activity activity, Looper looper) {
        HandlerCaller.Callback callback = new HandlerCaller.Callback() { // from class: android.app.VoiceInteractor.1
            @Override // com.android.internal.os.HandlerCaller.Callback
            public void executeMessage(Message message) {
                SomeArgs someArgs = (SomeArgs) message.obj;
                switch (message.what) {
                    case 1:
                        Request requestPullRequest = VoiceInteractor.this.pullRequest((IVoiceInteractorRequest) someArgs.arg1, true);
                        if (requestPullRequest != null) {
                            ((ConfirmationRequest) requestPullRequest).onConfirmationResult(message.arg1 != 0, (Bundle) someArgs.arg2);
                            requestPullRequest.clear();
                        }
                        break;
                    case 2:
                        boolean z2 = message.arg1 != 0;
                        Request requestPullRequest2 = VoiceInteractor.this.pullRequest((IVoiceInteractorRequest) someArgs.arg1, z2);
                        if (requestPullRequest2 != null) {
                            ((PickOptionRequest) requestPullRequest2).onPickOptionResult(z2, (PickOptionRequest.Option[]) someArgs.arg2, (Bundle) someArgs.arg3);
                            if (z2) {
                                requestPullRequest2.clear();
                            }
                        }
                        break;
                    case 3:
                        Request requestPullRequest3 = VoiceInteractor.this.pullRequest((IVoiceInteractorRequest) someArgs.arg1, true);
                        if (requestPullRequest3 != null) {
                            ((CompleteVoiceRequest) requestPullRequest3).onCompleteResult((Bundle) someArgs.arg2);
                            requestPullRequest3.clear();
                        }
                        break;
                    case 4:
                        Request requestPullRequest4 = VoiceInteractor.this.pullRequest((IVoiceInteractorRequest) someArgs.arg1, true);
                        if (requestPullRequest4 != null) {
                            ((AbortVoiceRequest) requestPullRequest4).onAbortResult((Bundle) someArgs.arg2);
                            requestPullRequest4.clear();
                        }
                        break;
                    case 5:
                        boolean z3 = message.arg1 != 0;
                        Request requestPullRequest5 = VoiceInteractor.this.pullRequest((IVoiceInteractorRequest) someArgs.arg1, z3);
                        if (requestPullRequest5 != null) {
                            ((CommandRequest) requestPullRequest5).onCommandResult(message.arg1 != 0, (Bundle) someArgs.arg2);
                            if (z3) {
                                requestPullRequest5.clear();
                            }
                        }
                        break;
                    case 6:
                        Request requestPullRequest6 = VoiceInteractor.this.pullRequest((IVoiceInteractorRequest) someArgs.arg1, true);
                        if (requestPullRequest6 != null) {
                            requestPullRequest6.onCancel();
                            requestPullRequest6.clear();
                        }
                        break;
                }
            }
        };
        this.mHandlerCallerCallback = callback;
        this.mCallback = new IVoiceInteractorCallback.Stub() { // from class: android.app.VoiceInteractor.2
            @Override // com.android.internal.app.IVoiceInteractorCallback
            public void deliverAbortVoiceResult(IVoiceInteractorRequest iVoiceInteractorRequest, Bundle bundle) {
                HandlerCaller handlerCaller = VoiceInteractor.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageOO(4, iVoiceInteractorRequest, bundle));
            }

            @Override // com.android.internal.app.IVoiceInteractorCallback
            public void deliverCancel(IVoiceInteractorRequest iVoiceInteractorRequest) {
                HandlerCaller handlerCaller = VoiceInteractor.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageOO(6, iVoiceInteractorRequest, null));
            }

            @Override // com.android.internal.app.IVoiceInteractorCallback
            public void deliverCommandResult(IVoiceInteractorRequest iVoiceInteractorRequest, boolean z2, Bundle bundle) {
                HandlerCaller handlerCaller = VoiceInteractor.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageIOO(5, z2 ? 1 : 0, iVoiceInteractorRequest, bundle));
            }

            @Override // com.android.internal.app.IVoiceInteractorCallback
            public void deliverCompleteVoiceResult(IVoiceInteractorRequest iVoiceInteractorRequest, Bundle bundle) {
                HandlerCaller handlerCaller = VoiceInteractor.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageOO(3, iVoiceInteractorRequest, bundle));
            }

            @Override // com.android.internal.app.IVoiceInteractorCallback
            public void deliverConfirmationResult(IVoiceInteractorRequest iVoiceInteractorRequest, boolean z2, Bundle bundle) {
                HandlerCaller handlerCaller = VoiceInteractor.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageIOO(1, z2 ? 1 : 0, iVoiceInteractorRequest, bundle));
            }

            @Override // com.android.internal.app.IVoiceInteractorCallback
            public void deliverPickOptionResult(IVoiceInteractorRequest iVoiceInteractorRequest, boolean z2, PickOptionRequest.Option[] optionArr, Bundle bundle) {
                HandlerCaller handlerCaller = VoiceInteractor.this.mHandlerCaller;
                handlerCaller.sendMessage(handlerCaller.obtainMessageIOOO(2, z2 ? 1 : 0, iVoiceInteractorRequest, optionArr, bundle));
            }
        };
        this.mActiveRequests = new ArrayMap<>();
        this.mInteractor = iVoiceInteractor;
        this.mContext = context;
        this.mActivity = activity;
        this.mHandlerCaller = new HandlerCaller(context, looper, callback, true);
    }

    private ArrayList<Request> makeRequestList() {
        int size = this.mActiveRequests.size();
        if (size < 1) {
            return null;
        }
        ArrayList<Request> arrayList = new ArrayList<>(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(this.mActiveRequests.valueAt(i2));
        }
        return arrayList;
    }

    public void attachActivity(Activity activity) {
        this.mRetaining = false;
        if (this.mActivity == activity) {
            return;
        }
        this.mContext = activity;
        this.mActivity = activity;
        ArrayList<Request> arrayListMakeRequestList = makeRequestList();
        if (arrayListMakeRequestList != null) {
            for (int i2 = 0; i2 < arrayListMakeRequestList.size(); i2++) {
                Request request = arrayListMakeRequestList.get(i2);
                request.mContext = activity;
                request.mActivity = activity;
                request.onAttached(activity);
            }
        }
    }

    public void detachActivity() {
        ArrayList<Request> arrayListMakeRequestList = makeRequestList();
        if (arrayListMakeRequestList != null) {
            for (int i2 = 0; i2 < arrayListMakeRequestList.size(); i2++) {
                Request request = arrayListMakeRequestList.get(i2);
                request.onDetached();
                request.mActivity = null;
                request.mContext = null;
            }
        }
        if (!this.mRetaining) {
            ArrayList<Request> arrayListMakeRequestList2 = makeRequestList();
            if (arrayListMakeRequestList2 != null) {
                for (int i3 = 0; i3 < arrayListMakeRequestList2.size(); i3++) {
                    arrayListMakeRequestList2.get(i3).cancel();
                }
            }
            this.mActiveRequests.clear();
        }
        this.mContext = null;
        this.mActivity = null;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String strD = android.accessibilityservice.c.D(str, "    ");
        if (this.mActiveRequests.size() > 0) {
            printWriter.print(str);
            printWriter.println("Active voice requests:");
            for (int i2 = 0; i2 < this.mActiveRequests.size(); i2++) {
                Request requestValueAt = this.mActiveRequests.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(requestValueAt);
                requestValueAt.dump(strD, fileDescriptor, printWriter, strArr);
            }
        }
        printWriter.print(str);
        printWriter.println("VoiceInteractor misc state:");
        printWriter.print(str);
        printWriter.print("  mInteractor=");
        printWriter.println(this.mInteractor.asBinder());
        printWriter.print(str);
        printWriter.print("  mActivity=");
        printWriter.println(this.mActivity);
    }

    public Request getActiveRequest(String str) {
        int i2;
        synchronized (this.mActiveRequests) {
            int size = this.mActiveRequests.size();
            while (i2 < size) {
                Request requestValueAt = this.mActiveRequests.valueAt(i2);
                i2 = (str != requestValueAt.getName() && (str == null || !str.equals(requestValueAt.getName()))) ? i2 + 1 : 0;
                return requestValueAt;
            }
            return null;
        }
    }

    public Request[] getActiveRequests() {
        synchronized (this.mActiveRequests) {
            int size = this.mActiveRequests.size();
            if (size <= 0) {
                return NO_REQUESTS;
            }
            Request[] requestArr = new Request[size];
            for (int i2 = 0; i2 < size; i2++) {
                requestArr[i2] = this.mActiveRequests.valueAt(i2);
            }
            return requestArr;
        }
    }

    public Request pullRequest(IVoiceInteractorRequest iVoiceInteractorRequest, boolean z2) {
        Request request;
        synchronized (this.mActiveRequests) {
            request = this.mActiveRequests.get(iVoiceInteractorRequest.asBinder());
            if (request != null && z2) {
                this.mActiveRequests.remove(iVoiceInteractorRequest.asBinder());
            }
        }
        return request;
    }

    public void retainInstance() {
        this.mRetaining = true;
    }

    public boolean submitRequest(Request request) {
        return submitRequest(request, null);
    }

    public boolean[] supportsCommands(String[] strArr) {
        try {
            return this.mInteractor.supportsCommands(this.mContext.getOpPackageName(), strArr);
        } catch (RemoteException e2) {
            throw new RuntimeException("Voice interactor has died", e2);
        }
    }

    public static class PickOptionRequest extends Request {
        final Bundle mExtras;
        final Option[] mOptions;
        final Prompt mPrompt;

        public PickOptionRequest(Prompt prompt, Option[] optionArr, Bundle bundle) {
            this.mPrompt = prompt;
            this.mOptions = optionArr;
            this.mExtras = bundle;
        }

        @Override // android.app.VoiceInteractor.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mPrompt=");
            printWriter.println(this.mPrompt);
            if (this.mOptions != null) {
                printWriter.print(str);
                printWriter.println("Options:");
                int i2 = 0;
                while (true) {
                    Option[] optionArr = this.mOptions;
                    if (i2 >= optionArr.length) {
                        break;
                    }
                    Option option = optionArr[i2];
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i2);
                    printWriter.println(SettingsStringUtil.DELIMITER);
                    printWriter.print(str);
                    printWriter.print("    mLabel=");
                    printWriter.println(option.mLabel);
                    printWriter.print(str);
                    printWriter.print("    mIndex=");
                    printWriter.println(option.mIndex);
                    ArrayList<CharSequence> arrayList = option.mSynonyms;
                    if (arrayList != null && arrayList.size() > 0) {
                        printWriter.print(str);
                        printWriter.println("    Synonyms:");
                        for (int i3 = 0; i3 < option.mSynonyms.size(); i3++) {
                            printWriter.print(str);
                            printWriter.print("      #");
                            printWriter.print(i3);
                            printWriter.print(": ");
                            printWriter.println(option.mSynonyms.get(i3));
                        }
                    }
                    if (option.mExtras != null) {
                        printWriter.print(str);
                        printWriter.print("    mExtras=");
                        printWriter.println(option.mExtras);
                    }
                    i2++;
                }
            }
            if (this.mExtras != null) {
                printWriter.print(str);
                printWriter.print("mExtras=");
                printWriter.println(this.mExtras);
            }
        }

        @Override // android.app.VoiceInteractor.Request
        public String getRequestTypeName() {
            return "PickOption";
        }

        public void onPickOptionResult(boolean z2, Option[] optionArr, Bundle bundle) {
        }

        @Override // android.app.VoiceInteractor.Request
        public IVoiceInteractorRequest submit(IVoiceInteractor iVoiceInteractor, String str, IVoiceInteractorCallback iVoiceInteractorCallback) {
            return iVoiceInteractor.startPickOption(str, iVoiceInteractorCallback, this.mPrompt, this.mOptions, this.mExtras);
        }

        public static final class Option implements Parcelable {
            public static final Parcelable.Creator<Option> CREATOR = new Parcelable.Creator<Option>() { // from class: android.app.VoiceInteractor.PickOptionRequest.Option.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public Option createFromParcel(Parcel parcel) {
                    return new Option(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public Option[] newArray(int i2) {
                    return new Option[i2];
                }
            };
            Bundle mExtras;
            final int mIndex;
            final CharSequence mLabel;
            ArrayList<CharSequence> mSynonyms;

            public Option(CharSequence charSequence) {
                this.mLabel = charSequence;
                this.mIndex = -1;
            }

            public Option addSynonym(CharSequence charSequence) {
                if (this.mSynonyms == null) {
                    this.mSynonyms = new ArrayList<>();
                }
                this.mSynonyms.add(charSequence);
                return this;
            }

            public int countSynonyms() {
                ArrayList<CharSequence> arrayList = this.mSynonyms;
                if (arrayList != null) {
                    return arrayList.size();
                }
                return 0;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public Bundle getExtras() {
                return this.mExtras;
            }

            public int getIndex() {
                return this.mIndex;
            }

            public CharSequence getLabel() {
                return this.mLabel;
            }

            public CharSequence getSynonymAt(int i2) {
                ArrayList<CharSequence> arrayList = this.mSynonyms;
                if (arrayList != null) {
                    return arrayList.get(i2);
                }
                return null;
            }

            public void setExtras(Bundle bundle) {
                this.mExtras = bundle;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeCharSequence(this.mLabel);
                parcel.writeInt(this.mIndex);
                parcel.writeCharSequenceList(this.mSynonyms);
                parcel.writeBundle(this.mExtras);
            }

            public Option(CharSequence charSequence, int i2) {
                this.mLabel = charSequence;
                this.mIndex = i2;
            }

            public Option(Parcel parcel) {
                this.mLabel = parcel.readCharSequence();
                this.mIndex = parcel.readInt();
                this.mSynonyms = parcel.readCharSequenceList();
                this.mExtras = parcel.readBundle();
            }
        }

        public PickOptionRequest(CharSequence charSequence, Option[] optionArr, Bundle bundle) {
            this.mPrompt = charSequence != null ? new Prompt(charSequence) : null;
            this.mOptions = optionArr;
            this.mExtras = bundle;
        }
    }

    public boolean submitRequest(Request request, String str) {
        try {
            if (request.mRequestInterface != null) {
                throw new IllegalStateException("Given " + request + " is already active");
            }
            IVoiceInteractorRequest iVoiceInteractorRequestSubmit = request.submit(this.mInteractor, this.mContext.getOpPackageName(), this.mCallback);
            request.mRequestInterface = iVoiceInteractorRequestSubmit;
            request.mContext = this.mContext;
            request.mActivity = this.mActivity;
            request.mName = str;
            synchronized (this.mActiveRequests) {
                this.mActiveRequests.put(iVoiceInteractorRequestSubmit.asBinder(), request);
            }
            return true;
        } catch (RemoteException e2) {
            Log.w(TAG, "Remove voice interactor service died", e2);
            return false;
        }
    }

    public static class AbortVoiceRequest extends Request {
        final Bundle mExtras;
        final Prompt mPrompt;

        public AbortVoiceRequest(Prompt prompt, Bundle bundle) {
            this.mPrompt = prompt;
            this.mExtras = bundle;
        }

        @Override // android.app.VoiceInteractor.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mPrompt=");
            printWriter.println(this.mPrompt);
            if (this.mExtras != null) {
                printWriter.print(str);
                printWriter.print("mExtras=");
                printWriter.println(this.mExtras);
            }
        }

        @Override // android.app.VoiceInteractor.Request
        public String getRequestTypeName() {
            return "AbortVoice";
        }

        public void onAbortResult(Bundle bundle) {
        }

        @Override // android.app.VoiceInteractor.Request
        public IVoiceInteractorRequest submit(IVoiceInteractor iVoiceInteractor, String str, IVoiceInteractorCallback iVoiceInteractorCallback) {
            return iVoiceInteractor.startAbortVoice(str, iVoiceInteractorCallback, this.mPrompt, this.mExtras);
        }

        public AbortVoiceRequest(CharSequence charSequence, Bundle bundle) {
            this.mPrompt = charSequence != null ? new Prompt(charSequence) : null;
            this.mExtras = bundle;
        }
    }

    public static class CompleteVoiceRequest extends Request {
        final Bundle mExtras;
        final Prompt mPrompt;

        public CompleteVoiceRequest(Prompt prompt, Bundle bundle) {
            this.mPrompt = prompt;
            this.mExtras = bundle;
        }

        @Override // android.app.VoiceInteractor.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mPrompt=");
            printWriter.println(this.mPrompt);
            if (this.mExtras != null) {
                printWriter.print(str);
                printWriter.print("mExtras=");
                printWriter.println(this.mExtras);
            }
        }

        @Override // android.app.VoiceInteractor.Request
        public String getRequestTypeName() {
            return "CompleteVoice";
        }

        public void onCompleteResult(Bundle bundle) {
        }

        @Override // android.app.VoiceInteractor.Request
        public IVoiceInteractorRequest submit(IVoiceInteractor iVoiceInteractor, String str, IVoiceInteractorCallback iVoiceInteractorCallback) {
            return iVoiceInteractor.startCompleteVoice(str, iVoiceInteractorCallback, this.mPrompt, this.mExtras);
        }

        public CompleteVoiceRequest(CharSequence charSequence, Bundle bundle) {
            this.mPrompt = charSequence != null ? new Prompt(charSequence) : null;
            this.mExtras = bundle;
        }
    }

    public static class ConfirmationRequest extends Request {
        final Bundle mExtras;
        final Prompt mPrompt;

        public ConfirmationRequest(Prompt prompt, Bundle bundle) {
            this.mPrompt = prompt;
            this.mExtras = bundle;
        }

        @Override // android.app.VoiceInteractor.Request
        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            super.dump(str, fileDescriptor, printWriter, strArr);
            printWriter.print(str);
            printWriter.print("mPrompt=");
            printWriter.println(this.mPrompt);
            if (this.mExtras != null) {
                printWriter.print(str);
                printWriter.print("mExtras=");
                printWriter.println(this.mExtras);
            }
        }

        @Override // android.app.VoiceInteractor.Request
        public String getRequestTypeName() {
            return "Confirmation";
        }

        public void onConfirmationResult(boolean z2, Bundle bundle) {
        }

        @Override // android.app.VoiceInteractor.Request
        public IVoiceInteractorRequest submit(IVoiceInteractor iVoiceInteractor, String str, IVoiceInteractorCallback iVoiceInteractorCallback) {
            return iVoiceInteractor.startConfirmation(str, iVoiceInteractorCallback, this.mPrompt, this.mExtras);
        }

        public ConfirmationRequest(CharSequence charSequence, Bundle bundle) {
            this.mPrompt = charSequence != null ? new Prompt(charSequence) : null;
            this.mExtras = bundle;
        }
    }

    public static class Prompt implements Parcelable {
        public static final Parcelable.Creator<Prompt> CREATOR = new Parcelable.Creator<Prompt>() { // from class: android.app.VoiceInteractor.Prompt.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Prompt createFromParcel(Parcel parcel) {
                return new Prompt(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Prompt[] newArray(int i2) {
                return new Prompt[i2];
            }
        };
        private final CharSequence mVisualPrompt;
        private final CharSequence[] mVoicePrompts;

        public Prompt(CharSequence[] charSequenceArr, CharSequence charSequence) {
            if (charSequenceArr == null) {
                throw new NullPointerException("voicePrompts must not be null");
            }
            if (charSequenceArr.length == 0) {
                throw new IllegalArgumentException("voicePrompts must not be empty");
            }
            if (charSequence == null) {
                throw new NullPointerException("visualPrompt must not be null");
            }
            this.mVoicePrompts = charSequenceArr;
            this.mVisualPrompt = charSequence;
        }

        public int countVoicePrompts() {
            return this.mVoicePrompts.length;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public CharSequence getVisualPrompt() {
            return this.mVisualPrompt;
        }

        public CharSequence getVoicePromptAt(int i2) {
            return this.mVoicePrompts[i2];
        }

        public String toString() {
            CharSequence[] charSequenceArr;
            StringBuilder sb = new StringBuilder(128);
            DebugUtils.buildShortClassTag(this, sb);
            CharSequence charSequence = this.mVisualPrompt;
            if (charSequence == null || (charSequenceArr = this.mVoicePrompts) == null || charSequenceArr.length != 1 || !charSequence.equals(charSequenceArr[0])) {
                if (this.mVisualPrompt != null) {
                    sb.append(" visual=");
                    sb.append(this.mVisualPrompt);
                }
                if (this.mVoicePrompts != null) {
                    sb.append(", voice=");
                    for (int i2 = 0; i2 < this.mVoicePrompts.length; i2++) {
                        if (i2 > 0) {
                            sb.append(" | ");
                        }
                        sb.append(this.mVoicePrompts[i2]);
                    }
                }
            } else {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sb.append(this.mVisualPrompt);
            }
            sb.append('}');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeCharSequenceArray(this.mVoicePrompts);
            parcel.writeCharSequence(this.mVisualPrompt);
        }

        public Prompt(CharSequence charSequence) {
            this.mVoicePrompts = new CharSequence[]{charSequence};
            this.mVisualPrompt = charSequence;
        }

        public Prompt(Parcel parcel) {
            this.mVoicePrompts = parcel.readCharSequenceArray();
            this.mVisualPrompt = parcel.readCharSequence();
        }
    }
}
