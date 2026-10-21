.class public Lm1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/util/SparseIntArray;

.field public static b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lm1/c;->a:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lm1/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lm1/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static c(II)I
    .locals 1

    .line 1
    sget-object v0, Lm1/a;->f:Lo1/g0;

    invoke-virtual {v0, p0, p1}, Lo1/g0;->b(II)I

    move-result p0

    return p0
.end method

.method public static d(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lm1/a;->f:Lo1/g0;

    invoke-virtual {v0, p0, p1}, Lo1/g0;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(II)I
    .locals 1

    .line 1
    sget-object v0, Lm1/a;->f:Lo1/g0;

    invoke-virtual {v0, p0, p1}, Lo1/g0;->e(II)V

    return p1
.end method

.method public static f(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lm1/a;->f:Lo1/g0;

    invoke-virtual {v0, p0, p1}, Lo1/g0;->f(ILjava/lang/String;)V

    return-void
.end method

.method public static g(II)V
    .locals 1

    .line 1
    sget-object v0, Lm1/a;->f:Lo1/g0;

    invoke-virtual {v0, p0, p1}, Lo1/g0;->g(II)V

    return-void
.end method

.method public static h(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lm1/a;->f:Lo1/g0;

    invoke-virtual {v0, p0, p1}, Lo1/g0;->h(ILjava/lang/String;)V

    return-void
.end method

.method public static i(I)V
    .locals 2

    .line 1
    sget-object v0, Lm1/c;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static j(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x24

    if-ge v1, v2, :cond_0

    .line 1
    sget-object v2, Ly0/f;->d0:[I

    add-int/lit8 v3, v1, 0xa

    sget-object v4, Ly0/f;->e0:[I

    aget v4, v4, v1

    invoke-static {v3, v4}, Lm1/c;->c(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 2
    sget-object v3, Ly0/f;->h0:[I

    add-int/lit8 v4, v1, 0x2e

    sget-object v5, Ly0/f;->i0:[I

    aget v5, v5, v1

    invoke-static {v4, v5}, Lm1/c;->c(II)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 3
    sget-object v3, Ly0/f;->k0:[I

    add-int/lit16 v4, v1, 0xe6

    sget-object v5, Ly0/f;->l0:[I

    aget v5, v5, v1

    invoke-static {v4, v5}, Lm1/c;->c(II)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-nez p0, :cond_5

    move p0, v0

    :goto_3
    if-ge p0, v2, :cond_3

    add-int/lit8 v1, p0, 0xa

    .line 4
    sget-object v3, Ly0/f;->d0:[I

    aget v3, v3, p0

    invoke-static {v1, v3}, Lm1/c;->e(II)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    move p0, v0

    :goto_4
    if-ge p0, v2, :cond_4

    add-int/lit8 v1, p0, 0x2e

    .line 5
    sget-object v3, Ly0/f;->h0:[I

    aget v3, v3, p0

    invoke-static {v1, v3}, Lm1/c;->e(II)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v0, v2, :cond_5

    add-int/lit16 p0, v0, 0xe6

    .line 6
    sget-object v1, Ly0/f;->k0:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lm1/c;->e(II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7
    :cond_5
    invoke-static {}, Ly0/h;->J()V

    return-void
.end method

.method public static k(I)Z
    .locals 2

    .line 1
    sget-object v0, Lm1/c;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static l(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x22

    if-ge v1, v2, :cond_0

    .line 1
    sget-object v2, Le/d;->a:[I

    add-int/lit16 v3, v1, 0x153

    sget-object v4, Le/d;->b:[I

    aget v4, v4, v1

    invoke-static {v3, v4}, Lm1/c;->c(II)I

    move-result v3

    aput v3, v2, v1

    const/16 v3, 0x40

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v0

    .line 2
    aget v2, v2, v1

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-static {v3, v4}, Lu0/d;->I3(I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    :goto_1
    if-ge v0, v2, :cond_1

    add-int/lit16 p0, v0, 0x153

    .line 3
    sget-object v1, Le/d;->a:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lm1/c;->e(II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static m()V
    .locals 3

    .line 1
    new-instance v0, Lo1/g0;

    const-string v1, "app_store"

    const/16 v2, 0x5dc

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm1/a;->f:Lo1/g0;

    .line 2
    invoke-virtual {v0}, Lo1/g0;->a()V

    return-void
.end method

.method public static n()V
    .locals 3

    const-string v0, "bootA"

    const-string v1, "============================>>> 000000"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.app_id"

    const/4 v1, -0x1

    .line 2
    invoke-static {v0, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    sget-object v1, Lu0/b;->M2:Lo1/w;

    invoke-virtual {v1, v0}, Lo1/w;->d(I)V

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "compile"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm1/c;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    sget-object v0, Lm1/c;->b:Ljava/lang/String;

    const-string v1, "0"

    if-nez v0, :cond_1

    .line 10
    sput-object v1, Lm1/c;->b:Ljava/lang/String;

    .line 11
    :cond_1
    sget-object v0, Lm1/c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 12
    sput-object v0, Lm1/c;->b:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x1

    .line 13
    invoke-static {v0}, Lm1/c;->j(Z)V

    .line 14
    invoke-static {v0}, Lm1/c;->r(Z)V

    .line 15
    invoke-static {v0}, Lm1/c;->q(Z)V

    .line 16
    invoke-static {v0}, Lm1/c;->l(Z)V

    .line 17
    invoke-static {v0}, Lm1/c;->p(Z)V

    .line 18
    sget-object v0, Lu0/b;->M2:Lo1/w;

    const/4 v1, 0x2

    invoke-static {v1, v2}, Lm1/c;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lo1/w;->d(I)V

    .line 19
    new-instance v0, Lm1/c$a;

    invoke-direct {v0}, Lm1/c$a;-><init>()V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static o(II)V
    .locals 4

    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lm1/a;->b:[I

    aget v1, v0, p0

    if-eq v1, p1, :cond_0

    .line 2
    aput p1, v0, p0

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    const/4 v1, 0x5

    and-int/lit16 p0, p0, 0xff

    aput p0, v0, v1

    const/4 p0, 0x6

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, p0

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method

.method public static p(Z)V
    .locals 9

    const-string v0, ""

    const/16 v1, 0x181

    :try_start_0
    const-string v2, "sys.syu.reserving_service_pkg"

    const-string v3, "com.syu.us"

    .line 1
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x182

    const-string v3, "sys.syu.reserving_service_action"

    .line 2
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Lu0/d;->F0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    const/16 v2, 0x183

    const-string v3, "sys.syu.third_dvr"

    .line 5
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu0/i;->f4(Ljava/lang/String;)V

    const/16 v2, 0xdf

    const-string v3, "ro.build.remember_type"

    const/4 v4, 0x1

    .line 6
    invoke-static {v3, v4}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lm1/c;->c(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lu0/i;->o4(I)V

    const/16 v1, 0x82

    .line 7
    sget-object v2, Lu0/b;->K1:Ljava/lang/String;

    const-string v3, "ro.fyt.navi_package"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu0/d;->k2(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/16 p0, 0x83

    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v1}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo0/g;->j(Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0x84

    .line 9
    sget v1, Lu0/b;->s:I

    const-string v2, "ro.fyt.backcar_mirror"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->D(I)V

    const/16 p0, 0x85

    .line 10
    sget v1, Lu0/b;->B:I

    const-string v2, "ro.fyt.navi_onboot"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->i2(I)V

    const/16 p0, 0x86

    .line 11
    sget v1, Ly0/f;->Q:I

    const-string v2, "ro.fyt.navi_mix"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->c0(I)V

    const/16 p0, 0x87

    .line 12
    sget v1, Ly0/f;->N:I

    const-string v2, "ro.fyt.nonavi_mix"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->d0(I)V

    const/16 p0, 0x88

    .line 13
    sget v1, Lk0/nt;->X:I

    const-string v2, "ro.fyt.driver_onright"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lk0/qt;->O(I)V

    const/16 p0, 0x89

    .line 14
    sget v1, Lk0/nt;->V:I

    const-string v2, "ro.fyt.air_window"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lk0/qt;->C(I)V

    const/16 p0, 0x8a

    .line 15
    sget v1, Lu0/b;->T2:I

    const-string v2, "ro.fyt.bright_level_day"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->R(I)V

    const/16 p0, 0x8b

    .line 16
    sget v1, Lu0/b;->U2:I

    const-string v2, "ro.fyt.bright_level_night"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->T(I)V

    const/16 p0, 0x8c

    .line 17
    sget v1, Lu0/b;->S:I

    const-string v2, "ro.fyt.auto_blackscreen"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->x(I)V

    const/16 p0, 0x8d

    .line 18
    sget v1, Lh0/c;->B:I

    const-string v2, "ro.fyt.auto_pick"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lh0/e;->e(I)V

    const/16 p0, 0x8f

    .line 19
    sget v1, Lo0/e;->g:I

    const-string v2, "ro.fyt.dvd_enable"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lo0/g;->g(I)V

    const/16 p0, 0x8e

    .line 20
    sget v1, Lk0/nt;->T:I

    const-string v2, "ro.fyt.door_window"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lk0/qt;->N(I)V

    const/16 p0, 0x92

    .line 21
    sget v1, Ly0/f;->T:I

    const-string v2, "ro.fyt.backcar_percent"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->n(I)V

    const/16 p0, 0x94

    .line 22
    sget v1, Lu0/b;->v0:I

    const-string v2, "ro.fyt.cutacc_lcdc"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->e0(I)V

    const/16 p0, 0x95

    .line 23
    sget v1, Lu0/b;->x0:I

    const-string v2, "ro.fyt.eclink"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->k0(I)V

    const/16 p0, 0x96

    .line 24
    sget v1, Lu0/b;->G0:I

    const-string v2, "ro.fyt.aux"

    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->z(I)V

    const/16 p0, 0x97

    const-string v1, "ro.fyt.sync"

    .line 25
    invoke-static {v1, v4}, La/i;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lk0/qt;->s0(I)V

    .line 26
    sget-boolean p0, Lu0/b;->E1:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 27
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p0

    sget v2, Lu0/b;->F0:I

    if-ne v2, v4, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Lu0/i;->f3(I)V

    :cond_2
    const/16 p0, 0x98

    .line 28
    sget v2, Lu0/b;->K0:I

    const-string v3, "ro.fyt.sleep_airplane"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->p3(I)V

    const/16 p0, 0x99

    .line 29
    sget v2, Ly0/f;->V:I

    const-string v3, "ro.fyt.spectrum"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->k0(I)V

    const/16 p0, 0x9a

    .line 30
    sget v2, Lh0/c;->c0:I

    const-string v3, "ro.fyt.btring_percent"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lh0/e;->u(I)V

    const/16 p0, 0x9b

    const-string v2, "ro.mtu.backcar_360camera"

    .line 31
    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->L(I)V

    const/16 p0, 0x9c

    const-string v2, "ro.mtu.360camera_enable"

    .line 32
    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->B(I)V

    const/16 p0, 0x9d

    const-string v2, "ro.fyt.flash_write"

    .line 33
    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->l3(I)V

    const/16 p0, 0xaa

    .line 34
    sget v2, Ly0/f;->W0:I

    const-string v3, "ro.fyt.subwoof"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->n0(I)V

    const/16 p0, 0xac

    .line 35
    sget v2, Lu0/b;->c1:I

    const-string v3, "ro.fyt.usb_enable"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->O3(I)V

    .line 36
    sget p0, Lu0/b;->w4:I

    if-ne p0, v4, :cond_3

    const/16 p0, 0x9e

    .line 37
    sget v2, Lu0/b;->y:I

    const-string v3, "ro.fyt.anykey_boot"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->q(I)V

    .line 38
    :cond_3
    sget p0, Lu0/b;->y4:I

    if-ne p0, v4, :cond_4

    const/16 p0, 0xa0

    .line 39
    sget v2, Lu0/b;->W:I

    const-string v3, "ro.fyt.osd_time"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->m2(I)V

    .line 40
    :cond_4
    sget p0, Ly0/f;->d1:I

    if-ne p0, v4, :cond_5

    const/16 p0, 0xa1

    .line 41
    sget v2, Ly0/f;->y:I

    const-string v3, "ro.fyt.backcar_mute"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->l(I)V

    .line 42
    :cond_5
    sget p0, Ly0/f;->b1:I

    if-ne p0, v4, :cond_6

    const/16 p0, 0xa2

    .line 43
    sget v2, Ly0/f;->A:I

    const-string v3, "ro.fyt.defvol_boot_enable"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->C(I)V

    .line 44
    :cond_6
    sget p0, Ly0/f;->c1:I

    const-string v2, "ro.fyt.defvol_boot"

    const/16 v3, 0xa3

    if-ne p0, v4, :cond_7

    .line 45
    sget p0, Ly0/f;->D:I

    invoke-static {v2, p0}, La/i;->k(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v3, p0}, Lm1/c;->c(II)I

    move-result p0

    .line 46
    invoke-static {p0}, Ly0/h;->A(I)V

    .line 47
    :cond_7
    sget p0, Ly0/f;->Z0:I

    if-ne p0, v4, :cond_a

    .line 48
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p0

    const-string v5, "sys.syu.extra_call_def_volume"

    const/16 v6, 0x12

    .line 49
    invoke-static {v5, v6}, La/i;->k(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, 0x184

    .line 50
    invoke-static {v7, v5}, Lm1/c;->c(II)I

    move-result v5

    const/16 v7, 0x24

    .line 51
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 52
    invoke-virtual {p0, v5}, Ly0/j;->k3(I)V

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===========>>>   shared Load boot DataSound.sExtraCallVol ===  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Ly0/f;->e:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "bootA"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "sys.syu.bluetooth_def_volume"

    .line 54
    invoke-static {v5, v6}, La/i;->k(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x17d

    .line 55
    invoke-static {v6, v5}, Lm1/c;->c(II)I

    move-result v5

    .line 56
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 57
    invoke-virtual {p0, v5}, Ly0/j;->j3(I)V

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===========>>>   shared Load boot DataSound.sBtVol ===  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Ly0/f;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget v5, Ly0/f;->D:I

    invoke-static {v2, v5}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v3, v2}, Lm1/c;->c(II)I

    move-result v2

    const/16 v3, 0x17c

    .line 60
    invoke-static {v3, v2}, Lm1/c;->c(II)I

    move-result v3

    .line 61
    invoke-static {}, Lg/e;->m()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    move v7, v2

    :goto_1
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 62
    invoke-virtual {p0, v3}, Ly0/j;->m3(I)V

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===========>>>   shared DataSound.mSysVol ===  "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Ly0/f;->f:I

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  defVol === "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  vol === "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DataChip.notInCar() = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg/e;->m()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget p0, Lu0/b;->D:I

    const/4 v2, 0x2

    if-ne p0, v2, :cond_9

    sget p0, Ly0/f;->d:I

    goto :goto_2

    :cond_9
    sget p0, Ly0/f;->f:I

    :goto_2
    invoke-static {p0}, Ly0/h;->t0(I)V

    .line 65
    :cond_a
    sget p0, Ly0/f;->e1:I

    if-ne p0, v4, :cond_b

    const/16 p0, 0xa4

    .line 66
    sget v2, Ly0/f;->K:I

    const-string v3, "ro.fyt.navimix_enable"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->a0(I)V

    .line 67
    :cond_b
    sget p0, Ly0/f;->f1:I

    if-ne p0, v4, :cond_c

    const/16 p0, 0xa5

    .line 68
    sget v2, Ly0/f;->s:I

    const-string v3, "ro.fyt.beep_enable"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->q(I)V

    .line 69
    sget p0, Ly0/f;->r:I

    invoke-static {p0}, Ly0/h;->r(I)V

    .line 70
    :cond_c
    sget p0, Ly0/f;->g1:I

    if-ne p0, v4, :cond_d

    const/16 p0, 0xa6

    .line 71
    sget v2, Ly0/f;->F:I

    const-string v3, "ro.fyt.loud_enable"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->S(I)V

    .line 72
    :cond_d
    sget p0, Ly0/f;->h1:I

    if-ne p0, v4, :cond_e

    const/16 p0, 0xa7

    .line 73
    sget v2, Ly0/f;->I:I

    const-string v3, "ro.fyt.amp_enable"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->j(I)V

    .line 74
    sget p0, Ly0/f;->H:I

    invoke-static {p0}, Ly0/h;->k(I)V

    .line 75
    :cond_e
    sget p0, Lu0/b;->z4:I

    if-ne p0, v4, :cond_f

    const/16 p0, 0xa8

    .line 76
    sget v2, Lu0/b;->H:I

    const-string v3, "ro.fyt.backcar_radar_enable"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->F(I)V

    .line 77
    :cond_f
    sget p0, Lu0/b;->A4:I

    if-ne p0, v4, :cond_10

    const/16 p0, 0xa9

    .line 78
    sget v2, Lu0/b;->J:I

    const-string v3, "ro.fyt.backcar_track_enable"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->H(I)V

    .line 79
    :cond_10
    sget p0, Lp0/b;->j:I

    if-ne p0, v4, :cond_11

    const/16 p0, 0xad

    .line 80
    sget v2, Lp0/b;->i:I

    const-string v3, "ro.fyt.dvr_type"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lp0/c;->a(I)V

    :cond_11
    const/16 p0, 0x17f

    .line 81
    sget v2, Lu0/b;->p1:I

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    sput p0, Lu0/b;->p1:I

    const/16 v2, 0x75

    new-array v3, v4, [I

    aput p0, v3, v1

    .line 82
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    const/16 p0, 0x180

    .line 83
    sget v2, Lu0/b;->s1:I

    const-string v3, "persist.sys.ahd"

    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->A0(I)V

    .line 84
    sget p0, Lu0/b;->B4:I

    if-ne p0, v4, :cond_12

    const/16 p0, 0xb1

    .line 85
    invoke-static {p0, v1}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, La1/c;->a(I)V

    .line 86
    sget-object p0, Lw0/d;->b:Lw0/g;

    const/16 v2, 0xb2

    invoke-static {v2, v1}, Lm1/c;->c(II)I

    move-result v2

    invoke-interface {p0, v2}, Lw0/g;->u(I)V

    :cond_12
    const/16 p0, 0xae

    const-string v2, "ro.fyt.video_aux_tv"

    .line 87
    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->Q3(I)V

    const/16 p0, 0xc4

    const-string v2, "ro.fyt.audio_tv_ipod"

    .line 88
    invoke-static {v2, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->w(I)V

    .line 89
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p0

    const/16 v2, 0xd7

    const-string v3, "ro.syu.voice_def"

    invoke-static {v3, v0}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu0/i;->s4(Ljava/lang/String;)V

    const/16 p0, 0xc5

    .line 90
    invoke-static {p0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "ro.syu.lamplet_by_time"

    .line 91
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->f1(I)V

    :cond_13
    const/16 p0, 0xc6

    .line 92
    invoke-static {p0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "ro.syu.air_line_alwayson"

    .line 93
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lw0/f;->a(I)V

    :cond_14
    const/16 p0, 0xc7

    .line 94
    invoke-static {p0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "ro.syu.panel_key_enable"

    .line 95
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->r2(I)V

    .line 96
    :cond_15
    sget p0, Lu0/b;->x4:I

    if-ne p0, v4, :cond_16

    const/16 p0, 0x9f

    const-string v0, "ro.syu.handbrake_enable"

    .line 97
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->y0(I)V

    .line 98
    sget p0, Lu0/b;->m:I

    invoke-static {p0}, Lu0/d;->z0(I)V

    :cond_16
    const/16 p0, 0xd2

    .line 99
    invoke-static {p0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 100
    sget-object v0, Lbase/Configure$Property;->k:Lbase/Configure$Property;

    invoke-virtual {v0, v4}, Lbase/Configure$Property;->d(I)I

    move-result v0

    invoke-static {p0, v0}, Lm1/c;->c(II)I

    move-result p0

    invoke-static {p0}, Lu0/d;->H0(I)V

    .line 101
    :cond_17
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object p0

    const/16 v0, 0xd6

    sget v2, Lh0/c;->V:I

    const-string v3, "ro.syu.callpipshow"

    invoke-static {v3, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lm1/c;->c(II)I

    move-result v0

    if-ne v0, v4, :cond_18

    goto :goto_3

    :cond_18
    move v4, v1

    :goto_3
    invoke-virtual {p0, v4}, Lh0/g;->X2(Z)V

    .line 102
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p0

    const/16 v0, 0x3e8

    const-string v2, "persist.syu.fmsender.volume"

    invoke-static {v2, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lm1/c;->c(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ly0/j;->i3(I)V

    return-void
.end method

.method public static q(Z)V
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/16 v1, 0x30

    if-ge v0, v1, :cond_1

    .line 1
    sget-object v1, Ly0/f;->x0:[I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.fyt.def.sb."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ly0/h;->f0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget v3, v1, v0

    invoke-static {v2, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v2, p0, v3}, Lo1/o0;->a(III)I

    move-result v2

    aput v2, v1, v0

    .line 2
    sget v2, Ly0/f;->Z0:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Ly0/f;->w0:[I

    aget v3, v1, v0

    aput v3, v2, v0

    :cond_0
    add-int/lit8 v2, v0, 0x52

    .line 3
    aget v1, v1, v0

    invoke-static {v2, v1}, Lm1/c;->c(II)I

    move-result v1

    invoke-static {v0, v1}, Ly0/h;->g0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static r(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x24

    if-ge v1, v2, :cond_0

    .line 1
    sget-object v2, Ly0/f;->r0:[I

    add-int/lit16 v3, v1, 0x10a

    sget-object v4, Ly0/f;->s0:[I

    aget v4, v4, v1

    invoke-static {v3, v4}, Lm1/c;->c(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 2
    sget-object v3, Ly0/f;->u0:[I

    add-int/lit16 v4, v1, 0x12e

    sget-object v5, Ly0/f;->v0:[I

    aget v5, v5, v1

    invoke-static {v4, v5}, Lm1/c;->c(II)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-nez p0, :cond_3

    move p0, v0

    :goto_2
    if-ge p0, v2, :cond_2

    add-int/lit16 v1, p0, 0x10a

    .line 3
    sget-object v3, Ly0/f;->r0:[I

    aget v3, v3, p0

    invoke-static {v1, v3}, Lm1/c;->e(II)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v0, v2, :cond_3

    add-int/lit16 p0, v0, 0x12e

    .line 4
    sget-object v1, Ly0/f;->u0:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lm1/c;->e(II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5
    :cond_3
    invoke-static {}, Ly0/h;->L()V

    return-void
.end method
