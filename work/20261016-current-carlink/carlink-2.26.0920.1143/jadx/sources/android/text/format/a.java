package android.text.format;

import android.icu.text.DecimalFormat;
import android.icu.text.UnicodeSet;
import android.icu.text.UnicodeSetSpanner;
import android.icu.util.Measure;
import android.icu.util.MeasureUnit;
import android.icu.util.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ void B() {
    }

    public static /* synthetic */ UnicodeSet e() {
        return new UnicodeSet("[[:Zs:][:Cf:]]");
    }

    public static /* synthetic */ UnicodeSetSpanner g(UnicodeSet unicodeSet) {
        return new UnicodeSetSpanner(unicodeSet);
    }

    public static /* synthetic */ Measure h(Float f2, MeasureUnit measureUnit) {
        return new Measure(f2, measureUnit);
    }

    public static /* synthetic */ Measure i(Integer num, TimeUnit timeUnit) {
        return new Measure(num, timeUnit);
    }

    public static /* synthetic */ Measure j(Long l2, TimeUnit timeUnit) {
        return new Measure(l2, timeUnit);
    }

    public static /* synthetic */ void p() {
    }

    public static /* bridge */ /* synthetic */ boolean s(Object obj) {
        return obj instanceof DecimalFormat;
    }

    public static /* synthetic */ void w() {
    }
}
