.class public Lcom/syu/bt/page/Page_Dial;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Dial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Dial$MyTextWatcher;,
        Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;,
        Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;
    }
.end annotation


# static fields
.field public static final FLAG_ANSWER:I = 0x1

.field public static final FLAG_DIAL:I = 0x3

.field public static final FLAG_HANGUP:I = 0x2

.field public static final FLAG_RING_THIRD:I = 0x4

.field public static final FLAG_TALK_THIRD:I = 0x5


# instance fields
.field public ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

.field public ContactName:[Lcom/lsec/core/frame/ctrl/JText;

.field public ContactView:[Lcom/lsec/core/frame/ctrl/JView;

.field public actBt:Lcom/syu/bt/Act_Bt;

.field bTop:Z

.field private checkPhoneNumber:Ljava/lang/String;

.field private dialThrdNumber:Ljava/lang/String;

.field dialThrdPhone:Z

.field public isShow_p:Z

.field mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

.field mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

.field public mFullSwitch:I

.field mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

.field mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

.field mHeadTime:Lcom/lsec/core/frame/ctrl/JText;

.field private mPosFocusCpy:I

.field private mPosMoveTo:I

.field public mRunnJumpPair:Ljava/lang/Runnable;

.field public mRunnPhoneSwitch:Ljava/lang/Runnable;

.field public mRunnShowTalking:Ljava/lang/Runnable;

.field mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

.field mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

.field public mRunnable_updateSysTime:Ljava/lang/Runnable;

.field public mSB_BtVol:Lcom/lsec/core/frame/ctrl/JSeekBar;

.field mViewBtNotConnectTip:Landroid/view/View;

.field mViewContact:Landroid/view/View;

.field mViewDialFullScreen:Landroid/view/View;

.field mViewDialHalfScreen:Landroid/view/View;

.field mViewDialHideKeyboard:Landroid/view/View;

.field mViewDialHideNumber:Landroid/view/View;

.field mViewDialShowKeyboard:Landroid/view/View;

.field mViewInCall:Landroid/view/View;

.field mViewNoSim:Landroid/view/View;

.field public mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

.field mViewShowCall:Landroid/view/View;

.field mViewShowCall_Third:Landroid/view/View;

.field mViewShowDial:Landroid/view/View;

.field mViewShowGps:Landroid/view/View;

.field mViewShowHang:Landroid/view/View;

.field mViewShowHide:Landroid/view/View;

.field mViewShowSave:Landroid/view/View;

.field mViewShowTalk_Third:Landroid/view/View;

.field mViewTalking:Landroid/view/View;

.field mViewWithSim:Landroid/view/View;

.field mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

.field private nightBtn:[I

.field private nightText:[I

.field private nightView:[I

.field private numText:[I

.field public random:Ljava/util/Random;

.field public sPhoneNumber1_p:Ljava/lang/String;

.field public sPhoneNumber2_p:Ljava/lang/String;

.field public strNumber:Ljava/lang/String;

.field public str_ContIcon:[Ljava/lang/String;

.field textAddr:Lcom/lsec/core/frame/ctrl/JText;

.field textAddr2:Lcom/lsec/core/frame/ctrl/JText;

.field textOperator:Lcom/lsec/core/frame/ctrl/JText;

.field textState:Lcom/lsec/core/frame/ctrl/JText;

.field textState2:Lcom/lsec/core/frame/ctrl/JText;

.field public tvDevName2:Lcom/lsec/core/frame/ctrl/JText;

.field public tvDialAnswer:Lcom/lsec/core/frame/ctrl/JText;

.field public tvDialHangup:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtName:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtName2:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtNum2:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtNumBig:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

.field public tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

.field public tvmPin2:Lcom/lsec/core/frame/ctrl/JText;

.field txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

.field txtLinkName2:Lcom/lsec/core/frame/ctrl/JText;

.field txtTalkTime:Lcom/lsec/core/frame/ctrl/JText;

.field txtTalkTime2:Lcom/lsec/core/frame/ctrl/JText;

.field vDial_AIU:Landroid/view/View;

.field vDial_AIU2:Landroid/view/View;

.field private voiceButton:Lcom/lsec/core/frame/ctrl/JButton;

.field private voiceButton1:Lcom/lsec/core/frame/ctrl/JButton;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 5
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 78
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewNoSim:Landroid/view/View;

    .line 79
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewWithSim:Landroid/view/View;

    .line 84
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    .line 85
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    .line 86
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    .line 87
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    .line 88
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    .line 89
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    .line 90
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHide:Landroid/view/View;

    .line 94
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewTalking:Landroid/view/View;

    .line 95
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewContact:Landroid/view/View;

    .line 96
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU2:Landroid/view/View;

    .line 97
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU:Landroid/view/View;

    .line 100
    iput v2, p0, Lcom/syu/bt/page/Page_Dial;->mFullSwitch:I

    .line 120
    new-array v0, v3, [Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

    .line 121
    new-array v0, v3, [Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    .line 122
    new-array v0, v3, [Lcom/lsec/core/frame/ctrl/JView;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->ContactView:[Lcom/lsec/core/frame/ctrl/JView;

    .line 130
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 132
    iput v4, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    .line 133
    iput v4, p0, Lcom/syu/bt/page/Page_Dial;->mPosFocusCpy:I

    .line 136
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Dial;->bTop:Z

    .line 137
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    .line 141
    const/16 v0, 0x32

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 154
    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->nightBtn:[I

    .line 156
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 157
    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->nightView:[I

    .line 159
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    .line 165
    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->nightText:[I

    .line 166
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    .line 167
    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->numText:[I

    .line 279
    new-instance v0, Lcom/syu/bt/page/Page_Dial$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Dial$1;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnPhoneSwitch:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Lcom/syu/bt/page/Page_Dial$2;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Dial$2;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnJumpPair:Ljava/lang/Runnable;

    .line 641
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Dial;->isShow_p:Z

    .line 642
    new-instance v0, Lcom/syu/bt/page/Page_Dial$3;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Dial$3;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnShowTalking:Ljava/lang/Runnable;

    .line 1106
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->sPhoneNumber1_p:Ljava/lang/String;

    .line 1107
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->sPhoneNumber2_p:Ljava/lang/String;

    .line 2342
    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    .line 2516
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

    const/4 v1, 0x4

    const-string v2, "Cont_icon5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->str_ContIcon:[Ljava/lang/String;

    .line 2517
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->random:Ljava/util/Random;

    .line 2626
    new-instance v0, Lcom/syu/bt/page/Page_Dial$4;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Dial$4;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_updateSysTime:Ljava/lang/Runnable;

    .line 171
    iput-object p2, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    .line 172
    return-void

    .line 141
    nop

    :array_0
    .array-data 4
        0x27a2
        0x27a3
        0x27a4
        0x27a5
        0x27a6
        0x27a7
        0x27a8
        0x27a9
        0x27aa
        0x27ab
        0x27ac
        0x27ad
        0x27b1
        0x2798
        0x2793
        0x2794
        0x27e4
        0x2744
        0x2745
        0x274e
        0x2746
        0x274c
        0x274d
        0x274c
        0x27b3
        0x294f
        0x2950
        0x2951
        0x2952
        0x2953
        0x2954
        0x27ca
        0x27c3
        0x27c4
        0x27c6
        0x27c5
        0x27df
        0x27d4
        0x27de
        0x27dd
        0x27dc
        0x27db
        0x27da
        0x27d9
        0x27d8
        0x27d7
        0x27d6
        0x27d5
        0x27ae
        0x2797
    .end array-data

    .line 156
    :array_1
    .array-data 4
        0x2988
        0x2989
        0x298a
        0x298b
        0x298c
        0x273d
        0x289a
        0x289b
    .end array-data

    .line 159
    :array_2
    .array-data 4
        0x2765
        0x2760
        0x2761
        0x2763
        0x2766
        0x2943
        0x293d
        0x2944
        0x293e
        0x2945
        0x293f
        0x2946
        0x2940
        0x2947
        0x2941
        0x2948
        0x2942
        0x2994
        0x2768
        0x276c
        0x2764
        0x2771
        0x2769
        0x276e
        0x2955
        0x276d
        0x2767
    .end array-data

    .line 166
    :array_3
    .array-data 4
        0x2761
        0x2769
        0x2762
        0x2764
        0x2771
        0x276d
        0x276c
    .end array-data
.end method

.method static synthetic access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/syu/bt/page/Page_Dial;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1109
    const/4 v2, 0x1

    .line 1110
    .local v2, "bRet":Z
    const/4 v12, 0x0

    sput-boolean v12, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    .line 1111
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 1112
    .local v5, "id":I
    const-string v12, "gdy7"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " **  btnClick   id = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    sparse-switch v5, :sswitch_data_0

    .line 1617
    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v3, v2

    .end local v2    # "bRet":Z
    .local v3, "bRet":Z
    move v4, v2

    .line 1621
    .end local v3    # "bRet":Z
    .local v4, "bRet":I
    :goto_1
    return v4

    .line 1135
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :sswitch_0
    const-string v12, "gdy7"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 00 btnClick dialThrdPhone = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    sget v12, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v13, 0x22

    if-ne v12, v13, :cond_1

    .line 1137
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x11

    if-ge v12, v13, :cond_0

    .line 1138
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v13, v5, -0x27a2

    invoke-virtual {v12, v13}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto :goto_0

    .line 1140
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v12, :cond_3

    .line 1141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1142
    add-int/lit16 v12, v5, -0x27a2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    .line 1143
    const-string v12, "gdy7"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 11 btnClick dialThrdNumber = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v12, :cond_2

    .line 1146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1150
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v13, v5, -0x27a2

    invoke-virtual {v12, v13}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    .line 1152
    const-string v12, "gdy7"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 22 btnClick dialThrdNumber = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v14, v5, -0x27a2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1168
    :sswitch_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v13, v5, -0x27d4

    invoke-virtual {v12, v13}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    .line 1169
    add-int/lit16 v11, v5, -0x27d4

    .line 1170
    .local v11, "num":I
    const/16 v12, 0xa

    if-ne v11, v12, :cond_4

    .line 1171
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    goto/16 :goto_0

    .line 1172
    :cond_4
    const/16 v12, 0xb

    if-ne v11, v12, :cond_5

    .line 1173
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    goto/16 :goto_0

    .line 1175
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    goto/16 :goto_0

    .line 1178
    .end local v11    # "num":I
    :sswitch_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->filterDemand_DZSJ()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-nez v12, :cond_6

    .line 1179
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto/16 :goto_0

    .line 1180
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v12, :cond_0

    .line 1181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1182
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    .line 1183
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v13, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v12, :cond_0

    .line 1186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v13, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1188
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    const/4 v13, 0x0

    .line 1189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .line 1188
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1189
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1188
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    .line 1190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v12, :cond_0

    .line 1193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1201
    :sswitch_3
    const-string v12, "hy"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " ** 11 dial Dial_Btn_Dial1 sPhone_callin_mac = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sPhone_callin_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_8

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1203
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1209
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->dial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1212
    :cond_9
    const-string v12, "hy"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " ** 00 dial C_DIAL phoneNumer strNumberBak = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sPhoneNumber = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    sget-object v12, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1214
    const-string v12, "hy"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " ** 11 dial C_DIAL phoneNumer strNumberBak = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    sget-object v12, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1217
    :cond_a
    const-string v12, "hy"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " ** 22 dial C_DIAL phoneNumer strNumberBak = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto/16 :goto_0

    .line 1224
    :sswitch_4
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v12

    if-nez v12, :cond_0

    sget-boolean v12, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v12, :cond_0

    .line 1225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mRunnPhoneSwitch:Ljava/lang/Runnable;

    invoke-static {v12}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1226
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Dial;->mRunnPhoneSwitch:Ljava/lang/Runnable;

    const-wide/16 v14, 0x5dc

    invoke-static {v12, v13, v14, v15}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1227
    sget v12, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    if-nez v12, :cond_0

    sget-object v12, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x3

    if-lt v12, v13, :cond_0

    sget-object v12, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    const/4 v13, 0x3

    if-lt v12, v13, :cond_0

    .line 1228
    const/4 v12, 0x1

    sput v12, Lcom/syu/bt/App_Bt;->iPhoneSwitchStep:I

    .line 1229
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 1236
    sget-object v12, Lcom/syu/bt/App_Bt;->mListHis_p:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1237
    sget-object v12, Lcom/syu/bt/App_Bt;->mListHis_p2:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1238
    sget-object v12, Lcom/syu/bt/App_Bt;->mListHis_p:Ljava/util/List;

    sget-object v13, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v13, v13, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1239
    sget-object v12, Lcom/syu/bt/App_Bt;->mListHis_p:Ljava/util/List;

    sget-object v13, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v13, v13, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1240
    sget-object v12, Lcom/syu/bt/App_Bt;->mListHis_p:Ljava/util/List;

    sget-object v13, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v13, v13, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1241
    sget-object v12, Lcom/syu/bt/App_Bt;->mListHis_p2:Ljava/util/List;

    sget-object v13, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v13, v13, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1242
    sget-object v12, Lcom/syu/bt/App_Bt;->mListHis_p2:Ljava/util/List;

    sget-object v13, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v13, v13, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1243
    sget-object v12, Lcom/syu/bt/App_Bt;->mListHis_p2:Ljava/util/List;

    sget-object v13, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v13, v13, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 1249
    :sswitch_5
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_b

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1250
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1251
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_b
    const-string v12, "book3"

    const-string v13, " 00 Dial_Btn_Dial_p1 "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    sget-boolean v12, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-nez v12, :cond_0

    .line 1254
    :cond_c
    const-string v12, "book3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 11 Dial_Btn_Dial_p1 sPhoneNumber = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    sget v12, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 1256
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v13, 0xf

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v16, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v19, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v18, v18, v19

    aput-object v18, v16, v17

    invoke-virtual/range {v12 .. v16}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 1258
    :cond_d
    sget-object v12, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sput-object v12, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 1259
    const/4 v12, 0x0

    sput v12, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    .line 1260
    const-string v12, "dial"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Dial_Btn_Dial1 id = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sPhoneNumber = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " CALL_NUMBER = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->sPhoneNumber1_p:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    sget-object v12, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_e

    .line 1262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->sPhoneNumber1_p:Ljava/lang/String;

    sput-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 1263
    :cond_e
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/syu/bt/page/Page_Dial;->sPhoneNumber1_p:Ljava/lang/String;

    .line 1264
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->dial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1268
    :sswitch_6
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_f

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1269
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1270
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_f
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    sget-boolean v12, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-nez v12, :cond_0

    .line 1272
    :cond_10
    sget v12, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v12, :cond_11

    .line 1273
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v13, 0xf

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v16, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v19, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v18, v18, v19

    aput-object v18, v16, v17

    invoke-virtual/range {v12 .. v16}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 1275
    :cond_11
    sget-object v12, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    sput-object v12, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    .line 1276
    const/4 v12, 0x1

    sput v12, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    .line 1278
    const-string v12, "dial"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Dial_Btn_Dial2 id = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sPhoneNumber = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " CALL_NUMBER = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/syu/bt/App_Bt;->sPhone2_CALL_NUMBER:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->sPhoneNumber2_p:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    sget-object v12, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_12

    .line 1280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->sPhoneNumber2_p:Ljava/lang/String;

    sput-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 1281
    :cond_12
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/syu/bt/page/Page_Dial;->sPhoneNumber2_p:Ljava/lang/String;

    .line 1282
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->dial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1302
    :sswitch_7
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_13

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1303
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1305
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_13
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDialIpPhone()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v12}, Lcom/syu/bt/Act_Bt;->showProgressIpPhoneDlg()V

    goto/16 :goto_0

    .line 1310
    :sswitch_8
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_14

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1311
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1313
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_14
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-nez v12, :cond_16

    .line 1314
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    .line 1315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v12, :cond_15

    .line 1317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1319
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v12, :cond_0

    .line 1320
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    .line 1321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v13, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v12, :cond_17

    .line 1323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v13, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    :cond_17
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1332
    :sswitch_9
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_18

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1333
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1334
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_18
    const-string v12, "gdy8"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " 00 btnClick Dial_Btn_Hang1 U_PHONE_STATE = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hangIpPhone()V

    .line 1336
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->stopIpPhoneTimer()V

    .line 1337
    const-string v12, "sfth3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " ** 33 Ipc Dial_Btn_Hang1  App_Bt.bPhone2_dialThrdPhone = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v14, Lcom/syu/bt/App_Bt;->bPhone2_dialThrdPhone:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " dialThrdPhone = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v12, :cond_19

    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_19

    sget-boolean v12, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-nez v12, :cond_19

    .line 1339
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneCurrent()V

    goto/16 :goto_0

    .line 1340
    :cond_19
    sget-boolean v12, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v12, :cond_1a

    sget-boolean v12, Lcom/syu/bt/App_Bt;->bPhone2_dialThrdPhone:Z

    if-eqz v12, :cond_1a

    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    const/4 v13, 0x3

    if-lt v12, v13, :cond_1a

    .line 1341
    const/4 v12, 0x0

    sput-boolean v12, Lcom/syu/bt/App_Bt;->bPhone2_dialThrdPhone:Z

    .line 1342
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneCurrent()V

    goto/16 :goto_0

    .line 1343
    :cond_1a
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 1344
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto/16 :goto_0

    .line 1345
    :cond_1b
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7731()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1346
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto/16 :goto_0

    .line 1352
    :sswitch_a
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    if-eqz v12, :cond_0

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->showLoveNumber()V

    .line 1357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Lcom/syu/bt/page/Page_Dial$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/syu/bt/page/Page_Dial$8;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 1370
    :sswitch_b
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_1c

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1371
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1373
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_1c
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    if-eqz v12, :cond_1d

    .line 1375
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1376
    sget-boolean v12, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v12, :cond_0

    .line 1377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    const/4 v13, 0x6

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v14

    iget-object v14, v14, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v15, "str_note_swith2htp"

    invoke-virtual {v14, v15}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1383
    :cond_1d
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->linkCut()V

    goto/16 :goto_0

    .line 1386
    :sswitch_c
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_1e

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1387
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1389
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_1e
    sget-object v12, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v13, "TZY_BT_1920"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 1390
    sget-object v12, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    if-nez v12, :cond_1f

    .line 1391
    sget-object v12, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v13, "yl_dn1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 1392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v12, v12, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v13, 0x271c

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_0

    .line 1394
    :cond_1f
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto/16 :goto_0

    .line 1398
    :cond_20
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    goto/16 :goto_0

    .line 1403
    :sswitch_d
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_21

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1404
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1406
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_21
    sget v12, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_22

    .line 1407
    sget v12, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v13, 0x6

    if-eq v12, v13, :cond_22

    .line 1408
    sget v12, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v13, 0x7

    if-ne v12, v13, :cond_23

    .line 1409
    :cond_22
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v12

    if-eqz v12, :cond_23

    .line 1410
    sget-boolean v12, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v12, :cond_0

    .line 1411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    const/4 v13, 0x6

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v14

    iget-object v14, v14, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v15, "str_note_swith2htp"

    invoke-virtual {v14, v15}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1417
    :cond_23
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto/16 :goto_0

    .line 1422
    :sswitch_e
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_24

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1423
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1425
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_24
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto/16 :goto_0

    .line 1428
    :sswitch_f
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_25

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1429
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1431
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_25
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->MicSwitch()V

    goto/16 :goto_0

    .line 1435
    :sswitch_10
    const-string v12, "pop3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " Dial_Btn_steer  U_PHONE_STATE = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1437
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->showViewTalking(Z)V

    goto/16 :goto_0

    .line 1444
    :sswitch_11
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->EnableHideKeyboard(Z)V

    goto/16 :goto_0

    .line 1447
    :sswitch_12
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->EnableHideKeyboard(Z)V

    goto/16 :goto_0

    .line 1450
    :sswitch_13
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v12

    if-eqz v12, :cond_27

    .line 1451
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    if-eqz v12, :cond_0

    .line 1452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_26

    .line 1453
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1455
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1458
    :cond_27
    const-string v12, ""

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    .line 1459
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/syu/bt/page/Page_Dial;->EnableHideNumber(Z)V

    goto/16 :goto_0

    .line 1463
    :sswitch_14
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v12

    if-eqz v12, :cond_28

    .line 1464
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->SetJumpNavi()V

    goto/16 :goto_0

    .line 1466
    :cond_28
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1467
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto/16 :goto_0

    .line 1472
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v12}, Lcom/syu/bt/Act_Bt;->Func_Back()Z

    goto/16 :goto_0

    .line 1475
    :sswitch_16
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_29

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1476
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1478
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_29
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 1479
    const-string v12, "contact_save1"

    invoke-static {v12}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    .line 1480
    .local v6, "map1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v12, 0x281c

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1481
    const/16 v12, 0x281e

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1482
    const/16 v12, 0x281e

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1486
    .end local v6    # "map1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_2a
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 1487
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/16 v13, 0x281e

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1493
    :sswitch_17
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_2b

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1494
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1496
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_2b
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1497
    const-string v12, "contact_save2"

    invoke-static {v12}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 1498
    .local v7, "map2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v12, 0x281c

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1500
    const/16 v12, 0x281e

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 1499
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 1500
    if-nez v12, :cond_0

    .line 1502
    const/16 v12, 0x281e

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1501
    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1506
    .end local v7    # "map2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_2c
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 1507
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/16 v13, 0x281e

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1514
    :sswitch_18
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_2d

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1515
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1517
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_2d
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 1518
    const-string v12, "contact_save3"

    invoke-static {v12}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    .line 1519
    .local v8, "map3":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v12, 0x281c

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1520
    const/16 v12, 0x281e

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1521
    const/16 v12, 0x281e

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1525
    .end local v8    # "map3":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_2e
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_0

    .line 1526
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/16 v13, 0x281e

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1533
    :sswitch_19
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_2f

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1534
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1536
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_2f
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v12

    if-eqz v12, :cond_30

    .line 1537
    const-string v12, "contact_save4"

    invoke-static {v12}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    .line 1538
    .local v9, "map4":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v12, 0x281c

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1540
    const/16 v12, 0x281e

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 1539
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 1540
    if-nez v12, :cond_0

    .line 1542
    const/16 v12, 0x281e

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1541
    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1546
    .end local v9    # "map4":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_30
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_0

    .line 1547
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/16 v13, 0x281e

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1554
    :sswitch_1a
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_31

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1555
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1557
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_31
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v12

    if-eqz v12, :cond_32

    .line 1558
    const-string v12, "contact_save5"

    invoke-static {v12}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    .line 1559
    .local v10, "map5":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v12, 0x281c

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1561
    const/16 v12, 0x281e

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 1560
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 1561
    if-nez v12, :cond_0

    .line 1563
    const/16 v12, 0x281e

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1562
    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1567
    .end local v10    # "map5":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_32
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_0

    .line 1568
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/16 v13, 0x281e

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1575
    :sswitch_1b
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v12

    if-eqz v12, :cond_33

    move v3, v2

    .end local v2    # "bRet":Z
    .restart local v3    # "bRet":Z
    move v4, v2

    .line 1576
    .restart local v4    # "bRet":I
    goto/16 :goto_1

    .line 1578
    .end local v3    # "bRet":Z
    .end local v4    # "bRet":I
    .restart local v2    # "bRet":Z
    :cond_33
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x5

    if-le v12, v13, :cond_0

    .line 1579
    sget-object v12, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v12, v12, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    const/4 v13, 0x5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/16 v13, 0x281e

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1583
    :sswitch_1c
    sget-object v12, Lcom/lsec/core/ipc/module/main/Sound;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/page/Page_Dial;->mSB_BtVol:Lcom/lsec/core/frame/ctrl/JSeekBar;

    invoke-virtual {v14}, Lcom/lsec/core/frame/ctrl/JSeekBar;->getValue()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    goto/16 :goto_0

    .line 1587
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    if-eqz v12, :cond_0

    .line 1589
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JViewPager;->setCurrentItem(I)V

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->childPause()V

    .line 1592
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->updateViewFocus()V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->childResume()V

    goto/16 :goto_0

    .line 1597
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    if-eqz v12, :cond_0

    .line 1599
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JViewPager;->setCurrentItem(I)V

    .line 1600
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->childPause()V

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->updateViewFocus()V

    .line 1602
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->childResume()V

    goto/16 :goto_0

    .line 1607
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    if-eqz v12, :cond_0

    .line 1609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JViewPager;->setCurrentItem(I)V

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->childPause()V

    .line 1611
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->updateViewFocus()V

    .line 1612
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->childResume()V

    goto/16 :goto_0

    .line 1113
    :sswitch_data_0
    .sparse-switch
        0x278f -> :sswitch_14
        0x2791 -> :sswitch_7
        0x2792 -> :sswitch_8
        0x2793 -> :sswitch_3
        0x2794 -> :sswitch_9
        0x2795 -> :sswitch_3
        0x2796 -> :sswitch_9
        0x2797 -> :sswitch_b
        0x2798 -> :sswitch_e
        0x2799 -> :sswitch_10
        0x279a -> :sswitch_5
        0x279b -> :sswitch_6
        0x279c -> :sswitch_4
        0x27a2 -> :sswitch_0
        0x27a3 -> :sswitch_0
        0x27a4 -> :sswitch_0
        0x27a5 -> :sswitch_0
        0x27a6 -> :sswitch_0
        0x27a7 -> :sswitch_0
        0x27a8 -> :sswitch_0
        0x27a9 -> :sswitch_0
        0x27aa -> :sswitch_0
        0x27ab -> :sswitch_0
        0x27ac -> :sswitch_0
        0x27ad -> :sswitch_0
        0x27ae -> :sswitch_b
        0x27af -> :sswitch_c
        0x27b0 -> :sswitch_d
        0x27b1 -> :sswitch_e
        0x27b2 -> :sswitch_f
        0x27b3 -> :sswitch_2
        0x27b4 -> :sswitch_11
        0x27b5 -> :sswitch_12
        0x27b6 -> :sswitch_13
        0x27bb -> :sswitch_1d
        0x27bc -> :sswitch_1f
        0x27bd -> :sswitch_1e
        0x27c3 -> :sswitch_3
        0x27c4 -> :sswitch_9
        0x27c5 -> :sswitch_e
        0x27c6 -> :sswitch_9
        0x27d4 -> :sswitch_1
        0x27d5 -> :sswitch_1
        0x27d6 -> :sswitch_1
        0x27d7 -> :sswitch_1
        0x27d8 -> :sswitch_1
        0x27d9 -> :sswitch_1
        0x27da -> :sswitch_1
        0x27db -> :sswitch_1
        0x27dc -> :sswitch_1
        0x27dd -> :sswitch_1
        0x27de -> :sswitch_1
        0x27df -> :sswitch_1
        0x27e4 -> :sswitch_a
        0x2866 -> :sswitch_1c
        0x2937 -> :sswitch_15
        0x294f -> :sswitch_16
        0x2950 -> :sswitch_17
        0x2951 -> :sswitch_18
        0x2952 -> :sswitch_19
        0x2953 -> :sswitch_1a
        0x2954 -> :sswitch_1b
    .end sparse-switch
.end method

.method private btnClick_Third(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 990
    const/4 v0, 0x1

    .line 992
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 994
    .local v3, "id":I
    const-string v5, "gdy7"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " **  btnClick_Third   id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    packed-switch v3, :pswitch_data_0

    .line 1100
    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v1, v0

    .end local v0    # "bRet":Z
    .local v1, "bRet":Z
    move v2, v0

    .line 1104
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_1
    return v2

    .line 997
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :pswitch_1
    const-string v5, "pop3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " Dial_Btn_steer  U_PHONE_STATE = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 999
    invoke-virtual {p0, v4}, Lcom/syu/bt/page/Page_Dial;->showViewTalking(Z)V

    goto :goto_0

    .line 1021
    :pswitch_2
    const-string v4, "gdy7"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 00 btnClick dialThrdPhone = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sget v4, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    .line 1023
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    if-ge v4, v5, :cond_0

    .line 1024
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v5, v3, -0x27a2

    invoke-virtual {v4, v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto :goto_0

    .line 1026
    :cond_1
    iget-boolean v4, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v4, :cond_3

    .line 1027
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1028
    add-int/lit16 v4, v3, -0x27a2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    .line 1029
    const-string v4, "gdy7"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 11 btnClick dialThrdNumber = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v4, :cond_2

    .line 1032
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    :cond_2
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1036
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    add-int/lit16 v5, v3, -0x27a2

    invoke-virtual {v4, v5}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    .line 1038
    const-string v4, "gdy7"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 22 btnClick dialThrdNumber = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v6, v3, -0x27a2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1044
    :pswitch_3
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->switch3rdPhone()V

    goto/16 :goto_0

    .line 1047
    :pswitch_4
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1048
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneHold()V

    goto/16 :goto_0

    .line 1050
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneCurrent()V

    goto/16 :goto_0

    .line 1054
    :pswitch_5
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v4, :cond_8

    .line 1055
    :cond_5
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1056
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    :cond_6
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneCurrent()V

    goto/16 :goto_0

    .line 1059
    :cond_7
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1060
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneCurrent()V

    goto/16 :goto_0

    .line 1063
    :cond_8
    const/4 v0, 0x0

    .line 1064
    goto/16 :goto_0

    .line 1067
    :pswitch_6
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v4, :cond_b

    .line 1068
    :cond_9
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1069
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneHold()V

    goto/16 :goto_0

    .line 1071
    :cond_a
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang3rdPhoneCurrent()V

    goto/16 :goto_0

    .line 1073
    :cond_b
    const/4 v0, 0x0

    .line 1074
    goto/16 :goto_0

    .line 1078
    :pswitch_7
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_c

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 1079
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 1081
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_c
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->VoiceSwitch()V

    goto/16 :goto_0

    .line 1084
    :pswitch_8
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_d

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 1085
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 1087
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_d
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->MicSwitch()V

    goto/16 :goto_0

    .line 1091
    :pswitch_9
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v5

    if-eqz v5, :cond_e

    move v1, v0

    .end local v0    # "bRet":Z
    .restart local v1    # "bRet":Z
    move v2, v0

    .line 1092
    .restart local v2    # "bRet":I
    goto/16 :goto_1

    .line 1095
    .end local v1    # "bRet":Z
    .end local v2    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_e
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bSoundMute:Z

    if-eqz v5, :cond_f

    :goto_2
    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->MuteSwitch(I)V

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x1

    goto :goto_2

    .line 995
    :pswitch_data_0
    .packed-switch 0x2794
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private initHead()V
    .locals 5

    .prologue
    .line 624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->ContactView:[Lcom/lsec/core/frame/ctrl/JView;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 640
    return-void

    .line 625
    :cond_0
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->ContactView:[Lcom/lsec/core/frame/ctrl/JView;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    add-int/lit16 v4, v0, 0x2949

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    aput-object v2, v3, v0

    .line 626
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->ContactView:[Lcom/lsec/core/frame/ctrl/JView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 627
    add-int/lit8 v1, v0, 0x1

    .line 628
    .local v1, "type":I
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->ContactView:[Lcom/lsec/core/frame/ctrl/JView;

    aget-object v2, v2, v0

    new-instance v3, Lcom/syu/bt/page/Page_Dial$7;

    invoke-direct {v3, p0, v1}, Lcom/syu/bt/page/Page_Dial$7;-><init>(Lcom/syu/bt/page/Page_Dial;I)V

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    .end local v1    # "type":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initMyInfo()V
    .locals 10

    .prologue
    const/16 v9, 0x2939

    const/16 v8, 0x2938

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "bEnableFavorite":Z
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v7, 0x293a

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v4, p0, Lcom/syu/bt/page/Page_Dial;->mHeadTime:Lcom/lsec/core/frame/ctrl/JText;

    .line 667
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/syu/bt/page/Page_Dial;->mViewTalking:Landroid/view/View;

    .line 668
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/syu/bt/page/Page_Dial;->mViewContact:Landroid/view/View;

    .line 670
    const/4 v0, 0x1

    .line 672
    :cond_0
    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_23NEW"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/syu/bt/page/Page_Dial;->mViewTalking:Landroid/view/View;

    .line 674
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/syu/bt/page/Page_Dial;->mViewContact:Landroid/view/View;

    .line 677
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v7, 0x293b

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 678
    .local v2, "viewPhone1":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 679
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_9

    move v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v7, 0x293c

    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .line 681
    .local v3, "viewPhone2":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 682
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_a

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 683
    :cond_3
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone_test:Z

    if-eqz v4, :cond_5

    .line 684
    if-eqz v2, :cond_4

    .line 685
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_4
    if-eqz v3, :cond_5

    .line 687
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :cond_5
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_BT_1920"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 691
    invoke-direct {p0}, Lcom/syu/bt/page/Page_Dial;->initHead()V

    .line 692
    const/4 v0, 0x1

    .line 695
    :cond_6
    if-eqz v0, :cond_8

    .line 696
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

    array-length v4, v4

    if-lt v1, v4, :cond_b

    .line 699
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    array-length v4, v4

    if-lt v1, v4, :cond_c

    .line 703
    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_NEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_OEM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 704
    :cond_7
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

    array-length v4, v4

    if-lt v1, v4, :cond_d

    .line 709
    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    array-length v4, v4

    if-lt v1, v4, :cond_f

    .line 716
    .end local v1    # "i":I
    :cond_8
    return-void

    .end local v3    # "viewPhone2":Landroid/view/View;
    :cond_9
    move v4, v6

    .line 679
    goto :goto_0

    .restart local v3    # "viewPhone2":Landroid/view/View;
    :cond_a
    move v4, v5

    .line 682
    goto :goto_1

    .line 697
    .restart local v1    # "i":I
    :cond_b
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    add-int/lit16 v6, v1, 0x293d

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    aput-object v4, v5, v1

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 700
    :cond_c
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    add-int/lit16 v6, v1, 0x2943

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    aput-object v4, v5, v1

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 705
    :cond_d
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

    aget-object v4, v4, v1

    if-eqz v4, :cond_e

    .line 706
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v5}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 704
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 710
    :cond_f
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    aget-object v4, v4, v1

    if-eqz v4, :cond_10

    .line 711
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v5}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 709
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public EnableHideKeyboard(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1837
    if-eqz p1, :cond_2

    .line 1838
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialShowKeyboard:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1842
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialShowKeyboard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1850
    :cond_1
    :goto_0
    return-void

    .line 1844
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideKeyboard:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1845
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideKeyboard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialShowKeyboard:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1848
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialShowKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public EnableHideNumber(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1817
    if-eqz p1, :cond_3

    .line 1818
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 1830
    :cond_1
    :goto_0
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "YL_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1831
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_2

    .line 1832
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 1834
    :cond_2
    return-void

    .line 1824
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1825
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1827
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    goto :goto_0
.end method

.method public GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 5
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    const/16 v4, 0x281e

    .line 2595
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 2596
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 2608
    :cond_0
    :goto_0
    return-void

    .line 2598
    :pswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2601
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v2

    .line 2602
    .local v2, "position":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2603
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2604
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto :goto_0

    .line 2596
    :pswitch_data_0
    .packed-switch 0x27e0
        :pswitch_0
    .end packed-switch
.end method

.method public GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 4
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 2571
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2572
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2578
    :cond_1
    return-void

    .line 2572
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2573
    .local v0, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 2574
    .local v1, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_0

    .line 2575
    invoke-virtual {p0, v1, p2, p3}, Lcom/syu/bt/page/Page_Dial;->pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto :goto_0
.end method

.method public HideOrShowNumberPad()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1805
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    .line 1807
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_1

    .line 1811
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 1812
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    .line 1813
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1812
    :goto_1
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->setVisibility(I)V

    .line 1814
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1808
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1813
    goto :goto_1
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 11
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
    .line 2521
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 2522
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 2567
    :cond_0
    :goto_0
    return-void

    .line 2525
    :pswitch_0
    const/16 v7, 0x27e1

    invoke-virtual {p2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    .line 2526
    .local v6, "viewContent":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 2527
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 2528
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2533
    :cond_1
    :goto_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 2535
    const/16 v7, 0x281e

    invoke-virtual {p2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    .line 2534
    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 2537
    .local v5, "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v7, 0x281c

    invoke-virtual {p2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    .line 2536
    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 2538
    .local v4, "textName":Lcom/lsec/core/frame/ctrl/JText;
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "YL_3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "SYU-XN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2539
    :cond_2
    sget v7, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v7, :cond_8

    const/4 v7, -0x1

    :goto_2
    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 2540
    sget v7, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v7, :cond_9

    const/4 v7, -0x1

    :goto_3
    invoke-virtual {v4, v7}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 2543
    :cond_3
    const/16 v7, 0x281e

    invoke-virtual {p3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2544
    .local v2, "strNumber":Ljava/lang/String;
    const/16 v7, 0x281c

    invoke-virtual {p3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2545
    .local v1, "strName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 2546
    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2548
    :cond_4
    if-eqz v4, :cond_5

    .line 2549
    invoke-virtual {v4, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2550
    :cond_5
    const/16 v7, 0x2822

    invoke-virtual {p2, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 2551
    .local v3, "textDialHead":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_6

    .line 2552
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2553
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->str_ContIcon:[Ljava/lang/String;

    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->random:Ljava/util/Random;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    iget-object v9, v9, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v10

    iget-object v10, v10, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2555
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2556
    iget v7, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    if-ltz v7, :cond_0

    .line 2557
    iget v7, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    if-ne v7, p4, :cond_0

    .line 2558
    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->checkPhoneNumber:Ljava/lang/String;

    .line 2559
    const/4 v7, 0x1

    invoke-virtual {p0, p2, p2, v7}, Lcom/syu/bt/page/Page_Dial;->pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto/16 :goto_0

    .line 2530
    .end local v1    # "strName":Ljava/lang/String;
    .end local v2    # "strNumber":Ljava/lang/String;
    .end local v3    # "textDialHead":Lcom/lsec/core/frame/ctrl/JText;
    .end local v4    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .end local v5    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 2539
    .restart local v4    # "textName":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v5    # "textNumber":Lcom/lsec/core/frame/ctrl/JText;
    :cond_8
    const/high16 v7, -0x1000000

    goto/16 :goto_2

    .line 2540
    :cond_9
    const/high16 v7, -0x1000000

    goto :goto_3

    .line 2522
    nop

    :pswitch_data_0
    .packed-switch 0x27e0
        :pswitch_0
    .end packed-switch
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 964
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Dial;->btnClick_Third(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    const-string v0, "gdy7"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " **  btnClick_Third   bPop3rdPhone = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-nez v0, :cond_0

    .line 973
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Dial;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2745

    if-eq v0, v1, :cond_3

    .line 980
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 985
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, 0x281c

    const/16 v10, 0x2715

    const/16 v9, 0xa

    .line 1626
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1627
    .local v0, "id":I
    const-string v6, "gdy7"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " **  ResponseLongClick   id = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    sparse-switch v0, :sswitch_data_0

    .line 1764
    :cond_0
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 1639
    :sswitch_0
    sget v6, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v6, :cond_1

    .line 1640
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6}, Lcom/syu/bt/Act_Bt;->showPopHySetAI()V

    goto :goto_0

    .line 1642
    :cond_1
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v6}, Lcom/syu/bt/Act_Bt;->showPopHySet()V

    goto :goto_0

    .line 1647
    :sswitch_1
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bPhoneVoice:Z

    if-eqz v6, :cond_0

    .line 1648
    const-string v6, "pv"

    const-string v7, " ** 00 ResponseLongClick PhoneVoice  "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v6}, Lcom/syu/app/ipc/Bt_IpcObj;->PhoneVoice()V

    goto :goto_0

    .line 1653
    :sswitch_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->filterDemand_DZSJ()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-nez v6, :cond_2

    .line 1654
    invoke-static {v12}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 1655
    :cond_2
    iget-boolean v6, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v6, :cond_0

    .line 1656
    const-string v6, ""

    iput-object v6, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    .line 1657
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    .line 1658
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v7, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v6, :cond_0

    .line 1660
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v7, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1664
    :sswitch_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    goto :goto_0

    .line 1667
    :sswitch_4
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1668
    const-string v6, "contact_save1"

    invoke-static {v6}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1669
    .local v1, "map1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1670
    sput v12, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1671
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1672
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1673
    sput v12, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1674
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v10}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_0

    .line 1676
    .end local v1    # "map1":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_4
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1677
    :cond_5
    sput v12, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1678
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1684
    :sswitch_5
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1685
    const-string v6, "contact_save2"

    invoke-static {v6}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 1686
    .local v2, "map2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1687
    sput v13, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1688
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1689
    :cond_6
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1690
    sput v13, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1691
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v10}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_0

    .line 1693
    .end local v2    # "map2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_7
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1694
    :cond_8
    sput v13, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1695
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1701
    :sswitch_6
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1702
    const-string v6, "contact_save3"

    invoke-static {v6}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 1703
    .local v3, "map3":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1704
    const/4 v6, 0x3

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1705
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    .line 1706
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1705
    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    :cond_9
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1708
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1709
    const/4 v6, 0x3

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1710
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v10}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_0

    .line 1712
    .end local v3    # "map3":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_a
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1713
    :cond_b
    const/4 v6, 0x3

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1714
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1720
    :sswitch_7
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1721
    const-string v6, "contact_save4"

    invoke-static {v6}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 1722
    .local v4, "map4":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1723
    const/4 v6, 0x4

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1724
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    .line 1725
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1724
    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1726
    :cond_c
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1727
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1728
    const/4 v6, 0x4

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1729
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v10}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_0

    .line 1731
    .end local v4    # "map4":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_d
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1732
    :cond_e
    const/4 v6, 0x4

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1733
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1739
    :sswitch_8
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1740
    const-string v6, "contact_save5"

    invoke-static {v6}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    .line 1741
    .local v5, "map5":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1742
    const/4 v6, 0x5

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1743
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1744
    :cond_f
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1745
    const/4 v6, 0x5

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1746
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v6, v10}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_0

    .line 1748
    .end local v5    # "map5":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_10
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1749
    :cond_11
    const/4 v6, 0x5

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1750
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1756
    :sswitch_9
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1757
    :cond_12
    const/4 v6, 0x6

    sput v6, Lcom/syu/bt/App_Bt;->mSelectContact:I

    .line 1758
    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_is_delete_one"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1628
    :sswitch_data_0
    .sparse-switch
        0x2793 -> :sswitch_1
        0x2798 -> :sswitch_0
        0x279a -> :sswitch_1
        0x279b -> :sswitch_1
        0x27a2 -> :sswitch_3
        0x27b1 -> :sswitch_0
        0x27b3 -> :sswitch_2
        0x294f -> :sswitch_4
        0x2950 -> :sswitch_5
        0x2951 -> :sswitch_6
        0x2952 -> :sswitch_7
        0x2953 -> :sswitch_8
        0x2954 -> :sswitch_9
    .end sparse-switch
.end method

.method public childPause()V
    .locals 5

    .prologue
    .line 3476
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "YL_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3477
    sget v3, Lcom/syu/bt/App_Bt;->mDialPageId:I

    const/16 v4, 0x2715

    if-ne v3, v4, :cond_1

    .line 3478
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v3}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v0

    .line 3479
    .local v0, "page_Contact":Lcom/syu/bt/page/Page_Contact;
    if-eqz v0, :cond_0

    .line 3480
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Contact;->pause()V

    .line 3495
    .end local v0    # "page_Contact":Lcom/syu/bt/page/Page_Contact;
    :cond_0
    :goto_0
    return-void

    .line 3482
    :cond_1
    sget v3, Lcom/syu/bt/App_Bt;->mDialPageId:I

    const/16 v4, 0x2718

    if-ne v3, v4, :cond_2

    .line 3483
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v3}, Lcom/syu/bt/Act_Bt;->getPageHistory()Lcom/syu/bt/page/Page_History;

    move-result-object v2

    .line 3484
    .local v2, "page_History":Lcom/syu/bt/page/Page_History;
    if-eqz v2, :cond_0

    .line 3485
    invoke-virtual {v2}, Lcom/syu/bt/page/Page_History;->pause()V

    goto :goto_0

    .line 3487
    .end local v2    # "page_History":Lcom/syu/bt/page/Page_History;
    :cond_2
    sget v3, Lcom/syu/bt/App_Bt;->mDialPageId:I

    const/16 v4, 0x2720

    if-ne v3, v4, :cond_0

    .line 3488
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v3}, Lcom/syu/bt/Act_Bt;->getPageFavorite()Lcom/syu/bt/page/Page_Favorite;

    move-result-object v1

    .line 3489
    .local v1, "page_Favorite":Lcom/syu/bt/page/Page_Favorite;
    if-eqz v1, :cond_0

    .line 3490
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Favorite;->pause()V

    goto :goto_0
.end method

.method public childResume()V
    .locals 5

    .prologue
    .line 3498
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "YL_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3499
    sget v3, Lcom/syu/bt/App_Bt;->mDialPageId:I

    const/16 v4, 0x2715

    if-ne v3, v4, :cond_1

    .line 3500
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v3}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v0

    .line 3501
    .local v0, "page_Contact":Lcom/syu/bt/page/Page_Contact;
    if-eqz v0, :cond_0

    .line 3502
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Contact;->resume()V

    .line 3516
    .end local v0    # "page_Contact":Lcom/syu/bt/page/Page_Contact;
    :cond_0
    :goto_0
    return-void

    .line 3504
    :cond_1
    sget v3, Lcom/syu/bt/App_Bt;->mDialPageId:I

    const/16 v4, 0x2718

    if-ne v3, v4, :cond_2

    .line 3505
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v3}, Lcom/syu/bt/Act_Bt;->getPageHistory()Lcom/syu/bt/page/Page_History;

    move-result-object v2

    .line 3506
    .local v2, "page_History":Lcom/syu/bt/page/Page_History;
    if-eqz v2, :cond_0

    .line 3507
    invoke-virtual {v2}, Lcom/syu/bt/page/Page_History;->resume()V

    goto :goto_0

    .line 3509
    .end local v2    # "page_History":Lcom/syu/bt/page/Page_History;
    :cond_2
    sget v3, Lcom/syu/bt/App_Bt;->mDialPageId:I

    const/16 v4, 0x2720

    if-ne v3, v4, :cond_0

    .line 3510
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v3}, Lcom/syu/bt/Act_Bt;->getPageFavorite()Lcom/syu/bt/page/Page_Favorite;

    move-result-object v1

    .line 3511
    .local v1, "page_Favorite":Lcom/syu/bt/page/Page_Favorite;
    if-eqz v1, :cond_0

    .line 3512
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Favorite;->resume()V

    goto :goto_0
.end method

.method public controlDialInfo(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 720
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "BT_23NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    :goto_0
    return-void

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showLoveNumber()V

    .line 724
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 728
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Dial;->updateSimLayout(I)V

    .line 729
    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Dial;->EnableHideNumber(Z)V

    .line 730
    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Dial;->showViewTalking(Z)V

    goto :goto_0

    .line 738
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Dial;->updateSimLayout(I)V

    .line 739
    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Dial;->EnableHideNumber(Z)V

    .line 740
    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Dial;->showViewTalking(Z)V

    goto :goto_0

    .line 752
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Dial;->updateSimLayout(I)V

    .line 753
    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Dial;->showViewTalking(Z)V

    goto :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dialByKey()Z
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 2697
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Dial;->bTop:Z

    if-eqz v0, :cond_2

    .line 2698
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, v2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2699
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I)V

    .line 2708
    :goto_0
    const/4 v0, 0x1

    .line 2711
    :goto_1
    return v0

    .line 2701
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2702
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->redial()V

    goto :goto_0

    .line 2704
    :cond_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    goto :goto_0

    .line 2711
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public disableSaveView(Z)V
    .locals 8
    .param p1, "ani"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 392
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY6"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_UI5"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v6, 0x2794

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 395
    .local v0, "hang":Lcom/lsec/core/frame/ctrl/JButton;
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_NEW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v6, 0x2793

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 400
    .local v1, "save":Lcom/lsec/core/frame/ctrl/JButton;
    :goto_0
    const/4 v2, 0x0

    .line 401
    .local v2, "saveEnable":Z
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x9

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 406
    :goto_1
    if-eqz v0, :cond_1

    .line 407
    if-eqz v2, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 409
    :cond_1
    if-eqz v1, :cond_2

    .line 410
    if-eqz v2, :cond_6

    move v3, v5

    :goto_3
    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 414
    .end local v0    # "hang":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "save":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "saveEnable":Z
    :cond_2
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 415
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    if-eqz v3, :cond_7

    .line 416
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showLoveNumber()V

    .line 417
    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Dial;->hideDialView(Z)V

    .line 418
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 419
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :cond_3
    :goto_4
    return-void

    .line 398
    .restart local v0    # "hang":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v6, 0x27e4

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .restart local v1    # "save":Lcom/lsec/core/frame/ctrl/JButton;
    goto :goto_0

    .line 403
    .restart local v2    # "saveEnable":Z
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v3, v5

    .line 407
    goto :goto_2

    :cond_6
    move v3, v4

    .line 410
    goto :goto_3

    .line 420
    .end local v0    # "hang":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "save":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "saveEnable":Z
    :cond_7
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 421
    if-eqz p1, :cond_8

    .line 422
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/syu/bt/page/Page_Dial$5;

    invoke-direct {v4, p0}, Lcom/syu/bt/page/Page_Dial$5;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 431
    :cond_8
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 432
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 433
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Dial;->hideDialView(Z)V

    goto :goto_4

    .line 401
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public dismissPopBtHead()V
    .locals 5

    .prologue
    .line 3184
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272d

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 3185
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 3186
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3188
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3191
    :cond_0
    return-void
.end method

.method public getSaveViewState()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideDialView(Z)V
    .locals 2
    .param p1, "vis"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHide:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHide:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_0
    return-void

    .line 441
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public hideInCallAnim()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 930
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 935
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-virtual {v0}, Lcom/lsec/core/util/Runnable_AnimDrawable;->stopRun()V

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 939
    :cond_0
    return-void
.end method

.method public init()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x27be

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewNoSim:Landroid/view/View;

    .line 482
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x27bf

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewWithSim:Landroid/view/View;

    .line 483
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x27b1

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton:Lcom/lsec/core/frame/ctrl/JButton;

    .line 484
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x2798

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton1:Lcom/lsec/core/frame/ctrl/JButton;

    .line 485
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x27d0

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialFullScreen:Landroid/view/View;

    .line 486
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x27cf

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHalfScreen:Landroid/view/View;

    .line 487
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 488
    const/16 v9, 0x278f

    .line 487
    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowGps:Landroid/view/View;

    .line 489
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 490
    const/16 v9, 0x27d1

    .line 489
    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideNumber:Landroid/view/View;

    .line 491
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 492
    const/16 v9, 0x27d2

    .line 491
    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialHideKeyboard:Landroid/view/View;

    .line 493
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    .line 494
    const/16 v9, 0x27d3

    .line 493
    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewDialShowKeyboard:Landroid/view/View;

    .line 496
    invoke-virtual {p0, v8}, Lcom/syu/bt/page/Page_Dial;->EnableHideNumber(Z)V

    .line 497
    invoke-virtual {p0, v6}, Lcom/syu/bt/page/Page_Dial;->EnableHideKeyboard(Z)V

    .line 498
    invoke-virtual {p0, v6}, Lcom/syu/bt/page/Page_Dial;->updateSimLayout(I)V

    .line 500
    const-string v5, "size"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " init iDensity = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/syu/bt/App_Bt;->iDensity:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x275e

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    .line 502
    .local v4, "view_40":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 503
    sget v5, Lcom/syu/bt/App_Bt;->iDensity:I

    const/16 v9, 0xf0

    if-lt v5, v9, :cond_d

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x2766

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->textOperator:Lcom/lsec/core/frame/ctrl/JText;

    .line 507
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x27c0

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    .line 508
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x27c1

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    .line 509
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 510
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x27c2

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    .line 513
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 515
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_NEW"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 516
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    new-instance v9, Lcom/syu/bt/page/Page_Dial$6;

    invoke-direct {v9, p0}, Lcom/syu/bt/page/Page_Dial$6;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    :cond_2
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v9, 0x289a

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU:Landroid/view/View;

    .line 530
    const-string v5, "ai"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  setTypeface isAIOnOff = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isAiuvoice = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bAI_JZ:Z

    if-eqz v5, :cond_4

    .line 532
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showAI()V

    .line 536
    :cond_4
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-eqz v5, :cond_5

    .line 537
    const-string v5, "sys.blinkbt.ai.noise.code"

    const v9, 0xffff

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    .line 538
    const-string v5, "persist.lsec.aecdelay"

    const/4 v9, -0x1

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_e

    move v5, v8

    :goto_1
    sput-boolean v5, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    .line 539
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x289b

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU2:Landroid/view/View;

    .line 540
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showAIGT()V

    .line 543
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x27cb

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    .line 544
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x27cc

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    .line 545
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x27cd

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowSave:Landroid/view/View;

    .line 546
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x27ce

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHide:Landroid/view/View;

    .line 547
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x2774

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvDialAnswer:Lcom/lsec/core/frame/ctrl/JText;

    .line 548
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x2775

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvDialHangup:Lcom/lsec/core/frame/ctrl/JText;

    .line 549
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x2761

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    .line 551
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x27a0

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    .line 552
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x27a1

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    .line 554
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x276d

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtName2:Lcom/lsec/core/frame/ctrl/JText;

    .line 555
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x2769

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNum2:Lcom/lsec/core/frame/ctrl/JText;

    .line 556
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x276c

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumBig:Lcom/lsec/core/frame/ctrl/JText;

    .line 557
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_6

    .line 558
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v8, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;

    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    invoke-direct {v8, p0, v9}, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;-><init>(Lcom/syu/bt/page/Page_Dial;Lcom/lsec/core/frame/ctrl/JText;)V

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 561
    :cond_6
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_23NEW"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 562
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->numText:[I

    array-length v5, v5

    if-lt v1, v5, :cond_f

    .line 572
    .end local v1    # "k":I
    :cond_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v8, 0x2762

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    .line 573
    const-string v5, "gdy7"

    const-string v8, " init tvTxtMiniNumber 000 "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_8

    .line 575
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 576
    const-string v5, "gdy7"

    const-string v7, " init tvTxtMiniNumber 111 "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v7, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;

    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    invoke-direct {v7, p0, v8}, Lcom/syu/bt/page/Page_Dial$MyTextWatcher;-><init>(Lcom/syu/bt/page/Page_Dial;Lcom/lsec/core/frame/ctrl/JText;)V

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 582
    :cond_8
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v7, 0x27e0

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JGridView;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 584
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v7, 0x27e5

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JViewPager;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    .line 585
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    if-eqz v5, :cond_9

    .line 586
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JViewPager;->setFocusable(Z)V

    .line 587
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JViewPager;->isCanScroll(Z)V

    .line 588
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->updateViewFocus()V

    .line 591
    :cond_9
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v7, 0x277a

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    .line 592
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 593
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 594
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "str":[Ljava/lang/String;
    if-eqz v2, :cond_a

    array-length v5, v2

    if-lez v5, :cond_a

    .line 596
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    aget-object v6, v2, v6

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    iget-object v7, v7, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v8, v8, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 601
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v2    # "str":[Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/syu/bt/page/Page_Dial;->initMyInfo()V

    .line 604
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 605
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x2866

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JSeekBar;

    iput-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mSB_BtVol:Lcom/lsec/core/frame/ctrl/JSeekBar;

    .line 606
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mSB_BtVol:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-eqz v5, :cond_b

    .line 607
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mSB_BtVol:Lcom/lsec/core/frame/ctrl/JSeekBar;

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgressMax(I)V

    .line 610
    :cond_b
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZHTDConfig()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 611
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->initMenuLayout()V

    .line 614
    :cond_c
    sget v5, Lcom/syu/bt/App_Bt;->color:I

    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Dial;->setButtonColor(I)V

    .line 616
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->updateShowDial()V

    .line 617
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->initTypeface()V

    .line 618
    sget v5, Lcom/syu/bt/App_Bt;->mColorType:I

    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Dial;->setDayOrNight(I)V

    .line 619
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->updateBtNameAndPinTip()V

    .line 620
    return-void

    :cond_d
    move v5, v7

    .line 503
    goto/16 :goto_0

    :cond_e
    move v5, v6

    .line 538
    goto/16 :goto_1

    .line 563
    .restart local v1    # "k":I
    :cond_f
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->numText:[I

    aget v8, v8, v1

    invoke-virtual {v5, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 564
    .local v3, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_10

    .line 565
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 566
    const-string v5, "gdy7"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  setTypeface k = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method public initMenuLayout()V
    .locals 3

    .prologue
    .line 2745
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2746
    const/16 v2, 0x277b

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2745
    check-cast v0, Lcom/syu/bt/ctrl/CircleMenuLayout;

    .line 2747
    .local v0, "menuLayout":Lcom/syu/bt/ctrl/CircleMenuLayout;
    if-eqz v0, :cond_0

    .line 2749
    new-instance v1, Lcom/syu/bt/page/Page_Dial$9;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Dial$9;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/CircleMenuLayout;->setOnMenuItemClickListener(Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;)V

    .line 2844
    new-instance v1, Lcom/syu/bt/page/Page_Dial$10;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Dial$10;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/CircleMenuLayout;->setOnMenuItemLongClickListener(Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;)V

    .line 2927
    :cond_0
    return-void
.end method

.method public initTime()V
    .locals 3

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mHeadTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_1

    .line 2613
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2614
    const-string v1, "k:mm"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2619
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2622
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mHeadTime:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2624
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 2616
    :cond_2
    const-string v1, "h:mm"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public initTypeface()V
    .locals 7

    .prologue
    .line 3075
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v6, "TZY_NEW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3109
    :cond_0
    :goto_0
    return-void

    .line 3078
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x2765

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 3079
    .local v2, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_2

    .line 3080
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v5}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3083
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x2760

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 3084
    .local v1, "state":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_3

    .line 3085
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v5}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3088
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x2764

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 3089
    .local v3, "time":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_4

    .line 3090
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v5}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3092
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x2771

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JText;

    .line 3093
    .local v4, "time2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v4, :cond_5

    .line 3094
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v5}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3097
    :cond_5
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_6

    .line 3098
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v6, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v6, v6, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v6}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3104
    :cond_6
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    const/16 v6, 0x2763

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 3105
    .local v0, "name":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 3106
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-static {v5}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0
.end method

.method public isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2512
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2513
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 2360
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V

    .line 2362
    return-void
.end method

.method public onNotify_UniCar(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 2366
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2367
    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify_UniCar(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V

    .line 2368
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 471
    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Dial;->bTop:Z

    .line 474
    sput-boolean v0, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    .line 475
    sput-boolean v0, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 476
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->childPause()V

    .line 477
    return-void
.end method

.method public popBtHead()V
    .locals 5

    .prologue
    .line 3178
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272d

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 3179
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3180
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3181
    :cond_0
    return-void
.end method

.method public popTestDlg()V
    .locals 6

    .prologue
    const/16 v5, 0x272a

    .line 1768
    sget v2, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1769
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 1770
    const-string v3, ""

    const/4 v4, 0x1

    .line 1769
    invoke-virtual {v2, v5, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v1

    .line 1771
    .local v1, "popDlg":Landroid/app/Dialog;
    if-eqz v1, :cond_1

    .line 1772
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 1773
    .local v0, "page":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1776
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1779
    .end local v0    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v1    # "popDlg":Landroid/app/Dialog;
    :cond_1
    return-void
.end method

.method public pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "pagePressed"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 2581
    if-eqz p3, :cond_2

    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    .line 2584
    .local v0, "bFocus":Z
    :goto_0
    const/16 v2, 0x27e3

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 2583
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 2585
    .local v1, "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 2586
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 2588
    :cond_0
    const/16 v2, 0x27e2

    invoke-virtual {p1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 2589
    .restart local v1    # "txt":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 2590
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 2591
    :cond_1
    return-void

    .line 2581
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
    .line 2461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2462
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Dial;->resetList(Ljava/util/List;)V

    .line 2476
    :cond_0
    :goto_0
    return-void

    .line 2466
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .local v0, "listContact":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-virtual {p0, p1}, Lcom/syu/bt/page/Page_Dial;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2468
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2474
    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Dial;->resetList(Ljava/util/List;)V

    goto :goto_0

    .line 2468
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2469
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v4, 0x281e

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2470
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2471
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public resetBtnEnable()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 942
    sget-boolean v5, Lcom/syu/bt/App_Bt;->hideBtnWhenDisconnect:Z

    if-eqz v5, :cond_0

    .line 944
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 945
    .local v1, "flag":Z
    :goto_0
    const/16 v2, 0x278f

    .local v2, "i":I
    :goto_1
    const/16 v5, 0x27b3

    if-lt v2, v5, :cond_3

    .line 952
    .end local v1    # "flag":Z
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isLuChangConfig()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7731()Z

    move-result v5

    if-nez v5, :cond_1

    .line 953
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    .line 954
    .restart local v1    # "flag":Z
    :goto_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x27b1

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 955
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 959
    .end local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "flag":Z
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->updateSoundVol()V

    .line 960
    return-void

    :cond_2
    move v1, v4

    .line 944
    goto :goto_0

    .line 946
    .restart local v1    # "flag":Z
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 947
    .restart local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_4

    .line 948
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 945
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "flag":Z
    .end local v2    # "i":I
    :cond_5
    move v1, v4

    .line 953
    goto :goto_2
.end method

.method public resetList()V
    .locals 4

    .prologue
    .line 2479
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "YL_BT_1920"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2480
    sget v2, Lcom/syu/bt/App_Bt;->mDialPageId:I

    const/16 v3, 0x2715

    if-ne v2, v3, :cond_1

    .line 2481
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v2}, Lcom/syu/bt/Act_Bt;->getPageContact()Lcom/syu/bt/page/Page_Contact;

    move-result-object v0

    .line 2482
    .local v0, "page_Contact":Lcom/syu/bt/page/Page_Contact;
    if-eqz v0, :cond_0

    .line 2483
    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Contact;->resetList()V

    .line 2500
    .end local v0    # "page_Contact":Lcom/syu/bt/page/Page_Contact;
    :cond_0
    :goto_0
    return-void

    .line 2485
    :cond_1
    sget v2, Lcom/syu/bt/App_Bt;->mDialPageId:I

    const/16 v3, 0x2718

    if-ne v2, v3, :cond_0

    .line 2486
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v2}, Lcom/syu/bt/Act_Bt;->getPageHistory()Lcom/syu/bt/page/Page_History;

    move-result-object v1

    .line 2487
    .local v1, "page_History":Lcom/syu/bt/page/Page_History;
    if-eqz v1, :cond_0

    .line 2488
    invoke-virtual {v1}, Lcom/syu/bt/page/Page_History;->resetList()V

    goto :goto_0

    .line 2491
    .end local v1    # "page_History":Lcom/syu/bt/page/Page_History;
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2492
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showLoveNumber()V

    goto :goto_0

    .line 2494
    :cond_3
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v2, :cond_4

    .line 2495
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2}, Lcom/syu/bt/db/Bt_Info;->sortContact()V

    .line 2498
    :cond_4
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/syu/bt/page/Page_Dial;->resetList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public resetList(Ljava/util/List;)V
    .locals 2
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
    .line 2503
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v0, :cond_0

    .line 2504
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2505
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 2509
    :cond_0
    :goto_0
    return-void

    .line 2507
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-static {v0, p1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    goto :goto_0
.end method

.method public resetMenuLayoutAngle(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2737
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2738
    const/16 v2, 0x277b

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2737
    check-cast v0, Lcom/syu/bt/ctrl/CircleMenuLayout;

    .line 2739
    .local v0, "menuLayout":Lcom/syu/bt/ctrl/CircleMenuLayout;
    if-eqz v0, :cond_0

    .line 2740
    invoke-virtual {v0, p1}, Lcom/syu/bt/ctrl/CircleMenuLayout;->setCircleAngle(I)V

    .line 2742
    :cond_0
    return-void
.end method

.method public resetThridDial(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 446
    packed-switch p1, :pswitch_data_0

    .line 456
    :goto_0
    :pswitch_0
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "XINGKE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x275f

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JView;

    .line 458
    .local v0, "ico":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v0, :cond_0

    .line 459
    if-nez p1, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const-string v2, "disconnect"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    .end local v0    # "ico":Lcom/lsec/core/frame/ctrl/JView;
    :cond_0
    :goto_1
    return-void

    .line 451
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    .line 452
    const-string v1, ""

    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->dialThrdNumber:Ljava/lang/String;

    goto :goto_0

    .line 462
    .restart local v0    # "ico":Lcom/lsec/core/frame/ctrl/JView;
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 202
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v1, "his3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ** Page Dial resume  mListHistoryOut = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mListHistoryOut2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Dial;->bTop:Z

    .line 208
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    if-nez v1, :cond_1

    .line 211
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/16 v4, 0x2713

    invoke-virtual {v1, v4}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 215
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Dial()V

    .line 217
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->updateBtNameAndPin()V

    .line 226
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v1, :cond_2

    .line 227
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 229
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v1, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->switchFull()V

    .line 231
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowGps:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 232
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 233
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowGps:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v1, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->resetList()V

    .line 242
    :cond_4
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v1, :cond_5

    .line 243
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v4, 0x2712

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 244
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_5

    .line 245
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    .line 249
    .end local v0    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_5
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v4, 0x9

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Dial;->controlDialInfo(I)V

    .line 250
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bShowTime:Z

    if-eqz v1, :cond_6

    .line 251
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->initTime()V

    .line 253
    :cond_6
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-eqz v1, :cond_7

    .line 254
    const-string v1, "sys.blinkbt.ai.noise.code"

    const v4, 0xffff

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    .line 255
    const-string v1, "persist.lsec.aecdelay"

    const/4 v4, -0x1

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    .line 256
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showAIGT()V

    .line 259
    :cond_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->resetBtnEnable()V

    .line 260
    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Dial;->disableSaveView(Z)V

    .line 261
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Dial;->updateBtnVoiceSwitch(Z)V

    .line 262
    invoke-virtual {p0, v3}, Lcom/syu/bt/page/Page_Dial;->updateNameOrDevice(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->childResume()V

    .line 264
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bPhoneMIC:Z

    invoke-virtual {p0, v1}, Lcom/syu/bt/page/Page_Dial;->updateMicSwitch(Z)V

    .line 266
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_23NEW"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 267
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mRunnJumpPair:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 268
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mRunnJumpPair:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v1, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 270
    :cond_8
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showPhone()V

    .line 272
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bHideBtDial:Z

    if-eqz v1, :cond_9

    .line 273
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 276
    :cond_9
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->updateShowHand()V

    goto/16 :goto_0

    .line 235
    :cond_a
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowGps:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_b
    move v1, v3

    .line 255
    goto :goto_2
.end method

.method public scrollOk()Z
    .locals 2

    .prologue
    .line 2684
    iget-boolean v0, p0, Lcom/syu/bt/page/Page_Dial;->bTop:Z

    if-eqz v0, :cond_1

    .line 2685
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v0, v1}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2686
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->checkPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->checkPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->itemDial(Ljava/lang/String;)V

    .line 2689
    :cond_0
    const/4 v0, 0x1

    .line 2693
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollToNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2661
    iget-boolean v1, p0, Lcom/syu/bt/page/Page_Dial;->bTop:Z

    if-eqz v1, :cond_1

    .line 2662
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2663
    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosFocusCpy:I

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v1, v2, :cond_0

    .line 2664
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, v1, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosFocusCpy:I

    .line 2665
    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosFocusCpy:I

    iput v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    .line 2668
    :cond_0
    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    if-gez v1, :cond_2

    .line 2669
    iput v0, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    .line 2675
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    .line 2676
    const/4 v0, 0x1

    .line 2680
    :cond_1
    return v0

    .line 2670
    :cond_2
    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JGridView;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2671
    iget v0, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    goto :goto_0
.end method

.method public scrollToPrev()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2638
    iget-boolean v1, p0, Lcom/syu/bt/page/Page_Dial;->bTop:Z

    if-eqz v1, :cond_1

    .line 2639
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v1, v2}, Lcom/syu/bt/Act_Bt;->isFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2640
    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosFocusCpy:I

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v2, v2, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    if-eq v1, v2, :cond_0

    .line 2641
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, v1, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    iput v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosFocusCpy:I

    .line 2642
    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosFocusCpy:I

    iput v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    .line 2645
    :cond_0
    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    if-gez v1, :cond_2

    .line 2646
    iput v0, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    .line 2652
    :goto_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    .line 2653
    const/4 v0, 0x1

    .line 2657
    :cond_1
    return v0

    .line 2647
    :cond_2
    iget v1, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    if-lez v1, :cond_1

    .line 2648
    iget v0, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/syu/bt/page/Page_Dial;->mPosMoveTo:I

    goto :goto_0
.end method

.method public setButtonColor(I)V
    .locals 26
    .param p1, "color"    # I

    .prologue
    .line 2930
    sget-object v22, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v23, "changecolor"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 3072
    :cond_0
    :goto_0
    return-void

    .line 2932
    :cond_1
    const-string v22, "color"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, " PageDial setButtonColor color = "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v4, v0, [I

    const/16 v22, 0x0

    .line 2938
    aput p1, v4, v22

    const/16 v22, 0x1

    .line 2939
    aput p1, v4, v22

    .line 2941
    .local v4, "colors":[I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    const/16 v22, 0x0

    .line 2942
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const v25, 0x10100a7

    aput v25, v23, v24

    aput-object v23, v20, v22

    const/16 v22, 0x1

    .line 2943
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const v25, 0x101009c

    aput v25, v23, v24

    aput-object v23, v20, v22

    .line 2947
    .local v20, "states":[[I
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 2948
    const/16 v23, 0x297b

    .line 2947
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2949
    .local v3, "bk":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 2950
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2951
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    const-string v23, "bk0"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2955
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 2956
    const/16 v23, 0x27b3

    .line 2955
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2957
    .local v2, "back":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_3

    .line 2958
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2959
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2962
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 2963
    const/16 v23, 0x27a3

    .line 2962
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2964
    .local v7, "dial1":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v7, :cond_4

    .line 2965
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2966
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2969
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 2970
    const/16 v23, 0x27a4

    .line 2969
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2971
    .local v8, "dial2":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v8, :cond_5

    .line 2972
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2973
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2976
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 2977
    const/16 v23, 0x27a5

    .line 2976
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2978
    .local v9, "dial3":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v9, :cond_6

    .line 2979
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2980
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2983
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 2984
    const/16 v23, 0x27a6

    .line 2983
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2985
    .local v10, "dial4":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v10, :cond_7

    .line 2986
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2987
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2990
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 2991
    const/16 v23, 0x27a7

    .line 2990
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2992
    .local v11, "dial5":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v11, :cond_8

    .line 2993
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2994
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2997
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 2998
    const/16 v23, 0x27a8

    .line 2997
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lsec/core/frame/ctrl/JButton;

    .line 2999
    .local v12, "dial6":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v12, :cond_9

    .line 3000
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3001
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3004
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3005
    const/16 v23, 0x27a9

    .line 3004
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3006
    .local v13, "dial7":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v13, :cond_a

    .line 3007
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3008
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3011
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3012
    const/16 v23, 0x27aa

    .line 3011
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3013
    .local v14, "dial8":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v14, :cond_b

    .line 3014
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3015
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3018
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3019
    const/16 v23, 0x27ab

    .line 3018
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3020
    .local v15, "dial9":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v15, :cond_c

    .line 3021
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3022
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3025
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3026
    const/16 v23, 0x27ad

    .line 3025
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3027
    .local v16, "dialj":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v16, :cond_d

    .line 3028
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3029
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3032
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3033
    const/16 v23, 0x27ac

    .line 3032
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3034
    .local v17, "dialx":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v17, :cond_e

    .line 3035
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3036
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3039
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3040
    const/16 v23, 0x27a2

    .line 3039
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3041
    .local v6, "dial0":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v6, :cond_f

    .line 3042
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3043
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3046
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3047
    const/16 v23, 0x27b1

    .line 3046
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3048
    .local v21, "voice":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v21, :cond_10

    .line 3049
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3050
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3053
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3054
    const/16 v23, 0x2793

    .line 3053
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3055
    .local v5, "dial":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v5, :cond_11

    .line 3056
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3057
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3060
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    const/16 v23, 0x2794

    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3061
    .local v18, "hang":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v18, :cond_12

    .line 3062
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3063
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3066
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v22

    .line 3067
    const/16 v23, 0x27ae

    .line 3066
    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3068
    .local v19, "link":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v19, :cond_0

    .line 3069
    new-instance v22, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3070
    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0
.end method

.method public setDayOrNight(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/4 v9, -0x1

    const/high16 v10, -0x1000000

    const/4 v12, 0x1

    .line 3112
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v11, "BT_NEW"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3113
    if-lez p1, :cond_2

    .line 3114
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const-string v10, "bt_night"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3169
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v8, :cond_1

    .line 3171
    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->mGridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v8}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 3174
    :cond_1
    return-void

    .line 3116
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const-string v10, "bk_day"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v11

    iget-object v11, v11, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    iget-object v12, v12, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3118
    :cond_3
    sget-boolean v8, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v8, :cond_0

    .line 3119
    if-lez p1, :cond_5

    const-string v5, "night_"

    .line 3121
    .local v5, "str":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->nightBtn:[I

    array-length v8, v8

    if-lt v2, v8, :cond_6

    .line 3141
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->nightView:[I

    array-length v8, v8

    if-lt v3, v8, :cond_c

    .line 3157
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v11, "BT_XYQ_HB"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3158
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->nightText:[I

    array-length v8, v8

    if-ge v4, v8, :cond_0

    .line 3159
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Dial;->nightText:[I

    aget v11, v11, v4

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 3160
    .local v6, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_4

    .line 3161
    if-lez p1, :cond_f

    move v8, v9

    :goto_5
    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 3158
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3119
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_5
    const-string v5, ""

    goto :goto_1

    .line 3122
    .restart local v2    # "i":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Dial;->nightBtn:[I

    aget v11, v11, v2

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3123
    .local v0, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_9

    .line 3124
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 3125
    .local v1, "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3126
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3127
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 3135
    :cond_7
    :goto_6
    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2744

    if-eq v8, v11, :cond_8

    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2746

    if-eq v8, v11, :cond_8

    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x2745

    if-eq v8, v11, :cond_8

    .line 3136
    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274e

    if-eq v8, v11, :cond_8

    iget-object v8, p0, Lcom/syu/bt/page/Page_Dial;->nightBtn:[I

    aget v8, v8, v2

    const/16 v11, 0x274d

    if-ne v8, v11, :cond_9

    .line 3137
    :cond_8
    if-lez p1, :cond_b

    move v8, v9

    :goto_7
    invoke-virtual {v0, v8}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 3121
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 3130
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_a
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 3131
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_b
    move v8, v10

    .line 3137
    goto :goto_7

    .line 3142
    .end local v0    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "drawableName":Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_c
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v11, p0, Lcom/syu/bt/page/Page_Dial;->nightView:[I

    aget v11, v11, v3

    invoke-virtual {v8, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JView;

    .line 3143
    .local v7, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v7, :cond_d

    .line 3144
    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 3145
    .restart local v1    # "drawableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3146
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3147
    const-string v8, "night_"

    const-string v11, ""

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 3141
    .end local v1    # "drawableName":Ljava/lang/String;
    :cond_d
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 3150
    .restart local v1    # "drawableName":Ljava/lang/String;
    :cond_e
    const-string v8, "night_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 3151
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "night_"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v12}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_8

    .end local v1    # "drawableName":Ljava/lang/String;
    .end local v7    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v4    # "k":I
    .restart local v6    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_f
    move v8, v10

    .line 3161
    goto/16 :goto_5
.end method

.method public set_Visible(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "b"    # Z

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 385
    .local v0, "btn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 386
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_0
    return-void

    .line 386
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showAI()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 174
    const-string v0, "ai11"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 Page_Dial  showAI isAiuvoice = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  bAI_JZ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bAI_JZ:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_JZ:Z

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "ai11"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11 Page_Dial  showAI isAiuvoice = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isAIOnOff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v0, :cond_3

    .line 179
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU:Landroid/view/View;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU2:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-eqz v0, :cond_1

    .line 184
    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU2:Landroid/view/View;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 179
    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 185
    goto :goto_2

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public showAIGT()V
    .locals 4

    .prologue
    const/16 v0, 0x8

    .line 191
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 Page_Dial  showAIGT isAIGT_Aiuvoice = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isAIGT_OnOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU2:Landroid/view/View;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-eqz v1, :cond_1

    .line 193
    sget v1, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU2:Landroid/view/View;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->vDial_AIU2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showInCallAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 915
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 920
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-virtual {v0}, Lcom/lsec/core/util/Runnable_AnimDrawable;->stopRun()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 924
    :cond_0
    new-instance v0, Lcom/lsec/core/util/Runnable_AnimDrawable;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewInCall:Landroid/view/View;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/lsec/core/util/Runnable_AnimDrawable;-><init>(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;I)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 925
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-static {v4, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 927
    :cond_1
    return-void
.end method

.method public showLoveNumber()V
    .locals 28

    .prologue
    .line 806
    const/4 v14, 0x0

    .line 807
    .local v14, "isShowOrHide":Z
    const-string v23, ""

    .line 808
    .local v23, "txt":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 810
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v24, 0x5

    move/from16 v0, v24

    if-lt v12, v0, :cond_1

    .line 912
    .end local v12    # "i":I
    :cond_0
    return-void

    .line 811
    .restart local v12    # "i":I
    :cond_1
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 812
    .local v16, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "contact_save1"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/syu/bt/util/SpUtil;->getContact(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v16

    .line 813
    const/16 v24, 0x281c

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "txt":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 814
    .restart local v23    # "txt":Ljava/lang/String;
    const/16 v24, 0x281c

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/CharSequence;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 815
    const/4 v14, 0x1

    .line 820
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    if-eqz v24, :cond_2

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    aget-object v25, v24, v12

    if-eqz v14, :cond_5

    move-object/from16 v24, v23

    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->ContactName:[Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    aget-object v25, v24, v12

    if-eqz v14, :cond_6

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 824
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    if-eqz v24, :cond_3

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Dial;->ContactAdd:[Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v24, v0

    aget-object v25, v24, v12

    if-eqz v14, :cond_7

    const/16 v24, 0x8

    :goto_4
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 810
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 817
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 821
    :cond_5
    const-string v24, ""

    goto :goto_2

    .line 822
    :cond_6
    const/16 v24, 0x8

    goto :goto_3

    .line 825
    :cond_7
    const/16 v24, 0x0

    goto :goto_4

    .line 829
    .end local v12    # "i":I
    .end local v16    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_8
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 831
    sget-object v24, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v15

    .line 834
    .local v15, "length":I
    sget-object v24, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v25, ":"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 835
    .local v5, "addr":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "/mybtinfo"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 836
    .local v20, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    .local v10, "f":Ljava/io/File;
    const/16 v21, 0x0

    .line 838
    .local v21, "state":I
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 839
    const/16 v21, 0x1

    .line 847
    :cond_9
    const/16 v18, 0x0

    .line 848
    .local v18, "num":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    const/16 v24, 0x5

    move/from16 v0, v24

    if-gt v12, v0, :cond_0

    .line 849
    const/4 v6, 0x1

    .line 850
    .local v6, "bShowOrHide":Z
    const-string v17, ""

    .line 851
    .local v17, "name":Ljava/lang/String;
    const-string v19, ""

    .line 852
    .local v19, "number":Ljava/lang/String;
    const-string v11, ""

    .line 853
    .local v11, "head":Ljava/lang/String;
    if-ge v12, v15, :cond_a

    .line 854
    sget-object v24, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    const/16 v25, 0x281c

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "name":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 855
    .restart local v17    # "name":Ljava/lang/String;
    sget-object v24, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    const/16 v25, 0x281e

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "number":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 856
    .restart local v19    # "number":Ljava/lang/String;
    sget-object v24, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    const/16 v25, 0x2818

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "head":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 857
    .restart local v11    # "head":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 858
    const/4 v6, 0x1

    .line 866
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    add-int/lit16 v0, v12, 0x294f

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JButton;

    .line 867
    .local v8, "button":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v8, :cond_b

    .line 868
    if-eqz v6, :cond_12

    const/16 v24, 0x8

    :goto_7
    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 871
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    add-int/lit16 v0, v12, 0x2943

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 872
    .local v2, "Contact_name":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    add-int/lit16 v0, v12, 0x293d

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 873
    .local v3, "Contact_number":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    add-int/lit16 v0, v12, 0x2949

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JView;

    .line 874
    .local v4, "Contact_view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v2, :cond_c

    .line 875
    if-eqz v6, :cond_13

    const/16 v24, 0x8

    :goto_8
    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 876
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 878
    :cond_c
    if-eqz v3, :cond_d

    .line 879
    if-eqz v6, :cond_14

    const/16 v24, 0x8

    :goto_9
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 880
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 882
    :cond_d
    if-eqz v4, :cond_f

    .line 883
    if-eqz v6, :cond_15

    const/16 v24, 0x8

    :goto_a
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 884
    const/4 v9, 0x1

    .line 885
    .local v9, "defaultHead":Z
    const/4 v13, 0x0

    .line 886
    .local v13, "index":I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 887
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 888
    if-nez v6, :cond_e

    if-lez v13, :cond_e

    .line 889
    const/4 v9, 0x0

    .line 893
    :cond_e
    const/16 v24, 0xf

    move/from16 v0, v24

    if-le v13, v0, :cond_18

    .line 894
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 895
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_16

    .line 896
    new-instance v24, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v25, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v7}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 905
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "defaultHead":Z
    .end local v13    # "index":I
    :cond_f
    :goto_b
    sget-object v24, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v25, "TZY_BT_1920"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    const/16 v25, 0x2955

    invoke-virtual/range {v24 .. v25}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/lsec/core/frame/ctrl/JText;

    .line 907
    .local v22, "tip":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v22, :cond_10

    .line 908
    if-lez v18, :cond_1a

    const/16 v24, 0x8

    :goto_c
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 848
    .end local v22    # "tip":Lcom/lsec/core/frame/ctrl/JText;
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 861
    .end local v2    # "Contact_name":Lcom/lsec/core/frame/ctrl/JText;
    .end local v3    # "Contact_number":Lcom/lsec/core/frame/ctrl/JText;
    .end local v4    # "Contact_view":Lcom/lsec/core/frame/ctrl/JView;
    .end local v8    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_11
    const/4 v6, 0x0

    .line 862
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 868
    .restart local v8    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 875
    .restart local v2    # "Contact_name":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v3    # "Contact_number":Lcom/lsec/core/frame/ctrl/JText;
    .restart local v4    # "Contact_view":Lcom/lsec/core/frame/ctrl/JView;
    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 879
    :cond_14
    const/16 v24, 0x0

    goto :goto_9

    .line 883
    :cond_15
    const/16 v24, 0x0

    goto :goto_a

    .line 898
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v9    # "defaultHead":Z
    .restart local v13    # "index":I
    :cond_16
    if-eqz v9, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    const-string v25, "bt_navitxt_bk"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v27}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    :goto_d
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "headbig"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v27}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    goto :goto_d

    .line 901
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_18
    if-eqz v9, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    const-string v25, "bt_navitxt_bk"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v27}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    :goto_e
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "headbig"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v27}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    goto :goto_e

    .line 908
    .end local v9    # "defaultHead":Z
    .end local v13    # "index":I
    .restart local v22    # "tip":Lcom/lsec/core/frame/ctrl/JText;
    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_c
.end method

.method public showPhone()V
    .locals 8

    .prologue
    const/16 v7, 0x279a

    const/16 v6, 0x2793

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 319
    const-string v0, "hfp4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 Page Dial showPhone   sPhone_callin_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sPhone1_NAME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sPhone2_NAME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_15

    .line 323
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v5, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v2

    if-ge v0, v5, :cond_0

    .line 324
    sput v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    .line 325
    :cond_0
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v2

    if-lt v0, v5, :cond_1

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-ge v0, v5, :cond_1

    .line 326
    sput v2, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    .line 327
    :cond_1
    const-string v0, "hfp4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 44 HFP_STATUS  bPhone2_HFP = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-gt v0, v5, :cond_2

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v2

    if-gt v0, v5, :cond_2

    .line 330
    const/16 v0, 0xff

    sput v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    .line 332
    :cond_2
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {p0, v6, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 334
    const/16 v3, 0x279d

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 335
    const/16 v3, 0x2765

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 337
    const/16 v3, 0x27ae

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 338
    const/16 v3, 0x2797

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 339
    const/16 v3, 0x2766

    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_5
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 343
    const/16 v3, 0x279c

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v5, :cond_e

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v2

    if-lt v0, v5, :cond_e

    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-le v0, v2, :cond_e

    move v0, v2

    :goto_6
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 345
    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v5, :cond_f

    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eq v0, v2, :cond_f

    move v0, v2

    :goto_7
    invoke-virtual {p0, v7, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 346
    const/16 v3, 0x279e

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v5, :cond_10

    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eq v0, v2, :cond_10

    move v0, v2

    :goto_8
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 347
    const/16 v3, 0x27a0

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v1

    if-lt v0, v5, :cond_11

    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eq v0, v2, :cond_11

    move v0, v2

    :goto_9
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 349
    sget-object v0, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_3
    const-string v0, "hfp4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 44 Page_Dial  showPhone sPhone2_NAME = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/16 v3, 0x279b

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v2

    if-lt v0, v5, :cond_12

    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v0, :cond_12

    move v0, v2

    :goto_a
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 356
    const/16 v3, 0x279f

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v2

    if-lt v0, v5, :cond_13

    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v0, :cond_13

    move v0, v2

    :goto_b
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 357
    const/16 v3, 0x27a1

    sget-object v0, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    aget v0, v0, v2

    if-lt v0, v5, :cond_14

    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v0, :cond_14

    move v0, v2

    :goto_c
    invoke-virtual {p0, v3, v0}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 358
    sget-object v0, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_4
    :goto_d
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone_test:Z

    if-eqz v0, :cond_7

    .line 369
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_5

    .line 370
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone1:Lcom/lsec/core/frame/ctrl/JText;

    const-string v3, " PHONE 1 "

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtPhone2:Lcom/lsec/core/frame/ctrl/JText;

    const-string v3, " PHONE 2 "

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_6
    const/16 v0, 0x279c

    invoke-virtual {p0, v0, v2}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 375
    const/16 v0, 0x279e

    invoke-virtual {p0, v0, v2}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 376
    const/16 v0, 0x279f

    invoke-virtual {p0, v0, v2}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 378
    const/16 v0, 0x279b

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 379
    invoke-virtual {p0, v7, v2}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 380
    invoke-virtual {p0, v6, v1}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 382
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 332
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 334
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 335
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 337
    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 338
    goto/16 :goto_4

    :cond_d
    move v0, v2

    .line 339
    goto/16 :goto_5

    :cond_e
    move v0, v1

    .line 343
    goto/16 :goto_6

    :cond_f
    move v0, v1

    .line 345
    goto/16 :goto_7

    :cond_10
    move v0, v1

    .line 346
    goto/16 :goto_8

    :cond_11
    move v0, v1

    .line 347
    goto/16 :goto_9

    :cond_12
    move v0, v1

    .line 355
    goto/16 :goto_a

    :cond_13
    move v0, v1

    .line 356
    goto/16 :goto_b

    :cond_14
    move v0, v1

    .line 357
    goto :goto_c

    .line 363
    :cond_15
    const/16 v0, 0x279b

    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 364
    invoke-virtual {p0, v7, v1}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    .line 365
    invoke-virtual {p0, v6, v2}, Lcom/syu/bt/page/Page_Dial;->set_Visible(IZ)V

    goto :goto_d
.end method

.method public showViewTalking(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 655
    const-string v0, "gdy8"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 00 showViewTalking isShow = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iput-boolean p1, p0, Lcom/syu/bt/page/Page_Dial;->isShow_p:Z

    .line 660
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnShowTalking:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 661
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mRunnShowTalking:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 662
    return-void
.end method

.method public startIpPhoneTimer()V
    .locals 2

    .prologue
    .line 2345
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->stopIpPhoneTimer()V

    .line 2346
    new-instance v0, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    .line 2347
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    if-eqz v0, :cond_0

    .line 2348
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 2349
    :cond_0
    return-void
.end method

.method public stopIpPhoneTimer()V
    .locals 1

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    if-eqz v0, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 2354
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;->stopRun()V

    .line 2355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mRunnableIpPhoneTimer:Lcom/syu/bt/page/Page_Dial$RunnableIpPhoneTimer;

    .line 2357
    :cond_0
    return-void
.end method

.method public switchFull()V
    .locals 2

    .prologue
    .line 2371
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->fytGetState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 2375
    :goto_0
    return-void

    .line 2374
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Dial$RunnableSwitchFull;-><init>(Lcom/syu/bt/page/Page_Dial;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateBtConnectTip()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 1853
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_BT_1920"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewBtNotConnectTip:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1857
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x27c9

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewBtNotConnectTip:Landroid/view/View;

    .line 1860
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewBtNotConnectTip:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1861
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_3

    .line 1862
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v1

    const/16 v2, 0x2713

    if-eq v1, v2, :cond_4

    .line 1863
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewBtNotConnectTip:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1875
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x2779

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 1877
    .local v0, "tip":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 1878
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-nez v1, :cond_6

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_dial_link"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1865
    .end local v0    # "tip":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, v1, v4

    if-nez v1, :cond_5

    .line 1866
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewBtNotConnectTip:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1868
    :cond_5
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewBtNotConnectTip:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1869
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v2, 0x2720

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto :goto_1

    .line 1878
    .restart local v0    # "tip":Lcom/lsec/core/frame/ctrl/JText;
    :cond_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_pair_cut"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public updateBtNameAndPin()V
    .locals 2

    .prologue
    .line 3462
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvDevName2:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v0, :cond_0

    .line 3463
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x28ae

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvDevName2:Lcom/lsec/core/frame/ctrl/JText;

    .line 3465
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvDevName2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 3466
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvDevName2:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3468
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvmPin2:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v0, :cond_2

    .line 3469
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x28b0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvmPin2:Lcom/lsec/core/frame/ctrl/JText;

    .line 3471
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvmPin2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    .line 3472
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->tvmPin2:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3473
    :cond_3
    return-void
.end method

.method public updateBtNameAndPinTip()V
    .locals 5

    .prologue
    .line 3448
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3449
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x2860

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 3450
    .local v1, "name":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 3451
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_connetc_name"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Teyes"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3454
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v3, 0x2861

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 3455
    .local v0, "Pin":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_1

    .line 3456
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_connetc_pin"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0000"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3459
    .end local v0    # "Pin":Lcom/lsec/core/frame/ctrl/JText;
    .end local v1    # "name":Lcom/lsec/core/frame/ctrl/JText;
    :cond_1
    return-void
.end method

.method public updateBtnVoiceSwitch(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    const/4 v5, 0x1

    .line 765
    const-string v2, "hfp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 IpcNewPage U_HFP  mIdCustomer = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " App_Bt.bHFP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v3, 0x8b

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_23NEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_0

    .line 771
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_23NEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 773
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton:Lcom/lsec/core/frame/ctrl/JButton;

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v2, :cond_3

    const-string v2, "bt_dialsound"

    :goto_1
    invoke-virtual {v3, v2, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 774
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton1:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_2

    .line 775
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton1:Lcom/lsec/core/frame/ctrl/JButton;

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHFP:Z

    if-eqz v2, :cond_4

    const-string v2, "bt_dialsound"

    :goto_2
    invoke-virtual {v3, v2, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 776
    :cond_2
    const-string v2, "hfp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 773
    :cond_3
    const-string v2, "bt_dialsound1"

    goto :goto_1

    .line 775
    :cond_4
    const-string v2, "bt_dialsound1"

    goto :goto_2

    .line 779
    :cond_5
    const-string v2, "hfp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 781
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 782
    const-string v2, "hfp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 33 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v1, 0x0

    .line 784
    .local v1, "str":Ljava/lang/String;
    if-nez p1, :cond_7

    .line 785
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v1

    .line 790
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 791
    if-eqz v1, :cond_0

    .line 792
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v1, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 786
    :cond_7
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 787
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    goto :goto_3

    .line 795
    .end local v1    # "str":Ljava/lang/String;
    :cond_8
    const-string v2, "hfp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 44 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->voiceButton:Lcom/lsec/core/frame/ctrl/JButton;

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHFP:Z

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto/16 :goto_0
.end method

.method public updateDeviceInfo(I)V
    .locals 13
    .param p1, "value"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 3230
    const-string v3, "bttt"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00  Page_Dial  updateDeviceInfo value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v3, :cond_0

    .line 3233
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2767

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr:Lcom/lsec/core/frame/ctrl/JText;

    .line 3235
    :cond_0
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr2:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v3, :cond_1

    .line 3236
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2773

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr2:Lcom/lsec/core/frame/ctrl/JText;

    .line 3238
    :cond_1
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_3

    .line 3240
    const-string v3, "his"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " PageDial MyApplication.mIdCustomer = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    if-nez p1, :cond_2

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_2

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v4, 0x8b

    if-ne v3, v4, :cond_20

    .line 3242
    :cond_2
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v8}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 3246
    :goto_0
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_3

    .line 3247
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr2:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->textAddr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 3250
    :cond_3
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bAI_JZ:Z

    if-eqz v3, :cond_4

    .line 3251
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showAI()V

    .line 3252
    :cond_4
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->showAIGT()V

    .line 3253
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v3, :cond_5

    .line 3254
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2760

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    .line 3256
    :cond_5
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v3, :cond_6

    .line 3257
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2768

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    .line 3259
    :cond_6
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_14

    .line 3260
    const/4 v0, 0x0

    .line 3261
    .local v0, "bSetText":Z
    if-nez p1, :cond_7

    .line 3262
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isIpPhoneConnect()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3263
    const/4 v0, 0x1

    .line 3264
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "ipphone_connected"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3267
    :cond_7
    const-string v3, "hold"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " PageDial updateDeviceInfo bSetText = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Bt.sPhoneNumberHoldOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    if-nez v0, :cond_9

    .line 3269
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3270
    if-eqz p1, :cond_8

    const/4 v3, 0x6

    if-eq p1, v3, :cond_8

    if-ne p1, v11, :cond_21

    .line 3271
    :cond_8
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_disconnected"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3290
    :cond_9
    :goto_1
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "BT_23NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3292
    const-string v3, "bttt"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 Page_Dial updateDeviceInfo operator = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textOperator:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 3296
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textOperator:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v4, Lcom/syu/bt/App_Bt;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3298
    :cond_a
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewTalking:Landroid/view/View;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mViewContact:Landroid/view/View;

    if-eqz v3, :cond_d

    .line 3299
    if-eq p1, v8, :cond_b

    if-ne p1, v12, :cond_28

    .line 3301
    :cond_b
    invoke-virtual {p0, v11}, Lcom/syu/bt/page/Page_Dial;->showViewTalking(Z)V

    .line 3309
    :cond_c
    :goto_2
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_29

    .line 3310
    if-nez p1, :cond_d

    sget-object v3, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v4, "yl_dn1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bFirstPairPage2:Z

    if-eqz v3, :cond_d

    .line 3311
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v4, 0x271c

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    .line 3317
    :cond_d
    :goto_3
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHideHang:Z

    if-eqz v3, :cond_e

    .line 3318
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->updateShowHand()V

    .line 3322
    :cond_e
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_OEM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3323
    :cond_f
    const/4 v2, 0x0

    .line 3324
    .local v2, "ico":Landroid/graphics/drawable/Drawable;
    const v1, -0x4e4e4d

    .line 3325
    .local v1, "color":I
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v3

    if-nez v3, :cond_10

    .line 3326
    const/4 v1, -0x1

    .line 3327
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v3

    aget v3, v3, v9

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_2a

    .line 3328
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "connect2000"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3333
    :cond_10
    :goto_4
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3334
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v1}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 3337
    :cond_11
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_OEM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3338
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v2, v10, v10, v10}, Lcom/lsec/core/frame/ctrl/JText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3345
    .end local v1    # "color":I
    .end local v2    # "ico":Landroid/graphics/drawable/Drawable;
    :cond_12
    :goto_5
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_14

    if-ltz p1, :cond_14

    const/4 v3, 0x6

    if-gt p1, v3, :cond_14

    .line 3346
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_2c

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v3, :cond_13

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-ne v3, v11, :cond_2c

    .line 3347
    :cond_13
    const-string v3, "pop3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " Page_dial sPhone_callin_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " * bPhone2_HFP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v6, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v7, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3358
    .end local v0    # "bSetText":Z
    :cond_14
    :goto_6
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v3, :cond_15

    .line 3359
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2764

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime:Lcom/lsec/core/frame/ctrl/JText;

    .line 3361
    :cond_15
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_18

    .line 3362
    const/4 v3, 0x5

    if-eq p1, v3, :cond_16

    if-ne p1, v8, :cond_2e

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v4, 0x14

    aget v3, v3, v4

    if-lez v3, :cond_2e

    .line 3364
    :cond_16
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3365
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_17

    .line 3366
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v8}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 3373
    :cond_17
    :goto_7
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v9}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 3392
    :cond_18
    :goto_8
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime2:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v3, :cond_19

    .line 3393
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2771

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime2:Lcom/lsec/core/frame/ctrl/JText;

    .line 3395
    :cond_19
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_1a

    .line 3396
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime2:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 3398
    :cond_1a
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v3, :cond_1b

    .line 3400
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2765

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    .line 3402
    :cond_1b
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_1f

    .line 3403
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_OEM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3404
    :cond_1c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_32

    .line 3405
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 3416
    :cond_1d
    :goto_9
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName2:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v3, :cond_1e

    .line 3417
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x2772

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName2:Lcom/lsec/core/frame/ctrl/JText;

    .line 3419
    :cond_1e
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_1f

    .line 3420
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName2:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JText;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 3422
    :cond_1f
    return-void

    .line 3244
    :cond_20
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textAddr:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v9}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_0

    .line 3273
    .restart local v0    # "bSetText":Z
    :cond_21
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_connected"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3274
    :cond_22
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "BT_23NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3275
    const/4 v3, 0x5

    if-eq p1, v3, :cond_23

    if-eq p1, v8, :cond_23

    if-ne p1, v12, :cond_26

    .line 3276
    :cond_23
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_25

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-eqz v3, :cond_24

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-ne v3, v11, :cond_25

    .line 3277
    :cond_24
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    sget-object v6, Lcom/syu/bt/App_Bt;->bPhone2_HFP:[I

    sget v7, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3280
    :cond_25
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3283
    :cond_26
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3284
    :cond_27
    if-ltz p1, :cond_9

    const/4 v3, 0x6

    if-gt p1, v3, :cond_9

    .line 3286
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3304
    :cond_28
    const/4 v3, 0x5

    if-eq p1, v3, :cond_c

    .line 3305
    invoke-virtual {p0, v9}, Lcom/syu/bt/page/Page_Dial;->showViewTalking(Z)V

    goto/16 :goto_2

    .line 3313
    :cond_29
    if-nez p1, :cond_d

    sget-object v3, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v4, "yl_dn1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3314
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v3, v3, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    const/16 v4, 0x271c

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyActivity;->goPage(I)V

    goto/16 :goto_3

    .line 3330
    .restart local v1    # "color":I
    .restart local v2    # "ico":Landroid/graphics/drawable/Drawable;
    :cond_2a
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "connect"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_4

    .line 3340
    :cond_2b
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v10, v10, v2, v10}, Lcom/lsec/core/frame/ctrl/JText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 3351
    .end local v1    # "color":I
    .end local v2    # "ico":Landroid/graphics/drawable/Drawable;
    :cond_2c
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 3368
    .end local v0    # "bSetText":Z
    :cond_2d
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_OEM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3369
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_17

    .line 3370
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v8}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_7

    .line 3375
    :cond_2e
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtTalkTime:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v8}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 3376
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_BT_1920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3377
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_18

    .line 3378
    if-eq p1, v12, :cond_2f

    if-ne p1, v8, :cond_30

    .line 3379
    :cond_2f
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v9}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_8

    .line 3381
    :cond_30
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v8}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_8

    .line 3384
    :cond_31
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_OEM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3385
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_18

    .line 3386
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->textState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v9}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_8

    .line 3406
    :cond_32
    if-nez p1, :cond_1d

    .line 3407
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_connect_null"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 3410
    :cond_33
    const/4 v3, 0x2

    if-ne p1, v3, :cond_34

    .line 3411
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v9}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_9

    .line 3412
    :cond_34
    if-nez p1, :cond_1d

    .line 3413
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->txtLinkName:Lcom/lsec/core/frame/ctrl/JText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public updateHead(II)V
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "headId"    # I

    .prologue
    .line 3425
    const/4 v1, 0x0

    .line 3427
    .local v1, "view":Lcom/lsec/core/frame/ctrl/JView;
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->ContactView:[Lcom/lsec/core/frame/ctrl/JView;

    array-length v2, v2

    if-gt p1, v2, :cond_0

    .line 3428
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->ContactView:[Lcom/lsec/core/frame/ctrl/JView;

    add-int/lit8 v3, p1, -0x1

    aget-object v1, v2, v3

    .line 3431
    :cond_0
    if-nez v1, :cond_1

    .line 3444
    :goto_0
    return-void

    .line 3434
    :cond_1
    const/16 v2, 0xf

    if-le p2, v2, :cond_3

    .line 3435
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/16 v4, 0x281e

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3436
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 3437
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3439
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "headbig"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3442
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "headbig"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v5

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateMicSwitch(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    .line 3194
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    const/16 v4, 0x27b2

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3195
    .local v1, "mic":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_1

    .line 3197
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 3198
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3199
    const/4 v2, 0x0

    .line 3200
    .local v2, "str":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 3201
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    .line 3208
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v3

    if-eq v3, v2, :cond_1

    .line 3209
    if-eqz v2, :cond_1

    .line 3211
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 3217
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    return-void

    .line 3203
    .restart local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3204
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    goto :goto_0
.end method

.method public updateNameOrDevice(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 2715
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_OEM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2728
    :cond_0
    :goto_0
    return-void

    .line 2718
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x2763

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 2719
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_2

    .line 2720
    if-eqz p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2722
    :cond_2
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-nez v2, :cond_0

    .line 2723
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x2765

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2724
    .local v0, "linkName":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 2725
    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "linkName":Lcom/lsec/core/frame/ctrl/JText;
    :cond_3
    move v2, v4

    .line 2720
    goto :goto_1

    .restart local v0    # "linkName":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    move v4, v3

    .line 2725
    goto :goto_2
.end method

.method public updatePhoneName()V
    .locals 3

    .prologue
    .line 2312
    const-string v0, "name"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 00 Page_Dial updatePhoneName() sPhoneNumber = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    .line 2314
    return-void
.end method

.method public updatePhoneName(Ljava/lang/String;)V
    .locals 13
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x27c7

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JView;

    .line 2155
    .local v7, "view":Lcom/lsec/core/frame/ctrl/JView;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x27c8

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JView;

    .line 2156
    .local v8, "view2":Lcom/lsec/core/frame/ctrl/JView;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x2763

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 2157
    .local v5, "text":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    const/16 v10, 0x276e

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 2158
    .local v6, "text3":Lcom/lsec/core/frame/ctrl/JText;
    const-string v9, "name"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " 00 Page_Dial updatePhoneName number = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 2160
    const-string v9, "name"

    const-string v10, " 11 Page_DialupdatePhoneName "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    const-string v3, ""

    .line 2162
    .local v3, "sDisplay":Ljava/lang/String;
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v9, p1}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2164
    .local v4, "strName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 2165
    move-object v3, v4

    .line 2178
    :cond_0
    :goto_0
    const-string v9, "name"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " 22 Page_Dial updatePhoneName sDisplay = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    if-eqz v5, :cond_1

    .line 2181
    invoke-virtual {v5, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2184
    :cond_1
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtName2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_2

    .line 2185
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtName2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v9, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2189
    :cond_2
    if-eqz v6, :cond_3

    .line 2190
    invoke-virtual {v6, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2192
    :cond_3
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "BT_23NEW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v9}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumBig:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_5

    .line 2193
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2194
    .local v1, "isEmpty":Z
    const-string v9, "name"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " 33 Page_Dial updatePhoneName sDisplay = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isEmpty = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object v10, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumBig:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_11

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2196
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtName2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_4

    .line 2197
    iget-object v10, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtName2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_12

    const/16 v9, 0x8

    :goto_2
    invoke-virtual {v10, v9}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2198
    :cond_4
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNum2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_5

    .line 2199
    iget-object v10, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNum2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_13

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v10, v9}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2202
    .end local v1    # "isEmpty":Z
    :cond_5
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_OEM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2203
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2204
    :cond_6
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/syu/bt/page/Page_Dial;->updateNameOrDevice(Z)V

    .line 2209
    :cond_7
    :goto_4
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_c

    .line 2210
    const/4 v2, 0x1

    .line 2211
    .local v2, "isVis":Z
    if-nez v3, :cond_15

    .line 2212
    const/4 v2, 0x0

    .line 2216
    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 2217
    const-string v9, "gdy7"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " updatePhoneName sDisplay length= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :cond_9
    if-eqz v2, :cond_16

    .line 2220
    const-string v9, "gdy7"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " updatePhoneName sDisplay = *"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_a

    .line 2222
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2223
    :cond_a
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_b

    .line 2224
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2226
    :cond_b
    const-string v9, "gdy7"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " updatePhoneName tvTxtMiniNumber visible sDisplay = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    .end local v2    # "isVis":Z
    :cond_c
    :goto_6
    if-eqz v7, :cond_d

    .line 2237
    sget v9, Lcom/syu/bt/App_Bt;->iTalkHead:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_1a

    .line 2238
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2239
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_19

    .line 2240
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v10, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2252
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_d
    :goto_7
    if-eqz v8, :cond_e

    .line 2253
    sget v9, Lcom/syu/bt/App_Bt;->iTalkHead:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_1d

    .line 2254
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    sget-object v10, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2255
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1c

    .line 2256
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v10, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2282
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "sDisplay":Ljava/lang/String;
    .end local v4    # "strName":Ljava/lang/String;
    :cond_e
    :goto_8
    return-void

    .line 2166
    .restart local v3    # "sDisplay":Ljava/lang/String;
    .restart local v4    # "strName":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v9}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v9

    if-nez v9, :cond_10

    .line 2167
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_BT_1920"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2168
    move-object v3, p1

    .line 2170
    goto/16 :goto_0

    .line 2171
    :cond_10
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2172
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "unknown"

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 2195
    .restart local v1    # "isEmpty":Z
    :cond_11
    const/16 v9, 0x8

    goto/16 :goto_1

    .line 2197
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2199
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2206
    .end local v1    # "isEmpty":Z
    :cond_14
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/syu/bt/page/Page_Dial;->updateNameOrDevice(Z)V

    goto/16 :goto_4

    .line 2213
    .restart local v2    # "isVis":Z
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_8

    .line 2214
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 2228
    :cond_16
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_17

    .line 2229
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2230
    :cond_17
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_18

    .line 2231
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2232
    :cond_18
    const-string v9, "gdy7"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " updatePhoneName tvTxtMiniNumber gone sDisplay = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2242
    .end local v2    # "isVis":Z
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_19
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "people2"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v11

    iget-object v11, v11, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 2245
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1a
    sget v9, Lcom/syu/bt/App_Bt;->iTalkHead:I

    if-lez v9, :cond_1b

    .line 2246
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "talkhead"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v11, Lcom/syu/bt/App_Bt;->iTalkHead:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v11

    iget-object v11, v11, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 2248
    :cond_1b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "people2"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v11

    iget-object v11, v11, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 2258
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1c
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "people2"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v11

    iget-object v11, v11, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 2261
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1d
    sget v9, Lcom/syu/bt/App_Bt;->iTalkHead:I

    if-lez v9, :cond_1e

    .line 2262
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "talkhead"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v11, Lcom/syu/bt/App_Bt;->iTalkHead:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v11

    iget-object v11, v11, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 2264
    :cond_1e
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v10, "people2"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v11

    iget-object v11, v11, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v12

    iget-object v12, v12, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 2269
    .end local v3    # "sDisplay":Ljava/lang/String;
    .end local v4    # "strName":Ljava/lang/String;
    :cond_1f
    if-eqz v5, :cond_20

    .line 2270
    const-string v9, ""

    invoke-virtual {v5, v9}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2272
    :cond_20
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtName2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v9, :cond_21

    .line 2273
    iget-object v9, p0, Lcom/syu/bt/page/Page_Dial;->tvTxtName2:Lcom/lsec/core/frame/ctrl/JText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2275
    :cond_21
    if-eqz v6, :cond_22

    .line 2276
    const-string v9, ""

    invoke-virtual {v6, v9}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2278
    :cond_22
    sget-object v9, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v10, "TZY_OEM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2279
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/syu/bt/page/Page_Dial;->updateNameOrDevice(Z)V

    goto/16 :goto_8
.end method

.method public updateShowDial()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/16 v6, 0x9

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1883
    const/4 v1, 0x3

    .line 1884
    .local v1, "flag":I
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-eqz v2, :cond_9

    .line 1885
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    .line 1919
    :goto_0
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_BT_1920"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1920
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1921
    const/4 v1, 0x2

    .line 1923
    :cond_0
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_1

    .line 1924
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x2794

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1926
    :cond_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_2

    .line 1927
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x2793

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1929
    :cond_2
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_3

    .line 1930
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x27b1

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1932
    :cond_3
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_4

    .line 1933
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x27c3

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1935
    :cond_4
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_5

    .line 1936
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x27c4

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1939
    :cond_5
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_d

    .line 1940
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1941
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1942
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1943
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1944
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1965
    :goto_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->updateBtConnectTip()V

    .line 2025
    :cond_6
    :goto_2
    if-eq v1, v7, :cond_7

    .line 2026
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bJumpFavorite:Z

    .line 2028
    :cond_7
    invoke-virtual {p0, v4}, Lcom/syu/bt/page/Page_Dial;->disableSaveView(Z)V

    .line 2030
    packed-switch v1, :pswitch_data_1

    .line 2138
    :cond_8
    :goto_3
    return-void

    .line 1887
    :pswitch_0
    const/4 v1, 0x4

    .line 1888
    goto/16 :goto_0

    .line 1890
    :pswitch_1
    const/4 v1, 0x4

    .line 1891
    goto/16 :goto_0

    .line 1893
    :pswitch_2
    const/4 v1, 0x5

    goto/16 :goto_0

    .line 1897
    :cond_9
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_2

    .line 1914
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1899
    :pswitch_3
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1900
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1902
    :cond_a
    const/4 v1, 0x1

    .line 1903
    goto/16 :goto_0

    .line 1905
    :pswitch_4
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_NEW"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1906
    :cond_b
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1908
    :cond_c
    const/4 v1, 0x1

    .line 1909
    goto/16 :goto_0

    .line 1911
    :pswitch_5
    const/4 v1, 0x2

    .line 1912
    goto/16 :goto_0

    .line 1946
    :cond_d
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    const/4 v5, 0x5

    if-ne v2, v5, :cond_e

    .line 1947
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1948
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1949
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1950
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1951
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto :goto_1

    .line 1952
    :cond_e
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_f

    .line 1953
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1954
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1955
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1956
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1957
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1959
    :cond_f
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1960
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1961
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1962
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1963
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1966
    :cond_10
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_OEM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1967
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_11

    .line 1968
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x2794

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1970
    :cond_11
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_12

    .line 1971
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x2793

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1973
    :cond_12
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_13

    .line 1974
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x27b1

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1976
    :cond_13
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_14

    .line 1977
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x27c4

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    .line 1980
    :cond_14
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_15

    .line 1981
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1982
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1983
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1984
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1986
    :cond_15
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    const/4 v5, 0x5

    if-ne v2, v5, :cond_16

    .line 1987
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1988
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1989
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1990
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1991
    :cond_16
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_17

    .line 1992
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1993
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1994
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1995
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1997
    :cond_17
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1998
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1999
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mVoiceSwitchBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 2000
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 2003
    :cond_18
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2004
    const/4 v0, 0x0

    .line 2005
    .local v0, "falg":Z
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_19

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bPop3rdPhone_YF:Z

    if-nez v2, :cond_19

    .line 2006
    const/4 v0, 0x1

    .line 2008
    :cond_19
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_1a

    .line 2009
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x2794

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 2012
    :cond_1a
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_1b

    .line 2013
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x27c4

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    .line 2015
    :cond_1b
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v2, :cond_1c

    .line 2016
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    const/16 v5, 0x27c3

    invoke-virtual {v2, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    .line 2018
    :cond_1c
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_6

    .line 2019
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1d

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 2020
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1e

    move v2, v4

    :goto_5
    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 2021
    iget-object v5, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtnWhenCall:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1f

    move v2, v4

    :goto_6
    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1d
    move v2, v4

    .line 2019
    goto :goto_4

    :cond_1e
    move v2, v3

    .line 2020
    goto :goto_5

    :cond_1f
    move v2, v3

    .line 2021
    goto :goto_6

    .line 2032
    .end local v0    # "falg":Z
    :pswitch_6
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    if-eqz v2, :cond_20

    .line 2033
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2035
    :cond_20
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    if-eqz v2, :cond_21

    .line 2036
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    :cond_21
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    if-eqz v2, :cond_22

    .line 2040
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2042
    :cond_22
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialAnswer:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_23

    .line 2043
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialAnswer:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2045
    :cond_23
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialHangup:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_24

    .line 2046
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialHangup:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2048
    :cond_24
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    if-eqz v2, :cond_25

    .line 2049
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2051
    :cond_25
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 2052
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2057
    :pswitch_7
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 2058
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2060
    :cond_26
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    if-eqz v2, :cond_27

    .line 2061
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2063
    :cond_27
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    if-eqz v2, :cond_28

    .line 2064
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2066
    :cond_28
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialHangup:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_29

    .line 2067
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialHangup:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2068
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialHangup:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_hangup"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2071
    :cond_29
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    if-eqz v2, :cond_2a

    .line 2072
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2074
    :cond_2a
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 2075
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2079
    :pswitch_8
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    if-eqz v2, :cond_2b

    .line 2080
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2082
    :cond_2b
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    if-eqz v2, :cond_2c

    .line 2083
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2085
    :cond_2c
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    if-eqz v2, :cond_2d

    .line 2086
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2088
    :cond_2d
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialAnswer:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_2e

    .line 2089
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialAnswer:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 2090
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->tvDialAnswer:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_page_dial"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2093
    :cond_2e
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    if-eqz v2, :cond_2f

    .line 2094
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2096
    :cond_2f
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 2097
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2102
    :pswitch_9
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    if-eqz v2, :cond_30

    .line 2103
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2105
    :cond_30
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    if-eqz v2, :cond_31

    .line 2106
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2108
    :cond_31
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    if-eqz v2, :cond_32

    .line 2109
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2111
    :cond_32
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    if-eqz v2, :cond_33

    .line 2112
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2116
    :cond_33
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 2117
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2121
    :pswitch_a
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    if-eqz v2, :cond_34

    .line 2122
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowDial:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2124
    :cond_34
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    if-eqz v2, :cond_35

    .line 2125
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2127
    :cond_35
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    if-eqz v2, :cond_36

    .line 2128
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowHang:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2130
    :cond_36
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    if-eqz v2, :cond_37

    .line 2131
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowCall_Third:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2133
    :cond_37
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 2134
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial;->mViewShowTalk_Third:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1885
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2030
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1897
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public updateShowHand()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2140
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bHideHang:Z

    if-eqz v0, :cond_3

    .line 2141
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v0, :cond_0

    .line 2142
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v3, 0x2794

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 2144
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-nez v0, :cond_1

    .line 2145
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v3, 0x2793

    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    .line 2147
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_2

    .line 2148
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial;->mHangBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 2149
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_3

    .line 2150
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mDialBtn:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 2152
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 2148
    goto :goto_0

    :cond_5
    move v2, v1

    .line 2150
    goto :goto_1
.end method

.method public updateSimLayout(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1782
    const/4 v0, 0x0

    .line 1783
    .local v0, "state":Z
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isIpPhoneConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v3, :cond_0

    .line 1784
    const/4 v0, 0x1

    .line 1786
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    .line 1787
    const/4 v0, 0x1

    .line 1789
    :cond_1
    if-eqz v0, :cond_4

    .line 1790
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewNoSim:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1791
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewNoSim:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1793
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewWithSim:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1794
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewWithSim:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1802
    :cond_3
    :goto_0
    return-void

    .line 1796
    :cond_4
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewNoSim:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1797
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewNoSim:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1799
    :cond_5
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewWithSim:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1800
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mViewWithSim:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSoundVol()V
    .locals 2

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mSB_BtVol:Lcom/lsec/core/frame/ctrl/JSeekBar;

    if-eqz v0, :cond_0

    .line 2733
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial;->mSB_BtVol:Lcom/lsec/core/frame/ctrl/JSeekBar;

    sget v1, Lcom/syu/bt/App_Bt;->bSoundVol:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JSeekBar;->setProgress(I)V

    .line 2734
    :cond_0
    return-void
.end method

.method public updateSystemTime()V
    .locals 2

    .prologue
    .line 2634
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial;->mRunnable_updateSysTime:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 2635
    return-void
.end method

.method public updateThirdPhoneName()V
    .locals 6

    .prologue
    .line 2285
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2309
    :cond_0
    :goto_0
    return-void

    .line 2288
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x276f

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 2289
    .local v2, "text4":Lcom/lsec/core/frame/ctrl/JText;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x2770

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 2290
    .local v3, "text5":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v2, :cond_0

    .line 2291
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    .line 2292
    .local v1, "strPhone":Ljava/lang/String;
    sget-object v4, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v4, v1}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2294
    .local v0, "strName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2296
    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2301
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 2302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2303
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2298
    :cond_3
    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2305
    :cond_4
    invoke-virtual {v3, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateViewFocus()V
    .locals 11

    .prologue
    const/16 v10, 0x27bd

    const/16 v9, 0x27bc

    const/16 v8, 0x27bb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3519
    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "YL_BT_1920"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3574
    :cond_0
    :goto_0
    return-void

    .line 3523
    :cond_1
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    if-eqz v4, :cond_0

    .line 3524
    iget-object v4, p0, Lcom/syu/bt/page/Page_Dial;->mViewPager:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JViewPager;->getCurrentItem()I

    move-result v3

    .line 3525
    .local v3, "item":I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 3527
    :pswitch_0
    const/16 v4, 0x2715

    sput v4, Lcom/syu/bt/App_Bt;->mDialPageId:I

    .line 3528
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3529
    .local v2, "history":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3530
    .local v0, "contact":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3532
    .local v1, "favorite":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_2

    .line 3533
    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 3535
    :cond_2
    if-eqz v1, :cond_3

    .line 3536
    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 3538
    :cond_3
    if-eqz v0, :cond_0

    .line 3539
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 3543
    .end local v0    # "contact":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "favorite":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "history":Lcom/lsec/core/frame/ctrl/JButton;
    :pswitch_1
    const/16 v4, 0x2720

    sput v4, Lcom/syu/bt/App_Bt;->mDialPageId:I

    .line 3544
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3545
    .restart local v2    # "history":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3546
    .restart local v0    # "contact":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3547
    .restart local v1    # "favorite":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_4

    .line 3548
    invoke-virtual {v0, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 3550
    :cond_4
    if-eqz v2, :cond_5

    .line 3551
    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 3553
    :cond_5
    if-eqz v1, :cond_0

    .line 3554
    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto :goto_0

    .line 3558
    .end local v0    # "contact":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v1    # "favorite":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v2    # "history":Lcom/lsec/core/frame/ctrl/JButton;
    :pswitch_2
    const/16 v4, 0x2718

    sput v4, Lcom/syu/bt/App_Bt;->mDialPageId:I

    .line 3559
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3560
    .restart local v2    # "history":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3561
    .restart local v0    # "contact":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 3562
    .restart local v1    # "favorite":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_6

    .line 3563
    invoke-virtual {v0, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 3565
    :cond_6
    if-eqz v1, :cond_7

    .line 3566
    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 3568
    :cond_7
    if-eqz v2, :cond_0

    .line 3569
    invoke-virtual {v2, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    goto/16 :goto_0

    .line 3525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
