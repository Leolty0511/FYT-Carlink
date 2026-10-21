package android.content.pm;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseParceledListSlice<T> implements Parcelable {
    private static boolean DEBUG = false;
    private static final int MAX_IPC_SIZE = 65536;
    private static String TAG = "ParceledListSlice";
    private int mInlineCountLimit = Integer.MAX_VALUE;
    private final List<T> mList;

    public BaseParceledListSlice(List<T> list) {
        this.mList = list;
    }

    private T readCreator(Parcelable.Creator<?> creator, Parcel parcel, ClassLoader classLoader) {
        return creator instanceof Parcelable.ClassLoaderCreator ? (T) ((Parcelable.ClassLoaderCreator) creator).createFromParcel(parcel, classLoader) : (T) creator.createFromParcel(parcel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void verifySameType(Class<?> cls, Class<?> cls2) {
        if (cls2.equals(cls)) {
            return;
        }
        throw new IllegalArgumentException("Can't unparcel type " + cls2.getName() + " in list of type " + cls.getName());
    }

    public List<T> getList() {
        return this.mList;
    }

    public abstract Parcelable.Creator<?> readParcelableCreator(Parcel parcel, ClassLoader classLoader);

    public void setInlineCountLimit(int i2) {
        this.mInlineCountLimit = i2;
    }

    public abstract void writeElement(T t2, Parcel parcel, int i2);

    public abstract void writeParcelableCreator(T t2, Parcel parcel);

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, final int i2) {
        final int size = this.mList.size();
        parcel.writeInt(size);
        if (DEBUG) {
            Log.d(TAG, "Writing " + size + " items");
        }
        if (size > 0) {
            final Class<?> cls = this.mList.get(0).getClass();
            writeParcelableCreator(this.mList.get(0), parcel);
            int i3 = 0;
            while (i3 < size && i3 < this.mInlineCountLimit && parcel.dataSize() < 65536) {
                parcel.writeInt(1);
                T t2 = this.mList.get(i3);
                verifySameType(cls, t2.getClass());
                writeElement(t2, parcel, i2);
                if (DEBUG) {
                    String str = TAG;
                    StringBuilder sbS = c.s("Wrote inline #", i3, ": ");
                    sbS.append(this.mList.get(i3));
                    Log.d(str, sbS.toString());
                }
                i3++;
            }
            if (i3 < size) {
                parcel.writeInt(0);
                Binder binder = new Binder() { // from class: android.content.pm.BaseParceledListSlice.1
                    /* JADX WARN: Multi-variable type inference failed */
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
                    @Override // android.os.Binder
                    public boolean onTransact(int i4, Parcel parcel2, Parcel parcel3, int i5) {
                        if (i4 != 1) {
                            return super.onTransact(i4, parcel2, parcel3, i5);
                        }
                        int i6 = parcel2.readInt();
                        if (BaseParceledListSlice.DEBUG) {
                            m.t(c.s("Writing more @", i6, " of "), size, BaseParceledListSlice.TAG);
                        }
                        while (i6 < size && parcel3.dataSize() < 65536) {
                            parcel3.writeInt(1);
                            Object obj = BaseParceledListSlice.this.mList.get(i6);
                            BaseParceledListSlice.verifySameType(cls, obj.getClass());
                            BaseParceledListSlice.this.writeElement(obj, parcel3, i2);
                            if (BaseParceledListSlice.DEBUG) {
                                String str2 = BaseParceledListSlice.TAG;
                                StringBuilder sbS2 = c.s("Wrote extra #", i6, ": ");
                                sbS2.append(BaseParceledListSlice.this.mList.get(i6));
                                Log.d(str2, sbS2.toString());
                            }
                            i6++;
                        }
                        if (i6 < size) {
                            if (BaseParceledListSlice.DEBUG) {
                                m.t(c.s("Breaking @", i6, " of "), size, BaseParceledListSlice.TAG);
                            }
                            parcel3.writeInt(0);
                        }
                        return true;
                    }
                };
                if (DEBUG) {
                    String str2 = TAG;
                    StringBuilder sbT = c.t("Breaking @", i3, " of ", size, ": retriever=");
                    sbT.append(binder);
                    Log.d(str2, sbT.toString());
                }
                parcel.writeStrongBinder(binder);
            }
        }
    }

    public BaseParceledListSlice(Parcel parcel, ClassLoader classLoader) {
        int i2 = parcel.readInt();
        this.mList = new ArrayList(i2);
        if (DEBUG) {
            Log.d(TAG, "Retrieving " + i2 + " items");
        }
        if (i2 <= 0) {
            return;
        }
        Parcelable.Creator<?> parcelableCreator = readParcelableCreator(parcel, classLoader);
        Class<?> cls = null;
        int i3 = 0;
        while (i3 < i2 && parcel.readInt() != 0) {
            T creator = readCreator(parcelableCreator, parcel, classLoader);
            if (cls == null) {
                cls = creator.getClass();
            } else {
                verifySameType(cls, creator.getClass());
            }
            this.mList.add(creator);
            if (DEBUG) {
                String str = TAG;
                StringBuilder sbS = c.s("Read inline #", i3, ": ");
                List<T> list = this.mList;
                sbS.append(list.get(list.size() - 1));
                Log.d(str, sbS.toString());
            }
            i3++;
        }
        if (i3 >= i2) {
            return;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        while (i3 < i2) {
            if (DEBUG) {
                String str2 = TAG;
                StringBuilder sbT = c.t("Reading more @", i3, " of ", i2, ": retriever=");
                sbT.append(strongBinder);
                Log.d(str2, sbT.toString());
            }
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            parcelObtain.writeInt(i3);
            try {
                strongBinder.transact(1, parcelObtain, parcelObtain2, 0);
                while (i3 < i2 && parcelObtain2.readInt() != 0) {
                    T creator2 = readCreator(parcelableCreator, parcelObtain2, classLoader);
                    verifySameType(cls, creator2.getClass());
                    this.mList.add(creator2);
                    if (DEBUG) {
                        String str3 = TAG;
                        StringBuilder sbS2 = c.s("Read extra #", i3, ": ");
                        List<T> list2 = this.mList;
                        sbS2.append(list2.get(list2.size() - 1));
                        Log.d(str3, sbS2.toString());
                    }
                    i3++;
                }
                parcelObtain2.recycle();
                parcelObtain.recycle();
            } catch (RemoteException e2) {
                Log.w(TAG, m.e("Failure retrieving array; only received ", i3, " of ", i2), e2);
                return;
            }
        }
    }
}
