.class public Lo1/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 3

    .line 1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, La/i;->r(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "com.syu.video"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.syu.av"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, La/b;->m:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lh0/c;->G:I

    if-nez v0, :cond_1

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->a0:I

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->o:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    xor-int/2addr v0, v2

    return v0
.end method

.method public static b()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->w:I

    if-nez v0, :cond_0

    .line 2
    sget v0, Lu0/b;->L:I

    invoke-static {v0}, Lu0/d;->P(I)V

    .line 3
    sget v0, Lu0/b;->Q2:I

    sget v1, Lu0/b;->P2:I

    sub-int/2addr v0, v1

    .line 4
    sget v2, Lu0/b;->K:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    .line 5
    invoke-static {v1}, Lo1/n0;->d(I)V

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lu0/b;->M:I

    invoke-static {v0}, Lu0/d;->P(I)V

    .line 7
    sget v0, Lu0/b;->S2:I

    sget v1, Lu0/b;->R2:I

    sub-int/2addr v0, v1

    .line 8
    sget v2, Lu0/b;->K:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    .line 9
    invoke-static {v1}, Lo1/n0;->d(I)V

    :goto_0
    return-void
.end method

.method public static c([II)I
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    aget v2, p0, v1

    if-gt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static d(I)V
    .locals 7

    const-string v0, "screen_brightness"

    const-string v1, "screen_brightness_mode"

    :try_start_0
    const-string v2, "ro.build.version.sdk"

    const/16 v3, 0x10

    .line 1
    invoke-static {v2, v3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1f

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v2, v3, :cond_1

    .line 2
    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 5
    invoke-static {v2, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v2, v0, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p0, :cond_3

    .line 8
    invoke-static {v2, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    const/16 v0, 0x1d

    if-ge v2, v0, :cond_2

    .line 9
    :try_start_4
    new-instance v0, Lj1/c;

    const-string v1, "setBacklightBrightness"

    invoke-direct {v0, v1}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {}, La/f;->r()Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object p0

    invoke-virtual {p0}, Lj1/c;->a()Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Lj1/c;

    const-string v1, "setTemporaryBrightness"

    invoke-direct {v0, v1}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {}, La/f;->h()Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 14
    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object p0

    invoke-virtual {p0}, Lj1/c;->a()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_2
    :cond_3
    :goto_1
    return-void
.end method
