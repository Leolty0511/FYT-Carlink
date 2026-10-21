.class public abstract Landroid/app/EphemeralResolverService;
.super Landroid/app/InstantAppResolverService;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG_EPHEMERAL:Z

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/app/EphemeralResolverService;->DEBUG_EPHEMERAL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/InstantAppResolverService;-><init>()V

    return-void
.end method


# virtual methods
.method public _onGetInstantAppIntentFilter([ILjava/lang/String;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 1

    .line 1
    sget-boolean p2, Landroid/app/EphemeralResolverService;->DEBUG_EPHEMERAL:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Legacy resolver; getInstantAppIntentFilter; prefix: "

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "PackageManager"

    .line 24
    .line 25
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p3}, Landroid/app/EphemeralResolverService;->onGetEphemeralIntentFilter(Ljava/lang/String;)Landroid/content/pm/EphemeralResolveInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 p3, 0x1

    .line 35
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo;->getInstantAppResolveInfo()Landroid/content/pm/InstantAppResolveInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p2}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public _onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 3

    .line 1
    sget-boolean p2, Landroid/app/EphemeralResolverService;->DEBUG_EPHEMERAL:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Legacy resolver; getInstantAppResolveInfo; prefix: "

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "PackageManager"

    .line 24
    .line 25
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/EphemeralResolverService;->onGetEphemeralResolveInfo([I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    move v0, p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    :goto_1
    if-ge p2, v0, :cond_2

    .line 47
    .line 48
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/content/pm/EphemeralResolveInfo;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/content/pm/EphemeralResolveInfo;->getInstantAppResolveInfo()Landroid/content/pm/InstantAppResolveInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p3, v1}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->onInstantAppResolveInfo(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    invoke-super {p0}, Landroid/app/InstantAppResolverService;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public abstract onEphemeralResolveInfoList([II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onGetEphemeralIntentFilter(Ljava/lang/String;)Landroid/content/pm/EphemeralResolveInfo;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must define"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onGetEphemeralResolveInfo([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    const/16 v0, -0x1000

    invoke-virtual {p0, p1, v0}, Landroid/app/EphemeralResolverService;->onEphemeralResolveInfoList([II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
