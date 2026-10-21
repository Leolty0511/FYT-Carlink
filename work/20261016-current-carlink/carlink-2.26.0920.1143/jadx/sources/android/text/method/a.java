package android.text.method;

import android.app.Person;
import android.os.Parcelable;
import android.text.PrecomputedText;
import android.text.Spannable;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ Person.Builder b() {
        return new Person.Builder();
    }

    public static /* bridge */ /* synthetic */ Person h(Parcelable parcelable) {
        return (Person) parcelable;
    }

    public static /* bridge */ /* synthetic */ Person i(Object obj) {
        return (Person) obj;
    }

    public static /* bridge */ /* synthetic */ PrecomputedText m(Spannable spannable) {
        return (PrecomputedText) spannable;
    }

    public static /* synthetic */ void q() {
    }

    public static /* bridge */ /* synthetic */ boolean u(Spannable spannable) {
        return spannable instanceof PrecomputedText;
    }
}
