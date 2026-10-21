.class public final Lcom/syu/carlink/CarLink;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# static fields
.field public static i:Lcom/syu/carlink/CarLink;


# instance fields
.field public final b:Ls/a;

.field public final c:Ls/a;

.field public d:Z

.field public e:Z

.field public final f:Ls/a;

.field public final g:Ls/a;

.field public h:Lp/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/syu/carlink/CarLink$appModelStore$2;->INSTANCE:Lcom/syu/carlink/CarLink$appModelStore$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/syu/carlink/CarLink;->b:Ls/a;

    .line 11
    .line 12
    new-instance v0, Lcom/syu/carlink/CarLink$appModel$2;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/syu/carlink/CarLink$appModel$2;-><init>(Lcom/syu/carlink/CarLink;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/syu/carlink/CarLink;->c:Ls/a;

    .line 22
    .line 23
    sget-object v0, Lcom/syu/carlink/CarLink$systemDecodeOs$2;->INSTANCE:Lcom/syu/carlink/CarLink$systemDecodeOs$2;

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/syu/carlink/CarLink;->f:Ls/a;

    .line 30
    .line 31
    new-instance v0, Lcom/syu/carlink/CarLink$defSurfaceCodec$2;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/syu/carlink/CarLink$defSurfaceCodec$2;-><init>(Lcom/syu/carlink/CarLink;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/syu/carlink/CarLink;->g:Ls/a;

    .line 41
    .line 42
    return-void
.end method

.method public static F()Z
    .locals 2

    .line 1
    const-string v0, "ro.board.platform"

    .line 2
    .line 3
    invoke-static {v0}, Lt/b;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "8830"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/syu/carlink/CarLink;->m()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "persist.lsec.cp.nomix"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v1, v0}, Lt/b;->p(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 31
    :cond_1
    return v1
.end method

.method public static G()Z
    .locals 3

    .line 1
    const-string v0, "ro.board.platform"

    .line 2
    .line 3
    invoke-static {v0}, Lt/b;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ro.fyt.platform"

    .line 8
    .line 9
    invoke-static {v1}, Lt/b;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "7731"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v2, "815"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :cond_0
    const-string v1, "8830"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method

.method public static H()Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, Ljava/lang/String;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v3}, Lt/b;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput-object v3, v1, v4

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v3, "sys.fyt.carplay"

    .line 20
    .line 21
    aput-object v3, v0, v2

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    aput-object v3, v0, v4

    .line 28
    .line 29
    const-string v3, "getInt"

    .line 30
    .line 31
    const-string v5, "android.os.SystemProperties"

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static {v5, v6, v3, v1, v0}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v2

    .line 48
    :goto_0
    if-ne v0, v4, :cond_1

    .line 49
    .line 50
    move v2, v4

    .line 51
    :cond_1
    return v2
.end method

.method public static I()Z
    .locals 4

    .line 1
    const-string v0, "ro.board.platform"

    .line 2
    .line 3
    invoke-static {v0}, Lt/b;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const-string v0, "ro.fyt.platform"

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v3

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :cond_1
    move v3, v2

    .line 30
    :cond_2
    if-eqz v3, :cond_3

    .line 31
    .line 32
    const-string v0, "sys.fyt.platform"

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    :cond_3
    const-string v0, "com.syu.carlink.wireless"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lt/b;->o(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    return v0
.end method

.method public static i()Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "ro.fyt.platform"

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, ""

    .line 11
    .line 12
    aput-object v3, v0, v2

    .line 13
    .line 14
    const-string v3, "get"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const-string v5, "android.os.SystemProperties"

    .line 18
    .line 19
    invoke-static {v5, v4, v3, v0}, Lp/a;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v3, "invoke(\"android.os.Syste\u2026erties\", \"get\", key, def)"

    .line 24
    .line 25
    invoke-static {v0, v3}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {}, Lcom/syu/carlink/CarLink;->G()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    const-string v3, "6312"

    .line 37
    .line 38
    invoke-static {v3, v0}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :cond_0
    move v1, v2

    .line 45
    :cond_1
    return v1
.end method

.method public static m()Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, Ljava/lang/String;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v3}, Lt/b;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput-object v3, v1, v4

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v3, "persist.lsec.cp.audiooff"

    .line 20
    .line 21
    aput-object v3, v0, v2

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    aput-object v3, v0, v4

    .line 28
    .line 29
    const-string v3, "getInt"

    .line 30
    .line 31
    const-string v5, "android.os.SystemProperties"

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static {v5, v6, v3, v1, v0}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v2

    .line 48
    :goto_0
    if-ne v0, v4, :cond_1

    .line 49
    .line 50
    move v2, v4

    .line 51
    :cond_1
    return v2
.end method

.method public static w()Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, Ljava/lang/String;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v3}, Lt/b;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput-object v3, v1, v4

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v3, "sys.carlink.show_carplay_msg"

    .line 20
    .line 21
    aput-object v3, v0, v2

    .line 22
    .line 23
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    aput-object v3, v0, v4

    .line 26
    .line 27
    const-string v3, "getBoolean"

    .line 28
    .line 29
    const-string v4, "android.os.SystemProperties"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static {v4, v5, v3, v1, v0}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    :cond_0
    return v2
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->z:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final B()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final C()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->k:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->j:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public final J()Z
    .locals 3

    .line 1
    const-string v0, "com.zjinnova.zlink"

    .line 2
    .line 3
    const-string v1, "com.syu.hicar"

    .line 4
    .line 5
    const-string v2, "net.easyconn"

    .line 6
    .line 7
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lg/b;->q:Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    :cond_0
    invoke-static {v0, v1}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public final a()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->h:Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->m:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->n:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final d()Z
    .locals 3

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->C()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->B()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->C()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->B()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Lcom/syu/carlink/CarLinkService;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->G:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/syu/carlink/CarLinkService;

    .line 12
    .line 13
    return-object v0
