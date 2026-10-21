package android.animation;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.app.Application;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Looper;
import android.provider.Telephony;
import android.util.AndroidRuntimeException;
import android.util.ArrayMap;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatorSet extends Animator implements AnimationHandler.AnimationFrameCallback {
    private static final String TAG = "AnimatorSet";
    private boolean mChildrenInitialized;
    private ValueAnimator mDelayAnim;
    private AnimatorListenerAdapter mDummyListener;
    private long mDuration;
    private final boolean mEndCanBeCalled;
    private long mFirstFrame;
    private TimeInterpolator mInterpolator;
    private int mLastEventId;
    private long mLastFrameTime;
    private long mPauseTime;
    private boolean mReversing;
    private Node mRootNode;
    private SeekState mSeekState;
    private boolean mSelfPulse;
    private final boolean mShouldIgnoreEndWithoutStart;
    private final boolean mShouldResetValuesAtStart;
    private long mTotalDuration;
    private ArrayList<Node> mPlayingSet = new ArrayList<>();
    private ArrayMap<Animator, Node> mNodeMap = new ArrayMap<>();
    private ArrayList<AnimationEvent> mEvents = new ArrayList<>();
    private ArrayList<Node> mNodes = new ArrayList<>();
    private boolean mDependencyDirty = false;
    private boolean mStarted = false;
    private long mStartDelay = 0;

    public static class AnimationEvent {
        static final int ANIMATION_DELAY_ENDED = 1;
        static final int ANIMATION_END = 2;
        static final int ANIMATION_START = 0;
        final int mEvent;
        final Node mNode;

        public AnimationEvent(Node node, int i2) {
            this.mNode = node;
            this.mEvent = i2;
        }

        public long getTime() {
            int i2 = this.mEvent;
            if (i2 == 0) {
                return this.mNode.mStartTime;
            }
            if (i2 != 1) {
                return this.mNode.mEndTime;
            }
            Node node = this.mNode;
            long j2 = node.mStartTime;
            if (j2 == -1) {
                return -1L;
            }
            return node.mAnimation.getStartDelay() + j2;
        }

        public String toString() {
            String str;
            int i2 = this.mEvent;
            if (i2 == 0) {
                str = Telephony.BaseMmsColumns.START;
            } else {
                str = i2 == 1 ? "delay ended" : "end";
            }
            StringBuilder sbU = c.u(str, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbU.append(this.mNode.mAnimation.toString());
            return sbU.toString();
        }
    }

    public static class Node implements Cloneable {
        Animator mAnimation;
        ArrayList<Node> mParents;
        ArrayList<Node> mSiblings;
        ArrayList<Node> mChildNodes = null;
        boolean mEnded = false;
        Node mLatestParent = null;
        boolean mParentsAdded = false;
        long mStartTime = 0;
        long mEndTime = 0;
        long mTotalDuration = 0;

        public Node(Animator animator) {
            this.mAnimation = animator;
        }

        public void addChild(Node node) {
            if (this.mChildNodes == null) {
                this.mChildNodes = new ArrayList<>();
            }
            if (this.mChildNodes.contains(node)) {
                return;
            }
            this.mChildNodes.add(node);
            node.addParent(this);
        }

        public void addParent(Node node) {
            if (this.mParents == null) {
                this.mParents = new ArrayList<>();
            }
            if (this.mParents.contains(node)) {
                return;
            }
            this.mParents.add(node);
            node.addChild(this);
        }

        public void addParents(ArrayList<Node> arrayList) {
            if (arrayList == null) {
                return;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                addParent(arrayList.get(i2));
            }
        }

        public void addSibling(Node node) {
            if (this.mSiblings == null) {
                this.mSiblings = new ArrayList<>();
            }
            if (this.mSiblings.contains(node)) {
                return;
            }
            this.mSiblings.add(node);
            node.addSibling(this);
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Node m1clone() {
            try {
                Node node = (Node) super.clone();
                node.mAnimation = this.mAnimation.mo0clone();
                if (this.mChildNodes != null) {
                    node.mChildNodes = new ArrayList<>(this.mChildNodes);
                }
                if (this.mSiblings != null) {
                    node.mSiblings = new ArrayList<>(this.mSiblings);
                }
                if (this.mParents != null) {
                    node.mParents = new ArrayList<>(this.mParents);
                }
                node.mEnded = false;
                return node;
            } catch (CloneNotSupportedException unused) {
                throw new AssertionError();
            }
        }
    }

    public class SeekState {
        private long mPlayTime;
        private boolean mSeekingInReverse;

        private SeekState() {
            this.mPlayTime = -1L;
            this.mSeekingInReverse = false;
        }

        public long getPlayTime() {
            return this.mPlayTime;
        }

        public long getPlayTimeNormalized() {
            return AnimatorSet.this.mReversing ? (AnimatorSet.this.getTotalDuration() - AnimatorSet.this.mStartDelay) - this.mPlayTime : this.mPlayTime;
        }

        public boolean isActive() {
            return this.mPlayTime != -1;
        }

        public void reset() {
            this.mPlayTime = -1L;
            this.mSeekingInReverse = false;
        }

        public void setPlayTime(long j2, boolean z2) {
            if (AnimatorSet.this.getTotalDuration() != -1) {
                this.mPlayTime = Math.min(j2, AnimatorSet.this.getTotalDuration() - AnimatorSet.this.mStartDelay);
            }
            this.mPlayTime = Math.max(0L, this.mPlayTime);
            this.mSeekingInReverse = z2;
        }

        public void updateSeekDirection(boolean z2) {
            if (z2 && AnimatorSet.this.getTotalDuration() == -1) {
                throw new UnsupportedOperationException("Error: Cannot reverse infinite animator set");
            }
            if (this.mPlayTime < 0 || z2 == this.mSeekingInReverse) {
                return;
            }
            this.mPlayTime = (AnimatorSet.this.getTotalDuration() - AnimatorSet.this.mStartDelay) - this.mPlayTime;
            this.mSeekingInReverse = z2;
        }
    }

    public AnimatorSet() {
        boolean z2 = false;
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(0L);
        this.mDelayAnim = duration;
        this.mRootNode = new Node(duration);
        this.mDuration = -1L;
        this.mInterpolator = null;
        this.mTotalDuration = 0L;
        this.mLastFrameTime = -1L;
        this.mFirstFrame = -1L;
        this.mLastEventId = -1;
        this.mReversing = false;
        this.mSelfPulse = true;
        this.mSeekState = new SeekState();
        this.mChildrenInitialized = false;
        this.mPauseTime = -1L;
        this.mDummyListener = new AnimatorListenerAdapter() { // from class: android.animation.AnimatorSet.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AnimatorSet.this.mNodeMap.get(animator) == null) {
                    throw new AndroidRuntimeException("Error: animation ended is not in the node map");
                }
                ((Node) AnimatorSet.this.mNodeMap.get(animator)).mEnded = true;
            }
        };
        this.mNodeMap.put(this.mDelayAnim, this.mRootNode);
        this.mNodes.add(this.mRootNode);
        Application applicationCurrentApplication = ActivityThread.currentApplication();
        if (applicationCurrentApplication != null && applicationCurrentApplication.getApplicationInfo() != null) {
            if (applicationCurrentApplication.getApplicationInfo().targetSdkVersion < 24) {
                this.mShouldIgnoreEndWithoutStart = true;
            } else {
                this.mShouldIgnoreEndWithoutStart = false;
            }
            if (applicationCurrentApplication.getApplicationInfo().targetSdkVersion < 26) {
            }
            this.mShouldResetValuesAtStart = !z2;
            this.mEndCanBeCalled = !z2;
        }
        this.mShouldIgnoreEndWithoutStart = true;
        z2 = true;
        this.mShouldResetValuesAtStart = !z2;
        this.mEndCanBeCalled = !z2;
    }

    private void addAnimationCallback(long j2) {
        if (this.mSelfPulse) {
            AnimationHandler.getInstance().addAnimationFrameCallback(this, j2);
        }
    }

    private void addDummyListener() {
        for (int i2 = 1; i2 < this.mNodes.size(); i2++) {
            this.mNodes.get(i2).mAnimation.addListener(this.mDummyListener);
        }
    }

    private void createDependencyGraph() {
        boolean z2;
        if (!this.mDependencyDirty) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.mNodes.size()) {
                    z2 = false;
                    break;
                }
                if (this.mNodes.get(i2).mTotalDuration != this.mNodes.get(i2).mAnimation.getTotalDuration()) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (!z2) {
                return;
            }
        }
        this.mDependencyDirty = false;
        int size = this.mNodes.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.mNodes.get(i3).mParentsAdded = false;
        }
        for (int i4 = 0; i4 < size; i4++) {
            Node node = this.mNodes.get(i4);
            if (!node.mParentsAdded) {
                node.mParentsAdded = true;
                ArrayList<Node> arrayList = node.mSiblings;
                if (arrayList != null) {
                    findSiblings(node, arrayList);
                    node.mSiblings.remove(node);
                    int size2 = node.mSiblings.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        node.addParents(node.mSiblings.get(i5).mParents);
                    }
                    for (int i6 = 0; i6 < size2; i6++) {
                        Node node2 = node.mSiblings.get(i6);
                        node2.addParents(node.mParents);
                        node2.mParentsAdded = true;
                    }
                }
            }
        }
        for (int i7 = 0; i7 < size; i7++) {
            Node node3 = this.mNodes.get(i7);
            Node node4 = this.mRootNode;
            if (node3 != node4 && node3.mParents == null) {
                node3.addParent(node4);
            }
        }
        ArrayList<Node> arrayList2 = new ArrayList<>(this.mNodes.size());
        Node node5 = this.mRootNode;
        node5.mStartTime = 0L;
        node5.mEndTime = this.mDelayAnim.getDuration();
        updatePlayTime(this.mRootNode, arrayList2);
        sortAnimationEvents();
        ArrayList<AnimationEvent> arrayList3 = this.mEvents;
        this.mTotalDuration = arrayList3.get(arrayList3.size() - 1).getTime();
    }

    private void endAnimation() {
        this.mStarted = false;
        this.mLastFrameTime = -1L;
        this.mFirstFrame = -1L;
        this.mLastEventId = -1;
        this.mPaused = false;
        this.mPauseTime = -1L;
        this.mSeekState.reset();
        this.mPlayingSet.clear();
        removeAnimationCallback();
        ArrayList<Animator.AnimatorListener> arrayList = this.mListeners;
        if (arrayList != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Animator.AnimatorListener) arrayList2.get(i2)).onAnimationEnd(this, this.mReversing);
            }
        }
        removeDummyListener();
        this.mSelfPulse = true;
        this.mReversing = false;
    }

    private int findLatestEventIdForTime(long j2) {
        int size = this.mEvents.size();
        int i2 = this.mLastEventId;
        if (this.mReversing) {
            long totalDuration = getTotalDuration() - j2;
            int i3 = this.mLastEventId;
            if (i3 != -1) {
                size = i3;
            }
            this.mLastEventId = size;
            for (int i4 = size - 1; i4 >= 0; i4--) {
                if (this.mEvents.get(i4).getTime() >= totalDuration) {
                    i2 = i4;
                }
            }
        } else {
            for (int i5 = i2 + 1; i5 < size; i5++) {
                AnimationEvent animationEvent = this.mEvents.get(i5);
                if (animationEvent.getTime() != -1 && animationEvent.getTime() <= j2) {
                    i2 = i5;
                }
            }
        }
        return i2;
    }

    private void findSiblings(Node node, ArrayList<Node> arrayList) {
        if (arrayList.contains(node)) {
            return;
        }
        arrayList.add(node);
        if (node.mSiblings == null) {
            return;
        }
        for (int i2 = 0; i2 < node.mSiblings.size(); i2++) {
            findSiblings(node.mSiblings.get(i2), arrayList);
        }
    }

    private void forceToEnd() {
        if (this.mEndCanBeCalled) {
            end();
            return;
        }
        if (this.mReversing) {
            handleAnimationEvents(this.mLastEventId, 0, getTotalDuration());
        } else {
            long totalDuration = getTotalDuration();
            if (totalDuration == -1) {
                totalDuration = 2147483647L;
            }
            handleAnimationEvents(this.mLastEventId, this.mEvents.size() - 1, totalDuration);
        }
        this.mPlayingSet.clear();
        endAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Node getNodeForAnimation(Animator animator) {
        Node node = this.mNodeMap.get(animator);
        if (node != null) {
            return node;
        }
        Node node2 = new Node(animator);
        this.mNodeMap.put(animator, node2);
        this.mNodes.add(node2);
        return node2;
    }

    private long getPlayTimeForNode(long j2, Node node) {
        return getPlayTimeForNode(j2, node, this.mReversing);
    }

    private void handleAnimationEvents(int i2, int i3, long j2) {
        if (!this.mReversing) {
            for (int i4 = i2 + 1; i4 <= i3; i4++) {
                AnimationEvent animationEvent = this.mEvents.get(i4);
                Node node = animationEvent.mNode;
                int i5 = animationEvent.mEvent;
                if (i5 == 0) {
                    this.mPlayingSet.add(node);
                    if (node.mAnimation.isStarted()) {
                        node.mAnimation.cancel();
                    }
                    node.mEnded = false;
                    node.mAnimation.startWithoutPulsing(false);
                    pulseFrame(node, 0L);
                } else if (i5 == 2 && !node.mEnded) {
                    pulseFrame(node, getPlayTimeForNode(j2, node));
                }
            }
            return;
        }
        if (i2 == -1) {
            i2 = this.mEvents.size();
        }
        for (int i6 = i2 - 1; i6 >= i3; i6--) {
            AnimationEvent animationEvent2 = this.mEvents.get(i6);
            Node node2 = animationEvent2.mNode;
            int i7 = animationEvent2.mEvent;
            if (i7 == 2) {
                if (node2.mAnimation.isStarted()) {
                    node2.mAnimation.cancel();
                }
                node2.mEnded = false;
                this.mPlayingSet.add(animationEvent2.mNode);
                node2.mAnimation.startWithoutPulsing(true);
                pulseFrame(node2, 0L);
            } else if (i7 == 1 && !node2.mEnded) {
                pulseFrame(node2, getPlayTimeForNode(j2, node2));
            }
        }
    }

    private void initAnimation() {
        if (this.mInterpolator != null) {
            for (int i2 = 0; i2 < this.mNodes.size(); i2++) {
                this.mNodes.get(i2).mAnimation.setInterpolator(this.mInterpolator);
            }
        }
        updateAnimatorsDuration();
        createDependencyGraph();
    }

    private void initChildren() {
        if (isInitialized()) {
            return;
        }
        this.mChildrenInitialized = true;
        skipToEndValue(false);
    }

    private static boolean isEmptySet(AnimatorSet animatorSet) {
        if (animatorSet.getStartDelay() > 0) {
            return false;
        }
        for (int i2 = 0; i2 < animatorSet.getChildAnimations().size(); i2++) {
            Animator animator = animatorSet.getChildAnimations().get(i2);
            if (!(animator instanceof AnimatorSet) || !isEmptySet((AnimatorSet) animator)) {
                return false;
            }
        }
        return true;
    }

    private void printChildCount() {
        int i2;
        ArrayList arrayList = new ArrayList(this.mNodes.size());
        arrayList.add(this.mRootNode);
        Log.d(TAG, "Current tree: ");
        int i3 = 0;
        while (i3 < arrayList.size()) {
            int size = arrayList.size();
            StringBuilder sb = new StringBuilder();
            while (i3 < size) {
                Node node = (Node) arrayList.get(i3);
                if (node.mChildNodes != null) {
                    i2 = 0;
                    for (int i4 = 0; i4 < node.mChildNodes.size(); i4++) {
                        Node node2 = node.mChildNodes.get(i4);
                        if (node2.mLatestParent == node) {
                            i2++;
                            arrayList.add(node2);
                        }
                    }
                } else {
                    i2 = 0;
                }
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sb.append(i2);
                i3++;
            }
            Log.d(TAG, sb.toString());
        }
    }

    private void pulseFrame(Node node, long j2) {
        if (node.mEnded) {
            return;
        }
        float durationScale = ValueAnimator.getDurationScale();
        if (durationScale == 0.0f) {
            durationScale = 1.0f;
        }
        node.mEnded = node.mAnimation.pulseAnimationFrame((long) (j2 * durationScale));
    }

    private void removeAnimationCallback() {
        if (this.mSelfPulse) {
            AnimationHandler.getInstance().removeCallback(this);
        }
    }

    private void removeDummyListener() {
        for (int i2 = 1; i2 < this.mNodes.size(); i2++) {
            this.mNodes.get(i2).mAnimation.removeListener(this.mDummyListener);
        }
    }

    private void skipToStartValue(boolean z2) {
        skipToEndValue(!z2);
    }

    private void sortAnimationEvents() {
        boolean z2;
        this.mEvents.clear();
        for (int i2 = 1; i2 < this.mNodes.size(); i2++) {
            Node node = this.mNodes.get(i2);
            this.mEvents.add(new AnimationEvent(node, 0));
            this.mEvents.add(new AnimationEvent(node, 1));
            this.mEvents.add(new AnimationEvent(node, 2));
        }
        this.mEvents.sort(new Comparator<AnimationEvent>() { // from class: android.animation.AnimatorSet.3
            @Override // java.util.Comparator
            public int compare(AnimationEvent animationEvent, AnimationEvent animationEvent2) {
                long time = animationEvent.getTime();
                long time2 = animationEvent2.getTime();
                if (time == time2) {
                    int i3 = animationEvent2.mEvent;
                    int i4 = animationEvent.mEvent;
                    return i3 + i4 == 1 ? i4 - i3 : i3 - i4;
                }
                if (time2 == -1) {
                    return -1;
                }
                if (time == -1) {
                    return 1;
                }
                return (int) (time - time2);
            }
        });
        int size = this.mEvents.size();
        int i3 = 0;
        while (i3 < size) {
            AnimationEvent animationEvent = this.mEvents.get(i3);
            if (animationEvent.mEvent == 2) {
                Node node2 = animationEvent.mNode;
                long j2 = node2.mStartTime;
                long j3 = node2.mEndTime;
                if (j2 == j3) {
                    z2 = true;
                } else if (j3 == node2.mAnimation.getStartDelay() + j2) {
                    z2 = false;
                }
                int i4 = i3 + 1;
                int i5 = size;
                int i6 = i5;
                for (int i7 = i4; i7 < size && (i5 >= size || i6 >= size); i7++) {
                    if (this.mEvents.get(i7).mNode == animationEvent.mNode) {
                        if (this.mEvents.get(i7).mEvent == 0) {
                            i5 = i7;
                        } else if (this.mEvents.get(i7).mEvent == 1) {
                            i6 = i7;
                        }
                    }
                }
                if (z2 && i5 == this.mEvents.size()) {
                    throw new UnsupportedOperationException("Something went wrong, no start isfound after stop for an animation that has the same start and endtime.");
                }
                if (i6 == this.mEvents.size()) {
                    throw new UnsupportedOperationException("Something went wrong, no startdelay end is found after stop for an animation");
                }
                if (z2) {
                    this.mEvents.add(i3, this.mEvents.remove(i5));
                    i3 = i4;
                }
                this.mEvents.add(i3, this.mEvents.remove(i6));
                i3 += 2;
            }
            i3++;
        }
        if (!this.mEvents.isEmpty() && this.mEvents.get(0).mEvent != 0) {
            throw new UnsupportedOperationException("Sorting went bad, the start event should always be at index 0");
        }
        this.mEvents.add(0, new AnimationEvent(this.mRootNode, 0));
        this.mEvents.add(1, new AnimationEvent(this.mRootNode, 1));
        this.mEvents.add(2, new AnimationEvent(this.mRootNode, 2));
        ArrayList<AnimationEvent> arrayList = this.mEvents;
        if (arrayList.get(arrayList.size() - 1).mEvent != 0) {
            ArrayList<AnimationEvent> arrayList2 = this.mEvents;
            if (arrayList2.get(arrayList2.size() - 1).mEvent != 1) {
                return;
            }
        }
        throw new UnsupportedOperationException("Something went wrong, the last event is not an end event");
    }

    private void startAnimation() {
        addDummyListener();
        long playTime = 0;
        addAnimationCallback(0L);
        if (this.mSeekState.getPlayTimeNormalized() == 0 && this.mReversing) {
            this.mSeekState.reset();
        }
        if (this.mShouldResetValuesAtStart) {
            if (isInitialized()) {
                skipToEndValue(!this.mReversing);
            } else if (this.mReversing) {
                initChildren();
                skipToEndValue(!this.mReversing);
            } else {
                for (int size = this.mEvents.size() - 1; size >= 0; size--) {
                    if (this.mEvents.get(size).mEvent == 1) {
                        Animator animator = this.mEvents.get(size).mNode.mAnimation;
                        if (animator.isInitialized()) {
                            animator.skipToEndValue(true);
                        }
                    }
                }
            }
        }
        if (this.mReversing || this.mStartDelay == 0 || this.mSeekState.isActive()) {
            if (this.mSeekState.isActive()) {
                this.mSeekState.updateSeekDirection(this.mReversing);
                playTime = this.mSeekState.getPlayTime();
            }
            int iFindLatestEventIdForTime = findLatestEventIdForTime(playTime);
            handleAnimationEvents(-1, iFindLatestEventIdForTime, playTime);
            for (int size2 = this.mPlayingSet.size() - 1; size2 >= 0; size2--) {
                if (this.mPlayingSet.get(size2).mEnded) {
                    this.mPlayingSet.remove(size2);
                }
            }
            this.mLastEventId = iFindLatestEventIdForTime;
        }
    }

    private void updateAnimatorsDuration() {
        if (this.mDuration >= 0) {
            int size = this.mNodes.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mNodes.get(i2).mAnimation.setDuration(this.mDuration);
            }
        }
        this.mDelayAnim.setDuration(this.mStartDelay);
    }

    private void updatePlayTime(Node node, ArrayList<Node> arrayList) {
        int i2 = 0;
        if (node.mChildNodes == null) {
            if (node == this.mRootNode) {
                while (i2 < this.mNodes.size()) {
                    Node node2 = this.mNodes.get(i2);
                    if (node2 != this.mRootNode) {
                        node2.mStartTime = -1L;
                        node2.mEndTime = -1L;
                    }
                    i2++;
                }
                return;
            }
            return;
        }
        arrayList.add(node);
        int size = node.mChildNodes.size();
        while (i2 < size) {
            Node node3 = node.mChildNodes.get(i2);
            node3.mTotalDuration = node3.mAnimation.getTotalDuration();
            int iIndexOf = arrayList.indexOf(node3);
            if (iIndexOf >= 0) {
                while (iIndexOf < arrayList.size()) {
                    arrayList.get(iIndexOf).mLatestParent = null;
                    arrayList.get(iIndexOf).mStartTime = -1L;
                    arrayList.get(iIndexOf).mEndTime = -1L;
                    iIndexOf++;
                }
                node3.mStartTime = -1L;
                node3.mEndTime = -1L;
                node3.mLatestParent = null;
                Log.w(TAG, "Cycle found in AnimatorSet: " + this);
            } else {
                long j2 = node3.mStartTime;
                if (j2 != -1) {
                    long j3 = node.mEndTime;
                    if (j3 == -1) {
                        node3.mLatestParent = node;
                        node3.mStartTime = -1L;
                        node3.mEndTime = -1L;
                    } else {
                        if (j3 >= j2) {
                            node3.mLatestParent = node;
                            node3.mStartTime = j3;
                        }
                        long j4 = node3.mTotalDuration;
                        node3.mEndTime = j4 == -1 ? -1L : node3.mStartTime + j4;
                    }
                }
                updatePlayTime(node3, arrayList);
            }
            i2++;
        }
        arrayList.remove(node);
    }

    @Override // android.animation.Animator
    public void animateBasedOnPlayTime(long j2, long j3, boolean z2) {
        if (j2 < 0 || j3 < 0) {
            throw new UnsupportedOperationException("Error: Play time should never be negative.");
        }
        if (z2) {
            if (getTotalDuration() == -1) {
                throw new UnsupportedOperationException("Cannot reverse AnimatorSet with infinite duration");
            }
            long totalDuration = getTotalDuration() - this.mStartDelay;
            j2 = totalDuration - Math.min(j2, totalDuration);
            j3 = totalDuration - j3;
            z2 = false;
        }
        skipToStartValue(false);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.mEvents.size(); i2++) {
            AnimationEvent animationEvent = this.mEvents.get(i2);
            if (animationEvent.getTime() > j2 || animationEvent.getTime() == -1) {
                break;
            }
            if (animationEvent.mEvent == 1) {
                Node node = animationEvent.mNode;
                long j4 = node.mEndTime;
                if (j4 == -1 || j4 > j2) {
                    arrayList.add(node);
                }
            }
            if (animationEvent.mEvent == 2) {
                animationEvent.mNode.mAnimation.skipToEndValue(false);
            }
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            Node node2 = (Node) arrayList.get(i3);
            long playTimeForNode = getPlayTimeForNode(j2, node2, z2);
            if (!z2) {
                playTimeForNode -= node2.mAnimation.getStartDelay();
            }
            node2.mAnimation.animateBasedOnPlayTime(playTimeForNode, j3, z2);
        }
    }

    @Override // android.animation.Animator
    public boolean canReverse() {
        return getTotalDuration() != -1;
    }

    @Override // android.animation.Animator
    public void cancel() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        if (isStarted()) {
            ArrayList<Animator.AnimatorListener> arrayList = this.mListeners;
            if (arrayList != null) {
                ArrayList arrayList2 = (ArrayList) arrayList.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((Animator.AnimatorListener) arrayList2.get(i2)).onAnimationCancel(this);
                }
            }
            ArrayList arrayList3 = new ArrayList(this.mPlayingSet);
            int size2 = arrayList3.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((Node) arrayList3.get(i3)).mAnimation.cancel();
            }
            this.mPlayingSet.clear();
            endAnimation();
        }
    }

    @Override // android.animation.AnimationHandler.AnimationFrameCallback
    public void commitAnimationFrame(long j2) {
    }

    @Override // android.animation.AnimationHandler.AnimationFrameCallback
    public boolean doAnimationFrame(long j2) {
        float durationScale = ValueAnimator.getDurationScale();
        if (durationScale == 0.0f) {
            forceToEnd();
            return true;
        }
        if (this.mFirstFrame < 0) {
            this.mFirstFrame = j2;
        }
        if (this.mPaused) {
            this.mPauseTime = j2;
            removeAnimationCallback();
            return false;
        }
        long j3 = this.mPauseTime;
        if (j3 > 0) {
            this.mFirstFrame = (j2 - j3) + this.mFirstFrame;
            this.mPauseTime = -1L;
        }
        if (this.mSeekState.isActive()) {
            this.mSeekState.updateSeekDirection(this.mReversing);
            if (this.mReversing) {
                this.mFirstFrame = (long) (j2 - (this.mSeekState.getPlayTime() * durationScale));
            } else {
                this.mFirstFrame = (long) (j2 - ((this.mSeekState.getPlayTime() + this.mStartDelay) * durationScale));
            }
            this.mSeekState.reset();
        }
        if (!this.mReversing) {
            if (j2 < (this.mStartDelay * durationScale) + this.mFirstFrame) {
                return false;
            }
        }
        long j4 = (long) ((j2 - this.mFirstFrame) / durationScale);
        this.mLastFrameTime = j2;
        int iFindLatestEventIdForTime = findLatestEventIdForTime(j4);
        handleAnimationEvents(this.mLastEventId, iFindLatestEventIdForTime, j4);
        this.mLastEventId = iFindLatestEventIdForTime;
        for (int i2 = 0; i2 < this.mPlayingSet.size(); i2++) {
            Node node = this.mPlayingSet.get(i2);
            if (!node.mEnded) {
                pulseFrame(node, getPlayTimeForNode(j4, node));
            }
        }
        for (int size = this.mPlayingSet.size() - 1; size >= 0; size--) {
            if (this.mPlayingSet.get(size).mEnded) {
                this.mPlayingSet.remove(size);
            }
        }
        if (!(!this.mReversing ? !(this.mPlayingSet.isEmpty() && this.mLastEventId == this.mEvents.size() - 1) : !(this.mPlayingSet.size() == 1 && this.mPlayingSet.get(0) == this.mRootNode) && (!this.mPlayingSet.isEmpty() || this.mLastEventId >= 3))) {
            return false;
        }
        endAnimation();
        return true;
    }

    @Override // android.animation.Animator
    public void end() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        if (!this.mShouldIgnoreEndWithoutStart || isStarted()) {
            if (isStarted()) {
                if (this.mReversing) {
                    int size = this.mLastEventId;
                    if (size == -1) {
                        size = this.mEvents.size();
                    }
                    this.mLastEventId = size;
                    while (true) {
                        int i2 = this.mLastEventId;
                        if (i2 <= 0) {
                            break;
                        }
                        int i3 = i2 - 1;
                        this.mLastEventId = i3;
                        AnimationEvent animationEvent = this.mEvents.get(i3);
                        Animator animator = animationEvent.mNode.mAnimation;
                        if (!this.mNodeMap.get(animator).mEnded) {
                            int i4 = animationEvent.mEvent;
                            if (i4 == 2) {
                                animator.reverse();
                            } else if (i4 == 1 && animator.isStarted()) {
                                animator.end();
                            }
                        }
                    }
                } else {
                    while (this.mLastEventId < this.mEvents.size() - 1) {
                        int i5 = this.mLastEventId + 1;
                        this.mLastEventId = i5;
                        AnimationEvent animationEvent2 = this.mEvents.get(i5);
                        Animator animator2 = animationEvent2.mNode.mAnimation;
                        if (!this.mNodeMap.get(animator2).mEnded) {
                            int i6 = animationEvent2.mEvent;
                            if (i6 == 0) {
                                animator2.start();
                            } else if (i6 == 2 && animator2.isStarted()) {
                                animator2.end();
                            }
                        }
                    }
                }
                this.mPlayingSet.clear();
            }
            endAnimation();
        }
    }

    @Override // android.animation.Animator
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        int size = this.mNodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            changingConfigurations |= this.mNodes.get(i2).mAnimation.getChangingConfigurations();
        }
        return changingConfigurations;
    }

    public ArrayList<Animator> getChildAnimations() {
        ArrayList<Animator> arrayList = new ArrayList<>();
        int size = this.mNodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            Node node = this.mNodes.get(i2);
            if (node != this.mRootNode) {
                arrayList.add(node.mAnimation);
            }
        }
        return arrayList;
    }

    public long getCurrentPlayTime() {
        if (this.mSeekState.isActive()) {
            return this.mSeekState.getPlayTime();
        }
        if (this.mLastFrameTime == -1) {
            return 0L;
        }
        float durationScale = ValueAnimator.getDurationScale();
        if (durationScale == 0.0f) {
            durationScale = 1.0f;
        }
        return this.mReversing ? (long) ((this.mLastFrameTime - this.mFirstFrame) / durationScale) : (long) (((this.mLastFrameTime - this.mFirstFrame) - this.mStartDelay) / durationScale);
    }

    @Override // android.animation.Animator
    public long getDuration() {
        return this.mDuration;
    }

    @Override // android.animation.Animator
    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    @Override // android.animation.Animator
    public long getStartDelay() {
        return this.mStartDelay;
    }

    @Override // android.animation.Animator
    public long getTotalDuration() {
        updateAnimatorsDuration();
        createDependencyGraph();
        return this.mTotalDuration;
    }

    @Override // android.animation.Animator
    public boolean isInitialized() {
        boolean z2 = true;
        if (this.mChildrenInitialized) {
            return true;
        }
        for (int i2 = 0; i2 < this.mNodes.size(); i2++) {
            if (!this.mNodes.get(i2).mAnimation.isInitialized()) {
                z2 = false;
                break;
            }
        }
        this.mChildrenInitialized = z2;
        return z2;
    }

    @Override // android.animation.Animator
    public boolean isRunning() {
        if (this.mStartDelay == 0) {
            return this.mStarted;
        }
        return this.mLastFrameTime > 0;
    }

    @Override // android.animation.Animator
    public boolean isStarted() {
        return this.mStarted;
    }

    @Override // android.animation.Animator
    public void pause() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        boolean z2 = this.mPaused;
        super.pause();
        if (z2 || !this.mPaused) {
            return;
        }
        this.mPauseTime = -1L;
    }

    public Builder play(Animator animator) {
        if (animator != null) {
            return new Builder(animator);
        }
        return null;
    }

    public void playSequentially(Animator... animatorArr) {
        if (animatorArr != null) {
            int i2 = 0;
            if (animatorArr.length == 1) {
                play(animatorArr[0]);
                return;
            }
            while (i2 < animatorArr.length - 1) {
                Builder builderPlay = play(animatorArr[i2]);
                i2++;
                builderPlay.before(animatorArr[i2]);
            }
        }
    }

    public void playTogether(Animator... animatorArr) {
        if (animatorArr != null) {
            Builder builderPlay = play(animatorArr[0]);
            for (int i2 = 1; i2 < animatorArr.length; i2++) {
                builderPlay.with(animatorArr[i2]);
            }
        }
    }

    @Override // android.animation.Animator
    public boolean pulseAnimationFrame(long j2) {
        return doAnimationFrame(j2);
    }

    @Override // android.animation.Animator
    public void resume() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        boolean z2 = this.mPaused;
        super.resume();
        if (!z2 || this.mPaused || this.mPauseTime < 0) {
            return;
        }
        addAnimationCallback(0L);
    }

    @Override // android.animation.Animator
    public void reverse() {
        start(true, true);
    }

    public void setCurrentPlayTime(long j2) {
        if (this.mReversing && getTotalDuration() == -1) {
            throw new UnsupportedOperationException("Error: Cannot seek in reverse in an infinite AnimatorSet");
        }
        if ((getTotalDuration() != -1 && j2 > getTotalDuration() - this.mStartDelay) || j2 < 0) {
            throw new UnsupportedOperationException("Error: Play time should always be in between0 and duration.");
        }
        initAnimation();
        if (isStarted()) {
            this.mSeekState.setPlayTime(j2, this.mReversing);
            return;
        }
        if (this.mReversing) {
            throw new UnsupportedOperationException("Error: Something went wrong. mReversing should not be set when AnimatorSet is not started.");
        }
        if (!this.mSeekState.isActive()) {
            findLatestEventIdForTime(0L);
            initChildren();
            skipToStartValue(this.mReversing);
            this.mSeekState.setPlayTime(0L, this.mReversing);
        }
        animateBasedOnPlayTime(j2, 0L, this.mReversing);
        this.mSeekState.setPlayTime(j2, this.mReversing);
    }

    @Override // android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
    }

    @Override // android.animation.Animator
    public void setStartDelay(long j2) {
        if (j2 < 0) {
            Log.w(TAG, "Start delay should always be non-negative");
            j2 = 0;
        }
        long j3 = j2 - this.mStartDelay;
        if (j3 == 0) {
            return;
        }
        this.mStartDelay = j2;
        if (this.mDependencyDirty) {
            return;
        }
        int size = this.mNodes.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            Node node = this.mNodes.get(i2);
            if (node == this.mRootNode) {
                node.mEndTime = this.mStartDelay;
            } else {
                long j4 = node.mStartTime;
                node.mStartTime = j4 == -1 ? -1L : j4 + j3;
                long j5 = node.mEndTime;
                node.mEndTime = j5 != -1 ? j5 + j3 : -1L;
            }
            i2++;
        }
        long j6 = this.mTotalDuration;
        if (j6 != -1) {
            this.mTotalDuration = j6 + j3;
        }
    }

    @Override // android.animation.Animator
    public void setTarget(Object obj) {
        int size = this.mNodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            Animator animator = this.mNodes.get(i2).mAnimation;
            if (animator instanceof AnimatorSet) {
                ((AnimatorSet) animator).setTarget(obj);
            } else if (animator instanceof ObjectAnimator) {
                ((ObjectAnimator) animator).setTarget(obj);
            }
        }
    }

    @Override // android.animation.Animator
    public void setupEndValues() {
        int size = this.mNodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            Node node = this.mNodes.get(i2);
            if (node != this.mRootNode) {
                node.mAnimation.setupEndValues();
            }
        }
    }

    @Override // android.animation.Animator
    public void setupStartValues() {
        int size = this.mNodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            Node node = this.mNodes.get(i2);
            if (node != this.mRootNode) {
                node.mAnimation.setupStartValues();
            }
        }
    }

    public boolean shouldPlayTogether() {
        updateAnimatorsDuration();
        createDependencyGraph();
        ArrayList<Node> arrayList = this.mRootNode.mChildNodes;
        return arrayList == null || arrayList.size() == this.mNodes.size() - 1;
    }

    @Override // android.animation.Animator
    public void skipToEndValue(boolean z2) {
        if (!isInitialized()) {
            throw new UnsupportedOperationException("Children must be initialized.");
        }
        initAnimation();
        if (z2) {
            for (int size = this.mEvents.size() - 1; size >= 0; size--) {
                if (this.mEvents.get(size).mEvent == 1) {
                    this.mEvents.get(size).mNode.mAnimation.skipToEndValue(true);
                }
            }
            return;
        }
        for (int i2 = 0; i2 < this.mEvents.size(); i2++) {
            if (this.mEvents.get(i2).mEvent == 2) {
                this.mEvents.get(i2).mNode.mAnimation.skipToEndValue(false);
            }
        }
    }

    @Override // android.animation.Animator
    public void start() {
        start(false, true);
    }

    @Override // android.animation.Animator
    public void startWithoutPulsing(boolean z2) {
        start(z2, false);
    }

    public String toString() {
        String string = "AnimatorSet@" + Integer.toHexString(hashCode()) + "{";
        int size = this.mNodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            Node node = this.mNodes.get(i2);
            StringBuilder sbU = c.u(string, "\n    ");
            sbU.append(node.mAnimation.toString());
            string = sbU.toString();
        }
        return c.D(string, "\n}");
    }

    public class Builder {
        private Node mCurrentNode;

        public Builder(Animator animator) {
            AnimatorSet.this.mDependencyDirty = true;
            this.mCurrentNode = AnimatorSet.this.getNodeForAnimation(animator);
        }

        public Builder after(Animator animator) {
            this.mCurrentNode.addParent(AnimatorSet.this.getNodeForAnimation(animator));
            return this;
        }

        public Builder before(Animator animator) {
            this.mCurrentNode.addChild(AnimatorSet.this.getNodeForAnimation(animator));
            return this;
        }

        public Builder with(Animator animator) {
            this.mCurrentNode.addSibling(AnimatorSet.this.getNodeForAnimation(animator));
            return this;
        }

        public Builder after(long j2) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(j2);
            after(valueAnimatorOfFloat);
            return this;
        }
    }

    private long getPlayTimeForNode(long j2, Node node, boolean z2) {
        if (!z2) {
            return j2 - node.mStartTime;
        }
        return node.mEndTime - (getTotalDuration() - j2);
    }

    private void start(boolean z2, boolean z3) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.mStarted = true;
        this.mSelfPulse = z3;
        this.mPaused = false;
        this.mPauseTime = -1L;
        int size = this.mNodes.size();
        for (int i2 = 0; i2 < size; i2++) {
            Node node = this.mNodes.get(i2);
            node.mEnded = false;
            node.mAnimation.setAllowRunningAsynchronously(false);
        }
        initAnimation();
        if (z2 && !canReverse()) {
            throw new UnsupportedOperationException("Cannot reverse infinite AnimatorSet");
        }
        this.mReversing = z2;
        boolean zIsEmptySet = isEmptySet(this);
        if (!zIsEmptySet) {
            startAnimation();
        }
        ArrayList<Animator.AnimatorListener> arrayList = this.mListeners;
        if (arrayList != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((Animator.AnimatorListener) arrayList2.get(i3)).onAnimationStart(this, z2);
            }
        }
        if (zIsEmptySet) {
            end();
        }
    }

    @Override // android.animation.Animator
    public AnimatorSet setDuration(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("duration must be a value of zero or greater");
        }
        this.mDependencyDirty = true;
        this.mDuration = j2;
        return this;
    }

    @Override // android.animation.Animator
    /* JADX INFO: renamed from: clone */
    public AnimatorSet mo0clone() {
        final AnimatorSet animatorSet = (AnimatorSet) super.mo0clone();
        int size = this.mNodes.size();
        animatorSet.mStarted = false;
        animatorSet.mLastFrameTime = -1L;
        animatorSet.mFirstFrame = -1L;
        animatorSet.mLastEventId = -1;
        animatorSet.mPaused = false;
        animatorSet.mPauseTime = -1L;
        animatorSet.mSeekState = new SeekState();
        animatorSet.mSelfPulse = true;
        animatorSet.mPlayingSet = new ArrayList<>();
        animatorSet.mNodeMap = new ArrayMap<>();
        animatorSet.mNodes = new ArrayList<>(size);
        animatorSet.mEvents = new ArrayList<>();
        animatorSet.mDummyListener = new AnimatorListenerAdapter() { // from class: android.animation.AnimatorSet.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animatorSet.mNodeMap.get(animator) == null) {
                    throw new AndroidRuntimeException("Error: animation ended is not in the node map");
                }
                ((Node) animatorSet.mNodeMap.get(animator)).mEnded = true;
            }
        };
        animatorSet.mReversing = false;
        animatorSet.mDependencyDirty = true;
        HashMap map = new HashMap(size);
        for (int i2 = 0; i2 < size; i2++) {
            Node node = this.mNodes.get(i2);
            Node nodeM1clone = node.m1clone();
            nodeM1clone.mAnimation.removeListener(this.mDummyListener);
            map.put(node, nodeM1clone);
            animatorSet.mNodes.add(nodeM1clone);
            animatorSet.mNodeMap.put(nodeM1clone.mAnimation, nodeM1clone);
        }
        Node node2 = (Node) map.get(this.mRootNode);
        animatorSet.mRootNode = node2;
        animatorSet.mDelayAnim = (ValueAnimator) node2.mAnimation;
        for (int i3 = 0; i3 < size; i3++) {
            Node node3 = this.mNodes.get(i3);
            Node node4 = (Node) map.get(node3);
            Node node5 = node3.mLatestParent;
            node4.mLatestParent = node5 == null ? null : (Node) map.get(node5);
            ArrayList<Node> arrayList = node3.mChildNodes;
            int size2 = arrayList == null ? 0 : arrayList.size();
            for (int i4 = 0; i4 < size2; i4++) {
                node4.mChildNodes.set(i4, (Node) map.get(node3.mChildNodes.get(i4)));
            }
            ArrayList<Node> arrayList2 = node3.mSiblings;
            int size3 = arrayList2 == null ? 0 : arrayList2.size();
            for (int i5 = 0; i5 < size3; i5++) {
                node4.mSiblings.set(i5, (Node) map.get(node3.mSiblings.get(i5)));
            }
            ArrayList<Node> arrayList3 = node3.mParents;
            int size4 = arrayList3 == null ? 0 : arrayList3.size();
            for (int i6 = 0; i6 < size4; i6++) {
                node4.mParents.set(i6, (Node) map.get(node3.mParents.get(i6)));
            }
        }
        return animatorSet;
    }

    public void playTogether(Collection<Animator> collection) {
        if (collection == null || collection.size() <= 0) {
            return;
        }
        Builder builderPlay = null;
        for (Animator animator : collection) {
            if (builderPlay == null) {
                builderPlay = play(animator);
            } else {
                builderPlay.with(animator);
            }
        }
    }

    public void playSequentially(List<Animator> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        int i2 = 0;
        if (list.size() == 1) {
            play(list.get(0));
            return;
        }
        while (i2 < list.size() - 1) {
            Builder builderPlay = play(list.get(i2));
            i2++;
            builderPlay.before(list.get(i2));
        }
    }
}
