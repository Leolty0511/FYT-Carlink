.class Lcom/syu/app/ipc/Bt_IpcObj$2;
.super Ljava/lang/Object;
.source "Bt_IpcObj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Bt_IpcObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Bt_IpcObj;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Bt_IpcObj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Bt_IpcObj$2;->this$0:Lcom/syu/app/ipc/Bt_IpcObj;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 693
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v9, :cond_0

    .line 695
    const-string v9, "save111"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " --- 00 mRunnable_scanDB 00 Bt.sPhoneAddr = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sPhoneAddr1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-object v9, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v9, v9, v13

    sput-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    .line 699
    :cond_0
    const-string v9, "save111"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " --- 00 mRunnable_scanDB 00 Bt.sPhoneAddr = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 702
    const/4 v3, 0x1

    .line 703
    .local v3, "handle":Z
    sput-boolean v12, Lcom/syu/bt/App_Bt;->bHaveScanDB:Z

    .line 704
    const-string v9, "BOOK"

    const-string v10, "-----------------mRunnable_scanDB----------------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "bt_phone_addr"

    invoke-virtual {v9, v10}, Lcom/lsec/core/util/MySharePreference2;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "addr":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "bt_phone_addr1"

    invoke-virtual {v9, v10}, Lcom/lsec/core/util/MySharePreference2;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "addr1":Ljava/lang/String;
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v9, :cond_a

    .line 708
    const-string v9, "save111"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " --- 11 mRunnable_scanDB addr = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sPhoneAddr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " addr1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sPhone2_MAC[1] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v10, "000000000000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v9, v9, v12

    const-string v10, "000000000000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 710
    const-string v9, "save111"

    const-string v10, " --- 00 mRunnable_scanDB del null "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_1
    :goto_0
    const-string v9, "BOOK"

    const-string v10, "-----------------mRunnable_scanDB time----------------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "YL_BT_1920"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-boolean v9, Lcom/syu/bt/App_Bt;->bFavcontact:Z

    if-eqz v9, :cond_4

    .line 810
    :cond_2
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_NEW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_OEM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 811
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/App_Bt;->readContactHeadFromFile()V

    .line 815
    :cond_4
    :goto_1
    const-string v9, "BOOK1"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " 00 Bt_ipc  mRunnable_scanDB sPhoneAddr = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mListContact.size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v11, v11, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bAutoSavePhoneBook = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_5

    .line 817
    const-string v9, "BOOK"

    const-string v10, "11 Bt_ipc----mRunnable_scanDB time----------------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v11, ":"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/syu/bt/util/BTUtil;->readFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 819
    .local v2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const-string v9, "save11"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " 22 Bt_ipc  mRunnable_scanDB sPhoneAddr = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz v2, :cond_5

    .line 821
    const-string v9, "save11"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " 22 Bt_ipc  mRunnable_scanDB data.toString = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v9, :cond_e

    .line 823
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_c

    .line 844
    .end local v2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/syu/app/ipc/Bt_IpcObj$2;->this$0:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-static {v9}, Lcom/syu/app/ipc/Bt_IpcObj;->access$0(Lcom/syu/app/ipc/Bt_IpcObj;)V

    .line 852
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/syu/bt/db/Bt_Info;->handlerPairedBt(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    sget-object v9, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_f

    .line 858
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "addr1":Ljava/lang/String;
    .end local v3    # "handle":Z
    :cond_6
    return-void

    .line 712
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v1    # "addr1":Ljava/lang/String;
    .restart local v3    # "handle":Z
    :cond_7
    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "000000000000"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 713
    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v10, "000000000000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    sget-object v9, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v9, v9, v12

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 714
    const-string v9, "save111"

    const-string v10, " --- 00 mRunnable_scanDB del 11 "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "bt_phone_addr"

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 718
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v10, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v10, v10, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    sget-object v11, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v11, v11, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {v9, v10, v11}, Lcom/syu/bt/db/Bt_Info;->saveDownloadContacts(Ljava/util/List;Ljava/util/List;)V

    .line 720
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v5, "mListHis_1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v6, "mListHis_2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 725
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 726
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 727
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 728
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 729
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 730
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 731
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 732
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 733
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v9, v5, v6}, Lcom/syu/bt/db/Bt_Info;->saveCallLog(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 734
    .end local v5    # "mListHis_1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v6    # "mListHis_2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_8
    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "000000000000"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 735
    sget-object v9, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v9, v9, v12

    const-string v10, "000000000000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v9, v9, v12

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 736
    const-string v9, "save111"

    const-string v10, " --- 00 mRunnable_scanDB del 22 "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "bt_phone_addr1"

    sget-object v11, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 741
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v10, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v10, v10, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    sget-object v11, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v11, v11, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {v9, v10, v11}, Lcom/syu/bt/db/Bt_Info;->saveDownloadContacts(Ljava/util/List;Ljava/util/List;)V

    .line 744
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .restart local v5    # "mListHis_1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .restart local v6    # "mListHis_2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 748
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 749
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 750
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 751
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 752
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 753
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 754
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 755
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 756
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v9, v5, v6}, Lcom/syu/bt/db/Bt_Info;->saveCallLog(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 757
    .end local v5    # "mListHis_1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .end local v6    # "mListHis_2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_9
    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v9, v9, v12

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 758
    const/4 v3, 0x1

    .line 759
    sput-boolean v12, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    .line 760
    sput-boolean v13, Lcom/syu/bt/App_Bt;->bHasDownBook:Z

    .line 761
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v9, v0}, Lcom/syu/bt/db/Bt_Info;->clearAllContacts(Ljava/lang/String;)V

    .line 762
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "bt_phone_addr"

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/syu/bt/util/SpUtil;->clearSaveContact()Z

    .line 764
    const-string v9, "save11"

    const-string v10, " 00 clearAllCallLog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v9}, Lcom/syu/bt/db/Bt_Info;->clearAllCallLog()V

    .line 766
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 767
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 768
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 769
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 771
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "bt_phone_addr1"

    sget-object v11, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 773
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 774
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 775
    const-string v9, "save11"

    const-string v10, " 00  mListContact2.clear "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 778
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "sms_function"

    sget-boolean v11, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/util/MySharePreference2;->saveBooleanValue(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 780
    :cond_a
    sget-object v9, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 782
    const/4 v3, 0x1

    .line 783
    sput-boolean v12, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    .line 784
    sput-boolean v13, Lcom/syu/bt/App_Bt;->bHasDownBook:Z

    .line 785
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v9, v0}, Lcom/syu/bt/db/Bt_Info;->clearAllContacts(Ljava/lang/String;)V

    .line 786
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "bt_phone_addr"

    sget-object v11, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-static {}, Lcom/syu/bt/util/SpUtil;->clearSaveContact()Z

    .line 789
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v9}, Lcom/syu/bt/db/Bt_Info;->clearAllCallLog()V

    .line 790
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 791
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 792
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 793
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 806
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v10, "sms_function"

    sget-boolean v11, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    invoke-virtual {v9, v10, v11}, Lcom/lsec/core/util/MySharePreference2;->saveBooleanValue(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 813
    :cond_b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/App_Bt;->readFavContactFromFile()V

    goto/16 :goto_1

    .line 823
    .restart local v2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 824
    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v10, 0x281c

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 825
    .local v8, "name":Ljava/lang/String;
    const-string v10, "hfp2"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 826
    sget-object v10, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v10, v10, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 828
    :cond_d
    sget-object v10, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v10, v10, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 832
    .end local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "name":Ljava/lang/String;
    :cond_e
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 854
    .end local v2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/syu/bt/InterfaceBt;

    .line 855
    .local v4, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v4}, Lcom/syu/bt/InterfaceBt;->resetList()V

    goto/16 :goto_4
.end method