.end method

.method public final g()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->J:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lg/b;->J:Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 47
    :cond_3
    :goto_2
    return v1
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/CarLink;->b:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->a:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final j()Lg/b;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/CarLink;->c:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/b;

    return-object v0
.end method

.method public final k()Lp/b;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/CarLink;->h:Lp/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sharedUtils"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/b;->b()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->i:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->v:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 5
    .line 6
    sget-object v0, Ln/a;->f:Ln/a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ln/a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ln/a;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ln/a;->f:Ln/a;

    .line 16
    .line 17
    :cond_0
    sget v0, Le/m;->a:I

    .line 18
    .line 19
    const-string v1, "syu.carlink.fps_def"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lt/b;->p(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sput v0, Le/m;->a:I

    .line 26
    .line 27
    new-instance v0, Lp/b;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lp/b;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/syu/carlink/CarLink;->h:Lp/b;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lg/b;->E:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->k()Lp/b;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "sys.carlink.canvas_size"

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static {v3, v2}, Lt/b;->p(ILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object v1, v1, Lp/b;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Landroid/content/SharedPreferences;

    .line 54
    .line 55
    const-string v4, "resolution"

    .line 56
    .line 57
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v0, v0, Lg/b;->E:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    new-instance v1, Lcom/syu/carlink/CarLink$onCreate$1;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/syu/carlink/CarLink$onCreate$1;-><init>(Lcom/syu/carlink/CarLink;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Le/a;

    .line 80
    .line 81
    invoke-direct {v2, v1, v3}, Le/a;-><init>(Lz/l;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Lg/b;->F:Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->k()Lp/b;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "sys.carlink.sdz_support"

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    invoke-static {v2, v4}, Lt/b;->o(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget-object v1, v1, Lp/b;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Landroid/content/SharedPreferences;

    .line 107
    .line 108
    const-string v5, "smart_display_zoom_support"

    .line 109
    .line 110
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v0, v0, Lg/b;->F:Landroidx/lifecycle/MutableLiveData;

    .line 126
    .line 127
    new-instance v1, Lcom/syu/carlink/CarLink$onCreate$2;

    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/syu/carlink/CarLink$onCreate$2;-><init>(Lcom/syu/carlink/CarLink;)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Le/a;

    .line 133
    .line 134
    invoke-direct {v2, v1, v4}, Le/a;-><init>(Lz/l;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 138
    .line 139
    .line 140
    sput-boolean v4, Ln/b;->b:Z

    .line 141
    .line 142
    const/4 v0, 0x6

    .line 143
    sput v0, Ln/b;->c:I

    .line 144
    .line 145
    const-string v0, "HDL"

    .line 146
    .line 147
    const-string v1, "Usb"

    .line 148
    .line 149
    const-string v2, "BluetoothUtils"

    .line 150
    .line 151
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    move v2, v3

    .line 156
    :goto_0
    const/4 v5, 0x3

    .line 157
    if-ge v2, v5, :cond_3

    .line 158
    .line 159
    aget-object v5, v1, v2

    .line 160
    .line 161
    sget-object v6, Ln/b;->a:Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Ljava/lang/Boolean;

    .line 168
    .line 169
    if-eqz v7, :cond_1

    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-nez v7, :cond_2

    .line 176
    .line 177
    :cond_1
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_3
    sget-object v1, Lf/k;->y:Lf/k;

    .line 186
    .line 187
    if-nez v1, :cond_4

    .line 188
    .line 189
    new-instance v1, Lf/k;

    .line 190
    .line 191
    invoke-direct {v1, p0}, Lf/k;-><init>(Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    sput-object v1, Lf/k;->y:Lf/k;

    .line 195
    .line 196
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 197
    .line 198
    const-class v2, Lcom/syu/carlink/CarLinkService;

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    .line 216
    .line 217
    sget-object v1, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    const-string v5, "context.applicationContext"

    .line 227
    .line 228
    invoke-static {v2, v5}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iput-object v2, v1, Lcom/syu/carlink/UsbScanner;->b:Landroid/content/Context;

    .line 232
    .line 233
    new-instance v2, Landroid/os/HandlerThread;

    .line 234
    .line 235
    const-string v5, "usb-handler"

    .line 236
    .line 237
    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 241
    .line 242
    .line 243
    new-instance v5, Landroid/os/Handler;

    .line 244
    .line 245
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    .line 251
    .line 252
    iput-object v5, v1, Lcom/syu/carlink/UsbScanner;->c:Landroid/os/Handler;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/syu/carlink/UsbScanner;->b()Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    const-string v5, "usb"

    .line 259
    .line 260
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    const-string v5, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    .line 265
    .line 266
    invoke-static {v2, v5}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 270
    .line 271
    iput-object v2, v1, Lcom/syu/carlink/UsbScanner;->a:Landroid/hardware/usb/UsbManager;

    .line 272
    .line 273
    invoke-static {}, Lcom/syu/carlink/CarLink;->i()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    const/4 v2, 0x2

    .line 278
    new-array v5, v2, [Ljava/lang/Class;

    .line 279
    .line 280
    const-class v6, Ljava/lang/String;

    .line 281
    .line 282
    aput-object v6, v5, v3

    .line 283
    .line 284
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 285
    .line 286
    invoke-static {v6}, Lt/b;->e(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    aput-object v6, v5, v4

    .line 290
    .line 291
    new-array v2, v2, [Ljava/lang/Object;

    .line 292
    .line 293
    const-string v6, "persist.lsec.carlink.apband"

    .line 294
    .line 295
    aput-object v6, v2, v3

    .line 296
    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    aput-object v6, v2, v4

    .line 302
    .line 303
    const-string v6, "android.os.SystemProperties"

    .line 304
    .line 305
    const-string v7, "getInt"

    .line 306
    .line 307
    const/4 v8, 0x0

    .line 308
    invoke-static {v6, v8, v7, v5, v2}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Ljava/lang/Integer;

    .line 313
    .line 314
    if-eqz v2, :cond_5

    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    :cond_5
    if-nez v1, :cond_6

    .line 321
    .line 322
    move v3, v4

    .line 323
    :cond_6
    sget-object v1, Lf/k;->y:Lf/k;

    .line 324
    .line 325
    iget-object v1, v1, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 326
    .line 327
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    const-string v3, "wifi_baud_5G"

    .line 332
    .line 333
    invoke-virtual {v1, v3, v2}, Lcom/google/android/projection/sink/settings/Settings;->writeKeyValue(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 334
    .line 335
    .line 336
    const-string v1, "offWifi() ===== true"

    .line 337
    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    return-void
.end method

.method public final p()Z
    .locals 1

    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/b;->c()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->b:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    move v1, v2

    .line 28
    :goto_1
    return v1
.end method

.method public final s()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->r:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public final t()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->A:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final u()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->h:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final v()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->c:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final x()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->g:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final y()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->C:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final z()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg/b;->D:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method
