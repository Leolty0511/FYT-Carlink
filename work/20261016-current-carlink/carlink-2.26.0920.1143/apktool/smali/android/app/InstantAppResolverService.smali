.class public abstract Landroid/app/InstantAppResolverService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/InstantAppResolverService$ServiceHandler;,
        Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
    }
.end annotation


# static fields
.field private static final DEBUG_EPHEMERAL:Z

.field public static final EXTRA_RESOLVE_INFO:Ljava/lang/String; = "android.app.extra.RESOLVE_INFO"

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "android.app.extra.SEQUENCE"

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_EPHEMERAL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_EPHEMERAL:Z

    return v0
.end method


# virtual methods
.method public _onGetInstantAppIntentFilter([ILjava/lang/String;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-boolean p3, Landroid/app/InstantAppResolverService;->DEBUG_EPHEMERAL:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p3, "["

    .line 6
    .line 7
    const-string v0, "] Phase2 request; prefix: "

    .line 8
    .line 9
    invoke-static {p3, p2, v0}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    const-string v0, "PackageManager"

    .line 25
    .line 26
    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public _onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_EPHEMERAL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "["

    .line 6
    .line 7
    const-string v1, "] Phase1 request; prefix: "

    .line 8
    .line 9
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "PackageManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/app/InstantAppResolverService$ServiceHandler;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, p0, v0}, Landroid/app/InstantAppResolverService$ServiceHandler;-><init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Landroid/app/InstantAppResolverService$1;

    invoke-direct {p1, p0}, Landroid/app/InstantAppResolverService$1;-><init>(Landroid/app/InstantAppResolverService;)V

    return-object p1
.end method

.method public onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must define"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must define"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
