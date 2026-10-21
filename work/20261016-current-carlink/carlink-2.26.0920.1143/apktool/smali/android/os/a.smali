.class public final synthetic Landroid/os/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/BatteryStats$IntToString;
.implements Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;
.implements Landroid/telecom/Logging/SessionManager$ICurrentThreadId;
.implements Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroid/os/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsString(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/os/a;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public final get(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 2
    iget v0, p0, Landroid/os/a;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Landroid/view/FocusFinder;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-static {p1, p2}, Landroid/view/FocusFinder;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final getInterpolation(F)F
    .locals 1

    iget v0, p0, Landroid/os/a;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->h(F)F

    move-result p1

    return p1

    :pswitch_1
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->g(F)F

    move-result p1

    return p1

    :pswitch_2
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->b(F)F

    move-result p1

    return p1

    :pswitch_3
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->a(F)F

    move-result p1

    return p1

    :pswitch_4
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->d(F)F

    move-result p1

    return p1

    :pswitch_5
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->c(F)F

    move-result p1

    return p1

    :goto_0
    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->e(F)F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/telecom/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    sget p1, Lcom/syu/carlink/fragment/SettingsFragment;->e:I

    .line 1
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    const/4 v0, 0x0

    const-string/jumbo v1, "me"

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xa6

    new-array v7, v2, [I

    aput p2, v7, v3

    const/4 v8, 0x0

    const/16 v9, 0x18

    invoke-static/range {v4 .. v9}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Integer;

    const/16 v4, 0x70

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    const/16 v4, 0x8c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    .line 4
    sget-object v4, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v4}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "HDL"

    const-string v4, "=============>>  FinalMain.Options.CARLINK_WIRED_AUTO_CONN TO ON 2222"

    .line 6
    invoke-static {p1, v4}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xa7

    new-array v7, v2, [I

    aput p2, v7, v3

    const/4 v8, 0x0

    const/16 v9, 0x18

    invoke-static/range {v4 .. v9}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7

    iget v0, p0, Landroid/os/a;->b:I

    const-string/jumbo v1, "value"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "HDL"

    const-string v5, "    checkedId: "

    const-string v6, "  group : "

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v0, Lcom/syu/carlink/fragment/SettingsFragment;->e:I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget p1, Le/v;->noise_null:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget p1, Le/v;->noise_left:I

    if-ne p2, p1, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 15
    :cond_1
    sget p1, Le/v;->noise_right:I

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    .line 16
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "persist.lsec.cp.micLR"

    .line 18
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :goto_2
    sget v0, Lcom/syu/carlink/fragment/SettingsFragment;->e:I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget p1, Le/v;->apband_2_4g:I

    if-ne p2, p1, :cond_3

    goto :goto_3

    .line 22
    :cond_3
    sget p1, Le/v;->apband_5g:I

    if-ne p2, p1, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move v3, v2

    .line 23
    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "persist.lsec.carlink.apband"

    .line 25
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object p1, Lf/k;->y:Lf/k;

    xor-int/lit8 p2, v3, 0x1

    .line 27
    iget-object p1, p1, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 28
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "wifi_baud_5G"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/projection/sink/settings/Settings;->writeKeyValue(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    sget-object p1, Lf/k;->y:Lf/k;

    .line 30
    iget-object p1, p1, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 31
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/projection/sink/settings/Settings;->writeKeyValue(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
