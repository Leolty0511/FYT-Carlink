.class public Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;
.super Ljava/lang/Object;
.source "Bt_Info.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/db/Bt_Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableSaveDownloadContacts"
.end annotation


# instance fields
.field private isException:Z

.field private listSave:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/syu/bt/db/Bt_Info;


# direct methods
.method public constructor <init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1267
    .local p2, "listSave":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->this$0:Lcom/syu/bt/db/Bt_Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->isException:Z

    .line 1268
    iput-object p2, p0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->listSave:Ljava/util/List;

    .line 1269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1273
    const-string v2, "BOOK"

    const-string v3, "------------------RunnableSaveDownloadContacts-----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const-string v2, "gdy14"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 Bt_Info  RunnableSaveDownloadContacts bSaveContactsToUrl = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    if-nez v2, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    const-string v2, "gdy14"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 Bt_Info  RunnableSaveDownloadContacts bSaveContactsToUrl= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    sput-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    .line 1280
    const/4 v10, 0x1

    .line 1281
    .local v10, "bNotEmpty":Z
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1282
    const/4 v10, 0x0

    .line 1284
    :cond_2
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-nez v2, :cond_3

    .line 1285
    sget-object v2, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1291
    :cond_3
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "raw_contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1292
    .local v12, "cursor":Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    .local v16, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1295
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .local v11, "cnt":I
    const/4 v14, 0x0

    .line 1297
    .local v14, "i":I
    :cond_4
    const-string v2, "gdy14"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 RunnableSaveDownloadContacts Bt.sPhoneAddr = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Bt_IpcObj.sPhoneAddrWrite = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    if-eqz v10, :cond_8

    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_8

    .line 1318
    .end local v11    # "cnt":I
    .end local v14    # "i":I
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->listSave:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    .line 1320
    .local v17, "size":I
    if-eqz v10, :cond_6

    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    .line 1321
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3
    move/from16 v0, v17

    if-lt v14, v0, :cond_b

    .line 1333
    .end local v14    # "i":I
    :cond_6
    const-string v2, "BOOK"

    const-string v3, "------------------Save Contacts In Url-----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    sget-object v2, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1339
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-nez v2, :cond_0

    .line 1340
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->isException:Z

    if-eqz v2, :cond_0

    .line 1341
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_save_failed"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1285
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v16    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v17    # "size":I
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/syu/bt/InterfaceBt;

    .line 1286
    .local v15, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_saving"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/syu/bt/InterfaceBt;->showPostLoading(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1300
    .end local v15    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    .restart local v11    # "cnt":I
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "i":I
    .restart local v16    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_8
    :try_start_3
    const-string v2, "gdy14"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11 RunnableSaveDownloadContacts bNotEmpty = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    if-eqz v10, :cond_5

    .line 1304
    const-string v2, "raw_contact_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1305
    .local v8, "Id":J
    const-string v2, "gdy14"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 RunnableSaveDownloadContacts Id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    add-int/lit8 v2, v11, -0x1

    if-eq v14, v2, :cond_9

    rem-int/lit8 v2, v14, 0x50

    if-nez v2, :cond_a

    .line 1308
    :cond_9
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1309
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1311
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 1312
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_2

    .line 1322
    .end local v8    # "Id":J
    .end local v11    # "cnt":I
    .restart local v17    # "size":I
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->this$0:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->listSave:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v14}, Lcom/syu/bt/db/Bt_Info;->access$1(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;Ljava/util/ArrayList;I)V

    .line 1323
    rem-int/lit8 v2, v14, 0x28

    if-eqz v2, :cond_c

    add-int/lit8 v2, v17, -0x1

    if-ne v14, v2, :cond_d

    .line 1324
    :cond_c
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1325
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1321
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1329
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v14    # "i":I
    .end local v16    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v17    # "size":I
    :catch_0
    move-exception v13

    .line 1330
    .local v13, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1331
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->isException:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1333
    const-string v2, "BOOK"

    const-string v3, "------------------Save Contacts In Url-----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    sget-object v2, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1339
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-nez v2, :cond_0

    .line 1340
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->isException:Z

    if-eqz v2, :cond_0

    .line 1341
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_save_failed"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1334
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/syu/bt/InterfaceBt;

    .line 1335
    .restart local v15    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Lcom/syu/bt/InterfaceBt;->disPostLoading(I)V

    goto :goto_5

    .line 1332
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :catchall_0
    move-exception v2

    .line 1333
    const-string v3, "BOOK"

    const-string v4, "------------------Save Contacts In Url-----------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1339
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-nez v3, :cond_f

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-nez v3, :cond_f

    .line 1340
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;->isException:Z

    if-eqz v3, :cond_f

    .line 1341
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v3

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_save_failed"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1344
    :cond_f
    throw v2

    .line 1334
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/syu/bt/InterfaceBt;

    .line 1335
    .restart local v15    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Lcom/syu/bt/InterfaceBt;->disPostLoading(I)V

    goto :goto_6

    .line 1334
    .end local v15    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v17    # "size":I
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/syu/bt/InterfaceBt;

    .line 1335
    .restart local v15    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Lcom/syu/bt/InterfaceBt;->disPostLoading(I)V

    goto/16 :goto_4

    .line 1314
    .end local v15    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    .end local v17    # "size":I
    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method
