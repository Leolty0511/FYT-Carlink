.class public Lcom/syu/bt/page/Page_History;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_History.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_History$MyTextWatcher;
    }
.end annotation


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field private bRoolKey:Z

.field bTop:Z

.field private checkPhoneNumber2:Ljava/lang/String;

.field public hisPhone_id:I

.field public hisPhone_mac:Ljava/lang/String;

.field public iTypeHistorySelect:I

.field public mGridClickDial:Z

.field mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

.field public mHisRefresh:Lcom/lsec/core/frame/ctrl/JButton;

.field private mPosFocusCpy1:I

.field private mPosFocusCpy2:I

.field private mPosMoveTo1:I

.field private mPosMoveTo2:I

.field mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

.field mapSelect:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nightBtn:[I

.field private nightText:[I

.field private nightView:[I

.field public random:Ljava/util/Random;

.field public str_ContIcon:[Ljava/lang/String;

.field public tvHisPhone11:Lcom/lsec/core/frame/ctrl/JText;

.field public tvHisPhone11_p:Lcom/lsec/core/frame/ctrl/JText;

.field public tvHisPhone12:Lcom/lsec/core/frame/ctrl/JText;

.field public tvHisPhone12_p:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

.field public vHistory_Phone:Lcom/lsec/core/frame/ctrl/JButton;

.field vNoData:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 4
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 81
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 52
    iput v1, p0, Lcom/syu/bt/page/Page_History;->iTypeHistorySelect:I

    .line 53
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_History;->mGridClickDial:Z

    .line 64
    iput v1, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    .line 65
    iput v1, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy1:I

    .line 67
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_History;->bRoolKey:Z

    .line 68
    iput v1, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    .line 69
    iput v1, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy2:I

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    .line 72
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_History;->bTop:Z

    .line 73
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 75
    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->nightBtn:[I

    .line 77
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->nightView:[I

    .line 78
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->nightText:[I

    .line 264
    const/16 v0, 0xff

    iput v0, p0, Lcom/syu/bt/page/Page_History;->hisPhone_id:I

    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->hisPhone_mac:Ljava/lang/String;

    .line 577
    new-instance v0, Lcom/syu/bt/page/Page_History$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_History$1;-><init>(Lcom/syu/bt/page/Page_History;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    .line 593
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Cont_icon1"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Cont_icon2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Cont_icon3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Cont_icon4"

    aput-object v2, v0, v1

    const-string v1, "Cont_icon5"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->str_ContIcon:[Ljava/lang/String;

    .line 594
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->random:Ljava/util/Random;

    .line 82
    iput-object p2, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    .line 83
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x282a
        0x282b
        0x282c
        0x282d
        0x2744
        0x2745
        0x274e
        0x2746
        0x274c
        0x274d
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x2988
        0x2989
        0x298a
        0x273d
    .end array-data

    .line 78
    :array_2
    .array-data 4
        0x27e8
        0x27e9
        0x27ea
        0x27eb
    .end array-data
.end method


# virtual methods
.method public GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 10
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    const/16 v6, 0x281e

    const/16 v9, 0x2838

    const/16 v8, 0x283b

    .line 1092
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v1

    .line 1093
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1095
    :sswitch_0
    iget-boolean v5, p0, Lcom/syu/bt/page/Page_History;->mGridClickDial:Z

    if-eqz v5, :cond_0

    .line 1096
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1099
    sget-boolean v5, Lcom/syu/bt/App_Bt;->hideBtnWhenDisconnect:Z

    if-eqz v5, :cond_1

    .line 1100
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_0

    .line 1101
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1104
    :cond_1
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v4

    .line 1105
    .local v4, "position":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1106
    .local v2, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1107
    .local v3, "num":Ljava/lang/String;
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1109
    .local v0, "date":Ljava/lang/String;
    const/4 v5, -0x1

    iput v5, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    .line 1111
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "HAODA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1113
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1114
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    .line 1116
    :cond_2
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1117
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1120
    :cond_3
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v5, :cond_0

    .line 1121
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1124
    :cond_4
    const-string v5, "sfth"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 00 Page_His dial num = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " date= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1127
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1128
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1130
    const-string v6, "sfth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, " 11 Page_His dial num = "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " sPhone2_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_5

    .line 1133
    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v6, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v5, v5, v6

    sput-object v5, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 1134
    :cond_5
    iget-object v5, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1144
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "num":Ljava/lang/String;
    .end local v4    # "position":I
    :sswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1147
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v4

    .line 1148
    .restart local v4    # "position":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1149
    .restart local v2    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1150
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1093
    nop

    :sswitch_data_0
    .sparse-switch
        0x27e0 -> :sswitch_1
        0x2831 -> :sswitch_0
    .end sparse-switch
.end method

.method public GridLongClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 7
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 1158
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 1159
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1161
    :pswitch_0
    sget-boolean v3, Lcom/syu/bt/App_Bt;->hideBtnWhenDisconnect:Z

    if-nez v3, :cond_0

    .line 1162
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v2

    .line 1163
    .local v2, "position":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1164
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1165
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1166
    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    const/4 v4, 0x4

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_is_delete_onerecord"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_0

    .line 1159
    nop

    :pswitch_data_0
    .packed-switch 0x2831
        :pswitch_0
    .end packed-switch
.end method

.method public GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 6
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1012
    iget-object v3, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1013
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 1014
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 1039
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 1016
    .restart local v0    # "id":I
    :sswitch_0
    iget-object v3, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1022
    iget-boolean v3, p0, Lcom/syu/bt/page/Page_History;->mGridClickDial:Z

    if-nez v3, :cond_0

    .line 1023
    const/16 v3, 0x283e

    invoke-virtual {p2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1024
    iput-boolean v5, p0, Lcom/syu/bt/page/Page_History;->mGridClickDial:Z

    .line 1026
    :cond_2
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_3

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isXCConfig()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1027
    :cond_3
    iput-boolean v5, p0, Lcom/syu/bt/page/Page_History;->mGridClickDial:Z

    goto :goto_0

    .line 1016
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1017
    .local v1, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1018
    .local v2, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_1

    .line 1019
    invoke-virtual {p0, v2, p2, p3}, Lcom/syu/bt/page/Page_History;->pressGridItem1(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto :goto_1

    .line 1031
    .end local v1    # "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    .end local v2    # "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    :sswitch_1
    iget-object v3, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1032
    .restart local v1    # "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1033
    .restart local v2    # "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_5

    .line 1034
    invoke-virtual {p0, v2, p2, p3}, Lcom/syu/bt/page/Page_History;->pressGridItem2(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto :goto_2

    .line 1014
    :sswitch_data_0
    .sparse-switch
        0x27e0 -> :sswitch_1
        0x2831 -> :sswitch_0
    .end sparse-switch
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 39
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v12

    .line 599
    .local v12, "id":I
    sparse-switch v12, :sswitch_data_0

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 601
    :sswitch_0
    const-string v35, "gdy66"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "000 Page_History InitGridItem strNumber - position = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-eqz p2, :cond_1

    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "changecolor"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 605
    const-string v35, "key"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, " 00 InitGridItem set App_Bt.color = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v37, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v7, v0, [I

    const/16 v35, 0x0

    .line 607
    sget v36, Lcom/syu/bt/App_Bt;->color:I

    aput v36, v7, v35

    const/16 v35, 0x1

    .line 608
    sget v36, Lcom/syu/bt/App_Bt;->color:I

    aput v36, v7, v35

    const/16 v35, 0x2

    .line 609
    sget v36, Lcom/syu/bt/App_Bt;->color:I

    aput v36, v7, v35

    const/16 v35, 0x3

    .line 610
    sget v36, Lcom/syu/bt/App_Bt;->color:I

    aput v36, v7, v35

    .line 612
    .local v7, "colors":[I
    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [[I

    move-object/from16 v18, v0

    const/16 v35, 0x0

    .line 613
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const v38, 0x10100a7

    aput v38, v36, v37

    aput-object v36, v18, v35

    const/16 v35, 0x1

    .line 614
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const v38, 0x10100a1

    aput v38, v36, v37

    aput-object v36, v18, v35

    const/16 v35, 0x2

    .line 615
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const v38, 0x1010367

    aput v38, v36, v37

    aput-object v36, v18, v35

    const/16 v35, 0x3

    .line 616
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const v38, 0x101009c

    aput v38, v36, v37

    aput-object v36, v18, v35

    .line 618
    .local v18, "states":[[I
    new-instance v35, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 619
    sget-object v35, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 623
    .end local v7    # "colors":[I
    .end local v18    # "states":[[I
    :cond_1
    const-string v35, "gdy66"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "111 Page_History InitGridItem App_Bt.bUI_NightColour = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v37, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-boolean v35, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v35, :cond_2

    .line 625
    invoke-virtual/range {p2 .. p2}, Lcom/lsec/core/frame/ctrl/JPage;->getStrDrawable()Ljava/lang/String;

    move-result-object v19

    .line 626
    .local v19, "str":Ljava/lang/String;
    const-string v35, "gdy66"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "222 Page_History InitGridItem mColorType = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v37, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " str = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_3

    .line 628
    const-string v35, "night_"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2

    .line 629
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "night_"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    .line 640
    .end local v19    # "str":Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v35, 0x2834

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v33

    .line 641
    .local v33, "viewContent":Landroid/view/View;
    if-eqz v33, :cond_5

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v35

    if-nez v35, :cond_4

    .line 643
    const/16 v35, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 632
    .end local v33    # "viewContent":Landroid/view/View;
    .restart local v19    # "str":Ljava/lang/String;
    :cond_3
    const-string v35, "night_"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 633
    const-string v35, "night_"

    const-string v36, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_1

    .line 646
    .end local v19    # "str":Ljava/lang/String;
    .restart local v33    # "viewContent":Landroid/view/View;
    :cond_4
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :cond_5
    const/16 v35, 0x283b

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 650
    .local v15, "num":Ljava/lang/String;
    const/16 v35, 0x2839

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 651
    .local v14, "name":Ljava/lang/String;
    const/16 v35, 0x283c

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 653
    .local v8, "data":Ljava/lang/String;
    const-string v35, "his2"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "  ** 00 textData.setText num = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " data = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " name = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/16 v35, 0x2839

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/lsec/core/frame/ctrl/JText;

    .line 658
    .local v25, "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v35, 0x283b

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/lsec/core/frame/ctrl/JText;

    .line 660
    .local v26, "textNum":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v35, 0x283a

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v27

    .line 659
    check-cast v27, Lcom/lsec/core/frame/ctrl/JText;

    .line 662
    .local v27, "textNumSmall":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v35, 0x283c

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v23

    .line 661
    check-cast v23, Lcom/lsec/core/frame/ctrl/JText;

    .line 663
    .local v23, "textData":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "BT_23NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 664
    if-eqz v26, :cond_6

    .line 665
    sget-object v35, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 666
    :cond_6
    if-eqz v27, :cond_7

    .line 667
    sget-object v35, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 668
    :cond_7
    if-eqz v23, :cond_8

    .line 669
    sget-object v35, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 673
    :cond_8
    const/4 v4, 0x0

    .line 675
    .local v4, "bEmptyName":Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 676
    const/4 v4, 0x1

    .line 679
    :cond_9
    if-eqz v4, :cond_28

    .line 680
    if-eqz v25, :cond_b

    .line 681
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v35

    if-nez v35, :cond_a

    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "SONING"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1f

    .line 682
    :cond_a
    const/16 v35, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 688
    :cond_b
    :goto_2
    if-eqz v27, :cond_c

    .line 689
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_OEM"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_20

    .line 690
    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 691
    const-string v35, "unknow"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_c
    :goto_3
    if-eqz v26, :cond_10

    .line 701
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 702
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 704
    sget-object v35, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v36, "UI7"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 705
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_23

    const/16 v35, -0x1

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 708
    :cond_d
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "YL_3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_e

    sget-object v35, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v36, "yl_dn1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_e

    .line 709
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "BT_XYQ_HB"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_e

    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "SYU-XN"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 710
    :cond_e
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_24

    const/16 v35, -0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 713
    :cond_f
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :cond_10
    if-eqz v23, :cond_14

    .line 717
    const/16 v35, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 718
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v35

    .line 719
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 721
    sget-object v35, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v36, "UI7"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 722
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_25

    const/16 v35, -0x1

    :goto_6
    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 726
    :cond_11
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "YL_3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_12

    sget-object v35, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v36, "yl_dn1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_12

    .line 727
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "BT_XYQ_HB"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_12

    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "SYU-XN"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 728
    :cond_12
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_26

    const/16 v35, -0x1

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 730
    :cond_13
    const-string v35, "his2"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "  ** 11 textData.setText num = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    sget-boolean v35, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v35, :cond_27

    .line 732
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :cond_14
    :goto_8
    const-string v35, "gdy17"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "00 Page_History num = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "  name = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/16 v35, 0x283f

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/lsec/core/frame/ctrl/JText;

    .line 817
    .local v24, "textHistoryHead":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v24, :cond_15

    .line 819
    if-eqz v4, :cond_40

    .line 820
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 823
    .local v29, "tvName":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->str_ContIcon:[Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->random:Ljava/util/Random;

    move-object/from16 v36, v0

    const/16 v37, 0x5

    invoke-virtual/range {v36 .. v37}, Ljava/util/Random;->nextInt(I)I

    move-result v36

    aget-object v5, v35, v36

    .line 824
    .local v5, "bgName":Ljava/lang/String;
    const-string v35, "gdy17"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "11 Page_History tvName = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "  bgName = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v36

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 829
    .end local v5    # "bgName":Ljava/lang/String;
    .end local v29    # "tvName":Ljava/lang/String;
    :cond_15
    const/16 v35, 0x2836

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v32

    .line 830
    .local v32, "view3":Landroid/view/View;
    if-eqz v32, :cond_16

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v36

    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_41

    const-string v35, "night_dial_icon"

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 835
    :cond_16
    const/16 v35, 0x2835

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v31

    .line 836
    .local v31, "view":Landroid/view/View;
    if-eqz v31, :cond_18

    .line 837
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/app/MyUiItem;

    .line 838
    .local v13, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v13}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_42

    .line 839
    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/lsec/core/frame/ctrl/JView;

    move/from16 v35, v0

    if-eqz v35, :cond_18

    move-object/from16 v34, v31

    .line 840
    check-cast v34, Lcom/lsec/core/frame/ctrl/JView;

    .line 841
    .local v34, "viewIco":Lcom/lsec/core/frame/ctrl/JView;
    const/16 v19, 0x0

    .line 842
    .restart local v19    # "str":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v22

    .line 843
    .local v22, "strs":[Ljava/lang/String;
    sget v35, Lcom/syu/bt/App_Bt;->sCallsType:I

    packed-switch v35, :pswitch_data_0

    .line 855
    :goto_b
    if-nez v19, :cond_17

    .line 856
    invoke-virtual {v13}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v19

    .line 858
    :cond_17
    invoke-virtual/range {v34 .. v34}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 859
    if-eqz v19, :cond_18

    .line 860
    const/16 v35, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 895
    .end local v13    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v19    # "str":Ljava/lang/String;
    .end local v22    # "strs":[Ljava/lang/String;
    .end local v34    # "viewIco":Lcom/lsec/core/frame/ctrl/JView;
    :cond_18
    :goto_c
    const/16 v35, 0x2829

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v10

    .line 896
    .local v10, "headIco":Landroid/view/View;
    if-eqz v10, :cond_1b

    .line 897
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_19

    .line 898
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_BT_1920"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_19

    .line 899
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_OEM"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_4c

    .line 900
    :cond_19
    const/16 v35, 0x2818

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 901
    .local v11, "headPic":Ljava/lang/String;
    const/16 v16, -0x1

    .line 902
    .local v16, "picId":I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_1a

    .line 903
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 905
    :cond_1a
    const/16 v35, 0xf

    move/from16 v0, v16

    move/from16 v1, v35

    if-le v0, v1, :cond_4a

    .line 906
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 907
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_49

    .line 908
    new-instance v35, Landroid/graphics/drawable/BitmapDrawable;

    .line 909
    sget-object v36, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    .line 910
    invoke-static {v6}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v37

    invoke-direct/range {v35 .. v37}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 908
    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 949
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "headPic":Ljava/lang/String;
    .end local v16    # "picId":I
    :cond_1b
    :goto_d
    const/4 v9, 0x0

    .line 951
    .local v9, "flag":Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_1d

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_1d

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    move/from16 v35, v0

    if-ltz v35, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, p4

    if-ne v0, v1, :cond_1c

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    const/16 v36, 0x283b

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    const/16 v36, 0x2838

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 957
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    const/16 v36, 0x283b

    invoke-virtual/range {v35 .. v36}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    .line 959
    const/16 v36, 0x2838

    invoke-virtual/range {v35 .. v36}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    .line 958
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 959
    if-eqz v35, :cond_1d

    .line 960
    const/4 v9, 0x1

    .line 964
    :cond_1d
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v35

    if-nez v35, :cond_1e

    .line 965
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "HAODA"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_1e

    .line 966
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_History;->bRoolKey:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 968
    :cond_1e
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 969
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/syu/bt/page/Page_History;->pressGridItem1(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto/16 :goto_0

    .line 684
    .end local v9    # "flag":Z
    .end local v10    # "headIco":Landroid/view/View;
    .end local v24    # "textHistoryHead":Lcom/lsec/core/frame/ctrl/JText;
    .end local v31    # "view":Landroid/view/View;
    .end local v32    # "view3":Landroid/view/View;
    :cond_1f
    const/16 v35, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_2

    .line 692
    :cond_20
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_BT_1920"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_21

    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "YL_ZZ_1920"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_22

    .line 693
    :cond_21
    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 694
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 696
    :cond_22
    const/16 v35, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_3

    .line 705
    :cond_23
    const/high16 v35, -0x1000000

    goto/16 :goto_4

    .line 710
    :cond_24
    const/high16 v35, -0x1000000

    goto/16 :goto_5

    .line 723
    :cond_25
    const/high16 v35, -0x1000000

    goto/16 :goto_6

    .line 728
    :cond_26
    const/high16 v35, -0x1000000

    goto/16 :goto_7

    .line 734
    :cond_27
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 737
    :cond_28
    const-string v35, "his22"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "  ** 11 textName.setText name = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    if-eqz v25, :cond_2c

    .line 739
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 740
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v35

    .line 741
    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 743
    sget-object v35, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v36, "UI7"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 744
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_37

    const/16 v35, -0x1

    :goto_e
    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 747
    :cond_29
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "YL_3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2a

    sget-object v35, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v36, "yl_dn1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2a

    .line 748
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "BT_XYQ_HB"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2a

    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "SYU-XN"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2b

    .line 749
    :cond_2a
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_38

    const/16 v35, -0x1

    :goto_f
    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 751
    :cond_2b
    const/16 v35, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 754
    :cond_2c
    if-eqz v27, :cond_30

    .line 755
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_OEM"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_39

    .line 756
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :goto_10
    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 762
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2e

    .line 763
    sget-object v35, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v36, "UI7"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2d

    .line 765
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_3a

    const/16 v35, -0x1

    :goto_11
    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 768
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v35

    .line 767
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 772
    :cond_2e
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "YL_3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2f

    sget-object v35, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v36, "yl_dn1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2f

    .line 773
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "BT_XYQ_HB"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_2f

    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "SYU-XN"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_30

    .line 774
    :cond_2f
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_3b

    const/16 v35, -0x1

    :goto_12
    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 778
    :cond_30
    if-eqz v26, :cond_32

    .line 779
    const-string v35, "his22"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "  ** 11 textNum != null mStrCustomer = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v37, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v35

    if-nez v35, :cond_31

    .line 781
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "SONING"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_3c

    .line 782
    :cond_31
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 795
    :cond_32
    :goto_13
    if-eqz v23, :cond_14

    .line 796
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_34

    .line 797
    sget-object v35, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v36, "UI7"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_33

    .line 798
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_3e

    const/16 v35, -0x1

    :goto_14
    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 802
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v35

    .line 801
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 804
    :cond_34
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "YL_3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_35

    sget-object v35, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v36, "yl_dn1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_35

    .line 805
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "BT_XYQ_HB"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_35

    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "SYU-XN"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_36

    .line 806
    :cond_35
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_3f

    const/16 v35, -0x1

    :goto_15
    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 808
    :cond_36
    const/16 v35, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 810
    const-string v35, "his2"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "  ** 22 textData.setText num = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 745
    :cond_37
    const/high16 v35, -0x1000000

    goto/16 :goto_e

    .line 749
    :cond_38
    const/high16 v35, -0x1000000

    goto/16 :goto_f

    .line 758
    :cond_39
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 766
    :cond_3a
    const/high16 v35, -0x1000000

    goto/16 :goto_11

    .line 774
    :cond_3b
    const/high16 v35, -0x1000000

    goto/16 :goto_12

    .line 783
    :cond_3c
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_OEM"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_3d

    .line 784
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 786
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_13

    .line 788
    :cond_3d
    const/16 v35, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_13

    .line 799
    :cond_3e
    const/high16 v35, -0x1000000

    goto/16 :goto_14

    .line 806
    :cond_3f
    const/high16 v35, -0x1000000

    goto :goto_15

    .line 822
    .restart local v24    # "textHistoryHead":Lcom/lsec/core/frame/ctrl/JText;
    :cond_40
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "tvName":Ljava/lang/String;
    goto/16 :goto_9

    .line 831
    .end local v29    # "tvName":Ljava/lang/String;
    .restart local v32    # "view3":Landroid/view/View;
    :cond_41
    const-string v35, "dial_icon"

    goto/16 :goto_a

    .line 845
    .restart local v13    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v19    # "str":Ljava/lang/String;
    .restart local v22    # "strs":[Ljava/lang/String;
    .restart local v31    # "view":Landroid/view/View;
    .restart local v34    # "viewIco":Lcom/lsec/core/frame/ctrl/JView;
    :pswitch_0
    const/16 v35, 0x0

    aget-object v19, v22, v35

    .line 846
    goto/16 :goto_b

    .line 848
    :pswitch_1
    const/16 v35, 0x1

    aget-object v19, v22, v35

    .line 849
    goto/16 :goto_b

    .line 851
    :pswitch_2
    const/16 v35, 0x2

    aget-object v19, v22, v35

    goto/16 :goto_b

    .line 864
    .end local v19    # "str":Ljava/lang/String;
    .end local v22    # "strs":[Ljava/lang/String;
    .end local v34    # "viewIco":Lcom/lsec/core/frame/ctrl/JView;
    :cond_42
    const/16 v30, 0x0

    .line 865
    .local v30, "type":I
    sget-boolean v35, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v35, :cond_44

    .line 866
    const/16 v35, 0x2837

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 870
    :goto_16
    const-string v17, "bt_"

    .line 871
    .local v17, "picStr":Ljava/lang/String;
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "TZY_NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_45

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v35

    const/16 v36, 0x0

    aget v35, v35, v36

    const/16 v36, 0x7d0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_45

    .line 872
    const-string v17, "bt2000_"

    .line 878
    :cond_43
    :goto_17
    packed-switch v30, :pswitch_data_1

    goto/16 :goto_c

    .line 880
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, "icoincall"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v38}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 868
    .end local v17    # "picStr":Ljava/lang/String;
    :cond_44
    sget v30, Lcom/syu/bt/App_Bt;->sCallsType:I

    goto :goto_16

    .line 873
    .restart local v17    # "picStr":Ljava/lang/String;
    :cond_45
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "YL_3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_47

    .line 874
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_46

    const-string v17, "night_bt_"

    .line 875
    :goto_18
    goto :goto_17

    .line 874
    :cond_46
    const-string v17, "bt_"

    goto :goto_18

    .line 875
    :cond_47
    if-eqz v32, :cond_43

    .line 876
    sget v35, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v35, :cond_48

    const-string v17, "night_bt_"

    :goto_19
    goto :goto_17

    :cond_48
    const-string v17, "bt_"

    goto :goto_19

    .line 884
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, "icooutcall"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v38}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 888
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, "icomisscall"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v38}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 912
    .end local v13    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v17    # "picStr":Ljava/lang/String;
    .end local v30    # "type":I
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    .restart local v10    # "headIco":Landroid/view/View;
    .restart local v11    # "headPic":Ljava/lang/String;
    .restart local v16    # "picId":I
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    .line 913
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "headbig"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    .line 913
    invoke-virtual/range {v35 .. v38}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 912
    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 918
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_4a
    if-lez v16, :cond_4b

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    .line 920
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "headbig"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    .line 920
    invoke-virtual/range {v35 .. v38}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 919
    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 924
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    .line 925
    const-string v36, "headbig16"

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    .line 925
    invoke-virtual/range {v35 .. v38}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 924
    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 929
    .end local v11    # "headPic":Ljava/lang/String;
    .end local v16    # "picId":I
    :cond_4c
    sget-boolean v35, Lcom/syu/bt/App_Bt;->bShowHeadIco:Z

    if-eqz v35, :cond_4f

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_4f

    if-eqz v10, :cond_4f

    .line 930
    sget-object v35, Lcom/syu/bt/App_Bt;->myPaths:Ljava/util/List;

    move-object/from16 v0, v35

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    sget-object v35, Lcom/syu/bt/App_Bt;->myAlbum:Ljava/util/HashMap;

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v35

    if-lez v35, :cond_1b

    .line 933
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 934
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4e

    .line 935
    sget-object v35, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v36, "BT_23NEW"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_4d

    .line 936
    new-instance v35, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v36, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    const/16 v37, 0xf

    move/from16 v0, v37

    invoke-static {v6, v0}, Lcom/syu/bt/util/BTUtil;->outputCircleLittle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v37

    invoke-direct/range {v35 .. v37}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 938
    :cond_4d
    new-instance v35, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v36, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v6}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v37

    invoke-direct/range {v35 .. v37}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 940
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    const-string v36, "bt_icocontact"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v35 .. v38}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 944
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v35

    .line 945
    const-string v36, "bt_icocontact"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v37, v0

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v38, v0

    .line 944
    invoke-virtual/range {v35 .. v38}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 976
    .end local v4    # "bEmptyName":Z
    .end local v8    # "data":Ljava/lang/String;
    .end local v10    # "headIco":Landroid/view/View;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "num":Ljava/lang/String;
    .end local v23    # "textData":Lcom/lsec/core/frame/ctrl/JText;
    .end local v24    # "textHistoryHead":Lcom/lsec/core/frame/ctrl/JText;
    .end local v25    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v26    # "textNum":Lcom/lsec/core/frame/ctrl/JText;
    .end local v27    # "textNumSmall":Lcom/lsec/core/frame/ctrl/JText;
    .end local v31    # "view":Landroid/view/View;
    .end local v32    # "view3":Landroid/view/View;
    .end local v33    # "viewContent":Landroid/view/View;
    :sswitch_1
    const/16 v35, 0x27e1

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v33

    .line 977
    .restart local v33    # "viewContent":Landroid/view/View;
    if-eqz v33, :cond_50

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v35

    if-nez v35, :cond_53

    .line 979
    const/16 v35, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    :cond_50
    :goto_1a
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v35

    if-lez v35, :cond_0

    .line 985
    const/16 v35, 0x27e3

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/lsec/core/frame/ctrl/JText;

    .line 986
    .local v28, "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v35, 0x27e2

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/lsec/core/frame/ctrl/JText;

    .line 988
    .restart local v25    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v35, 0x281e

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 989
    .local v21, "strNumber":Ljava/lang/String;
    const/16 v35, 0x281c

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 990
    .local v20, "strName":Ljava/lang/String;
    if-eqz v28, :cond_51

    .line 991
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 993
    :cond_51
    if-eqz v25, :cond_52

    .line 994
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 996
    :cond_52
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_0

    .line 997
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    move/from16 v35, v0

    if-ltz v35, :cond_0

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 999
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_History;->checkPhoneNumber2:Ljava/lang/String;

    .line 1000
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p2

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/syu/bt/page/Page_History;->pressGridItem2(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto/16 :goto_0

    .line 981
    .end local v20    # "strName":Ljava/lang/String;
    .end local v21    # "strNumber":Ljava/lang/String;
    .end local v25    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v28    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :cond_53
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x27e0 -> :sswitch_1
        0x2831 -> :sswitch_0
    .end sparse-switch

    .line 843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 878
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x23

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 307
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 311
    .local v1, "id":I
    sget v0, Lcom/syu/bt/App_Bt;->sCallsType:I

    .line 312
    .local v0, "iQueryType":I
    sparse-switch v1, :sswitch_data_0

    .line 362
    :cond_2
    :goto_1
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    if-eq v0, v4, :cond_b

    .line 363
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 364
    sput v0, Lcom/syu/bt/App_Bt;->sCallsType:I

    .line 365
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->resetList()V

    .line 366
    invoke-virtual {p0, v0, v5}, Lcom/syu/bt/page/Page_History;->updateHistorySelected(IZ)V

    goto :goto_0

    .line 314
    :sswitch_0
    const/4 v0, 0x1

    .line 315
    goto :goto_1

    .line 317
    :sswitch_1
    const/4 v0, 0x2

    .line 318
    goto :goto_1

    .line 320
    :sswitch_2
    const/4 v0, 0x3

    .line 321
    goto :goto_1

    .line 323
    :sswitch_3
    sget v4, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    sput v4, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    .line 324
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->showPhone()V

    goto :goto_1

    :cond_3
    move v4, v6

    .line 323
    goto :goto_2

    .line 327
    :sswitch_4
    const-string v4, "his16"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 History_Btn_Refresh sCallsType = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->sCallsType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v4, "his16"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 01 History_Btn_Refresh bDownloadingRecord = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v8, Lcom/syu/bt/App_Bt;->bDownloadingRecord:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bDownloadingRecord:Z

    if-nez v4, :cond_0

    .line 333
    const-string v4, "his16"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 22 History_Btn_Refresh mStrCustomer = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 335
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v4, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 336
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v4, v10}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 338
    :cond_4
    const/4 v0, 0x0

    .line 339
    goto/16 :goto_1

    .line 340
    :cond_5
    const-string v4, "his6"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 33 History_Btn_Refresh sCallsType = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->sCallsType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_8

    .line 342
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    if-ne v4, v12, :cond_6

    .line 343
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v7, 0x25

    new-array v8, v5, [Ljava/lang/String;

    sget-object v9, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v10, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v9, v9, v10

    aput-object v9, v8, v6

    invoke-virtual {v4, v7, v11, v11, v8}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    :cond_6
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    .line 345
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v7, v5, [Ljava/lang/String;

    sget-object v8, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v9, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v8, v8, v9

    aput-object v8, v7, v6

    invoke-virtual {v4, v10, v11, v11, v7}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 346
    :cond_7
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    if-ne v4, v5, :cond_2

    .line 347
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v7, 0x24

    new-array v8, v5, [Ljava/lang/String;

    sget-object v9, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v10, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v9, v9, v10

    aput-object v9, v8, v6

    invoke-virtual {v4, v7, v11, v11, v8}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 350
    :cond_8
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    if-ne v4, v12, :cond_9

    .line 351
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    goto/16 :goto_1

    .line 352
    :cond_9
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_a

    .line 353
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v4, v10}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    goto/16 :goto_1

    .line 354
    :cond_a
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    if-ne v4, v5, :cond_2

    .line 355
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v7, 0x24

    invoke-virtual {v4, v7}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    goto/16 :goto_1

    .line 370
    :cond_b
    sparse-switch v1, :sswitch_data_1

    .line 476
    :cond_c
    :goto_3
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v4, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 373
    :sswitch_5
    const/4 v2, 0x0

    .line 374
    .local v2, "listHistory":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v4, :cond_d

    .line 375
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    .line 405
    :goto_4
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 406
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v6, "bt_is_delete_allrecords"

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto :goto_3

    .line 377
    :cond_d
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_e

    sget v4, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-ne v4, v5, :cond_e

    .line 378
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    packed-switch v4, :pswitch_data_0

    .line 389
    :goto_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->resetList()V

    goto :goto_4

    .line 380
    :pswitch_0
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    .line 381
    goto :goto_5

    .line 383
    :pswitch_1
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    .line 384
    goto :goto_5

    .line 386
    :pswitch_2
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    goto :goto_5

    .line 391
    :cond_e
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 393
    :pswitch_3
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    .line 394
    goto :goto_4

    .line 396
    :pswitch_4
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    .line 397
    goto :goto_4

    .line 399
    :pswitch_5
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    goto :goto_4

    .line 410
    .end local v2    # "listHistory":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :sswitch_6
    const/4 v3, 0x0

    .line 411
    .local v3, "listHistory2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v4, :cond_f

    .line 412
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    .line 427
    :goto_6
    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 428
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    const/4 v5, 0x4

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "bt_is_delete_onerecord"

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 414
    :cond_f
    sget v4, Lcom/syu/bt/App_Bt;->sCallsType:I

    packed-switch v4, :pswitch_data_2

    goto :goto_6

    .line 416
    :pswitch_6
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    .line 417
    goto :goto_6

    .line 419
    :pswitch_7
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    .line 420
    goto :goto_6

    .line 422
    :pswitch_8
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v4, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    goto :goto_6

    .line 433
    .end local v3    # "listHistory2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :sswitch_7
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    if-eqz v4, :cond_c

    .line 434
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    const/16 v5, 0x283b

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 435
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    const/16 v5, 0x283b

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    .line 436
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v4, v4, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v5, 0x2713

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_3

    .line 442
    :sswitch_8
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 443
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_3

    .line 447
    :sswitch_9
    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v4}, Lcom/syu/bt/Act_Bt;->Func_Back()Z

    goto/16 :goto_3

    .line 461
    :sswitch_a
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v5, v1, -0x27a2

    invoke-virtual {v4, v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto/16 :goto_3

    .line 464
    :sswitch_b
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->filterDemand_DZSJ()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 465
    invoke-static {v6}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto/16 :goto_3

    .line 469
    :sswitch_c
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-nez v4, :cond_0

    .line 472
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto/16 :goto_3

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x27f1 -> :sswitch_3
        0x282a -> :sswitch_0
        0x282b -> :sswitch_1
        0x282c -> :sswitch_2
        0x2830 -> :sswitch_4
    .end sparse-switch

    .line 370
    :sswitch_data_1
    .sparse-switch
        0x278f -> :sswitch_8
        0x2793 -> :sswitch_c
        0x27a2 -> :sswitch_a
        0x27a3 -> :sswitch_a
        0x27a4 -> :sswitch_a
        0x27a5 -> :sswitch_a
        0x27a6 -> :sswitch_a
        0x27a7 -> :sswitch_a
        0x27a8 -> :sswitch_a
        0x27a9 -> :sswitch_a
        0x27aa -> :sswitch_a
        0x27ab -> :sswitch_a
        0x27ac -> :sswitch_a
        0x27ad -> :sswitch_a
        0x27b3 -> :sswitch_b
        0x282d -> :sswitch_5
        0x282e -> :sswitch_6
        0x282f -> :sswitch_7
        0x2937 -> :sswitch_9
    .end sparse-switch

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 391
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 414
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 483
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 493
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 485
    :sswitch_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->filterDemand_DZSJ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 490
    :sswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 483
    :sswitch_data_0
    .sparse-switch
        0x27a2 -> :sswitch_1
        0x27b3 -> :sswitch_0
    .end sparse-switch
.end method

.method public dialByKey()Z
    .locals 4

    .prologue
    const/16 v3, 0x283b

    const/4 v1, 0x1

    .line 1369
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_History;->bTop:Z

    if-eqz v0, :cond_3

    .line 1370
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 1383
    :goto_0
    return v0

    .line 1375
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1376
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->checkPhoneNumber2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1377
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->checkPhoneNumber2:Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 1379
    goto :goto_0

    .line 1383
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 13

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x275e

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    .line 152
    .local v7, "view_40":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 153
    sget v8, Lcom/syu/bt/App_Bt;->iDensity:I

    const/16 v11, 0xf0

    if-lt v8, v11, :cond_7

    move v8, v9

    :goto_0
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x276a

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    .line 156
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v8, :cond_1

    .line 157
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v11, Lcom/syu/bt/page/Page_History$MyTextWatcher;

    iget-object v12, p0, Lcom/syu/bt/page/Page_History;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    invoke-direct {v11, p0, v12}, Lcom/syu/bt/page/Page_History$MyTextWatcher;-><init>(Lcom/syu/bt/page/Page_History;Lcom/lsec/core/frame/ctrl/JText;)V

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x27e0

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 160
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x2831

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 161
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x2830

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->mHisRefresh:Lcom/lsec/core/frame/ctrl/JButton;

    .line 163
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x27f1

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->vHistory_Phone:Lcom/lsec/core/frame/ctrl/JButton;

    .line 164
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x27f2

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone11:Lcom/lsec/core/frame/ctrl/JText;

    .line 165
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x27f3

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone11_p:Lcom/lsec/core/frame/ctrl/JText;

    .line 166
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x27f4

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone12:Lcom/lsec/core/frame/ctrl/JText;

    .line 167
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x27f5

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone12_p:Lcom/lsec/core/frame/ctrl/JText;

    .line 169
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x293b

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    .line 170
    .local v5, "viewPhone1":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 171
    sget-boolean v8, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v8, :cond_8

    move v8, v10

    :goto_1
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x293c

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    .line 173
    .local v6, "viewPhone2":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 174
    sget-boolean v8, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v8, :cond_9

    move v8, v9

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_3
    sget-boolean v8, Lcom/syu/bt/App_Bt;->bLinkTwoPhone_test:Z

    if-eqz v8, :cond_5

    .line 177
    if-eqz v5, :cond_4

    .line 178
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_4
    if-eqz v6, :cond_5

    .line 180
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_5
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v8, :cond_6

    .line 184
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    new-instance v9, Lcom/syu/bt/page/Page_History$2;

    invoke-direct {v9, p0}, Lcom/syu/bt/page/Page_History$2;-><init>(Lcom/syu/bt/page/Page_History;)V

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_OEM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const-string v9, "grid_verthumb"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    iget-object v10, v10, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v8, v9, v10, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    .local v0, "drawableVerthumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    .line 211
    const-class v8, Landroid/view/View;

    const-string v9, "mScrollCache"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 212
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 213
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 214
    .local v4, "scrollabilityCache":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "scrollBar"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 215
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 216
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 217
    .local v3, "scrollBarDrawable":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mVerticalThumb"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 218
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 219
    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "drawableVerthumb":Landroid/graphics/drawable/Drawable;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "scrollBarDrawable":Ljava/lang/Object;
    .end local v4    # "scrollabilityCache":Ljava/lang/Object;
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v9, 0x29a2

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/syu/bt/page/Page_History;->vNoData:Landroid/view/View;

    .line 228
    sget v8, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {p0, v8}, Lcom/syu/bt/page/Page_History;->setButtonColor(I)V

    .line 229
    sget v8, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual {p0, v8}, Lcom/syu/bt/page/Page_History;->setDayOrNight(I)V

    .line 230
    return-void

    .end local v5    # "viewPhone1":Landroid/view/View;
    .end local v6    # "viewPhone2":Landroid/view/View;
    :cond_7
    move v8, v10

    .line 153
    goto/16 :goto_0

    .restart local v5    # "viewPhone1":Landroid/view/View;
    :cond_8
    move v8, v9

    .line 171
    goto/16 :goto_1

    .restart local v6    # "viewPhone2":Landroid/view/View;
    :cond_9
    move v8, v10

    .line 174
    goto/16 :goto_2

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1242
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1243
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_History;->bTop:Z

    .line 261
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 262
    return-void
.end method

.method public pressGridItem1(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 4
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "pagePressed"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 1042
    if-eqz p3, :cond_7

    if-ne p1, p2, :cond_7

    const/4 v0, 0x1

    .line 1044
    .local v0, "bFocus":Z
    :goto_0
    const/16 v3, 0x2835

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 1045
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1046
    instance-of v3, v2, Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v3, :cond_0

    .line 1047
    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JView;->setFocus(Z)V

    .line 1050
    :cond_0
    const/16 v3, 0x283e

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 1051
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1052
    instance-of v3, v2, Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v3, :cond_1

    .line 1053
    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 1056
    :cond_1
    const/16 v3, 0x2839

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1057
    .local v1, "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_2

    .line 1058
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1060
    :cond_2
    const/16 v3, 0x283a

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1061
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_3

    .line 1062
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1064
    :cond_3
    const/16 v3, 0x283b

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1065
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_4

    .line 1066
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1068
    :cond_4
    const/16 v3, 0x283c

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1069
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_5

    .line 1070
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1072
    :cond_5
    const/16 v3, 0x283d

    invoke-virtual {p1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1073
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_6

    .line 1074
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1075
    :cond_6
    return-void

    .line 1042
    .end local v0    # "bFocus":Z
    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pressGridItem2(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "pagePressed"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 1078
    if-eqz p3, :cond_2

    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    .line 1081
    .local v0, "bFocus":Z
    :goto_0
    const/16 v2, 0x27e3

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 1080
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1082
    .local v1, "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1085
    :cond_0
    const/16 v2, 0x27e2

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1086
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 1087
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1088
    :cond_1
    return-void

    .line 1078
    .end local v0    # "bFocus":Z
    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryContacts(Ljava/lang/String;)V
    .locals 5
    .param p1, "qry"    # Ljava/lang/String;

    .prologue
    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .local v0, "listContact":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1250
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_History;->showSearchList(Z)V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    invoke-virtual {p0, p1}, Lcom/syu/bt/page/Page_History;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1253
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1259
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_History;->showSearchList(Z)V

    .line 1260
    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_0

    .line 1253
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1254
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v4, 0x281e

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1255
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1256
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public resetList()V
    .locals 4

    .prologue
    .line 1183
    const/4 v0, 0x1

    .line 1184
    .local v0, "flag":Z
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    sget v1, Lcom/syu/bt/App_Bt;->sCallsType:I

    if-lez v1, :cond_0

    .line 1186
    const/4 v0, 0x0

    .line 1189
    :cond_0
    const-string v1, "his6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 Page_history resetList  App_Bt.sPhone2_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 1239
    :goto_0
    return-void

    .line 1192
    :cond_1
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_3

    .line 1193
    sget v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v1, :cond_2

    .line 1194
    sget v1, Lcom/syu/bt/App_Bt;->sCallsType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1197
    :pswitch_0
    const-string v1, "his6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 resetList  mListHistoryIn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_0

    .line 1201
    :pswitch_1
    const-string v1, "his2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ** 111 Page_His resetList() mListHistoryOut.toString:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_0

    .line 1205
    :pswitch_2
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_0

    .line 1209
    :cond_2
    sget v1, Lcom/syu/bt/App_Bt;->sCallsType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1212
    :pswitch_3
    const-string v1, "his6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 resetList  mListHistoryIn2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1216
    :pswitch_4
    const-string v1, "his2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ** 222 Page_His resetList() mListHistoryOut2.toString:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1220
    :pswitch_5
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1225
    :cond_3
    const-string v1, "his"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 resetList sCallsType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/syu/bt/App_Bt;->sCallsType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    sget v1, Lcom/syu/bt/App_Bt;->sCallsType:I

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 1228
    :pswitch_6
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1231
    :pswitch_7
    const-string v1, "his"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ** Page_His resetList() mListHistoryOut.size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1235
    :pswitch_8
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1209
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1226
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V
    .locals 3
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/ctrl/JGridView;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/4 v2, -0x1

    .line 87
    const-string v0, "his6"

    const-string v1, " 000 PageHistory resetList "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    .line 89
    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy1:I

    .line 90
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 96
    :goto_0
    const-string v0, "his6"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Page_His resetList list = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->vNoData:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->vNoData:Landroid/view/View;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-static {p1, p2}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v1, "his6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ** PageHis resume  mListHistoryOut = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mListHistoryOut2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-boolean v5, p0, Lcom/syu/bt/page/Page_History;->bTop:Z

    .line 126
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 127
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->recoverAppId()V

    .line 128
    sget v1, Lcom/syu/bt/App_Bt;->sCallsType:I

    invoke-virtual {p0, v1, v5}, Lcom/syu/bt/page/Page_History;->updateHistorySelected(IZ)V

    .line 129
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V

    .line 130
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->resetList()V

    .line 133
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->showPhone()V

    .line 136
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v1, :cond_3

    .line 137
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 139
    :cond_3
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 141
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    goto :goto_0
.end method

.method public reverseList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1176
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    .local v0, "list_p":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1178
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1179
    return-object v0
.end method

.method public scrollOk()Z
    .locals 4

    .prologue
    const/16 v3, 0x283b

    const/4 v1, 0x1

    .line 1350
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_History;->bTop:Z

    if-eqz v0, :cond_3

    .line 1351
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_History;->bRoolKey:Z

    .line 1352
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mapSelect:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 1365
    :goto_0
    return v0

    .line 1357
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1358
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->checkPhoneNumber2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1359
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->checkPhoneNumber2:Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 1361
    goto :goto_0

    .line 1365
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollToNext()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1306
    const-string v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 pageHis scrollToNext bTop = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/syu/bt/page/Page_History;->bTop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-boolean v2, p0, Lcom/syu/bt/page/Page_History;->bTop:Z

    if-eqz v2, :cond_1

    .line 1308
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_History;->bRoolKey:Z

    .line 1309
    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v3}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1310
    const-string v2, "key"

    const-string v3, " 11 pageHis scrollToNext mGridView "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy1:I

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v3, v3, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v2, v3, :cond_0

    .line 1312
    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy1:I

    .line 1313
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy1:I

    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    .line 1316
    :cond_0
    const-string v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 pageHis scrollToNext mPosMoveTo1 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    if-gez v2, :cond_2

    .line 1318
    iput v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    .line 1324
    :goto_0
    const-string v0, "key"

    const-string v2, " 33 pageHis scrollToNext  "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    move v0, v1

    .line 1346
    :cond_1
    :goto_1
    return v0

    .line 1319
    :cond_2
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1320
    iget v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    goto :goto_0

    .line 1327
    :cond_3
    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v3}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1328
    const-string v2, "key"

    const-string v3, " 44 pageHis scrollToNext mGridViewSearch "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy2:I

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v3, v3, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v2, v3, :cond_4

    .line 1330
    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy2:I

    .line 1331
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy2:I

    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    .line 1334
    :cond_4
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    if-gez v2, :cond_5

    .line 1335
    iput v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    .line 1341
    :goto_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    move v0, v1

    .line 1342
    goto :goto_1

    .line 1336
    :cond_5
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1337
    iget v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    goto :goto_2
.end method

.method public scrollToPrev()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1266
    iget-boolean v2, p0, Lcom/syu/bt/page/Page_History;->bTop:Z

    if-eqz v2, :cond_1

    .line 1267
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_History;->bRoolKey:Z

    .line 1268
    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v3}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1269
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy1:I

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v3, v3, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v2, v3, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy1:I

    .line 1271
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy1:I

    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    .line 1274
    :cond_0
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    if-gez v2, :cond_2

    .line 1275
    iput v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    .line 1281
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    move v0, v1

    .line 1301
    :cond_1
    :goto_1
    return v0

    .line 1276
    :cond_2
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    if-lez v2, :cond_1

    .line 1277
    iget v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo1:I

    goto :goto_0

    .line 1283
    :cond_3
    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2, v3}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1284
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy2:I

    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v3, v3, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v2, v3, :cond_4

    .line 1285
    iget-object v2, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy2:I

    .line 1286
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosFocusCpy2:I

    iput v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    .line 1289
    :cond_4
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    if-gez v2, :cond_5

    .line 1290
    iput v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    .line 1296
    :goto_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    move v0, v1

    .line 1297
    goto :goto_1

    .line 1291
    :cond_5
    iget v2, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    if-lez v2, :cond_1

    .line 1292
    iget v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/syu/bt/page/Page_History;->mPosMoveTo2:I

    goto :goto_2
.end method

.method public setButtonColor(I)V
    .locals 11
    .param p1, "color"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1388
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "changecolor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1397
    :cond_1
    new-array v0, v10, [I

    .line 1398
    aput p1, v0, v8

    .line 1399
    aput p1, v0, v9

    .line 1401
    .local v0, "colors":[I
    new-array v5, v10, [[I

    .line 1402
    new-array v6, v9, [I

    const v7, 0x10100a7

    aput v7, v6, v8

    aput-object v6, v5, v8

    .line 1403
    new-array v6, v9, [I

    const v7, 0x101009c

    aput v7, v6, v8

    aput-object v6, v5, v9

    .line 1406
    .local v5, "states":[[I
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x282a

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1407
    .local v2, "in":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_2

    .line 1408
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1409
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1412
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x282b

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1413
    .local v4, "out":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_3

    .line 1414
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1415
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1418
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x282c

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1419
    .local v3, "miss":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_4

    .line 1420
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1421
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1424
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    const/16 v7, 0x282d

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1425
    .local v1, "del":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_0

    .line 1426
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1427
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0
.end method

.method public setDayOrNight(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/4 v9, -0x1

    const/high16 v10, -0x1000000

    const/4 v12, 0x1

    .line 1434
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v11, "BT_NEW"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1436
    if-lez p1, :cond_1

    .line 1437
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bt_night"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "bk_day"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1442
    :cond_2
    sget-boolean v8, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v8, :cond_0

    .line 1443
    if-lez p1, :cond_4

    const-string v5, "night_"

    .line 1445
    .local v5, "str":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->nightBtn:[I

    array-length v8, v8

    if-lt v2, v8, :cond_5

    .line 1464
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->nightView:[I

    array-length v8, v8

    if-lt v3, v8, :cond_b

    .line 1480
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->nightText:[I

    array-length v8, v8

    if-lt v4, v8, :cond_e

    .line 1486
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    const/16 v11, 0x2833

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 1487
    .local v6, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_3

    .line 1488
    if-lez p1, :cond_11

    :goto_5
    invoke-virtual {v6, v9}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1490
    :cond_3
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v8, :cond_0

    .line 1492
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    goto :goto_0

    .line 1443
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    const-string v5, ""

    goto :goto_1

    .line 1446
    .restart local v2    # "i":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_History;->nightBtn:[I

    aget v11, v11, v2

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1447
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_8

    .line 1448
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1450
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1451
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1458
    :cond_6
    :goto_6
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2744

    if-eq v8, v11, :cond_7

    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2746

    if-eq v8, v11, :cond_7

    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2745

    if-eq v8, v11, :cond_7

    .line 1459
    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274e

    if-eq v8, v11, :cond_7

    iget-object v8, p0, Lcom/syu/bt/page/Page_History;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274d

    if-ne v8, v11, :cond_8

    .line 1460
    :cond_7
    if-lez p1, :cond_a

    move v8, v9

    :goto_7
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 1445
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1454
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_9
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1455
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_a
    move v8, v10

    .line 1460
    goto :goto_7

    .line 1465
    .end local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "drawableName":Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_b
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_History;->nightView:[I

    aget v11, v11, v3

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JView;

    .line 1466
    .local v7, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v7, :cond_c

    .line 1467
    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 1468
    .restart local v1    # "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1469
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1470
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 1464
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_c
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 1473
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_d
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1474
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_8

    .line 1481
    .end local v1    # "drawableName":Ljava/lang/String;
    .end local v7    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v4    # "k":I
    :cond_e
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_History;->nightText:[I

    aget v11, v11, v4

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 1482
    .restart local v6    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_f

    .line 1483
    if-lez p1, :cond_10

    move v8, v9

    :goto_9
    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1480
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_10
    move v8, v10

    .line 1483
    goto :goto_9

    :cond_11
    move v9, v10

    .line 1488
    goto/16 :goto_5
.end method

.method public setPressed(Lcom/lsec/core/frame/ctrl/JButton;Z)V
    .locals 2
    .param p1, "jButton"    # Lcom/lsec/core/frame/ctrl/JButton;
    .param p2, "pressed"    # Z

    .prologue
    .line 589
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JButton;->getId()I

    move-result v0

    .line 590
    .local v0, "id":I
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_History;->updateSelected(IZ)V

    .line 591
    return-void

    .line 590
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showPhone()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 267
    const-string v0, "hfp1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ** History_Phone_Switch App_Bt.sPhone2_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v6, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v5

    if-ge v0, v6, :cond_0

    .line 273
    sput v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    .line 274
    :cond_0
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v5

    if-lt v0, v6, :cond_1

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-ge v0, v6, :cond_1

    .line 275
    sput v5, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone11:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_2

    .line 278
    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone11:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v6, :cond_8

    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone11:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone11_p:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    .line 282
    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone11_p:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v6, :cond_9

    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-ne v0, v5, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone11_p:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone12:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_4

    .line 286
    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone12:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v5

    if-lt v0, v6, :cond_a

    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-ne v0, v5, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone12:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone12_p:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone12_p:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v3, v3, v5

    if-lt v3, v6, :cond_b

    sget v3, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v3, :cond_b

    :goto_3
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->tvHisPhone12_p:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v1, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_5
    iget v0, p0, Lcom/syu/bt/page/Page_History;->hisPhone_id:I

    sget v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->hisPhone_mac:Ljava/lang/String;

    sget-object v1, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v2, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    :cond_6
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    iput v0, p0, Lcom/syu/bt/page/Page_History;->hisPhone_id:I

    .line 295
    sget-object v0, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/syu/bt/page/Page_History;->hisPhone_mac:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->resetList()V

    .line 303
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 278
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 282
    goto :goto_1

    :cond_a
    move v0, v2

    .line 286
    goto :goto_2

    :cond_b
    move v1, v2

    .line 290
    goto :goto_3
.end method

.method public showSearchList(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v3, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridViewSearch:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 110
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 105
    goto :goto_0

    :cond_3
    move v2, v1

    .line 109
    goto :goto_1
.end method

.method public updateHistorySelected(IZ)V
    .locals 3
    .param p1, "iType"    # I
    .param p2, "bSelected"    # Z

    .prologue
    .line 497
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v1

    if-nez v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    if-eqz p2, :cond_2

    .line 501
    iget v1, p0, Lcom/syu/bt/page/Page_History;->iTypeHistorySelect:I

    if-eq v1, p1, :cond_2

    .line 502
    iget v1, p0, Lcom/syu/bt/page/Page_History;->iTypeHistorySelect:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_History;->updateHistorySelected(IZ)V

    .line 503
    iput p1, p0, Lcom/syu/bt/page/Page_History;->iTypeHistorySelect:I

    .line 507
    :cond_2
    const/4 v0, 0x0

    .line 508
    .local v0, "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    packed-switch p1, :pswitch_data_0

    .line 527
    :goto_1
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 530
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "changecolor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JButton;->setSelected(Z)V

    goto :goto_0

    .line 510
    :pswitch_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 511
    const/16 v2, 0x282a

    .line 510
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 512
    .restart local v0    # "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_1

    .line 514
    :pswitch_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 515
    const/16 v2, 0x282b

    .line 514
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 516
    .restart local v0    # "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_1

    .line 518
    :pswitch_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 519
    const/16 v2, 0x282c

    .line 518
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 520
    .restart local v0    # "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_1

    .line 522
    :pswitch_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 523
    const/16 v2, 0x2830

    .line 522
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .restart local v0    # "btnType":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_1

    .line 508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/syu/bt/page/Page_History;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 116
    :cond_0
    return-void
.end method

.method public updateSelected(IZ)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "bSelected"    # Z

    .prologue
    .line 537
    const/4 v0, -0x1

    .line 538
    .local v0, "iHistoryTypeTo":I
    const-string v1, "bt_history_callin"

    .line 539
    .local v1, "str_call":Ljava/lang/String;
    const-string v2, "bt_bigin"

    .line 540
    .local v2, "str_view_Sel":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 558
    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x2833

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 562
    .local v3, "txt_Sel":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 563
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v5, v1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x2832

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    .line 566
    .local v4, "view_Sel":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_History;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    iget-object v7, v7, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 568
    :cond_1
    iget v5, p0, Lcom/syu/bt/page/Page_History;->iTypeHistorySelect:I

    if-eq v5, v0, :cond_2

    .line 569
    iget v5, p0, Lcom/syu/bt/page/Page_History;->iTypeHistorySelect:I

    if-lez v5, :cond_2

    .line 570
    iget v5, p0, Lcom/syu/bt/page/Page_History;->iTypeHistorySelect:I

    invoke-virtual {p0, v5, p2}, Lcom/syu/bt/page/Page_History;->updateHistorySelected(IZ)V

    .line 573
    :cond_2
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/syu/bt/page/Page_History;->mRun_NotifyDataSetChanged:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-static {v5, v6, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 575
    .end local v3    # "txt_Sel":Landroid/widget/TextView;
    .end local v4    # "view_Sel":Landroid/view/View;
    :cond_3
    return-void

    .line 542
    :pswitch_0
    const/4 v0, 0x1

    .line 543
    const-string v1, "bt_history_callin"

    .line 544
    const-string v2, "bt_bigin"

    .line 545
    goto :goto_0

    .line 547
    :pswitch_1
    const/4 v0, 0x2

    .line 548
    const-string v1, "bt_history_callout"

    .line 549
    const-string v2, "bt_bigout"

    .line 550
    goto :goto_0

    .line 552
    :pswitch_2
    const/4 v0, 0x3

    .line 553
    const-string v1, "bt_history_missed"

    .line 554
    const-string v2, "bt_bigmiss"

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x282a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
