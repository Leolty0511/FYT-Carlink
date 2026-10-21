.class public abstract Lcom/android/internal/view/f$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/f$a$a;
    }
.end annotation


# direct methods
.method public static J2(Landroid/os/IBinder;)Lcom/android/internal/view/f;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/android/internal/view/f;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/android/internal/view/f;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/android/internal/view/f$a$a;

    invoke-direct {v0, p0}, Lcom/android/internal/view/f$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
