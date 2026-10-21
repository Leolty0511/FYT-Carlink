.class public final Lh/e;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final d:Lcom/syu/carlink/carplay/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/syu/carlink/carplay/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/syu/carlink/carplay/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh/e;->d:Lcom/syu/carlink/carplay/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1

    .line 1
    const-string v0, "recipient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/os/Binder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "HDL"

    .line 10
    .line 11
    const-string p2, "=================>>>  linkToDeath "

    .line 12
    .line 13
    invoke-static {p1, p2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "data"

    invoke-static {v2, v4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    shr-int/lit8 v4, v1, 0x8

    .line 1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onTransact ====>>>>  hwcode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HDL"

    invoke-static {v6, v5}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 v5, v1, 0xff

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_0

    if-eq v5, v7, :cond_0

    .line 2
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto/16 :goto_10

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "onCarplayNotify  cmdid: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    const/16 v5, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x64

    const-string v12, "CarplayServer.ICarplayListener"

    const-string v13, "me"

    if-eq v4, v11, :cond_37

    const/16 v11, 0x65

    if-eq v4, v11, :cond_35

    const/16 v11, 0x71

    const/4 v14, -0x1

    if-eq v4, v11, :cond_1a

    const-string v11, " : msg: "

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_b

    .line 4
    :pswitch_0
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_36

    .line 6
    new-array v7, v4, [B

    .line 7
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "CARPLAY_S2C_WRITEBTDATA ----------------->> data size : "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v2, v2, Lcom/syu/carlink/base/a;->b:Le/h;

    if-eqz v2, :cond_36

    .line 11
    iget-object v2, v2, Le/h;->a:Lcom/syu/carlink/CarLinkService;

    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    if-eqz v2, :cond_36

    .line 12
    iget-object v2, v2, Ll/b;->a:Ll/a;

    if-eqz v2, :cond_36

    .line 13
    new-instance v4, Landroid/accessibilityservice/a;

    invoke-direct {v4, v7, v2, v1}, Landroid/accessibilityservice/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, v2, Ll/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    .line 14
    :pswitch_1
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    goto :goto_0

    :cond_1
    move-object v1, v10

    .line 17
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CARPLAY_S2C_BTDATA ----------------->> bundle : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_36

    const-string v2, "_btcmd"

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "$CarPlay.AudioState"

    .line 19
    invoke-virtual {v1, v4, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v7, "$CarPlay.ConnectState"

    .line 20
    invoke-virtual {v1, v7, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v11, "$CarPlay.WifiApCtl"

    .line 21
    invoke-virtual {v1, v11, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "$CarPlay.PhoneCpState"

    const/high16 v14, -0x80000000

    .line 22
    invoke-virtual {v1, v12, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 23
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "CARPLAY_S2C_BTDATA -------->> bundle : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " msg: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  audioFlag:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connectType:"

    const-string v15, "  phoneCpOpen:"

    .line 24
    invoke-static {v14, v4, v1, v7, v15}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 25
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string v1, "AT#SP"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v1

    new-instance v2, Lg/a;

    const/4 v15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0xb

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x18

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    goto :goto_1

    :cond_2
    const-string v1, "AT#SH"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v1

    new-instance v2, Lg/a;

    const/4 v15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0xc

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x18

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    goto :goto_1

    :cond_3
    const-string v1, "AT#CD"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v1

    new-instance v2, Lg/a;

    const/4 v15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0xe

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x18

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    :cond_4
    :goto_1
    if-ltz v4, :cond_10

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Carplay Audio media ----------------->> audioFlag : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v9

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v14, "%03X "

    invoke-static {v14, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v14, "format(format, *args)"

    invoke-static {v2, v14}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 v1, v4, 0xfff

    if-eqz v1, :cond_d

    if-eq v1, v8, :cond_d

    const/16 v2, 0x800

    const/16 v14, 0x801

    if-eq v1, v2, :cond_5

    if-eq v1, v14, :cond_5

    goto/16 :goto_4

    :cond_5
    if-ne v4, v14, :cond_6

    move v9, v8

    .line 33
    :cond_6
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v1, :cond_c

    .line 34
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v1

    .line 35
    iget-object v1, v1, Lg/b;->A:Landroidx/lifecycle/MutableLiveData;

    .line 36
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_7

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 37
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_b

    .line 38
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v2

    .line 39
    iget-object v2, v2, Lg/b;->B:Landroidx/lifecycle/MutableLiveData;

    .line 40
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v15}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eq v1, v9, :cond_10

    .line 41
    :cond_8
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v1, :cond_a

    .line 42
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v1

    .line 43
    iget-object v1, v1, Lg/b;->A:Landroidx/lifecycle/MutableLiveData;

    if-ne v4, v14, :cond_9

    move v2, v8

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    .line 44
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 45
    :cond_a
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    .line 46
    :cond_b
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    .line 47
    :cond_c
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    .line 48
    :cond_d
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v1, :cond_f

    .line 49
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v1

    .line 50
    iget-object v1, v1, Lg/b;->y:Landroidx/lifecycle/MutableLiveData;

    if-ne v4, v8, :cond_e

    move v2, v8

    goto :goto_3

    :cond_e
    const/4 v2, 0x0

    .line 51
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 52
    :cond_f
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    :cond_10
    :goto_4
    if-ltz v7, :cond_13

    .line 53
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v1, :cond_12

    .line 54
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v1

    .line 55
    iget-object v1, v1, Lg/b;->z:Landroidx/lifecycle/MutableLiveData;

    if-ne v7, v8, :cond_11

    move v2, v8

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    .line 56
    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_6

    .line 57
    :cond_12
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    :cond_13
    :goto_6
    if-ltz v11, :cond_16

    if-eqz v11, :cond_15

    if-eq v11, v8, :cond_14

    goto :goto_7

    .line 58
    :cond_14
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v1

    new-instance v2, Lg/a;

    const/4 v15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x10

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x18

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    goto :goto_7

    .line 59
    :cond_15
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v1

    new-instance v2, Lg/a;

    const/4 v15, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x18

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 60
    :cond_16
    :goto_7
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v1, :cond_17

    .line 61
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v1

    .line 62
    iget-object v1, v1, Lg/b;->H:Landroidx/lifecycle/MutableLiveData;

    .line 63
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_36

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phoneCpOpen ----------------->> state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 65
    :cond_17
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    .line 66
    :pswitch_2
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE_WIRELESS state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v1

    new-instance v2, Lg/a;

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x18

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    goto/16 :goto_b

    .line 70
    :pswitch_3
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_18

    .line 73
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 74
    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    if-eqz v2, :cond_36

    .line 75
    new-instance v4, Le/y;

    invoke-direct {v4, v1, v7}, Le/y;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    .line 76
    :cond_18
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    .line 77
    :pswitch_4
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CARPLAY_S2C_PHONESTATE : code: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_19

    .line 81
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 82
    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    if-eqz v2, :cond_36

    .line 83
    new-instance v4, Le/y;

    invoke-direct {v4, v1, v8}, Le/y;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    .line 84
    :cond_19
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    .line 85
    :pswitch_5
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v2, Lg/a;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x4

    move-object v9, v2

    move v11, v1

    invoke-direct/range {v9 .. v15}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    goto/16 :goto_b

    .line 92
    :pswitch_6
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    const-string v2, "code: "

    const-string v4, " len: "

    .line 96
    invoke-static {v2, v1, v4, v7, v11}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v2, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v2

    new-instance v11, Lg/a;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v10, 0x8

    move-object v4, v11

    move v6, v1

    invoke-direct/range {v4 .. v10}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v11}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    goto/16 :goto_b

    .line 99
    :cond_1a
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v7, :cond_1c

    const-string v1, " ====>>> CARPLAY_S2C_NOWPLAYINGUPDATES isNowPlayingReady true "

    .line 101
    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v1, :cond_1b

    .line 103
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v1

    .line 104
    iget-object v1, v1, Lg/b;->B:Landroidx/lifecycle/MutableLiveData;

    .line 105
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 106
    :cond_1b
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v10

    :cond_1c
    if-ne v1, v8, :cond_1d

    .line 107
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/PersistableBundle;

    :cond_1d
    if-eqz v10, :cond_36

    const-string v1, "$NowPlay.Attr.PlaybackDurationInMs"

    .line 108
    invoke-virtual {v10, v1, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "$NowPlay.PlaybackElapsedTimeInMs"

    .line 109
    invoke-virtual {v10, v2, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "$NowPlay.MediaItemTitle"

    .line 110
    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "$NowPlay.MediaItemArtist"

    .line 111
    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "$NowPlay.MediaItemAlbumTitle"

    .line 112
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "$NowPlay.ArtworkFile"

    .line 113
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "$NowPlay.PlaybackStatus"

    .line 114
    invoke-virtual {v10, v9, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v11, "$NowPlay.PlaybackShuffleMode"

    .line 115
    invoke-virtual {v10, v11, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "$NowPlay.PlaybackRepeatMode"

    .line 116
    invoke-virtual {v10, v12, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 117
    new-instance v12, Ljava/lang/StringBuffer;

    const-string v14, "CARPLAY_S2C_NOWPLAYINGUPDATES msg: ["

    invoke-direct {v12, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v14, ", "

    if-eqz v4, :cond_1e

    .line 118
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "\ntitle: "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e
    if-eqz v5, :cond_1f

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v15, "\nartist: "

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    if-eqz v7, :cond_20

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v15, "\nalbum: "

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_20
    if-eqz v8, :cond_21

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v15, "\ncover: "

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    if-ltz v1, :cond_22

    .line 122
    iput v1, v0, Lh/e;->b:I

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "\nduration: "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_22
    if-ltz v2, :cond_23

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "position: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iput v2, v0, Lh/e;->c:I

    :cond_23
    if-ltz v9, :cond_24

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nplayState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_24
    if-ltz v11, :cond_25

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nshuffleMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
    if-ltz v10, :cond_26

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nrepeatMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_26
    const-string v1, "\n]"

    .line 129
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v1, :cond_34

    .line 132
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 133
    iget-object v1, v0, Lh/e;->d:Lcom/syu/carlink/carplay/a;

    if-eqz v4, :cond_27

    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    iget-object v2, v1, Lcom/syu/carlink/carplay/a;->e:Ljava/lang/String;

    invoke-static {v2, v4}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 136
    iput-object v4, v1, Lcom/syu/carlink/carplay/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    .line 137
    invoke-static {v2, v4}, Lcom/syu/carlink/carplay/a;->a(ILjava/lang/String;)V

    :cond_27
    if-eqz v5, :cond_28

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    iget-object v2, v1, Lcom/syu/carlink/carplay/a;->f:Ljava/lang/String;

    invoke-static {v2, v5}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 140
    iput-object v5, v1, Lcom/syu/carlink/carplay/a;->f:Ljava/lang/String;

    const/4 v2, 0x1

    .line 141
    invoke-static {v2, v5}, Lcom/syu/carlink/carplay/a;->a(ILjava/lang/String;)V

    :cond_28
    if-eqz v7, :cond_29

    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    iget-object v2, v1, Lcom/syu/carlink/carplay/a;->g:Ljava/lang/String;

    invoke-static {v2, v7}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 144
    iput-object v7, v1, Lcom/syu/carlink/carplay/a;->g:Ljava/lang/String;

    const/4 v2, 0x2

    .line 145
    invoke-static {v2, v7}, Lcom/syu/carlink/carplay/a;->a(ILjava/lang/String;)V

    goto :goto_8

    :cond_29
    const/4 v2, 0x2

    :goto_8
    if-ltz v9, :cond_2e

    .line 146
    iget v3, v1, Lcom/syu/carlink/carplay/a;->i:I

    if-eq v3, v9, :cond_2e

    .line 147
    iput v9, v1, Lcom/syu/carlink/carplay/a;->i:I

    const/4 v3, 0x1

    if-eq v9, v3, :cond_2c

    if-eq v9, v2, :cond_2a

    goto :goto_9

    .line 148
    :cond_2a
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v3, :cond_2b

    .line 149
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v3

    .line 150
    iget-object v3, v3, Lg/b;->A:Landroidx/lifecycle/MutableLiveData;

    .line 151
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-array v2, v2, [I

    .line 152
    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/syu/carlink/carplay/a;->b([I)V

    goto :goto_9

    .line 153
    :cond_2b
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 154
    :cond_2c
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_2d

    .line 155
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v2

    .line 156
    iget-object v2, v2, Lg/b;->A:Landroidx/lifecycle/MutableLiveData;

    .line 157
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 158
    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/syu/carlink/carplay/a;->b([I)V

    goto :goto_9

    .line 159
    :cond_2d
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 160
    :cond_2e
    :goto_9
    iget v2, v0, Lh/e;->b:I

    iget v3, v0, Lh/e;->c:I

    if-ltz v3, :cond_2f

    if-gt v3, v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_a

    :cond_2f
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_31

    .line 161
    div-int/lit16 v3, v3, 0x3e8

    .line 162
    iget v2, v1, Lcom/syu/carlink/carplay/a;->d:I

    iget-object v4, v1, Lcom/syu/carlink/carplay/a;->a:Ls/a;

    iget-object v5, v1, Lcom/syu/carlink/carplay/a;->b:Landroid/net/b;

    const-wide/16 v6, 0x64

    if-eq v2, v3, :cond_30

    .line 163
    iput v3, v1, Lcom/syu/carlink/carplay/a;->d:I

    if-ltz v3, :cond_30

    .line 164
    iget v2, v1, Lcom/syu/carlink/carplay/a;->c:I

    if-lt v2, v3, :cond_30

    .line 165
    invoke-interface {v4}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 166
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    invoke-interface {v4}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 168
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    :cond_30
    iget v2, v0, Lh/e;->b:I

    div-int/lit16 v2, v2, 0x3e8

    .line 170
    iget v3, v1, Lcom/syu/carlink/carplay/a;->c:I

    if-eq v3, v2, :cond_31

    .line 171
    iput v2, v1, Lcom/syu/carlink/carplay/a;->c:I

    if-ltz v2, :cond_31

    .line 172
    iget v3, v1, Lcom/syu/carlink/carplay/a;->d:I

    if-lt v2, v3, :cond_31

    .line 173
    invoke-interface {v4}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 174
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    invoke-interface {v4}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 176
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_31
    if-ltz v11, :cond_32

    .line 177
    iget v2, v1, Lcom/syu/carlink/carplay/a;->j:I

    if-eq v2, v11, :cond_32

    .line 178
    iput v11, v1, Lcom/syu/carlink/carplay/a;->j:I

    if-ltz v11, :cond_32

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v11, v2, v3

    .line 179
    invoke-static {v2}, Lcom/syu/carlink/carplay/a;->b([I)V

    :cond_32
    if-ltz v10, :cond_33

    .line 180
    iget v2, v1, Lcom/syu/carlink/carplay/a;->k:I

    if-eq v2, v10, :cond_33

    .line 181
    iput v10, v1, Lcom/syu/carlink/carplay/a;->k:I

    if-ltz v10, :cond_33

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x7

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v10, v2, v3

    .line 182
    invoke-static {v2}, Lcom/syu/carlink/carplay/a;->b([I)V

    :cond_33
    if-eqz v8, :cond_36

    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    iget-object v2, v1, Lcom/syu/carlink/carplay/a;->h:Ljava/lang/String;

    invoke-static {v2, v8}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 185
    iput-object v8, v1, Lcom/syu/carlink/carplay/a;->h:Ljava/lang/String;

    const/16 v1, 0xb

    .line 186
    invoke-static {v1, v8}, Lcom/syu/carlink/carplay/a;->a(ILjava/lang/String;)V

    goto :goto_b

    .line 187
    :cond_34
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 188
    :cond_35
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    move-result-object v1

    new-instance v9, Lg/a;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v9}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    :cond_36
    :goto_b
    const/4 v1, 0x1

    move-object/from16 v2, p3

    goto/16 :goto_f

    :cond_37
    const/4 v3, 0x6

    .line 190
    invoke-virtual {v2, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_3b

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eq v2, v8, :cond_3a

    const/4 v9, 0x2

    if-eq v2, v9, :cond_39

    if-eq v2, v4, :cond_3c

    if-eq v2, v7, :cond_38

    const/16 v1, -0xff

    goto :goto_c

    :cond_38
    const/4 v1, 0x5

    goto :goto_c

    :cond_39
    move v1, v3

    goto :goto_c

    :cond_3a
    move v1, v7

    goto :goto_c

    :cond_3b
    const/4 v8, 0x1

    move v1, v4

    .line 192
    :cond_3c
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "LinkState  LinkState.STATE_TYPE_PHONE    to Link State:  "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "     ------   serverState : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_42

    .line 194
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->C()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_40

    .line 195
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_3f

    .line 196
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v2

    .line 197
    iget-object v2, v2, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    if-eq v1, v4, :cond_3d

    move v3, v8

    goto :goto_d

    :cond_3d
    const/4 v3, 0x0

    .line 198
    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 199
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_3e

    .line 200
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v2

    .line 201
    iget-object v2, v2, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_e

    .line 203
    :cond_3e
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_3f
    const/4 v1, 0x0

    .line 204
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v1

    :cond_40
    :goto_e
    move-object/from16 v2, p3

    move v1, v8

    :goto_f
    if-eqz v2, :cond_41

    const/4 v3, 0x0

    .line 205
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_41
    :goto_10
    return v1

    :cond_42
    const/4 v1, 0x0

    .line 206
    invoke-static {v13}, Lt/b;->B(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x0
    .end array-data
.end method

.method public final unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 2

    .line 1
    const-string v0, "recipient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HDL"

    .line 7
    .line 8
    const-string v1, "=================>>>  unlinkToDeath"

    .line 9
    .line 10
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroid/os/Binder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
