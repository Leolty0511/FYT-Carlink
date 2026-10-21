.class Lcom/syu/app/ipc/Ipc_New$4;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_New;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_New;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 2325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/syu/app/ipc/Ipc_New$4;)Lcom/syu/app/ipc/Ipc_New;
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    return-object v0
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 25
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 2330
    packed-switch p1, :pswitch_data_0

    .line 3020
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 3021
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_4c

    .line 3022
    const/4 v4, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3023
    const-string v4, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 U_PHONE_NUMBER strs ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    const/4 v4, 0x0

    aget-object v4, p4, v4

    const-string v5, ""

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, p4, v4

    if-nez v4, :cond_4b

    .line 3025
    :cond_1
    const-string v4, "hfp"

    const-string v5, " 111 U_PHONE_NUMBERstrs[0]==null strs[0].length"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_2
    :goto_1
    sget-object v4, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 3062
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/4 v5, 0x0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Contact;I[I[F[Ljava/lang/String;)V

    .line 3063
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/4 v5, 0x0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Pair;I[I[F[Ljava/lang/String;)V

    .line 3064
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/4 v5, 0x0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_History;I[I[F[Ljava/lang/String;)V

    .line 3067
    :cond_3
    sget-object v4, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_52

    .line 3071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iget-object v4, v4, Lcom/syu/app/ipc/Ipc_New;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    if-eqz v4, :cond_4

    .line 3072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iget-object v4, v4, Lcom/syu/app/ipc/Ipc_New;->notify_Bt_Pop:Lcom/lsec/core/util/IUiNotify;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/lsec/core/util/IUiNotify;->onNotify(I[I[F[Ljava/lang/String;)V

    .line 3073
    :cond_4
    return-void

    .line 2336
    :pswitch_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyName()Ljava/lang/String;

    move-result-object v22

    .line 2337
    .local v22, "strDiyBtName":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v23

    .line 2338
    .local v23, "strDiyPin":Ljava/lang/String;
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 011 Ipc_New U_LOCAL_NAME  sDevName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " strDiyBtName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mBtType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->mBtType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    if-eqz p4, :cond_5

    .line 2340
    const-string v4, "name"

    const-string v5, " 022 U_LOCAL_NAME   strs!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 033 U_LOCAL_NAME   str"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :cond_5
    sget v4, Lcom/syu/bt/App_Bt;->mBtType:I

    if-nez v4, :cond_6

    .line 2346
    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2347
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2348
    const/4 v4, 0x0

    aget-object v4, p4, v4

    sput-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    .line 2349
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 11 Ipc_New U_LOCAL_NAME  sDevName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_6
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2354
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 22 Ipc_New setDevName  strDiyBtName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-static/range {v22 .. v22}, Lcom/syu/app/ipc/Ipc_New;->setDevName(Ljava/lang/String;)V

    .line 2358
    :cond_7
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2359
    invoke-static/range {v23 .. v23}, Lcom/syu/app/ipc/Ipc_New;->setDevPin(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2364
    .end local v22    # "strDiyBtName":Ljava/lang/String;
    .end local v23    # "strDiyPin":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/util/BTUtil;->isRightDevices()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2367
    if-eqz p4, :cond_8

    .line 2368
    const-string v4, "pop44"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 111 U_PHONE_NUMBER strs length= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  str"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " App_Bt.sPhone_callin_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :cond_8
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_a

    .line 2370
    const/4 v4, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2372
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p4, v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    aget-object v4, p4, v4

    if-eqz v4, :cond_a

    .line 2373
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2374
    .local v11, "i":I
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    aput-object v5, v4, v11

    .line 2375
    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2376
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER_p:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    aput-object v5, v4, v11

    .line 2377
    :cond_9
    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_f

    .line 2378
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    sget v5, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget-object v4, v4, v5

    sput-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 2381
    :goto_3
    const-string v4, "pop44"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 222 U_PHONE_NUMBER i="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  sPhone2_CALL_NUMBER= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Bt.sPhoneNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2389
    .end local v11    # "i":I
    :cond_a
    :goto_4
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 2390
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2393
    const-string v4, "his5"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 22 Ipc_New   put Bt.sPhoneNumber ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "number"

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 2396
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sput-object v4, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    .line 2401
    :cond_b
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2402
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_c

    .line 2404
    const-string v4, "his"

    const-string v5, " 25 Ipc_New   Calls.MISSED_TYPE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "type"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2406
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2408
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v6, "number"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2409
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "number"

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    :cond_c
    :goto_5
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2417
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 2418
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v6, "number"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    .line 2419
    const-string v4, "his"

    const-string v5, " 26 Ipc_New   Calls.MISSED_TYPE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2424
    :cond_d
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 2425
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v6, "number"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2427
    const-string v4, "his"

    const-string v5, " 27 Ipc_New   Calls.MISSED_TYPE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2433
    :cond_e
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2434
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2435
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v6, "number"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2436
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2437
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    goto/16 :goto_0

    .line 2380
    .restart local v11    # "i":I
    :cond_f
    :try_start_1
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    aget-object v4, v4, v11

    sput-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 2383
    .end local v11    # "i":I
    :catch_0
    move-exception v4

    goto/16 :goto_4

    .line 2411
    :cond_10
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v5, "number"

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2439
    :cond_11
    const/4 v4, 0x0

    new-instance v5, Lcom/syu/app/ipc/Ipc_New$4$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/syu/app/ipc/Ipc_New$4$1;-><init>(Lcom/syu/app/ipc/Ipc_New$4;)V

    .line 2444
    const-wide/16 v6, 0x1f4

    .line 2439
    invoke-static {v4, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2451
    :pswitch_3
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/util/BTUtil;->isRightDevices()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Ipc_New;->phoneState()V

    .line 2455
    sget-object v4, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_12

    .line 2459
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-boolean v4, v4, Lcom/syu/bt/App_Bt;->bFloatViewShow:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 2460
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->showFloatBtn(Z)V

    goto/16 :goto_0

    .line 2455
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/syu/bt/InterfaceBt;

    .line 2456
    .local v12, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v12}, Lcom/syu/bt/InterfaceBt;->phoneState()V

    goto :goto_6

    .line 2468
    .end local v12    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :pswitch_4
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    sput v4, Lcom/syu/bt/App_Bt;->iRingLevel:I

    goto/16 :goto_0

    .line 2475
    :pswitch_5
    const-string v4, "steer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " **Ipc2 BLE_STEER_DEV_STATE *  Bt.DATA[updateCode] = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " * iSteer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->iSteer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iSteer_p = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->iSteer_p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    sget v5, Lcom/syu/bt/App_Bt;->iSteer:I

    if-eq v4, v5, :cond_0

    .line 2477
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    if-nez v4, :cond_14

    .line 2478
    sget v4, Lcom/syu/bt/App_Bt;->iSteer:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 2480
    sget v4, Lcom/syu/bt/App_Bt;->iSteer:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    .line 2481
    const/4 v4, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mRunnable_SteerDisCon:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-static {v4, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 2491
    :cond_13
    :goto_7
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    sput v4, Lcom/syu/bt/App_Bt;->iSteer:I

    goto/16 :goto_0

    .line 2482
    :cond_14
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    .line 2483
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mRunnable_SteerDisCon:Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 2484
    sget v4, Lcom/syu/bt/App_Bt;->iSteer_p:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13

    .line 2485
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v4

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_steer_1"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 2486
    const/4 v4, 0x1

    sput v4, Lcom/syu/bt/App_Bt;->iSteer_p:I

    goto :goto_7

    .line 2504
    :pswitch_6
    const-string v4, "hfp11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " ** 00   updateCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    if-nez p1, :cond_17

    .line 2506
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2507
    .local v10, "data":Landroid/os/Bundle;
    const-string v4, "btav"

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2509
    const-string v4, "btav_art"

    const-string v5, "*bug*"

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    invoke-static {v4, v10}, Lcom/syu/app/ipc/Ipc_New;->access$0(Lcom/syu/app/ipc/Ipc_New;Landroid/os/Bundle;)V

    .line 2537
    .end local v10    # "data":Landroid/os/Bundle;
    :cond_16
    :goto_8
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_BtAv()V

    goto/16 :goto_0

    .line 2512
    :cond_17
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_19

    .line 2513
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2514
    .restart local v10    # "data":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2515
    const-string v4, "btav"

    const-string v5, "*bug*"

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    :cond_18
    const-string v4, "btav_art"

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sId3Artist:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    invoke-static {v4, v10}, Lcom/syu/app/ipc/Ipc_New;->access$0(Lcom/syu/app/ipc/Ipc_New;Landroid/os/Bundle;)V

    goto :goto_8

    .line 2519
    .end local v10    # "data":Landroid/os/Bundle;
    :cond_19
    const/16 v4, 0x1c

    move/from16 v0, p1

    if-ne v0, v4, :cond_1a

    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_NEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 2520
    const-string v4, "hfp11"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " ** 22   updateCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 2522
    .local v20, "str":Ljava/lang/String;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2523
    .restart local v10    # "data":Landroid/os/Bundle;
    const-string v4, "btav_curtime"

    move-object/from16 v0, v20

    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    invoke-static {v4, v10}, Lcom/syu/app/ipc/Ipc_New;->access$0(Lcom/syu/app/ipc/Ipc_New;Landroid/os/Bundle;)V

    goto :goto_8

    .line 2525
    .end local v10    # "data":Landroid/os/Bundle;
    .end local v20    # "str":Ljava/lang/String;
    :cond_1a
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_16

    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_NEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 2526
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 2527
    .local v21, "str1":Ljava/lang/String;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2528
    .restart local v10    # "data":Landroid/os/Bundle;
    const-string v4, "btav_totaltime"

    move-object/from16 v0, v21

    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    invoke-static {v4, v10}, Lcom/syu/app/ipc/Ipc_New;->access$0(Lcom/syu/app/ipc/Ipc_New;Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 2540
    .end local v10    # "data":Landroid/os/Bundle;
    .end local v21    # "str1":Ljava/lang/String;
    :pswitch_7
    if-eqz p4, :cond_1b

    if-eqz p2, :cond_1b

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_1b

    .line 2545
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x1

    :goto_9
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    .line 2546
    :cond_1b
    const-string v4, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 11 IpcNew U_HFP  mIdCustomer = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " App_Bt.bHFP = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2545
    :cond_1c
    const/4 v4, 0x0

    goto :goto_9

    .line 2550
    :pswitch_8
    const-string v4, "yy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 00 ** Ipc_new 0x43 popPhoneVoice updateCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bPopPhoneVoice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2551
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-boolean v6, v6, Lcom/syu/bt/App_Bt;->bPopPhoneVoice:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bPopPhoneFirstValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget v6, v6, Lcom/syu/bt/App_Bt;->bPopPhoneFirstValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2550
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1e

    .line 2555
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->popPhoneVoice(Z)V

    .line 2559
    :cond_1d
    :goto_a
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x2

    iput v5, v4, Lcom/syu/bt/App_Bt;->bPopPhoneFirstValue:I

    goto/16 :goto_0

    .line 2556
    :cond_1e
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-boolean v4, v4, Lcom/syu/bt/App_Bt;->bPopPhoneVoice:Z

    if-eqz v4, :cond_1d

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget v4, v4, Lcom/syu/bt/App_Bt;->bPopPhoneFirstValue:I

    if-lez v4, :cond_1d

    .line 2557
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->popPhoneVoice(Z)V

    goto :goto_a

    .line 2562
    :pswitch_9
    if-eqz p4, :cond_1f

    move-object/from16 v0, p4

    array-length v4, v0

    if-lez v4, :cond_1f

    .line 2563
    const/4 v4, 0x0

    aget-object v14, p4, v4

    .line 2564
    .local v14, "level":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 2565
    invoke-static {v14}, Lcom/syu/bt/util/BTUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2566
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sput v4, Lcom/syu/bt/App_Bt;->mPhoneBatterty:I

    .line 2574
    .end local v14    # "level":Ljava/lang/String;
    :cond_1f
    :goto_b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_BtAv()V

    goto/16 :goto_0

    .line 2568
    .restart local v14    # "level":Ljava/lang/String;
    :cond_20
    const/4 v4, 0x0

    sput v4, Lcom/syu/bt/App_Bt;->mPhoneBatterty:I

    goto :goto_b

    .line 2571
    :cond_21
    const/4 v4, 0x0

    sput v4, Lcom/syu/bt/App_Bt;->mPhoneBatterty:I

    goto :goto_b

    .line 2577
    .end local v14    # "level":Ljava/lang/String;
    :pswitch_a
    if-eqz p2, :cond_22

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_22

    .line 2578
    const/4 v4, 0x0

    aget v4, p2, v4

    sput v4, Lcom/syu/bt/App_Bt;->mPhoneCoding:I

    .line 2580
    :cond_22
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_BtAv()V

    goto/16 :goto_0

    .line 2583
    :pswitch_b
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_25

    .line 2584
    if-eqz p2, :cond_24

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_24

    .line 2586
    const/4 v4, 0x2

    :try_start_2
    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2587
    const-string v4, "talk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 33 notify_Bt U_TALK_TIME strs[1] = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ints[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPhone_callin_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPhone2_CALL_NUMBER = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    sget v7, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2589
    .restart local v11    # "i":I
    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-ne v4, v11, :cond_23

    const/4 v4, 0x1

    aget-object v4, p4, v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    sget v6, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2590
    const/4 v4, 0x1

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x64

    div-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    .line 2592
    :cond_23
    const-string v4, "talk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 44 notify_Bt U_TALK_TIME sPhone2_talktime = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    if-eqz v4, :cond_24

    .line 2596
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget v9, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget v9, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 2608
    .end local v11    # "i":I
    :cond_24
    :goto_c
    const-string v4, "hfp3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " ** 11 Ipc_new U_TALK_TIME updateCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPhone2_talktime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->sPhone2_talktime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2603
    :cond_25
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    if-eqz v4, :cond_24

    .line 2604
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, 0x64

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v24, v0

    .line 2605
    .local v24, "value":I
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    div-int/lit8 v9, v24, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    rem-int/lit8 v9, v24, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 2612
    .end local v24    # "value":I
    :pswitch_c
    const-string v4, ""

    sput-object v4, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    .line 2613
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 2614
    const/4 v4, 0x0

    aget-object v4, p4, v4

    sput-object v4, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    .line 2615
    :cond_26
    const-string v4, "bttt"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ipc PHONE_OPERATOR operator = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2623
    :pswitch_d
    if-eqz p4, :cond_27

    .line 2624
    const-string v4, "hfp4"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 222 U_PHONE_NAME 7 strs = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    const-string v4, "hfp4"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 111 U_PHONE_NAME 7 mListHasPaired = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_27

    .line 2627
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 2629
    const/4 v4, 0x0

    :try_start_3
    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2630
    .restart local v11    # "i":I
    if-ltz v11, :cond_27

    const/4 v4, 0x1

    if-gt v11, v4, :cond_27

    .line 2631
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    aput-object v5, v4, v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2639
    .end local v11    # "i":I
    :cond_27
    :goto_d
    const-string v4, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 666 U_PHONE_NAME 7 sPhone2_NAME = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2644
    :pswitch_e
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/util/BTUtil;->isRightDevices()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2646
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_31

    .line 2647
    if-eqz p4, :cond_2a

    .line 2648
    const-string v4, "con3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 111 U_PHONE_MAC_ADDR 6 strs = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2a

    .line 2651
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 2653
    const/4 v4, 0x0

    :try_start_4
    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2654
    .restart local v11    # "i":I
    if-ltz v11, :cond_2a

    const/4 v4, 0x1

    if-gt v11, v4, :cond_2a

    .line 2655
    const-string v4, "con3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 222 U_PHONE_MAC_ADDR 6 i = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iPhoneSwitchStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_2a

    .line 2658
    sget v4, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    if-lez v4, :cond_30

    .line 2659
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2f

    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2f

    .line 2661
    sget v4, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    if-nez v11, :cond_28

    const/4 v4, 0x1

    aget-object v4, p4, v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    :cond_28
    const/4 v4, 0x1

    if-ne v11, v4, :cond_2b

    const/4 v4, 0x1

    aget-object v4, p4, v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2662
    :cond_29
    const/4 v4, 0x2

    sput v4, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2774
    .end local v11    # "i":I
    :cond_2a
    :goto_e
    const-string v4, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 555 U_PHONE_MAC_ADDR 6 sPhone2_MAC = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    const-string v4, "save111"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " --- 11 mRunnable_scanDB  U_PHONE_MAC_ADDR 6 strs = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v4, v4, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 2778
    const/4 v4, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v5, v5, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2663
    .restart local v11    # "i":I
    :cond_2b
    if-nez v11, :cond_2c

    const/4 v4, 0x1

    :try_start_5
    aget-object v4, p4, v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    if-ne v11, v4, :cond_2e

    const/4 v4, 0x1

    aget-object v4, p4, v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    :cond_2d
    sget v4, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2e

    .line 2665
    const-string v4, "con3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 333 U_PHONE_MAC_ADDR 6 i = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iPhoneSwitchStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    const/4 v4, 0x0

    sput v4, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    .line 2667
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    .line 2668
    .restart local v20    # "str":Ljava/lang/String;
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 2669
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v20, v4, v5

    .line 2670
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    .line 2671
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 2672
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v20, v4, v5

    .line 2673
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v4}, Lcom/syu/bt/db/Bt_Info;->clearAllCallLog()V

    .line 2674
    const/4 v4, 0x0

    sput v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id_p:I

    .line 2678
    const/4 v4, 0x0

    new-instance v5, Lcom/syu/app/ipc/Ipc_New$4$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/syu/app/ipc/Ipc_New$4$2;-><init>(Lcom/syu/app/ipc/Ipc_New$4;)V

    .line 2711
    const-wide/16 v6, 0x1f4

    .line 2678
    invoke-static {v4, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 2713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iget-object v4, v4, Lcom/syu/app/ipc/Ipc_New;->mRunnable_updateHistoryList:Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 2714
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iget-object v5, v5, Lcom/syu/app/ipc/Ipc_New;->mRunnable_updateHistoryList:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-static {v4, v5, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_e

    .line 2768
    .end local v11    # "i":I
    .end local v20    # "str":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_e

    .line 2716
    .restart local v11    # "i":I
    :cond_2e
    const/4 v4, 0x0

    sput v4, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    goto/16 :goto_e

    .line 2718
    :cond_2f
    const/4 v4, 0x0

    sput v4, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    goto/16 :goto_e

    .line 2719
    :cond_30
    sget v4, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    if-nez v4, :cond_2a

    .line 2720
    const-string v4, "his10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 555 U_PHONE_MAC_ADDR 6 strs[1] = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPhone2_MAC[i] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    aput-object v5, v4, v11

    .line 2764
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Lcom/syu/app/ipc/Ipc_New;->getNamebyMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_e

    .line 2780
    .end local v11    # "i":I
    :cond_31
    const/4 v4, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v5, v5, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2785
    :pswitch_f
    if-eqz p4, :cond_32

    if-eqz p2, :cond_32

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_32

    .line 2786
    const-string v4, "sfth3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 333 HFP_STATUS  strs = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ints[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPhone_callin_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_32
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 2788
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2790
    .restart local v11    # "i":I
    if-ltz v11, :cond_39

    const/4 v4, 0x1

    if-gt v11, v4, :cond_39

    .line 2791
    if-eqz p2, :cond_39

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_39

    .line 2792
    const-string v4, "hfp10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 33 HFP_STATUS ints[0] = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_33

    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v4, v4, v11

    const/4 v5, 0x3

    if-ge v4, v5, :cond_33

    .line 2807
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bShowPairedBt:Z

    if-eqz v4, :cond_33

    .line 2808
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->queryPairList()V

    .line 2814
    :cond_33
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v5, 0x0

    aget v5, p2, v5

    aput v5, v4, v11

    .line 2815
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v4, v4, v11

    const/4 v5, 0x3

    if-le v4, v5, :cond_34

    .line 2817
    const-string v4, "hfp10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 44 HFP_STATUS  i = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " App_Bt.sPhone_callin_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/16 v5, 0xff

    if-ne v4, v5, :cond_3a

    .line 2819
    sput v11, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    .line 2820
    sput v11, Lcom/syu/bt/App_Bt;->sPhone_callin_id_p:I

    .line 2821
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v4, v4, v11

    sput-object v4, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 2826
    :cond_34
    :goto_f
    const-string v4, "hfp10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 44 HFP_STATUS  bPhone2_HFP = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x3

    if-gt v4, v5, :cond_35

    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x3

    if-gt v4, v5, :cond_35

    .line 2828
    const/16 v4, 0xff

    sput v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    .line 2830
    :cond_35
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v4, v4, v11

    const/4 v5, 0x3

    if-gt v4, v5, :cond_36

    .line 2831
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bPhone2_dialThrdPhone:Z

    if-eqz v4, :cond_36

    .line 2832
    const/4 v4, 0x0

    sput-boolean v4, Lcom/syu/bt/App_Bt;->bPhone2_dialThrdPhone:Z

    .line 2838
    :cond_36
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-le v4, v5, :cond_3b

    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/lit8 v19, v4, -0x1

    .line 2839
    .local v19, "state":I
    :goto_10
    const/4 v4, 0x3

    move/from16 v0, v19

    if-lt v0, v4, :cond_37

    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_37

    .line 2840
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v5, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x3

    if-lt v4, v5, :cond_37

    .line 2841
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v5, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v4, v4, v5

    add-int/lit8 v19, v4, -0x1

    .line 2845
    :cond_37
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v4, v4, v11

    sget-object v5, Lcom/syu/app/ipc/Ipc_New;->HFP_state:[I

    aget v5, v5, v11

    if-eq v4, v5, :cond_38

    .line 2846
    sget-object v4, Lcom/syu/app/ipc/Ipc_New;->HFP_state:[I

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v5, v5, v11

    aput v5, v4, v11

    .line 2847
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    sput v4, Lcom/lsec/core/ipc/module/main/Bt;->sLastPhoneState:I

    .line 2848
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aput v19, v4, v5

    .line 2849
    const-string v4, "hfp10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 111 HFP_STATUS Bt.DATA[FinalBt.U_PHONE_STATE] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " App_Bt.sPhone_callin_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v4, v11}, Lcom/syu/app/ipc/Ipc_New;->phoneState_2(I)V

    .line 2851
    sget-object v4, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 2855
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-boolean v4, v4, Lcom/syu/bt/App_Bt;->bFloatViewShow:Z

    if-eqz v4, :cond_38

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_38

    .line 2856
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->showFloatBtn(Z)V

    .line 2859
    :cond_38
    const-string v4, "hfp10"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 HFP_STATUS state = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bPhone2_HFP[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bPhone2_HFP[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U_PHONE_STATE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    .end local v11    # "i":I
    .end local v19    # "state":I
    :cond_39
    const-string v4, "pop333"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  ** 444 HFP_STATUS bPhone2_HFP = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "* "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2822
    .restart local v11    # "i":I
    :cond_3a
    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eq v4, v11, :cond_34

    .line 2823
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->popSwitchPhone(Z)V

    goto/16 :goto_f

    .line 2838
    :cond_3b
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/lit8 v19, v4, -0x1

    goto/16 :goto_10

    .line 2851
    .restart local v19    # "state":I
    :cond_3c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/syu/bt/InterfaceBt;

    .line 2852
    .restart local v12    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v12}, Lcom/syu/bt/InterfaceBt;->phoneState()V

    goto/16 :goto_11

    .line 2869
    .end local v11    # "i":I
    .end local v12    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    .end local v19    # "state":I
    :pswitch_10
    if-eqz p2, :cond_3d

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_3d

    .line 2870
    const-string v4, "sfth3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 111 Ipc A2DP_STATUS ints.length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ints[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :goto_12
    if-nez p4, :cond_3e

    .line 2874
    const-string v4, "a2dp"

    const-string v5, " 000 Ipc A2DP_STATUS strs==null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :goto_13
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2881
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2882
    .restart local v11    # "i":I
    if-ltz v11, :cond_0

    const/4 v4, 0x1

    if-gt v11, v4, :cond_0

    .line 2883
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_0

    .line 2884
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_A2DP:[I

    const/4 v5, 0x0

    aget v5, p2, v5

    aput v5, v4, v11

    .line 2885
    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 2886
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v4, v4, v11

    sput-object v4, Lcom/syu/bt/App_Bt;->bPhone2_A2DP_Mac:Ljava/lang/String;

    goto/16 :goto_0

    .line 2872
    .end local v11    # "i":I
    :cond_3d
    const-string v4, "a2dp"

    const-string v5, " 222 Ipc A2DP_STATUS ints==null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2876
    :cond_3e
    const-string v4, "a2dp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 Ipc A2DP_STATUS strs.length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const-string v4, "sfth3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 111 Ipc A2DP_STATUS strs = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2893
    :pswitch_11
    const-string v4, "pop333"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 WAITING_NUMBER strs = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    const/4 v4, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2896
    const/4 v4, 0x0

    :try_start_6
    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2897
    .restart local v11    # "i":I
    const-string v4, "hold"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 222 WAITING_NUMBER bPhone2_HFP[i] = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_WAITING_NUMBER:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    aput-object v5, v4, v11

    .line 2899
    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-ne v4, v11, :cond_0

    .line 2900
    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v4, v4, v11

    const/4 v5, 0x3

    if-le v4, v5, :cond_40

    const/4 v4, 0x1

    aget-object v4, p4, v4

    if-eqz v4, :cond_40

    .line 2901
    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3f

    .line 2902
    const/4 v4, 0x1

    aget-object v4, p4, v4

    sput-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 2903
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    goto/16 :goto_0

    .line 2909
    .end local v11    # "i":I
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 2905
    .restart local v11    # "i":I
    :cond_3f
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    goto/16 :goto_0

    .line 2907
    :cond_40
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 2917
    .end local v11    # "i":I
    :pswitch_12
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_0

    .line 2921
    const-string v4, "hfp100"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 333 Ipc SUPPORT_MULTI ints = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bLinkTwoPhone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2927
    :pswitch_13
    if-nez p4, :cond_42

    .line 2928
    const-string v4, "pddd"

    const-string v5, " 000 Ipc_New PIN_CODE_PAIR_REQUEST strs==null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :goto_14
    if-eqz p4, :cond_41

    .line 2934
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_41

    .line 2935
    const/4 v4, 0x0

    aget-object v4, p4, v4

    sput-object v4, Lcom/syu/bt/App_Bt;->pinCode:Ljava/lang/String;

    .line 2936
    const/4 v4, 0x2

    aget-object v4, p4, v4

    sput-object v4, Lcom/syu/bt/App_Bt;->pinPhoneName:Ljava/lang/String;

    .line 2939
    :cond_41
    const/4 v4, 0x1

    sput-boolean v4, Lcom/syu/bt/App_Bt;->pinStatus:Z

    .line 2940
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->popMsgSet(Z)V

    goto/16 :goto_0

    .line 2930
    :cond_42
    const-string v4, "pddd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 Ipc_New PIN_CODE_PAIR_REQUEST strs.length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const-string v4, "pddd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 111 Ipc_New PIN_CODE_PAIR_REQUEST strs = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  App_Bt.pinStatus= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/syu/bt/App_Bt;->pinStatus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2944
    :pswitch_14
    const-string v4, "pop333"

    const-string v5, " *-*00 Ipc_New BT ANSWERING_DEVICE   "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2946
    const-string v4, "pop333"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " *-*11 ANSWERING_DEVICE  strs.length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " strs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syu/app/ipc/Ipc_New$4;->this$0:Lcom/syu/app/ipc/Ipc_New;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/syu/app/ipc/Ipc_New;->getStrList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPhone_callin_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    const/4 v4, 0x0

    aget-object v4, p4, v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2948
    const/4 v4, 0x0

    aget-object v4, p4, v4

    sput-object v4, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 2949
    const/4 v4, 0x0

    sput v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    .line 2950
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_WAITING_NUMBER:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sput-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 2956
    :cond_43
    :goto_15
    const-string v4, "pop333"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " *-*22 ANSWERING_DEVICE  Bt.sPhoneNumberHoldOn = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPhone2_WAITING_NUMBER = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_WAITING_NUMBER:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/syu/bt/App_Bt;->sPhone2_WAITING_NUMBER:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id_p:I

    sget v5, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eq v4, v5, :cond_0

    .line 2958
    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    sput v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id_p:I

    .line 2959
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    sget v5, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget-object v4, v4, v5

    sput-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 2960
    const-string v4, "pop33"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " *-*33 ANSWERING_DEVICE  sPhoneNumber = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v4, :cond_46

    const/4 v4, 0x1

    :goto_16
    aget v4, v5, v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_47

    .line 2963
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->popSwitchPhone(Z)V

    .line 2966
    :goto_17
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_44

    .line 2967
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 2968
    .local v16, "pageSwitchPhone":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v16, :cond_44

    .line 2969
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v18

    check-cast v18, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    .line 2970
    .local v18, "page_PopSwitchPhone":Lcom/syu/bt/page/pop/Page_PopSwitchPhone;
    if-eqz v18, :cond_44

    .line 2971
    invoke-virtual/range {v18 .. v18}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->updateBtnAccept()V

    .line 2972
    invoke-virtual/range {v18 .. v18}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->updatePhoneName()V

    .line 2976
    .end local v16    # "pageSwitchPhone":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v18    # "page_PopSwitchPhone":Lcom/syu/bt/page/pop/Page_PopSwitchPhone;
    :cond_44
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    if-eqz v4, :cond_49

    .line 2977
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_48

    .line 2978
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    goto/16 :goto_0

    .line 2951
    :cond_45
    const/4 v4, 0x0

    aget-object v4, p4, v4

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2952
    const/4 v4, 0x0

    aget-object v4, p4, v4

    sput-object v4, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 2953
    const/4 v4, 0x1

    sput v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    .line 2954
    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_WAITING_NUMBER:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sput-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    goto/16 :goto_15

    .line 2962
    :cond_46
    const/4 v4, 0x0

    goto :goto_16

    .line 2965
    :cond_47
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->popSwitchPhone(Z)V

    goto :goto_17

    .line 2980
    :cond_48
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    goto/16 :goto_0

    .line 2982
    :cond_49
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    goto/16 :goto_0

    .line 2990
    :pswitch_15
    if-eqz p4, :cond_0

    .line 2991
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 2992
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->popPhoneSMS(Z)V

    .line 2993
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JPage;

    .line 2994
    .local v15, "pageSMS":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v15, :cond_0

    .line 2995
    invoke-virtual {v15}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v17

    check-cast v17, Lcom/syu/bt/page/pop/Page_PopSms;

    .line 2996
    .local v17, "page_PopSms":Lcom/syu/bt/page/pop/Page_PopSms;
    if-eqz v17, :cond_0

    .line 2997
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 2998
    const/4 v4, 0x0

    aget-object v4, p4, v4

    const/4 v5, 0x2

    aget-object v5, p4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/syu/bt/page/pop/Page_PopSms;->updateSms(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3000
    :cond_4a
    const/4 v4, 0x1

    aget-object v4, p4, v4

    const/4 v5, 0x2

    aget-object v5, p4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/syu/bt/page/pop/Page_PopSms;->updateSms(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3027
    .end local v15    # "pageSMS":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v17    # "page_PopSms":Lcom/syu/bt/page/pop/Page_PopSms;
    :cond_4b
    const-string v4, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 222 U_PHONE_NUMBERstrs[0]!=null strs[0].length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3031
    :cond_4c
    const/4 v4, 0x2

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3032
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 3033
    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "BT_23NEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 3034
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4e

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4e

    .line 3035
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4e

    .line 3034
    const/4 v4, 0x0

    :goto_18
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 3037
    .local v13, "isTALK":Ljava/lang/Boolean;
    const-string v4, "gdy14"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " Ipc U_PHONE_NUMBER U_PHONE_STATE = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bPopBtShow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-boolean v6, v6, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4f

    .line 3040
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-boolean v4, v4, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    if-nez v4, :cond_4d

    .line 3041
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    .line 3050
    .end local v13    # "isTALK":Ljava/lang/Boolean;
    :cond_4d
    :goto_19
    const/4 v4, 0x1

    sput-boolean v4, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    goto/16 :goto_1

    .line 3034
    :cond_4e
    const/4 v4, 0x1

    goto :goto_18

    .line 3044
    .restart local v13    # "isTALK":Ljava/lang/Boolean;
    :cond_4f
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 3045
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    goto :goto_19

    .line 3048
    .end local v13    # "isTALK":Ljava/lang/Boolean;
    :cond_50
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    goto :goto_19

    .line 3051
    :cond_51
    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3052
    const/4 v4, 0x0

    sput-boolean v4, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    .line 3054
    const-string v4, "hfp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 000 U_PHONE_NUMBER strs = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3056
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/App_Bt;->pop3rdPhone(Z)V

    goto/16 :goto_1

    .line 3067
    :cond_52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/syu/bt/InterfaceBt;

    .line 3068
    .restart local v12    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v12, v0, v1, v2, v3}, Lcom/syu/bt/InterfaceBt;->onNotify(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2632
    .end local v12    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :catch_3
    move-exception v4

    goto/16 :goto_d

    .line 2599
    :catch_4
    move-exception v4

    goto/16 :goto_c

    .line 2330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method
