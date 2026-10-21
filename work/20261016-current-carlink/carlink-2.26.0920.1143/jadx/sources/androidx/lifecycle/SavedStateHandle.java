package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;

/* JADX INFO: loaded from: classes2.dex */
public final class SavedStateHandle {
    private static final Class<? extends Object>[] ACCEPTABLE_CLASSES;
    public static final Companion Companion = new Companion(null);
    private static final String KEYS = "keys";
    private static final String VALUES = "values";
    private final Map<String, i0.b> flows;
    private final Map<String, SavingStateLiveData<?>> liveDatas;
    private final Map<String, Object> regular;
    private final SavedStateRegistry.SavedStateProvider savedStateProvider;
    private final Map<String, SavedStateRegistry.SavedStateProvider> savedStateProviders;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.d dVar) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                if (bundle2 == null) {
                    return new SavedStateHandle();
                }
                HashMap map = new HashMap();
                for (String str : bundle2.keySet()) {
                    t.b.g(str, "key");
                    map.put(str, bundle2.get(str));
                }
                return new SavedStateHandle(map);
            }
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(SavedStateHandle.KEYS);
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(SavedStateHandle.VALUES);
            if (!((parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) ? false : true)) {
                throw new IllegalStateException("Invalid bundle passed as restored state".toString());
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = parcelableArrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = parcelableArrayList.get(i2);
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                }
                linkedHashMap.put((String) obj, parcelableArrayList2.get(i2));
            }
            return new SavedStateHandle(linkedHashMap);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean validateValue(Object obj) {
            if (obj == null) {
                return true;
            }
            for (Class cls : SavedStateHandle.ACCEPTABLE_CLASSES) {
                t.b.e(cls);
                if (cls.isInstance(obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        Class<? extends Object>[] clsArr = new Class[29];
        clsArr[0] = Boolean.TYPE;
        clsArr[1] = boolean[].class;
        clsArr[2] = Double.TYPE;
        clsArr[3] = double[].class;
        Class<SizeF> cls = Integer.TYPE;
        clsArr[4] = cls;
        clsArr[5] = int[].class;
        clsArr[6] = Long.TYPE;
        clsArr[7] = long[].class;
        clsArr[8] = String.class;
        clsArr[9] = String[].class;
        clsArr[10] = Binder.class;
        clsArr[11] = Bundle.class;
        clsArr[12] = Byte.TYPE;
        clsArr[13] = byte[].class;
        clsArr[14] = Character.TYPE;
        clsArr[15] = char[].class;
        clsArr[16] = CharSequence.class;
        clsArr[17] = CharSequence[].class;
        clsArr[18] = ArrayList.class;
        clsArr[19] = Float.TYPE;
        clsArr[20] = float[].class;
        clsArr[21] = Parcelable.class;
        clsArr[22] = Parcelable[].class;
        clsArr[23] = Serializable.class;
        clsArr[24] = Short.TYPE;
        clsArr[25] = short[].class;
        clsArr[26] = SparseArray.class;
        int i2 = Build.VERSION.SDK_INT;
        clsArr[27] = i2 >= 21 ? Size.class : cls;
        if (i2 >= 21) {
            cls = SizeF.class;
        }
        clsArr[28] = cls;
        ACCEPTABLE_CLASSES = clsArr;
    }

    public SavedStateHandle(Map<String, ? extends Object> map) {
        t.b.h(map, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.regular = linkedHashMap;
        this.savedStateProviders = new LinkedHashMap();
        this.liveDatas = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.savedStateProvider = new d(this, 0);
        linkedHashMap.putAll(map);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
        return Companion.createHandle(bundle, bundle2);
    }

    private final <T> MutableLiveData<T> getLiveDataInternal(String str, boolean z2, T t2) {
        SavingStateLiveData<?> savingStateLiveData;
        SavingStateLiveData<?> savingStateLiveData2 = this.liveDatas.get(str);
        SavingStateLiveData<?> savingStateLiveData3 = savingStateLiveData2 instanceof MutableLiveData ? savingStateLiveData2 : null;
        if (savingStateLiveData3 != null) {
            return savingStateLiveData3;
        }
        if (this.regular.containsKey(str)) {
            savingStateLiveData = new SavingStateLiveData<>(this, str, this.regular.get(str));
        } else if (z2) {
            this.regular.put(str, t2);
            savingStateLiveData = new SavingStateLiveData<>(this, str, t2);
        } else {
            savingStateLiveData = new SavingStateLiveData<>(this, str);
        }
        this.liveDatas.put(str, savingStateLiveData);
        return savingStateLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: savedStateProvider$lambda-0, reason: not valid java name */
    public static final Bundle m49savedStateProvider$lambda0(SavedStateHandle savedStateHandle) {
        t.b.h(savedStateHandle, "this$0");
        Map<String, SavedStateRegistry.SavedStateProvider> map = savedStateHandle.savedStateProviders;
        t.b.h(map, "<this>");
        int size = map.size();
        Map linkedHashMap = size != 0 ? size != 1 ? new LinkedHashMap(map) : t.b.F(map) : kotlin.collections.a.G();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            savedStateHandle.set((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
        }
        Set<String> setKeySet = savedStateHandle.regular.keySet();
        ArrayList arrayList = new ArrayList(setKeySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : setKeySet) {
            arrayList.add(str);
            arrayList2.add(savedStateHandle.regular.get(str));
        }
        return BundleKt.bundleOf(new Pair(KEYS, arrayList), new Pair(VALUES, arrayList2));
    }

    @MainThread
    public final void clearSavedStateProvider(String str) {
        t.b.h(str, "key");
        this.savedStateProviders.remove(str);
    }

    @MainThread
    public final boolean contains(String str) {
        t.b.h(str, "key");
        return this.regular.containsKey(str);
    }

    @MainThread
    public final <T> T get(String str) {
        t.b.h(str, "key");
        return (T) this.regular.get(str);
    }

    @MainThread
    public final <T> MutableLiveData<T> getLiveData(String str) {
        t.b.h(str, "key");
        return getLiveDataInternal(str, false, null);
    }

    @MainThread
    public final <T> i0.a getStateFlow(String str, T t2) {
        t.b.h(str, "key");
        Map<String, i0.b> map = this.flows;
        i0.b bVar = map.get(str);
        if (bVar == null) {
            if (!this.regular.containsKey(str)) {
                this.regular.put(str, t2);
            }
            Object obj = this.regular.get(str);
            if (obj == null) {
                obj = t.b.f1108b;
            }
            bVar = new i0.b(obj);
            this.flows.put(str, bVar);
            map.put(str, bVar);
        }
        return new e.b();
    }

    @MainThread
    public final Set<String> keys() {
        return t.c.K(t.c.K(this.regular.keySet(), this.savedStateProviders.keySet()), this.liveDatas.keySet());
    }

    @MainThread
    public final <T> T remove(String str) {
        t.b.h(str, "key");
        T t2 = (T) this.regular.remove(str);
        SavingStateLiveData<?> savingStateLiveDataRemove = this.liveDatas.remove(str);
        if (savingStateLiveDataRemove != null) {
            savingStateLiveDataRemove.detach();
        }
        this.flows.remove(str);
        return t2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.savedStateProvider;
    }

    @MainThread
    public final <T> void set(String str, T t2) {
        t.b.h(str, "key");
        if (!Companion.validateValue(t2)) {
            StringBuilder sb = new StringBuilder("Can't put value with type ");
            t.b.e(t2);
            sb.append(t2.getClass());
            sb.append(" into saved state");
            throw new IllegalArgumentException(sb.toString());
        }
        SavingStateLiveData<?> savingStateLiveData = this.liveDatas.get(str);
        SavingStateLiveData<?> savingStateLiveData2 = savingStateLiveData instanceof MutableLiveData ? savingStateLiveData : null;
        if (savingStateLiveData2 != null) {
            savingStateLiveData2.setValue(t2);
        } else {
            this.regular.put(str, t2);
        }
        i0.b bVar = this.flows.get(str);
        if (bVar == null) {
            return;
        }
        bVar.a(t2);
    }

    @MainThread
    public final void setSavedStateProvider(String str, SavedStateRegistry.SavedStateProvider savedStateProvider) {
        t.b.h(str, "key");
        t.b.h(savedStateProvider, "provider");
        this.savedStateProviders.put(str, savedStateProvider);
    }

    @MainThread
    public final <T> MutableLiveData<T> getLiveData(String str, T t2) {
        t.b.h(str, "key");
        return getLiveDataInternal(str, true, t2);
    }

    public static final class SavingStateLiveData<T> extends MutableLiveData<T> {
        private SavedStateHandle handle;
        private String key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavingStateLiveData(SavedStateHandle savedStateHandle, String str, T t2) {
            super(t2);
            t.b.h(str, "key");
            this.key = str;
            this.handle = savedStateHandle;
        }

        public final void detach() {
            this.handle = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T t2) {
            SavedStateHandle savedStateHandle = this.handle;
            if (savedStateHandle != null) {
                savedStateHandle.regular.put(this.key, t2);
                i0.b bVar = (i0.b) savedStateHandle.flows.get(this.key);
                if (bVar != null) {
                    bVar.a(t2);
                }
            }
            super.setValue(t2);
        }

        public SavingStateLiveData(SavedStateHandle savedStateHandle, String str) {
            t.b.h(str, "key");
            this.key = str;
            this.handle = savedStateHandle;
        }
    }

    public SavedStateHandle() {
        this.regular = new LinkedHashMap();
        this.savedStateProviders = new LinkedHashMap();
        this.liveDatas = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.savedStateProvider = new d(this, 1);
    }
}
