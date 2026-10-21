.class public abstract Lk/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lk/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b$a$a;
    }
.end annotation


# direct methods
.method public static J2(Landroid/os/IBinder;)Lk/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lk/b;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lk/b;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lk/b$a$a;

    invoke-direct {v0, p0}, Lk/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
