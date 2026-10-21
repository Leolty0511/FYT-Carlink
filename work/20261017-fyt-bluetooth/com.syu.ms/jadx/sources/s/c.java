package s;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.textservice.SentenceSuggestionsInfo;
import android.view.textservice.SuggestionsInfo;

/* JADX INFO: loaded from: classes.dex */
public interface c extends IInterface {

    public static abstract class a extends Binder implements c {
        private static final String DESCRIPTOR = "com.android.internal.textservice.ISpellCheckerSessionListener";
        public static final int TRANSACTION_onGetSentenceSuggestions = 2;
        public static final int TRANSACTION_onGetSuggestions = 1;

        /* JADX INFO: renamed from: s.c$a$a, reason: collision with other inner class name */
        public static class C0107a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17163a;

            public C0107a(IBinder iBinder) {
                this.f17163a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f17163a;
            }

            @Override // s.c
            public void onGetSentenceSuggestions(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeTypedArray(sentenceSuggestionsInfoArr, 0);
                    this.f17163a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // s.c
            public void onGetSuggestions(SuggestionsInfo[] suggestionsInfoArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeTypedArray(suggestionsInfoArr, 0);
                    this.f17163a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static c asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0107a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onGetSuggestions((SuggestionsInfo[]) parcel.createTypedArray(SuggestionsInfo.CREATOR));
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onGetSentenceSuggestions((SentenceSuggestionsInfo[]) parcel.createTypedArray(SentenceSuggestionsInfo.CREATOR));
                return true;
            }
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onGetSentenceSuggestions(SentenceSuggestionsInfo[] sentenceSuggestionsInfoArr);

    void onGetSuggestions(SuggestionsInfo[] suggestionsInfoArr);
}
