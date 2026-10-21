package com.android.internal.util;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CallbackRegistry<C, T, A> implements Cloneable {
    private static final String TAG = "CallbackRegistry";
    private List<C> mCallbacks = new ArrayList();
    private long mFirst64Removed = 0;
    private int mNotificationLevel;
    private final NotifierCallback<C, T, A> mNotifier;
    private long[] mRemainderRemoved;

    public static abstract class NotifierCallback<C, T, A> {
        public abstract void onNotifyCallback(C c, T t2, int i2, A a2);
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifierCallback) {
        this.mNotifier = notifierCallback;
    }

    private boolean isRemovedLocked(int i2) {
        int i3;
        if (i2 < 64) {
            return ((1 << i2) & this.mFirst64Removed) != 0;
        }
        long[] jArr = this.mRemainderRemoved;
        if (jArr != null && (i3 = (i2 / 64) - 1) < jArr.length) {
            return ((1 << (i2 % 64)) & jArr[i3]) != 0;
        }
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void notifyCallbacksLocked(T t2, int i2, A a2, int i3, int i4, long j2) {
        long j3 = 1;
        while (i3 < i4) {
            if ((j2 & j3) == 0) {
                this.mNotifier.onNotifyCallback(this.mCallbacks.get(i3), t2, i2, a2);
            }
            j3 <<= 1;
            i3++;
        }
    }

    private void notifyFirst64Locked(T t2, int i2, A a2) {
        notifyCallbacksLocked(t2, i2, a2, 0, Math.min(64, this.mCallbacks.size()), this.mFirst64Removed);
    }

    private void notifyRecurseLocked(T t2, int i2, A a2) {
        int size = this.mCallbacks.size();
        long[] jArr = this.mRemainderRemoved;
        int length = jArr == null ? -1 : jArr.length - 1;
        notifyRemainderLocked(t2, i2, a2, length);
        notifyCallbacksLocked(t2, i2, a2, (length + 2) * 64, size, 0L);
    }

    private void notifyRemainderLocked(T t2, int i2, A a2, int i3) {
        if (i3 < 0) {
            notifyFirst64Locked(t2, i2, a2);
            return;
        }
        long j2 = this.mRemainderRemoved[i3];
        int i4 = (i3 + 1) * 64;
        int iMin = Math.min(this.mCallbacks.size(), i4 + 64);
        notifyRemainderLocked(t2, i2, a2, i3 - 1);
        notifyCallbacksLocked(t2, i2, a2, i4, iMin, j2);
    }

    private void removeRemovedCallbacks(int i2, long j2) {
        long j3 = Long.MIN_VALUE;
        for (int i3 = (i2 + 64) - 1; i3 >= i2; i3--) {
            if ((j2 & j3) != 0) {
                this.mCallbacks.remove(i3);
            }
            j3 >>>= 1;
        }
    }

    private void setRemovalBitLocked(int i2) {
        if (i2 < 64) {
            this.mFirst64Removed = (1 << i2) | this.mFirst64Removed;
            return;
        }
        int i3 = (i2 / 64) - 1;
        long[] jArr = this.mRemainderRemoved;
        if (jArr == null) {
            this.mRemainderRemoved = new long[this.mCallbacks.size() / 64];
        } else if (jArr.length < i3) {
            long[] jArr2 = new long[this.mCallbacks.size() / 64];
            long[] jArr3 = this.mRemainderRemoved;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.mRemainderRemoved = jArr2;
        }
        long j2 = 1 << (i2 % 64);
        long[] jArr4 = this.mRemainderRemoved;
        jArr4[i3] = j2 | jArr4[i3];
    }

    public synchronized void add(C c) {
        int iLastIndexOf = this.mCallbacks.lastIndexOf(c);
        if (iLastIndexOf < 0 || isRemovedLocked(iLastIndexOf)) {
            this.mCallbacks.add(c);
        }
    }

    public synchronized void clear() {
        if (this.mNotificationLevel == 0) {
            this.mCallbacks.clear();
        } else if (!this.mCallbacks.isEmpty()) {
            for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                setRemovalBitLocked(size);
            }
        }
    }

    public synchronized ArrayList<C> copyListeners() {
        ArrayList<C> arrayList;
        arrayList = new ArrayList<>(this.mCallbacks.size());
        int size = this.mCallbacks.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!isRemovedLocked(i2)) {
                arrayList.add(this.mCallbacks.get(i2));
            }
        }
        return arrayList;
    }

    public synchronized boolean isEmpty() {
        if (this.mCallbacks.isEmpty()) {
            return true;
        }
        if (this.mNotificationLevel == 0) {
            return false;
        }
        int size = this.mCallbacks.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!isRemovedLocked(i2)) {
                return false;
            }
        }
        return true;
    }

    public synchronized void notifyCallbacks(T t2, int i2, A a2) {
        this.mNotificationLevel++;
        notifyRecurseLocked(t2, i2, a2);
        int i3 = this.mNotificationLevel - 1;
        this.mNotificationLevel = i3;
        if (i3 == 0) {
            long[] jArr = this.mRemainderRemoved;
            if (jArr != null) {
                for (int length = jArr.length - 1; length >= 0; length--) {
                    long j2 = this.mRemainderRemoved[length];
                    if (j2 != 0) {
                        removeRemovedCallbacks((length + 1) * 64, j2);
                        this.mRemainderRemoved[length] = 0;
                    }
                }
            }
            long j3 = this.mFirst64Removed;
            if (j3 != 0) {
                removeRemovedCallbacks(0, j3);
                this.mFirst64Removed = 0L;
            }
        }
    }

    public synchronized void remove(C c) {
        if (this.mNotificationLevel == 0) {
            this.mCallbacks.remove(c);
        } else {
            int iLastIndexOf = this.mCallbacks.lastIndexOf(c);
            if (iLastIndexOf >= 0) {
                setRemovalBitLocked(iLastIndexOf);
            }
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public synchronized CallbackRegistry<C, T, A> m57clone() {
        CallbackRegistry<C, T, A> callbackRegistry;
        CloneNotSupportedException e2;
        try {
            callbackRegistry = (CallbackRegistry) super.clone();
            try {
                callbackRegistry.mFirst64Removed = 0L;
                callbackRegistry.mRemainderRemoved = null;
                callbackRegistry.mNotificationLevel = 0;
                callbackRegistry.mCallbacks = new ArrayList();
                int size = this.mCallbacks.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (!isRemovedLocked(i2)) {
                        callbackRegistry.mCallbacks.add(this.mCallbacks.get(i2));
                    }
                }
            } catch (CloneNotSupportedException e3) {
                e2 = e3;
                e2.printStackTrace();
            }
        } catch (CloneNotSupportedException e4) {
            callbackRegistry = null;
            e2 = e4;
        }
        return callbackRegistry;
    }
}
