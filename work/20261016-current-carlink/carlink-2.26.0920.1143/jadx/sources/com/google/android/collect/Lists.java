package com.google.android.collect;

import android.app.m;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public class Lists {
    public static <E> ArrayList<E> newArrayList() {
        return new ArrayList<>();
    }

    public static <E> ArrayList<E> newArrayList(E... eArr) {
        ArrayList<E> arrayList = new ArrayList<>(m.z(eArr.length, 110, 100, 5));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }
}
