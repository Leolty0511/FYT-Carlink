package com.android.framework.protobuf.nano.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public final class ParcelableMessageNanoCreator<T extends MessageNano> implements Parcelable.Creator<T> {
    private static final String TAG = "PMNCreator";
    private final Class<T> mClazz;

    public ParcelableMessageNanoCreator(Class<T> cls) {
        this.mClazz = cls;
    }

    public static <T extends MessageNano> void writeToParcel(Class<T> cls, MessageNano messageNano, Parcel parcel) {
        parcel.writeString(cls.getName());
        parcel.writeByteArray(MessageNano.toByteArray(messageNano));
    }

    @Override // android.os.Parcelable.Creator
    public T createFromParcel(Parcel parcel) {
        String string = parcel.readString();
        byte[] bArrCreateByteArray = parcel.createByteArray();
        T t2 = null;
        try {
            T t3 = (T) Class.forName(string, false, ParcelableMessageNanoCreator.class.getClassLoader()).asSubclass(MessageNano.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            try {
                MessageNano.mergeFrom(t3, bArrCreateByteArray);
                return t3;
            } catch (InvalidProtocolBufferNanoException e2) {
                e = e2;
                t2 = t3;
                Log.e(TAG, "Exception trying to create proto from parcel", e);
                return t2;
            } catch (ClassNotFoundException e3) {
                e = e3;
                t2 = t3;
                Log.e(TAG, "Exception trying to create proto from parcel", e);
                return t2;
            } catch (IllegalAccessException e4) {
                e = e4;
                t2 = t3;
                Log.e(TAG, "Exception trying to create proto from parcel", e);
                return t2;
            } catch (InstantiationException e5) {
                e = e5;
                t2 = t3;
                Log.e(TAG, "Exception trying to create proto from parcel", e);
                return t2;
            } catch (NoSuchMethodException e6) {
                e = e6;
                t2 = t3;
                Log.e(TAG, "Exception trying to create proto from parcel", e);
                return t2;
            } catch (InvocationTargetException e7) {
                e = e7;
                t2 = t3;
                Log.e(TAG, "Exception trying to create proto from parcel", e);
                return t2;
            }
        } catch (InvalidProtocolBufferNanoException e8) {
            e = e8;
        } catch (ClassNotFoundException e9) {
            e = e9;
        } catch (IllegalAccessException e10) {
            e = e10;
        } catch (InstantiationException e11) {
            e = e11;
        } catch (NoSuchMethodException e12) {
            e = e12;
        } catch (InvocationTargetException e13) {
            e = e13;
        }
    }

    @Override // android.os.Parcelable.Creator
    public T[] newArray(int i2) {
        return (T[]) ((MessageNano[]) Array.newInstance((Class<?>) this.mClazz, i2));
    }
}
