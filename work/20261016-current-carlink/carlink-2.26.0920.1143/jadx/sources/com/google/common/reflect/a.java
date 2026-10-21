package com.google.common.reflect;

import com.google.common.base.Predicate;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f521b;

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        switch (this.f521b) {
            case 0:
                return ((ClassPath.ClassInfo) obj).isTopLevel();
            default:
                return ((Class) obj).isInterface();
        }
    }

    @Override // com.google.common.base.Predicate, java.util.function.Predicate
    public final /* synthetic */ boolean test(Object obj) {
        switch (this.f521b) {
            case 0:
                break;
            default:
                break;
        }
        return com.google.common.base.b.a(this, obj);
    }
}
