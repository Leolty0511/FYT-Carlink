package android.app.assist;

import android.accessibilityservice.c;
import android.app.Activity;
import android.content.ComponentName;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PooledStringReader;
import android.os.PooledStringWriter;
import android.os.RemoteException;
import android.os.SystemClock;
import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.TimedRemoteCaller;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.ViewStructure;
import android.view.WindowManagerGlobal;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.view.textclassifier.logging.SmartSelectionEventTracker;
import com.android.internal.content.NativeLibraryHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AssistStructure implements Parcelable {
    public static final Parcelable.Creator<AssistStructure> CREATOR = new Parcelable.Creator<AssistStructure>() { // from class: android.app.assist.AssistStructure.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AssistStructure createFromParcel(Parcel parcel) {
            return new AssistStructure(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AssistStructure[] newArray(int i2) {
            return new AssistStructure[i2];
        }
    };
    static final boolean DEBUG_PARCEL = false;
    static final boolean DEBUG_PARCEL_CHILDREN = false;
    static final boolean DEBUG_PARCEL_TREE = false;
    static final String DESCRIPTOR = "android.app.AssistStructure";
    static final String TAG = "AssistStructure";
    static final int TRANSACTION_XFER = 2;
    static final int VALIDATE_VIEW_TOKEN = 572662306;
    static final int VALIDATE_WINDOW_TOKEN = 286331153;
    private long mAcquisitionEndTime;
    private long mAcquisitionStartTime;
    ComponentName mActivityComponent;
    private int mFlags;
    boolean mHaveData;
    private boolean mIsHomeActivity;
    final ArrayList<ViewNodeBuilder> mPendingAsyncChildren;
    IBinder mReceiveChannel;
    boolean mSanitizeOnWrite;
    SendChannel mSendChannel;
    Rect mTmpRect;
    final ArrayList<WindowNode> mWindowNodes;

    public static class AutofillOverlay {
        public boolean focused;
        public AutofillValue value;
    }

    public static final class HtmlInfoNode extends ViewStructure.HtmlInfo implements Parcelable {
        public static final Parcelable.Creator<HtmlInfoNode> CREATOR = new Parcelable.Creator<HtmlInfoNode>() { // from class: android.app.assist.AssistStructure.HtmlInfoNode.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public HtmlInfoNode createFromParcel(Parcel parcel) {
                HtmlInfoNodeBuilder htmlInfoNodeBuilder = new HtmlInfoNodeBuilder(parcel.readString());
                String[] stringArray = parcel.readStringArray();
                String[] stringArray2 = parcel.readStringArray();
                if (stringArray != null && stringArray2 != null) {
                    if (stringArray.length != stringArray2.length) {
                        StringBuilder sb = new StringBuilder("HtmlInfo attributes mismatch: names=");
                        sb.append(stringArray.length);
                        sb.append(", values=");
                        c.A(sb, stringArray2.length, AssistStructure.TAG);
                    } else {
                        for (int i2 = 0; i2 < stringArray.length; i2++) {
                            htmlInfoNodeBuilder.addAttribute(stringArray[i2], stringArray2[i2]);
                        }
                    }
                }
                return htmlInfoNodeBuilder.build();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public HtmlInfoNode[] newArray(int i2) {
                return new HtmlInfoNode[i2];
            }
        };
        private ArrayList<Pair<String, String>> mAttributes;
        private final String[] mNames;
        private final String mTag;
        private final String[] mValues;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.ViewStructure.HtmlInfo
        public List<Pair<String, String>> getAttributes() {
            if (this.mAttributes == null && this.mNames != null) {
                this.mAttributes = new ArrayList<>(this.mNames.length);
                int i2 = 0;
                while (true) {
                    String[] strArr = this.mNames;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    this.mAttributes.add(i2, new Pair<>(strArr[i2], this.mValues[i2]));
                    i2++;
                }
            }
            return this.mAttributes;
        }

        @Override // android.view.ViewStructure.HtmlInfo
        public String getTag() {
            return this.mTag;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mTag);
            parcel.writeStringArray(this.mNames);
            parcel.writeStringArray(this.mValues);
        }

        private HtmlInfoNode(HtmlInfoNodeBuilder htmlInfoNodeBuilder) {
            this.mTag = htmlInfoNodeBuilder.mTag;
            if (htmlInfoNodeBuilder.mNames == null) {
                this.mNames = null;
                this.mValues = null;
                return;
            }
            String[] strArr = new String[htmlInfoNodeBuilder.mNames.size()];
            this.mNames = strArr;
            String[] strArr2 = new String[htmlInfoNodeBuilder.mValues.size()];
            this.mValues = strArr2;
            htmlInfoNodeBuilder.mNames.toArray(strArr);
            htmlInfoNodeBuilder.mValues.toArray(strArr2);
        }
    }

    public static final class HtmlInfoNodeBuilder extends ViewStructure.HtmlInfo.Builder {
        private ArrayList<String> mNames;
        private final String mTag;
        private ArrayList<String> mValues;

        public HtmlInfoNodeBuilder(String str) {
            this.mTag = str;
        }

        @Override // android.view.ViewStructure.HtmlInfo.Builder
        public ViewStructure.HtmlInfo.Builder addAttribute(String str, String str2) {
            if (this.mNames == null) {
                this.mNames = new ArrayList<>();
                this.mValues = new ArrayList<>();
            }
            this.mNames.add(str);
            this.mValues.add(str2);
            return this;
        }

        @Override // android.view.ViewStructure.HtmlInfo.Builder
        public HtmlInfoNode build() {
            return new HtmlInfoNode(this);
        }
    }

    public final class ParcelTransferReader {
        private final IBinder mChannel;
        private Parcel mCurParcel;
        int mNumReadViews;
        int mNumReadWindows;
        PooledStringReader mStringReader;
        final float[] mTmpMatrix = new float[9];
        private IBinder mTransferToken;

        public ParcelTransferReader(IBinder iBinder) {
            this.mChannel = iBinder;
        }

        private void fetchData() {
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(AssistStructure.DESCRIPTOR);
            parcelObtain.writeStrongBinder(this.mTransferToken);
            Parcel parcel = this.mCurParcel;
            if (parcel != null) {
                parcel.recycle();
            }
            Parcel parcelObtain2 = Parcel.obtain();
            this.mCurParcel = parcelObtain2;
            try {
                this.mChannel.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain.recycle();
                this.mNumReadViews = 0;
                this.mNumReadWindows = 0;
            } catch (RemoteException e2) {
                Log.w(AssistStructure.TAG, "Failure reading AssistStructure data", e2);
                throw new IllegalStateException("Failure reading AssistStructure data: " + e2);
            }
        }

        public void go() {
            fetchData();
            AssistStructure.this.mActivityComponent = ComponentName.readFromParcel(this.mCurParcel);
            AssistStructure.this.mFlags = this.mCurParcel.readInt();
            AssistStructure.this.mAcquisitionStartTime = this.mCurParcel.readLong();
            AssistStructure.this.mAcquisitionEndTime = this.mCurParcel.readLong();
            int i2 = this.mCurParcel.readInt();
            if (i2 > 0) {
                this.mStringReader = new PooledStringReader(this.mCurParcel);
                for (int i3 = 0; i3 < i2; i3++) {
                    AssistStructure.this.mWindowNodes.add(new WindowNode(this));
                }
            }
        }

        public Parcel readParcel(int i2, int i3) {
            int i4 = this.mCurParcel.readInt();
            if (i4 != 0) {
                if (i4 == i2) {
                    return this.mCurParcel;
                }
                throw new BadParcelableException("Got token " + Integer.toHexString(i4) + ", expected token " + Integer.toHexString(i2));
            }
            IBinder strongBinder = this.mCurParcel.readStrongBinder();
            this.mTransferToken = strongBinder;
            if (strongBinder == null) {
                throw new IllegalStateException("Reached end of partial data without transfer token");
            }
            fetchData();
            this.mStringReader = new PooledStringReader(this.mCurParcel);
            this.mCurParcel.readInt();
            return this.mCurParcel;
        }
    }

    public static final class ParcelTransferWriter extends Binder {
        ViewStackEntry mCurViewStackEntry;
        int mCurViewStackPos;
        int mCurWindow;
        int mNumWindows;
        int mNumWrittenViews;
        int mNumWrittenWindows;
        final boolean mSanitizeOnWrite;
        final boolean mWriteStructure;
        final ArrayList<ViewStackEntry> mViewStack = new ArrayList<>();
        final float[] mTmpMatrix = new float[9];

        public ParcelTransferWriter(AssistStructure assistStructure, Parcel parcel) {
            this.mSanitizeOnWrite = assistStructure.mSanitizeOnWrite;
            boolean zWaitForReady = assistStructure.waitForReady();
            this.mWriteStructure = zWaitForReady;
            ComponentName.writeToParcel(assistStructure.mActivityComponent, parcel);
            parcel.writeInt(assistStructure.mFlags);
            parcel.writeLong(assistStructure.mAcquisitionStartTime);
            parcel.writeLong(assistStructure.mAcquisitionEndTime);
            int size = assistStructure.mWindowNodes.size();
            this.mNumWindows = size;
            if (!zWaitForReady || size <= 0) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(size);
            }
        }

        public void pushViewStackEntry(ViewNode viewNode, int i2) {
            ViewStackEntry viewStackEntry;
            if (i2 >= this.mViewStack.size()) {
                viewStackEntry = new ViewStackEntry();
                this.mViewStack.add(viewStackEntry);
            } else {
                viewStackEntry = this.mViewStack.get(i2);
            }
            viewStackEntry.node = viewNode;
            viewStackEntry.numChildren = viewNode.getChildCount();
            viewStackEntry.curChild = 0;
            this.mCurViewStackEntry = viewStackEntry;
        }

        public boolean writeNextEntryToParcel(AssistStructure assistStructure, Parcel parcel, PooledStringWriter pooledStringWriter) {
            ViewStackEntry viewStackEntry;
            ViewStackEntry viewStackEntry2 = this.mCurViewStackEntry;
            if (viewStackEntry2 == null) {
                int i2 = this.mCurWindow;
                if (i2 >= this.mNumWindows) {
                    return false;
                }
                WindowNode windowNode = assistStructure.mWindowNodes.get(i2);
                this.mCurWindow++;
                parcel.writeInt(AssistStructure.VALIDATE_WINDOW_TOKEN);
                windowNode.writeSelfToParcel(parcel, pooledStringWriter, this.mTmpMatrix);
                this.mNumWrittenWindows++;
                ViewNode viewNode = windowNode.mRoot;
                this.mCurViewStackPos = 0;
                writeView(viewNode, parcel, pooledStringWriter, 0);
                return true;
            }
            int i3 = viewStackEntry2.curChild;
            if (i3 < viewStackEntry2.numChildren) {
                ViewNode viewNode2 = viewStackEntry2.node.mChildren[i3];
                viewStackEntry2.curChild = i3 + 1;
                writeView(viewNode2, parcel, pooledStringWriter, 1);
                return true;
            }
            do {
                int i4 = this.mCurViewStackPos - 1;
                this.mCurViewStackPos = i4;
                if (i4 < 0) {
                    this.mCurViewStackEntry = null;
                    break;
                }
                viewStackEntry = this.mViewStack.get(i4);
                this.mCurViewStackEntry = viewStackEntry;
            } while (viewStackEntry.curChild >= viewStackEntry.numChildren);
            return true;
        }

        public void writeToParcel(AssistStructure assistStructure, Parcel parcel) {
            int iDataPosition = parcel.dataPosition();
            this.mNumWrittenWindows = 0;
            this.mNumWrittenViews = 0;
            boolean zWriteToParcelInner = writeToParcelInner(assistStructure, parcel);
            StringBuilder sb = new StringBuilder("Flattened ");
            sb.append(zWriteToParcelInner ? "partial" : "final");
            sb.append(" assist data: ");
            sb.append(parcel.dataPosition() - iDataPosition);
            sb.append(" bytes, containing ");
            sb.append(this.mNumWrittenWindows);
            sb.append(" windows, ");
            sb.append(this.mNumWrittenViews);
            sb.append(" views");
            Log.i(AssistStructure.TAG, sb.toString());
        }

        public boolean writeToParcelInner(AssistStructure assistStructure, Parcel parcel) {
            if (this.mNumWindows == 0) {
                return false;
            }
            PooledStringWriter pooledStringWriter = new PooledStringWriter(parcel);
            while (writeNextEntryToParcel(assistStructure, parcel, pooledStringWriter)) {
                if (parcel.dataSize() > 65536) {
                    parcel.writeInt(0);
                    parcel.writeStrongBinder(this);
                    pooledStringWriter.finish();
                    return true;
                }
            }
            pooledStringWriter.finish();
            this.mViewStack.clear();
            return false;
        }

        public void writeView(ViewNode viewNode, Parcel parcel, PooledStringWriter pooledStringWriter, int i2) {
            parcel.writeInt(AssistStructure.VALIDATE_VIEW_TOKEN);
            int iWriteSelfToParcel = viewNode.writeSelfToParcel(parcel, pooledStringWriter, this.mSanitizeOnWrite, this.mTmpMatrix);
            this.mNumWrittenViews++;
            if ((iWriteSelfToParcel & 1048576) != 0) {
                parcel.writeInt(viewNode.mChildren.length);
                int i3 = this.mCurViewStackPos + 1;
                this.mCurViewStackPos = i3;
                pushViewStackEntry(viewNode, i3);
            }
        }
    }

    public static final class SendChannel extends Binder {
        volatile AssistStructure mAssistStructure;

        public SendChannel(AssistStructure assistStructure) {
            this.mAssistStructure = assistStructure;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 != 2) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            AssistStructure assistStructure = this.mAssistStructure;
            if (assistStructure == null) {
                return true;
            }
            parcel.enforceInterface(AssistStructure.DESCRIPTOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                new ParcelTransferWriter(assistStructure, parcel2).writeToParcel(assistStructure, parcel2);
                return true;
            }
            if (strongBinder instanceof ParcelTransferWriter) {
                ((ParcelTransferWriter) strongBinder).writeToParcel(assistStructure, parcel2);
                return true;
            }
            Log.w(AssistStructure.TAG, "Caller supplied bad token type: " + strongBinder);
            return true;
        }
    }

    public static class ViewNodeBuilder extends ViewStructure {
        final AssistStructure mAssist;
        final boolean mAsync;
        final ViewNode mNode;

        public ViewNodeBuilder(AssistStructure assistStructure, ViewNode viewNode, boolean z2) {
            this.mAssist = assistStructure;
            this.mNode = viewNode;
            this.mAsync = z2;
        }

        private final ViewNodeText getNodeText() {
            ViewNode viewNode = this.mNode;
            ViewNodeText viewNodeText = viewNode.mText;
            if (viewNodeText != null) {
                return viewNodeText;
            }
            viewNode.mText = new ViewNodeText();
            return this.mNode.mText;
        }

        @Override // android.view.ViewStructure
        public int addChildCount(int i2) {
            ViewNode[] viewNodeArr = this.mNode.mChildren;
            if (viewNodeArr == null) {
                setChildCount(i2);
                return 0;
            }
            int length = viewNodeArr.length;
            ViewNode[] viewNodeArr2 = new ViewNode[i2 + length];
            System.arraycopy(viewNodeArr, 0, viewNodeArr2, 0, length);
            this.mNode.mChildren = viewNodeArr2;
            return length;
        }

        @Override // android.view.ViewStructure
        public void asyncCommit() {
            synchronized (this.mAssist) {
                if (!this.mAsync) {
                    throw new IllegalStateException("Child " + this + " was not created with ViewStructure.asyncNewChild");
                }
                if (!this.mAssist.mPendingAsyncChildren.remove(this)) {
                    throw new IllegalStateException("Child " + this + " already committed");
                }
                this.mAssist.notifyAll();
            }
        }

        @Override // android.view.ViewStructure
        public ViewStructure asyncNewChild(int i2) {
            ViewNodeBuilder viewNodeBuilder;
            synchronized (this.mAssist) {
                ViewNode viewNode = new ViewNode();
                this.mNode.mChildren[i2] = viewNode;
                viewNodeBuilder = new ViewNodeBuilder(this.mAssist, viewNode, true);
                this.mAssist.mPendingAsyncChildren.add(viewNodeBuilder);
            }
            return viewNodeBuilder;
        }

        @Override // android.view.ViewStructure
        public AutofillId getAutofillId() {
            return this.mNode.mAutofillId;
        }

        @Override // android.view.ViewStructure
        public int getChildCount() {
            ViewNode[] viewNodeArr = this.mNode.mChildren;
            if (viewNodeArr != null) {
                return viewNodeArr.length;
            }
            return 0;
        }

        @Override // android.view.ViewStructure
        public Bundle getExtras() {
            ViewNode viewNode = this.mNode;
            Bundle bundle = viewNode.mExtras;
            if (bundle != null) {
                return bundle;
            }
            viewNode.mExtras = new Bundle();
            return this.mNode.mExtras;
        }

        @Override // android.view.ViewStructure
        public CharSequence getHint() {
            ViewNodeText viewNodeText = this.mNode.mText;
            if (viewNodeText != null) {
                return viewNodeText.mHint;
            }
            return null;
        }

        @Override // android.view.ViewStructure
        public Rect getTempRect() {
            return this.mAssist.mTmpRect;
        }

        @Override // android.view.ViewStructure
        public CharSequence getText() {
            ViewNodeText viewNodeText = this.mNode.mText;
            if (viewNodeText != null) {
                return viewNodeText.mText;
            }
            return null;
        }

        @Override // android.view.ViewStructure
        public int getTextSelectionEnd() {
            ViewNodeText viewNodeText = this.mNode.mText;
            if (viewNodeText != null) {
                return viewNodeText.mTextSelectionEnd;
            }
            return -1;
        }

        @Override // android.view.ViewStructure
        public int getTextSelectionStart() {
            ViewNodeText viewNodeText = this.mNode.mText;
            if (viewNodeText != null) {
                return viewNodeText.mTextSelectionStart;
            }
            return -1;
        }

        @Override // android.view.ViewStructure
        public boolean hasExtras() {
            return this.mNode.mExtras != null;
        }

        @Override // android.view.ViewStructure
        public ViewStructure newChild(int i2) {
            ViewNode viewNode = new ViewNode();
            this.mNode.mChildren[i2] = viewNode;
            return new ViewNodeBuilder(this.mAssist, viewNode, false);
        }

        @Override // android.view.ViewStructure
        public ViewStructure.HtmlInfo.Builder newHtmlInfoBuilder(String str) {
            return new HtmlInfoNodeBuilder(str);
        }

        @Override // android.view.ViewStructure
        public void setAccessibilityFocused(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 4096 : 0) | (viewNode.mFlags & (-4097));
        }

        @Override // android.view.ViewStructure
        public void setActivated(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 8192 : 0) | (viewNode.mFlags & (-8193));
        }

        @Override // android.view.ViewStructure
        public void setAlpha(float f2) {
            this.mNode.mAlpha = f2;
        }

        @Override // android.view.ViewStructure
        public void setAssistBlocked(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 128 : 0) | (viewNode.mFlags & (-129));
        }

        @Override // android.view.ViewStructure
        public void setAutofillHints(String[] strArr) {
            this.mNode.mAutofillHints = strArr;
        }

        @Override // android.view.ViewStructure
        public void setAutofillId(AutofillId autofillId) {
            this.mNode.mAutofillId = autofillId;
        }

        @Override // android.view.ViewStructure
        public void setAutofillOptions(CharSequence[] charSequenceArr) {
            this.mNode.mAutofillOptions = charSequenceArr;
        }

        @Override // android.view.ViewStructure
        public void setAutofillType(int i2) {
            this.mNode.mAutofillType = i2;
        }

        @Override // android.view.ViewStructure
        public void setAutofillValue(AutofillValue autofillValue) {
            this.mNode.mAutofillValue = autofillValue;
        }

        @Override // android.view.ViewStructure
        public void setCheckable(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 256 : 0) | (viewNode.mFlags & (-257));
        }

        @Override // android.view.ViewStructure
        public void setChecked(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 512 : 0) | (viewNode.mFlags & (-513));
        }

        @Override // android.view.ViewStructure
        public void setChildCount(int i2) {
            this.mNode.mChildren = new ViewNode[i2];
        }

        @Override // android.view.ViewStructure
        public void setClassName(String str) {
            this.mNode.mClassName = str;
        }

        @Override // android.view.ViewStructure
        public void setClickable(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 1024 : 0) | (viewNode.mFlags & (-1025));
        }

        @Override // android.view.ViewStructure
        public void setContentDescription(CharSequence charSequence) {
            this.mNode.mContentDescription = charSequence;
        }

        @Override // android.view.ViewStructure
        public void setContextClickable(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 16384 : 0) | (viewNode.mFlags & (-16385));
        }

        @Override // android.view.ViewStructure
        public void setDataIsSensitive(boolean z2) {
            this.mNode.mSanitized = !z2;
        }

        @Override // android.view.ViewStructure
        public void setDimens(int i2, int i3, int i4, int i5, int i6, int i7) {
            ViewNode viewNode = this.mNode;
            viewNode.mX = i2;
            viewNode.mY = i3;
            viewNode.mScrollX = i4;
            viewNode.mScrollY = i5;
            viewNode.mWidth = i6;
            viewNode.mHeight = i7;
        }

        @Override // android.view.ViewStructure
        public void setElevation(float f2) {
            this.mNode.mElevation = f2;
        }

        @Override // android.view.ViewStructure
        public void setEnabled(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (!z2 ? 1 : 0) | (viewNode.mFlags & (-2));
        }

        @Override // android.view.ViewStructure
        public void setFocusable(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 16 : 0) | (viewNode.mFlags & (-17));
        }

        @Override // android.view.ViewStructure
        public void setFocused(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 32 : 0) | (viewNode.mFlags & (-33));
        }

        @Override // android.view.ViewStructure
        public void setHint(CharSequence charSequence) {
            getNodeText().mHint = charSequence != null ? charSequence.toString() : null;
        }

        @Override // android.view.ViewStructure
        public void setHtmlInfo(ViewStructure.HtmlInfo htmlInfo) {
            this.mNode.mHtmlInfo = htmlInfo;
        }

        @Override // android.view.ViewStructure
        public void setId(int i2, String str, String str2, String str3) {
            ViewNode viewNode = this.mNode;
            viewNode.mId = i2;
            viewNode.mIdPackage = str;
            viewNode.mIdType = str2;
            viewNode.mIdEntry = str3;
        }

        @Override // android.view.ViewStructure
        public void setInputType(int i2) {
            this.mNode.mInputType = i2;
        }

        @Override // android.view.ViewStructure
        public void setLocaleList(LocaleList localeList) {
            this.mNode.mLocaleList = localeList;
        }

        @Override // android.view.ViewStructure
        public void setLongClickable(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 2048 : 0) | (viewNode.mFlags & (-2049));
        }

        @Override // android.view.ViewStructure
        public void setOpaque(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 32768 : 0) | (viewNode.mFlags & (-32769));
        }

        @Override // android.view.ViewStructure
        public void setSelected(boolean z2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = (z2 ? 64 : 0) | (viewNode.mFlags & (-65));
        }

        @Override // android.view.ViewStructure
        public void setText(CharSequence charSequence) {
            ViewNodeText nodeText = getNodeText();
            nodeText.mText = TextUtils.trimNoCopySpans(charSequence);
            nodeText.mTextSelectionEnd = -1;
            nodeText.mTextSelectionStart = -1;
        }

        @Override // android.view.ViewStructure
        public void setTextLines(int[] iArr, int[] iArr2) {
            ViewNodeText nodeText = getNodeText();
            nodeText.mLineCharOffsets = iArr;
            nodeText.mLineBaselines = iArr2;
        }

        @Override // android.view.ViewStructure
        public void setTextStyle(float f2, int i2, int i3, int i4) {
            ViewNodeText nodeText = getNodeText();
            nodeText.mTextColor = i2;
            nodeText.mTextBackgroundColor = i3;
            nodeText.mTextSize = f2;
            nodeText.mTextStyle = i4;
        }

        @Override // android.view.ViewStructure
        public void setTransformation(Matrix matrix) {
            if (matrix == null) {
                this.mNode.mMatrix = null;
            } else {
                this.mNode.mMatrix = new Matrix(matrix);
            }
        }

        @Override // android.view.ViewStructure
        public void setVisibility(int i2) {
            ViewNode viewNode = this.mNode;
            viewNode.mFlags = i2 | (viewNode.mFlags & (-13));
        }

        @Override // android.view.ViewStructure
        public void setWebDomain(String str) {
            if (str == null) {
                this.mNode.mWebDomain = null;
            } else {
                this.mNode.mWebDomain = Uri.parse(str).getHost();
            }
        }

        @Override // android.view.ViewStructure
        public void setAutofillId(AutofillId autofillId, int i2) {
            this.mNode.mAutofillId = new AutofillId(autofillId, i2);
        }

        @Override // android.view.ViewStructure
        public void setText(CharSequence charSequence, int i2, int i3) {
            ViewNodeText nodeText = getNodeText();
            nodeText.mText = TextUtils.trimNoCopySpans(charSequence);
            nodeText.mTextSelectionStart = i2;
            nodeText.mTextSelectionEnd = i3;
        }
    }

    public static final class ViewStackEntry {
        int curChild;
        ViewNode node;
        int numChildren;
    }

    public AssistStructure(Activity activity, boolean z2, int i2) {
        this.mWindowNodes = new ArrayList<>();
        this.mPendingAsyncChildren = new ArrayList<>();
        this.mTmpRect = new Rect();
        this.mSanitizeOnWrite = false;
        this.mHaveData = true;
        this.mActivityComponent = activity.getComponentName();
        this.mFlags = i2;
        ArrayList<ViewRootImpl> rootViews = WindowManagerGlobal.getInstance().getRootViews(activity.getActivityToken());
        for (int i3 = 0; i3 < rootViews.size(); i3++) {
            ViewRootImpl viewRootImpl = rootViews.get(i3);
            if (viewRootImpl.getView() == null) {
                Log.w(TAG, "Skipping window with dettached view: " + ((Object) viewRootImpl.getTitle()));
            } else {
                this.mWindowNodes.add(new WindowNode(this, viewRootImpl, z2, i2));
            }
        }
    }

    public void clearSendChannel() {
        SendChannel sendChannel = this.mSendChannel;
        if (sendChannel != null) {
            sendChannel.mAssistStructure = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(String str, ViewNode viewNode, boolean z2) {
        StringBuilder sbU = c.u(str, "View [");
        sbU.append(viewNode.getLeft());
        sbU.append(",");
        sbU.append(viewNode.getTop());
        sbU.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sbU.append(viewNode.getWidth());
        sbU.append("x");
        sbU.append(viewNode.getHeight());
        sbU.append("] ");
        sbU.append(viewNode.getClassName());
        Log.i(TAG, sbU.toString());
        int id = viewNode.getId();
        if (id != 0) {
            StringBuilder sbU2 = c.u(str, "  ID: #");
            sbU2.append(Integer.toHexString(id));
            String idEntry = viewNode.getIdEntry();
            if (idEntry != null) {
                String idType = viewNode.getIdType();
                String idPackage = viewNode.getIdPackage();
                sbU2.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sbU2.append(idPackage);
                sbU2.append(SettingsStringUtil.DELIMITER);
                sbU2.append(idType);
                sbU2.append("/");
                sbU2.append(idEntry);
            }
            Log.i(TAG, sbU2.toString());
        }
        int scrollX = viewNode.getScrollX();
        int scrollY = viewNode.getScrollY();
        if (scrollX != 0 || scrollY != 0) {
            Log.i(TAG, str + "  Scroll: " + scrollX + "," + scrollY);
        }
        Matrix transformation = viewNode.getTransformation();
        if (transformation != null) {
            Log.i(TAG, str + "  Transformation: " + transformation);
        }
        float elevation = viewNode.getElevation();
        if (elevation != 0.0f) {
            Log.i(TAG, str + "  Elevation: " + elevation);
        }
        if (viewNode.getAlpha() != 0.0f) {
            Log.i(TAG, str + "  Alpha: " + elevation);
        }
        CharSequence contentDescription = viewNode.getContentDescription();
        if (contentDescription != null) {
            Log.i(TAG, str + "  Content description: " + ((Object) contentDescription));
        }
        CharSequence text = viewNode.getText();
        if (text != null) {
            String string = (viewNode.isSanitized() || z2) ? text.toString() : "REDACTED[" + text.length() + " chars]";
            StringBuilder sbU3 = c.u(str, "  Text (sel ");
            sbU3.append(viewNode.getTextSelectionStart());
            sbU3.append(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
            sbU3.append(viewNode.getTextSelectionEnd());
            sbU3.append("): ");
            sbU3.append(string);
            Log.i(TAG, sbU3.toString());
            Log.i(TAG, str + "  Text size: " + viewNode.getTextSize() + " , style: #" + viewNode.getTextStyle());
            Log.i(TAG, str + "  Text color fg: #" + Integer.toHexString(viewNode.getTextColor()) + ", bg: #" + Integer.toHexString(viewNode.getTextBackgroundColor()));
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("  Input type: ");
            sb.append(viewNode.getInputType());
            Log.i(TAG, sb.toString());
        }
        String webDomain = viewNode.getWebDomain();
        if (webDomain != null) {
            Log.i(TAG, str + "  Web domain: " + webDomain);
        }
        ViewStructure.HtmlInfo htmlInfo = viewNode.getHtmlInfo();
        if (htmlInfo != null) {
            StringBuilder sbU4 = c.u(str, "  HtmlInfo: tag=");
            sbU4.append(htmlInfo.getTag());
            sbU4.append(", attr=");
            sbU4.append(htmlInfo.getAttributes());
            Log.i(TAG, sbU4.toString());
        }
        LocaleList localeList = viewNode.getLocaleList();
        if (localeList != null) {
            Log.i(TAG, str + "  LocaleList: " + localeList);
        }
        String hint = viewNode.getHint();
        if (hint != null) {
            Log.i(TAG, str + "  Hint: " + hint);
        }
        Bundle extras = viewNode.getExtras();
        if (extras != null) {
            Log.i(TAG, str + "  Extras: " + extras);
        }
        if (viewNode.isAssistBlocked()) {
            Log.i(TAG, str + "  BLOCKED");
        }
        AutofillId autofillId = viewNode.getAutofillId();
        if (autofillId == null) {
            Log.i(TAG, str + " NO autofill ID");
        } else {
            Log.i(TAG, str + "Autofill info: id= " + autofillId + ", type=" + viewNode.getAutofillType() + ", options=" + Arrays.toString(viewNode.getAutofillOptions()) + ", hints=" + Arrays.toString(viewNode.getAutofillHints()) + ", value=" + viewNode.getAutofillValue() + ", sanitized=" + viewNode.isSanitized());
        }
        int childCount = viewNode.getChildCount();
        if (childCount > 0) {
            Log.i(TAG, str + "  Children:");
            String str2 = str + "    ";
            for (int i2 = 0; i2 < childCount; i2++) {
                dump(str2, viewNode.getChildAt(i2), z2);
            }
        }
    }

    public void ensureData() {
        if (this.mHaveData) {
            return;
        }
        this.mHaveData = true;
        new ParcelTransferReader(this.mReceiveChannel).go();
    }

    public long getAcquisitionEndTime() {
        ensureData();
        return this.mAcquisitionEndTime;
    }

    public long getAcquisitionStartTime() {
        ensureData();
        return this.mAcquisitionStartTime;
    }

    public ComponentName getActivityComponent() {
        ensureData();
        return this.mActivityComponent;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public WindowNode getWindowNodeAt(int i2) {
        ensureData();
        return this.mWindowNodes.get(i2);
    }

    public int getWindowNodeCount() {
        ensureData();
        return this.mWindowNodes.size();
    }

    public boolean isHomeActivity() {
        return this.mIsHomeActivity;
    }

    public void sanitizeForParceling(boolean z2) {
        this.mSanitizeOnWrite = z2;
    }

    public void setAcquisitionEndTime(long j2) {
        this.mAcquisitionEndTime = j2;
    }

    public void setAcquisitionStartTime(long j2) {
        this.mAcquisitionStartTime = j2;
    }

    public void setHomeActivity(boolean z2) {
        this.mIsHomeActivity = z2;
    }

    public boolean waitForReady() {
        boolean z2;
        synchronized (this) {
            long jUptimeMillis = SystemClock.uptimeMillis() + TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS;
            while (this.mPendingAsyncChildren.size() > 0) {
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                if (jUptimeMillis2 >= jUptimeMillis) {
                    break;
                }
                try {
                    wait(jUptimeMillis - jUptimeMillis2);
                } catch (InterruptedException unused) {
                }
            }
            if (this.mPendingAsyncChildren.size() > 0) {
                Log.w(TAG, "Skipping assist structure, waiting too long for async children (have " + this.mPendingAsyncChildren.size() + " remaining");
                z2 = true;
            } else {
                z2 = false;
            }
        }
        return !z2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mIsHomeActivity ? 1 : 0);
        if (!this.mHaveData) {
            parcel.writeStrongBinder(this.mReceiveChannel);
            return;
        }
        if (this.mSendChannel == null) {
            this.mSendChannel = new SendChannel(this);
        }
        parcel.writeStrongBinder(this.mSendChannel);
    }

    public static final class ViewNodeText {
        String mHint;
        int[] mLineBaselines;
        int[] mLineCharOffsets;
        CharSequence mText;
        int mTextBackgroundColor;
        int mTextColor;
        int mTextSelectionEnd;
        int mTextSelectionStart;
        float mTextSize;
        int mTextStyle;

        public ViewNodeText() {
            this.mTextColor = 1;
            this.mTextBackgroundColor = 1;
        }

        public boolean isSimple() {
            return this.mTextBackgroundColor == 1 && this.mTextSelectionStart == 0 && this.mTextSelectionEnd == 0 && this.mLineCharOffsets == null && this.mLineBaselines == null && this.mHint == null;
        }

        public void writeToParcel(Parcel parcel, boolean z2, boolean z3) {
            TextUtils.writeToParcel(z3 ? this.mText : "", parcel, 0);
            parcel.writeFloat(this.mTextSize);
            parcel.writeInt(this.mTextStyle);
            parcel.writeInt(this.mTextColor);
            if (z2) {
                return;
            }
            parcel.writeInt(this.mTextBackgroundColor);
            parcel.writeInt(this.mTextSelectionStart);
            parcel.writeInt(this.mTextSelectionEnd);
            parcel.writeIntArray(this.mLineCharOffsets);
            parcel.writeIntArray(this.mLineBaselines);
            parcel.writeString(this.mHint);
        }

        public ViewNodeText(Parcel parcel, boolean z2) {
            this.mTextColor = 1;
            this.mTextBackgroundColor = 1;
            this.mText = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.mTextSize = parcel.readFloat();
            this.mTextStyle = parcel.readInt();
            this.mTextColor = parcel.readInt();
            if (z2) {
                return;
            }
            this.mTextBackgroundColor = parcel.readInt();
            this.mTextSelectionStart = parcel.readInt();
            this.mTextSelectionEnd = parcel.readInt();
            this.mLineCharOffsets = parcel.createIntArray();
            this.mLineBaselines = parcel.createIntArray();
            this.mHint = parcel.readString();
        }
    }

    public static class ViewNode {
        static final int FLAGS_ACCESSIBILITY_FOCUSED = 4096;
        static final int FLAGS_ACTIVATED = 8192;
        static final int FLAGS_ALL_CONTROL = -1048576;
        static final int FLAGS_ASSIST_BLOCKED = 128;
        static final int FLAGS_CHECKABLE = 256;
        static final int FLAGS_CHECKED = 512;
        static final int FLAGS_CLICKABLE = 1024;
        static final int FLAGS_CONTEXT_CLICKABLE = 16384;
        static final int FLAGS_DISABLED = 1;
        static final int FLAGS_FOCUSABLE = 16;
        static final int FLAGS_FOCUSED = 32;
        static final int FLAGS_HAS_ALPHA = 536870912;
        static final int FLAGS_HAS_AUTOFILL_DATA = Integer.MIN_VALUE;
        static final int FLAGS_HAS_CHILDREN = 1048576;
        static final int FLAGS_HAS_COMPLEX_TEXT = 8388608;
        static final int FLAGS_HAS_CONTENT_DESCRIPTION = 33554432;
        static final int FLAGS_HAS_ELEVATION = 268435456;
        static final int FLAGS_HAS_EXTRAS = 4194304;
        static final int FLAGS_HAS_ID = 2097152;
        static final int FLAGS_HAS_INPUT_TYPE = 262144;
        static final int FLAGS_HAS_LARGE_COORDS = 67108864;
        static final int FLAGS_HAS_LOCALE_LIST = 65536;
        static final int FLAGS_HAS_MATRIX = 1073741824;
        static final int FLAGS_HAS_SCROLL = 134217728;
        static final int FLAGS_HAS_TEXT = 16777216;
        static final int FLAGS_HAS_URL = 524288;
        static final int FLAGS_LONG_CLICKABLE = 2048;
        static final int FLAGS_OPAQUE = 32768;
        static final int FLAGS_SELECTED = 64;
        static final int FLAGS_VISIBILITY_MASK = 12;
        public static final int TEXT_COLOR_UNDEFINED = 1;
        public static final int TEXT_STYLE_BOLD = 1;
        public static final int TEXT_STYLE_ITALIC = 2;
        public static final int TEXT_STYLE_STRIKE_THRU = 8;
        public static final int TEXT_STYLE_UNDERLINE = 4;
        float mAlpha;
        String[] mAutofillHints;
        AutofillId mAutofillId;
        CharSequence[] mAutofillOptions;
        AutofillOverlay mAutofillOverlay;
        int mAutofillType;
        AutofillValue mAutofillValue;
        ViewNode[] mChildren;
        String mClassName;
        CharSequence mContentDescription;
        float mElevation;
        Bundle mExtras;
        int mFlags;
        int mHeight;
        ViewStructure.HtmlInfo mHtmlInfo;
        int mId;
        String mIdEntry;
        String mIdPackage;
        String mIdType;
        int mInputType;
        LocaleList mLocaleList;
        Matrix mMatrix;
        boolean mSanitized;
        int mScrollX;
        int mScrollY;
        ViewNodeText mText;
        String mWebDomain;
        int mWidth;
        int mX;
        int mY;

        public ViewNode() {
            this.mId = -1;
            this.mAutofillType = 0;
            this.mAlpha = 1.0f;
        }

        public float getAlpha() {
            return this.mAlpha;
        }

        public String[] getAutofillHints() {
            return this.mAutofillHints;
        }

        public AutofillId getAutofillId() {
            return this.mAutofillId;
        }

        public CharSequence[] getAutofillOptions() {
            return this.mAutofillOptions;
        }

        public int getAutofillType() {
            return this.mAutofillType;
        }

        public AutofillValue getAutofillValue() {
            return this.mAutofillValue;
        }

        public ViewNode getChildAt(int i2) {
            return this.mChildren[i2];
        }

        public int getChildCount() {
            ViewNode[] viewNodeArr = this.mChildren;
            if (viewNodeArr != null) {
                return viewNodeArr.length;
            }
            return 0;
        }

        public String getClassName() {
            return this.mClassName;
        }

        public CharSequence getContentDescription() {
            return this.mContentDescription;
        }

        public float getElevation() {
            return this.mElevation;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public String getHint() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mHint;
            }
            return null;
        }

        public ViewStructure.HtmlInfo getHtmlInfo() {
            return this.mHtmlInfo;
        }

        public int getId() {
            return this.mId;
        }

        public String getIdEntry() {
            return this.mIdEntry;
        }

        public String getIdPackage() {
            return this.mIdPackage;
        }

        public String getIdType() {
            return this.mIdType;
        }

        public int getInputType() {
            return this.mInputType;
        }

        public int getLeft() {
            return this.mX;
        }

        public LocaleList getLocaleList() {
            return this.mLocaleList;
        }

        public int getScrollX() {
            return this.mScrollX;
        }

        public int getScrollY() {
            return this.mScrollY;
        }

        public CharSequence getText() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mText;
            }
            return null;
        }

        public int getTextBackgroundColor() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mTextBackgroundColor;
            }
            return 1;
        }

        public int getTextColor() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mTextColor;
            }
            return 1;
        }

        public int[] getTextLineBaselines() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mLineBaselines;
            }
            return null;
        }

        public int[] getTextLineCharOffsets() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mLineCharOffsets;
            }
            return null;
        }

        public int getTextSelectionEnd() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mTextSelectionEnd;
            }
            return -1;
        }

        public int getTextSelectionStart() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mTextSelectionStart;
            }
            return -1;
        }

        public float getTextSize() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mTextSize;
            }
            return 0.0f;
        }

        public int getTextStyle() {
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                return viewNodeText.mTextStyle;
            }
            return 0;
        }

        public int getTop() {
            return this.mY;
        }

        public Matrix getTransformation() {
            return this.mMatrix;
        }

        public int getVisibility() {
            return this.mFlags & 12;
        }

        public String getWebDomain() {
            return this.mWebDomain;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public boolean isAccessibilityFocused() {
            return (this.mFlags & 4096) != 0;
        }

        public boolean isActivated() {
            return (this.mFlags & 8192) != 0;
        }

        public boolean isAssistBlocked() {
            return (this.mFlags & 128) != 0;
        }

        public boolean isCheckable() {
            return (this.mFlags & 256) != 0;
        }

        public boolean isChecked() {
            return (this.mFlags & 512) != 0;
        }

        public boolean isClickable() {
            return (this.mFlags & 1024) != 0;
        }

        public boolean isContextClickable() {
            return (this.mFlags & 16384) != 0;
        }

        public boolean isEnabled() {
            return (this.mFlags & 1) == 0;
        }

        public boolean isFocusable() {
            return (this.mFlags & 16) != 0;
        }

        public boolean isFocused() {
            return (this.mFlags & 32) != 0;
        }

        public boolean isLongClickable() {
            return (this.mFlags & 2048) != 0;
        }

        public boolean isOpaque() {
            return (this.mFlags & 32768) != 0;
        }

        public boolean isSanitized() {
            return this.mSanitized;
        }

        public boolean isSelected() {
            return (this.mFlags & 64) != 0;
        }

        public void setAutofillOverlay(AutofillOverlay autofillOverlay) {
            this.mAutofillOverlay = autofillOverlay;
        }

        public void updateAutofillValue(AutofillValue autofillValue) {
            this.mAutofillValue = autofillValue;
            if (autofillValue.isText()) {
                if (this.mText == null) {
                    this.mText = new ViewNodeText();
                }
                this.mText.mText = autofillValue.getTextValue();
            }
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0041  */
        /* JADX WARN: Multi-variable type inference failed */
        public int writeSelfToParcel(Parcel parcel, PooledStringWriter pooledStringWriter, boolean z2, float[] fArr) {
            boolean z3;
            AutofillValue autofillValue;
            int i2 = this.mFlags & 1048575;
            if (this.mId != -1) {
                i2 |= 2097152;
            }
            if (this.mAutofillId != null) {
                i2 |= Integer.MIN_VALUE;
            }
            if ((this.mX & SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS_NEGATIVE) == 0 && (this.mY & SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS_NEGATIVE) == 0) {
                if (((this.mWidth & SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS_NEGATIVE) != 0) | ((this.mHeight & SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS_NEGATIVE) != 0)) {
                    i2 |= 67108864;
                }
            } else {
                i2 |= 67108864;
            }
            if (this.mScrollX != 0 || this.mScrollY != 0) {
                i2 |= 134217728;
            }
            if (this.mMatrix != null) {
                i2 |= 1073741824;
            }
            if (this.mElevation != 0.0f) {
                i2 |= 268435456;
            }
            if (this.mAlpha != 1.0f) {
                i2 |= 536870912;
            }
            if (this.mContentDescription != null) {
                i2 |= 33554432;
            }
            ViewNodeText viewNodeText = this.mText;
            if (viewNodeText != null) {
                i2 |= 16777216;
                if (!viewNodeText.isSimple()) {
                    i2 |= 8388608;
                }
            }
            if (this.mInputType != 0) {
                i2 |= 262144;
            }
            if (this.mWebDomain != null) {
                i2 |= 524288;
            }
            if (this.mLocaleList != null) {
                i2 |= 65536;
            }
            if (this.mExtras != null) {
                i2 |= 4194304;
            }
            if (this.mChildren != null) {
                i2 |= 1048576;
            }
            pooledStringWriter.writeString(this.mClassName);
            int i3 = i2 & Integer.MIN_VALUE;
            int i4 = (i3 == 0 || (!this.mSanitized && z2)) ? i2 : i2 & (-513);
            AutofillOverlay autofillOverlay = this.mAutofillOverlay;
            if (autofillOverlay != null) {
                i4 = autofillOverlay.focused ? i4 | 32 : i4 & (-33);
            }
            parcel.writeInt(i4);
            if ((i2 & 2097152) != 0) {
                parcel.writeInt(this.mId);
                if (this.mId != 0) {
                    pooledStringWriter.writeString(this.mIdEntry);
                    if (this.mIdEntry != null) {
                        pooledStringWriter.writeString(this.mIdType);
                        pooledStringWriter.writeString(this.mIdPackage);
                    }
                }
            }
            if (i3 != 0) {
                boolean z4 = this.mSanitized;
                z3 = z4 || !z2;
                parcel.writeInt(z4 ? 1 : 0);
                parcel.writeParcelable(this.mAutofillId, 0);
                parcel.writeInt(this.mAutofillType);
                parcel.writeStringArray(this.mAutofillHints);
                if (z3) {
                    autofillValue = this.mAutofillValue;
                } else {
                    AutofillOverlay autofillOverlay2 = this.mAutofillOverlay;
                    if (autofillOverlay2 == null || (autofillValue = autofillOverlay2.value) == null) {
                        autofillValue = null;
                    }
                }
                parcel.writeParcelable(autofillValue, 0);
                parcel.writeCharSequenceArray(this.mAutofillOptions);
                ViewStructure.HtmlInfo htmlInfo = this.mHtmlInfo;
                if (htmlInfo instanceof Parcelable) {
                    parcel.writeParcelable((Parcelable) htmlInfo, 0);
                } else {
                    parcel.writeParcelable(null, 0);
                }
            } else {
                z3 = true;
            }
            if ((i2 & 67108864) != 0) {
                parcel.writeInt(this.mX);
                parcel.writeInt(this.mY);
                parcel.writeInt(this.mWidth);
                parcel.writeInt(this.mHeight);
            } else {
                parcel.writeInt((this.mY << 16) | this.mX);
                parcel.writeInt((this.mHeight << 16) | this.mWidth);
            }
            if ((i2 & 134217728) != 0) {
                parcel.writeInt(this.mScrollX);
                parcel.writeInt(this.mScrollY);
            }
            if ((i2 & 1073741824) != 0) {
                this.mMatrix.getValues(fArr);
                parcel.writeFloatArray(fArr);
            }
            if ((i2 & 268435456) != 0) {
                parcel.writeFloat(this.mElevation);
            }
            if ((i2 & 536870912) != 0) {
                parcel.writeFloat(this.mAlpha);
            }
            if ((i2 & 33554432) != 0) {
                TextUtils.writeToParcel(this.mContentDescription, parcel, 0);
            }
            if ((i2 & 16777216) != 0) {
                this.mText.writeToParcel(parcel, (i2 & 8388608) == 0, z3);
            }
            if ((i2 & 262144) != 0) {
                parcel.writeInt(this.mInputType);
            }
            if ((i2 & 524288) != 0) {
                parcel.writeString(this.mWebDomain);
            }
            if ((i2 & 65536) != 0) {
                parcel.writeParcelable(this.mLocaleList, 0);
            }
            if ((i2 & 4194304) != 0) {
                parcel.writeBundle(this.mExtras);
            }
            return i2;
        }

        public ViewNode(ParcelTransferReader parcelTransferReader, int i2) {
            this.mId = -1;
            this.mAutofillType = 0;
            this.mAlpha = 1.0f;
            Parcel parcel = parcelTransferReader.readParcel(AssistStructure.VALIDATE_VIEW_TOKEN, i2);
            parcelTransferReader.mNumReadViews++;
            PooledStringReader pooledStringReader = parcelTransferReader.mStringReader;
            this.mClassName = pooledStringReader.readString();
            int i3 = parcel.readInt();
            this.mFlags = i3;
            if ((2097152 & i3) != 0) {
                int i4 = parcel.readInt();
                this.mId = i4;
                if (i4 != 0) {
                    String string = pooledStringReader.readString();
                    this.mIdEntry = string;
                    if (string != null) {
                        this.mIdType = pooledStringReader.readString();
                        this.mIdPackage = pooledStringReader.readString();
                    }
                }
            }
            if ((Integer.MIN_VALUE & i3) != 0) {
                this.mSanitized = parcel.readInt() == 1;
                this.mAutofillId = (AutofillId) parcel.readParcelable(null);
                this.mAutofillType = parcel.readInt();
                this.mAutofillHints = parcel.readStringArray();
                this.mAutofillValue = (AutofillValue) parcel.readParcelable(null);
                this.mAutofillOptions = parcel.readCharSequenceArray();
                Object parcelable = parcel.readParcelable(null);
                if (parcelable instanceof ViewStructure.HtmlInfo) {
                    this.mHtmlInfo = (ViewStructure.HtmlInfo) parcelable;
                }
            }
            if ((67108864 & i3) != 0) {
                this.mX = parcel.readInt();
                this.mY = parcel.readInt();
                this.mWidth = parcel.readInt();
                this.mHeight = parcel.readInt();
            } else {
                int i5 = parcel.readInt();
                this.mX = i5 & SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS;
                this.mY = (i5 >> 16) & SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS;
                int i6 = parcel.readInt();
                this.mWidth = i6 & SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS;
                this.mHeight = (i6 >> 16) & SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS;
            }
            if ((134217728 & i3) != 0) {
                this.mScrollX = parcel.readInt();
                this.mScrollY = parcel.readInt();
            }
            if ((1073741824 & i3) != 0) {
                this.mMatrix = new Matrix();
                parcel.readFloatArray(parcelTransferReader.mTmpMatrix);
                this.mMatrix.setValues(parcelTransferReader.mTmpMatrix);
            }
            if ((268435456 & i3) != 0) {
                this.mElevation = parcel.readFloat();
            }
            if ((536870912 & i3) != 0) {
                this.mAlpha = parcel.readFloat();
            }
            if ((33554432 & i3) != 0) {
                this.mContentDescription = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            }
            if ((16777216 & i3) != 0) {
                this.mText = new ViewNodeText(parcel, (8388608 & i3) == 0);
            }
            if ((262144 & i3) != 0) {
                this.mInputType = parcel.readInt();
            }
            if ((524288 & i3) != 0) {
                this.mWebDomain = parcel.readString();
            }
            if ((65536 & i3) != 0) {
                this.mLocaleList = (LocaleList) parcel.readParcelable(null);
            }
            if ((4194304 & i3) != 0) {
                this.mExtras = parcel.readBundle();
            }
            if ((1048576 & i3) != 0) {
                int i7 = parcel.readInt();
                this.mChildren = new ViewNode[i7];
                for (int i8 = 0; i8 < i7; i8++) {
                    this.mChildren[i8] = new ViewNode(parcelTransferReader, i2 + 1);
                }
            }
        }
    }

    public AssistStructure() {
        this.mWindowNodes = new ArrayList<>();
        this.mPendingAsyncChildren = new ArrayList<>();
        this.mTmpRect = new Rect();
        this.mSanitizeOnWrite = false;
        this.mHaveData = true;
        this.mActivityComponent = null;
        this.mFlags = 0;
    }

    public static class WindowNode {
        final int mDisplayId;
        final int mHeight;
        final ViewNode mRoot;
        final CharSequence mTitle;
        final int mWidth;
        final int mX;
        final int mY;

        public WindowNode(AssistStructure assistStructure, ViewRootImpl viewRootImpl, boolean z2, int i2) {
            View view = viewRootImpl.getView();
            Rect rect = new Rect();
            view.getBoundsOnScreen(rect);
            this.mX = rect.left - view.getLeft();
            this.mY = rect.top - view.getTop();
            this.mWidth = rect.width();
            this.mHeight = rect.height();
            this.mTitle = viewRootImpl.getTitle();
            this.mDisplayId = viewRootImpl.getDisplayId();
            ViewNode viewNode = new ViewNode();
            this.mRoot = viewNode;
            ViewNodeBuilder viewNodeBuilder = new ViewNodeBuilder(assistStructure, viewNode, false);
            if ((viewRootImpl.getWindowFlags() & 8192) != 0) {
                if (!z2) {
                    view.onProvideStructure(viewNodeBuilder);
                    viewNodeBuilder.setAssistBlocked(true);
                    return;
                }
                view.onProvideAutofillStructure(viewNodeBuilder, (i2 & 1) != 0 ? 1 : 0);
            }
            if (z2) {
                view.dispatchProvideAutofillStructure(viewNodeBuilder, (i2 & 1) != 0 ? 1 : 0);
            } else {
                view.dispatchProvideStructure(viewNodeBuilder);
            }
        }

        public int getDisplayId() {
            return this.mDisplayId;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getLeft() {
            return this.mX;
        }

        public ViewNode getRootViewNode() {
            return this.mRoot;
        }

        public CharSequence getTitle() {
            return this.mTitle;
        }

        public int getTop() {
            return this.mY;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public void writeSelfToParcel(Parcel parcel, PooledStringWriter pooledStringWriter, float[] fArr) {
            parcel.writeInt(this.mX);
            parcel.writeInt(this.mY);
            parcel.writeInt(this.mWidth);
            parcel.writeInt(this.mHeight);
            TextUtils.writeToParcel(this.mTitle, parcel, 0);
            parcel.writeInt(this.mDisplayId);
        }

        public WindowNode(ParcelTransferReader parcelTransferReader) {
            Parcel parcel = parcelTransferReader.readParcel(AssistStructure.VALIDATE_WINDOW_TOKEN, 0);
            parcelTransferReader.mNumReadWindows++;
            this.mX = parcel.readInt();
            this.mY = parcel.readInt();
            this.mWidth = parcel.readInt();
            this.mHeight = parcel.readInt();
            this.mTitle = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.mDisplayId = parcel.readInt();
            this.mRoot = new ViewNode(parcelTransferReader, 0);
        }
    }

    public AssistStructure(Parcel parcel) {
        this.mWindowNodes = new ArrayList<>();
        this.mPendingAsyncChildren = new ArrayList<>();
        this.mTmpRect = new Rect();
        this.mSanitizeOnWrite = false;
        this.mIsHomeActivity = parcel.readInt() == 1;
        this.mReceiveChannel = parcel.readStrongBinder();
    }

    public void dump(boolean z2) {
        if (this.mActivityComponent == null) {
            Log.i(TAG, "dump(): calling ensureData() first");
            ensureData();
        }
        Log.i(TAG, "Activity: " + this.mActivityComponent.flattenToShortString());
        Log.i(TAG, "Sanitize on write: " + this.mSanitizeOnWrite);
        Log.i(TAG, "Flags: " + this.mFlags);
        int windowNodeCount = getWindowNodeCount();
        for (int i2 = 0; i2 < windowNodeCount; i2++) {
            WindowNode windowNodeAt = getWindowNodeAt(i2);
            StringBuilder sbS = c.s("Window #", i2, " [");
            sbS.append(windowNodeAt.getLeft());
            sbS.append(",");
            sbS.append(windowNodeAt.getTop());
            sbS.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbS.append(windowNodeAt.getWidth());
            sbS.append("x");
            sbS.append(windowNodeAt.getHeight());
            sbS.append("] ");
            sbS.append((Object) windowNodeAt.getTitle());
            Log.i(TAG, sbS.toString());
            dump("  ", windowNodeAt.getRootViewNode(), z2);
        }
    }
}
